import React, { useEffect, useState, useRef } from 'react'
import { SafeAreaView, ScrollView, StyleSheet, Text, View, Pressable, Alert, TouchableHighlight, TouchableOpacity } from "react-native"
import { Logo } from "../shared/Components"
import { Input } from "@ui-kitten/components"
import { useFocusEffect } from "@react-navigation/native"
import { colors } from "../shared/Colors"
import { styles } from "../shared/Styles"
import { BASE_URL } from "../shared/Constants"
import EntryButtons from "../../components/EntryButtons"
import { LocationScreenParams } from '../Location/LocationScreen'
import { LoginScreenNavigationProp, LoginScreenRouteProp } from '../../utils/props'

export interface LoginScreenParams {

}
function LoginScreen(props: { navigation: LoginScreenNavigationProp, route: LoginScreenRouteProp }) {

    // hydrate the params
    let params = props.route.params as LoginScreenParams

    //region States
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')

    const [emailError, setEmailError] = useState<string>("")
    const [passwordError, setPasswordError] = useState<string>("")

    const isSubmittingRef = useRef(false)
    //endregion

    //region Handlers
    const handleSubmit = async () => {
        if (isSubmittingRef.current)
            return

        let isValid = validateCredentials()
        if (isValid) {
            submitLogin()
        } else {
        }
    }

    //endregion

    //region Functions
    // For clearing fields when user switch between apps
    useFocusEffect(
        React.useCallback(() => {
            return () => {
                setEmail("")
                setPassword("")
                setEmailError("")
                setPasswordError("")
                isSubmittingRef.current = false
            }
        }, [])
    )

    function validateCredentials() {
        let isValid = true
        if (!email) {
            setEmailError("Email is required!")
            isValid = false
        }
        if (!password) {
            setPasswordError("Password is required!")
            isValid = false
        }
        return isValid
    }


    //TODO: change the url 
    //TODO: change the response
    //TODO: change the navigation
    //TODO: change the error message
    async function submitLogin() {
                 let body = {"email": email, "password": password};

    
        try {
            console.log('Submitting login request...');
            
         let url = BASE_URL + "/user/login";
    console.log('URL:', url);
    
            //const body = { emailJson, passwordJson };
            console.log('Request body:', body);
    

            const response = await fetch(url, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(body)
            });
    
          
console.log('Response status:', response.status);
console.log('Response status text:', response.statusText);

const responseBody = await response.json(); // Parse the response body into JSON
console.log('Response Body:', responseBody);
console.log('LOGIN SUCCESSFUL LETS GO'); 

let params = {
    userId: responseBody.id,
    userIsVet: responseBody.user.userVet ? true : false
};
console.log('params:', params);
props.navigation.navigate("Location", params);




            
            
        } catch (error: any) {
            console.error('Login error:', error.message);
            // Handle login error, e.g., display an error message to the user
        }

    }
    

    // async function submitLogin() {
    //     isSubmittingRef.current = true;
    
    //     let body = {"email": email, "password": password};
    //     let url = BASE_URL + "/user/login";
    //     console.log("submitLogin: url: ", url);
    //     console.log("submitLogin: body: ", body);

    //     try {
    //         let response = await fetch(url, { 
    //             method: 'POST', 
    //             body: JSON.stringify(body),
    //             headers: {
    //                 'Content-Type': 'application/json'
    //             }
    //         });
    //         console.log("submitLogin: response: ", response);
    
    //         if (!response.ok) {
    //             throw new Error('Invalid login credentials');
    //         }
    
    //         let responseJson = await response.json();
    //         let params = {
    //             userId: responseJson.id,
    //             userIsVet: responseJson.vetLicense ? true : false
    //         };
    
    //         props.navigation.navigate("Location", params);
    //         isSubmittingRef.current = false;
    //     } catch (error) {
    //         console.error("Invalid Login!");
    //         console.error(error);
    //         isSubmittingRef.current = false;
    //     }
    // }
    

    //TODO: Add forgot password
    //TODO forgot password has not been tested 
    return (
        <SafeAreaView style={styles.loginBackground}>
            <Logo />

            <View style={{ width: "80%", flex: 1 }}>
                <ScrollView>
                    <View style={styles.signUpLoginGroup}>
                        <Text style={{ fontSize: 30, fontWeight: "bold" }}>
                            Login
                        </Text>


                        <Input
                            value={email} size={"large"} style={styles.fieldText}
                            placeholder={"Email"}
                            onChangeText={(email) => {
                                setEmail(email)
                            }}
                        />
                        <Text style={styles.errorText}>{emailError}</Text>
                        <Input
                            value={password} size={"large"} style={styles.fieldText}
                            placeholder={"Password"}
                            secureTextEntry={true}
                            onChangeText={(password) => {
                                setPassword(password)
                            }}
                        />
                        <Text style={styles.errorText}>{passwordError}</Text>

                        

                        <TouchableOpacity style={styles.forgotPasswordButton} onPress={() => props.navigation.navigate("ForgotPassword")}>
                            <Text style={{ color: colors.action_Orange }}>Forgot Password?</Text>
                        </TouchableOpacity>
                        
                    </View>

                    <EntryButtons direction={null} navigation={props.navigation} cmd={handleSubmit} />
                </ScrollView>
            </View>

        </SafeAreaView>
    )
}

export default LoginScreen