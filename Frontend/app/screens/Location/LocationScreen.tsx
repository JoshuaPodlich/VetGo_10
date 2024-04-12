import React, { useEffect, useState } from 'react'
import {
    SafeAreaView,
    ScrollView,
    StyleSheet,
    Text,
    View,
    Pressable,
    Alert,
    TouchableHighlight,
    TextInput
} from "react-native"
import { Input, Button } from "@ui-kitten/components"
import * as Location from 'expo-location'
import { GoogleAutoComplete } from "../shared/Components"
// import { useStateContext } from '../../utils/stateContext'
import { UserDetailsParams, UserDetails_Location, UserDetails_User } from '../../utils/params'
import { LocationScreenNavigationProp, LocationScreenRouteProp } from '../../utils/props'
import { locationStyles } from "./LocationStyles"
import { LocationInterface } from '../shared/Interfaces'
import { HomeScreenParams } from '../Home/HomeScreen'
import { BASE_URL } from '../shared/Constants'
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


function LocationScreen(props: { route: { params: LocationScreenParams }, navigation: any }) {
    const { params } = props.route;
    const [errors, setError] = useState<any>({})
    const [destinationCoords, setDestinationCoords] = useState<LocationInterface>({
        latitude: params.latitude || 0,
        longitude: params.longitude || 0,
    })
    console.log("LocationScreen -> destinationCoords", destinationCoords)
    console.log("LocationScreen -> params", params)
    let locationMissing = "";
    let locationFound = true;
    // destinationCoords.latitude = 42.032974;
    // destinationCoords.longitude = -93.581543;
    // useEffect(() => {
    //     if (params.latitude === undefined || params.longitude === undefined) {
    //         console.warn("No location saved for the user. Location is required to be sent; it may be null.")
    //     }
    // }, [])



    const fetchDestinationCoords = (latitude: number, longitude: number) => {
        setDestinationCoords({ latitude, longitude })
    }
    if (destinationCoords.latitude === undefined || destinationCoords.longitude === undefined) {
        console.log("No location saved for the user. Location is required to be sent; it may be null.")
        locationMissing = "Location not found. Please enter a location to continue."
        locationFound = false;
    }
    else {
        console.log("Location found for the user.")
        locationMissing = ""
        locationFound = true;
    }

    const handleSubmit = () => {
        if (destinationCoords.latitude === 0 && destinationCoords.longitude === 0) {
            setError({ location: "Location is required." })
            return
        }

        let location: LocationInterface = { latitude: destinationCoords.latitude, 
                                            longitude: destinationCoords.longitude };

        if (params.userIsVet) {
            updateVetLocation(params.userId, location)
            .then(message => console.log(message))
            .catch(err => console.error(err));
        }
        else {                                    
            updateOwnerLocation(params.userId, location)
            .then(message => console.log(message))
            .catch(err => console.error(err));
        }

        const homeScreenParams: HomeScreenParams = {
            userId: params.userId,
            userIsVet: params.userIsVet,
            location: destinationCoords
        }

        props.navigation.navigate("Home", homeScreenParams)
    }

    return (
        <SafeAreaView style={locationStyles.background}>
            <View style={locationStyles.container}>
                <Text style={locationStyles.titleText}>Location</Text>
                <View style={{ minWidth: "100%", height: 300 }}>
                    <Text style={locationStyles.titleText}>If you would like to change location, enter here</Text>
                    <GoogleAutoComplete
                        placeholderText="Enter Destination Location"
                        fetchAddress={fetchDestinationCoords}
                    />
                    <Text style={locationStyles.errorText}>{errors.location}</Text>
                </View>
                {/* if locationMissing is true display error message in red */}
                <Text style={locationStyles.errorText}>{locationMissing}</Text>
                
                <Button style={locationFound ? locationStyles.submitButton : locationStyles.submitButtonDisabled} onPress={handleSubmit} disabled={!locationFound}>
                    <Text style={locationFound ? locationStyles.submitButtonText : locationStyles.submitButtonTextDisabled}>Submit</Text>
                </Button>
            </View>
        </SafeAreaView>
    )
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
