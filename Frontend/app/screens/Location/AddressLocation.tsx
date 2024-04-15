import React, { useState, useRef } from 'react';
import { GooglePlacesAutocomplete, GooglePlaceDetail } from 'react-native-google-places-autocomplete';
import { View, TextInput, Button, StyleSheet, SafeAreaView, Text } from 'react-native';
import { ChangeAddressScreenNavigationProp, ChangeAddressScreenRouteProp } from '../../utils/props'
import { GOOGLE_MAPS_APIKEY } from '../shared/Constants'
import MaterialIcons from 'react-native-vector-icons/MaterialIcons';
import {colors} from "../shared/Colors"
import { autoCompleteStyles } from "../shared/Styles"

export interface ChangeAddressScreenParams {
    userId: string,
    userIsVet: boolean,
}

function ChangeAddressScreen(props: { route: ChangeAddressScreenRouteProp, navigation: ChangeAddressScreenNavigationProp }) {
    const params: ChangeAddressScreenParams = props.route.params
    const autocompleteRef = useRef<any>();
    const [addressInput, setAddressInput] = useState('');
    const [locality, setLocality] = useState('');
    const [aptSuite, setAptSuite] = useState('');
    const [adminArea, setAdminArea] = useState('');
    const [postalCode, setPostalCode] = useState('');
    const [country, setCountry] = useState('');

    interface AddressComponents {
        street_number?: string;
        route?: string;
        locality?: string;
        administrative_area_level_1?: string;
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
    
        // Add this to close the autocomplete dropdown
        autocompleteRef.current?.setAddressText(fullAddress);
    };
    
    // Somewhere in your code
    const SHORT_NAME_ADDRESS_COMPONENT_TYPES = new Set(['street_number', 'route', 'locality', 'administrative_area_level_1', 'postal_code', 'country']);

    return (
        <SafeAreaView style={styles.container}>
            <View style={styles.headerRow}>
                <MaterialIcons name="edit-location" size={32}/>
                <Text style={styles.title}>Address Selection</Text>
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
                    textInput: addressInput ? styles.inputFilled : styles.inputEmpty,
                    container: autoCompleteStyles.container,
                    listView: styles.listView,
                    separator: autoCompleteStyles.separator,
                    row: autoCompleteStyles.row,
                    poweredContainer: { display: 'none' },
                }}
            />
            <View style={{paddingTop: 50}}>
                <View style={styles.inlineFields}>
                    <TextInput
                        style={[styles.halfInput, styles.leftInput]}
                        value={adminArea}
                        onChangeText={setAdminArea}
                        placeholder="State/Province"
                    />
                    <TextInput
                        style={[styles.halfInput, styles.rightInput]}
                        value={postalCode}
                        onChangeText={setPostalCode}
                        placeholder="Zip/Postal Code"
                    />
                </View>

                <TextInput
                    style={styles.fullInput}
                    value={locality}
                    onChangeText={setLocality}
                    placeholder="City"
                />

                <TextInput
                    style={styles.fullInput}
                    value={country}
                    onChangeText={setCountry}
                    placeholder="Country"
                />
            </View>
        </SafeAreaView>
    );
}

const styles = StyleSheet.create({
    container: {
        padding: 20,
    },
    headerRow: {
        flexDirection: 'row',
        alignItems: 'center',
        marginBottom: 20,
    },
    title: {
        fontSize: 22,
        fontWeight: 'bold',
    },
    inputEmpty: {
        borderBottomWidth: 1,
        borderBottomColor: '#000000',
        padding: 10,
    },
    inputFilled: {
        borderWidth: 1,
        borderColor: '#000000',
        padding: 10,
    },
    listView: {
        backgroundColor: colors.background,
        marginTop: 44,
        marginLeft: 0,
        marginRight: 0,
        elevation: 0,
        shadowOpacity: 0,
        position: 'absolute',
        zIndex: 1
    },
    inlineFields: {
        flexDirection: 'row',
    },
    halfInput: {
        flex: 1,
        padding: 10,
        borderBottomWidth: 1,
        borderBottomColor: '#000000',
        marginTop: 20,
        fontSize: 16
    },
    leftInput: {
        marginRight: 5,
    },
    rightInput: {
        marginLeft: 5,
    },
    fullInput: {
        borderBottomWidth: 1,
        borderBottomColor: '#000000',
        padding: 10,
        marginTop: 40,
        fontSize: 16
    },
});

export default ChangeAddressScreen;
