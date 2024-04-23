import { NavigationProp, RouteProp } from '@react-navigation/native'
import { RootStackParamList, HomeStackParamList, MyAppointmentsStackParamList, ViewNearbyVetsStackParamList, SettingsStackParamList } from './params'

// RouteProp Type Definitions: Ensures that any parameters passed to the screen via the route are accessed in a type-safe manner.
export type WelcomeScreenRouteProp = RouteProp<RootStackParamList, 'Welcome'>
export type LoginScreenRouteProp = RouteProp<RootStackParamList, 'Login'>
export type SignUpScreenRouteProp = RouteProp<RootStackParamList, 'SignUp'>
export type LocationScreenRouteProp = RouteProp<HomeStackParamList, 'Location'>
//export type HomeScreenRouteProp = RouteProp<HomeStackParamList, 'Home'>
export type ClientHomeScreenRouteProp = RouteProp<HomeStackParamList, 'HomeClient'>
//export type VetHomeScreenRouteProp = RouteProp<HomeStackParamList, 'VetHome'>
export type CreateAppointmentScreenRouteProp = RouteProp<HomeStackParamList, 'CreateAppointment'>
export type ViewNearbyVetsScreenRouteProp = RouteProp<ViewNearbyVetsStackParamList, 'ViewNearbyVets'>
export type MyAppointmentsScreenRouteProp = RouteProp<MyAppointmentsStackParamList, 'MyAppointments'>
export type MyAppointmentsScreenOwnerRouteProp = RouteProp<MyAppointmentsStackParamList, 'MyAppointmentsOwner'>
export type MyAppointmentsScreenVetRouteProp = RouteProp<MyAppointmentsStackParamList, 'MyAppointmentsVet'>
export type ViewAppointmentScreenRouteProp = RouteProp<MyAppointmentsStackParamList, 'ViewAppointment'>
export type MapScreenRouteProp = RouteProp<MyAppointmentsStackParamList, 'Map'>
export type SettingScreenRouteProp = RouteProp<SettingsStackParamList, 'Settings'>
export type ChangePasswordScreenRouteProp = RouteProp<SettingsStackParamList, 'ChangePassword'>
export type PaymentStripeScreenRouteProp = RouteProp<MyAppointmentsStackParamList, 'PaymentStripe'>
export type EditPetScreenRouteProp = RouteProp<HomeStackParamList, 'EditPet'>
export type ViewPetScreenRouteProp = RouteProp<HomeStackParamList, 'ViewPet'>
export type VetLoginNavigationProp = RouteProp<SettingsStackParamList, 'VetLogin'>
export type CreatePetScreenRouteProp = RouteProp<HomeStackParamList, 'CreatePet'>
export type CreateReviewScreenRouteProp = RouteProp<MyAppointmentsStackParamList, 'CreateReview'>
// export type PaymentSettingScreenRouteProp = RouteProp<SettingsStackParamList, 'PaymentSetting'>
// export type Vet1ScreenRouteProp = RouteProp<MyAppointmentsStackParamList, 'VetScreening1'>
// export type Vet2ScreenRouteProp = RouteProp<MyAppointmentsStackParamList, 'VetScreening2'>
export type AccountScreenRouteProp = RouteProp<SettingsStackParamList, 'Account'>
export type UserInfoScreenRouteProp = RouteProp<SettingsStackParamList, 'UserInfo'>
export type ChangeAddressScreenRouteProp = RouteProp<SettingsStackParamList, 'ChangeAddress'>
 
// NavigationProp Type Definitions: Ensures that all navigation actions are executed with the correct parameters and methods.
export type WelcomeScreenNavigationProp = NavigationProp<RootStackParamList, 'Welcome'>
export type LoginScreenNavigationProp = NavigationProp<RootStackParamList, 'Login'>
export type SignUpScreenNavigationProp = NavigationProp<RootStackParamList, 'SignUp'>
export type LocationScreenNavigationProp = NavigationProp<HomeStackParamList, 'Location'>
//export type HomeScreenNavigationProp = NavigationProp<RootStackParamList, 'Home'>
export type ClientHomeScreenNavigationProp = NavigationProp<HomeStackParamList, 'HomeClient'>
//export type VetHomeScreenNavigationProp = NavigationProp<RootStackParamList, 'VetHome'>
export type CreateAppointmentScreenNavigationProp = NavigationProp<HomeStackParamList, 'CreateAppointment'>
export type ViewNearbyVetsScreenNavigationProp = NavigationProp<ViewNearbyVetsStackParamList, 'ViewNearbyVets'>
export type MyAppointmentsScreenNavigationProp = NavigationProp<MyAppointmentsStackParamList, 'MyAppointments'>
export type MyAppointmentsOwnerScreenNavigationProp = NavigationProp<MyAppointmentsStackParamList, 'MyAppointmentsOwner'>
export type MyAppointmentsVetScreenNavigationProp = NavigationProp<MyAppointmentsStackParamList, 'MyAppointmentsVet'>
export type ViewAppointmentScreenNavigationProp = NavigationProp<MyAppointmentsStackParamList, 'ViewAppointment'>
export type MapScreenNavigationProp = NavigationProp<MyAppointmentsStackParamList, 'Map'>
export type SettingScreenNavigationProp = NavigationProp<SettingsStackParamList, 'Settings'>
export type ChangePasswordScreenNavigationProp = NavigationProp<SettingsStackParamList, 'ChangePassword'>
export type PaymentStripeScreenNavigationProp = NavigationProp<MyAppointmentsStackParamList, 'PaymentStripe'>
export type EditPetScreenNavigationProp = NavigationProp<HomeStackParamList, 'EditPet'>
export type ViewPetScreenNavigationProp = NavigationProp<HomeStackParamList, 'ViewPet'>
export type VetLoginScreenNavigationProp = NavigationProp<SettingsStackParamList, 'VetLogin'>
export type CreatePetScreenNavigationProp = NavigationProp<HomeStackParamList, 'CreatePet'>
export type CreateReviewScreenNavigationProp = NavigationProp<MyAppointmentsStackParamList, 'CreateReview'>
//export type PaymentSettingScreenNavigationProp = NavigationProp<RootStackParamList, 'PaymentSetting'>
// export type Vet1ScreenNavigationProp = NavigationProp<RootStackParamList, 'VetScreening1'>
// export type Vet2ScreenNavigationProp = NavigationProp<RootStackParamList, 'VetScreening2'>
export type AccountScreenNavigationProp = NavigationProp<SettingsStackParamList, 'Account'>
export type ForgotPasswordScreenNavigationProp = NavigationProp<SettingsStackParamList, 'ForgotPassword'>
export type UserInfoScreenNavigationProp = NavigationProp<SettingsStackParamList, 'UserInfo'>;
export type ChangeAddressScreenNavigationProp = NavigationProp<SettingsStackParamList, 'ChangeAddress'>
