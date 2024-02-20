package Spring20232.VetGo.model;

import com.amazonaws.services.fms.model.App;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;

import java.util.*;

@Entity
@Table(name = "vets")
public class Vet extends BaseEntity {
    private String vetLicense;
    private Boolean status;
    private Double longitude;
    private Double latitude;
    private double averageRating;
    private int numReviews;
    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;
    @OneToOne
    @JoinColumn(name = "vet_tags")
    private Tag tags;
    @ManyToMany
    @JoinTable(name = "vet_specialties", joinColumns = @JoinColumn(name = "vet_id"),
            inverseJoinColumns = @JoinColumn(name = "specialty_id"))
    private Set<Specialty> specialties = new HashSet<Specialty>();
    @OneToMany(mappedBy = "vet", cascade = CascadeType.ALL)
    @JsonIgnore
    private List<Appointment> appointments = new ArrayList<>();

    public Vet() {
    }

    public Vet(User user, String vetLicense, Boolean status, Set<Specialty> specialties,
               List<Appointment> appointments, Double longitude, double latitude, double averageRating, int numReviews) {
        this.user = user;
        this.vetLicense = vetLicense;
        this.status = status;
        this.specialties = specialties;
        this.appointments = appointments;
        this.latitude = latitude;
        this.longitude = longitude;
        this.averageRating = averageRating;
        this.numReviews = numReviews;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getVetLicense() {
        return vetLicense;
    }

    public void setVetLicense(String vetLicense) {
        this.vetLicense = vetLicense;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Set<Specialty> getSpecialties() {
        return specialties;
    }

    public void setSpecialties(Set<Specialty> specialties) {
        this.specialties = specialties;
    }

    public void addSpecialties(Specialty specialty) {
        this.specialties.add(specialty);
    }

    public List<Appointment> getAppointments() {
        return appointments;
    }

    public void setAppointments(List<Appointment> appointments) {
        this.appointments = appointments;
    }

    public void addAppointments(Appointment appointment) {
        this.appointments.add(appointment);
    }

    public void removeAppointments(Appointment appointment) {
        appointments.remove(appointment);
    }

    public double getAverageRating() {
        return averageRating;
    }

    public void setAverageRating(double averageRating) { this.averageRating = averageRating; }

    public int getNumReviews() {
        return numReviews;
    }

    public void setNumReviews(int numReviews) { this.numReviews = numReviews; }

    public Double getLongitude() { return longitude; }

    public void setLongitude(Double longitude) { this.longitude = longitude; }

    public Double getLatitude() { return latitude; }

    public void setLatitude(Double latitude) { this.latitude = latitude; }

    public Tag getTags() {
        if (tags == null) {
            this.tags = new Tag();
        }
        return this.tags;
    }

    public void setTags(Tag tags) {
        this.tags = tags;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Vet vet = (Vet) o;
        return  numReviews == vet.numReviews && Double.compare(vet.averageRating, averageRating) == 0 &&
                Objects.equals(vetLicense, vet.vetLicense) && Objects.equals(status, vet.status) &&
                Objects.equals(specialties, vet.specialties) && Objects.equals(appointments, vet.appointments);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), vetLicense, status, specialties,
                            appointments, latitude, longitude, averageRating, numReviews);
    }
}
