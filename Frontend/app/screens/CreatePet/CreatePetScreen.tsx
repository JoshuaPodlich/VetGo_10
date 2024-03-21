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
    name: string, age: number, weight: number, height: number, type: string, sex: boolean, breed: string
}
interface CreatePetErrors {
    name: string, age: string, weight: string, height: string, type: string, sex: string, breed: string
}

function CreatePetScreen(props: { route: CreatePetScreenRouteProp, navigation: CreatePetScreenNavigationProp }) {

    const params: CreatePetScreenParams = props.route.params as CreatePetScreenParams
    const titles = ['DOG', 'CAT', 'BIRD', 'REPTILE', 'FISH', 'RODENT', 'OTHER']
    const [petForm, setPetForm] = useState<CreatePetForm>({ name: "", age: 0, weight: 0, height: 0, type: titles[0], sex: true, breed: "" })
    const [errors, setErrors] = useState<CreatePetErrors>({ name: "", age: "", weight: "", height: "", type: "", sex: "", breed: "" })
    const isSubmittingRef = useRef<boolean>(false)

    const [selectedIndex, setSelectedIndex] = useState<IndexPath>(new IndexPath(0))


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
        setErrors({ name: "", age: "", weight: "", height: "", type: "", sex: "", breed: "" })
        let isValid = true
        if (!petForm.name) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, name: "Pet name is required!" }))
            isValid = false
        }
        if (!petForm.type) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, type: "Pet type is required!" }))
            isValid = false
        }
        if (petForm.age == 0) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, age: "Pet age is required!" }))
            isValid = false
        } else {
            
        }
        if (petForm.weight == 0) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, weight: "Pet weight is required!" }))
            isValid = false
        } else {
            
        }
        if (petForm.height == 0) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, height: "Pet height is required!" }))
            isValid = false
        } else {
            
        }

        return isValid
    }

    async function submitCreatePet() {
       
        let url = BASE_URL + "/pet/add/" + params.userId

        let res = await fetch(url, {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "age": petForm.age,
                "height": petForm.height,
                "isMale": Number(petForm.sex),
                "name": petForm.name,
                "owner": params.userId,
                "petType": titles.indexOf(petForm.type),
                "petBreed": petForm.breed,
                "weight": petForm.weight,
                "pid": null,
                "appointments": null
            }),
        })
        console.log("-------------------------?????????????????????")
        console.log(res)
       
        props.navigation.navigate("Home", { ...params } as HomeScreenParams)
        
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

    return (
        <SafeAreaView style={styles.background}>
            
            <View style={styles.createPet}>

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
                    <View style={{ marginLeft: 5 }}>
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
            <ClientNavbar navigation={props.navigation} {...params} />
        </SafeAreaView>
    )
}

export default CreatePetScreen
