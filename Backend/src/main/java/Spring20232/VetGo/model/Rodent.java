package Spring20232.VetGo.model;

import jakarta.persistence.Entity;

import java.util.List;

@Entity
public class Rodent extends Pet {
    private String species;
    private SocialNeeds socialNeeds;
    private DietType dietType;
    private boolean isNocturnal;

    public enum SocialNeeds {LOW, MEDIUM, HIGH}
    public enum DietType {HERBIVORE, CARNIVORE, OMNIVORE}

    public Rodent(){
    }

    public Rodent(Owner owner, List<Appointment> appointments, String name, List<String> fileLink, boolean isMale, int age, int weight, int height,
               String species, SocialNeeds socialNeeds, DietType dietType, boolean isNocturnal) {
        super(owner, appointments, name, fileLink, isMale, age, weight, height);
        this.species = species;
        this.socialNeeds = socialNeeds;
        this.dietType = dietType;
        this.isNocturnal = isNocturnal;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public SocialNeeds getSocialNeeds() {
        return socialNeeds;
    }

    public void setSocialNeeds(SocialNeeds socialNeeds) {
        this.socialNeeds = socialNeeds;
    }

    public DietType getDietType() {
        return dietType;
    }

    public void setDietType(DietType dietType) {
        this.dietType = dietType;
    }

    public boolean isNocturnal() {
        return isNocturnal;
    }

    public void setNocturnal(boolean nocturnal) {
        isNocturnal = nocturnal;
    }

    public void updateFrom(Rodent updatedRodent) {
        super.updateFrom(updatedRodent);

        if (updatedRodent.getSpecies() != null) {
            this.setSpecies(updatedRodent.getSpecies());
        }
        if (updatedRodent.getSocialNeeds() != null) {
            this.setSocialNeeds(updatedRodent.getSocialNeeds());
        }
        if (updatedRodent.getDietType() != null) {
            this.setDietType(updatedRodent.getDietType());
        }
        this.setNocturnal(updatedRodent.isNocturnal());
    }

}
