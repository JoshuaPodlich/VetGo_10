package Spring20232.VetGo.service;

import Spring20232.VetGo.model.Appointment;
import Spring20232.VetGo.model.Vet;
import Spring20232.VetGo.repository.AppointmentRepository;
import Spring20232.VetGo.repository.VetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import static Spring20232.VetGo.model.Appointment.AppointmentStatus.ACCEPTED;

@Service
public class AppointmentService {
    private final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

    @Autowired
    VetRepository vetRepository;
    @Autowired
    AppointmentRepository appointmentRepository;
    public Long broadcast(Appointment appointment) {
        System.out.println("Broadcasting appointment!");

        List<Vet> vets = new ArrayList<>(vetRepository.findAll());

        Vet chosenVet = chooseBestVet(vets);

        System.out.println("Chosen vet is " + chosenVet.getUser().getFirstName() + " with Lat: " + chosenVet.getLatitude() + " Long: " + chosenVet.getLongitude());

        appointment.setVet(chosenVet);
        appointmentRepository.save(appointment);

        scheduler.schedule(() -> checkVetResponse(appointment, vets), 1, TimeUnit.MINUTES);


        return appointment.getAid();
    }

    private Vet chooseBestVet(List<Vet> vets) {
        Vet vet = new Vet();
        double distance = 99999;

        for (Vet elem: vets) {
            if (Math.sqrt(Math.pow(elem.getLatitude(), 2) + Math.pow(elem.getLongitude(), 2)) < distance) {
                distance = Math.sqrt(Math.pow(elem.getLatitude(), 2) + Math.pow(elem.getLongitude(), 2));
                vet = elem;
            }
        }

        return vet;
    }

    private void checkVetResponse(Appointment appointment, List<Vet> remainingVets) {
        System.out.println("10 Minutes has passed, checking for acceptance");
        // Check if the chosen vet has accepted the appointment
        if (vetHasAccepted(appointment)) {
            System.out.println("Vet has accepted!");
            // Vet has accepted, return
            return;
        }

        System.out.println("Vet has not accepted");

        // Remove the current vet from the list of remaining vets
        remainingVets.remove(appointment.getVet());

        // If there are remaining vets, repeat the process with the next best vet
        if (!remainingVets.isEmpty()) {
            Vet nextBestVet = chooseBestVet(remainingVets);
            System.out.println("Next best vet is " + nextBestVet.getUser().getFirstName() +
                    " with Lat: " + nextBestVet.getLatitude() +
                    " Long: " + nextBestVet.getLongitude());

            appointment.setVet(nextBestVet);
            appointmentRepository.save(appointment);

            // Schedule a task to check vet response after 10 minutes
            scheduler.schedule(() -> checkVetResponse(appointment, remainingVets), 10, TimeUnit.MINUTES);
        } else {
            // No more vets left, throw an error
            System.out.println("Mission Failed");
            throw new RuntimeException("No vets available to accept the appointment.");
        }
    }

    @Transactional
    private boolean vetHasAccepted(Appointment appointment) {
        Long id = appointment.getAid();
        Appointment newAppoint = appointmentRepository.getReferenceById(id);
        Appointment.AppointmentStatus status = newAppoint.getStatus();
        return status == ACCEPTED;
    }
}
