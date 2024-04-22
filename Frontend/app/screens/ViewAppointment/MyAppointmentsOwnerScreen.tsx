import { SafeAreaView, ScrollView, View } from "react-native"
import ClientNavbar, { ClientNavbarParams } from "../../components/ClientNavbar"
import { MyAppointmentsOwnerScreenNavigationProp, MyAppointmentsScreenOwnerRouteProp } from '../../utils/props'
import axios from 'axios'
import { BASE_URL } from '../shared/Constants'
import { UserDetailsParams } from '../../utils/params'
import { Button, Card, Layout, Text } from '@ui-kitten/components'
import { styles } from '../shared/Styles'
import { colors } from '../shared/Colors'
import { LocationInterface } from '../shared/Interfaces'
import { appointment } from '@prisma/client'
import { useEffect, useState } from 'react'
import { useUser } from "../shared/UserContext"
import { useIsFocused } from '@react-navigation/native';

export interface MyAppointmentsOwnerScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface
}

const MyAppointmentsOwnerScreen = (props: { route: MyAppointmentsScreenOwnerRouteProp, navigation: MyAppointmentsOwnerScreenNavigationProp }) => {
    const { user } = useUser();
    const isFocused = useIsFocused();
    const params: MyAppointmentsOwnerScreenParams = user as MyAppointmentsOwnerScreenParams;
    const [appointments, setAppointments] = useState<any[]>([])

    const getAppointments = async () => {
        try {
            const ownerUrl = BASE_URL + "/owner/userId/" + params.userId;
            console.log("url: " + ownerUrl);
            const ownerResponse = await fetch(ownerUrl, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                },
            });

            let owner = await ownerResponse.json()
            const ownerId = owner.id;

            console.log("Params: " + params);
            const petUrl = BASE_URL + "/owner/pets/" + ownerId;
            console.log("url: " + petUrl);
            const petResponse = await fetch(petUrl, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                },
            });

            let tempPetList = await petResponse.json()
            let petIdList: string[] = []
            let allAppointments: any[] = [];

            for (let i = 0; i < tempPetList.length; i++) {
                petIdList.push(tempPetList[i].id)
            }

            await Promise.all(petIdList.map(async (petId) => {
                const url = BASE_URL + "/appointment/all/" + petId;
                console.log("url: " + url);
                const app = await fetch(url, {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                });

                const appointments = await app.json();
                allAppointments.push(...appointments);
            }));

            // Sort appointments by proximity to today's date.
            const now = new Date().getTime();
            allAppointments.sort((a: any, b: any) => {
                const timeA = new Date(a.time).getTime();
                const timeB = new Date(b.time).getTime();
                return Math.abs(timeA - now) - Math.abs(timeB - now);
            });

            setAppointments(allAppointments)
        } catch (error) {
            console.error('Error fetching data:', error);
        }
    }

    useEffect(() => {
        if (isFocused) {
            getAppointments();
        }
    }, [isFocused]);

    return (
        <SafeAreaView style={styles.background}>
            <Text style={{ marginRight: 'auto', marginLeft: 20, fontSize: 28, fontWeight: 'bold', }}>My Appointments</Text>
            <ScrollView>
                <View>
                    {appointments.map(appointment => <AppointmentCard key={appointment.aid} appointmentData={appointment} userId={params.userId} petName={appointment.pet.name} setAppointments={setAppointments}  props={props} />)}
                </View>
            </ScrollView>
            <ClientNavbar navigation={props.navigation} {...params} />
        </SafeAreaView>

    )
}

interface AppointmentCardParams {
    key: int,
    userId: string,
    appointmentData: appointment,
    petName: string,
    setAppointments: useState
}
const AppointmentCard = ({ userId, appointmentData, petName, setAppointments }: AppointmentCardParams) => {
    const [showDetails, setShowDetails] = useState(false)
    const cancelAppointment = async () => {
        await axios.delete(BASE_URL + "/appointment/delete/" + appointmentData.aid)
        console.log(`Appointment for ${petName} has been canceled.`)
        getAppointments(setAppointments)
    }

    const getAppointments = async (setAppointments) => {
        try {
            const ownerUrl = BASE_URL + "/owner/userId/" + userId;
            console.log("url: " + ownerUrl);
            const ownerResponse = await fetch(ownerUrl, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                },
            });

            let owner = await ownerResponse.json()
            const ownerId = owner.id;

            const petUrl = BASE_URL + "/owner/pets/" + ownerId;
            console.log("url: " + petUrl);
            const petResponse = await fetch(petUrl, {
                method: 'GET',
                headers: {
                    'Content-Type': 'application/json'
                },
            });

            let tempPetList = await petResponse.json()
            let petIdList: string[] = []
            let allAppointments: any[] = [];

            for (let i = 0; i < tempPetList.length; i++) {
                petIdList.push(tempPetList[i].id)
            }

            await Promise.all(petIdList.map(async (petId) => {
                const url = BASE_URL + "/appointment/all/" + petId;
                console.log("url: " + url);
                const app = await fetch(url, {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                });

                const appointments = await app.json();
                allAppointments.push(...appointments);
            }));

            setAppointments(allAppointments);
        } catch (error) {
            console.error('Error fetching data:', error);
        }
    }

    const gotoPayment = async () => {
            let paymentParams: PaymentStripeScreenParams = {
              ...props.route.params,
              appointmentData: appointmentData,

            }
            props.navigation.navigate('PaymentStripe', paymentParams);
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
                display: appointmentData.status === 'ACCEPTED' ? 'flex' : 'none'
            }} status='basic' size='small' onPress={cancelAppointment}>Cancel</Button>
            <Button style={{
                marginHorizontal: 4,
                display: appointmentData.status === 'PAYMENT' ? 'flex' : 'none'
            }} size='small' onPress={gotoPayment}><Text>Send Payment</Text></Button>
                <Button style={{
                    marginHorizontal: 4,
                }} size='small' onPress={() => setShowDetails(prevState => !prevState)}> <Text>{showDetails ? 'Hide' : 'View'} Details</Text></Button>

            </Layout>
        </Card >
    )
}


export default MyAppointmentsOwnerScreen
