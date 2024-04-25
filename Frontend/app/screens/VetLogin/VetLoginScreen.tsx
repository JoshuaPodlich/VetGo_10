import React, { useEffect, useMemo, useRef, useState } from 'react'
import { SafeAreaView, ScrollView, StyleSheet, Text, View, TextInput, Pressable, Alert, TouchableHighlight, Image } from "react-native"
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
import { signUpStyles } from '../SignUp/SignUpStyles'
import { Logo } from '../shared/Components'
import { VetLoginNavigationProp, VetLoginScreenNavigationProp } from '../../utils/props'
import { RouteProp } from '@react-navigation/native';
import { ViewPetScreenParams } from '../ViewPet/ViewPet'


export interface VetRegisterInfo {
  userId: string,
  userIsVet: boolean,
}
interface SignUpForm {
  vetInsurance: string,
  vetLicense: string,
  vetCompany: string,
  vetImg: string,
  statePermit: string,

}

function VetRegisterScreen(props: { route: VetLoginNavigationProp, navigation: VetLoginScreenNavigationProp }) {

  const params: VetRegisterInfo = props.route.params as VetRegisterInfo
  const [form, setForm] = useState<SignUpForm>({ vetInsurance: "", vetLicense: "", vetCompany: "", vetImg: "", statePermit: ""})

  const [errors, setErrors] = useState<SignUpForm>({ vetInsurance: "", vetLicense: "", vetCompany: "", vetImg: "", statePermit: ""})


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
      let userId = params.userId;
      let isUserVet = true;
      let vetInsurance = form.vetInsurance;
      let vetLicense = form.vetLicense;
      let vetCompany = form.vetCompany;
      let vetImg = form.vetImg;
      let statePermit = form.statePermit;
      console.log("userId: " + userId)
      console.log("isUserVet: " + isUserVet)
      console.log("vetInsurance: " + vetInsurance)
      console.log("vetLicense: " + vetLicense)
      console.log("vetCompany: " + vetCompany)
      console.log("vetImg: " + vetImg)
      console.log("statePermit: " + statePermit)

      try {
        const response = await fetch(`${BASE_URL}/vet/register`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            userId: userId,
            vetInsurance: vetInsurance,
            vetLicense: vetLicense,
            vetCompany: vetCompany,
            vetImg: vetImg,
            statePermit: statePermit
          }),
        });
        
        console.log(await response.text());
        if (response.ok) {
          props.navigation.navigate("Welcome");
        }
        // props.navigation.navigate("VetHome", { userId: userId, userIsVet: isUserVet } as HomeScreenParams)
        //Alert.alert("Success", "You have successfully registered as a vet. Please wait while we verify your information.")
      } catch (error) {
        console.log(error)
        Alert.alert("Error", "Problem registering as a vet. Please try again.")
      }
    }
   
}

function validateForm() {
  let valid = true;
  let newErrors = { vetInsurance: "", vetLicense: "", vetCompany: "", vetImg: "", statePermit: ""}
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
  if(form.statePermit.length < 1) {
    newErrors.statePermit = "State Permit is required"
    valid = false;
  }
  setErrors(newErrors)

  return valid;

}








  return (
<SafeAreaView style={styles.loginBackground}>
            <ScrollView>
                        <Image source={require('../ScreenImages/transparent_vetgo.png')} style={{...styles.logoImageSmall}} />
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

                            <Input 
                            clearButtonMode={"always"} size={"large"}
                            value={form.statePermit} style={styles.signUpLoginTextBox}
                            placeholder={"State Permit"}
                            onChangeText={(newStatePermit) => {
                                setForm((prevForm: SignUpForm) => ({ ...prevForm, statePermit: newStatePermit }))
                            }}
                        />
                        <Text style={styles.errorText}>{errors.statePermit}</Text>


                        
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
