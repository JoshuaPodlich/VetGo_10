package Spring20232.VetGo.model;

import jakarta.persistence.*;

import java.util.Date;
import java.util.UUID;

@Entity
public class AdditionalPetInformation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long additionalInfoId;
    private String diet;
    private String medications;
    private String allergies;
    private String changesInBehavior;
    private String bloodPressure;
    private String weight;
    private String symptoms;
    private String shots;
    private String otherNotes;
    private String height;

    public String getBloodPressure() {
        return bloodPressure;
    }

    public void setBloodPressure(String bloodPressure) {
        this.bloodPressure = bloodPressure;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getSymptoms() {
        return symptoms;
    }

    public void setSymptoms(String symptoms) {
        this.symptoms = symptoms;
    }

    public String getShots() {
        return shots;
    }

    public void setShots(String shots) {
        this.shots = shots;
    }

    public String getOtherNotes() {
        return otherNotes;
    }

    public void setOtherNotes(String otherNotes) {
        this.otherNotes = otherNotes;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }


    public AdditionalPetInformation(String diet, String medications, String allergies, String changesInBehavior, String bloodPressure, String weight, String symptoms, String shots, String otherNotes, String height) {
        this.diet = diet;
        this.medications = medications;
        this.allergies = allergies;
        this.changesInBehavior = changesInBehavior;
        this.bloodPressure = bloodPressure;
        this.weight = weight;
        this.symptoms = symptoms;
        this.shots = shots;
        this.otherNotes = otherNotes;
        this.height = height;
    }

    public AdditionalPetInformation() {

    }

    public Long getAdditionalInfoId() {
        return additionalInfoId;
    }

    public void setAdditionalInfoId(Long additionalInfoId) {
        this.additionalInfoId = additionalInfoId;
    }

    public String getMedications() {
        return medications;
    }

    public void setMedications(String medications) {
        this.medications = medications;
    }

    public String getAllergies() {
        return allergies;
    }

    public void setAllergies(String allergies) {
        this.allergies = allergies;
    }

    public String getChangesInBehavior() {
        return changesInBehavior;
    }

    public void setChangesInBehavior(String changesInBehavior) {
        this.changesInBehavior = changesInBehavior;
    }

    public String getDiet() {
        return diet;
    }

    public void setDiet(String diet) {
        this.diet = diet;
    }

}
