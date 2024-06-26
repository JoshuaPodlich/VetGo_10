import React, { useEffect, useId, useState } from 'react'
import { SafeAreaView, ScrollView, StyleSheet, View, TextInput, Pressable, Alert } from "react-native"
import { Button, Card, Text, TopNavigation } from '@ui-kitten/components'
import { Dimensions } from 'react-native'
import { BASE_URL } from "../shared/Constants"
import { styles, toastConfig } from "../shared/Styles"
import { homeStyles } from "./HomeStyles"
import { FontAwesome5 } from '@expo/vector-icons'
import { HomeClient_PetProfile } from "./HomeClient_PetProfile"
import TopNavbar from '../../components/TopNavbar'
import { LocationInterface } from '../shared/Interfaces'
import { EditPetScreenParams } from '../EditPet/EditPetScreen'
import { ViewPetScreenParams } from '../ViewPet/ViewPet'
import { CreatePetScreenParams } from '../CreatePet/CreatePetScreen'
import { CreateAppointmentParams } from '../CreateAppointment/CreateAppointmentScreen'
import { ViewAppointmentScreenParams } from '../ViewAppointment/ViewAppointmentScreen'
import { LocationDisplay } from '../../components/LocationDisplay'
import { ClientHomeScreenNavigationProp, ClientHomeScreenRouteProp } from '../../utils/props'
import { appointment, pet } from '@prisma/client'
import { PaymentStripeScreenParams } from '../PaymentStripe/PaymentStripeScreen'
import { SettingsScreenParams } from '../SettingsScreen/SettingsScreen'
import { colors } from '../shared/Colors'
import { ScreeningQuestionsParams } from '../ScreeningQuestions/ScreeningQuestionsScreen'
import MaterialIcons from 'react-native-vector-icons/MaterialIcons';
import Toast from 'react-native-toast-message';
import { useNotification } from '../shared/NotificationContext'
import { useUser } from '../shared/UserContext';

export interface HomeClientScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
}


function HomeClientScreen(props: { route: ClientHomeScreenRouteProp, navigation: ClientHomeScreenNavigationProp }) {
    const { user } = useUser();
    //region States
    const params: HomeClientScreenParams = user as HomeClientScreenParams

   

    const [pets, setPets] = useState<any[]>([])
    const [petsData, setPetsData] = useState<{ pet: any, appointment: any }[]>([])

    //endregion
    const [loading, setLoading] = useState(true)
    //endregion

    useEffect(() => {
        fetchPets()
    }, [])

    const { notification, setNotification } = useNotification();
    useEffect(() => {
        if (notification.message) {
            Toast.show({
                type: notification.type,
                text1: notification.header,
                text2: notification.message,
                position: 'bottom',
                visibilityTime: 4000,
            });
            setNotification({ header: '', message: '', type: '' });
        }
    }, [notification]);


    const fetchPets = async () => {
        setLoading(true)
        const res = await fetch(BASE_URL + `/pet/get/all/user/${params.userId}`)
        const tempPetList: pet[] = await res.json()
        setPets(tempPetList)
        const tempPetsData: { pet: any, appointment: any }[] = []

        for (let i = 0; i < tempPetList.length; i++) {
           // const res = await fetch(BASE_URL + "/pet/appointment/" + tempPetList[i].pid)
            //let tempAppointment: appointment = await res.text()
                //.then(text => text.length ? JSON.parse(text) : "NO_APT")
               // .catch(err => console.log(err))
            tempPetsData.push({ pet: tempPetList[i], appointment: "NO_APT"})
        }

        setPetsData(tempPetsData)
        setLoading(false)
    }

    const fetchPet = async (petId: string) => {
        try {
            const response = await fetch(`${BASE_URL}/pet/get/${petId}`);
            if (!response.ok) {
                throw new Error('Problem fetching pet data');
            }
            const updatedPet = await response.json();
    
            setPetsData((currentPetsData) => {
                return currentPetsData.map((petData) => {
                    if (petData.pet.id === updatedPet.id) {
                        return { ...petData, pet: updatedPet };
                    }
                    return petData;
                });
            });
        } catch (error) {
            console.error('Error fetching pet data:', error);
        }
    };
    


    // const fetchPets = async () => {
    //     setLoading(true)
    //     const res = await fetch(BASE_URL + "/owner/pet/" + params.userId)

    //     const tempPetList: pet[] = await res.json()
    //     setPets(tempPetList)
    //     const tempPetsData: { pet: any, appointment: any }[] = []
    //     for (let i = 0; i < tempPetList.length; i++) {
    //         const res = await fetch(BASE_URL + "/pet/appointment/" + tempPetList[i].pid)
    //         let tempAppointment: appointment = await res.text()
    //             .then(text => text.length ? JSON.parse(text) : "NO_APT")
    //             .catch(err => console.log(err))
    //         tempPetsData.push({ pet: tempPetList[i], appointment: tempAppointment })
    //     }

    //     // params.user.petList = tempPetList

    //     setPetsData(tempPetsData)
    //     setLoading(false)
    // }

    function createAppointments(index: number) {
        let createAppointmentParams: CreateAppointmentParams = {
            ...params,
            petId: pets[index].id
            
        }
        console.log(createAppointmentParams)
        props.navigation.navigate("CreateAppointment", createAppointmentParams);

    }

    function viewAppointment(index: number) {
        let viewAppointmentParams: ViewAppointmentScreenParams = {
            ...params,
            appointmentId: petsData[index]["appointment"].aid
        }
        props.navigation.navigate("ViewAppointment", viewAppointmentParams);
          
    }


    async function payAppointment(index: number) {
        let appointment: any = petsData[index]["appointment"]
        let paymentStripeParams: PaymentStripeScreenParams = {
            ...params,
            transactionId: appointment.transaction.id,
            appointmentId: appointment.aid,
            revieweeId: appointment.vet.id,
            revieweeFirstName: appointment.vet.firstName,
            revieweeLastName: appointment.vet.lastName,
            revieweeAverageRating: appointment.vet.userAccount.averageRating,
            // transaction: appointment.transaction,
            // oid: userDetails.user.id,
            // appointment: appointment.aid,
            // reviewer: userDetails.user,
            // reviewee: appointment.vet,
            // reviewerlocation: userDetails.location
            transactionAmount: appointment.transaction.amount,
            transactionReceipt: appointment.transaction.receipt
        }

        //temporary method
        // props.navigation.popToTop()
        props.navigation.navigate("PaymentStripe", paymentStripeParams)
    }

    //region Pet Screen Functions
    async function addPet() {
        let createPetParams: CreatePetScreenParams = {
            ...params
        }
        props.navigation.navigate("CreatePet", createPetParams)
    }

    function editPet(index: number) {
        console.log("View Pet")
        let viewPetParams: ViewPetScreenParams = {
            userId: params.userId,
            userIsVet: params.userIsVet,
            location: params.location,
            petId: index.toString(),
            
        }
        console.log(viewPetParams)
        props.navigation.navigate("ViewPet", viewPetParams)
    }

    return (
        <SafeAreaView style={{ flex: 1 }} >
            <View style={{ display: 'flex', flexDirection: 'row', alignItems: 'center', marginRight: 'auto', justifyContent: 'space-between' }}>
                <View style={{ flexDirection: 'row', alignItems: 'center', paddingHorizontal: 15, marginVertical: 20 }}>
                    <MaterialIcons name="location-pin" size={40} color={colors.action_Orange} />
                    <LocationDisplay location={params.location} navigation={props.navigation} userId={params.userId} userIsVet={params.userIsVet} />
                </View>
            </View>
            <Text style={{ marginRight: 'auto', marginLeft: 20, fontSize: 28, fontWeight: 'bold' }}>My Pets</Text>
            <ScrollView
                contentContainerStyle={{ width: Dimensions.get("window").width, height: "100%" }}>

                <View style={[homeStyles.container, { width: "90%", marginLeft: "auto", marginRight: "auto" }]}>
                    {loading && <Text style={{ marginLeft: "auto", marginRight: "auto" }}>Loading..</Text>}
                    <View style={homeStyles.container}>
                        {(!petsData || petsData.length == 0) &&
                            (<View key={0} style={homeStyles.petInfo}>
                                <Text style={styles.noPetText}> NO PETS </Text>
                            </View>)
                        }
                        {petsData && petsData.length > 0 && petsData.map((petData, index) =>
                        (
                            <HomeClient_PetProfile
                                key={index}
                                petData={petData}
                                editPet={(id: any) => editPet(id)}
                                createAppointment={() => createAppointments(index)}
                                viewAppointment={() => viewAppointment(index)}
                                payAppointment={() => payAppointment(index)}
                                triggerPetUpdate={() => fetchPet(petData.pet.id)}
                            />
                        )
                        )
                        }
                    </View>
                    
                    
                </View>

                <View style={homeStyles.addPetContainer}>
                    <Button onPress={() => addPet()} style={homeStyles.addButton}>
                        <FontAwesome5 name='plus' color={colors.blue} size={24} />
                    </Button>
                    <Button onPress={() => fetchPets()} style={homeStyles.refreshButton}>
                        <Text>Refresh List</Text>
                    </Button>
                    <Button onPress={() => props.navigation.navigate("Emergency")} style={homeStyles.emergencyButton}>
                        <Text>Emergency</Text>
                    </Button>

                
                    
                </View>

                

            </ScrollView>      
            <View style={{zIndex: 1000}}>
                <Toast config={toastConfig}/>
            </View>
        </SafeAreaView>
    )

}

export default HomeClientScreen
