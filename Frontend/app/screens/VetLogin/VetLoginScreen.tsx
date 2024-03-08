import React, { useState } from 'react';
import { View, Text, TextInput, Button, StyleSheet } from 'react-native';

function VetRegisterScreen({ navigation }: { navigation: any }) {
  const [vetID, setVetID] = useState('');
  const [vetName, setVetName] = useState('');
  const [vetEmail, setVetEmail] = useState('');
  const [vetInsurance, setVetInsurance] = useState('');
  const [vetLicense, setVetLicense] = useState('');
  const [vetCompany, setVetCompany] = useState('');
  const [vetPassword, setVetPassword] = useState('');
  let error_message = "";

  const handleRegister = () => {
    if(vetID === "" || vetName === "" || vetEmail === "" || vetInsurance === "" || vetLicense === "" || vetCompany === "" || vetPassword === ""){
    error_message = "Please fill all the fields";
      return
    }
    
 
  };

  return (
    <View style={styles.container}>
      <Text style={styles.heading}>Vet Registration</Text>
      <TextInput
        style={styles.input}
        placeholder="Vet ID"
        value={vetID}
        onChangeText={setVetID}
      />
      <TextInput
        style={styles.input}
        placeholder="Vet Name"
        value={vetName}
        onChangeText={setVetName}
      />
      <TextInput
        style={styles.input}
        placeholder="Vet Email"
        value={vetEmail}
        onChangeText={setVetEmail}
      />
      <TextInput
        style={styles.input}
        placeholder="Vet Insurance"
        value={vetInsurance}
        onChangeText={setVetInsurance}
      />
      <TextInput
        style={styles.input}
        placeholder="Vet License"
        value={vetLicense}
        onChangeText={setVetLicense}
      />
      <TextInput
        style={styles.input}
        placeholder="Vet Company"
        value={vetCompany}
        onChangeText={setVetCompany}
      />
      <TextInput
        style={styles.input}
        placeholder="Vet Password"
        secureTextEntry={true}
        value={vetPassword}
        onChangeText={setVetPassword}
      />

        <Text>{error_message}</Text>

      <Button title="Register" onPress={handleRegister} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 20,
  },
  heading: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
  },
  input: {
    width: '100%',
    height: 40,
    borderColor: 'gray',
    borderWidth: 1,
    borderRadius: 5,
    marginBottom: 10,
    paddingHorizontal: 10,
  },
});

export default VetRegisterScreen;
