import java.util.Base64;

public class Utils {

    public static void main(String args[]) {
        String username = "user";
        String password = "password";
        String creds = username + ":" + password;

        String encodedCreds = Base64.getEncoder().encodeToString(creds.getBytes());

        System.out.println(encodedCreds);
    }
}
