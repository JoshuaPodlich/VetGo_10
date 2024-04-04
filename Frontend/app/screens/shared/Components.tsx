import React from 'react'
import { styles } from "./Styles"
import { GooglePlacesAutocomplete } from "react-native-google-places-autocomplete"
import { BASE_URL, EMAIL_PUBLIC_KEY, EMAIL_SERVICE_ID, EMAIL_TEMPLATE_ID, GOOGLE_MAPS_APIKEY } from "./Constants"
import { Text, View, Image } from "react-native"
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
    placeholderText: any,
    fetchAddress: any
}
export const GoogleAutoComplete = (props: GoogleAutoCompleteProps) => {

    const onPressAddress = (data: any, details: any) => {
        // console.log("details==>>>>", details)

        let resLength = details.address_components

        let filtersResCity = details.address_components.filter((val: any) => {
            if (val.types.includes('locality') || val.types.includes('sublocality')) {
                return val
            }
            return false
        })

        let dataTextCityObj = filtersResCity.length > 0
            ? filtersResCity[0] :
            details.address_components[
            resLength > 1 ? resLength - 2 : resLength - 1
            ]

        let cityText =
            dataTextCityObj.long_name && dataTextCityObj.long_name.length > 17
                ? dataTextCityObj.short_name
                : dataTextCityObj.long_name

        // console.log("city name", cityText)

        const lat = details.geometry.location.lat
        const lng = details.geometry.location.lng
        const cText = cityText
        props.fetchAddress(lat, lng, cText)
    }

    return (
        <View style={styles.GAC_Container}>
            <GooglePlacesAutocomplete
                placeholder={props.placeholderText}
                onPress={onPressAddress}
                fetchDetails={true}
                query={{
                    key: GOOGLE_MAPS_APIKEY,
                    language: 'en'
                }}
                styles={{
                    textInputContainer: styles.GAC_ContainerStyle,
                }}
            />
        </View>
    )
}

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