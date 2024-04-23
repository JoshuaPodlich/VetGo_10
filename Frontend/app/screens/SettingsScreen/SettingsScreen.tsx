import React, {useEffect} from 'react'
import { SafeAreaView, StyleSheet, Text, View, TouchableHighlight, ScrollView } from "react-native"
import { styles, toastConfig } from "../shared/Styles"
import { colors } from "../shared/Colors"
import ClientNavbar from '../../components/ClientNavbar'
import { LocationInterface } from '../shared/Interfaces'
import { VetAddChargesScreenParams } from '../VetAddCharges/VetAddChargesScreen'
import { ChangePasswordScreenParams } from '../ChangePassword/ChangePasswordScreen'
import {UserInfoScreenParams} from '../UserInfo/UserInfoScreen'
import { ChangeAddressScreenParams } from '../Location/AddressLocation'
import { useNotification } from '../shared/NotificationContext'
import Toast from 'react-native-toast-message';
import { useAuth } from '../shared/AuthContext';


export interface SettingsScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
}
function SettingsScreen(props: any) {
    const params = props.route.params as SettingsScreenParams
    const { notification, setNotification } = useNotification();
    const { isAuthenticated, setIsAuthenticated } = useAuth();
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

    function logout() {
        // Remove authentication such that the user no longer sees (or can utilize) the Tabs for navigation.
        setIsAuthenticated(false);
        props.navigation.navigate("Welcome")
    }

    function vetLoginNavigate() {
        let vetRegisterInfo: vetRegisterInfo = {
            userId: params.userId,
            userIsVet: params.userIsVet
        }
        console.log(vetRegisterInfo)
        props.navigation.navigate("VetLogin", vetRegisterInfo)

        
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

                <TouchableHighlight style={{ ...styles.mainButton}}
                    underlayColor={colors.brightRed_underlayColor}
                    onPress={() => props.navigation.navigate("UserInfo", { ...params } as UserInfoScreenParams)}
                    >
                    <Text style={styles.buttonText}> User Info </Text>
                </TouchableHighlight>

                <TouchableHighlight style={{ ...styles.mainButton, marginBottom: 100}}
                    underlayColor={colors.brightRed_underlayColor}
                    onPress={() => props.navigation.navigate("ChangeAddress", { ...params } as ChangeAddressScreenParams)}
                    >
                    <Text style={styles.buttonText}> Change Address </Text>
                </TouchableHighlight>

                <TouchableHighlight style={{ ...styles.secondaryButton }}
                    underlayColor={colors.black_underlay}
                    onPress={() => vetLoginNavigate()}>                
                    <Text style={styles.buttonText}> Vet Login </Text>
                </TouchableHighlight>

                <TouchableHighlight style={{ ...styles.secondaryButton }}
                    underlayColor={colors.black_underlay}
                    onPress={logout}>
                    <Text style={styles.buttonText}> Log Out </Text>
                </TouchableHighlight>
            </View>
            </ScrollView>
            <ClientNavbar navigation={props.navigation} {...params} />
            <View style={{zIndex: 1000}}>
                <Toast config={toastConfig}/>
            </View>
        </SafeAreaView>
        
    )
}

export default SettingsScreen