import React, { useEffect, useState, useRef } from 'react'
import {
  SafeAreaView,
  ScrollView,
  View,
  TouchableHighlight,
  Text
} from 'react-native'
import { useFocusEffect } from "@react-navigation/native"
import { Input, Select, SelectItem } from "@ui-kitten/components"
import { styles } from "../shared/Styles"
import { colors } from "../shared/Colors"
import { BASE_URL } from "../shared/Constants"
import { LocationInterface } from '../shared/Interfaces'
import { CreateReviewScreenParams } from '../CreateReview/CreateReviewScreen'

export interface VetAddChargesScreenParams {
  userId: string,
  userIsVet: boolean,
  location: LocationInterface,
  appointmentId: string,
  petId: string,
}
interface VetAddChargesForm {
  receipt: string,
  amount: number,
}
function VetAddChargesScreen(props: any) {

  const priceData = [
    ['Appointment', '50.00'],
    ['Vaccination', '30.00'],
    ['Sterilization', '100.00'],
    ['Euthanasia', '400.00'],
    ['Birth Help', '300.00'],
    ['Dental Checkup', '75.00'],
  ]
  let htmlPriceData: any = []
  addItemOptions(priceData)

  const params = props.route.params as VetAddChargesScreenParams

  const [form, setForm] = useState<VetAddChargesForm>({ receipt: "Empty", amount: 0 })
  const [groupDisplay, setGroupDisplay] = useState('')
  const [selectedIndex, setSelectedIndex] = useState<any[]>([])
  const isSubmittingRef = useRef<boolean>(false)


  useFocusEffect(
    React.useCallback(() => {
      return () => {
        setForm({ receipt: "Empty", amount: 0 })
        setGroupDisplay("")
      }
    }, [])
  )

  function inputChange(input: any) {
    let temp = input
    // limit 8 dig
    // temp = temp.replace( /\d{8}/,'')
    // if not num, replace to ''
    temp = temp.replace(/[^\d\.]/g, '')
    // make sure first input is num, not "."
    temp = temp.replace(/^\./g, '')
    // make sure only one "."
    temp = temp.replace(/\.{2,}/g, '.')
    // make sure 01 not appear
    temp = temp.replace(/^0\d[0-9]*/g, '')
    // make sure "." only appear once
    temp = temp.replace('.', '$#$').replace(/\./g, '').replace('$#$', '.')
    // make sure only two des
    temp = temp.replace(/^(\-)*(\d+)\.(\d\d).*$/, '$1$2.$3')
    return temp
  }

  function priceAndDisplayUpdate(input: any) {
    let tempPrice = 0
    let tempDisplay = ''
    let tempReceipt = ''
    for (let i = 0; i < input.length; i++) {
      tempPrice += parseFloat(priceData[input[i].row][1])
      tempDisplay += priceData[input[i].row][0] + ", "
      tempReceipt += priceData[input[i].row][0] + ",      $" + priceData[input[i].row][1] + "\n"
    }
    setForm({ receipt: tempReceipt, amount: parseFloat(inputChange(tempPrice.toString())) })
    setGroupDisplay(tempDisplay)

  }

  function addItemOptions(priceData: any) {
    // console.log(priceData)
    for (let i = 0; i < priceData.length; i++) {
      htmlPriceData.push(
        <SelectItem key={i} title={priceData[i][0] + "   $" + priceData[i][1]} />
      )
    }
  }

  function validate() {
    let isValid: boolean = true
    // if no need check validate, leave it empty
    return isValid
  }

  const submitVetAddChargesForm = async () => {
    try {
        isSubmittingRef.current = true

        console.log("Log here")
        console.log(JSON.stringify(params));

        // Get user info
        let url = BASE_URL + "/user/id/" + params.userId
        console.log(url);
        let firstName = "";
        let lastName = "";
        let userId = 0;
        const response = await fetch(url, {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
        });

        const responseBody = await response.json();
        console.log(responseBody)

        firstName = responseBody.firstName
        lastName = responseBody.lastName
        userId = responseBody.id


        let contentBody = {
          tid: null,
          name: lastName,
          cardNumber: null,
          zip: null,
          receipt: form.receipt,
          amount: form.amount,
          transactionStatus: false,
        }

        url = BASE_URL + "/transaction/set/" + params.appointmentData.aid;

        console.log(url)
        const res = await fetch(url, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(contentBody)
        });


        let createReviewParams: CreateReviewScreenParams = {
          ...params,
          reviewerId: params.userId,
          revieweeId: userId,
          revieweeFirstName: firstName,
          revieweeLastName: lastName,
          revieweeAverageRating: 5
        }
        props.navigation.replace("MyAppointmentsVet", createReviewParams)

        isSubmittingRef.current = false
    } catch (error) {
      console.error('Error fetching data:', error);
    }


  }

  return (
    <SafeAreaView style={styles.background}>
      <View style={{ width: "80%", flex: 1 }}>

        <View>
          <Text style={{ ...styles.AmountText, marginTop: "15%" }}>Set Payment</Text>

          <Select
            multiSelect={true}
            placeholder='Select Items'
            value={groupDisplay}
            selectedIndex={selectedIndex}
            onSelect={(index: any) => {
              setSelectedIndex(index)
              priceAndDisplayUpdate(index)
            }}
          >
            {htmlPriceData}
          </Select>

          <Text style={{ ...styles.ReceiptTitleText, marginTop: "5%", marginBottom: 10 }}>Receipt Preview</Text>
          <ScrollView style={{ height: "20%" }}>

            <Text style={{ fontSize: 14 }}>{form.receipt}</Text>

          </ScrollView>
          <Text style={{ ...styles.AmountText, marginBottom: 20 }}>Total: $ {form.amount}</Text>

        </View>

        <View id={"buttonGroup"} style={styles.buttonGroup}>
          <TouchableHighlight style={{ ...styles.submitButton}}
            underlayColor={colors.black_underlay}
            onPress={submitVetAddChargesForm}
          >
            <Text style={styles.buttonText}> SUBMIT </Text>
          </TouchableHighlight>
        </View>
      </View>

    </SafeAreaView>

  )
}

export default VetAddChargesScreen