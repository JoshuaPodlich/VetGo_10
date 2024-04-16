import React, { useEffect, useState } from 'react'
import { SafeAreaView, Text, Alert, TouchableOpacity, ActivityIndicator, View } from 'react-native';
import { GoogleAutoComplete } from "../shared/Components"
import { LocationInterface } from '../shared/Interfaces'
import { BASE_URL } from '../shared/Constants'
import {colors} from "../shared/Colors"
import { styles } from "../shared/Styles"
import axios from 'axios'
import * as Location from 'expo-location';
import { GOOGLE_MAPS_APIKEY } from '../shared/Constants'
import Icon from 'react-native-vector-icons/MaterialIcons';
import { useNotification } from '../shared/NotificationContext'

export interface LocationScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface
}

const updateOwnerLocation = async (uid: any, location: LocationInterface): Promise<string> => {
    try {
        const response = await axios.put(`${BASE_URL}/user/update/location/owner/${uid}`, location, {
            headers: {
                'Content-Type': 'application/json',
            }
        });
        return response.data;
    } catch (error: any) {
        if (error.response && error.response.data && error.response.data.message) {
            throw new Error(error.response.data.message);
        } else {
            throw new Error("Failed to update the owner's location due to an unexpected error.");
        }
    }
}

const updateVetLocation = async (uid: any, location: LocationInterface): Promise<string> => {
    try {
        const response = await axios.put(`${BASE_URL}/user/update/location/vet/${uid}`, location, {
            headers: {
                'Content-Type': 'application/json',
            }
        });
        return response.data;
    } catch (error: any) {
        if (error.response && error.response.data && error.response.data.message) {
            throw new Error(error.response.data.message);
        } else {
            throw new Error("Failed to update the vet's location due to an unexpected error.");
        }
    }
}

function LocationScreen(props: any) {
    const { params } = props.route;
    const { setNotification } = useNotification();
    const [isLoading, setIsLoading] = useState(false);
    const [location, setLocation] = useState({
      latitude: params.latitude || 0,
      longitude: params.longitude || 0,
      address: '',
    });
    const [homeAddress, setHomeAddress] = useState({
        latitude: params.latitude || 0,
        longitude: params.longitude || 0,
        address: '',
    });
    // Assume true so the useEffect() does not automatically run, which if it did, it would submit an already-chosen
    // address after going to this screen after setting an address via that search bar.
    const [usingHomeAddress, setUsingHomeAddress] = useState(true);

    useEffect(() => {
        if (location.address && !usingHomeAddress) {
            
            handleSubmit(location);
        }
    }, [location]);

    useEffect(() => {
        const fetchUserHomeAddress = async () => {
            try {
                setIsLoading(true);
                const addressResponse = await axios.get(`${BASE_URL}/user/address-coords/${params.userId}`);
                const homeCoords = addressResponse.data;
                if (homeCoords.latitude && homeCoords.longitude) {
                    const fetchedAddress = await fetchGoogleLocation(homeCoords.latitude, homeCoords.longitude);
                    if (fetchedAddress) {
                        setHomeAddress({
                            latitude: homeCoords.latitude,
                            longitude: homeCoords.longitude,
                            address: fetchedAddress,
                        });
                    }
                }
            } catch (error) {
                console.error('Error fetching home address:', error);
            } finally {
                setIsLoading(false);
            }
        };

        fetchUserHomeAddress();
    }, [params.userId]);
  
    const fetchAddress = (lat: number, lng: number, address: string) => {
        setUsingHomeAddress(false);
        setLocation({ latitude: lat, longitude: lng, address });
    };

    const useHomeAddress = () => {
        if (homeAddress) {            
            handleSubmit(homeAddress);
        }
    };

    const fetchGoogleLocation = async (latitude: number, longitude: number) => {
        try {
            const response = await axios.get(`https://maps.googleapis.com/maps/api/geocode/json?latlng=${latitude},${longitude}&key=${GOOGLE_MAPS_APIKEY}`);
            if (response.data.status === 'OK') {
                return response.data.results[0].formatted_address;
            } else {
                throw new Error('Failed to get location');
            }
        } catch (error) {
            console.error('Error fetching location from Google:', error);
            return "";
        }
    };

    // Must use Expo's location API due to Expo managed workflow.
    async function getCurrentLocation() {
        let { status } = await Location.requestForegroundPermissionsAsync();
        if (status !== 'granted') {
            console.error('Permission to access location was denied.');
            return;
        }
    
        try {
            setIsLoading(true);
            let location = await Location.getCurrentPositionAsync({});
            const address = await fetchGoogleLocation(location.coords.latitude, location.coords.longitude);
            fetchAddress(location.coords.latitude, location.coords.longitude, address);
        } finally {
            setIsLoading(false);
        }
    }

    const handleInfoPress = () => {
        Alert.alert("Information", "Set your preferred location from which you plan on traveling to a pet owner's residence, such as your office.");
    };
    
  
    const handleSubmit = async (locationInfo: any) => {
        if (!location.address && !homeAddress.address) {
            return;
        }

        try {
            setIsLoading(true);
            if (params.userIsVet) {
                await updateVetLocation(params.userId, locationInfo);
            } else {
                await updateOwnerLocation(params.userId, locationInfo);
            }

            props.navigation.navigate("Home", {
                userId: params.userId,
                userIsVet: params.userIsVet,
                location: locationInfo
            });
            setNotification({ header: 'Location Update', message: 'Your location has been successfully updated.', type: 'success' });
        } catch (error) {
            console.error('Error updating location:', error);
        } finally {
            setIsLoading(false);
        }
    };

    return (
        <>
            {params.userIsVet ? (
                <SafeAreaView style={{ flex: 1, padding: 20}}> 
                    <View style={{ flexDirection: 'row', justifyContent: 'center', alignItems: 'center' }}>
                        <Text style={{ fontSize: 20, fontWeight: 'bold', marginBottom: 10, marginTop: 5 }}>
                            Set Office Address
                        </Text>
                        <Icon name="info-outline" size={24} color="#000" onPress={handleInfoPress} style={{marginLeft: 4}} />
                    </View>
                    <GoogleAutoComplete
                         
                        placeholderText="Enter office address" 
                        fetchAddress={fetchAddress} 
                    />
                    <TouchableOpacity onPress={getCurrentLocation} style={{padding: 10, backgroundColor: colors.black }}>
                        <Text style={{ color: colors.white, textAlign: 'center', fontFamily:"Roboto", fontSize: 16, fontWeight: '700' }}>Use Current Location</Text>
                    </TouchableOpacity>
                </SafeAreaView>
            ) : (
                <SafeAreaView style={{ flex: 1, padding: 20}}> 
                    <Text style={{ fontSize: 20, fontWeight: 'bold', marginBottom: 10, marginTop: 5, textAlign: 'center' }}>
                        Set Appointment Address
                    </Text>
                    <GoogleAutoComplete 
                        placeholderText="Enter appointment address" 
                        fetchAddress={fetchAddress} 
                    />
                    {homeAddress.address ? (
                        <TouchableOpacity onPress={useHomeAddress} disabled={isLoading} style={{padding: 10, backgroundColor: colors.black }}>
                            <Text style={{ color: colors.white, textAlign: 'center', fontFamily: "Roboto", fontSize: 16, fontWeight: '700' }}>
                                Use Home Address
                            </Text>
                        </TouchableOpacity>
                    ) : null}
                </SafeAreaView>
            )}
            {isLoading && (
                <View style={styles.loadingOverlay}>
                    <ActivityIndicator size="large" color={colors.action_Orange} />
                </View>
            )}
        </>
    );    
}

export default LocationScreen
