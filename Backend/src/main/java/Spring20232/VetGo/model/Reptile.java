package Spring20232.VetGo.model;

import jakarta.persistence.Entity;

import java.util.List;

@Entity
public class Reptile extends Pet {
    private String species;
    private HabitatType habitatType;
    private DietType dietType;
    private String tempRequirement;

    public enum HabitatType {AQUATIC, TERRESTRIAL, ARBOREAL} // Water, land or trees
    public enum DietType {HERBIVORE, CARNIVORE, OMNIVORE}

    public Reptile() {
    }

    public Reptile(Owner owner, List<Appointment> appointments, String name, List<String> fileLink, Boolean isMale, int age, int weight, int height,
               String species, HabitatType habitatType, DietType dietType, String tempRequirement) {
        super(owner, appointments, name, fileLink, isMale, age, weight, height);
        this.species = species;
        this.habitatType = habitatType;
        this.dietType = dietType;
        this.tempRequirement = tempRequirement;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public HabitatType getHabitatType() {
        return habitatType;
    }

    public void setHabitatType(HabitatType habitatType) {
        this.habitatType = habitatType;
    }

    public DietType getDietType() {
        return dietType;
    }

    public void setDietType(DietType dietType) {
        this.dietType = dietType;
    }

    public String getTempRequirement() {
        return tempRequirement;
    }

    public void setTempRequirement(String tempRequirement) {
        this.tempRequirement = tempRequirement;
    }

    public void updateFrom(Reptile updatedReptile) {
        super.updateFrom(updatedReptile);

        if (updatedReptile.getSpecies() != null) {
            this.setSpecies(updatedReptile.getSpecies());
        }
        if (updatedReptile.getHabitatType() != null) {
            this.setHabitatType(updatedReptile.getHabitatType());
        }
        if (updatedReptile.getDietType() != null) {
            this.setDietType(updatedReptile.getDietType());
        }
        if (updatedReptile.getTempRequirement() != null) {
            this.setTempRequirement(updatedReptile.getTempRequirement());
        }
    }

}
