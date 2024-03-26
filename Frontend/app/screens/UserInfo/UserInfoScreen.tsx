import React from 'react';
import { View, Text, TouchableOpacity, StyleSheet } from 'react-native';
import { styles } from '../shared/Styles';
import { colors } from '../shared/Colors';

export interface UserInfoScreenParams {
    userId: string,
    userIsVet: boolean,
}

// Hardcoded user info for demonstration
const userInfo = {
    userName: 'testUser123',
    userId: '123456789',
    userAddress: '123 Test St, City',
    firstName: 'John',
    lastName: 'Doe',
};

function UserInfoScreen() {
    return (
        <View style={userStyles.container}>
            <Text style={{ fontSize: 30, fontWeight: "bold", marginTop: 30, color: colors.action_Orange, paddingBottom: 20}}  >
                            User Info</Text>
            <View style={userStyles.userInfoContainer}>
                <Text style={userStyles.userInfoText}>Username: {userInfo.userName}</Text>
                <Text style={userStyles.userInfoText}>User ID: {userInfo.userId}</Text>
                <Text style={userStyles.userInfoText}>Address: {userInfo.userAddress}</Text>
                <Text style={userStyles.userInfoText}>First Name: {userInfo.firstName}</Text>
                <Text style={userStyles.userInfoText}>Last Name: {userInfo.lastName}</Text>
            </View>
            <TouchableOpacity style={styles.mainButton} onPress={() => console.log('Return button pressed')}>
                <Text style={userStyles.returnButtonText}>Return</Text>
            </TouchableOpacity>
        </View>
    );
}

const userStyles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
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
