import { useState, useEffect } from "react"
import { SafeAreaView, ScrollView, Text, View } from "react-native"
import { styles } from "../shared/Styles"
import Textfield from "../../components/Textfield"
import { Button, Calendar } from "@ui-kitten/components"
import { colors } from "../shared/Colors"
import { BASE_URL } from "../shared/Constants"
import { LocationInterface } from "../shared/Interfaces"
import { HomeScreenParams } from "../Home/HomeScreen"
import { ScreeningQuestionsParams } from "../ScreeningQuestions/ScreeningQuestionsScreen"
import axios from 'axios';
import { Border } from "victory-native"

export interface CreateAppointmentParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
    petId: string,
}

const CreateAppointmentScreen = (props: any) => {
    const params: CreateAppointmentParams = props.route.params as CreateAppointmentParams

    const [description, setDescription] = useState('')
    const [date, setDate] = useState(new Date())
    const [error, setError] = useState('')
    const [petName, setPetName] = useState<string>("")

    const [showCalendar, setShowCalendar] = useState(false)

    


    useEffect(() => {
        fetchAndHydratePetData()
    }, [])

    const fetchAndHydratePetData = async () => {
        let url = BASE_URL + "/pet/get/" + params.petId
        let petData = await (await fetch(url)).json()
        setPetName(petData.name)
    }

    const setDateNow = () => {
        setDate(new Date())
    }

    const postAppointment = async (url: string, options: any) => {
        await fetch(url, options)
            .then(response => response.json())
            .then(_ => {
                console.error('Appointment created!')
                props.navigation.popToTop()

                props.navigation.navigate("HomeClient")
            })
    }

    const handleNext = () => {
        if (!description.length) {
            setError('Description is required!')
            return
        }

        if(!date)
        {
            setError('Select a date')
            return
        }
        setError('')

        let unsanitizedDate = date.toLocaleDateString()
        let sanitizedDate = unsanitizedDate.split('/')
        const body = {
            ...params.location,
            day: ('0' + sanitizedDate[1]).slice(-2),
            month: ('0' + sanitizedDate[0]).slice(-2),
            year: sanitizedDate[2].slice(-2),
        }

        let screeningQuestionsParams: ScreeningQuestionsParams = {
            ...params,
            petId: params.petId,
            description: description,
            date: body
        }
        console.log(params.petId);
        console.log(description);
        console.log(body);
        props.navigation.navigate("ScreeningQuestions", screeningQuestionsParams)
    
    }

    const handleSubmit = async () => {
        if (!description.length) {
            setError('Description is required!');
            return;
        }
    
        let unsanitizedDate = date.toLocaleDateString();
        let sanitizedDate = unsanitizedDate.split('/');
        const body = {
            description: description,
            sessionId: 1, // TODO: Hardcoded placeholder!
            ...params.location,
            day: ('0' + sanitizedDate[1]).slice(-2),
            month: ('0' + sanitizedDate[0]).slice(-2),
            year: sanitizedDate[2].slice(-2),
        };
    
        const url = `${BASE_URL}/appointment/create/${params.userId}/${params.petId}`;
    
        try {
            const response = await axios.post(url, body, {
                headers: { 'Content-Type': 'application/json' }
            });
            console.log('Appointment created:', response.data);
            props.navigation.popToTop();
            props.navigation.navigate("HomeClient");
        } catch (error) {
            console.error('Error creating appointment:', error);
            setError('Failed to create appointment. Please try again.');
        }
    };

    return (<SafeAreaView style={styles.createAppointmentBackground}>
        <ScrollView>
            <Text style={{...styles.header }}>Schedule Appointment {petName}</Text>
            <Text style={{paddingLeft: "25%"}}>Reason for appointment</Text>
            <Textfield placeholder='Give a quick summary of details' value={description} onChangeText={setDescription} style={{paddingLeft: "25%"}}/>
            <Text style={{ paddingTop: 50, paddingLeft: "35%"}}>Select Date</Text>

            <Button
                    onPress={() => setDateNow()} 
                    style={{ ...styles.mainButton, marginLeft: "10%"}}>
                    Set to ASAP
                </Button>


            

            <View style={{width: 250
                       }}>
            {showCalendar && ( // Only render the calendar if showCalendar is true
                    <View style={{paddingBottom:50}}>
                        <Calendar min={new Date()} date={date} onSelect={d => setDate(d)} style={{width: 250, height: 300, paddingBottom:50}}/>
                    </View>
                )}


                <Button
                    onPress={() => setShowCalendar(!showCalendar)} 
                    style={{ ...styles.mainButton, marginLeft: "10%"}}>
                    {showCalendar ? 'Hide Calendar' : 'Show Calendar'}
                </Button>
                </View>
                
            <View>
            </View>
        </ScrollView>
        <Text>{error}</Text>
        <View style={{paddingBottom: 50}}>
        {/* <Button style={{ ...styles.submitButton, }}
            onPress={handleSubmit}>
            <Text>Submit</Text>
        </Button> */}
        <Text>Date selected: {date.toLocaleDateString()}</Text>
        <Button style={{ ...styles.submitButton, }}
            onPress={handleNext}>
            <Text>Next</Text>
        </Button>
        </View>

    </SafeAreaView>)
}

export default CreateAppointmentScreen