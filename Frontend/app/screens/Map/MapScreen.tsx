import React, { useEffect, useRef, useState } from 'react'
import { View, SafeAreaView, Text, StyleSheet, TouchableOpacity, Dimensions } from 'react-native'
import MapView, { Marker, AnimatedRegion, PROVIDER_GOOGLE } from 'react-native-maps'
import MapViewDirections from 'react-native-maps-directions'
import { GOOGLE_MAPS_APIKEY } from "../shared/Constants"
import { LocationInterface } from '../shared/Interfaces'
import { MapScreenNavigationProp, MapScreenRouteProp } from '../../utils/props'
import { mapStyles, lightMapStyle } from "../shared/Styles"
import { colors } from "../shared/Colors"
import axios from 'axios';
import MaterialIcon from 'react-native-vector-icons/MaterialIcons';

export interface MapScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
    destinationLocation: LocationInterface
}

const originIcon1 = <MaterialIcon name="my-location" size={40} color='#00FFFF' />;
const destinationIcon1 = <MaterialIcon name="location-pin" size={40} color="#d32f2f" />;
const travelIcon = <MaterialIcon name="directions-car" size={24} color="#FFFFFF" />;

const originIcon2 = <MaterialIcon name="my-location" size={25} color="#FFFFFF" />;
const destinationIcon2 = <MaterialIcon name="location-pin" size={25} color="#FFFFFF" />;

function MapScreen(props: { route: MapScreenRouteProp, navigation: MapScreenNavigationProp }) {
    const params: MapScreenParams = props.route.params as MapScreenParams

    const screen = Dimensions.get('window')
    const ASPECT_RATIO = screen.width / screen.height
    const LATITUDE_DELTA = 0.0922
    const LONGITUDE_DELTA = LATITUDE_DELTA * ASPECT_RATIO

    const mapRef = useRef<any>(null)

    const modOrigin = {
        latitude: params.location.latitude,
        longitude: params.location.longitude
    };

    const [state, setState] = useState({
        origin: modOrigin,
        destination: params.destinationLocation,
        time: 0,
        distance: 0,
    })
    const [originAddress, setOriginAddress] = useState('');
    const [destinationAddress, setDestinationAddress] = useState('');


    const { origin, destination, time, distance } = state

    const fetchTime = (d: any, t: any) => {
        setState(state => ({ ...state, distance: d, time: t }))
    }

    const fetchGoogleLocation = async (latitude: number, longitude: number) => {
        try {
            const response = await axios.get(`https://maps.googleapis.com/maps/api/geocode/json?latlng=${latitude},${longitude}&key=${GOOGLE_MAPS_APIKEY}`);
            if (response.data.status === 'OK') {
                let address = response.data.results[0].formatted_address;
                address = address.substring(0, address.lastIndexOf(","));
                return address;
            } else {
                throw new Error('Failed to get location.');
            }
        } catch (error) {
            console.error('Error fetching location from Google:', error);
            return "Location unavailable";
        }
    };

    const adjustMapView = () => {
        mapRef.current?.fitToCoordinates([origin, destination], {
            edgePadding: { top: 50, right: 50, bottom: 50, left: 50 },
            animated: true,
        });
    };

    const focusOnLocation = (location: any) => {
        mapRef.current?.animateToRegion({
            latitude: location.latitude,
            longitude: location.longitude,
            latitudeDelta: 0.01,
            longitudeDelta: 0.01,
        }, 1000);
    };

    useEffect(() => {
        fetchGoogleLocation(origin.latitude, origin.longitude).then(setOriginAddress);
        fetchGoogleLocation(destination.latitude, destination.longitude).then(setDestinationAddress);
    }, [origin, destination]);

    return (
        <View style={{ flex: 1 }}>
            <View style={{ flex: 1 }}>
                <MapView
                    ref={mapRef}
                    style={StyleSheet.absoluteFill}
                    initialRegion={{
                        ...origin,
                        latitudeDelta: LATITUDE_DELTA,
                        longitudeDelta: LONGITUDE_DELTA
                    }}
                    onMapReady={adjustMapView}
                >
                    <Marker
                        coordinate={origin}
                        anchor={{ x: 0.5, y: 0.5 }}
                    >
                        {originIcon1}
                    </Marker>

                    <Marker
                        coordinate={destination}
                        anchor={{ x: 0.5, y: 1 }}
                    >
                        {destinationIcon1}
                    </Marker>

                    <MapViewDirections
                        origin={origin}
                        destination={destination}
                        apikey={GOOGLE_MAPS_APIKEY}
                        strokeColor={colors.blue}
                        strokeWidth={8}
                        optimizeWaypoints={true}
                        onReady={result => {
                            fetchTime(result.distance * 0.621371, result.duration)
                        }}
                        onError={(errorMessage) => {
                            console.log('GMAPS directions error: ' + errorMessage);
                        }}
                    />
                </MapView>
            </View>
            
            {(originAddress && destinationAddress) && (
                <View style={mapStyles.locationHeader}>
                    <View style={mapStyles.locationContainer}>
                        {originIcon2}
                        <Text style={mapStyles.locationText}>{originAddress}</Text>
                    </View>
                    <View style={mapStyles.locationContainer}>
                        {destinationIcon2}
                        <Text style={mapStyles.locationText}>{destinationAddress}</Text>
                    </View>
                </View>
            )}

            {distance !== 0 && time !== 0 && destinationAddress && (
                <View style={mapStyles.footer}>
                    <Text style={mapStyles.footerText}>{time.toFixed(1)} min</Text>
                    <View style={mapStyles.iconStyle}>
                        {travelIcon}
                    </View>
                    <Text style={mapStyles.footerText}>{distance.toFixed(2)} mi</Text>
                </View>
            )}

            <View style={mapStyles.buttonContainer}>
                <TouchableOpacity style={mapStyles.button} onPress={() => focusOnLocation(origin)}>
                    <MaterialIcon name="my-location" size={30} color="#FFFFFF" />
                </TouchableOpacity>
                <TouchableOpacity style={mapStyles.button} onPress={() => focusOnLocation(destination)}>
                    <MaterialIcon name="location-pin" size={30} color="#FFFFFF" />
                </TouchableOpacity>
                <TouchableOpacity style={mapStyles.button} onPress={adjustMapView}>
                    <MaterialIcon name="zoom-out-map" size={30} color="#FFFFFF" />
                </TouchableOpacity>
            </View>
        </View>
    )
};


export default MapScreen
