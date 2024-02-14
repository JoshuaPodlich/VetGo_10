import { pet } from '@prisma/client'
import { EditPetScreenParams } from '../screens/EditPet/EditPetScreen'
import { ViewAppointmentScreenParams } from '../screens/ViewAppointment/ViewAppointmentScreen'
import { MapScreenParams } from '../screens/Map/MapScreen'
import { LocationInterface } from '../screens/shared/Interfaces'
import { LocationScreenParams } from '../screens/Location/LocationScreen'
import { HomeScreenParams } from '../screens/Home/HomeScreen'
import { WelcomeScreenParams } from '../screens/WelcomeLogin/WelcomeScreen'
import { LoginScreenParams } from '../screens/WelcomeLogin/LoginScreen'
import { HomeClientScreenParams } from '../screens/Home/HomeClientScreen'
import { HomeVetScreenParams } from '../screens/Home/HomeVetScreen'
import { CreateAppointmentParams } from '../screens/CreateAppointment/CreateAppointmentScreen'
import { CreatePetScreenParams } from '../screens/CreatePet/CreatePetScreen'
import { MyAppointmentsScreenParams } from '../screens/ViewAppointment/MyAppointmentsScreen'
import { PaymentStripeScreenParams } from '../screens/PaymentStripe/PaymentStripeScreen'
import { SettingsScreenParams } from '../screens/SettingsScreen/SettingsScreen'
import { ViewNearbyVetsParams } from '../screens/ClientVetInteraction/ViewNearbyVetsScreen'

export type RootStackParamList = {
    Welcome: WelcomeScreenParams
    Login: LoginScreenParams
    SignUp: undefined
    Location: LocationScreenParams
    Home: HomeScreenParams
    HomeClient: HomeClientScreenParams
    VetHome: HomeVetScreenParams
    CreateAppointment: CreateAppointmentParams
    ViewNearbyVets: ViewNearbyVetsParams
    MyAppointments: MyAppointmentsScreenParams
    ViewAppointment: ViewAppointmentScreenParams
    Map: MapScreenParams
    Settings: SettingsScreenParams
    ChangePassword: undefined
    PaymentStripe: PaymentStripeScreenParams
    CreatePet: CreatePetScreenParams
    EditPet: EditPetScreenParams
    CreateReview: undefined
    PaymentSetting: undefined
    VetScreening1: undefined
    VetScreening2: undefined
    Account: undefined
}


export interface UserDetailsParams {
    user: UserDetails_User
    location?: UserDetails_Location
    pet?: UserDetails_Pet
}

export interface UserDetails_User {
        id: string
        firstName: string
        lastName: string
        telephone: string
        address: string
        userAccount: {
            id: string,
            username: string
            email: string
            password: string
            averageRating: number
            numReviewed: number
            tags: {
                id: string,
                xcellentService: number
                greatConversation: number
                attentive: number
                punctual: number
                knowledgeable: number
                cleanTid: number
            }
        }
        petList: pet[]
        status?: boolean
        vet_license?: number
}

export interface UserDetails_Location {
    latitude: number
    longitude: number
}

export interface UserDetails_Pet {
    pid: number
    name: string
    petType?: string
    fileLink?: []
    age: number
    weight: number
    height: number
    male?: boolean
}
