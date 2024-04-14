import React, { useRef, useState } from 'react'
import { styles, autoCompleteStyles } from "./Styles"
import { GooglePlacesAutocomplete } from "react-native-google-places-autocomplete"
import { BASE_URL, EMAIL_PUBLIC_KEY, EMAIL_SERVICE_ID, EMAIL_TEMPLATE_ID, GOOGLE_MAPS_APIKEY } from "./Constants"
import { Text, View, Image, TouchableOpacity } from "react-native"
import {colors} from "./Colors"
import MaterialIcons from 'react-native-vector-icons/MaterialIcons';
import emailjs from "@emailjs/browser"

export const Logo = () => {
    return (
        <View>
            {/* <Text style={{ fontSize: 30, fontWeight: "bold" }}>
                VetGo
            </Text>
            <Text numberOfLines={1}>--UNDER DEVELOPMENT--</Text> */}
            <Image source={require('../ScreenImages/transparent_vetgo.png')} style={styles.logoImage} />
        </View>
    )
}

interface GoogleAutoCompleteProps {
    placeholderText: string;
    fetchAddress: (lat: number, lng: number, address: string) => void;
}

export const GoogleAutoComplete = (props: GoogleAutoCompleteProps) => {
    const autoCompleteInputRef = useRef<any>(null);

    const clearInputField = () => {
        //setInputValue('');
        if (autoCompleteInputRef.current) {
            const textInput = autoCompleteInputRef.current?.getAddressText(); // Retrieve the current text from the autocomplete input.
            // Even if there are internal mechanisms or caches that hold onto the displayed text, this text is explicitly cleared.
            // Note: The optional chaining operator (?.) prevents errors in case the method does not exist.
            autoCompleteInputRef.current?.setAddressText(''); 
        }
    };

    const onPressAddress = (data: any, details: any | null) => {
        if (details) {
            // Filter address components for street-level details.
            const streetLevelComponents = details.address_components.filter((component: any) => {
                return component.types.includes('street_number') || component.types.includes('route');
            });

            // Concatenate the street number and route to form a full street address.
            const address = streetLevelComponents.map((component: any) => component.long_name).join(' ');

            const lat = details.geometry.location.lat;
            const lng = details.geometry.location.lng;

            // Pass the complete address and coordinates to the fetchAddress prop.
            props.fetchAddress(lat, lng, address);
        }
    };

    const renderRow = (data: any) => (
        <View style={autoCompleteStyles.row}>
        <MaterialIcons name="place" size={25} color={colors.black} style={autoCompleteStyles.icon} />
          <View>
            <Text style={autoCompleteStyles.placeName}>{data.structured_formatting.main_text}</Text>
            <Text style={autoCompleteStyles.placeAddress}>{data.structured_formatting.secondary_text}</Text>
          </View>
        </View>
    );

    const renderRightButton = () => (
        autoCompleteInputRef.current?.getAddressText() ? (
            <TouchableOpacity onPress={clearInputField} style={autoCompleteStyles.clearButton}>
                <MaterialIcons name="clear" size={20} color={colors.black} />
            </TouchableOpacity>
        ) : <></>
    );
    
    return (
        <GooglePlacesAutocomplete
            ref={autoCompleteInputRef}
            placeholder={props.placeholderText}
            onPress={onPressAddress}
            fetchDetails={true}
            styles={{
                container: autoCompleteStyles.container,
                textInput: autoCompleteStyles.textInput,
                listView: autoCompleteStyles.listView,
                separator: autoCompleteStyles.separator,
                row: autoCompleteStyles.row,
                poweredContainer: { display: 'none' },
            }}
            textInputProps={{selectionColor: '#000000'}}
            renderRow={renderRow}
            query={{
                key: GOOGLE_MAPS_APIKEY,
                language: 'en',
                types: 'address',
            }}
            renderRightButton={renderRightButton}
        />
    );
};

interface sendEmailProps {
    toName: any,
    toEmail: any,
    subject: any,
    message: any
}
export async function sendEmail(props: sendEmailProps) {
    let templateParams = {
        to_name: props.toName,
        to_email: props.toEmail,
        subject: props.subject,
        message: props.message
    };

    emailjs.send(EMAIL_SERVICE_ID, EMAIL_TEMPLATE_ID, templateParams, EMAIL_PUBLIC_KEY).then(
        function (response) {
            console.log('SUCCESS!', response.status, response.text)
        },
        function (error) {
            console.log('FAILED!', error)
        }
    )
}