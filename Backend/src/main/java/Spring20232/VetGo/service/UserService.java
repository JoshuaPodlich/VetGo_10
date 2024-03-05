package Spring20232.VetGo.service;

import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.OwnerRepository;
import Spring20232.VetGo.repository.TagRepository;
import Spring20232.VetGo.repository.UserRepository;
import Spring20232.VetGo.repository.VetRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.Objects;
import java.util.regex.Pattern;


@Service
public class UserService implements UserServiceInterface {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private OwnerRepository ownerRepository;

    @Autowired
    private VetRepository vetRepository;

    @Autowired
    private TagRepository tagRepository;

    @Autowired
    private ObjectMapper objectMapper;

    @Override
    @Transactional
    public void saveUser(User user) {
        // Pointless method for now, but kept for its potential use later.
        userRepository.save(user);
    }

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

    @Transactional
    public String encryptPassword(String password) {
        BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
        return bcrypt.encode(password);
    }

    // A password must be at least 16 characters long, have at least one uppercase letter,
    // have at least one number, have at least one symbol (including only the basic U.S. keyboard symbols),
    // and be at most 48 characters long.
    public boolean isPasswordValid(String password) {
        String passwordPattern = "^(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{16,48}$";
        return Pattern.matches(passwordPattern, password);
    }

    public boolean isEmailValid(String email) {
        String emailPattern = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
        return Pattern.matches(emailPattern, email);
    }

    public boolean isTelephoneValid(String telephone) {
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
        user.setPassword(encryptPassword(userInfo.get("password").asText()));
        user.setFirstName(userInfo.get("firstName").asText());
        user.setLastName(userInfo.get("lastName").asText());
        user.setTelephone(userInfo.get("telephone").asText());

        User newUser = user;

        if (Objects.equals(userInfo.get("role").asText(), "owner")) {
            user.setRoles(new Role("OWNER"));
            newUser = userRepository.save(user);

            Owner owner = new Owner();
            owner.setUser(user);

            ownerRepository.save(owner);
        } else if (Objects.equals(userInfo.get("role").asText(), "vet")) {
            user.setRoles(new Role("VET"));
            newUser = userRepository.save(user);

            Vet vet = new Vet();
            Tag tag = new Tag();
            tagRepository.save(tag);
            vet.setTags(tag);
            vet.setStatus(false);
            vet.setUser(user);

            vetRepository.save(vet);
        } else if (Objects.equals(userInfo.get("role").asText(), "vet-owner")) {
            user.setRoles(new Role("OWNER"));
            user.setRoles(new Role("VET"));
            newUser = userRepository.save(user);

            Owner owner = new Owner();
            owner.setUser(user);
            Vet vet = new Vet();
            Tag tag = new Tag();
            tagRepository.save(tag);
            vet.setTags(tag);
            vet.setStatus(false);
            vet.setUser(user);

            ownerRepository.save(owner);
            vetRepository.save(vet);
        }
        else {
            throw new IllegalArgumentException("The role must be 'owner', 'vet', or 'vet-owner'.");
        }

        return newUser;
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

        if (user.isUserVetAndOwner()) {
            userNode.put("role", "vet-owner");
            return userNode;
        }
        else if (user.isUserOwner()) {
            userNode.put("role", "owner");
            return userNode;
        }
        else if (user.isUserVet()) {
            userNode.put("role", "vet");
            return userNode;
        }
        else {
            throw new IllegalStateException("User has no role.");
        }
    }

}
