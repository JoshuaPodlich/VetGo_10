import { Text, View } from 'react-native'
import { GOOGLE_MAPS_APIKEY } from '../screens/shared/Constants'
import axios from 'axios'
import { useEffect, useState } from 'react'
import { UserDetailsParams } from '../utils/params'
import { ClientHomeScreenNavigationProp, VetHomeScreenNavigationProp } from '../utils/props'
import { LocationInterface } from '../screens/shared/Interfaces'
import { LocationScreenParams } from '../screens/Location/LocationScreen'
import { get } from 'react-native/Libraries/TurboModule/TurboModuleRegistry'

interface LocationDisplayProps {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface
    navigation: ClientHomeScreenNavigationProp
}

export const LocationDisplay: React.FC<LocationDisplayProps> = ({ userId, userIsVet, location, navigation }) => {
    const [locationName, setLocationName] = useState<String>("")

    useEffect(() => {
        getLocationString(location.latitude, location.longitude).then(setLocationName);
    }, [location.latitude, location.longitude]);

    return (
        <View>
            <Text style={{ fontSize: 16, fontWeight: 'bold', flexShrink: 1 }}>{locationName}</Text>
            <Text style={{ fontSize: 13, textDecorationLine: 'underline' }} onPress={() => navigation.navigate('Location', { userId, userIsVet, location })}>
                Tap to change
            </Text>
        </View>
    );
}

export const getLocationString = async (latitude: number, longitude: number): Promise<string> => {
    try {
        const response = await axios.get(
            `https://maps.googleapis.com/maps/api/geocode/json?latlng=${latitude},${longitude}&key=${GOOGLE_MAPS_APIKEY}`
        );
        if (response.data && response.data.results.length > 0) {
            let address = response.data.results[0].formatted_address;
            address = address.substring(0, address.lastIndexOf(","));
            return address;
        } else {
            throw new Error('No results found');
        }
    } catch (error) {
        console.log("Error fetching location string:", error);
        return "Location unavailable";
    }
}