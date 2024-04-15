import { NavigationProp, RouteProp } from '@react-navigation/native'
import { RootStackParamList, UserDetailsParams } from './params'

// RouteProp Type Definitions: Ensures that any parameters passed to the screen via the route are accessed in a type-safe manner.
export type WelcomeScreenRouteProp = RouteProp<RootStackParamList, 'Welcome'>
export type LoginScreenRouteProp = RouteProp<RootStackParamList, 'Login'>
export type SignUpScreenRouteProp = RouteProp<RootStackParamList, 'SignUp'>
export type LocationScreenRouteProp = RouteProp<RootStackParamList, 'Location'>
export type HomeScreenRouteProp = RouteProp<RootStackParamList, 'Home'>
export type ClientHomeScreenRouteProp = RouteProp<RootStackParamList, 'HomeClient'>
export type VetHomeScreenRouteProp = RouteProp<RootStackParamList, 'VetHome'>
export type CreateAppointmentScreenRouteProp = RouteProp<RootStackParamList, 'CreateAppointment'>
export type ViewNearbyVetsScreenRouteProp = RouteProp<RootStackParamList, 'ViewNearbyVets'>
export type MyAppointmentsScreenRouteProp = RouteProp<RootStackParamList, 'MyAppointments'>
export type MyAppointmentsScreenOwnerRouteProp = RouteProp<RootStackParamList, 'MyAppointmentsOwner'>
export type MyAppointmentsScreenVetRouteProp = RouteProp<RootStackParamList, 'MyAppointmentsVet'>
export type ViewAppointmentScreenRouteProp = RouteProp<RootStackParamList, 'ViewAppointment'>
export type MapScreenRouteProp = RouteProp<RootStackParamList, 'Map'>
export type SettingScreenRouteProp = RouteProp<RootStackParamList, 'Settings'>
export type ChangePasswordScreenRouteProp = RouteProp<RootStackParamList, 'ChangePassword'>
export type PaymentStripeScreenRouteProp = RouteProp<RootStackParamList, 'PaymentStripe'>
export type EditPetScreenRouteProp = RouteProp<RootStackParamList, 'EditPet'>
export type ViewPetScreenRouteProp = RouteProp<RootStackParamList, 'ViewPet'>
export type CreatePetScreenRouteProp = RouteProp<RootStackParamList, 'CreatePet'>
export type CreateReviewScreenRouteProp = RouteProp<RootStackParamList, 'CreateReview'>
export type PaymentSettingScreenRouteProp = RouteProp<RootStackParamList, 'PaymentSetting'>
export type Vet1ScreenRouteProp = RouteProp<RootStackParamList, 'VetScreening1'>
export type Vet2ScreenRouteProp = RouteProp<RootStackParamList, 'VetScreening2'>
export type AccountScreenRouteProp = RouteProp<RootStackParamList, 'Account'>
export type UserInfoScreenRouteProp = RouteProp<RootStackParamList, 'UserInfo'>
export type ChangeAddressScreenRouteProp = RouteProp<RootStackParamList, 'ChangeAddress'>
 
// NavigationProp Type Definitions: Ensures that all navigation actions are executed with the correct parameters and methods.
export type WelcomeScreenNavigationProp = NavigationProp<RootStackParamList, 'Welcome'>
export type LoginScreenNavigationProp = NavigationProp<RootStackParamList, 'Login'>
export type SignUpScreenNavigationProp = NavigationProp<RootStackParamList, 'SignUp'>
export type LocationScreenNavigationProp = NavigationProp<RootStackParamList, 'Location'>
export type HomeScreenNavigationProp = NavigationProp<RootStackParamList, 'Home'>
export type ClientHomeScreenNavigationProp = NavigationProp<RootStackParamList, 'HomeClient'>
export type VetHomeScreenNavigationProp = NavigationProp<RootStackParamList, 'VetHome'>
export type CreateAppointmentScreenNavigationProp = NavigationProp<RootStackParamList, 'CreateAppointment'>
export type ViewNearbyVetsScreenNavigationProp = NavigationProp<RootStackParamList, 'ViewNearbyVets'>
export type MyAppointmentsScreenNavigationProp = NavigationProp<RootStackParamList, 'MyAppointments'>
export type MyAppointmentsOwnerScreenNavigationProp = NavigationProp<RootStackParamList, 'MyAppointmentsOwner'>
export type MyAppointmentsVetScreenNavigationProp = NavigationProp<RootStackParamList, 'MyAppointmentsVet'>
export type ViewAppointmentScreenNavigationProp = NavigationProp<RootStackParamList, 'ViewAppointment'>
export type MapScreenNavigationProp = NavigationProp<RootStackParamList, 'Map'>
export type SettingScreenNavigationProp = NavigationProp<RootStackParamList, 'Settings'>
export type ChangePasswordScreenNavigationProp = NavigationProp<RootStackParamList, 'ChangePassword'>
export type PaymentStripeScreenNavigationProp = NavigationProp<RootStackParamList, 'PaymentStripe'>
export type EditPetScreenNavigationProp = NavigationProp<RootStackParamList, 'EditPet'>
export type ViewPetScreenNavigationProp = NavigationProp<RootStackParamList, 'ViewPet'>
export type CreatePetScreenNavigationProp = NavigationProp<RootStackParamList, 'CreatePet'>
export type CreateReviewScreenNavigationProp = NavigationProp<RootStackParamList, 'CreateReview'>
export type PaymentSettingScreenNavigationProp = NavigationProp<RootStackParamList, 'PaymentSetting'>
export type Vet1ScreenNavigationProp = NavigationProp<RootStackParamList, 'VetScreening1'>
export type Vet2ScreenNavigationProp = NavigationProp<RootStackParamList, 'VetScreening2'>
export type AccountScreenNavigationProp = NavigationProp<RootStackParamList, 'Account'>
export type ForgotPasswordScreenNavigationProp = NavigationProp<RootStackParamList, 'ForgotPassword'>
export type UserInfoScreenNavigationProp = NavigationProp<RootStackParamList, 'UserInfo'>;
export type ChangeAddressScreenNavigationProp = NavigationProp<RootStackParamList, 'ChangeAddress'>
