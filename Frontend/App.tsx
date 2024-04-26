import { NavigationContainer, getFocusedRouteNameFromRoute } from '@react-navigation/native'
import { createNativeStackNavigator } from '@react-navigation/native-stack'
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { ApplicationProvider, IconRegistry } from '@ui-kitten/components'
import * as eva from '@eva-design/eva'
import { EvaIconsPack } from "@ui-kitten/eva-icons"
import { StripeProvider } from '@stripe/stripe-react-native'
import { useState} from "react"

import WelcomeScreen from "./app/screens/WelcomeLogin/WelcomeScreen"
import LoginScreen from "./app/screens/WelcomeLogin/LoginScreen"
import SignUpScreen from "./app/screens/SignUp/SignUpScreen"

import HomeScreen from "./app/screens/Home/HomeScreen"

import HomeVetScreen from "./app/screens/Home/HomeVetScreen"
import HomeClientScreen from "./app/screens/Home/HomeClientScreen"


import CalendarScreen from "./app/screens/Calendar/CalendarScreen"

import MapScreen from "./app/screens/Map/MapScreen"
import ViewAppointmentScreen from "./app/screens/ViewAppointment/ViewAppointmentScreen"
import ViewAppointmentClientScreen from "./app/screens/ViewAppointment/ViewAppointmentClientScreen"
import SettingsScreen from "./app/screens/SettingsScreen/SettingsScreen"
import ChangePasswordScreen from "./app/screens/ChangePassword/ChangePasswordScreen"
import UserInfoScreen from './app/screens/UserInfo/UserInfoScreen'

import PaymentStripeScreen from "./app/screens/PaymentStripe/PaymentStripeScreen"
import CreatePetScreen from "./app/screens/CreatePet/CreatePetScreen"
import EditPetScreen from "./app/screens/EditPet/EditPetScreen"
import ViewPet from "./app/screens/ViewPet/ViewPet"
import LocationScreen from "./app/screens/Location/LocationScreen"

import CreateReviewScreen from "./app/screens/CreateReview/CreateReviewScreen"
import CreateReviewClientScreen from "./app/screens/CreateReview/CreateReviewClientScreen"
import CreateReviewVetScreen from "./app/screens/CreateReview/CreateReviewVetScreen"

import AccountScreen from './app/screens/Account/AccountScreen'
import CreateAppointmentScreen from './app/screens/CreateAppointment/CreateAppointmentScreen'
import ViewAppointmentVetScreen from './app/screens/ViewAppointment/ViewAppointmentVetScreen'
import VetDuringAppointment1Screen from './app/screens/DuringAppointment/VetDuringAppointment1Screen'
import VetDuringAppointment2Screen from './app/screens/DuringAppointment/VetDuringAppointment2Screen'
import VetAddChargesScreen from './app/screens/VetAddCharges/VetAddChargesScreen'
//import MyAppointmentsScreen from './app/screens/ViewAppointment/MyAppointmentsScreen'
import MyAppointmentsOwnerScreen from './app/screens/ViewAppointment/MyAppointmentsOwnerScreen'
import MyAppointmentsVetScreen from './app/screens/ViewAppointment/MyAppointmentsVetScreen'
import ViewNearbyVetsScreen from './app/screens/ClientVetInteraction/ViewNearbyVetsScreen'
import VetDuringAppointmentMedicalHistoryScreen from './app/screens/DuringAppointment/VetDuringAppointmentMedicalHistoryScreen'
import AddtionalPetInfo from './app/screens/AdditionalPetInfo/AddtionalPetInfo'
import EmergencyScreen from './app/screens/Emergency/EmergencyScreen'
import ForgotPaswordScreen from './app/screens/ForgotPassword/ForgotPasswordScreen'
import VetLoginScreen from './app/screens/VetLogin/VetLoginScreen'
import { NotificationProvider } from './app/screens/shared/NotificationContext'
import ScreeningQuestionsScreen from './app/screens/ScreeningQuestions/ScreeningQuestionsScreen'
import ChangeAddressScreen from './app/screens/Location/AddressLocation'
import { AuthProvider } from './app/screens/shared/AuthContext';
import { RootStackParamList, HomeStackParamList, MyAppointmentsStackParamList, ViewNearbyVetsStackParamList, SettingsStackParamList, TabParamList } from './app/utils/params';
import { UserProvider, useUser } from './app/screens/shared/UserContext';
import { Text, View } from 'react-native';
import { FontAwesome5 } from '@expo/vector-icons'
import { colors } from "./app/screens/shared/Colors"
import { Style } from 'victory-native';

// const Stack = createNativeStackNavigator()

// export default function App() {
//     return (
//         <>
//             <StripeProvider
//                 publishableKey="pk_test_51NuSFtAKQypxdsPLEN8Es2E2rsjiHIoc1HciGPGkGJWlLXh7Swe6BzFmjatoB6Rzz3YMjrOzzpaWQGPv803HNRF100zjr9j19s"
//                 urlScheme="your-url-scheme" // required for 3D Secure and bank redirects
//                 merchantIdentifier="merchant.com.{{YOUR_APP_NAME}}" // required for Apple Pay
//             >
//                 <IconRegistry icons={EvaIconsPack} />
//                 <ApplicationProvider {...eva} theme={eva.light}>
//                     <NotificationProvider>
//                         <NavigationContainer>
//                             <Stack.Navigator
//                                 screenOptions={{animation: 'none'}}
//                             >
//                                 <Stack.Screen name="Welcome" component={WelcomeScreen as React.FC} options={{ headerShown: false }} />
//                                 <Stack.Screen name="Login" component={LoginScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="SignUp" component={SignUpScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="Location" component={LocationScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="Home" component={HomeScreen as React.FC} options={{ title: "", headerShown: false }} />
//                                 <Stack.Screen name="HomeClient" component={HomeClientScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="HomeVet" component={HomeVetScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="CreateAppointment" component={CreateAppointmentScreen as React.FC}
//                                     options={{ title: "" }} />
//                                 <Stack.Screen name="MyAppointments" component={MyAppointmentsScreen as React.FC}
//                                     options={{ title: "" }} />
//                                 <Stack.Screen name="MyAppointmentsOwner" component={MyAppointmentsOwnerScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="MyAppointmentsVet" component={MyAppointmentsVetScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="CalendarScreen" component={CalendarScreen} options={{ title: "" }} />
//                                 <Stack.Screen name="ViewAppointment" component={ViewAppointmentScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="ViewAppointmentClient" component={ViewAppointmentClientScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="ViewAppointmentVet" component={ViewAppointmentVetScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="ViewNearbyVets" component={ViewNearbyVetsScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="Map" component={MapScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="Settings" component={SettingsScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="ChangePassword" component={ChangePasswordScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="UserInfo" component={UserInfoScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="PaymentStripe" component={PaymentStripeScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="EditPet" component={EditPetScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="ViewPet" component={ViewPet as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="CreatePet" component={CreatePetScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="CreateReview" component={CreateReviewScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="CreateReviewClient" component={CreateReviewClientScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="CreateReviewVet" component={CreateReviewVetScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="VetAddCharges" component={VetAddChargesScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="AdditionalPetInfo" component={AddtionalPetInfo as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="VetDuringAppointmentMedicalHistory" component={VetDuringAppointmentMedicalHistoryScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="VetDuringAppointment1" component={VetDuringAppointment1Screen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="VetDuringAppointment2" component={VetDuringAppointment2Screen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="Account" component={AccountScreen as React.FC} options={{ title: "" }} />
//                                 <Stack.Screen name="Emergency" component={EmergencyScreen} options={{ title: "Emergency" }} />
//                                 <Stack.Screen name="forgotPassword" component={ForgotPaswordScreen} options={{ title: "forgotPassword" }} />
//                                 <Stack.Screen name="VetLogin" component={VetLoginScreen} options={{ title: "VetLogin" }} />
//                                 <Stack.Screen name="ScreeningQuestions" component={ScreeningQuestionsScreen as React.FC} options={{title: ""}} />
//                                 <Stack.Screen name="ChangeAddress" component={ChangeAddressScreen as React.FC} options={{title: ""}} />
//                             </Stack.Navigator>
//                         </NavigationContainer>
//                     </NotificationProvider>    
//                 </ApplicationProvider>
//             </StripeProvider>
//         </>
//     )
// }

const AuthStack = createNativeStackNavigator<RootStackParamList>();
function AuthStackScreen() {
  return (
    <AuthStack.Navigator screenOptions={{animation: 'none'}}>
        <AuthStack.Screen name="Welcome" component={WelcomeScreen as React.FC} options={{ headerShown: false }} />
        <AuthStack.Screen name="Login" component={LoginScreen as React.FC} options={{ title: "" }} />
        <AuthStack.Screen name="SignUp" component={SignUpScreen as React.FC} options={{ title: "" }} />
        <AuthStack.Screen name="Emergency" component={EmergencyScreen} options={{ title: "Emergency" }} />
        <AuthStack.Screen name="ForgotPassword" component={ForgotPaswordScreen as React.FC} options={{ title: "forgotPassword" }} />
    </AuthStack.Navigator>
  );
}

const HomeStack = createNativeStackNavigator<HomeStackParamList>();
function HomeStackScreen() {
  return (
    <HomeStack.Navigator screenOptions={{animation: 'slide_from_right'}}>
        <HomeStack.Screen name="HomeClient" component={HomeClientScreen} options={{ title: "" }}/>
        <HomeStack.Screen name="CreateAppointment" component={CreateAppointmentScreen as React.FC} options={{ title: "" }} />
        <HomeStack.Screen name="EditPet" component={EditPetScreen as React.FC} options={{ title: "" }} />
        <HomeStack.Screen name="ViewPet" component={ViewPet as React.FC} options={{ title: "" }} />
        <HomeStack.Screen name="CreatePet" component={CreatePetScreen as React.FC} options={{ title: "" }} />
        <HomeStack.Screen name="AdditionalPetInfo" component={AddtionalPetInfo as React.FC} options={{ title: "" }} />
        <HomeStack.Screen name="Location" component={LocationScreen as React.FC} options={{ title: "" }} />
        <HomeStack.Screen name="ScreeningQuestions" component={ScreeningQuestionsScreen as React.FC} options={{title: ""}} />
        <HomeStack.Screen name="Emergency" component={EmergencyScreen} options={{ title: "Emergency" }} />
    </HomeStack.Navigator>
  );
}

const MyAppointmentsStack = createNativeStackNavigator<MyAppointmentsStackParamList>();
function MyAppointmentsStackScreen() {
    const { user } = useUser();
    return (
        <MyAppointmentsStack.Navigator screenOptions={{animation: 'slide_from_right'}}>
            {/* <MyAppointmentsStack.Screen name="MyAppointments" component={MyAppointmentsScreen as React.FC} options={{ title: "" }}/>
            <MyAppointmentsStack.Screen name="MyAppointmentsOwner" component={MyAppointmentsOwnerScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="MyAppointmentsVet" component={MyAppointmentsVetScreen as React.FC} options={{ title: "" }} /> */}
            <MyAppointmentsStack.Screen
                name={user?.userIsVet ? 'MyAppointmentsVet' : 'MyAppointmentsOwner'}
                component={user?.userIsVet ? MyAppointmentsVetScreen as React.FC : MyAppointmentsOwnerScreen as React.FC}
                options={{ title: "" }}
            />
            <MyAppointmentsStack.Screen name="CalendarScreen" component={CalendarScreen} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="ViewAppointment" component={ViewAppointmentScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="ViewAppointmentClient" component={ViewAppointmentClientScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="ViewAppointmentVet" component={ViewAppointmentVetScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="Map" component={MapScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="PaymentStripe" component={PaymentStripeScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="CreateReview" component={CreateReviewScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="CreateReviewClient" component={CreateReviewClientScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="CreateReviewVet" component={CreateReviewVetScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="VetAddCharges" component={VetAddChargesScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="VetDuringAppointmentMedicalHistory" component={VetDuringAppointmentMedicalHistoryScreen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="VetDuringAppointment1" component={VetDuringAppointment1Screen as React.FC} options={{ title: "" }} />
            <MyAppointmentsStack.Screen name="VetDuringAppointment2" component={VetDuringAppointment2Screen as React.FC} options={{ title: "" }}  />
            <MyAppointmentsStack.Screen name="ScreeningQuestions" component={ScreeningQuestionsScreen as React.FC} options={{title: ""}} />
        </MyAppointmentsStack.Navigator>
    );
}

const ViewNearbyVetsStack = createNativeStackNavigator<ViewNearbyVetsStackParamList>();
function ViewNearbyVetsStackScreen() {
    return (
        <ViewNearbyVetsStack.Navigator initialRouteName="ViewNearbyVets" screenOptions={{animation: 'slide_from_right'}}>
            <ViewNearbyVetsStack.Screen name="ViewNearbyVets" component={ViewNearbyVetsScreen as React.FC} options={{ title: "" }} />
        </ViewNearbyVetsStack.Navigator>
    );
}

const SettingsStack = createNativeStackNavigator<SettingsStackParamList>();
function SettingsStackScreen() {
    return (
        <SettingsStack.Navigator initialRouteName="Settings" screenOptions={{animation: 'slide_from_right'}}>
            <SettingsStack.Screen name="Settings" component={SettingsScreen as React.FC} options={{ title: "" }}/>
            <SettingsStack.Screen name="ChangePassword" component={ChangePasswordScreen as React.FC} options={{ title: "" }} />
            <SettingsStack.Screen name="UserInfo" component={UserInfoScreen as React.FC} options={{ title: "" }} />
            <SettingsStack.Screen name="Account" component={AccountScreen as React.FC} options={{ title: "" }} />
            <SettingsStack.Screen name="VetLogin" component={VetLoginScreen as React.FC} options={{ title: "VetLogin" }} />
            <SettingsStack.Screen name="ChangeAddress" component={ChangeAddressScreen as React.FC} options={{title: ""}} />
        </SettingsStack.Navigator>
    );
}

// Somewhat unfortunate workaround: If there is a route name (i.e., not an empty string), check to see if it is one of the initial screens in tabs.
// If there is no route name, check to see that the preceeding route's name in the hierarchy is a tab; if it's not a tab, the preceeding route
// in the hierarchy is some other stack screen.
// 'flex': Show bottom tabs
// 'none' Do not show bottom tabs
function getTabBarVisibility(route: any) {
    //console.log("Complete Route Object:", JSON.stringify(route, null, 2));
    const routeName = getFocusedRouteNameFromRoute(route) ?? '';
    /// console.log(route.name);
    if ((routeName == 'HomeClient' || routeName == 'Settings' || routeName == 'MyAppointmentsOwner' || routeName == 'MyAppointmentsVet' || routeName == 'ViewNearbyVets') 
        || (routeName == "" && (route.name == 'SettingsTab' || route.name == 'HomeTab' || route.name == 'ViewNearbyVetsTab' || route.name == 'MyAppointmentsTab'))) {
        return 'flex';
    }
    return 'none';
}

const Tab = createBottomTabNavigator<TabParamList>();
function MyTabs() {
  return (
    <Tab.Navigator screenOptions={({ route }) => ({
            headerShown: false,
            tabBarStyle: { display: getTabBarVisibility(route), height: 60 },
        })}
    >
        <Tab.Screen name="HomeTab" component={HomeStackScreen} options={{ headerShown: false, tabBarIcon: ({ focused }) => (
            <View style={{alignItems:'center'}}>
                <FontAwesome5
                name="dog"
                style={{
                    width: 30,
                    height: 30,
                    color: focused ? colors.hoverIcon : colors.nonHoverIcon,
                }}
                size={28}
                />
                <Text
                    style={{
                        color: focused ? colors.hoverIcon  : colors.nonHoverIcon,
                        fontSize: 14,
                        fontWeight: '600'
                    }}
                    >
                    Pets
                </Text>
            </View>
            ),
            tabBarLabel: () => null,
        }} />
        <Tab.Screen name="MyAppointmentsTab" component={MyAppointmentsStackScreen} options={{ headerShown: false, tabBarIcon: ({ focused }) => (
            <View style={{alignItems:'center'}}>
                <FontAwesome5
                name="calendar-alt"
                style={{
                    width: 30,
                    height: 30,
                    color: focused ? colors.hoverIcon : colors.nonHoverIcon,
                }}
                size={28}
                />
                <Text
                    style={{
                        color: focused ? colors.hoverIcon  : colors.nonHoverIcon,
                        fontSize: 14,
                        fontWeight: '600'
                    }}
                    >
                    Appointments
                </Text>
            </View>
            ),
            tabBarLabel: () => null,
        }} />
        <Tab.Screen name="ViewNearbyVetsTab" component={ViewNearbyVetsStackScreen} options={{ headerShown: false, tabBarIcon: ({ focused }) => (
            <View style={{alignItems:'center'}}>
                <FontAwesome5
                name="user-md"
                style={{
                    width: 30,
                    height: 30,
                    color: focused ? colors.hoverIcon : colors.nonHoverIcon,
                }}
                size={28}
                />
                <Text
                    style={{
                        color: focused ? colors.hoverIcon  : colors.nonHoverIcon,
                        fontSize: 14,
                        fontWeight: '600'
                    }}
                    >
                    Nearby Vets
                </Text>
            </View>
            ),
            tabBarLabel: () => null,
        }} />
        <Tab.Screen name="SettingsTab" component={SettingsStackScreen} options={{ headerShown: false, tabBarIcon: ({ focused }) => (
            <View style={{alignItems:'center'}}>
                <FontAwesome5
                name="cog"
                style={{
                    width: 30,
                    height: 30,
                    color: focused ? colors.hoverIcon : colors.nonHoverIcon,
                }}
                size={28}
                />
                <Text
                    style={{
                        color: focused ? colors.hoverIcon  : colors.nonHoverIcon,
                        fontSize: 14,
                        fontWeight: '600'
                    }}
                    >
                    Settings
                </Text>
            </View>
            ),
            tabBarLabel: () => null,
        }} />
    </Tab.Navigator>
  );
}

const Stack = createNativeStackNavigator<any>();

export default function App() {
    const [isAuthenticated, setIsAuthenticated] = useState(false);
    const decideInitialRoute = () => {
        return isAuthenticated ? 'MainTab' : 'AuthScreen';
    };
    return (
        <>
            <StripeProvider
                publishableKey="pk_test_51P8VPg07ONbEpFU1A1piUVMM9alkm5OGcgPooetb4tFfva7rYBRxkgth4gUXIM9otdRf3FzrFybNFn19lt5pWeaQ00b1F3dbz0"
                urlScheme="your-url-scheme" // required for 3D Secure and bank redirects
                merchantIdentifier="merchant.com.{{YOUR_APP_NAME}}" // required for Apple Pay
            >
                <IconRegistry icons={EvaIconsPack} />
                <ApplicationProvider {...eva} theme={eva.light}>
                    {/*<NavigationContainer onStateChange={(state) => console.log('New navigation state', state)}>*/}
                    <NavigationContainer>
                        <UserProvider>
                            <AuthProvider>
                                <NotificationProvider>
                                    <Stack.Navigator initialRouteName={decideInitialRoute()} >
                                        <Stack.Screen name="AuthScreen" component={AuthStackScreen} options={{ headerShown: false }} />
                                        <Stack.Screen name="MainTab" component={MyTabs} options={{ headerShown: false }} />
                                        {/* other screens */}
                                    </Stack.Navigator>
                                </NotificationProvider>  
                            </AuthProvider>
                        </UserProvider>
                    </NavigationContainer>
                </ApplicationProvider>
            </StripeProvider>
        </>
    )
}
