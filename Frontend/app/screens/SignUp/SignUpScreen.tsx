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
    LayoutAnimation, TouchableHighlight
} from "react-native"
import { CommonActions, useFocusEffect } from "@react-navigation/native"
import { Input } from "@ui-kitten/components"
import { colors } from "../shared/Colors"
import { styles } from "../shared/Styles"
import { signUpStyles } from './SignUpStyles'
import { BASE_URL } from "../shared/Constants"
import { LocationInterface } from '../shared/Interfaces'

export interface SignUpScreenParams {
}
interface SignUpForm {
    username: string,
    email: string,
    password: string,
    confirmPassword: string,
    firstname: string,
    lastname: string,
    telephone: string,
    role: string,
    vetLicense: string
}


function SignUpScreen(props: any) {
    //#region States

    const [form, setForm] = useState<SignUpForm>({ username: "", email: "", password: "", confirmPassword: "", vetLicense: "", firstname: "", lastname: "", telephone: "", role: "" })
    const [errors, setErrors] = useState<SignUpForm>({ username: "", email: "", password: "", confirmPassword: "", vetLicense: "", firstname: "", lastname: "", telephone: "", role: ""})
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
                setForm({ username: "", email: "", password: "", confirmPassword: "", vetLicense: "", firstname: "", lastname: "", telephone: "", role: ""})
                setErrors({ username: "", email: "", password: "", confirmPassword: "", vetLicense: "", firstname: "", lastname: "", telephone: "", role: ""})
                isSubmittingRef.current = false
                setIsVet(false)
            }
        }, [])
    )

    function validate() {
        let reg = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w\w+)+$/

        setErrors({ username: "", email: "", password: "", confirmPassword: "", vetLicense: "", firstname: "", lastname: "", telephone: "", role: ""})
        let isValid = true
        if (!form.username) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, username: "Username is required!" }))
            isValid = false
        } else if (!form.username.match(/^[A-Za-z]+$/)) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, username: "Username can only contain letters!" }))
            isValid = false
        }
        if (!form.email) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, email: "Email is required!" }))
            isValid = false
        } else if (reg.test(form.email) === false) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, email: "Invalid Email Format!" }))
            isValid = false
        }
        if (!form.password) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, password: "Password is required!" }))
            isValid = false
        } else if (form.password.length < 6) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, password: "Password must contain at least 6 characters!" }))
            isValid = false
        }
        if (!form.confirmPassword.match(form.password) || !form.password) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, confirmPassword: "Password does not match" }))
            isValid = false
        }

        if (isVet && !form.vetLicense) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, vetLicense: "Vet License is required!" }))
            isValid = false
        }
        if (!form.firstname) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, firstname: "First Name is required!" }))
            isValid = false
        }
        if (!form.lastname) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, lastname: "Last Name is required!" }))
            isValid = false
        }
        if (!form.telephone) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, telephone: "Telephone is required!" }))
            isValid = false
        }
        if (!form.role) {
            setErrors((prevState: SignUpForm) => ({ ...prevState, role: "Role is required!" }))
            isValid = false
        }

        return isValid
    }

    async function submitSignUpForm() {
        isSubmittingRef.current = true

        let body = {"email": form.email, "password": form.password, "firstName": form.username, "lastName": null, "telephone": null, "role": null}

        //let url = BASE_URL + "/api/user/register/" + (isVet ? "vet/" : "owner/") + form.username + "/" + form.email + "/" + form.password
        let url = BASE_URL + "/user/register/"

        
        console.log(body)
        const response = await fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(body)
        })

        console.log(response.status)
        console.log(response.statusText)

        const responseJson = await response.json()



        // let res = await fetch(url, {
        //     method: 'POST',
        //     headers: {
        //         'Accept': 'application/json',
        //         'Content-Type': 'application/json'
        //     },
        //     body: JSON.stringify(body),
        // }).then((response) => response.json());




        isSubmittingRef.current = false

    }

    //#endregion

    return (
        <SafeAreaView style={styles.loginBackground}>
            <View style={{ width: "80%", marginTop: "10%", flex: 1 }}>
                <ScrollView>
                    <View id={"signUpGroup"} style={signUpStyles.signUpLoginGroup}>
                        <Text style={{ fontSize: 30, fontWeight: "bold", paddingBottom: 5 }}>
                            Sign Up
                        </Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.username} style={styles.fieldText}
                            placeholder={"Username"}
                            onChangeText={(newUsername) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, username: newUsername }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.username}</Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.email} style={styles.fieldText}
                            placeholder={"Email"}
                            onChangeText={(newEmail) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, email: newEmail }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.email}</Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.password} style={styles.fieldText}
                            placeholder={"Password"} secureTextEntry={true}
                            onChangeText={(newPassword) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, password: newPassword }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.password}</Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.confirmPassword} style={styles.fieldText}
                            placeholder={"Confirm Password"} secureTextEntry={true}
                            onChangeText={(newConfirmPassword) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, confirmPassword: newConfirmPassword }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.confirmPassword}</Text>


                            <Input clearButtonMode={"always"} size={"large"}
                                value={form.firstname} style={styles.fieldText}
                                placeholder={"First Name"}
                                onChangeText={(newFirstName) => {
                                    setForm((prevForm: SignUpForm) => ({ ...prevForm, firstname: newFirstName }))
                                }}
                            />
                            <Text style={styles.errorText}>{errors.firstname}</Text>

                            <Input clearButtonMode={"always"} size={"large"}
                                value={form.lastname} style={styles.fieldText}
                                placeholder={"Last Name"}
                                onChangeText={(newLastName) => {
                                    setForm((prevForm: SignUpForm) => ({ ...prevForm, lastname: newLastName }))
                                }}
                            />
                            <Text style={styles.errorText}>{errors.lastname}</Text>

                            <Input clearButtonMode={"always"} size={"large"}
                                value={form.telephone} style={styles.fieldText}
                                placeholder={"Telephone"}
                                onChangeText={(newTelephone) => {
                                    setForm((prevForm: SignUpForm) => ({ ...prevForm, telephone: newTelephone }))
                                }}
                            />
                            <Text style={styles.errorText}>{errors.telephone}</Text>

                            <Input clearButtonMode={"always"} size={"large"}
                                value={form.role} style={styles.fieldText}
                                placeholder={"Role"}
                                onChangeText={(newRole) => {
                                    setForm((prevForm: SignUpForm) => ({ ...prevForm, role: newRole }))
                                }}
                            />
                            <Text style={styles.errorText}>{errors.role}</Text>


                        <View style={signUpStyles.switchGroup}>
                            <Text style={{
                                fontSize: 15,
                                fontWeight: "normal",
                                marginRight: 10,
                            }}>
                                Are you a Vet?
                            </Text>
                            <Switch
                                trackColor={{ true: '#53d769' }}
                                ios_backgroundColor="#8e8e93"
                                onValueChange={toggleSwitch}
                                value={isVet}
                            />
                        </View>

                        {isVet &&
                            <>
                                <Input
                                    clearButtonMode={"always"} size={"large"}
                                    value={form.vetLicense} style={styles.fieldText}
                                    placeholder={"Vet License"}
                                    onChangeText={(newVetLicense) => {
                                        setForm((prevForm: SignUpForm) => ({ ...prevForm, vetLicense: newVetLicense }))
                                    }}
                                />
                                <Text style={styles.errorText}>{errors.vetLicense}</Text>
                            </>
                        }

                    </View>

                    <View id={"buttonGroup"} style={styles.buttonGroup}>
                        <TouchableHighlight style={{ ...styles.mainButton }}
                            underlayColor={colors.black_underlay} onPress={handleSubmit}>
                            <Text style={styles.buttonText}> SIGNUP </Text>
                        </TouchableHighlight>

                        <TouchableHighlight style={{ ...styles.secondaryButton, marginTop: 100}}
                            underlayColor={colors.brightRed_underlayColor}
                            onPress={() => props.navigation.navigate("Map")}>
                            <Text style={styles.buttonText}> EMERGENCY </Text>
                        </TouchableHighlight>
                    </View>
                </ScrollView>
            </View>
        </SafeAreaView>
    )
}

export default SignUpScreen