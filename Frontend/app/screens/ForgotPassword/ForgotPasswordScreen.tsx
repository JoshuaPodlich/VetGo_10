
import React, { useEffect, useState, useRef } from 'react'
import { SafeAreaView, ScrollView, StyleSheet, Text, View, Pressable, Alert, TouchableHighlight, TouchableOpacity } from "react-native"
import { Logo } from "../shared/Components"
import { Input } from "@ui-kitten/components"
import { useFocusEffect } from "@react-navigation/native"
import { colors } from "../shared/Colors"
import { styles } from "../shared/Styles"
import { BASE_URL } from "../shared/Constants"
import EntryButtons from "../../components/EntryButtons"
import { LocationScreenParams } from '../Location/LocationScreen'
import { LoginScreenNavigationProp, LoginScreenRouteProp } from '../../utils/props'





function forgotPassword() {
    const [email, setEmail] = useState('')


    return (
        <SafeAreaView style={styles.loginBackground}>
        <Logo />

        <View style={{ width: "80%", flex: 1 }}>
            <ScrollView>
                <View style={styles.signUpLoginGroup}>
                    <Text style={{ fontSize: 30, fontWeight: "bold" }}>
                        Enter Your Email
                    </Text>


                    <Input
                        value={email} size={"large"} style={styles.fieldText}
                        placeholder={"Email"}
                        onChangeText={(email) => {
                            setEmail(email)
                        }}
                    />
                    

                    

                    <TouchableOpacity style={styles.forgotPasswordButton}>
                        <Text style={{ color: colors.action_Orange }}>Send Email</Text>
                    </TouchableOpacity>
                    
                </View>
            </ScrollView>
        </View>

    </SafeAreaView>
)
    
}

export default forgotPassword;