import React, { useEffect, useMemo, useRef, useState } from 'react'
import { SafeAreaView, ScrollView, StyleSheet, Text, View, TextInput, Pressable, Alert } from "react-native"
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


export interface ViewPetScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
    petId: string
}

let petData: any = {}

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

            const { id, name, fileLink, petImage, age, weight, height, breed, petSize, energyLevel, furType, male } = data;

            console.log("petName: " + name)
            console.log("petImage: " + petImage)
            console.log("age: " + age)
           







            
        } catch (error) {
            console.error(error);
        }
    }











    return (
        <View>
            <Text>Under Development</Text>
            <Text>param info</Text>
            <Text>userId: {params.userId}</Text>
            <Text> PET INFO</Text>
            {/* <Text>petData {petData}</Text> */}


            

        </View>
    )
}
export default ViewPet

