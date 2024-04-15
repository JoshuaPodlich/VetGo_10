import React, { useEffect, useMemo, useRef, useState } from 'react'
import { SafeAreaView, ScrollView, StyleSheet, Text, View, TextInput, Pressable, Alert, TouchableHighlight } from "react-native"
import { BASE_URL } from "../shared/Constants"
import { styles } from "../shared/Styles"
import { colors } from "../shared/Colors"
import { IndexPath, Input, Select, SelectItem, Button, CheckBox, Radio, Layout } from "@ui-kitten/components"
import { EditPetScreenNavigationProp, EditPetScreenRouteProp } from '../../utils/props'
import { UserDetailsParams, UserDetails_Location, UserDetails_User } from '../../utils/params'
import Textfield from '../../components/Textfield'
import { Buffer } from 'buffer'
import { LocationInterface } from '../shared/Interfaces'
import { HomeScreenParams } from '../Home/HomeScreen'
import ClientNavbar from '../../components/ClientNavbar'
import { signUpStyles } from '../SignUp/SignUpStyles'
import { Logo } from '../shared/Components'
import { VetLoginNavigationProp, VetLoginScreenNavigationProp } from '../../utils/props'
import { RouteProp } from '@react-navigation/native';
import { ViewPetScreenParams } from '../ViewPet/ViewPet'





export interface vetRegisterInfo {
  userId: string,
  userIsVet: boolean,
}
interface SignUpForm {
  vetInsurance: string,
  vetLicense: string,
  vetCompany: string,
  vetImg: string,
}

function VetRegisterScreen(props: { route: VetLoginNavigationProp, navigation: VetLoginScreenNavigationProp }) {

  const params: vetRegisterInfo = props.route.params as vetRegisterInfo
  const [form, setForm] = useState<SignUpForm>({ vetInsurance: "", vetLicense: "", vetCompany: "", vetImg: ""})

  const [errors, setErrors] = useState<SignUpForm>({ vetInsurance: "", vetLicense: "", vetCompany: "", vetImg: ""})


  const [vetInsurance, setVetInsurance] = useState('');
  const [vetLicense, setVetLicense] = useState('');
  const [vetCompany, setVetCompany] = useState(''); //organization
  const [vetImg, setVetImg] = useState(''); 

  useEffect(() => {
    getUserInfo();
  }, [])


  const getUserInfo = async () => {
    let userId = params.userId;
    console.log("userIdTEST: " + userId)
    let isUserVet = params.userIsVet;
    return userId;
  }

  const handleSubmit = async () => {
    if (validateForm()) {
    }
   
}

function validateForm() {
  let valid = true;
  let newErrors = { vetInsurance: "", vetLicense: "", vetCompany: "", vetImg: "" }
  if (form.vetInsurance.length < 1) {
      newErrors.vetInsurance = "Veterinary Insurance is required"
      valid = false;
  }
  if (form.vetLicense.length < 1) {
      newErrors.vetLicense = "Veterinary License is required"
      valid = false;
  }
  if (form.vetCompany.length < 1) {
      newErrors.vetCompany = "Veterinary Company is required"
      valid = false;
  }
  if (form.vetImg.length < 1) {
      newErrors.vetImg = "Veterinary Image is required"
      valid = false;
  }
  setErrors(newErrors)

  return valid;

}








  return (
<SafeAreaView style={styles.loginBackground}>
            
            <ScrollView>
                <Logo/>
                <View style={{ width: "85%", marginTop: "5%", flex: 1, alignSelf: "center" }}>
                    <View id={"signUpGroup"} style={signUpStyles.signUpLoginGroup}>
                        <Text style={{ fontSize: 30, fontWeight: "bold", paddingBottom: 5}}>
                            Vet Signup/Apply 
                        </Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.vetLicense} style={styles.signUpLoginTextBox}
                            placeholder={"Veterinary License"}
                            onChangeText={(newVetLicense) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, vetLicense: newVetLicense }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.vetLicense}</Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.vetInsurance} style={styles.signUpLoginTextBox}
                            placeholder={"Veterinary Insurance"}
                            onChangeText={(newVetInsurance) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, vetInsurance: newVetInsurance }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.vetInsurance}</Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.vetCompany} style={styles.signUpLoginTextBox}
                            placeholder={"Veterinary Company"}
                            onChangeText={(newVetCompany) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, vetCompany: newVetCompany }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.vetCompany}</Text>

                        <Input
                            clearButtonMode={"always"} size={"large"}
                            value={form.vetImg} style={styles.signUpLoginTextBox}
                            placeholder={"Veterinary Image"}
                            onChangeText={(newVetImg) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, vetImg: newVetImg }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.vetImg}</Text>




                        
                      {/* if isUserVet is true add return button */}

                    <View id={"buttonGroup"} style={styles.signUpButtonGroup}>
                        <TouchableHighlight style={{ ...styles.mainButton }}
                            underlayColor={colors.black_underlay} onPress={handleSubmit}>
                            <Text style={styles.buttonText}> SIGNUP </Text>
                        </TouchableHighlight>
                    </View>
                </View>
                </View>
            </ScrollView>
        </SafeAreaView>
  );
}


export default VetRegisterScreen;
