package Spring20232.VetGo.model;

import jakarta.persistence.Entity;

import java.util.List;

@Entity
public class Bird extends Pet {
    private String species;
    private boolean canFly;
    private VocalLevel vocalLevel;
    private String plumageColor; // Color of the bird's feathers

    public enum VocalLevel {QUIET, MODERATE, LOUD};

    public Bird(){
    }

    public Bird(Owner owner, List<Appointment> appointments, String name, List<String> fileLink, Boolean isMale, int age, int weight, int height,
               String species, boolean canFly, VocalLevel vocalLevel, String plumageColor) {
        super(owner, appointments, name, fileLink, isMale, age, weight, height);
        this.species = species;
        this.canFly = canFly;
        this.vocalLevel = vocalLevel;
        this.plumageColor = plumageColor;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public boolean isCanFly() {
        return canFly;
    }

    public void setCanFly(boolean canFly) {
        this.canFly = canFly;
    }

    public VocalLevel getVocalLevel() {
        return vocalLevel;
    }

    public void setVocalLevel(VocalLevel vocalLevel) {
        this.vocalLevel = vocalLevel;
    }

    public String getPlumageColor() {
        return plumageColor;
    }

    public void setPlumageColor(String plumageColor) {
        this.plumageColor = plumageColor;
    }

    public void updateFrom(Bird updatedBird) {
        super.updateFrom(updatedBird);

        if (updatedBird.getSpecies() != null) {
            this.setSpecies(updatedBird.getSpecies());
        }
        this.setCanFly(updatedBird.isCanFly());

        if (updatedBird.getVocalLevel() != null) {
            this.setVocalLevel(updatedBird.getVocalLevel());
        }
        if (updatedBird.getPlumageColor() != null) {
            this.setPlumageColor(updatedBird.getPlumageColor());
        }
    }

}
