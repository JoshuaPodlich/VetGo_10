package Spring20232.VetGo.controller;

import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.OwnerRepository;
import Spring20232.VetGo.repository.PetRepository;
import Spring20232.VetGo.service.PetService;
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

    @PostMapping(value = "/add/dog/{oid}")
    public ResponseEntity<?> addDog(@RequestBody Dog dog,
                                    @PathVariable("oid") Long oid) {
        Owner owner = ownerRepository.findById(oid).orElse(null);

        if (owner == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find user in database");

        dog.setOwner(owner);
        petRepository.save(dog);
        owner.addPetList(dog);

        return ResponseEntity.status(HttpStatus.OK).body(dog);
    }

    @PostMapping(value = "/add/cat/{oid}")
    public ResponseEntity<?> addCat(@RequestBody Cat cat,
                                    @PathVariable("oid") Long oid) {
        Owner owner = ownerRepository.findById(oid).orElse(null);

        if (owner == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find user in database");

        cat.setOwner(owner);
        petRepository.save(cat);
        owner.addPetList(cat);

        return ResponseEntity.status(HttpStatus.OK).body(cat);
    }

    @PostMapping(value = "/add/bird/{oid}")
    public ResponseEntity<?> addBird(@RequestBody Bird bird,
                                    @PathVariable("oid") Long oid) {
        Owner owner = ownerRepository.findById(oid).orElse(null);

        if (owner == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find user in database");

        bird.setOwner(owner);
        petRepository.save(bird);
        owner.addPetList(bird);

        return ResponseEntity.status(HttpStatus.OK).body(bird);
    }

    @PostMapping(value = "/add/reptile/{oid}")
    public ResponseEntity<?> addReptile(@RequestBody Reptile reptile,
                                     @PathVariable("oid") Long oid) {
        Owner owner = ownerRepository.findById(oid).orElse(null);

        if (owner == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find user in database");

        reptile.setOwner(owner);
        petRepository.save(reptile);
        owner.addPetList(reptile);

        return ResponseEntity.status(HttpStatus.OK).body(reptile);
    }

    @PostMapping(value = "/add/fish/{oid}")
    public ResponseEntity<?> addFish(@RequestBody Fish fish,
                                        @PathVariable("oid") Long oid) {
        Owner owner = ownerRepository.findById(oid).orElse(null);

        if (owner == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find user in database");

        fish.setOwner(owner);
        petRepository.save(fish);
        owner.addPetList(fish);

        return ResponseEntity.status(HttpStatus.OK).body(fish);
    }

    @PostMapping(value = "/add/rodent/{oid}")
    public ResponseEntity<?> addRodent(@RequestBody Rodent rodent,
                                     @PathVariable("oid") Long oid) {
        Owner owner = ownerRepository.findById(oid).orElse(null);

        if (owner == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find user in database");

        rodent.setOwner(owner);
        petRepository.save(rodent);
        owner.addPetList(rodent);

        return ResponseEntity.status(HttpStatus.OK).body(rodent);
    }

    @PostMapping(value = "/add/other/{oid}")
    public ResponseEntity<?> addOtherPet(@RequestBody OtherPet pet,
                                       @PathVariable("oid") Long oid) {
        Owner owner = ownerRepository.findById(oid).orElse(null);

        if (owner == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find user in database");

        pet.setOwner(owner);
        petRepository.save(pet);
        owner.addPetList(pet);

        return ResponseEntity.status(HttpStatus.OK).body(pet);
    }

    @DeleteMapping(value = "/delete/{petId}")
    public ResponseEntity<String> deletePet(@PathVariable("petId") Long pid) {
        Pet pet = petRepository.findById(pid).orElse(null);
        if (pet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find pet in database");

        petRepository.delete(pet);
        return ResponseEntity.status(HttpStatus.OK).body("Deleted " + pid);
    }

    @PutMapping(value = "/update/{petId}")
    public ResponseEntity<?> updatePet(@RequestBody Pet updatedPet, @PathVariable("petId") Long pid) {

        @SuppressWarnings("NewApi") Pet currPet = petRepository.findById(pid).orElse(null);

        if (currPet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find pet in database");

        currPet.setName(updatedPet.getName());
        currPet.setMale(updatedPet.getMale());
        currPet.setAge(updatedPet.getAge());
        currPet.setWeight(updatedPet.getWeight());
        currPet.setHeight(updatedPet.getHeight());

        petRepository.save(currPet);

        return ResponseEntity.status(HttpStatus.OK).body(currPet);
//        if(petRepository.findById(pid) == null) {
//            return "Pet doesn't exist.";
//        }
//
//        petRepository.findById(pid)
//                .map(petProfile -> {
//                    petProfile.setName(updatedPet.getName());
//                    petProfile.setAge(updatedPet.getAge());
//                    petProfile.setHeight(updatedPet.getHeight());
//                    petProfile.setWeight(updatedPet.getWeight());
//                    petProfile.setMale(updatedPet.getMale());
//                    return petRepository.save(petProfile);
//                }).orElseGet(() -> {
//                    return petRepository.save(updatedPet);
//                });
//
//        return "Successfully updated pet profile";
    }

}
