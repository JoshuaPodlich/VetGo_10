package Spring20232.VetGo.service;

import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.OwnerRepository;
import Spring20232.VetGo.repository.TagRepository;
import Spring20232.VetGo.repository.UserRepository;
import Spring20232.VetGo.repository.VetRepository;
import com.fasterxml.jackson.databind.node.ObjectNode;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.Objects;


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

    @Transactional
    public User registerNewUser(ObjectNode userInfo) {
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

        return newUser;
    }

    public Object authenticateUser(String email, String password) {
        User user = userRepository.findByEmail(email);

        if (user == null) {
            throw new UsernameNotFoundException("Unable to find user in the database.");
        }

        BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
        if (!bcrypt.matches(password, user.getPassword())) {
            throw new BadCredentialsException("Password does not match.");
        }

        if (user.isUserVetAndOwner()) {
            return "User must now choose his or her sign-in role.";
        }
        else if (user.isUserOwner()) {
            return ownerRepository.findByUser(user);
        }
        else if (user.isUserVet()) {
            return vetRepository.findByUser(user);
        }
        else {
            throw new IllegalStateException("User has no role.");
        }
    }

}
