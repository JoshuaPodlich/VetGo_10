import { SafeAreaView, ScrollView, View } from "react-native"
import ClientNavbar, { ClientNavbarParams } from "../../components/ClientNavbar"
import { MyAppointmentsVetScreenNavigationProp, MyAppointmentsScreenVetRouteProp } from '../../utils/props'
import axios from 'axios'
import { BASE_URL } from '../shared/Constants'
import { UserDetailsParams } from '../../utils/params'
import { Button, Card, Layout, Text } from '@ui-kitten/components'
import { styles } from '../shared/Styles'
import { colors } from '../shared/Colors'
import { LocationInterface } from '../shared/Interfaces'
import { appointment } from '@prisma/client'
import { useEffect, useState } from 'react'

export interface MyAppointmentsVetScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
    vetId: int,
}

const MyAppointmentsVetScreen = (props: { route: MyAppointmentsScreenVetRouteProp, navigation: MyAppointmentsVetScreenNavigationProp }) => {
    const params: MyAppointmentsVetScreenParams = props.route.params!
    const [appointments, setAppointments] = useState<any[]>([])


    const getAppointments = async () => {
        const url = BASE_URL + "/appointment/all";
        const response = await fetch(url, {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
        }).then( response => {
            console.log('Response status:', response.status);
            console.log('Response status text:', response.statusText);
            console.log('Response raw:', response.text());

            const responseBody = response.json();
            const appointments = responseBody.all;
            console.log('Appointments:', appointments);

            setAppointments(appointments);
        });


    }

    useEffect(() => {
        console.log("useEffect")
        getAppointments()
        console.log('length' + appointments.length)
    }, [])

    return (
        <SafeAreaView style={styles.background}>
            <Text style={{ marginRight: 'auto', marginLeft: 20, fontSize: 28, fontWeight: 'bold', }}>My Appointments</Text>
            <ScrollView>
{/*                 <View> */}
{/*                     {appointments.map(appointment => <AppointmentCard key={appointment.aid} appointmentData={appointment} userId={params.userId} petName={appointment.pet.name} />)} */}
{/*                 </View> */}
            </ScrollView>
            <ClientNavbar navigation={props.navigation} {...params} />
        </SafeAreaView>

    )
}

interface AppointmentCardParams {
    userId: string,
    appointmentData: appointment,
    petName: string
}
const AppointmentCard = ({ userId, appointmentData, petName }: AppointmentCardParams) => {
    const [showDetails, setShowDetails] = useState(false)
    const cancelAppointment = async () => {
        console.log(appointmentData.aid, userId)
        await axios.put(BASE_URL + "/appointment/remove/" + appointmentData.aid + "/" + userId)
        console.error(`Appointment for ${petName} has been cancelled.`)
    }

    return (
        <Card style={{
            margin: 10,
            width: '100%',
        }}>
            <View>
                <Text category='h5'>{petName}</Text>
            </View>
            <Text category='label'>Scheduled for {appointmentData.time ?? ""}</Text>
            <Text category='s1' style={{
                marginVertical: 8,
                fontStyle: 'italic',
            }}>Status: {appointmentData.status ?? ""}</Text>
            <Text style={{
                marginVertical: 8,
                display: showDetails ? 'flex' : 'none'
            }}>Reason for visit: {appointmentData.description ?? ""}</Text>
            <Layout style={{
                flexDirection: 'row',
                justifyContent: 'flex-end',
                marginTop: 16,
            }}>
                <Button style={{
                    marginHorizontal: 4,
                }} status='basic' size='small' onPress={cancelAppointment}>Cancel</Button>
                <Button style={{
                    marginHorizontal: 4,
                }} size='small' onPress={() => setShowDetails(s => !s)}><Text>{showDetails ? 'Hide' : 'View'} Details</Text></Button>

            </Layout>
        </Card >
    )
}


export default MyAppointmentsVetScreen
