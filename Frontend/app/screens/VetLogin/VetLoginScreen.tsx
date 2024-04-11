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


export interface vetRegisterInfo {
  userId: string,
}

function VetRegisterScreen({ navigation }: { navigation: any }) {

  const params = navigation.state.params as vetRegisterInfo;

  

  const [vetInsurance, setVetInsurance] = useState('');
  const [vetLicense, setVetLicense] = useState('');
  const [vetCompany, setVetCompany] = useState(''); //organization
  const [vetImg, setVetImg] = useState(''); 


  const getUserInfo = async () => {
    let userId = params.userId;
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
