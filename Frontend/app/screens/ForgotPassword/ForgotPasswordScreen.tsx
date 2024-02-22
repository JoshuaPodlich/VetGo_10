
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

function forgotPassword() {
    return (
        <View style={styles.container}>
            <Text style={styles.forgotPassowed}>Forgot Password Under Development</Text>
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
    },
    forgotPassowed: {
        fontSize: 20,
        fontWeight: 'bold',
    },
});

export default forgotPassword;