import React, { useEffect } from 'react';
import { View, Text, TouchableOpacity, StyleSheet } from 'react-native';
import { styles } from '../shared/Styles';
import { colors } from '../shared/Colors';
import { BASE_URL } from '../shared/Constants';

export interface UserInfoScreenParams {
    userId: string,
    userIsVet: boolean,
}

// Hardcoded user info for demonstration
const userInfo = {
    email: 'not added',
    userAddress: 'not added',
    firstName: 'not added',
    lastName: 'not added',
    telephone: 'not added',
};

function UserInfoScreen(props: any) {

    console.log("UserInfoScreen: ", props.route.params.userId);

    useEffect(() => {
        getUserInfo(props.route.params.userId)
    }, [])   
    // Get user info from the params
    const getUserInfo = async (userId: any) => {
        try {
            const response = await fetch(`${BASE_URL}/user/id/${userId}`);

            if (!response.ok) {
                throw new Error('Problem fetching user data');
            }

            const data = await response.json();
            console.log("User data: " + JSON.stringify(data))

            const { id, email, address, firstName, lastName, telephone } = data;

            userInfo.email = email;
            userInfo.userAddress = address;
            userInfo.firstName = firstName;
            userInfo.lastName = lastName;
            userInfo.telephone = telephone;
        }
        catch (error) {
            console.log(error);
        }
    
    }


    return (
        <View style={userStyles.container}>
            <Text style={{ fontSize: 30, fontWeight: "bold", marginTop: 30, color: colors.action_Orange, paddingBottom: 20}}  >
                            User Info</Text>
            <View style={userStyles.userInfoContainer}>
            <Text style={userStyles.userInfoText}>First Name: {userInfo.firstName}</Text>
                <Text style={userStyles.userInfoText}>Last Name: {userInfo.lastName}</Text>
                <Text style={userStyles.userInfoText}>Phone Number: {userInfo.telephone}</Text>
                <Text style={userStyles.userInfoText}>Address: {userInfo.userAddress}</Text>
                <Text style={userStyles.userInfoText}>Email: {userInfo.email}</Text>
            </View>
            <TouchableOpacity style={{...styles.mainButton, marginTop: 50}} onPress={() => props.navigation.goBack()
}>
                <Text style={userStyles.returnButtonText}>Return</Text>
            </TouchableOpacity>
        </View>
    );
}

const userStyles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: 'center',
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
