package Spring20232.VetGo.controller;


import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.*;
import Spring20232.VetGo.service.PetService;
import Spring20232.VetGo.service.UserService;
import com.amazonaws.services.mq.model.NotFoundException;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@RestController
@RequestMapping("user")
public class UserController {

    private final UserService userService;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private VetRepository vetRepository;
    @Autowired
    private OwnerRepository ownerRepository;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(value = "/all")
    public ResponseEntity<List<User>> getAllUser() {
        List<User> userList = new ArrayList<>();
        userRepository.findAll().forEach(userList::add);
        return ResponseEntity.status(HttpStatus.OK).body(userList);
    }

    @GetMapping(value = "/id/{uid}")
    public ResponseEntity<User> getUserByID(@PathVariable Long uid) {
        return ResponseEntity.status(HttpStatus.OK).body(userRepository.findById(uid).orElse(null));
    }

    @GetMapping(value = "/email/{email}")
    public ResponseEntity<User> getUserByEmail(@PathVariable String email) {
        return ResponseEntity.status(HttpStatus.OK).body(userRepository.findByEmail(email));
    }

    @PostMapping(value = "/login")
    public ResponseEntity<?> loginUser(@RequestBody ObjectNode loginBody) {
        try {
            Object result = userService.authenticateUser(loginBody);
            return ResponseEntity.status(HttpStatus.OK).body(result);
        } catch (UsernameNotFoundException | BadCredentialsException | IllegalStateException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PostMapping(value = "/register")
    public ResponseEntity<?> registerUser(@RequestBody ObjectNode userInfo) {
        try {
            User user = userService.registerNewUser(userInfo);
            return ResponseEntity.status(HttpStatus.OK).body(user);
        }
        catch (IllegalArgumentException | BadCredentialsException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    // Updates the currently stored user
    @PutMapping(value = "/update/{uid}")
    public ResponseEntity<?> updateUser(@RequestBody User updatedUser, @PathVariable("uid") Long uid) {

        if (userRepository.findById(uid).isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find user in database");

        userRepository.findById(uid)
                .map(user -> {
                    user.setEmail(updatedUser.getEmail());
                    user.setPassword(updatedUser.getPassword());
                    return userRepository.save(user);
                }).orElseGet(() -> {
                    return userRepository.save(updatedUser);
                });

        return ResponseEntity.status(HttpStatus.OK).body(userRepository.findById(uid));
    }

    @PutMapping(value = "/updatePassword/{uid}")
    public ResponseEntity<?> updatePassword(@RequestBody Map<String, String> body, @PathVariable("uid") Long uid) {

        System.out.println("--------------------------------");
        String newPassword = body.get("newPassword");
        if (!userService.setPassword(uid, newPassword))
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Failed to update password");

        return ResponseEntity.status(HttpStatus.OK).body(userRepository.findById(uid));
    }

    // For admin uses: Delete all users
//    @PreAuthorize("hasRole(@roles.ADMIN)")
    @DeleteMapping(value = "/delete/all")
    public ResponseEntity<String> deleteAllUser() {
        userRepository.deleteAll();
        return ResponseEntity.status(HttpStatus.NO_CONTENT).body("Deleted all user");
    }

    // Delete specific user based on id
    @DeleteMapping(value = "/delete/{uid}")
    public ResponseEntity<String> deleteUser(@PathVariable("uid") Long uid) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find user in database");

        userRepository.delete(user);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).body("Deleted user");
    }

    @PutMapping(value = "/update/location/owner/{oid}")
    public ResponseEntity<?> updateOwnerLocation(@RequestBody LocationCoordinates location,
                                            @PathVariable("oid") Long oid) {

        Owner owner = ownerRepository.findById(oid).orElse(null);
        if (owner == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find owner in database");

        owner.setLatitude(location.getLatitude());
        owner.setLongitude(location.getLongitude());
        ownerRepository.save(owner);
        return ResponseEntity.status(HttpStatus.OK).body(userRepository.findById(oid));
    }


    @PutMapping(value = "/update/location/vet/{vid}")
    public ResponseEntity<?> updateVetLocation(@RequestBody LocationCoordinates location,
                                               @PathVariable("vid") Long vid) {

        Vet vet = vetRepository.findById(vid).orElse(null);
        if (vet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find owner in database.");

        vet.setLatitude(location.getLatitude());
        vet.setLongitude(location.getLongitude());
        vetRepository.save(vet);
        return ResponseEntity.status(HttpStatus.OK).body(userRepository.findById(vid));
    }

    @PostMapping(value = "/forgot-password/{uid}")
    public ResponseEntity<?> forgotPassword(@PathVariable("uid") Long uid) {
        try {
            userService.createPasswordResetToken(uid);
            return ResponseEntity.status(HttpStatus.OK).body("Password reset token has been created and email of it sent.");
        }
        catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }

    }

    @PostMapping(value = "/validate-password-token/{uid}/token/{token}")
    public ResponseEntity<?> validatePasswordToken(@PathVariable("uid") Long uid,
                                                   @PathVariable("token") String token) {
        try {
            userService.validatePasswordResetToken(uid, token);
            String resetSessionToken = userService.createPasswordResetSession(uid);
            return ResponseEntity.status(HttpStatus.OK).body(resetSessionToken);
        }
        catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }

    }

    @PostMapping(value = "/change-password/{uid}/session")
    public ResponseEntity<?> changePassword(@PathVariable("uid") Long uid,
                                            @RequestBody ObjectNode requestBody) {
        try {
            String sessionToken = requestBody.get("sessionToken").asText();
            String newPassword = requestBody.get("newPassword").asText();
            PasswordResetSession resetSession = userService.validatePasswordResetSession(uid, sessionToken);
            userService.changeUserPassword(uid, newPassword, resetSession);
            return ResponseEntity.status(HttpStatus.OK).body("Password has been successfully changed.");
        } catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }


}
