package Spring20232.VetGo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
public class AuthMessage {
    private String headers;
    private String content;
    private Date timestamp;
}
