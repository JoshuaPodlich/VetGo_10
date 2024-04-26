package Spring20232.VetGo.controller;

import Spring20232.VetGo.model.Owner;
import Spring20232.VetGo.model.User;
import Spring20232.VetGo.model.Vet;
import Spring20232.VetGo.service.UserService;
import Spring20232.VetGo.repository.VetRepository;
import Spring20232.VetGo.service.UserService;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("vet")
public class VetController {
    private final UserService userService;
    @Autowired
    private VetRepository vetRepository;


    @Autowired
    public VetController(UserService userService) {
        this.userService = userService;
    }

    //    @PreAuthorize("hasRole(@roles.ROLE_VET)")
    @GetMapping(value = "/all")
    public ResponseEntity<List<Vet>> getAllVet() {
        List<Vet> vets = new ArrayList<>();
        vetRepository.findAll().forEach(vets::add);
        System.out.println(vets);
        return ResponseEntity.status(HttpStatus.OK).body(vets);
    }

    //    @PreAuthorize("hasRole(@roles.ROLE_VET)")
    @GetMapping(value = "/id/{vid}")
    public ResponseEntity<Vet> getVet(@PathVariable Long vid) {
        return ResponseEntity.status(HttpStatus.OK).body(vetRepository.findById(vid).orElse(null));
    }

    //    @PreAuthorize("hasRole(@roles.ROLE_VET)")
    @GetMapping(value = "/id/user/{uid}")
    public ResponseEntity<Vet> getVetByUserId(@PathVariable Long uid) {
        return ResponseEntity.status(HttpStatus.OK).body(vetRepository.findByUserId(uid));
    }

    //    @PreAuthorize("hasRole(@roles.ROLE_VET)")
    @PutMapping(value = "/update/{vid}")
    public ResponseEntity<?> updateVet(@RequestBody Vet updatedVet, @PathVariable("vid") Long vid) {

        if (vetRepository.findById(vid).isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find owner in database");

        vetRepository.findById(vid)
                .map(vet -> {
                    vet.getUser().setAddress(updatedVet.getUser().getAddress());
                    vet.getUser().setFirstName(updatedVet.getUser().getFirstName());
                    vet.getUser().setLastName(updatedVet.getUser().getLastName());
                    vet.getUser().setTelephone(updatedVet.getUser().getTelephone());
                    vet.setVetLicense(updatedVet.getVetLicense());
                    vet.setSpecialties(updatedVet.getSpecialties());
                    return vetRepository.save(vet);
                }).orElseGet(() -> {
                    return vetRepository.save(updatedVet);
                });

        return ResponseEntity.status(HttpStatus.OK).body(vetRepository.findById(vid));
    }

    //    @PreAuthorize("hasRole(@roles.ROLE_VET)")
    @PutMapping(value = "/validate/{vid}")
    public ResponseEntity<String> validateVet(@PathVariable("vid") Long vid) {

        Vet vet = vetRepository.findById(vid).orElse(null);

        if (vet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find vet in database");

        vet.setStatus(true);
        vetRepository.save(vet);
        return ResponseEntity.status(HttpStatus.OK).body("Successfully updated vet to be a valid license");
    }

    //    @PreAuthorize("hasRole(@roles.ROLE_VET)")
    @DeleteMapping(value = "/delete/all")
    public ResponseEntity<String> deleteAllVet() {
        vetRepository.deleteAll();
        return ResponseEntity.status(HttpStatus.NO_CONTENT).body("Deleted all vets");
    }

    //    @PreAuthorize("hasRole(@roles.ROLE_VET)")
    @DeleteMapping(value = "/delete/{vid}")
    public ResponseEntity<String> deleteVet(@PathVariable("vid") Long vid) {
        Vet vet = vetRepository.findById(vid).orElse(null);
        if (vet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find vet in database");

        vetRepository.delete(vet);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).body("Deleted vet");
    }

    @GetMapping(value = "/getUser/id/{vid}")
    public ResponseEntity<User> getUserByVetId(@PathVariable Long vid) {
        Vet vet = vetRepository.findById(vid).orElse(null);
        if (vet == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        }
        return ResponseEntity.status(HttpStatus.OK).body(vet.getUser());
    }

    @PostMapping("/register")
    public ResponseEntity<?> registerVet(@RequestBody ObjectNode vetVerObject) {
        try {
            userService.registerVerifyVet(vetVerObject);
            return ResponseEntity.ok("Vet has been successfully registered for verification.");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @GetMapping("/nearby-vets/{uid}")
    public ResponseEntity<?> getVetsNearUser(@PathVariable("uid") Long uid) {
        try {
            return ResponseEntity.ok(userService.findAllNearbyVets(uid));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }
}
