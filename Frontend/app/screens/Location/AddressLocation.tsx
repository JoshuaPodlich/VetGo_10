import React, { useState, useRef, useEffect } from 'react';
import { GooglePlacesAutocomplete, GooglePlaceDetail } from 'react-native-google-places-autocomplete';
import { View, TextInput, TouchableOpacity, StyleSheet, SafeAreaView, Text } from 'react-native';
import { ChangeAddressScreenNavigationProp, ChangeAddressScreenRouteProp } from '../../utils/props'
import { GOOGLE_MAPS_APIKEY, BASE_URL } from '../shared/Constants'
import MaterialIcons from 'react-native-vector-icons/MaterialIcons';
import {colors} from "../shared/Colors"
import { autoCompleteStyles, toastConfig, addressStyles } from "../shared/Styles"
import axios from 'axios';
import { useNotification } from '../shared/NotificationContext'
import Toast from 'react-native-toast-message';

export interface ChangeAddressScreenParams {
    userId: string,
    userIsVet: boolean,
}

function ChangeAddressScreen(props: { route: ChangeAddressScreenRouteProp, navigation: ChangeAddressScreenNavigationProp }) {
    const params: ChangeAddressScreenParams = props.route.params
    const { notification, setNotification } = useNotification();
    const autocompleteRef = useRef<any>();
    const [addressInput, setAddressInput] = useState('');
    const [locality, setLocality] = useState('');
    const [aptSuite, setAptSuite] = useState('');
    const [adminArea, setAdminArea] = useState('');
    const [postalCode, setPostalCode] = useState('');
    const [country, setCountry] = useState('');
    const [longitude, setLongitude] = useState(0);
    const [latitude, setLatitude] = useState(0);
    useEffect(() => {
        if (notification.message) {
            Toast.show({
                type: notification.type,
                text1: notification.header,
                text2: notification.message,
                position: 'bottom',
                visibilityTime: 4000,
            });
            setNotification({ header: '', message: '', type: '' });
        }
    }, [notification]);

    interface AddressComponents {
        street_number?: string;
        route?: string;
        locality?: string;  // City
        administrative_area_level_1?: string;   // State/Province
        postal_code?: string;
        country?: string;
    }
    
    const handleSelect = (data: any, details: GooglePlaceDetail | null) => {
        if (!details || !details.address_components) {
            console.error("No details are available for the selected place.");
            return;
        }
    
        let address: AddressComponents = {};
    
        details.address_components.forEach((component: any) => {
            const componentType = component.types[0];
            if (SHORT_NAME_ADDRESS_COMPONENT_TYPES.has(componentType)) {
                address[componentType as keyof AddressComponents] = component.short_name;
            } else {
                address[componentType as keyof AddressComponents] = component.long_name;
            }
        });
    
        const fullAddress = `${address.street_number || ''} ${address.route || ''}`.trim();
        setAddressInput(fullAddress); // This is now only to update your local state, not the input value directly
        setLocality(address.locality || '');
        setAdminArea(address.administrative_area_level_1 || '');
        setPostalCode(address.postal_code || '');
        setCountry(address.country || '');
        setLongitude(details.geometry.location.lng);
        setLatitude( details.geometry.location.lat);
    
        autocompleteRef.current?.setAddressText(fullAddress);
    };

    const handleSave = async () => {
        if (!addressInput || addressInput == '') {
            setNotification({ header: 'Address Error', message: 'The address field must not be empty.', type: 'error' });
            return;
        }

        const addressPayload = {
            userId: params.userId,
            street: addressInput,
            suite: aptSuite,
            city: locality,
            state: adminArea,
            zip: postalCode,
            country: country,
            longitude: longitude,
            latitude: latitude
        };
    
        try {
            const response = await axios.put(`${BASE_URL}/user/update-address/${params.userId}`, addressPayload, {
                headers: {
                    'Content-Type': 'application/json',
                }
            });

            props.navigation.goBack();
            setNotification({ header: 'Address Update', message: 'Your address has been successfully updated.', type: 'success' });

        } catch (error) {
            //console.error('There was an error saving the address: ', error);
            props.navigation.goBack();
            setNotification({ header: 'Address Error', message: 'Your address could not be updated.', type: 'error' });
        }
    };
    
    const SHORT_NAME_ADDRESS_COMPONENT_TYPES = new Set(['street_number', 'route', 'locality', 'administrative_area_level_1', 'postal_code', 'country']);

    return (
        <SafeAreaView style={addressStyles.container}>
            <View style={addressStyles.headerRow}>
                <MaterialIcons name="edit-location" size={32}/>
                <Text style={addressStyles.title}>Address Selection</Text>
            </View>
            
            <GooglePlacesAutocomplete
                ref={autocompleteRef}
                placeholder='Address'
                fetchDetails={true}
                onPress={handleSelect}
                query={{
                    key: GOOGLE_MAPS_APIKEY,
                    language: 'en',
                    types: 'address',
                }}
                styles={{
                    textInput: addressInput ? addressStyles.inputFilled : addressStyles.inputEmpty,
                    container: autoCompleteStyles.container,
                    listView: addressStyles.listView,
                    separator: autoCompleteStyles.separator,
                    row: autoCompleteStyles.row,
                    poweredContainer: { display: 'none' },
                }}
            />
            <View style={{paddingTop: 50}}>
                <TextInput
                    style={addressStyles.fullInput}
                    value={aptSuite}
                    onChangeText={setAptSuite}
                    placeholder="Apt, Suite, etc. (optional)"
                />

                <TextInput
                    style={addressStyles.fullInput}
                    value={locality}
                    onChangeText={setLocality}
                    placeholder="City"
                />

                <View style={addressStyles.inlineFields}>
                    <TextInput
                        style={[addressStyles.halfInput, addressStyles.leftInput]}
                        value={adminArea}
                        onChangeText={setAdminArea}
                        placeholder="State/Province"
                    />
                    <TextInput
                        style={[addressStyles.halfInput, addressStyles.rightInput]}
                        value={postalCode}
                        onChangeText={setPostalCode}
                        placeholder="Zip/Postal Code"
                    />
                </View>

                <TextInput
                    style={addressStyles.fullInput}
                    value={country}
                    onChangeText={setCountry}
                    placeholder="Country"
                />
            </View>
            <View style={{alignItems:'center'}}>
                <TouchableOpacity
                        onPress={handleSave}
                        style={addressStyles.button}
                    >
                        <Text style={addressStyles.buttonText}>Save</Text>
                </TouchableOpacity>
            </View>
            <View style={{zIndex: 1000, marginTop: 220}}>
                <Toast config={toastConfig}/>
            </View>
        </SafeAreaView>
    );
}

export default ChangeAddressScreen;
