package Spring20232.VetGo.controller;

import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.OwnerRepository;
import Spring20232.VetGo.repository.PetRepository;
import Spring20232.VetGo.service.PetService;
import com.amazonaws.services.mq.model.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import static Spring20232.VetGo.model.Appointment.AppointmentStatus.*;

@RestController
@RequestMapping("pet")
public class PetController {
    private final PetService petService;
    @Autowired
    private PetRepository petRepository;
    @Autowired
    private OwnerRepository ownerRepository;

    @Autowired
    public PetController(PetService petService) {
        this.petService = petService;
    }

    @SuppressWarnings("NewApi")
    @GetMapping(value = "/get/all")
    public ResponseEntity<List<Pet>> getAllPet() {
        List<Pet> petList = new ArrayList<>();
        petRepository.findAll().forEach(petList::add);
        return ResponseEntity.status(HttpStatus.OK).body(petList);
    }

    @GetMapping(value = "/get/all/user/{uid}")
    public ResponseEntity<?> getAllOwnersPets(@PathVariable("uid") Long uid) {
        try {
            return ResponseEntity.ok().body(petService.getOwnersPets(uid));
        }
        catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @SuppressWarnings("NewApi")
    @GetMapping(value = "/get/{pid}/owner")
    public ResponseEntity<Owner> getPetOwner(@PathVariable("pid") Long pid) {
        return ResponseEntity.status(HttpStatus.OK).body(petRepository.findById(pid).orElse(null).getOwner());
    }

    @SuppressWarnings("NewApi")
    @GetMapping(value = "/get/{pid}")
    public ResponseEntity<Pet> getPet(@PathVariable("pid") Long pid) {
        return ResponseEntity.status(HttpStatus.OK).body(petRepository.findById(pid).orElse(null));
    }

    // Returns list of appointment that pet has currently
    @GetMapping(value = "/get/{pid}/appointments")
    public ResponseEntity<?> getPetAppointmentList(@PathVariable("pid") Long pid) {
        Pet pet = petRepository.findById(pid).orElse(null);

        if (pet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find pet in database");

        return ResponseEntity.status(HttpStatus.OK).body(pet.getAppointments());
    }

    @GetMapping(value = "/get/{pid}/appointment")
    public ResponseEntity<?> getPetAppointment(@PathVariable("pid") Long pid) {
        Pet pet = petRepository.findById(pid).orElse(null);

        if (pet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find pet in database");

        List<Appointment> appointmentList = pet.getAppointments();

        if (appointmentList.isEmpty())
                return ResponseEntity.status(HttpStatus.NO_CONTENT).body("Pet has no appointments.");

        Appointment petAppointment = null;

        for (Appointment a : appointmentList) {
            if (a.getPet().equals(pet)) {
                if (a.getStatus() == WAITING || a.getStatus() == ACCEPTED || a.getStatus() == PAYMENT) {
                    petAppointment = a;
                    return ResponseEntity.status(HttpStatus.OK).body(petAppointment);
                }
            }
        }
        return ResponseEntity.status(HttpStatus.NO_CONTENT).body(null);
    }

    @GetMapping(value = "/records/file/{petId}")
    public ResponseEntity<List<byte[]>> getPetRecord(@PathVariable("petId") Long pid) {
        return ResponseEntity.status(HttpStatus.OK).body(petService.getPetRecords(pid));
    }

    // To upload medical file
    @PostMapping(path = "/upload/{petId}", consumes = MediaType.MULTIPART_FORM_DATA_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    public void uploadRecord(@PathVariable("petId") Long pid,
                             @RequestParam("file") MultipartFile file) {
        petService.uploadRecord(pid, file);
    }

    // To upload Image
    @PutMapping(path = "/upload/image/{petId}")
    public ResponseEntity<String> uploadImage(@RequestBody String petImage,@PathVariable("petId") Long pid) {
        Pet pet = petRepository.findById(pid).orElse(null);
        if (pet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find pet in database");
        pet.setPetImage(petImage);
        petRepository.save(pet);
        return ResponseEntity.status(HttpStatus.OK).body("Successfully able to upload the file");
    }

    @PostMapping(value = "/add/dog/{uid}")
    public ResponseEntity<?> addDog(@RequestBody Dog dog,
                                    @PathVariable("uid") Long uid) {
        try {
            petService.addOwnerPet(dog, uid);
            return ResponseEntity.status(HttpStatus.OK).body("Dog successfully added.");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PostMapping(value = "/add/cat/{uid}")
    public ResponseEntity<?> addCat(@RequestBody Cat cat,
                                    @PathVariable("uid") Long uid) {
        try {
            petService.addOwnerPet(cat, uid);
            return ResponseEntity.status(HttpStatus.OK).body("Cat successfully added.");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PostMapping(value = "/add/bird/{uid}")
    public ResponseEntity<?> addBird(@RequestBody Bird bird,
                                    @PathVariable("uid") Long uid) {
        try {
            petService.addOwnerPet(bird, uid);
            return ResponseEntity.status(HttpStatus.OK).body("Bird successfully added.");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PostMapping(value = "/add/reptile/{uid}")
    public ResponseEntity<?> addReptile(@RequestBody Reptile reptile,
                                     @PathVariable("uid") Long uid) {
        try {
            petService.addOwnerPet(reptile, uid);
            return ResponseEntity.status(HttpStatus.OK).body("Reptile successfully added.");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PostMapping(value = "/add/fish/{uid}")
    public ResponseEntity<?> addFish(@RequestBody Fish fish,
                                        @PathVariable("uid") Long uid) {
        try {
            petService.addOwnerPet(fish, uid);
            return ResponseEntity.status(HttpStatus.OK).body("Fish successfully added.");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PostMapping(value = "/add/rodent/{uid}")
    public ResponseEntity<?> addRodent(@RequestBody Rodent rodent,
                                     @PathVariable("uid") Long uid) {
        try {
            petService.addOwnerPet(rodent, uid);
            return ResponseEntity.status(HttpStatus.OK).body("Rodent successfully added.");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PostMapping(value = "/add/other/{uid}")
    public ResponseEntity<?> addOtherPet(@RequestBody OtherPet pet,
                                       @PathVariable("uid") Long uid) {
        try {
            petService.addOwnerPet(pet, uid);
            return ResponseEntity.status(HttpStatus.OK).body("Other type of pet successfully added.");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @DeleteMapping(value = "/delete/{pid}")
    public ResponseEntity<String> deletePet(@PathVariable("pid") Long pid) {
        try {
            petService.deleteOwnersPet(pid);
            return ResponseEntity.ok().body("Deleted pet with id " + pid + ".");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PutMapping(value = "/update/dog/{pid}")
    public ResponseEntity<?> updateDog(@RequestBody Dog updatedDog, @PathVariable("pid") Long pid) {
        try {
            petService.updateOwnersDog(pid, updatedDog);
            return ResponseEntity.ok().body("Updated dog with id " + pid + ".");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }

    }

    @PutMapping(value = "/update/cat/{pid}")
    public ResponseEntity<?> updateCat(@RequestBody Cat updatedCat, @PathVariable("pid") Long pid) {
        try {
            petService.updateOwnersCat(pid, updatedCat);
            return ResponseEntity.ok().body("Updated cat with id " + pid + ".");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PutMapping(value = "/update/bird/{pid}")
    public ResponseEntity<?> updateBird(@RequestBody Bird updatedBird, @PathVariable("pid") Long pid) {
        try {
            petService.updateOwnersBird(pid, updatedBird);
            return ResponseEntity.ok().body("Updated bird with id " + pid + ".");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PutMapping(value = "/update/reptile/{pid}")
    public ResponseEntity<?> updateReptile(@RequestBody Reptile updatedReptile, @PathVariable("pid") Long pid) {
        try {
            petService.updateOwnersReptile(pid, updatedReptile);
            return ResponseEntity.ok().body("Updated reptile with id " + pid + ".");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PutMapping(value = "/update/fish/{pid}")
    public ResponseEntity<?> updateFish(@RequestBody Fish updatedFish, @PathVariable("pid") Long pid) {
        try {
            petService.updateOwnersFish(pid, updatedFish);
            return ResponseEntity.ok().body("Updated fish with id " + pid + ".");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PutMapping(value = "/update/rodent/{pid}")
    public ResponseEntity<?> updateRodent(@RequestBody Rodent updatedRodent, @PathVariable("pid") Long pid) {
        try {
            petService.updateOwnersRodent(pid, updatedRodent);
            return ResponseEntity.ok().body("Updated rodent with id " + pid + ".");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PutMapping(value = "/update/other/{pid}")
    public ResponseEntity<?> updateOtherPet(@RequestBody OtherPet updatedOtherPet, @PathVariable("pid") Long pid) {
        try {
            petService.updateOwnersOtherPet(pid, updatedOtherPet);
            return ResponseEntity.ok().body("Updated other type of pet with id " + pid + ".");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

}
