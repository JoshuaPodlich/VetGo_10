package Spring20232.VetGo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "owners")
public class Owner extends User {
    private Double longitude;
    private Double latitude;
    @OneToMany(mappedBy = "owner", cascade = CascadeType.ALL)
    private List<Pet> petList = new ArrayList<Pet>();

    public Owner() {
    }

    public Owner(String email, String password, String firstName, String lastName, String telephone,
                 Address address, List<Pet> petList, Double latitude, Double longitude) {
        super(email, password, firstName, lastName, telephone, address);
        this.petList = petList;
        this.longitude = longitude;
        this.latitude = latitude;
    }

    public List<Pet> getPetList() {
        return petList;
    }

    public void setPetList(List<Pet> petList) {
        this.petList = petList;
    }

    public void addPetList(Pet pet) {
        this.petList.add(pet);
    }

    public Double getLongitude() { return longitude; }

    public void setLongitude(Double longitude) { this.longitude = longitude; }

    public Double getLatitude() { return latitude; }

    public void setLatitude(Double latitude) { this.latitude = latitude; }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Owner owner = (Owner) o;
        return Objects.equals(petList, owner.petList);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), petList, longitude, latitude);
    }
}
