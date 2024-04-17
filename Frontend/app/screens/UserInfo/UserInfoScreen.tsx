import React, { useEffect, useState } from 'react'
import { View, Text, TouchableOpacity, StyleSheet } from 'react-native';
import { UserInfoScreenNavigationProp, UserInfoScreenRouteProp } from '../../utils/props'
import { styles } from '../shared/Styles';
import { colors } from '../shared/Colors';
import { BASE_URL } from "../shared/Constants"
import axios from 'axios';

export interface UserInfoScreenParams {
    userId: string,
    userIsVet: boolean,
}

interface UserInfo {
    email: string;
    firstName: string;
    lastName: string;
    address: string;
    telephone: string;
    role: string;
    numPets?: number;
    numReviews?: number;
    vetLicense?: string;
}

const getUserInfo = async (userId: string) => {
    try {
        const response = await axios.get(`${BASE_URL}/user/info/${userId}`);
        
        return response.data;
    } catch (error: any) {
        console.error("Error fetching user info:", error.response ? error.response.data : error.message);
        throw error;
    }
}

const formatPhoneNumber = (phoneNumberString: string) => {
    var cleaned = ('' + phoneNumberString).replace(/\D/g, '');
    var match = cleaned.match(/^(\d{3})(\d{3})(\d{4})$/);
    if (match) {
        return '(' + match[1] + ') ' + match[2] + '-' + match[3];
    }
    return null;
}

function UserInfoScreen(props: { route: UserInfoScreenRouteProp, navigation: UserInfoScreenNavigationProp }) {
    const [userInfo, setUserInfo] = useState<UserInfo | null>(null);
    const params: UserInfoScreenParams = props.route.params
    
    useEffect(() => {
        getUserInfo(params.userId)
            .then(data => setUserInfo(data))
            .catch(error => {
                console.error("Failed to load user info", error);
            });
    }, [params.userId]);

    if (!userInfo) {
        return (
            <View style={userStyles.container}>
                <Text style={{ fontSize: 30, marginTop: 30, color: colors.black, paddingBottom: 20}}  >
                    Loading...
                </Text>
            </View>
        );
    }

    return (
        <View style={userStyles.container}>
            <Text style={{ fontSize: 30, fontWeight: "bold", marginTop: 30, color: colors.action_Orange, paddingBottom: 20}}  >
                            User Info</Text>
            <View style={userStyles.userInfoContainer}>
                <Text style={userStyles.userInfoText}>Email: {userInfo.email}</Text>
                <Text style={userStyles.userInfoText}>First Name: {userInfo.firstName}</Text>
                <Text style={userStyles.userInfoText}>Last Name: {userInfo.lastName}</Text>
                <Text style={userStyles.userInfoText}>Address: {userInfo.address}</Text>
                <Text style={userStyles.userInfoText}>Phone Number: {formatPhoneNumber(userInfo.telephone)}</Text>

                <Text style={userStyles.userInfoText}>Role: {userInfo.role}</Text>
                {userInfo.role === 'Pet Owner' &&
                    <Text style={userStyles.userInfoText}>Number of Pets: {userInfo.numPets}</Text>
                }
                {userInfo.role === 'Veterinarian' &&
                    <Text style={userStyles.userInfoText}>Number of Reviews: {userInfo.numReviews}</Text> &&
                    <Text style={userStyles.userInfoText}>Vet License: {userInfo.vetLicense}</Text>
                }
            </View>
            <TouchableOpacity style={{...styles.mainButton, marginTop: 50}} onPress={() => props.navigation.goBack()}>
                <Text style={userStyles.returnButtonText}>Return</Text>
            </TouchableOpacity>
        </View>
    );
}

const userStyles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: 'center',
        padding: 20
    },
    title: {
        fontSize: 30,
        fontWeight: 'bold',
        marginBottom: 20,
    },
    userInfoContainer: {
        marginBottom: 20,
    },
    userInfoText: {
        fontSize: 18,
        marginBottom: 5,
        flexShrink: 1
    },
    returnButton: {
        backgroundColor: 'blue',
        paddingVertical: 10,
        paddingHorizontal: 20,
        borderRadius: 10,
    },
    returnButtonText: {
        color: '#fff',
        fontSize: 18,
        fontWeight: 'bold',
    },
});

export default UserInfoScreen;
