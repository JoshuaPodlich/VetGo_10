
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

function UserInfoScreen() {
    return (
        <View style={styles.container}>
            <Text style={styles.emergencyText}>UserInfoScreen Development</Text>
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
    },
    emergencyText: {
        fontSize: 20,
        fontWeight: 'bold',
    },
});

export default UserInfoScreen;
