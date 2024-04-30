import React, { useEffect, useMemo, useRef, useState } from 'react'
import { SafeAreaView, ScrollView, StyleSheet, Text, View, TextInput, Pressable, Alert } from "react-native"
import { BASE_URL } from "../shared/Constants"
import { styles } from "../shared/Styles"
import { colors } from "../shared/Colors"
import { IndexPath, Input, Select, SelectItem, Button, CheckBox, Radio, Layout } from "@ui-kitten/components"
import { CreatePetScreenNavigationProp, CreatePetScreenRouteProp } from '../../utils/props'
import { UserDetailsParams, UserDetails_Location, UserDetails_User } from '../../utils/params'
import Textfield from '../../components/Textfield'
import { Buffer } from 'buffer'
import { LocationInterface } from '../shared/Interfaces'
import { HomeScreenParams } from '../Home/HomeScreen'
import { Dropdown } from 'react-native-element-dropdown'


export interface CreatePetScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
}
const sizeList = [
    {label: 'Small', value: 'SMALL'},
    {label: 'Medium', value: 'MEDIUM'},
    {label: 'Large', value: 'LARGE'}
]

const energyList = [
    {label: 'Low', value: 'LOW'},
    {label: 'Medium', value: 'MEDIUM'},
    {label: 'High', value: 'HIGH'}
]

const furList = [
    {label: 'Short', value: 'SHORT'},
    {label: 'Medium', value: 'MEDIUM'},
    {label: 'Long', value: 'LONG'},
    {label: 'Hairless', value: 'HAIRLESS'}
]

const titlesList = [
    {label: 'Dog', value: 'DOG'},
    {label: 'Cat', value: 'CAT'},
    {label: 'Bird', value: 'BIRD'},
    {label: 'Reptile', value: 'REPTILE'},
    {label: 'Fish', value: 'FISH'},
    {label: 'Rodent', value: 'RODENT'},
    {label: 'Other', value: 'OTHER'}
]


interface CreatePetForm {
    name: string, age: number, weight: number, height: number, type: string, sex: boolean, breed: string,
    petSize: string, energyLevel: string, furType: string // New values
}

interface CreatePetErrors {
    name: string, age: string, weight: string, height: string, type: string, sex: string, breed: string, petSize: string, energyLevel: string, furType: string // New values
}

function CreatePetScreen(props: { route: CreatePetScreenRouteProp, navigation: CreatePetScreenNavigationProp }) {

    const params: CreatePetScreenParams = props.route.params as CreatePetScreenParams
    const titles = ['DOG', 'CAT', 'BIRD', 'REPTILE', 'FISH', 'RODENT', 'OTHER']
    const sizes = ['SMALL', 'MEDIUM', 'LARGE']
    const energyLevels = ['LOW', 'MEDIUM', 'HIGH']
    const furTypes = ['SHORT', 'MEDIUM', 'LONG', 'HAIRLESS']


   

    const handleSizeChange = (selectedSize: any) => {
        setPetForm(prevState => ({ ...prevState, petSize: selectedSize.value }));
    }

    const handleEnergyChange = (newValue: any) => {
        setPetForm((prevState: CreatePetForm) => ({ ...prevState, energyLevel: newValue.value }))
    }

    const handleFurChange = (selectedFur: any) => {
        setPetForm(prevState => ({ ...prevState, furType: selectedFur.value }));
    }

    const handleTypeChange = (selectedTitle: any) => {
        setPetForm(prevState => ({ ...prevState, type: selectedTitle.value }));
    }

    


    const [petForm, setPetForm] = useState<CreatePetForm>({ 
        name: "", 
        age: 0,
        weight: 0, 
        height: 0, 
        type: "", 
        sex: true, 
        breed: "", 
        petSize: "", // Initialize new values
        energyLevel: "", // Initialize new values
        furType: "" // Initialize new values
    })
    const [errors, setErrors] = useState<CreatePetErrors>({ 
        name: "", 
        age: "", 
        weight: "", 
        height: "", 
        type: "", 
        sex: "", 
        breed: "",
        petSize: "", // Initialize new values
        energyLevel: "", // Initialize new values
        furType: "" // Initialize new values
    })
    const isSubmittingRef = useRef<boolean>(false)

    const [selectedIndex, setSelectedIndex] = useState<IndexPath>(new IndexPath(0))
    const [selectedSizeIndex, setSelectedSizeIndex] = useState<IndexPath>(new IndexPath(0));
    const [selectedEnergyIndex, setSelectedEnergyIndex] = useState<IndexPath>(new IndexPath(0));
    const [selectedFurIndex, setSelectedFurIndex] = useState<IndexPath>(new IndexPath(0));

    useEffect(() => {
    }, [])

    const handleSubmit = async () => {
        //console.log(errors)
        if (isSubmittingRef.current)
            return

        let isValid: boolean = validate()
        //alert for failed validation



        if (isValid) {
            submitCreatePet()
        }
        else {
            Alert.alert('Please fill in all required fields.');

        }
    }

    function validate(): boolean {
        setErrors({ name: "", age: "", weight: "", height: "", type: "", sex: "", breed: "", petSize: "", energyLevel: "", furType: "" })
        let isValid = true
        if (!petForm.name) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, name: "Pet name is required!" }))
            isValid = false
        }
        if (!petForm.type) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, type: "Pet type is required!" }))
            isValid = false
        }
        if (petForm.age === 0) { // Use strict equality check
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, age: "Pet age is required!" }))
            isValid = false
        } else {
            // Additional validation if needed
        }
        if (petForm.weight === 0) { // Use strict equality check
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, weight: "Pet weight is required!" }))
            isValid = false
        } else {
            // Additional validation if needed
        }
        if (petForm.height === 0) { // Use strict equality check
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, height: "Pet height is required!" }))
            isValid = false
        } 
        if (!petForm.breed) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, breed: "Pet breed is required!" }))
            isValid = false
        }
        if (!petForm.furType) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, furType: "Pet fur type is required!" }))
            isValid = false
        }
        if (!petForm.energyLevel) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, energyLevel: "Pet energy level is required!" }))
            isValid = false
        }
        if (!petForm.petSize) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, petSize: "Pet size is required!" }))
            isValid = false
        }
        else {
            // Additional validation if needed
        }

        return isValid
    }

    async function submitCreatePet() {
        let url = BASE_URL + "/pet/add/dog/" + params.userId; // Assuming dog is the pet type, update it according to the actual pet type
        let body = {"name": petForm.name, "age": petForm.age, "weight": petForm.weight, "height": petForm.height, "breed": petForm.breed, "petSize": petForm.petSize, "energyLevel": petForm.energyLevel, "furType": petForm.furType, "male": petForm.sex}

        console.log('Submitting create pet request...');
        console.log('URL:', url);   
        console.log('Request body:', body);

        const response = await fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(body)
        })

        const status = response.status
        console.log(response.status)

        //console.log(response.statusText)

        // const responseBody = await response.json(); // Parse the response body into JSON
        // console.log('Response:', response.text());
        // console.log('Response Body:', responseBody);

        if (status == 200) {
            // Pet creation successful
            props.navigation.navigate("HomeClient");
        }
        else {
            // Handle errors
            Alert.alert("Error", "Failed to create pet. Please try again later.");
        }

    }
    

    function back() {
        let homeScreenParams: HomeScreenParams = {
            ...params
        }
        props.navigation.navigate("HomeClient")
    }


    const displayValue = (index: IndexPath) => {
        return titles[index.row].charAt(0).toUpperCase() + titles[index.row].slice(1).toLowerCase()
    }

    const updatePetType = (index: IndexPath) => {
        setPetForm((prevState: CreatePetForm) => ({ ...prevState, type: titles[index.row] }))
        setSelectedIndex(index)
    }

    
const updateSize = (index: IndexPath) => {
    setSelectedSizeIndex(index);
    const sizeValue = sizes[index.row];
    setPetForm(prevState => ({ ...prevState, petSize: sizeValue }));
};

const updateEnergyLevel = (index: IndexPath) => {
    setSelectedEnergyIndex(index);
    const energyValue = energyLevels[index.row];
    setPetForm(prevState => ({ ...prevState, energyLevel: energyValue }));
};

const updateFurType = (index: IndexPath) => {
    setSelectedFurIndex(index);
    const furValue = furTypes[index.row];
    setPetForm(prevState => ({ ...prevState, furType: furValue }));
};

const displaySize = (index: IndexPath) => {
    return sizes[index.row];
};

const displayEnergy = (index: IndexPath) => {
    return energyLevels[index.row];
};

const displayFur = (index: IndexPath) => {
    return furTypes[index.row];
};

    return (
        <SafeAreaView style={styles.background}>
            <ScrollView>
            <View style={styles.loginBackground}>
            
            <Text style={{ fontSize: 30, fontWeight: "bold", paddingBottom: 10, paddingTop: 10}}>
                            Create Pet
                        </Text>
                <View>

                    
                    <Text style={{marginLeft: 20}}> Name </Text>
                    <Input 
                        clearButtonMode={"always"} size={"large"}
                        value={petForm.name}
                        style={styles.createPetBox}
                        placeholder="Pet Name"
                        onChangeText={(newName: string) => {
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, name: newName }))
                        }}
                    />
                    <Text style={{...styles.errorText, marginLeft: 20}}>{errors.name}</Text>
                    

                    <Text style={{paddingTop: 20, marginLeft:20}}> Animal Type </Text>

                    <Dropdown
                        data={titlesList}
                        value={petForm.type}
                        style={styles.createPetDropDown}
                        onChange={handleTypeChange}
                        placeholder="Select Pet Type" labelField={'value'} valueField={'value'}
                        ></Dropdown>
                    <Text style={{...styles.errorText, marginLeft: 20}}>{errors.type}</Text>



                

                    <Text style={{marginLeft: 20}}> Breed </Text>
                    <Input 
                        clearButtonMode={"always"} size={"large"}
                        value={petForm.breed}
                        style={styles.createPetBox}
                        placeholder="Breed"
                        onChangeText={(newBreed: string) => {
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, breed: newBreed }))
                        }}
                    />

                    <Text style={{...styles.errorText, marginLeft: 20}}>{errors.breed}</Text>

                  

                <Text style={{marginLeft: 20}}> Age (years) </Text>
                <Input 
                    clearButtonMode={"always"}
                    size={"large"}
                    value={petForm.age.toString()}
                    style={styles.createPetBox}
                    placeholder="Age (years)"
                    onChangeText={(newAge: string) => {
                        // Parse the input string as a number
                        const parsedAge = parseInt(newAge, 10);
                        // Check if the parsed value is a valid number
                        if (!isNaN(parsedAge)) {
                            // Update the state only if the input is a valid number
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, age: parsedAge }));
                        }
                    }}
                />
                    <Text style={{...styles.errorText, marginLeft: 20}}>{errors.age}</Text>

                    <Text style={{marginLeft: 20}}> Approximate Weight (lb) </Text>
                    <Input 
                        clearButtonMode={"always"}
                        size={"large"}
                        value={petForm.weight.toString()}
                        style={styles.createPetBox}
                        placeholder="Weight (lb)"
                        onChangeText={(newWeight: string) => {
                            // Parse the input string as a number
                            const parsedWeight = parseFloat(newWeight);
                            // Check if the parsed value is a valid number
                            if (!isNaN(parsedWeight)) {
                                // Update the state only if the input is a valid number
                                setPetForm((prevState: CreatePetForm) => ({ ...prevState, weight: parsedWeight }));
                            }
                        }}
                    />
                    <Text style={{...styles.errorText, marginLeft: 20}}>{errors.weight}</Text>

                   
                    <Text style={{marginLeft: 20}}> Approximate Height (in) </Text>
                    <Input 
                        clearButtonMode={"always"}
                        size={"large"}
                        value={petForm.height.toString()}
                        style={styles.createPetBox}
                        placeholder="Height (in)"
                        onChangeText={(newHeight: string) => {
                            // Parse the input string as a number
                            const parsedHeight = parseFloat(newHeight);
                            // Check if the parsed value is a valid number
                            if (!isNaN(parsedHeight)) {
                                // Update the state only if the input is a valid number
                                setPetForm((prevState: CreatePetForm) => ({ ...prevState, height: parsedHeight }));
                            }
                        }}
                    />
                    <Text style={{...styles.errorText, marginLeft: 20}}>{errors.height}</Text>



            <Text style={{paddingTop: 10, marginLeft:20}}> Size </Text>
            <Dropdown 
                            data={sizeList}
                            value={petForm.petSize}
                            style={styles.createPetDropDown}
                            onChange={handleSizeChange}
                            placeholder="Select Size" labelField={'value'} valueField={'value'}            >
            </Dropdown>
            <Text style={{...styles.errorText, marginLeft: 20}}>{errors.petSize}</Text>


            <Text style={{paddingTop: 10, marginLeft:20}}> Energy Level </Text>
            <Dropdown 
                            data={energyList}
                            value={petForm.energyLevel}
                            style={styles.createPetDropDown}
                            onChange={handleEnergyChange}
                            placeholder="Select Energy Level" labelField={'value'} valueField={'value'}            >
            </Dropdown>
            <Text style={{...styles.errorText, marginLeft: 20}}>{errors.energyLevel}</Text>

            <Text style={{paddingTop: 10, marginLeft:20}}> Fur Type </Text>
            <Dropdown 
                            data={furList}
                            value={petForm.furType}
                            style={styles.createPetDropDown}
                            onChange={handleFurChange}
                            placeholder="Select Fur Type" labelField={'value'} valueField={'value'}            >
            </Dropdown>
            <Text style={{...styles.errorText, marginLeft: 20}}>{errors.furType}</Text>

                    <View style={{ marginLeft: 20, paddingTop: 20 }}>
                        <Text style={{ marginBottom: 10, marginTop: -20 }}>Sex</Text>
                        <Layout
                            style={{
                                flexDirection: 'row',
                                flexWrap: 'wrap',
                            }}
                            level='1'
                        >
                            <Radio
                                style={{ margin: 2 }}
                                checked={petForm.sex}
                                onChange={(nextChecked) => {

                                    setPetForm((prevState: CreatePetForm) => ({ ...prevState, sex: true }))
                                    //                                 setSex(true)
                                }
                                }
                            >
                                Male
                            </Radio>
                            <Radio
                                style={{ margin: 2 }}
                                checked={!petForm.sex}
                                onChange={nextChecked => {

                                    setPetForm((prevState: CreatePetForm) => ({ ...prevState, sex: false }))
                                    //                             setSex(false)
                                }}
                            >
                                Female
                            </Radio>

                        </Layout>
                    </View>
                </View>
                <View style={styles.buttonGroup}>
                    <Button style={{ ...styles.submitButton}} onPress={handleSubmit}>
                        <Text> Save Changes </Text>
                    </Button>
                </View>
                
            </View>
            </ScrollView>
        </SafeAreaView>
    )
}

export default CreatePetScreen
