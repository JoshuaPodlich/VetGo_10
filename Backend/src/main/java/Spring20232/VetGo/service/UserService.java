package Spring20232.VetGo.service;

import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.*;
import com.amazonaws.services.alexaforbusiness.model.AlreadyExistsException;
import com.amazonaws.services.alexaforbusiness.model.NotFoundException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import jakarta.transaction.Transactional;

import java.security.SecureRandom;
import java.time.LocalDateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.regex.Pattern;


@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private OwnerRepository ownerRepository;

    @Autowired
    private VetRepository vetRepository;

    @Autowired
    private TagRepository tagRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private AddressRepository addressRepository;

    @Autowired
    private PasswordResetTokenRepository passwordResetTokenRepository;

    @Autowired
    private PasswordResetSessionRepository passwordResetSessionRepository;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private EmailService emailService;

    @Transactional
    public Boolean setPassword(Long uid, String newPassword) {
        User user = userRepository.findById(uid).orElse(null);

        if (user == null)
            return false;

        BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
        String encodedPassword = bcrypt.encode(newPassword);
        System.out.println(bcrypt.matches("123456", encodedPassword));
        System.out.println(bcrypt.matches(newPassword, encodedPassword));
        System.out.println(encodedPassword);
        System.out.println("Before password: " + user.getPassword());
        System.out.println("Before password: " + user.getPassword());
        user.setPassword(encodedPassword);
        System.out.println("After password: " + user.getPassword());
        System.out.println("After password 2: " + user.getPassword());
//        userRepository.save(user);
        user = userRepository.findById(uid).orElse(null);
        System.out.println("After password 3: " + (user.getPassword()));
        return true;
    }

    private String buildUserAddress(Address address) {
        StringBuilder addressBuilder = new StringBuilder();

        if (address.getStreet() != null && !address.getStreet().isEmpty()) {
            addressBuilder.append(address.getStreet());
        }
        if (address.getAptSuite() != null && !address.getAptSuite().isEmpty()) {
            if (!addressBuilder.isEmpty()) {
                addressBuilder.append(", ");
            }
            addressBuilder.append(address.getAptSuite());
        }
        if (address.getCity() != null && !address.getCity().isEmpty()) {
            if (!addressBuilder.isEmpty()) {
                addressBuilder.append(", ");
            }
            addressBuilder.append(address.getCity());
        }
        if (address.getState() != null && !address.getState().isEmpty()) {
            if (!addressBuilder.isEmpty()) {
                addressBuilder.append(", ");
            }
            addressBuilder.append(address.getState());
        }
        if (address.getZip() != null && !address.getZip().isEmpty()) {
            if (!addressBuilder.isEmpty()) {
                addressBuilder.append(" ");
            }
            addressBuilder.append(address.getZip());
        }
        if (address.getCountry() != null && !address.getCountry().isEmpty()) {
            if (!addressBuilder.isEmpty()) {
                addressBuilder.append(", ");
            }
            addressBuilder.append(address.getCountry());
        }

        return addressBuilder.toString();
    }

    public ObjectNode getUserInfo(Long uid) {
        User user = userRepository.findById(uid).orElse(null);
        Owner owner;
        Vet vet;

        if (user == null)
            throw new NotFoundException("Unable to find user in database.");

        ObjectNode userNode = objectMapper.createObjectNode();
        userNode.put("email", user.getEmail());
        userNode.put("firstName", user.getFirstName());
        userNode.put("lastName", user.getLastName());

        Address address = user.getAddress();
        if (address != null && (address.getLatitude() != null || address.getLongitude() != null)) {
            userNode.put("address", buildUserAddress(address));
        }
        else {
            userNode.put("address", "N/A");
        }

        userNode.put("telephone", user.getTelephone());


        if (user.isUserVet() || user.isUserVetAndOwner()) {
            vet = vetRepository.findByUser(user);
            if (vet == null)
                throw new NotFoundException("Unable to find vet in database.");

            userNode.put("role", "Veterinarian");
            userNode.put("numReviews", vet.getNumReviews());
            userNode.put("vetLicense", vet.getVetLicense() != null ? vet.getVetLicense() : "N/A");
        }
        else if (user.isUserOwner()) {
            owner = ownerRepository.findByUser(user);
            if (owner == null)
                throw new NotFoundException("Unable to find owner in database.");

            userNode.put("role", "Pet Owner");
            userNode.put("numPets", owner.getPetList().size());
        }

        return userNode;
    }

    private String encryptString(String str) {
        BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
        return bcrypt.encode(str);
    }

    // A password must be at least 16 characters long, have at least one uppercase letter,
    // have at least one number, have at least one symbol (including only the basic U.S. keyboard symbols),
    // and be at most 48 characters long.
    private boolean isPasswordValid(String password) {
        String passwordPattern = "^(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{16,48}$";
        return Pattern.matches(passwordPattern, password);
    }

    private boolean isEmailValid(String email) {
        String emailPattern = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
        return Pattern.matches(emailPattern, email);
    }

    private boolean isTelephoneValid(String telephone) {
        String telephonePattern = "^\\(?([0-9]{3})\\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$";
        return Pattern.matches(telephonePattern, telephone);
    }

    @Transactional
    public User registerNewUser(ObjectNode userInfo) {
        if (!userInfo.hasNonNull("email") || userInfo.get("email").asText().isEmpty())
            throw new IllegalArgumentException("An email is required for registration.");
        if (!userInfo.hasNonNull("password") || userInfo.get("password").asText().isEmpty())
            throw new IllegalArgumentException("A password is required for registration.");
        if (!userInfo.hasNonNull("firstName") || userInfo.get("firstName").asText().isEmpty())
            throw new IllegalArgumentException("A first name is required for registration.");
        if (!userInfo.hasNonNull("lastName") || userInfo.get("lastName").asText().isEmpty())
            throw new IllegalArgumentException("A last name is required for registration.");
        if (!userInfo.hasNonNull("telephone") || userInfo.get("telephone").asText().isEmpty())
            throw new IllegalArgumentException("A phone number is required for registration.");
        if (!userInfo.hasNonNull("role") || userInfo.get("role").asText().isEmpty())
            throw new IllegalArgumentException("A role is required for registration.");

        if (!isEmailValid(userInfo.get("email").asText()))
            throw new BadCredentialsException("The format of the email is incorrect.");

        if (!isPasswordValid(userInfo.get("password").asText()))
            throw new BadCredentialsException("The format of the password is incorrect.");

        if (!isTelephoneValid(userInfo.get("telephone").asText())) {
            throw new BadCredentialsException("The format of the phone number is correct.");
        }

        if (userRepository.findByEmail(userInfo.get("email").asText()) != null) {
            throw new BadCredentialsException("An account is already associated with this email.");
        }

        User user = new User();
        user.setEmail(userInfo.get("email").asText());
        user.setPassword(encryptString(userInfo.get("password").asText()));
        user.setFirstName(userInfo.get("firstName").asText());
        user.setLastName(userInfo.get("lastName").asText());
        user.setTelephone(userInfo.get("telephone").asText());
        Address address = new Address();
        user.setAddress(address);
        addressRepository.save(address);

        User newUser = user;

        if (Objects.equals(userInfo.get("role").asText(), "owner")) {
            Role newRole = new Role("OWNER");
            user.setRoles(newRole);
            newUser = userRepository.save(user);

            Owner owner = new Owner();
            owner.setUser(user);

            roleRepository.save(newRole);
            ownerRepository.save(owner);
        } else if (Objects.equals(userInfo.get("role").asText(), "vet")) {
            Role newRole = new Role("VET");
            user.setRoles(newRole);
            newUser = userRepository.save(user);

            Vet vet = new Vet();
            Tag tag = new Tag();
            tagRepository.save(tag);
            vet.setTags(tag);
            vet.setStatus(false);
            vet.setUser(user);

            roleRepository.save(newRole);
            vetRepository.save(vet);
        } else if (Objects.equals(userInfo.get("role").asText(), "vet-owner")) {
            Role newRole1 = new Role("OWNER");
            Role newRole2 = new Role("VET");
            user.setRoles(newRole1);
            user.setRoles(newRole2);
            newUser = userRepository.save(user);

            Owner owner = new Owner();
            owner.setUser(user);
            Vet vet = new Vet();
            Tag tag = new Tag();
            tagRepository.save(tag);
            vet.setTags(tag);
            vet.setStatus(false);
            vet.setUser(user);

            roleRepository.save(newRole1);
            roleRepository.save(newRole2);
            ownerRepository.save(owner);
            vetRepository.save(vet);
        }
        else {
            throw new IllegalArgumentException("The role must be 'owner', 'vet', or 'vet-owner'.");
        }

        return newUser;
    }

    public void grantRole(Long uid, Role role) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null) {
            throw new UsernameNotFoundException("Unable to find user in the database.");
        }
        user.setRoles(role);
    }

    public Object authenticateUser(ObjectNode userInfo) {
        String email = userInfo.get("email").asText();
        String password = userInfo.get("password").asText();
        User user = userRepository.findByEmail(email);

        if (user == null) {
            throw new UsernameNotFoundException("Unable to find user in the database.");
        }

        BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
        if (!bcrypt.matches(password, user.getPassword())) {
            throw new BadCredentialsException("Password does not match.");
        }

        ObjectNode userNode = objectMapper.createObjectNode();
        userNode.put("id", user.getId());
        userNode.put("firstName", user.getFirstName());
        userNode.put("lastName", user.getLastName());

        if (user.isUserVet() || user.isUserVetAndOwner()) {
            userNode.put("role", "vet");
            Vet vet = vetRepository.findByUser(user);
            if (vet == null)
                throw new NotFoundException("Unable to find owner in database");
            userNode.put("latitude", vet.getLatitude());
            userNode.put("longitude", vet.getLongitude());
            return userNode;
        }
        else if (user.isUserOwner()) {
            userNode.put("role", "owner");
            Owner owner = ownerRepository.findByUser(user);
            if (owner == null)
                throw new NotFoundException("Unable to find owner in database");
            userNode.put("latitude", owner.getLatitude());
            userNode.put("longitude", owner.getLongitude());
            return userNode;
        }
        else {
            throw new IllegalStateException("User has no role.");
        }
    }

    private String generateToken() {
        String charLower = "abcdefghijklmnopqrstuvwxyz";
        String charUpper = charLower.toUpperCase();
        String num = "0123456789";
        String string_data = charUpper + num;
        SecureRandom random = new SecureRandom();

        StringBuilder sb = new StringBuilder(8);
        for (int i = 0; i < 8; i++) {
            int rndCharAt = random.nextInt(string_data.length());
            char rndChar = string_data.charAt(rndCharAt);

            sb.append(rndChar);
        }

        return sb.toString();
    }

    private void invalidateExistingResetTokens(User user) {
        List<PasswordResetToken> existingTokens = passwordResetTokenRepository.findAllByUserAndTokenValid(user, true);
        for (PasswordResetToken existingToken : existingTokens) {
            existingToken.setTokenValid(false);
            passwordResetTokenRepository.save(existingToken);
        }
    }

    public void createPasswordResetToken(Long uid) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null)
            throw new NotFoundException("Unable to find user in database.");

        invalidateExistingResetTokens(user); // Make sure to invalidate any existing (i.e., valid) tokens before creating a new one.

        //String token = UUID.randomUUID().toString(); // Work on finding a shorter token to generate.
        String token = generateToken();
        PasswordResetToken resetToken = new PasswordResetToken();
        resetToken.setToken(encryptString(token));
        resetToken.setUser(user);
        resetToken.setCreationDate(LocalDateTime.now());
        resetToken.setExpirationDate(LocalDateTime.now().plusMinutes(10));
        resetToken.setTokenValid(true);
        passwordResetTokenRepository.save(resetToken);

        System.out.println("Created token!");

        emailService.sendPasswordResetEmail(user.getEmail(), token);
    }

    @Transactional
    public void validatePasswordResetToken(Long uid, String token) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null)
            throw new NotFoundException("Unable to find user in database.");

        PasswordResetToken resetToken = passwordResetTokenRepository.findByUser(user);
        if (resetToken == null)
            throw new NotFoundException("Token does not exist under that user in database.");

        if (!resetToken.isTokenValid())
            throw new RuntimeException("Token is not valid.");

        if (LocalDateTime.now().isAfter(resetToken.getExpirationDate())) {
            resetToken.setTokenValid(false);
            throw new RuntimeException("Token has expired.");
        }

        BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
        if (!bcrypt.matches(token.toUpperCase(), resetToken.getToken())) {
            throw new BadCredentialsException("Token does not match.");
        }

        // Token is valid, has not expired, and matches the one in the database, so finally invalidate after use.
        resetToken.setTokenValid(false);
    }

    public String createPasswordResetSession(Long uid) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null) throw new NotFoundException("Unable to find user in database.");

        invalidateExistingPasswordResetSessions(user); // Make sure to invalidate any existing (i.e., valid) reset sessions before creating a new one.

        String sessionToken = UUID.randomUUID().toString();
        PasswordResetSession resetSession = new PasswordResetSession();
        resetSession.setSessionToken(encryptString(sessionToken));
        resetSession.setUser(user);
        resetSession.setCreationDate(LocalDateTime.now());
        resetSession.setExpirationDate(LocalDateTime.now().plusMinutes(10));
        resetSession.setSessionValid(true);
        passwordResetSessionRepository.save(resetSession);

        return sessionToken;
    }

    @Transactional
    public PasswordResetSession validatePasswordResetSession(Long uid, String sessionToken) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null) throw new NotFoundException("Unable to find user in database.");

        PasswordResetSession resetSession = passwordResetSessionRepository.findByUserAndSessionValid(user, true);
        if (resetSession == null) throw new NotFoundException("Session does not exist under that user in database.");

        if (!resetSession.isSessionValid()) throw new RuntimeException("Session is not valid.");

        if (LocalDateTime.now().isAfter(resetSession.getExpirationDate())) {
            resetSession.setSessionValid(false);
            throw new RuntimeException("Session has expired.");
        }

        BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
        if (!bcrypt.matches(sessionToken, resetSession.getSessionToken())) {
            throw new BadCredentialsException("Session token does not match.");
        }

        return resetSession;
    }

    @Transactional
    public void changeUserPassword(Long uid, String newPassword, PasswordResetSession resetSession) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null) throw new NotFoundException("Unable to find user in database.");

        if (!isPasswordValid(newPassword)) throw new BadCredentialsException("The format of the password is incorrect.");

        String encryptedPassword = encryptString(newPassword);
        user.setPassword(encryptedPassword);
        userRepository.save(user);

        // Session token is valid, has not expired, and matches the one in the database, so finally invalidate after use.
        resetSession.setSessionValid(false);

        System.out.println("Password updated successfully for user ID: " + uid);
    }

    private void invalidateExistingPasswordResetSessions(User user) {
        List<PasswordResetSession> existingSessions = passwordResetSessionRepository.findAllByUserAndSessionValid(user, true);
        for (PasswordResetSession existingSession : existingSessions) {
            existingSession.setSessionValid(false);
            passwordResetSessionRepository.save(existingSession);
        }
    }

    public void updateOwnersLocations(Long uid, LocationCoordinates loc) {
        Owner owner = ownerRepository.findByUserId(uid);
        if (owner == null)
            throw new NotFoundException("Unable to find owner in database");

        owner.setLatitude(loc.getLatitude());
        owner.setLongitude(loc.getLongitude());
        ownerRepository.save(owner);
    }

    public void updateVetsLocations(Long uid, LocationCoordinates loc) {
        Vet vet = vetRepository.findByUserId(uid);
        if (vet == null)
            throw new NotFoundException("Unable to find vet in database");

        vet.setLatitude(loc.getLatitude());
        vet.setLongitude(loc.getLongitude());
        vetRepository.save(vet);
    }

    @Transactional
    public void updateAddress(Long uid, Address addressBody) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null)
            throw new NotFoundException("Unable to find user in database.");

        Address address = user.getAddress();
        if (address == null)
           address = new Address();

        address.setStreet(addressBody.getStreet());
        address.setAptSuite(addressBody.getAptSuite());
        address.setCity(addressBody.getCity());
        address.setState(addressBody.getState());
        address.setZip(addressBody.getZip());
        address.setCountry(addressBody.getCountry());
        address.setLongitude(addressBody.getLongitude());
        address.setLatitude(addressBody.getLatitude());

        addressRepository.save(address);
    }

    public ObjectNode getAddressCoordinates(Long uid) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null)
            throw new NotFoundException("Unable to find user in database.");

        Address address = user.getAddress();
        if (address == null) {
            throw new NotFoundException("User's address does not exist (e.g., has not been set).");
        }

        ObjectNode locationNode = objectMapper.createObjectNode();
        locationNode.put("latitude", address.getLatitude());
        locationNode.put("longitude", address.getLongitude());

        return locationNode;
    }

    @Transactional
    public void registerVerifyVet(ObjectNode vetVerObject) {
        User user = userRepository.findById(vetVerObject.get("userId").asLong()).orElse(null);
        if (user == null)
            throw new NotFoundException("Unable to find user in database.");
        Vet checkVet = vetRepository.findByUser(user);
        if (checkVet != null)
            throw new AlreadyExistsException("This user is already a vet.");

        Vet vet = new Vet();
        vet.setVetInsurance(vetVerObject.get("vetInsurance").asText());
        vet.setVetLicense(vetVerObject.get("vetLicense").asText());
        vet.setVetCompany(vetVerObject.get("vetCompany").asText());
        vet.setVetImg(vetVerObject.get("vetImg").asText());
        vet.setStatePermit(vetVerObject.get("statePermit").asText());
        vet.setUser(user);
        user.setRoles(new Role("VET"));

        vetRepository.save(vet);
    }

    public void updateUsersInfo(Long uid, ObjectNode newUserInfo) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null) {
            throw new NotFoundException("Unable to find user in database.");
        }

        newUserInfo.fields().forEachRemaining(entry -> {
            switch (entry.getKey()) {
                case "email":
                    user.setEmail(entry.getValue().asText());
                    break;
                case "firstName":
                    user.setFirstName(entry.getValue().asText());
                    break;
                case "lastName":
                    user.setLastName(entry.getValue().asText());
                    break;
                case "telephone":
                    user.setTelephone(entry.getValue().asText());
                    break;
            }
        });

        userRepository.save(user);
    }
}
