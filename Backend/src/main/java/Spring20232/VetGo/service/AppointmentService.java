package Spring20232.VetGo.service;

import Spring20232.VetGo.model.*;
import Spring20232.VetGo.repository.*;
import com.amazonaws.services.alexaforbusiness.model.AlreadyExistsException;
import com.amazonaws.services.alexaforbusiness.model.NotFoundException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.*;

import static Spring20232.VetGo.model.Appointment.AppointmentStatus.*;
import static Spring20232.VetGo.model.Appointment.AppointmentStatus.WAITING;

@Service
public class AppointmentService {

    @Autowired
    private PetRepository petRepository;

    @Autowired
    private ScreeningSessionRepository screeningSessionRepository;

    @Autowired
    private UserRepository userRepository;

    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

    // Sets the timer deadline for the vet to accept the appointment, in minutes
    private final Long TIMERDEADLINE = 10L;
    private Map<Long, ScheduledFuture<?>> taskFutures = new ConcurrentHashMap<>();
    private Map<Long, ArrayList<Vet>> remainingVetsList = new HashMap<>();

    @Autowired
    VetRepository vetRepository;
    @Autowired
    AppointmentRepository appointmentRepository;
    public void broadcast(Appointment appointment) {

        ArrayList<Vet> vets = new ArrayList<>(vetRepository.findAll());

        Vet chosenVet = chooseBestVet(vets, appointment);

        if (chosenVet == null) return;  // There aren't any vets, so just return.
                                        // TODO: However, there should be something such that once a vet is created, broadcast is run again.

        System.out.println("Chosen vet is " + chosenVet.getUser().getFirstName() + " with Lat: " + chosenVet.getLatitude() + " Long: " + chosenVet.getLongitude() + " for AppointmentID: " + appointment.getAid());

        appointment.setVet(chosenVet);
        appointmentRepository.save(appointment);

        ScheduledFuture<?> taskFuture = scheduler.schedule(() -> checkVetResponse(appointment, vets), TIMERDEADLINE, TimeUnit.MINUTES);
        taskFutures.put(appointment.getAid(), taskFuture);
        remainingVetsList.put(appointment.getAid(), vets);
    }

    private Vet chooseBestVet(ArrayList<Vet> vets, Appointment appointment) {
        Vet vet = null;
        double minDistance = Double.MAX_VALUE;

        for (Vet elem : vets) {
            // Skip vets with latitude and longitude both set to 0 or if either is null.
            if (elem.getLatitude() == null || elem.getLongitude() == null ||
                    (elem.getLatitude() == 0 && elem.getLongitude() == 0))
            {
                continue;
            }
            double currentDistance = Math.sqrt(Math.pow((elem.getLatitude() - appointment.getLatitude()), 2)
                    + Math.pow((elem.getLongitude() - appointment.getLongitude()), 2));
            if (currentDistance < minDistance) {
                minDistance = currentDistance;
                vet = elem;
            }
        }

        return vet;
    }

    private void checkVetResponse(Appointment appointment, ArrayList<Vet> remainingVets) {
        taskFutures.remove(appointment.getAid());
        remainingVetsList.remove(appointment.getAid());

        System.out.println("10 Minutes has passed, checking for acceptance");
        // Check if the chosen vet has accepted the appointment
        if (vetHasAcceptedCheck(appointment)) {
            System.out.println("Vet has accepted!");
            // Vet has accepted, return
            return;
        }

        System.out.println("Vet has not accepted");

        // Remove the current vet from the list of remaining vets
        remainingVets.removeIf(elem -> appointment.getVet().getId().equals(elem.getId()));

        // If there are remaining vets, repeat the process with the next best vet
        if (!remainingVets.isEmpty()) {
            Vet nextBestVet = chooseBestVet(remainingVets, appointment);
            System.out.println("Next best vet is " + nextBestVet.getUser().getFirstName() +
                    " with Lat: " + nextBestVet.getLatitude() +
                    " Long: " + nextBestVet.getLongitude());

            appointment.setVet(nextBestVet);
            appointmentRepository.save(appointment);

            // Schedule a task to check vet response after 10 minutes
            ScheduledFuture<?> taskFuture = scheduler.schedule(() -> checkVetResponse(appointment, remainingVets), TIMERDEADLINE, TimeUnit.MINUTES);
            taskFutures.put(appointment.getAid(), taskFuture);
            remainingVetsList.put(appointment.getAid(), remainingVets);
        } else {
            // No more vets left, throw an error
            System.out.println("No vets left to accept.");
            throw new RuntimeException("No vets available to accept the appointment.");
        }
    }

    public Appointment findAppointmentByAid(Long aid) {
        return appointmentRepository.findByAid(aid);
    }

    private boolean vetHasAcceptedCheck(Appointment appointment) {
        return findAppointmentByAid(appointment.getAid()).getStatus() == ACCEPTED;
    }

    public void vetHasAccepted(Appointment appointment) {
        if (taskFutures.get(appointment.getAid()) != null && vetHasAcceptedCheck(appointment)) {
            System.out.println("Vet has accepted!");
            taskFutures.get(appointment.getAid()).cancel(true);
        }
    }

    public void vetHasCanceled(Appointment appointment) {
        if (taskFutures.get(appointment.getAid()) != null && !vetHasAcceptedCheck(appointment)) {
            System.out.println("Vet has Canceled!");
            taskFutures.get(appointment.getAid()).cancel(true);
            checkVetResponse(appointment, remainingVetsList.get(appointment.getAid()));
        }
    }

    @Transactional
    public void createAppointment(Long uid, Long pid, ObjectNode objectNode) {
        User user = userRepository.findById(uid).orElse(null);
        if (user == null)
            throw new NotFoundException("Unable to find user in database.");

        Pet pet = petRepository.findById(pid).orElse(null);
        if (pet == null)
            throw new NotFoundException("Unable to find pet in database.");

        List<Appointment> appointmentList = pet.getAppointments();

        for (Appointment a : appointmentList) {
            if (a.getStatus() != COMPLETED && a.getStatus() != PAYMENT)
                throw new AlreadyExistsException("Pet is already in an appointment currently");
        }

        String description = objectNode.get("description").asText();
        Long sessionId = objectNode.get("sessionId").asLong();
        Double longitude = objectNode.get("longitude").asDouble();
        Double latitude = objectNode.get("latitude").asDouble();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM-dd-yy");
        String str = objectNode.get("month").asText() + "-" + objectNode.get("day").asText() + "-" + objectNode.get("year").asText();
        LocalDate date = LocalDate.parse(str, formatter);

        ScreeningSession session = screeningSessionRepository.findById(sessionId).orElse(null);
        if (session == null)
            throw new NotFoundException("Unable to find screening session in database.");

        Appointment appointment = new Appointment(null, date, user, null, pet, longitude, latitude, description, null, WAITING, null, session);

        pet.addAppointmentList(appointment);
        appointmentRepository.save(appointment);
        petRepository.save(pet);
        broadcast(appointment);
    }

}
