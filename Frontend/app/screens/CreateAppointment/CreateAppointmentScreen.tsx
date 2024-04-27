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

                props.navigation.navigate('Home', { ...params } as HomeScreenParams)
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

    const hardcodedCreateAppointment = async () => {
        // /appointment/create/{oid}/{pid}/{description}

        const fakeOid = '1'
        const fakePid = '1'
        const fakeDescription = 'random symptoms description'

//         Body: 
// {
//     "latitude": 100,
//     "longitude": 100,
//     "radius": 10,
//     "month": "01",
//     "day": "01",
//     "year": "01"
// }

        let body = {latitude: 100, longitude: 100, radius: 10, month: "01", day: "01", year: "01"}



        let url = BASE_URL + '/appointment/create/' + 1 + '/' + 1 + '/' + "test"
        const response = await fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(body)
        })

        console.log(response.status)
        //console.log(response.statusText)

        const responseBody = await response.json(); // Parse the response body into JSON
        console.log('Response:', response);
        console.log('Response Body:', responseBody);

    }

    const handleSubmit = async () => {
        if (!description.length) {
            setError('Description is required!')
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
        const options = {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(body),
        }
        const url = BASE_URL + '/appointment/create/' + params.userId + '/' + params.petId + '/' + description

        await postAppointment(url, options)
    }

    return (<SafeAreaView style={styles.createAppointmentBackground}>
        <ScrollView>
            <Text style={{...styles.header, paddingLeft: 30}}>Schedule Appointment {petName}</Text>
            <Text style={{paddingLeft: 50}}>Reason for appointment</Text>
            <Textfield placeholder='Give a quick summary of details' value={description} onChangeText={setDescription} />
            <Text style={{...styles.appointmentHeader, paddingTop: 50}}>Select Date</Text>

            <Button
                    onPress={() => setDateNow()} 
                    style={{ ...styles.mainButton}}>
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
                    style={{ ...styles.mainButton}}>
                    {showCalendar ? 'Hide Calendar' : 'Show Calendar'}
                </Button>
                </View>
                
            <View>
            </View>
        </ScrollView>
        <Text>{error}</Text>
        <View style={{paddingBottom: 50}}>
        <Button style={{ ...styles.submitButton, }}
            onPress={hardcodedCreateAppointment}>
            <Text>Submit</Text>
        </Button>
        <Button style={{ ...styles.submitButton, }}
            onPress={handleNext}>
            <Text>Next</Text>
        </Button>
        </View>

    </SafeAreaView>)
}

export default CreateAppointmentScreen