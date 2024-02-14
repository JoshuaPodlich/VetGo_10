import React, { useEffect, useState } from 'react'
import { SafeAreaView, ScrollView, StyleSheet, View, TextInput, Pressable, Alert, Image } from "react-native"
import { Button, Card, Text } from '@ui-kitten/components'
import { styles } from "../shared/Styles"
import { homeStyles } from "./HomeStyles"
import { FontAwesome5 } from '@expo/vector-icons'
import { colors } from '../shared/Colors'
interface Props {
    appointmentData: any
    appointmentIndex: number
    duringAppointment: any
    viewAppointment: any
}
const HomeVet_ScheduledAppointment: React.FC<Props> = ({ appointmentData, appointmentIndex, duringAppointment, viewAppointment }: any) => {
    const [imageEncoding, setImageEncoding] = useState<String>(appointmentData.pet.petImage ?? '')


    console.log(JSON.stringify(Object.keys(appointmentData.pet)))
    return (
        <>
            {appointmentData && appointmentData.status === "ACCEPTED" &&
                <View style={homeStyles.petInfo}>
                    <Pressable style={{ display: "flex", flexDirection: "row", alignItems: 'center' }}>
                        <Pressable>
                            {imageEncoding ?
                                <Image source={{ uri: `data:image/png;base64,${imageEncoding}` }} style={homeStyles.tempPic} />
                                :
                                <View style={homeStyles.tempPic}>
                                    <FontAwesome5 name='images' size={24} />
                                </View>
                            }
                        </Pressable>
                        <View style={{ flexShrink: 1 }}>
                            <View style={{}}>
                                <Text style={{ ...styles.boldText }}> {appointmentData.pet.name}</Text>
                                <Text style={{ color: `${colors.darkGrey}` }}> {appointmentData.pet.petBreed}</Text>
                            </View>
                        </View>
                    </Pressable>
                    <Button style={homeStyles.createAppointment}
                        onPress={() => duringAppointment(appointmentData)}>
                        <Text numberOfLines={1}>
                            Start
                        </Text>
                    </Button>
                </View>
            }

            {appointmentData && appointmentData.status === "PAYMENT" &&
                <View style={homeStyles.petInfo}>
                    <Pressable style={{ display: "flex", flexDirection: "row", alignItems: 'center' }}>
                        <Pressable>
                            {imageEncoding ?
                                <Image source={{ uri: `data:image/png;base64,${imageEncoding}` }} style={homeStyles.tempPic} />
                                :
                                <View style={homeStyles.tempPic}>
                                    <FontAwesome5 name='images' size={24} />
                                </View>
                            }
                        </Pressable>
                        <View style={{ flexShrink: 1 }}>
                            <View style={{}}>
                                <Text style={{ ...styles.boldText }}> {appointmentData.pet.name}</Text>
                                <Text style={{ color: `${colors.darkGrey}` }}> {appointmentData.pet.petBreed}</Text>
                            </View>
                        </View>
                    </Pressable>

                    <Button style={homeStyles.payAppointment}
                        onPress={() => viewAppointment(appointmentData)}>
                        <Text numberOfLines={1}>
                            Pending...
                        </Text>
                    </Button>
                </View>
            }
        </>
    )

}

export default HomeVet_ScheduledAppointment
