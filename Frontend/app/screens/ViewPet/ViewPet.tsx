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
import ClientNavbar from '../../components/ClientNavbar'
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
                <Text style = {styles.petInfoText}>pet name: {petname}</Text>
                <Text style = {styles.petInfoText}>pet age: {petage}</Text>
                <Text style = {styles.petInfoText}>pet weight: {petweight}</Text>
                <Text style = {styles.petInfoText}>pet height: {petheight}</Text>
                <Text style = {styles.petInfoText}>pet breed: {petbreed}</Text>
                <Text style = {styles.petInfoText}>pet size: {PetSize}</Text>
                <Text style = {styles.petInfoText}>pet energy level: {petenergyLevel}</Text>
                <Text style = {styles.petInfoText}>pet fur type: {petfurType}</Text>
            </View>
            

            <TouchableOpacity style={{...styles.mainButton, marginTop: 100}} onPress={() => props.navigation.goBack()
}>
                <Text style={styles.returnButtonText}>Return</Text>
            </TouchableOpacity>




            </View>
        </SafeAreaView>
<View style={{paddingTop: '90%'}}>
        <ClientNavbar navigation={props.navigation} {...params} />
        </View>

        </View>
    )
}
export default ViewPet

