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

function VetRegisterScreen(props: { route: VetLoginNavigationProp, navigation: VetLoginScreenNavigationProp }) {

  const params: vetRegisterInfo = props.route.params as vetRegisterInfo

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
