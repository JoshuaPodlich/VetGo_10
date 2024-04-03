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
import ClientNavbar from '../../components/ClientNavbar'


export interface CreatePetScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
}
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

    const [petForm, setPetForm] = useState<CreatePetForm>({ 
        name: "", 
        age: 0, 
        weight: 0, 
        height: 0, 
        type: titles[0], 
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
        console.log(errors)
        if (isSubmittingRef.current)
            return

        let isValid: boolean = validate()
        if (isValid) {
            submitCreatePet()
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
            props.navigation.navigate("Home", { ...params } as HomeScreenParams);
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
        props.navigation.navigate("Home", homeScreenParams)
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
            
            <View style={styles.createPet}>
            <ScrollView>
                <Text style={styles.header}> Create Pet </Text>
                <View>

                    <Text> Name </Text>
                    <Textfield
                        value={petForm.name!}
                        placeholder={petForm.name!}
                        onChangeText={(newName: string) => {
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, name: newName }))
                            //                             setName(name)
                        }}
                    />
                    <Text style={styles.errorText}>{errors.name}</Text>
                    <View style={{ marginBottom: 20 }}>
                        <Text> Animal Type </Text>
                        <Select
                            selectedIndex={selectedIndex}
                            onSelect={index => index instanceof IndexPath ? updatePetType(index) : null}
                            value={displayValue(selectedIndex)}
                            style={{ width: "100%" }}
                        >
                            <SelectItem title='Dog' />
                            <SelectItem title='Cat' />
                            <SelectItem title='Bird' />
                            <SelectItem title='Reptile (Snake, Iguana, etc.)' />
                            <SelectItem title='Fish' />
                            <SelectItem title='Rodent (Hamster, Guinea Pig, etc.)' />
                            <SelectItem title='Other' />
                        </Select>
                    </View>
                    <Text> Breed </Text>
                    <Textfield
                        value={petForm.breed!}
                        placeholder={petForm.breed!}
                        onChangeText={(newBreed: string) => {
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, breed: newBreed }))
                            //                             setBreed(breed)
                        }}
                    />
                    <Text style={styles.errorText}>{errors.type}</Text>

                    <Text> Age (years) </Text>
                    <Textfield
                        value={petForm.age.toString()}
                        placeholder={petForm.age.toString()}
                        onChangeText={(newAge: number) => {
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, age: newAge }))
                            //                             setAge(Number(age))
                        }}
                    />
                    <Text style={styles.errorText}>{errors.age}</Text>

                    <Text> Approximate Weight (lb) </Text>
                    <Textfield
                        value={petForm.weight.toString()}
                        placeholder={petForm.weight.toString()}
                        onChangeText={(newWeight: number) => {
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, weight: newWeight }))
                            //                             setWeight(Number(weight))
                        }}
                    />
                    <Text style={styles.errorText}>{errors.weight}</Text>

                    <Text> Approximate Height (in) </Text>
                    <Textfield
                        value={petForm.height.toString()}
                        placeholder={petForm.height.toString()}
                        onChangeText={(newHeight: number) => {
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, height: newHeight }))
                            //                             setHeight(Number(height))
                        }}
                    />
                    <Text style={styles.errorText}>{errors.height}</Text>



            <View style={{ marginBottom: 20 }}>
                                <Text> Size </Text>
                <Select
                    selectedIndex={selectedSizeIndex}
                    onSelect={index => index instanceof IndexPath ? updateSize(index) : null}
                    value={displaySize(selectedSizeIndex)}
                    style={{ width: "100%" }}
                >
                    <SelectItem title='Small' />
                    <SelectItem title='Medium' />
                    <SelectItem title='Large' />
                </Select>
            </View>

            <View style={{ marginBottom: 20 }}>
                <Text> Energy Level </Text>
                <Select
                    selectedIndex={selectedEnergyIndex}
                    onSelect={index => index instanceof IndexPath ? updateEnergyLevel(index) : null}
                    value={displayEnergy(selectedEnergyIndex)}
                    style={{ width: "100%" }}
                >
                    <SelectItem title='Low' />
                    <SelectItem title='Medium' />
                    <SelectItem title='High' />
                </Select>
            </View>

            <View style={{ marginBottom: 20 }}>
                <Text> Fur Type </Text>
                <Select
                    selectedIndex={selectedFurIndex}
                    onSelect={index => index instanceof IndexPath ? updateFurType(index) : null}
                    value={displayFur(selectedFurIndex)}
                    style={{ width: "100%" }}
                >
                    <SelectItem title='Short' />
                    <SelectItem title='Medium' />
                    <SelectItem title='Long' />
                    <SelectItem title='Hairless' />
                </Select>
            </View>



                    {/* <Text style={{paddingTop: 10}}> Size </Text>
                    <Textfield
                        value={petForm.petSize}
                        placeholder="Pet Size"
                        onChangeText={(newValue: string) => {
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, petSize: newValue }))
                        }}
                        />

                    <Text style={{paddingTop: 10}} > Energy Level </Text>
                    <Textfield 
                        value={petForm.energyLevel}
                        placeholder="Energy Level"
                        onChangeText={(newValue: string) => {
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, energyLevel: newValue }))
                        }}
                        style={{backgroundColor: 'lightgray', 
                        borderRadius: 8, 
                        padding: 10, 
                        fontSize: 16, 
                        color: 'black' }}
                    />

                    <Text style={{paddingTop: 10}}> Fur Type </Text>
                    <Textfield
                        value={petForm.furType}
                        placeholder="Fur Type"
                        onChangeText={(newValue: string) => {
                            setPetForm((prevState: CreatePetForm) => ({ ...prevState, furType: newValue }))
                        }}
                    /> */}






                    <View style={{ marginLeft: 5, paddingTop: 20 }}>
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
                </ScrollView>
            </View>
            <ClientNavbar navigation={props.navigation} {...params} />
        </SafeAreaView>
    )
}

export default CreatePetScreen
