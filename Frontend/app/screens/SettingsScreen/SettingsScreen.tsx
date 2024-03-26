import React from 'react'
import { SafeAreaView, StyleSheet, Text, View, TouchableHighlight, ScrollView } from "react-native"
import { styles } from "../shared/Styles"
import { colors } from "../shared/Colors"
import ClientNavbar from '../../components/ClientNavbar'
import { LocationInterface } from '../shared/Interfaces'
import { VetAddChargesScreenParams } from '../VetAddCharges/VetAddChargesScreen'
import { ChangePasswordScreenParams } from '../ChangePassword/ChangePasswordScreen'
// import {UserInfoScreenParams} from '../UserInfo/UserInfoScreen'


export interface SettingsScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface
}
function SettingsScreen(props: any) {
    const params = props.route.params as SettingsScreenParams

    function logout() {
        props.navigation.navigate("Welcome")
    }

    return (
        <SafeAreaView style={{ ...styles.background, justifyContent: "space-evenly" }}>
            <ScrollView>

            <View style={styles.buttonGroup}>
                <TouchableHighlight style={{ ...styles.mainButton }}
                    underlayColor={colors.black_underlay}
                    onPress={() => props.navigation.navigate("PaymentStripe")}
                >
                    <Text style={styles.buttonText}> Payment Stripe </Text>
                </TouchableHighlight>

                <TouchableHighlight style={{ ...styles.mainButton }}
                    underlayColor={colors.black_underlay}
                    onPress={() => props.navigation.navigate("VetAddCharges", { ...params } as VetAddChargesScreenParams)}
                >
                    <Text style={styles.buttonText}> VetAddCharges Test </Text>
                </TouchableHighlight>

                <TouchableHighlight style={{ ...styles.mainButton}}
                    underlayColor={colors.black_underlay}
                    onPress={() => props.navigation.navigate("ChangePassword", { ...params } as ChangePasswordScreenParams)}
                >
                    <Text style={styles.buttonText}> Change Password </Text>
                </TouchableHighlight>

                <TouchableHighlight style={{ ...styles.mainButton, marginBottom: 100}}
                    underlayColor={colors.brightRed_underlayColor}
                    onPress={() => props.navigation.navigate("UserInfo")}
                    >
                    <Text style={styles.buttonText}> User Info </Text>
                </TouchableHighlight>

                <TouchableHighlight style={{ ...styles.secondaryButton }}
                    underlayColor={colors.black_underlay}
                    onPress={logout}>
                    <Text style={styles.buttonText}> Log Out </Text>
                </TouchableHighlight>
            </View>
            </ScrollView>
            <ClientNavbar navigation={props.navigation} {...params} />
        </SafeAreaView>
        
    )
}

export default SettingsScreen