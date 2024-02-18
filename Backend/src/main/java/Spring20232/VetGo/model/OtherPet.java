package Spring20232.VetGo.model;

import jakarta.persistence.Entity;

import java.util.List;

// OtherPet is for pet types that do not fall under Dog, Cat, Bird, Reptile, Fish, or Rodent.
@Entity
public class OtherPet extends Pet {
    private String species;
    private String specialCareNeeds; // Unique care requirements
    private String habitRequirements; // Description of needed environment
    private String dietRequirement; // General dietary needs

    public OtherPet(){
    }

    public OtherPet(Owner owner, List<Appointment> appointments, String name, List<String> fileLink, boolean isMale, int age, int weight, int height,
                  String species, String specialCareNeeds, String habitRequirements, String dietRequirement) {
        super(owner, appointments, name, fileLink, isMale, age, weight, height);
        this.species = species;
        this.specialCareNeeds = specialCareNeeds;
        this.habitRequirements = habitRequirements;
        this.dietRequirement = dietRequirement;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public String getSpecialCareNeeds() {
        return specialCareNeeds;
    }

    public void setSpecialCareNeeds(String specialCareNeeds) {
        this.specialCareNeeds = specialCareNeeds;
    }

    public String getHabitRequirements() {
        return habitRequirements;
    }

    public void setHabitRequirements(String habitRequirements) {
        this.habitRequirements = habitRequirements;
    }

    public String getDietRequirement() {
        return dietRequirement;
    }

    public void setDietRequirement(String dietRequirement) {
        this.dietRequirement = dietRequirement;
    }
}
