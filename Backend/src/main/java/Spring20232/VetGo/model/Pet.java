package Spring20232.VetGo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.util.*;

@Entity
public class Pet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long pid;

    @ManyToOne
    @JoinColumn(name = "owner_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Owner owner;


    @OneToMany(mappedBy = "pet", cascade = CascadeType.ALL)
    @JsonIgnore
    private List<Appointment> appointments = new ArrayList<>();
    private String name;
    private PetType petType;

    private String petBreed;

    public enum PetType {
        DOG, CAT, BIRD, REPTILE, FISH, RODENT, OTHER
    }


    @ElementCollection
    private List<String> fileLink = new ArrayList<String>();
    @Column(columnDefinition = "TEXT")
    private String petImage;
    private Boolean isMale;
    private int age;
    private int weight;
    private int height;

    public Pet() {
    }

    public Pet(Long pid, Owner owner, List<Appointment> appointments, String name, PetType petType, String petBreed, List<String> fileLink, Boolean isMale, int age, int weight, int height) {
        this.pid = pid;
        this.owner = owner;
        this.appointments = appointments;
        this.name = name;
        this.petType = petType;
        this.petBreed = petBreed;
        this.isMale = isMale;
        this.age = age;
        this.weight = weight;
        this.height = height;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
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

    public String getPetImage() {return petImage;}

    public void setPetImage(String petImage) {this.petImage = petImage;}

    public void setName(String name) {
        this.name = name;
    }

    public PetType getPetType() {
        return petType;
    }

    public void setPetType(PetType petType) {
        this.petType = petType;
    }

    public String getPetBreed() {
        return petBreed;
    }

    public void setPetBreed(String petBreed) {
        this.petBreed = petBreed;
    }

    @SuppressWarnings("NewApi")
    public Optional<List<String>> getFileLink() {
        return Optional.ofNullable(fileLink);
    }

    public void setFileLink(List<String> fileLink) {
        this.fileLink = fileLink;
    }

    public void addFileLink(String fileLink) {
        this.fileLink.add(fileLink);
    }

    public Boolean getMale() {
        return isMale;
    }

    public void setMale(Boolean male) {
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
        return age == pet.age && weight == pet.weight && height == pet.height && Objects.equals(pid, pet.pid) && Objects.equals(petBreed, pet.petBreed) && Objects.equals(owner, pet.owner) && Objects.equals(appointments, pet.appointments) && Objects.equals(name, pet.name) && petType == pet.petType && Objects.equals(fileLink, pet.fileLink) && Objects.equals(isMale, pet.isMale);
    }

    @Override
    public int hashCode() {
        return Objects.hash(pid, owner, appointments, name, petType, petBreed, fileLink, isMale, age, weight, height);
    }


}
