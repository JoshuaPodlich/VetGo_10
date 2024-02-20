package Spring20232.VetGo.model;

import jakarta.persistence.Entity;

import java.util.List;

@Entity
public class Cat extends Pet {
    private String breed;
    private boolean indoor;
    private FurLength furLength;
    private String temperament;

    public enum FurLength {SHORT, MEDIUM, LONG}

    public Cat() {
    }

    public Cat(Owner owner, List<Appointment> appointments, String name, List<String> fileLink, Boolean isMale, int age, int weight, int height,
               String breed,boolean indoor, FurLength furLength, String temperament) {
        super(owner, appointments, name, fileLink, isMale, age, weight, height);
        this.breed = breed;
        this.indoor = indoor;
        this.furLength = furLength;
        this.temperament = temperament;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public boolean isIndoor() {
        return indoor;
    }

    public void setIndoor(boolean indoor) {
        this.indoor = indoor;
    }

    public FurLength getFurLength() {
        return furLength;
    }

    public void setFurLength(FurLength furLength) {
        this.furLength = furLength;
    }

    public String getTemperament() {
        return temperament;
    }

    public void setTemperament(String temperament) {
        this.temperament = temperament;
    }
}
