import { Logo } from "../shared/Components"
import React, { useEffect, useState, useRef } from 'react'

import {
    Alert,
    SafeAreaView,
    ScrollView,
    StyleSheet,
    Switch,
    Text,
    View,
    Pressable,
    LayoutAnimation, TouchableHighlight, 
} from "react-native"
import { CommonActions, useFocusEffect } from "@react-navigation/native"
import { Input } from "@ui-kitten/components"
import { colors } from "../shared/Colors"
import { styles } from "../shared/Styles"
import { signUpStyles } from './SignUpStyles'
import { BASE_URL } from "../shared/Constants"
import { LocationInterface } from '../shared/Interfaces'
import { Dropdown } from 'react-native-element-dropdown';


export interface SignUpScreenParams {
}
interface SignUpForm {
    email: string,
    password: string,
    confirmPassword: string,
    firstname: string,
    lastname: string,
    telephone: string,
    role: string,
    vetLicense: string
}

//list of roles to be used in dropdown 
const roles = [
    { label: "Owner", value: "owner" },
    { label: "Vet", value: "vet" }
]


function SignUpScreen(props: any) {
    //#region States

    const [form, setForm] = useState<SignUpForm>({ email: "", password: "", confirmPassword: "", vetLicense: "", firstname: "", lastname: "", telephone: "", role: "" })
    const [errors, setErrors] = useState<SignUpForm>({ email: "", password: "", confirmPassword: "", vetLicense: "", firstname: "", lastname: "", telephone: "", role: ""})
    const [isVet, setIsVet] = useState(false)
    const isSubmittingRef = useRef<boolean>(false)
    const toggleSwitch = () => {
        setIsVet(previousState => !previousState)
        LayoutAnimation.easeInEaseOut()
    }
    //#endregion

    //#region Handlers
    const handleSubmit = async () => {
        if (isSubmittingRef.current)
            return
        let isValid = validate()
        if (isValid) {
            submitSignUpForm()
        }
    }

    //#endregion

    //#region Functions
    useFocusEffect(
        React.useCallback(() => {
            return () => {
                setForm({ email: "", password: "", confirmPassword: "", vetLicense: "", firstname: "", lastname: "", telephone: "", role: ""})
                setErrors({  email: "", password: "", confirmPassword: "", vetLicense: "", firstname: "", lastname: "", telephone: "", role: ""})
                isSubmittingRef.current = false
                setIsVet(false)
            }
        }, [])
    )

    function validate() {
        let reg = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w\w+)+$/

        setErrors({ email: "", password: "", confirmPassword: "", vetLicense: "", firstname: "", lastname: "", telephone: "", role: ""})
        let isValid = true
        
        if (!form.email) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, email: "Email is required!" }))
            isValid = false
        } else if (reg.test(form.email) === false) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, email: "Invalid email format!" }))
            isValid = false
        }
        if (!form.password) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, password: "Password is required!" }))
            isValid = false
        } else if (!form.password.match(/^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{16,48}$/)) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, password: "Password must match the specified format!" }))
            isValid = false;
        }
        // if (!form.confirmPassword.match(form.password) || !form.password) {
        //     setErrors((prevState: SignUpForm) => ({ ...prevState, confirmPassword: "Password does not match" }))
        //     isValid = false
        // }

        if (isVet && !form.vetLicense) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, vetLicense: "Vet license is required!" }))
            isValid = false
        }
        if (!form.firstname) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, firstname: "First name is required!" }))
            isValid = false
        }
        if (!form.lastname) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, lastname: "Last name is required!" }))
            isValid = false
        }
        if (!form.telephone) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, telephone: "Telephone is required!" }))
            isValid = false
        }
        else if (form.telephone.length < 10) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, telephone: "Invalid telephone number!" }))
            isValid = false
        }


        return isValid
    }

    const handleRoleChange = (selectedRole: any) => {
        setForm(prevForm => {
            const updatedForm = { ...prevForm, role: selectedRole.value };
            console.log("Updated role: " + updatedForm.role);
            return updatedForm;
        });
    };

    async function submitSignUpForm() {
        isSubmittingRef.current = true

        let body = {"email": form.email, "password": form.password, "firstName": form.firstname,  "lastName": form.lastname, "telephone": form.telephone, "role": "owner"}

        try{
        //let url = BASE_URL + "/api/user/register/" + (isVet ? "vet/" : "owner/") + form.username + "/" + form.email + "/" + form.password
        let url = BASE_URL + "/user/register"

        
        console.log(body)
        console.log(url)
        const response = await fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(body)
        })

        console.log(response.status)
        //console.log(response.statusText)

       
        if(response.status === 200){
        const responseBody = await response.json(); // Parse the response body into JSON
        console.log('Response:', response);
        console.log('Response Body:', responseBody);
        isSubmittingRef.current = false
        
        
            if(form.role === "vet"){
                props.navigation.navigate("VetLogin", {email: form.email})
            } else {
                props.navigation.navigate("Login")
            }
        }
// the error message will return as a string instead of json so to read that 
// we need to use response.text() instead of response.json()
        else {
            const error = await response.text()
            console.log('Error:', error)
            Alert.alert("Error", error)
        }
    } catch (error: any) {
        
        console.error('Error:', error.message);
    }
}


    async function vetSignUp(): Promise<void> {
        isSubmittingRef.current = true

        let body = {"email": form.email, "password": form.password, "firstName": form.firstname,  "lastName": form.lastname, "telephone": form.telephone, "role": "owner"}

        try{
        let url = BASE_URL + "/user/register"

        
        console.log(body)
        console.log(url)
        const response = await fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(body)
        })

        console.log(response.status)

        const responseBody = await response.json(); 
        console.log('Response:', response);
        console.log('Response Body:', responseBody);
        isSubmittingRef.current = false
        
        if(response.status === 200){
                props.navigation.navigate("VetLogin", {email: form.email})
        }
        else if(response.status === 400){
            const error = await response.text()
            console.log('Error:', error)
            Alert.alert("Error", error)
        }
    } catch (error: any) {
        
        console.error('Error:', error.message);
    }








    }

    //#endregion

    return (
        <SafeAreaView style={styles.loginBackground}>
            
            <ScrollView>
                <Logo/>
                <View style={{ width: "85%", marginTop: "5%", flex: 1, alignSelf: "center" }}>
                    <View id={"signUpGroup"} style={signUpStyles.signUpLoginGroup}>
                        <Text style={{ fontSize: 30, fontWeight: "bold", paddingBottom: 5}}>
                            Sign Up
                        </Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.email} style={styles.signUpLoginTextBox}
                            placeholder={"Email"}
                            onChangeText={(newEmail) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, email: newEmail }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.email}</Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.password} style={styles.signUpLoginTextBox}
                            placeholder={"Password"} secureTextEntry={true}
                            onChangeText={(newPassword) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, password: newPassword }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.password}</Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.confirmPassword} style={styles.signUpLoginTextBox}
                            placeholder={"Confirm Password"} secureTextEntry={true}
                            onChangeText={(newConfirmPassword) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, confirmPassword: newConfirmPassword }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.confirmPassword}</Text>


                            <Input clearButtonMode={"always"} size={"large"}
                                value={form.firstname} style={styles.signUpLoginTextBox}
                                placeholder={"First Name"}
                                onChangeText={(newFirstName) => {
                                    setForm((prevForm: SignUpForm) => ({ ...prevForm, firstname: newFirstName }))
                                }}
                            />
                            <Text style={styles.errorText}>{errors.firstname}</Text>

                            <Input clearButtonMode={"always"} size={"large"}
                                value={form.lastname} style={styles.signUpLoginTextBox}
                                placeholder={"Last Name"}
                                onChangeText={(newLastName) => {
                                    setForm((prevForm: SignUpForm) => ({ ...prevForm, lastname: newLastName }))
                                }}
                            />
                            <Text style={styles.errorText}>{errors.lastname}</Text>

                            <Input clearButtonMode={"always"} size={"large"}
                                value={form.telephone} style={styles.signUpLoginTextBox}
                                placeholder={"Telephone"}
                                onChangeText={(newTelephone) => {
                                    setForm((prevForm: SignUpForm) => ({ ...prevForm, telephone: newTelephone }))
                                }}
                            />
                            <Text style={styles.errorText}>{errors.telephone}</Text>
                            


                            

                            
                    </View>

                    <View id={"buttonGroup"} style={styles.signUpButtonGroup}>
                        <TouchableHighlight style={{ ...styles.mainButton }}
                            underlayColor={colors.black_underlay} onPress={handleSubmit}>
                            <Text style={styles.buttonText}> SIGNUP </Text>
                        </TouchableHighlight>

                        <TouchableHighlight style={{ ...styles.secondaryButton, marginTop: 20}}
                            underlayColor={colors.brightRed_underlayColor}
                            onPress={() => props.navigation.navigate("Map")}>
                            <Text style={styles.buttonText}> EMERGENCY </Text>
                        </TouchableHighlight>

                       
                    </View>
                </View>
            </ScrollView>
        </SafeAreaView>
    )
}

export default SignUpScreen