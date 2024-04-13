import React, { useEffect, useState } from 'react'
import { SafeAreaView, View, Text, StyleSheet } from 'react-native';
import { Input, Button } from "@ui-kitten/components"
import { GoogleAutoComplete } from "../shared/Components"
import { locationStyles } from "./LocationStyles"
import { LocationInterface } from '../shared/Interfaces'
import { HomeScreenParams } from '../Home/HomeScreen'
import { BASE_URL } from '../shared/Constants'
import {colors} from "../shared/Colors"
import axios from 'axios'

export interface LocationScreenParams {
    userId: string,
    userIsVet: boolean,
    latitude: number,
    longitude: number
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
    const [location, setLocation] = useState({
      latitude: params.latitude || 0,
      longitude: params.longitude || 0,
      address: '',
    });
    const [error, setError] = useState('');

    useEffect(() => {
        if (location.address) { // Ensure address is not empty
            handleSubmit();
        }
    }, [location]);
  
    const fetchAddress = (lat: number, lng: number, address: string) => {
      setLocation({ latitude: lat, longitude: lng, address });
    };
  
    const handleSubmit = async () => {
      if (!location.address) {
        setError('Location is required.');
        return;
      }
      console.log(location);
      try {
        if (params.userIsVet) {
          await updateVetLocation(params.userId, location);
        } else {
          await updateOwnerLocation(params.userId, location);
        }
        props.navigation.navigate("Home", {
          userId: params.userId,
          userIsVet: params.userIsVet,
          location: location,
        });
      } catch (err) {
        console.error(err);
        setError('Error updating location. Please try again.');
      }
    };

    return (
        <SafeAreaView style={{ flex: 1, padding: 20}}> 
          <Text style={{ fontSize: 20, fontWeight: 'bold', marginBottom: 10, marginTop: 5, textAlign: 'center' }}>
            Set Appointment Address
          </Text>
          <GoogleAutoComplete 
            placeholderText="Enter appointment address" 
            fetchAddress={fetchAddress} 
          />
        </SafeAreaView>
    );
}

export default LocationScreen





// function LocationScreen(props: { route: LocationScreenRouteProp, navigation: LocationScreenNavigationProp }) {

//     // hydrate the params
//     let params: LocationScreenParams = props.route.params as LocationScreenParams

//     const [errors, setError] = useState<any>({})
//     const [destinationCoords, setDestinationCoords] = useState<LocationInterface>({
//         latitude: params.latitude,
//         longitude: params.longitude,
//     })

//     useEffect(() => {
//         getLocationByUserId(params.userId).then((location) => {
//             // if location is already specified, fetch coords and navigate to home
//             if (location.latitude && location.longitude) {
//                 let homeScreenParams: HomeScreenParams = {
//                     userId: params.userId,
//                     userIsVet: params.userIsVet,
//                     location: { latitude: location.latitude, longitude: location.longitude } as LocationInterface,
//                 }

//                 props.navigation.navigate("Home", homeScreenParams)
//             }
//         }).catch((error) => {
//             console.log(error.message)
//         })

//     }, [])



//     const fetchDestinationCoords = (latitude: number, longitude: number) => {
//         setDestinationCoords({
//             latitude,
//             longitude
//         })
//     }

//     const handleSubmit = async () => {
//         if (destinationCoords.latitude === 0 && destinationCoords.longitude === 0) {
//             setError({ location: "Location is required" })
//             return
//         }

//         // api call to update location
//         setLocationCoordinates(params.userId, destinationCoords)

//         let homeScreenParams: HomeScreenParams = {
//             userId: params.userId,
//             userIsVet: params.userIsVet,
//             location: destinationCoords as LocationInterface,
//         }

//         props.navigation.navigate("Home", homeScreenParams)

//     }

//     return (
//         <SafeAreaView style={locationStyles.background}>
//             <View style={locationStyles.container}>
//                 <Text style={locationStyles.titleText}>Location</Text>

//                 <View style={{ minWidth: "100%", height: 300 }}>
//                     <Text style={locationStyles.titleText}>If you would like to change location, enter here</Text>
//                     <GoogleAutoComplete
//                         placeholderText="Enter Destination Location"
//                         fetchAddress={fetchDestinationCoords}
//                     />
//                     <Text style={locationStyles.errorText}>{errors.location}</Text>
//                 </View>


//                 <Button style={locationStyles.submitButton} onPress={handleSubmit}>
//                     <Text> Submit </Text>
//                 </Button>
//             </View>
//         </SafeAreaView>
//     )
// }

// export default LocationScreen

// export const getLocationByUserId = async (userId: string): Promise<LocationInterface> => {
//     const response = await axios.get(`${BASE_URL}/api/user/id/${userId}`)
//     const latitude = response.data.latitude
//     const longitude = response.data.longitude

//     return {
//         latitude, longitude
//     }
// }

// export const setLocationCoordinates = async (userId: string, location: LocationInterface) => {
//     const response = axios.put(`${BASE_URL}/api/user/update/location/${userId}`, location).then((response) =>
//         console.log(response.data)).catch((error: any) => console.log(error))
// }
