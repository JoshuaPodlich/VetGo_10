package Spring20232.VetGo.model;

import jakarta.persistence.Entity;

import java.util.List;

@Entity
public class Fish extends Pet {
    private String species;
    private WaterType waterType;
    private int tankSizeGallons;
    private boolean isSchoolingFish;

    public enum WaterType {FRESHWATER, SALTWATER}

    public Fish(){
    }

    public Fish(Owner owner, List<Appointment> appointments, String name, List<String> fileLink, Boolean isMale, int age, int weight, int height,
                   String species, WaterType waterType, int tankSizeGallons, boolean isSchoolingFish) {
        super(owner, appointments, name, fileLink, isMale, age, weight, height);
        this.species = species;
        this.waterType = waterType;
        this.tankSizeGallons = tankSizeGallons;
        this.isSchoolingFish = isSchoolingFish;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public WaterType getWaterType() {
        return waterType;
    }

    public void setWaterType(WaterType waterType) {
        this.waterType = waterType;
    }

    public int getTankSizeGallons() {
        return tankSizeGallons;
    }

    public void setTankSizeGallons(int tankSizeGallons) {
        this.tankSizeGallons = tankSizeGallons;
    }

    public boolean isSchoolingFish() {
        return isSchoolingFish;
    }

    public void setSchoolingFish(boolean schoolingFish) {
        isSchoolingFish = schoolingFish;
    }

    public void updateFrom(Fish updatedFish) {
        super.updateFrom(updatedFish);

        if (updatedFish.getSpecies() != null) {
            this.setSpecies(updatedFish.getSpecies());
        }

        if (updatedFish.getWaterType() != null) {
            this.setWaterType(updatedFish.getWaterType());
        }
        this.setTankSizeGallons(updatedFish.getTankSizeGallons());
        this.setSchoolingFish(updatedFish.isSchoolingFish());
    }

}
