package Spring20232.VetGo.model;

import jakarta.persistence.Entity;

import java.util.List;

@Entity
public class Dog extends Pet {
    private String breed;
    private PetSize petSize;
    private EnergyLevel energyLevel;
    private String furType;

    public enum PetSize { SMALL, MEDIUM, LARGE }
    public enum EnergyLevel {LOW, MEDIUM, HIGH}

    public Dog() {
    }

    public Dog(Owner owner, List<Appointment> appointments, String name, List<String> fileLink, boolean isMale, int age, int weight, int height,
                String breed, PetSize petSize, EnergyLevel energyLevel, String furType) {
        super(owner, appointments, name, fileLink, isMale, age, weight, height);
        this.breed = breed;
        this.petSize = petSize;
        this.energyLevel = energyLevel;
        this.furType = furType;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public PetSize getPetSize() {
        return petSize;
    }

    public void setPetSize(PetSize petSize) {
        this.petSize = petSize;
    }

    public EnergyLevel getEnergyLevel() {
        return energyLevel;
    }

    public void setEnergyLevel(EnergyLevel energyLevel) {
        this.energyLevel = energyLevel;
    }

    public String getFurType() {
        return furType;
    }

    public void setFurType(String furType) {
        this.furType = furType;
    }
}
