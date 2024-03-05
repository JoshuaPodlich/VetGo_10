package Spring20232.VetGo.controller;


import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.*;
import Spring20232.VetGo.service.PetService;
import Spring20232.VetGo.service.UserService;
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
    private PetRepository petRepository;
    @Autowired
    private TagRepository tagRepository;

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
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find owner in database");

        vet.setLatitude(location.getLatitude());
        vet.setLongitude(location.getLongitude());
        vetRepository.save(vet);
        return ResponseEntity.status(HttpStatus.OK).body(userRepository.findById(vid));
    }

//    @GetMapping(value = "/demo")
//    public String createDemo() {
//        if (userRepository.findByEmail("never@gmail.com") == null) {
//            //Actual password is 123456
//            User user1 = new User("user1", "never@gmail.com", "$2a$10$Oc1TPIeTLBPWBzRwP0jgfOB238SDS8ljGsi4Msiq4EA91WJ" +
//                    ".Q5Nsi", 1.0, 1.0);
//            User user2 = new User("user2", "gonna@gmail.com", "$2a$10$Oc1TPIeTLBPWBzRwP0jgfOB238SDS8ljGsi4Msiq4EA91WJ" +
//                    ".Q5Nsi", 1.0, 1.0);
//            User user3 = new User("user3", "give@gmail.com", "$2a$10$Oc1TPIeTLBPWBzRwP0jgfOB238SDS8ljGsi4Msiq4EA91WJ.Q5Nsi", 1.0, 1.0);
//            User user4 = new User("user4", "you@gmail.com", "$2a$10$Oc1TPIeTLBPWBzRwP0jgfOB238SDS8ljGsi4Msiq4EA91WJ.Q5Nsi", 1.0, 1.0);
//            User user5 = new User("user5", "up@gmail.com", "$2a$10$Oc1TPIeTLBPWBzRwP0jgfOB238SDS8ljGsi4Msiq4EA91WJ.Q5Nsi", 1.0, 1.0);
//            user1.addUserRoles(role_owner);
//            user2.addUserRoles(role_owner);
//            user3.addUserRoles(role_owner);
//            user4.addUserRoles(role_vet);
//            user5.addUserRoles(role_vet);
//
//            userService.saveUser(user1);
//            userService.saveUser(user2);
//            userService.saveUser(user3);
//            userService.saveUser(user4);
//            userService.saveUser(user5);
//
//            Owner owner1 = new Owner();
//            Owner owner2 = new Owner();
//            Owner owner3 = new Owner();
//
//            Vet vet1 = new Vet();
//            Vet vet2 = new Vet();
//
//            owner1.setFirstName("Never");
//            owner1.setLastName("");
//            owner1.setTelephone("012131313");
//            owner1.setAddress(null);
//            owner1.setUserAccount(user1);
//
//            owner2.setFirstName("Gonna");
//            owner2.setLastName("");
//            owner2.setTelephone("112131313");
//            owner2.setAddress(null);
//            owner2.setUserAccount(user2);
//
//            owner3.setFirstName("Give");
//            owner3.setLastName("");
//            owner3.setTelephone("212131313");
//            owner3.setAddress(null);
//            owner3.setUserAccount(user3);
//
//            vet1.setFirstName("You");
//            vet1.setLastName("");
//            vet1.setTelephone("312131313");
//            vet1.setAddress(null);
//            vet1.setVetLicense("license");
//            vet1.setStatus(true);
//            vet1.setUserAccount(user4);
//
//            vet2.setFirstName("Up");
//            vet2.setLastName("");
//            vet2.setTelephone("412131313");
//            vet2.setAddress(null);
//            vet2.setVetLicense("license");
//            vet2.setStatus(true);
//            vet2.setUserAccount(user5);
//
//            vetRepository.save(vet1);
//            vetRepository.save(vet2);
//
//            ownerRepository.save(owner1);
//            ownerRepository.save(owner2);
//            ownerRepository.save(owner3);
//            Random rand = new Random();
//            Pet pet1 = new Pet(rand.nextLong(), ownerRepository.findById(owner1.getId()).orElse(null), null, "dog1",
//                    DOG, "Labrador", null, true, 12, 11, 11);
//            Pet pet2 = new Pet(rand.nextLong(), ownerRepository.findById(owner2.getId()).orElse(null), null, "cat1",
//                    CAT, "Tabby", null, true, 19, 13, 32);
//            Pet pet3 = new Pet(rand.nextLong(), ownerRepository.findById(owner2.getId()).orElse(null), null, "cat2",
//                    CAT, "Tiger", null, false, 9, 42, 69);
//            petRepository.save(pet1);
//            petRepository.save(pet2);
//            petRepository.save(pet3);
//            owner1.addPetList(pet1);
//            owner2.addPetList(pet2);
//            owner2.addPetList(pet3);
//
//            return "Successfully created demo users and pets";
//        } else {
//            return "Demo users were already created";
//        }
//
//    }

}
