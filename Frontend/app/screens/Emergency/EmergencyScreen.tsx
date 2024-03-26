import React, { useState } from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet, ScrollView } from 'react-native';
import { styles } from "../shared/Styles"
import { colors } from '../shared/Colors'



function EmergencyScreen() {
    const [emergencyLocation, setEmergencyLocation] = useState('');
    const [petSpecies, setPetSpecies] = useState('');
    const [petSymptoms, setPetSymptoms] = useState('');

    const handleSubmit = () => {
        // Handle submission logic here, e.g., sending data to backend
        console.log('Emergency Location:', emergencyLocation);
        console.log('Pet Species:', petSpecies);
        console.log('Pet Symptoms:', petSymptoms);
    };

    const emergencyInfo = {
        emergencyNumber: '911',
        helpNumber: '123-456-7890',
        websites: ['www.pets.com', 'www.vet.com'],
    };

    const emergencyVets = {
        vet1: {
            name: 'Vet 1',
            address: '1234 Street, City, State',
            phone: '123-456-7890',
            distance: '1.2 miles',
        },
        vet2: {
            name: 'Vet 2',
            address: '5678 Street, City, State',
            phone: '234-567-8901',
            distance: '2.3 miles',
        },
        vet3: {
            name: 'Vet 3',
            address: '9012 Street, City, State',
            phone: '345-678-9012',
            distance: '3.4 miles',
        },
        vet4: {
            name: 'Vet 4',
            address: '3456 Street, City, State',
            phone: '456-789-0123',
            distance: '4.5 miles',
        },
    };
        
    

    return (
        <View style={emStyles.container}>
            <Text style={{ fontSize: 30, fontWeight: "bold", marginTop: 30, color: colors.action_Orange, paddingBottom: 20}}  >
                            Vet Emergency</Text>
            <View style={emStyles.infoContainer}>
                <Text style={emStyles.infoText}>Emergency Number: {emergencyInfo.emergencyNumber}</Text>
                <Text style={emStyles.infoText}>Help Number: {emergencyInfo.helpNumber}</Text>
                <Text style={emStyles.infoText}>Websites to help: {emergencyInfo.websites.join(', ')}</Text>
                {/* <Text style={styles.infoText}>Emergency Number: </Text>
                <Text style={styles.infoText}>Help Number:</Text>
                <Text style={styles.infoText}>Websites to help:</Text> */}
            </View>
            {/* Near by vets info page  */}
            <View style={emStyles.nearByVets}>
            <ScrollView>
                {/* displays the emergencyVets */}
                <Text style={{ fontSize: 20, fontWeight: "bold", marginTop: 30, color: colors. action_Green, paddingBottom: 20}}  >
                            Near By Vets</Text>
                <View style={emStyles.infoContainer}>
                    <Text style={emStyles.infoText}>Name: {emergencyVets.vet1.name}</Text>
                    <Text style={emStyles.infoText}>Address: {emergencyVets.vet1.address}</Text>
                    <Text style={emStyles.infoText}>Phone: {emergencyVets.vet1.phone}</Text>
                    <Text style={emStyles.infoText}>Distance: {emergencyVets.vet1.distance}</Text>
                </View>
                <View style={emStyles.infoContainer}>
                    <Text style={emStyles.infoText}>Name: {emergencyVets.vet2.name}</Text>
                    <Text style={emStyles.infoText}>Address: {emergencyVets.vet2.address}</Text>
                    <Text style={emStyles.infoText}>Phone: {emergencyVets.vet2.phone}</Text>
                    <Text style={emStyles.infoText}>Distance: {emergencyVets.vet2.distance}</Text>
                </View>
                <View style={emStyles.infoContainer}>
                    <Text style={emStyles.infoText}>Name: {emergencyVets.vet3.name}</Text>
                    <Text style={emStyles.infoText}>Address: {emergencyVets.vet3.address}</Text>
                    <Text style={emStyles.infoText}>Phone: {emergencyVets.vet3.phone}</Text>
                    <Text style={emStyles.infoText}>Distance: {emergencyVets.vet3.distance}</Text>
                </View>
                <View style={emStyles.infoContainer}>
                    <Text style={emStyles.infoText}>Name: {emergencyVets.vet4.name}</Text>
                    <Text style={emStyles.infoText}>Address: {emergencyVets.vet4.address}</Text>
                    <Text style={emStyles.infoText}>Phone: {emergencyVets.vet4.phone}</Text>
                    <Text style={emStyles.infoText}>Distance: {emergencyVets.vet4.distance}</Text>
                </View>
            </ScrollView>
            </View>


            <TextInput
                style={[emStyles.input, { borderColor: petSpecies ? '#000' : '#42A5F5' }]}
                placeholder="Enter pet species"
                value={petSpecies}
                onChangeText={text => setPetSpecies(text)}
            />
            <TextInput
                style={[emStyles.input, { borderColor: petSymptoms ? '#000' : '#42A5F5', height: 100 }]}
                placeholder="Enter pet symptoms"
                multiline={true}
                value={petSymptoms}
                onChangeText={text => setPetSymptoms(text)}
            />
            <TouchableOpacity style={styles.mainButton} onPress={handleSubmit}>
                <Text style={styles.submitButtonText}>Submit</Text>
            </TouchableOpacity>
        </View>
    );
}

const emStyles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: 'center',
        paddingHorizontal: 20,
    },
    title: {
        fontSize: 24,
        fontWeight: 'bold',
        marginBottom: 20,
    },
    infoContainer: {
        marginBottom: 20,
    },
    infoText: {
        fontSize: 16,
        marginBottom: 5,
    },
    input: {
        borderWidth: 1,
        borderRadius: 10,
        paddingHorizontal: 10,
        marginBottom: 20,
        width: '100%',
    },
    submitButton: {
        backgroundColor: 'blue',
        paddingVertical: 10,
        paddingHorizontal: 20,
        borderRadius: 10,
    },
    submitButtonText: {
        color: '#fff',
        fontSize: 18,
        fontWeight: 'bold',
    },
    nearByVets: {
        flex: 1,
        alignItems: 'center',
        height: 200,
    },
});

export default EmergencyScreen;
