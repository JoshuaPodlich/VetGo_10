package Spring20232.VetGo.controller;

import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.*;
import Spring20232.VetGo.service.EmailService;
import Spring20232.VetGo.service.AppointmentService;
import com.amazonaws.services.mq.model.NotFoundException;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import static Spring20232.VetGo.model.Appointment.AppointmentStatus.*;

@RestController
@RequestMapping("appointment")
public class AppointmentController {

    @Autowired
    AppointmentRepository appointmentRepository;
    @Autowired
    VetRepository vetRepository;
    @Autowired
    PetRepository petRepository;
    @Autowired
    OwnerRepository ownerRepository;
    @Autowired
    AdditionalPetInformationRepository additionalPetInformationRepository;
    @Autowired
    EmailService emailService;
    @Autowired
    AppointmentService appointmentService;

    @GetMapping(value = "/all")
    public ResponseEntity<List<Appointment>> getAllAppointment() {
        List<Appointment> apList = new ArrayList<>();
        appointmentRepository.findAll().forEach(apList::add);
        return ResponseEntity.status(HttpStatus.OK).body(apList);
    }

    @GetMapping(value = "/all/{pid}")
    public ResponseEntity<List<Appointment>> getAllAppointmentByPet(@PathVariable Long pid) {
        List<Appointment> apList = new ArrayList<>();
        for (Appointment app:appointmentRepository.findAll()) {
            Appointment aa = app;
            if(app.getPet().getId().equals(pid))
            {
                apList.add(app);
            }
        }
        return ResponseEntity.status(HttpStatus.OK).body(apList);
    }

    @GetMapping(value = "/all/vet/{vid}")
    public ResponseEntity<List<Appointment>> getAllAppointmentByVet(@PathVariable Long vid) {
        List<Appointment> apList = new ArrayList<>();
        for (Appointment app:appointmentRepository.findAll()) {
            if(app.getVet().getId() != null && app.getVet().getId().equals(vid))
            {
                apList.add(app);
            }
        }
        return ResponseEntity.status(HttpStatus.OK).body(apList);
    }

    @GetMapping(value = "/get/{aid}")
    public ResponseEntity<Appointment> getAppointment(@PathVariable Long aid) {
        return ResponseEntity.status(HttpStatus.OK).body(appointmentRepository.findById(aid).orElse(null));
    }

//    @GetMapping(value = "/demoAddPetDetails")
//    public ResponseEntity<?> DemoAddPetDetails()
//    {
//        Appointment ap=null;
//        for(Appointment a: appointmentRepository.findAll())
//        {
//            if(a.getStatus()==COMPLETED)
//            {
//                ap = a;
//                break;
//            }
//        }
//        AdditionalPetInformation api = new AdditionalPetInformation("","Needs some treats","None","None","Allergic to me","Yes he is being a naughty boy","None","None","None","None");
//         api = additionalPetInformationRepository.findById(api.getAdditionalInfoId()).orElse(null);
//        if (api == null) {
//            api = new AdditionalPetInformation();
//            api.setDiet("Eats my sadness away");
//            api.setMedications("He doing good");
//            api.setMedications("meds?");
//            api.setShots("Pfizer - johnson");
//            api.setAllergies("Allergic to me");
//            api.setChangesInBehavior("Started to bark");
//            additionalPetInformationRepository.save(api);
//        }
//        additionalPetInformationRepository.save(api);
//        if(ap!=null)
//        {
//            ap.setPetInformation(api);
//            appointmentRepository.save(ap);
//        }
//        else
//        {
//            Appointment app = new Appointment(new Random().nextLong(),null,null,null,1212.00,1212.00,"",null,COMPLETED,api,null);
//            appointmentRepository.save(ap);
//        }
//            return ResponseEntity.status(HttpStatus.OK).body(ap);
//    }

    // Returns a list of nearby appointment by taking in longitude, latitude and radius around them
    @PostMapping(value = "/nearby/all")
    public ResponseEntity<List<Appointment>> getVetAppointmentList(@RequestBody ObjectNode objectNode) {

        Double longitude = objectNode.get("longitude").asDouble();
        Double latitude = objectNode.get("latitude").asDouble();
        Double radius = objectNode.get("radius").asDouble();

        List<Appointment> unfinished = new ArrayList<>();
        List<Appointment> app = appointmentRepository.findNearbyAppointment(longitude, latitude, radius);
        for (Appointment a : app) {
            if (a.getStatus() == WAITING || a.getStatus() == ACCEPTED || a.getStatus() == PAYMENT) {
                unfinished.add(a);
            }
        }
//        return ResponseEntity.status(HttpStatus.OK).body(appointmentRepository.findNearbyAppointment(longitude, latitude, radius));
        return ResponseEntity.status(HttpStatus.OK).body(unfinished);

    }
// Adds additional pet information to the appointment
    @PostMapping(value = "/addPetInfo/{aid}")
    public ResponseEntity<?> addPetInformation(@PathVariable Long aid, @RequestBody AdditionalPetInformation petInfo) {
        Appointment app  = appointmentRepository.findById(aid).orElse(null);
        if (app == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find appointment in database");
        additionalPetInformationRepository.save(petInfo);
        app.setPetInformation(petInfo);
        appointmentRepository.save(app);
        return ResponseEntity.status(HttpStatus.OK).body(app);
    }

    @PostMapping(value = "/create/{uid}/{pid}")
    public ResponseEntity<?> addAppointment(@RequestBody ObjectNode objectNode,
                                            @PathVariable("uid") Long uid, @PathVariable("pid") Long pid) {
        try {
            appointmentService.createAppointment(uid, pid, objectNode);
            return ResponseEntity.ok("Appointment successfully created for user with id " + uid + ".");
        }
        catch (NotFoundException e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    @PutMapping(value = "/accept/{aid}/{vid}")
    public ResponseEntity<?> acceptAppointment(@PathVariable("aid") Long aid, @PathVariable("vid") Long vid) {
        Appointment appointment = appointmentRepository.findById(aid).orElse(null);
        Vet vet = vetRepository.findById(vid).orElse(null);

        if (appointment == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find appointment in database");

        if (vet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find user in database");

        if (appointment.getStatus() != WAITING)
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Appointment has already been accepted");

//        if (vet.getVetLicense().equals(""))
//            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Action not allowed by current user type");

        appointment.setVet(vet);
        appointment.setStatus(ACCEPTED);
        appointmentRepository.save(appointment);
        vet.addAppointments(appointment);
        vetRepository.save(vet);
        appointmentService.vetHasAccepted(appointment);
        String supportLink = "filler@gmail.com";
        String messageClient = "Hello " + appointment.getPet().getOwner().getUser().getFirstName() + ",\n\n" +
                "Dr. " + vet.getUser().getLastName() + " has accepted your appointment as detailed below\n" +
                "Appointment DateTime: " + appointment.getTime() + "\n" +
                "Description: " + appointment.getDescription() + "\n" +
                "Pet: " + appointment.getPet().getName() + "\n\n\n" +
                "------------------------\n" +
                "This message has been sent to you by an autogenerated system. Please do not reply to this message." + "\n" +
                "If you have questions, please visit " + supportLink;

        String messageVet = "Hello " + vet.getUser().getFirstName() + ",\n\n" +
                "You have accepted an appointment with " + appointment.getPet().getOwner().getUser().getLastName() + " as detailed below\n" +
                "Appointment DateTime: " + appointment.getTime() + "\n" +
                "Description: " + appointment.getDescription() + "\n" +
                "Pet: " + appointment.getPet().getName() + "\n\n\n" +
                "------------------------\n" +
                "This message has been sent to you by an autogenerated system. Please do not reply to this message." + "\n" +
                "If you have questions, please visit " + supportLink;

        String clientEmail = appointment.getPet().getOwner().getUser().getEmail();
        String vetEmail = vet.getUser().getEmail();

//        emailService.sendSimpleMessage(clientEmail, "Appointment Event", messageClient);
//        emailService.sendSimpleMessage(vetEmail, "Appointment Event", messageVet);

        return ResponseEntity.status(HttpStatus.OK).body(appointment);
    }

    @PutMapping(value = "/update/{aid}")
    public ResponseEntity<?> updateAppointment(@PathVariable("aid") Long aid, @RequestBody Appointment updatedAppointment) {
        Appointment appointment = appointmentRepository.findById(aid).orElse(null);

        if (appointment == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find appointment in database");

        appointment.setDescription(updatedAppointment.getDescription());
        appointment.setLatitude(updatedAppointment.getLatitude());
        appointment.setLongitude(updatedAppointment.getLongitude());
        appointment.setStatus(updatedAppointment.getStatus());
        appointment.setTime(updatedAppointment.getTime());

        appointmentRepository.save(appointment);
        return ResponseEntity.status(HttpStatus.OK).body(appointment);
    }

    // Allows vets to cancel the selected appointment
    @PutMapping(value = "/remove/{aid}/{vid}")
    public ResponseEntity<?> cancelAppointment(@PathVariable("aid") Long aid, @PathVariable("vid") Long vid) {
        Appointment appointment = appointmentRepository.findById(aid).orElse(null);
        Vet vet = vetRepository.findById(vid).orElse(null);

        if (appointment == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find appointment in database");

        if (vet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find vet in database");

        if (appointment.getStatus() != ACCEPTED)
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Appointment cannot be cancelled");

        if (vet.getVetLicense().equals(""))
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Action not allowed by current user type");

        vet.removeAppointments(appointment);
        vetRepository.save(vet);
        appointment.setStatus(WAITING);
        appointment.setVet(null);
        appointmentRepository.save(appointment);

        return ResponseEntity.status(HttpStatus.OK).body(appointment);
    }

    @PutMapping(value = "/payment/{aid}/{vid}")
    public ResponseEntity<String> paymentAppointment(@PathVariable("aid") Long aid, @PathVariable("vid") Long vid) {
        Appointment appointment = appointmentRepository.findById(aid).orElse(null);
        Vet vet = vetRepository.findById(vid).orElse(null);

        System.out.println("TEST: " + appointment);
        if (appointment == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find appointment in database");

        if (vet == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find vet in database");

        if (appointment.getStatus() != ACCEPTED) {
            System.out.println("APPOINTMENT STATUS: " + appointment.getStatus());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Appointment cannot be completed");
        }
        appointment.setStatus(PAYMENT);
        appointmentRepository.save(appointment);

        return ResponseEntity.status(HttpStatus.OK).body("Successfully updated appointment to payment status");
    }

    @PutMapping(value = "/completed/{aid}/{oid}")
    public ResponseEntity<String> completedAppointment(@PathVariable("aid") Long aid, @PathVariable("oid") Long oid) {
        Appointment appointment = appointmentRepository.findById(aid).orElse(null);
        Owner owner = ownerRepository.findById(oid).orElse(null);

        if (appointment == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find appointment in database");

        if (owner == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find owner in database");

        if (appointment.getStatus() != PAYMENT)
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Appointment cannot be completed");

        appointment.setStatus(COMPLETED);
        appointmentRepository.save(appointment);

        return ResponseEntity.status(HttpStatus.OK).body("Successfully updated appointment to completed status");
    }

    @DeleteMapping(value = "/delete/{aid}")
    public ResponseEntity<String> deleteAppointment(@PathVariable("aid") Long aid) {
        Appointment appointment = appointmentRepository.findById(aid).orElse(null);
        if (appointment == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find appointment in database");
        }

        appointmentRepository.delete(appointment);
        return ResponseEntity.status(HttpStatus.OK).body("Deleted" + appointment.getAid());
    }

    @DeleteMapping(value = "/delete/all")
    public ResponseEntity<String> deleteAllAppointment() {
        appointmentRepository.deleteAll();
        return ResponseEntity.status(HttpStatus.OK).body("Deleted all appointments");
    }

    @PutMapping(value = "/cancel/{aid}")
    public ResponseEntity<String> cancelAppointment(@PathVariable("aid") Long aid) {
        Appointment appointment = appointmentRepository.findById(aid).orElse(null);

        if (appointment == null)
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Unable to find appointment in database");

        appointmentService.vetHasCanceled(appointment);

        return ResponseEntity.status(HttpStatus.OK).body("Successfully canceled appointment");
    }
}
