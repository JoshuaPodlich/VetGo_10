import * as React from 'react'
import { BottomNavigation, BottomNavigationTab } from "@ui-kitten/components"
import { useState, useEffect } from "react"
import { FontAwesome5 } from '@expo/vector-icons'
import { styles } from "../screens/shared/Styles"
import { NavigationProp } from '@react-navigation/native'
import { RootStackParamList, UserDetailsParams } from '../utils/params'
import { LocationInterface } from '../screens/shared/Interfaces'
import { HomeScreenParams } from '../screens/Home/HomeScreen'
import { MyAppointmentsScreenParams } from '../screens/ViewAppointment/MyAppointmentsScreen'
import { SettingsScreenParams } from '../screens/SettingsScreen/SettingsScreen'
import { colors } from '../screens/shared/Colors'
import { ViewNearbyVetsParams } from '../screens/ClientVetInteraction/ViewNearbyVetsScreen'
import { StyleSheet } from 'react-native'
import _ from 'lodash';

export interface ClientNavbarParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
    navigation: NavigationProp<RootStackParamList, any>
}
// TODO: added another navbar for vets
const ClientNavbar: React.FC<ClientNavbarParams> = ({ userId, userIsVet, location, navigation }) => {
    const [selectedIndex, setSelectedIndex] = useState(0)
    
    if (!userId) {
        console.log('Client Navbar is missing user details')
    }

    useEffect(() => {
        switch (navigation.getState().routes[navigation.getState().routes.length - 1].name) {
            case "HomeClient":
                setSelectedIndex(0)
                break;
            case "MyAppointments":
                setSelectedIndex(1)
                break;
            case "ViewNearbyVets":
                setSelectedIndex(2)
                break;
            case "Settings":
                setSelectedIndex(3)
                break;
            default:
                break;
        }
    }, [navigation]);

    // TODO: Missing appointmentid
    let myAppointmentsParams: MyAppointmentsScreenParams = {
        userId: userId,
        userIsVet: userIsVet,
        location: location,
    }

    const handleTabSelect = _.debounce((index) => {
        console.log(`Navigating to index: ${index}`);
        setSelectedIndex(index);
        const params = { userId, userIsVet, location };
    
        switch (index) {
            case 0:
                navigation.navigate("HomeClient", params);
                break;
            case 1:
                navigation.navigate("MyAppointments", myAppointmentsParams);
                break;
            case 2:
                navigation.navigate("ViewNearbyVets", params);
                break;
            case 3:
                navigation.navigate("Settings", params);
                break;
        }
    }, 400, { leading: true, trailing: false })

    return (
<BottomNavigation
    style={stylesbottom.bottomNavigation}
    selectedIndex={selectedIndex}
    onSelect={handleTabSelect}
>
    <BottomNavigationTab
        title='Pets'
        icon={<FontAwesome5 name='dog' color={selectedIndex === 0 ? colors.blue : colors.darkGrey} size={24} />}
        style={[stylesbottom.bottomNavigationTab, selectedIndex === 0 && stylesbottom.selectedTab]}
    />
    <BottomNavigationTab
        title='Appointments'
        icon={<FontAwesome5 name='calendar-alt' color={selectedIndex === 1 ? colors.blue : colors.darkGrey} size={24} />}
        style={[stylesbottom.bottomNavigationTab, selectedIndex === 1 && stylesbottom.selectedTab]}
    />
    <BottomNavigationTab
        title='Veterinarians'
        icon={<FontAwesome5 name='user-md' color={selectedIndex === 2 ? colors.blue : colors.darkGrey} size={24} />}
        style={[stylesbottom.bottomNavigationTab, selectedIndex === 2 && stylesbottom.selectedTab]}
    />
    <BottomNavigationTab
        title='Settings'
        icon={<FontAwesome5 name='cog' color={selectedIndex === 3 ? colors.blue : colors.darkGrey} size={24} />}
        style={[stylesbottom.bottomNavigationTab, selectedIndex === 3 && stylesbottom.selectedTab]}
    />
</BottomNavigation>

    )
}

const stylesbottom = StyleSheet.create({

    bottomNavigation: {
        flexDirection: 'row',
        justifyContent: 'space-evenly',
        backgroundColor: 'white', // Adjust as needed
    },
    bottomNavigationTab: {
        // Add general styles for each tab as needed
    },
    selectedTab: {
        // Add specific styles for selected tab
    },
})

export default ClientNavbar
