package Spring20232.VetGo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.util.Objects;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "address")
public class Address extends BaseEntity {
    private String street;
    private String aptSuite;
    private String city;
    private String state;
    private String zip;
    private String country;
    private Double longitude;
    private Double latitude;
}
