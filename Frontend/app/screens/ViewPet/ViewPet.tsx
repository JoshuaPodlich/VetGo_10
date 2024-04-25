import React, { useEffect, useMemo, useRef, useState } from 'react'
import { SafeAreaView, ScrollView, StyleSheet, Text, View, TextInput, Pressable, Alert, TouchableOpacity, Image } from "react-native"
import { BASE_URL } from "../shared/Constants"
import { styles } from "../shared/Styles"
import { colors } from "../shared/Colors"
import { IndexPath, Input, Select, SelectItem, Button, CheckBox, Radio, Layout } from "@ui-kitten/components"
import { ViewPetScreenNavigationProp, ViewPetScreenRouteProp } from '../../utils/props'
import { UserDetailsParams, UserDetails_Location, UserDetails_User } from '../../utils/params'
import Textfield from '../../components/Textfield'
import { Buffer } from 'buffer'
import { LocationInterface } from '../shared/Interfaces'
import { HomeScreenParams } from '../Home/HomeScreen'
import { homeStyles } from '../Home/HomeStyles'


export interface ViewPetScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
    petId: string
}



let petData: any = {}
let petname: string = ""
let petimageURL: string = ""
let petage: string = ""
let petweight: string = ""
let petheight: string = ""
let petbreed: string = ""
let PetSize: string = ""
let petenergyLevel: string = ""
let petfurType: string = ""
let petmale: boolean = false


function ViewPet (props: { route: ViewPetScreenRouteProp, navigation: ViewPetScreenNavigationProp}) {
    const params: ViewPetScreenParams = props.route.params  as ViewPetScreenParams
    console.log("ViewPetScreenParams" + JSON.stringify(params))
    useEffect(() => {
        fetchPet(params.petId)
    }, [])   
    const fetchPet = async (petId: string) => {
        try {
            const response = await fetch(`${BASE_URL}/pet/get/${petId}`);
            
            if (!response.ok) {
                throw new Error('Problem fetching pet data');
            }

            const data = await response.json();
            console.log("Pet data: " + JSON.stringify(data))

            const { id, name, fileLink, imageURL, age, weight, height, breed, petSize, energyLevel, furType, male } = data;

            console.log("petName: " + name)
            console.log("petImage: " + imageURL)
            console.log("age: " + age)

            petname = name;
            petage = age;
            petweight = weight;
            petheight = height;
            petbreed = breed;
            PetSize = petSize;
            petenergyLevel = energyLevel;
            petfurType = furType;
            petimageURL = imageURL;

            if(male == true){
                petmale = true
            } else {
                petmale = false
            }       
        } catch (error) {
            console.error(error);
        }
    }
    return (
        <View >
            
            {petimageURL ?
                        <Image source={{ uri: `${BASE_URL}/${petimageURL}` }} style={{...styles.logoImageSmall, marginLeft: 60, marginTop: 10, borderRadius: 50}} />
                        :
                        <Image source={require('../ScreenImages/transparent_vetgo.png')} style={{...styles.logoImageSmall, marginLeft: 60}} />

                    }
            
            <SafeAreaView>
                <View style={styles.viewPetContainer}>
            <Text style={{ fontSize: 60, fontWeight: "bold", marginTop: 10, paddingBottom: 40}}  >
                            Pet Info</Text>

            

            
            <View style = {styles.viewPetInfoContainer}>
            <Text style={styles.petInfoLine}>
        <Text style={styles.petInfoLabel}>pet name: </Text>
        <Text style={styles.petInfoText}>{petname}</Text>
    </Text>
    
    <Text style={styles.petInfoLine}>
        <Text style={styles.petInfoLabel}>pet age: </Text>
        <Text style={styles.petInfoText}>{petage}</Text>
    </Text>
    
    <Text style={styles.petInfoLine}>
        <Text style={styles.petInfoLabel}>pet weight: </Text>
        <Text style={styles.petInfoText}>{petweight}</Text>
    </Text>
    
    <Text style={styles.petInfoLine}>
        <Text style={styles.petInfoLabel}>pet height: </Text>
        <Text style={styles.petInfoText}>{petheight}</Text>
    </Text>
    
    <Text style={styles.petInfoLine}>
        <Text style={styles.petInfoLabel}>pet breed: </Text>
        <Text style={styles.petInfoText}>{petbreed}</Text>
    </Text>
    
    <Text style={styles.petInfoLine}>
        <Text style={styles.petInfoLabel}>pet size: </Text>
        <Text style={styles.petInfoText}>{PetSize}</Text>
    </Text>
    
    <Text style={styles.petInfoLine}>
        <Text style={styles.petInfoLabel}>pet energy level: </Text>
        <Text style={styles.petInfoText}>{petenergyLevel}</Text>
    </Text>
    
    <Text style={styles.petInfoLine}>
        <Text style={styles.petInfoLabel}>pet fur type: </Text>
        <Text style={styles.petInfoText}>{petfurType}</Text>
    </Text>
                
            </View>
            

            <TouchableOpacity style={{...styles.mainButton, marginTop: 5}} onPress={() => props.navigation.goBack()
}>
                <Text style={styles.returnButtonText}>Return</Text>
            </TouchableOpacity>




            </View>
        </SafeAreaView>
<View style={{paddingTop: '90%'}}>
        </View>

        </View>
    )
}
export default ViewPet

