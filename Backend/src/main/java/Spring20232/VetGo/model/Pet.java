package Spring20232.VetGo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.util.*;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public class Pet extends BaseEntity {

    @ManyToOne
    @JoinColumn(name = "owner_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Owner owner;

    @OneToMany(mappedBy = "pet", cascade = CascadeType.ALL)
    @JsonIgnore
    private List<Appointment> appointments = new ArrayList<>();
    private String name;

    @ElementCollection
    private List<String> fileLink = new ArrayList<String>();

    @Column(length = 255)
    private String imageURL;
    private boolean isMale;
    private int age;
    private int weight;
    private int height;

    public Pet() {
    }

    public Pet(Owner owner, List<Appointment> appointments, String name, List<String> fileLink, boolean isMale, int age, int weight, int height) {
        this.owner = owner;
        this.appointments = appointments;
        this.name = name;
        this.isMale = isMale;
        this.age = age;
        this.weight = weight;
        this.height = height;
    }

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public String getName() {
        return name;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getFileLink() {
        return fileLink;
    }

    public void setFileLink(List<String> fileLink) {
        this.fileLink = fileLink;
    }

    public void addFileLink(String fileLink) {
        this.fileLink.add(fileLink);
    }

    public boolean getMale() {
        return isMale;
    }

    public void setMale(boolean male) {
        isMale = male;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public List<Appointment> getAppointments() {
        return appointments;
    }

    public void addAppointmentList(Appointment appointment) {
        appointments.add(appointment);
    }

    public void setAppointments(List<Appointment> appointments) {
        this.appointments = appointments;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Pet pet = (Pet) o;
        return age == pet.age && weight == pet.weight && height == pet.height &&
                Objects.equals(owner, pet.owner) && Objects.equals(appointments, pet.appointments) &&
                Objects.equals(name, pet.name) && Objects.equals(fileLink, pet.fileLink) && Objects.equals(isMale, pet.isMale);
    }

    @Override
    public int hashCode() {
        return Objects.hash(owner, appointments, name, fileLink, isMale, age, weight, height);
    }

    public void updateFrom(Pet updatedPet) {
        if (updatedPet.getName() != null) {
            this.setName(updatedPet.getName());
        }
        if (updatedPet.getFileLink() != null && !updatedPet.getFileLink().isEmpty()) {
            this.setFileLink(updatedPet.getFileLink());
        }

        this.setMale(updatedPet.getMale());
        this.setAge(updatedPet.getAge());
        this.setWeight(updatedPet.getWeight());
        this.setHeight(updatedPet.getHeight());
    }


}
