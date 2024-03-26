package Spring20232.VetGo.service;

import Spring20232.VetGo.model.Appointment;
import Spring20232.VetGo.model.Vet;
import Spring20232.VetGo.repository.AppointmentRepository;
import Spring20232.VetGo.repository.VetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.*;

import static Spring20232.VetGo.model.Appointment.AppointmentStatus.ACCEPTED;

@Service
public class AppointmentService {
    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

    // Sets the timer deadline for the vet to accept the appointment, in minutes
    private final Long TIMERDEADLINE = 10L;
    private Map<Long, ScheduledFuture<?>> taskFutures = new ConcurrentHashMap<>();
    private Map<Long, ArrayList<Vet>> remainingVetsList = new HashMap<>();

    @Autowired
    VetRepository vetRepository;
    @Autowired
    AppointmentRepository appointmentRepository;
    public Long broadcast(Appointment appointment) {

        ArrayList<Vet> vets = new ArrayList<>(vetRepository.findAll());

        Vet chosenVet = chooseBestVet(vets, appointment);

        System.out.println("Chosen vet is " + chosenVet.getUser().getFirstName() + " with Lat: " + chosenVet.getLatitude() + " Long: " + chosenVet.getLongitude() + " for AppointmentID: " + appointment.getAid());

        appointment.setVet(chosenVet);
        appointmentRepository.save(appointment);

        ScheduledFuture<?> taskFuture = scheduler.schedule(() -> checkVetResponse(appointment, vets), TIMERDEADLINE, TimeUnit.MINUTES);
        taskFutures.put(appointment.getAid(), taskFuture);
        remainingVetsList.put(appointment.getAid(), vets);

        return appointment.getAid();
    }

    private Vet chooseBestVet(ArrayList<Vet> vets, Appointment appointment) {
        Vet vet = new Vet();
        double distance = 99999;

        for (Vet elem: vets) {
            if (Math.sqrt(Math.pow((elem.getLatitude() - appointment.getLatitude()), 2) + Math.pow((elem.getLongitude() - appointment.getLongitude()), 2)) < distance) {
                distance = Math.sqrt(Math.pow(elem.getLatitude(), 2) + Math.pow(elem.getLongitude(), 2));
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

}
