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

    @GetMapping(value = "/info/{uid}")
    public ResponseEntity<?> getUserInfo(@PathVariable Long uid) {
        try {
            return ResponseEntity.status(HttpStatus.OK).body(userService.getUserInfo(uid));
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
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

    @PutMapping(value = "/update/{uid}")
    public ResponseEntity<?> updateUser(@PathVariable Long uid,
                                        @RequestBody ObjectNode newUserInfo) {
        try {
            userService.updateUsersInfo(uid, newUserInfo);
            return ResponseEntity.ok("User's information successfully updated.");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
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

    @PutMapping(value = "/update/location/owner/{uid}")
    public ResponseEntity<?> updateOwnerLocation(@RequestBody LocationCoordinates location,
                                                 @PathVariable("uid") Long uid) {
        try {
            userService.updateOwnersLocations(uid, location);
            return ResponseEntity.status(HttpStatus.OK).body("Owner's location has been updated.");
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PutMapping(value = "/update/location/vet/{uid}")
    public ResponseEntity<?> updateVetLocation(@RequestBody LocationCoordinates location,
                                               @PathVariable("uid") Long uid) {
        try {
            userService.updateVetsLocations(uid, location);
            return ResponseEntity.status(HttpStatus.OK).body("Vet's location has been updated.");
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
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

    @PutMapping(value = "/update-address/{uid}")
    public ResponseEntity<?> updateAddress(@PathVariable("uid") Long uid,
                                           @RequestBody Address addressBody) {
        try {
            userService.updateAddress(uid, addressBody);
            return ResponseEntity.status(HttpStatus.OK).body("Address has been successfully changed.");
        } catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @GetMapping("/address-coords/{uid}")
    public ResponseEntity<?> getAddressCoords(@PathVariable("uid") Long uid) {
        try {
            return ResponseEntity.status(HttpStatus.OK).body(userService.getAddressCoordinates(uid));
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PostMapping(value = "/grant-role/{uid}")
    public ResponseEntity<?> grantRole(@PathVariable("uid") Long uid,
            @RequestBody ObjectNode requestBody) {
        try {
            String role = requestBody.get("role").asText();
            if (role.equals("ADMIN") || role.equals("OWNER") || role.equals("VET")) {
                userService.grantRole(uid, new Role(role));
                return ResponseEntity.status(HttpStatus.OK).body("Role has been successfully granted");
            } else {
                throw new RuntimeException("Role not valid");
            }
        } catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }
}
