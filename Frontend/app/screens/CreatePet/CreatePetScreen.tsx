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


    //     if (curPet == -1) {
    //         pets.push({
    //             age: 0, height: 0, is_male: 1, name: "", pet_type: 0, pet_breed: 'Labrador Retreiver', pid: Buffer.from([0]), weight: 0,
    //             owner_id: Buffer.from([0]),
    //             allergies: null,
    //             changes_in_behavior: null,
    //             diet: null,
    //             medications: null,
    //             previous_medical_history: null,
    //             vaccination_records: null
    //         })
    //         curPet = pets.length - 1
    //         params.petID = curPet
    //         setNewPet(true)
    //     }
    // console.log(curPet)
    //     const [name, setName] = useState<string>(pets[curPet].name)
    //     const [age, setAge] = useState<number>(pets[curPet].age)
    //     const [weight, setWeight] = useState<number>(pets[curPet].weight)
    //     const [height, setHeight] = useState<number>(pets[curPet].height)
    //     const [type, setType] = useState(pets[curPet]['petType'] ?? titles[0])
    //     const [breed, setBreed] = useState<string>(pets[curPet]['petBreed'])
    //
    //     const [sex, setSex] = useState<boolean>(Boolean(pets[curPet].is_male ?? true))
    //     const [isSubmit, setSubmit] = useState(false)


    //     const handleSubmit = async (event) => {
    //         // event.preventDefault();
    //         let isValid = validate()
    //         setError(!!isValid)
    //         setSubmit(true)
    //     }
    const handleSubmit = async () => {
        console.log(errors)
        if (isSubmittingRef.current)
            return

        let isValid: boolean = validate()
        if (isValid) {
            submitCreatePet()
        }
    }

    //     useEffect(() => {
    //         if (isSubmit) {
    //             checkInfoIsValid()
    //         }
    //     }, [errors])

    // TODO: check if number is valid
    function validate(): boolean {
        setErrors({ name: "", age: "", weight: "", height: "", type: "", sex: "", breed: "" })
        // let errors: any = {};
        let isValid = true
        if (!petForm.name) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, name: "Pet name is required!" }))
            isValid = false
            // errors.name = "Pet name is required!";
        }
        if (!petForm.type) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, type: "Pet type is required!" }))
            isValid = false
            // errors.type = "Pet type is required!";
        }
        if (petForm.age == 0) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, age: "Pet age is required!" }))
            isValid = false
            // errors.age = "Pet age is required!";
        } else {
            // try {
            //     Number.parseInt(petForm.age, 10)
            // } catch (error) {
            //     setErrors((prevState: CreatePetErrors) => ({ ...prevState, age: "Please enter a valid age." }))
            //     isValid = false
            //     // errors.age = "Please enter a valid age.";
            // }
        }
        if (petForm.weight == 0) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, weight: "Pet weight is required!" }))
            isValid = false
            // errors.weight = "Pet weight is required!";
        } else {
            // try {
            //     Number.parseInt(petForm.weight, 10)
            // } catch (error) {
            //     setErrors((prevState: CreatePetErrors) => ({ ...prevState, weight: "Please enter a valid weight." }))
            //     isValid = false
            //     // errors.weight = "Please enter a valid weight.";
            // }
        }
        if (petForm.height == 0) {
            setErrors((prevState: CreatePetErrors) => ({ ...prevState, height: "Pet height is required!" }))
            isValid = false
            // errors.height = "Pet height is required!";
        } else {
            // try {
            //     Number.parseInt(petForm.height, 10)
            // } catch (error) {
            //     setErrors((prevState: CreatePetForm) => ({ ...prevState, height: "Please enter a valid height." }))
            //     isValid = false
            //     // errors.height = "Please enter a valid height.";
            // }
        }

        return isValid
    }

    async function submitCreatePet() {
        //         if (Object.keys(errors).length < 1 && isSubmit) {
        //             if (newPet) {
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
        //             } else {
        // let url = BASE_URL + "/pet/update/" + params.petId

        // let res = await fetch(url, {
        //     method: 'PUT',
        //     headers: {
        //         'Accept': 'application/json',
        //         'Content-Type': 'application/json'
        //     },
        //     body: JSON.stringify({
        //         "age": petForm.age,
        //         "height": petForm.height,
        //         "isMale": Number(petForm.sex),
        //         "name": petForm.name,
        //         "owner": params.userId,
        //         "petType": titles.indexOf(petForm.type),
        //         "petBreed": petForm.breed,
        //         "weight": petForm.weight,
        //         "pid": params.petId,
        //         "appointments": null
        //     }),
        // })
        //         }
        props.navigation.navigate("Home", { ...params } as HomeScreenParams)
        //         props.navigation.navigate("ClientHome", { user: params.user, location: params.location })
        //         }
    }

    function back() {
        // pets.pop()
        let homeScreenParams: HomeScreenParams = {
            ...params
        }
        props.navigation.navigate("Home", homeScreenParams)
    }


    const displayValue = (index: IndexPath) => {
        // convert titles[index.row] to title case
        return titles[index.row].charAt(0).toUpperCase() + titles[index.row].slice(1).toLowerCase()
    }

    const updatePetType = (index: IndexPath) => {
        setPetForm((prevState: CreatePetForm) => ({ ...prevState, type: titles[index.row] }))
        // setType(titles[index.row])
        setSelectedIndex(index)
    }

    return (
        <SafeAreaView style={styles.background}>
            <View style={{ width: "80%" }}>

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
                    <Button style={{ ...styles.mainButton, backgroundColor: colors.green, borderColor: colors.green }} onPress={handleSubmit}>
                        <Text> Save Changes </Text>
                    </Button>
                </View>
            </View>
            <ClientNavbar navigation={props.navigation} {...params} />
        </SafeAreaView>
    )
}

export default CreatePetScreen
