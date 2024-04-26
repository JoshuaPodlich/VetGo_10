package Spring20232.VetGo.service;

import Spring20232.VetGo.model.Owner;
import Spring20232.VetGo.model.Vet;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class VetFinder {
    private static final double EARTH_RADIUS_MILES = 3958.8; // Earth's radius in miles

    public static List<VetDistancePair> findNearbyVetsForOwner(ArrayList<Vet> vets, Owner user, double maxDistanceMiles) {
        List<VetDistancePair> nearbyVets = new ArrayList<>();

        for (Vet vet : vets) {
            // Skip vets with latitude and longitude both set to 0 or if either is null.
            if ((vet.getLatitude() == 0 && vet.getLongitude() == 0) ||
                vet.getLatitude() == null ||  vet.getLongitude() == null) {
                continue;
            }
            double distance = haversineDistance(user.getLatitude(), user.getLongitude(), vet.getLatitude(), vet.getLongitude());
            if (distance <= maxDistanceMiles) {
                nearbyVets.add(new VetDistancePair(vet, distance));
            }
        }
        return nearbyVets;
    }

    public static List<VetDistancePair> findNearbyVetsForVet(ArrayList<Vet> vets, Vet user, double maxDistanceMiles) {
        List<VetDistancePair> nearbyVets = new ArrayList<>();

        for (Vet vet : vets) {
            // Skip vets with latitude and longitude both set to 0 or if either is null.
            // Skip to not return the same vet that is requesting to find nearby vets.
            if ((vet.getLatitude() == 0 && vet.getLongitude() == 0) ||
                    vet.getLatitude() == null ||  vet.getLongitude() == null ||
                    Objects.equals(vet.getId(), user.getId())) {
                continue;
            }
            double distance = haversineDistance(user.getLatitude(), user.getLongitude(), vet.getLatitude(), vet.getLongitude());
            if (distance <= maxDistanceMiles) {
                nearbyVets.add(new VetDistancePair(vet, distance));
            }
        }
        return nearbyVets;
    }

    // Follows the Haversine formula most closely from:
    // https://community.esri.com/t5/coordinate-reference-systems-blog/distance-on-a-sphere-the-haversine-formula/ba-p/902128#:~:text=For%20example%2C%20haversine(θ),longitude%20of%20the%20two%20points.
    private static double haversineDistance(double lat1, double lon1, double lat2, double lon2) {
        double latDistance = Math.toRadians(lat2 - lat1);
        double lonDistance = Math.toRadians(lon2 - lon1);
        double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
                + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
                * Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);
        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        return EARTH_RADIUS_MILES * c;
    }

    public record VetDistancePair(Vet vet, double distance) {

        @Override
        public String toString() {
            return "Vet: " + vet.getId() + ", Distance: " + distance + " miles";
        }
    }
}