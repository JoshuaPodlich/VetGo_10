package Spring20232.VetGo.service;

import Spring20232.VetGo.model.Owner;
import Spring20232.VetGo.model.Role;
import Spring20232.VetGo.model.User;
import Spring20232.VetGo.model.Vet;
import Spring20232.VetGo.repository.OwnerRepository;
import Spring20232.VetGo.repository.UserRepository;
import Spring20232.VetGo.repository.VetRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService implements UserServiceInterface {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private OwnerRepository ownerRepository;

    @Autowired
    private VetRepository vetRepository;

    @Override
    @Transactional
    public void saveUser(User user) {

        if (user.getUserRoles() == null || user.getUserRoles().isEmpty())
            throw new IllegalArgumentException("User must have at least one role");

        for (Role role : user.getUserRoles()) {
            if (!role.getName().startsWith("ROLE_")) {
                role.setName("ROLE_" + role.getName());
            }
        }

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

    public Object authenticateUser(String email, String password) {
        User user = userRepository.findByEmail(email);

        if (user == null) {
            throw new UsernameNotFoundException("Unable to find user in the database.");
        }

        BCryptPasswordEncoder bcrypt = new BCryptPasswordEncoder();
        if (!bcrypt.matches(password, user.getPassword())) {
            throw new BadCredentialsException("Password does not match.");
        }

        Optional<Owner> ownerOptional = ownerRepository.findById(user.getId());
        Optional<Vet> vetOptional = vetRepository.findById(user.getId());

        if (ownerOptional.isPresent() && vetOptional.isPresent()) {
            return "User must choose between logging in as vet or owner.";
        } else if (ownerOptional.isPresent()) {
            return ownerOptional.get();
        } else if (vetOptional.isPresent()) {
            return vetOptional.get();
        } else {
            throw new IllegalStateException("User is neither associated with owner nor vet account.");
        }
    }

}
