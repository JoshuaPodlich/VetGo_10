import React, { useEffect, useState, useRef } from 'react'
import { SafeAreaView, ScrollView, View, Alert, TouchableHighlight } from "react-native"
import { useStripe } from '@stripe/stripe-react-native'
import { CardField } from '@stripe/stripe-react-native'
import { Button, Card, Text, Input } from "@ui-kitten/components"
import { useFocusEffect } from "@react-navigation/native"
import { BASE_URL } from "../shared/Constants"
import { styles } from "../shared/Styles"
import { colors } from "../shared/Colors"
import { LocationInterface } from '../shared/Interfaces'
import { CreateReviewScreenParams } from '../CreateReview/CreateReviewScreen'
import axios from 'axios'


export interface PaymentStripeScreenParams {
  userId: string,
  userIsVet: boolean,
  location: LocationInterface,
  appointmentId: string
}

function PaymentStripeScreen(props: any) {
  const params = props.route.params as PaymentStripeScreenParams
  const { initPaymentSheet, presentPaymentSheet } = useStripe()
  let CardStatusFlag = false
  const [nameOnCard, setNameOnCard] = useState('')
  const [errors, setError] = useState<any>({})
  const [loading, setLoading] = useState<boolean>(false)
  const isSubmittingRef = useRef(false)
  const [amount, setAmount] = useState(params.appointmentData.transaction.amount)
  const [receipt, setReceipt] = useState(params.appointmentData.transaction.receipt)
  const [isPaymentSheetReady, setPaymentSheetReady] = useState(false)

  const initializePaymentSheet = async () => {

    const clientSecret = await fetchPaymentSheetParams()
    const { error } = await initPaymentSheet({
      paymentIntentClientSecret: clientSecret,
      merchantDisplayName: 'VetGo',
    })

    if (!error) {
      setLoading(true)
      setPaymentSheetReady(true)
    } else {
      console.error('Error initializing payment sheet:', error)
    }
  }

  const fetchPaymentSheetParams = async (): Promise<string> => {
    const response = await axios.post(`${BASE_URL}/payment/create-payment-intent`, {
      amount: amount * 100,
    })
    const clientSecret = response.data.clientSecret
    return clientSecret
  }

  useEffect(() => {
    initializePaymentSheet()
    setNameOnCard('')
    setError({})
  }, [])

  const openPaymentSheet = async () => {
    const { error } = await presentPaymentSheet()
    if (error) {
      console.error(`Error code: ${error.code}`, error.message)
    } else {
      let createReviewParams: { revieweeId: string; revieweeFirstName: string; reviewerId: string; transactionReceipt: string; revieweeAverageRating: number; userIsVet: boolean; appointmentId: string; transactionAmount: number; location: LocationInterface; userId: string; transactionId: string; revieweeLastName: string } = {
        ...params,
        reviewerId: params.appointmentData.screeningSession.user.id,
        revieweeId: params.appointmentData.vet.id,
        appointmentId: params.appointmentData.aid,
        revieweeFirstName: params.appointmentData.vet.user.firstName,
        revieweeLastName: params.appointmentData.vet.user.lastName,
        revieweeAverageRating: params.appointmentData.vet.averageRating
      }

      await axios.put(`${BASE_URL}/appointment/update/${params.appointmentData.aid}`, {
        status: "COMPLETED"
      })

      props.navigation.replace("CreateReview", createReviewParams)

      console.log('Success')
    }
    setLoading(false)
  }

  return (

    <SafeAreaView style={styles.background}>

      <View style={{ width: "80%" }}>

        <Text style={{ ...styles.ReceiptTitleText, marginTop: "5%", marginBottom: 10 }}>Receipt: </Text>
        <ScrollView style={{ height: "20%", marginBottom: 15 }}>
          <Text style={{ fontSize: 14 }}>{receipt}</Text>
        </ScrollView>

        <View id={"buttonGroup"} style={{ ...styles.buttonGroup }}>
          <TouchableHighlight style={{ ...styles.mainButton }}
            underlayColor={colors.black_underlay}
            onPress={openPaymentSheet}
          >
            <Text id={"payText"} style={styles.buttonText}>
              {"Pay " + amount +  " USD"}
            </Text>
          </TouchableHighlight>
        </View>

      </View>
    </SafeAreaView >

  )
}
export default PaymentStripeScreen