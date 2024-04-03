import { useState, useEffect } from "react"
import { SafeAreaView, ScrollView, Text, View } from "react-native"
import { styles } from "../shared/Styles"
import Textfield from "../../components/Textfield"
import { Button, Calendar } from "@ui-kitten/components"
import { colors } from "../shared/Colors"
import { BASE_URL } from "../shared/Constants"
import { LocationInterface } from "../shared/Interfaces"
import { HomeScreenParams } from "../Home/HomeScreen"

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


    useEffect(() => {
        fetchAndHydratePetData()
    }, [])

    const fetchAndHydratePetData = async () => {
        let url = BASE_URL + "/pet/get/" + params.petId
        let petData = await (await fetch(url)).json()
        setPetName(petData.name)
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
            <Text style={styles.header}>Schedule Appointment for {petName}</Text>
            <Text>Reason for appointment</Text>
            <Textfield placeholder='Please be as descriptive as possible.' value={description} onChangeText={setDescription} />
            <Text style={styles.header}>Select Date</Text>
            <View>
                <Calendar min={new Date()} date={date} onSelect={d => setDate(d)} />
            </View>
            <View>
            </View>
        </ScrollView>
        <Text>{error}</Text>
        <Button style={{ ...styles.submitButton }}
            onPress={handleSubmit}>
            <Text>Submit</Text>
        </Button>

    </SafeAreaView>)
}

export default CreateAppointmentScreen