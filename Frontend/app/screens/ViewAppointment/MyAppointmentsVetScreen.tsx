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
    location: LocationInterface
}

const MyAppointmentsVetScreen = (props: { route: MyAppointmentsScreenVetRouteProp, navigation: MyAppointmentsVetScreenNavigationProp }) => {
    const params: MyAppointmentsVetScreenParams = props.route.params;
    const [appointments, setAppointments] = useState<any[]>([])
    let vetid;


    const getAppointments = async () => {
        try {
            console.log("Params: " + params);
            const vetUrl = BASE_URL + "/vet/id/user/" + params.userId;
            console.log("url: " + vetUrl);
            const vetResponse = await fetch(vetUrl, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                },
            });

            console.log('Vet Response status:', vetResponse.status);
            console.log('Vet Response status text:', vetResponse.statusText);

            if (!vetResponse.ok) {
                throw new Error('Failed to fetch vet');
            }

            const vetResponseBody = await vetResponse.json();
            console.log('Vet Response body:', vetResponseBody); // Log entire response body

            vetid = vetResponseBody.id;

            const appointmentsUrl = BASE_URL + "/appointment/all/vet/" + vetid;
            const appointmentsResponse = await fetch(appointmentsUrl, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                },
            });

            console.log('Appointments Response status:', appointmentsResponse.status);
            console.log('Appointments Response status text:', appointmentsResponse.statusText);

            if (!appointmentsResponse.ok) {
                throw new Error('Failed to fetch appointments');
            }

            const appointmentsResponseBody = await appointmentsResponse.json();
            console.log('Appointments Response body:', appointmentsResponseBody); // Log entire response body

            setAppointments(appointmentsResponseBody);
        } catch (error) {
            console.error('Error fetching data:', error);
        }

    }

    useEffect(() => {
        console.log("useEffect")
        getAppointments()
        console.log('length' + appointments.length)
    }, [])

    const acceptedAppointments = appointments.filter(appointment => appointment.status === 'ACCEPTED');
    const waitingAppointments = appointments.filter(appointment => appointment.status === 'WAITING');

    return (
        <SafeAreaView style={styles.background}>
            <Text style={{ marginRight: 'auto', marginLeft: 20, fontSize: 28, fontWeight: 'bold', }}>My Appointments</Text>
            <ScrollView>
                <View>
                    {acceptedAppointments.map(appointment => <MyAppointmentCard key={appointment.aid} appointmentData={appointment} petName={appointment.pet.name} vetId={appointment.vet.id} setAppointments={setAppointments} />)}
                </View>
            </ScrollView>
            <Text style={{ marginRight: 'auto', marginLeft: 20, fontSize: 28, fontWeight: 'bold', }}>Available Appointments</Text>
            <ScrollView>
                <View>
                    {waitingAppointments.map(appointment => <AvailableAppointmentCard key={appointment.aid} appointmentData={appointment} petName={appointment.pet.name} vetId={appointment.vet.id} setAppointments={setAppointments} />)}
                </View>
            </ScrollView>
            <ClientNavbar navigation={props.navigation} {...params} />
        </SafeAreaView>

    )
}

interface MyAppointmentCardParams {
    key: int,
    appointmentData: appointment,
    petName: string,
    vetId: int,
    setAppointments: useState
}
interface AvailableAppointmentCardParams {
    key: int,
    appointmentData: appointment,
    petName: string,
    vetId: int,
    setAppointments: useState
}


const MyAppointmentCard = ({ key, appointmentData, petName, vetId, setAppointments }: MyAppointmentCardParams) => {
    const [showDetails, setShowDetails] = useState(false)

    const cancelAppointment = async () => {
        console.log(key)
        await axios.delete(BASE_URL + "/appointment/delete/" + appointmentData.aid)
        console.log(`Appointment for ${petName} has been cancelled.`)
        getAppointments(setAppointments)
    }

    const getScreeningResults = async () => {
        try {
            setShowDetails(appointmentData.screeningSession)
        } catch (error) {
            console.error('Error fetching data:', error);
        }
    }

    const getAppointments = async (setAppointments) => {
            try {
                const appointmentsUrl = BASE_URL + "/appointment/all/vet/" + vetId;
                const appointmentsResponse = await fetch(appointmentsUrl, {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                });

                if (!appointmentsResponse.ok) {
                    throw new Error('Failed to fetch appointments');
                }

                const appointmentsResponseBody = await appointmentsResponse.json();
                console.log('Appointments Response body:', appointmentsResponseBody);

                setAppointments(appointmentsResponseBody);
                getScreeningResults();
            } catch (error) {
                console.error('Error fetching data:', error);
            }
        };

    useEffect(() => {
        console.log("useEffectScreeningSResults")
        getScreeningResults()
    }, [])

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
                display: showDetails && appointmentData.screeningSession ? 'flex' : 'none'
            }}>Pet's Problem: {appointmentData.screeningSession ? appointmentData.screeningSession.result.problem : ""}</Text>
            <Text style={{
                marginVertical: 8,
                display: showDetails && appointmentData.screeningSession ? 'flex' : 'none'
            }}>Priority: {appointmentData.screeningSession ? appointmentData.screeningSession.result.resultPriority : ""}</Text>
            <Text style={{
                marginVertical: 8,
                display: showDetails && appointmentData.screeningSession ? 'flex' : 'none'
            }}>First Aid Advice: {appointmentData.screeningSession ? appointmentData.screeningSession.result.firstAidAdvice : ""}</Text>
            <Text style={{
                marginVertical: 8,
                display: showDetails && appointmentData.screeningSession ? 'flex' : 'none'
            }}>Latitude: {appointmentData.screeningSession ? appointmentData.latitude : ""}</Text>
            <Text style={{
                marginVertical: 8,
                display: showDetails && appointmentData.screeningSession ? 'flex' : 'none'
            }}>Longitude: {appointmentData.screeningSession ? appointmentData.longitude : ""}</Text>
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
                }} size='small' onPress={() => setShowDetails(prevState => !prevState)}> <Text>{showDetails ? 'Hide' : 'View'} Details</Text></Button>

            </Layout>
        </Card >
    )
}

const AvailableAppointmentCard = ({ key, appointmentData, petName, vetId, setAppointments }: AvailableAppointmentCardParams) => {
    const [showDetails, setShowDetails] = useState(false)

    const cancelAppointment = async () => {
        console.log(key)
        await axios.put(BASE_URL + "/appointment/cancel/" + appointmentData.aid)
        console.log(`Appointment for ${petName} has been cancelled.`)
        getAppointments(setAppointments);
    }
    const acceptAppointment = async () => {
        console.log("VetId: " + vetId)
        await axios.put(BASE_URL + "/appointment/accept/" + appointmentData.aid + "/" + vetId)
        console.log(`Appointment for ${petName} has been accepted.`)
        getAppointments(setAppointments);
    }

    const getAppointments = async (setAppointments) => {
        try {
            const appointmentsUrl = BASE_URL + "/appointment/all/vet/" + vetId;
            const appointmentsResponse = await fetch(appointmentsUrl, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                },
            });

            if (!appointmentsResponse.ok) {
                throw new Error('Failed to fetch appointments');
            }

            const appointmentsResponseBody = await appointmentsResponse.json();
            console.log('Appointments Response body:', appointmentsResponseBody);

            setAppointments(appointmentsResponseBody);
        } catch (error) {
            console.error('Error fetching data:', error);
        }
    };

     const getScreeningResults = async () => {
            try {
                setShowDetails(appointmentData.screeningSession)
            } catch (error) {
                console.error('Error fetching data:', error);
            }
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
            <Text style={{
                marginVertical: 8,
                display: showDetails && appointmentData.screeningSession ? 'flex' : 'none'
            }}>Pet's Problem: {appointmentData.screeningSession ? appointmentData.screeningSession.result.problem : ""}</Text>
            <Text style={{
                marginVertical: 8,
                display: showDetails && appointmentData.screeningSession ? 'flex' : 'none'
            }}>Priority: {appointmentData.screeningSession ? appointmentData.screeningSession.result.resultPriority : ""}</Text>
            <Text style={{
                marginVertical: 8,
                display: showDetails && appointmentData.screeningSession ? 'flex' : 'none'
            }}>First Aid Advice: {appointmentData.screeningSession ? appointmentData.screeningSession.result.firstAidAdvice : ""}</Text>
            <Text style={{
                marginVertical: 8,
                display: showDetails && appointmentData.screeningSession ? 'flex' : 'none'
            }}>Latitude: {appointmentData.screeningSession ? appointmentData.latitude : ""}</Text>
            <Text style={{
                marginVertical: 8,
                display: showDetails && appointmentData.screeningSession ? 'flex' : 'none'
            }}>Longitude: {appointmentData.screeningSession ? appointmentData.longitude : ""}</Text>
                <Button style={{
                    marginHorizontal: 4,
                }} size='small' onPress={() => setShowDetails(prevState => !prevState)}> <Text>{showDetails ? 'Hide' : 'View'} Details</Text></Button>
                <Button style={{
                    marginHorizontal: 4,
                }} status='basic' size='small' onPress={cancelAppointment}>Cancel</Button>
                <Button style={{
                    marginHorizontal: 4,
                }} size='small' onPress={acceptAppointment}>Accept</Button>

            </Layout>
        </Card >
    )
}


export default MyAppointmentsVetScreen
