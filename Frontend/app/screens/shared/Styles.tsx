import {StyleSheet, View, Text,} from "react-native"
import {colors} from "./Colors"
import React from 'react';

export const styles: any = StyleSheet.create({
    background: {

        flex: 1,
    },
    createPet: {
        flex: 1,
        justifyContent: "center",
        marginLeft: 50,
        marginRight: 50,
    },

    viewNearbyVets: {

        backgroundColor: colors.primary_Blue,
        borderRadius: 10,
        padding: 10,
        marginBottom: 10,
    },

    phoneButton: {
        backgroundColor: colors.action_Orange,
        borderRadius: 10,
        padding: 10,
       
    },
    phoneButtonDisabled: {
        backgroundColor: colors.grey,
        borderRadius: 10,
        padding: 10,
    },


    loginBackground: {
        flex: 1,
        alignContent: "center", //only takes effect when wrapping occur
        alignItems: "center",
        backgroundColor: colors.background_Grey,
    },

    createAppointmentBackground: {
        flex: 1,
        alignContent: "center", //only takes effect when wrapping occur
        alignItems: "center",
        backgroundColor: colors.background_Grey,
    },

    underdevTitle: {
        alignItems: "center",
        flexDirection: "row",
        backgroundColor: colors.grey,
        borderRadius: 8,
        flexShrink: 0,
        height: "25%",
        justifyContent: "center",
        marginTop: 25,
        width: "80%",
        marginBottom: 20,
    },

    header: {
        fontSize: 18,
        display: 'flex',
        marginRight: 'auto',
        marginVertical: 10,
        fontWeight: "bold",
    },
    buttonText: {
        color: colors.lightGrey,
        fontSize: 18,
        fontWeight: "bold",
    },

    boldText: {
        fontSize: 20,
        fontWeight: "bold",
    },

    noPetText: {
        fontSize: 20,
        fontWeight: "bold",
        marginLeft: 20,
    },

    buttonGroup: {
        alignItems: "center",
        flexDirection: "column",
        justifyContent: "center",
        width: "100%",
        paddingTop: "25%",
    },

    signUpButtonGroup: {
        alignItems: "center",
        flexDirection: "column",
        justifyContent: "center",
        width: "100%",
        paddingTop: "5%",
    },
    loginButtonGroup: {
        alignItems: "center",
        flexDirection: "column",
        justifyContent: "center",
        width: "100%",
    },
    appointmentHeader: {
        fontSize: 18,
        display: 'flex',
        flex: 1,
        alignContent: "center", //only takes effect when wrapping occur
        alignItems: "center",
    },


    mainButton: {
        alignItems: "center",
        borderRadius: 10,
        justifyContent: "center",
        margin: 5,
        padding: 15,
        width: 230,
        color: colors.primary_Blue,
        backgroundColor: colors.primary_Blue,
    },
    secondaryButton: {
        alignItems: "center",
        borderRadius: 10,
        justifyContent: "center",
        margin: 5,
        padding: 15,
        width: 230,
        backgroundColor: colors.action_Orange,
    },

    submitButton: {
        alignItems: "center",
        borderRadius: 10,
        justifyContent: "center",
        margin: 5,
        padding: 15,
        width: 230,
        backgroundColor: colors.action_Green,
    },


    title: {
        alignItems: "center",
        flexDirection: "row",
        backgroundColor: colors.grey,
        borderRadius: 8,
        flexShrink: 0,
        height: "25%",
        justifyContent: "center",
        marginTop: 25,
        width: "80%",
        marginLeft: "10%",
    },

    fieldText: {
        backgroundColor: colors.white,
        borderRadius: 3,
        borderWidth: 1,
        fontSize: 20,
        fontWeight: "normal",
        height: 50,
        width: "100%",
    },

    errorText: {
        color: colors.brightRed,
        flexShrink: 1,
        fontSize: 16,
        // paddingBottom: 4,
        // paddingTop: 2,
    },


    //region Google Auto Complete Container
    GAC_Container: {
        flex: 1,
    },
    // GAC_ContainerStyle: {
    //     backgroundColor: colors.white,
    //     borderColor: colors.grey,
    //     borderRadius: 3,
    //     borderWidth: 1,
    //     fontSize: 20,
    //     fontWeight: "normal",
    //     height: 50,
    //     width: "100%",
    // },
    //endregion


    //region Appointment Screen
    descriptionBox: {
        fontSize: 20,
        fontWeight: "normal",
        width: "100%",
        height: 50,
        borderWidth: 1,
        borderRadius: 3,
        backgroundColor: colors.white,
    },

    tempMap: {
        alignItems: "center",
        backgroundColor: colors.grey,
        height: 250,
        justifyContent: "center",
        width: "90%",
    },

    defaultText: {
        fontSize: 18,
    },

    petContainer: {
        alignItems: "center",
        borderBottomColor: colors.grey,
        borderBottomWidth: 2,
        flexDirection: "row",
        height: 120,
        justifyContent: "space-between",
        paddingVertical: 10,
        width: "100%",
    },
    //endregion

    ChangePasswordGroup: {
        alignSelf: "center",
        height: "70%",
        justifyContent: "space-evenly",
        marginTop: 20,
        width: "100%",
    },

    AmountText: {
        fontSize: 20,
        fontWeight: "bold",
        marginBottom: 20
    },

    ReceiptTitleText: {
        fontSize: 16,
        fontWeight: "bold",
    },

    CardInputBoeder: {
        borderWidth: 1,
        borderColor: colors.darkGrey,
        borderRadius: 5
    },

    tagSelect: {
        flex: 1,
        backgroundColor: 'green',
        borderColor: 'green',
        borderWidth: 1,
        margin: 10,
    },

    tagUnselect: {
        flex: 1,
        backgroundColor: 'white',
        borderColor: 'green',
        borderWidth: 1,
        margin: 10,
    },

    tagTextSelect: {
        textAlign: 'center',
        color: 'white',
    },

    tagTextUnselect: {
        textAlign: 'center',
        color: 'green',
    },

    logoImage: {
        width: 420,
        height: 300,
    },
    logoImageSmall: {
        width: 300,
        height: 220,
        
    },



    signUpDropDown: {

        padding: 6,
        borderRadius: 10,
        width: "100%",
        color: colors.background_Grey,
        borderColor: colors.primary_Blue,
        backgroundColor: colors.white,
        borderWidth: 1,
        fontSize: 18,
        fontWeight: "bold",
        fontColor: colors.black,
    },

    ScreeningDropDown: {

        width: 230,
        height: "10%",
        margin: 5,
        padding: 15,
        borderRadius: 10,
        backgroundColor: colors.primary_Blue,
        //text color and font color and font size
        fontSize: 18,
        fontWeight: "bold",
        fontColor: colors.black,
    },

    signUpLoginTextBox: {
        padding: 2,
        paddingTop: 2,
        borderRadius: 10,
        width: "100%",
        borderColor: colors.primary_Blue,
        fontSize: 18,
        fontWeight: "bold",
        fontColor: colors.black,
        // backgroundColor: colors.primary_Blue,
    },
    createPetBox:{
        padding: 2,
        paddingTop: 2,
        borderRadius: 10,
        width: "100%",
        borderColor: colors.primary_Blue,
        fontSize: 18,
        fontWeight: "bold",
        fontColor: colors.black,
        paddingLeft: 20,
        paddingRight: 20,

    },

    createPetDropDown: {
        padding: 2,
        paddingTop: 2,
        borderRadius: 10,
        borderWidth: 1,
        width: 370,
        borderColor: colors.primary_Blue,
        fontSize: 18,
        fontWeight: "bold",
        fontColor: colors.black,
        backgroundColor: colors.white,
        paddingLeft: 20,
        paddingRight: 20,
        marginLeft: 20,
        marginBottom: 20,
    },

    createPetTextfield: {
        backgroundColor: colors.white,
        borderRadius: 3,
        borderWidth: 1,
        fontSize: 20,
        fontWeight: "normal",
        height: 50,
        width: "100%",
    },

    viewPetContainer: {
        
        alignItems: 'center',
        paddingHorizontal: 20,
        
    },
    viewPetInfoContainer:{

        width: 300,
        borderRadius: 5,
        borderWidth: 2,
        fontSize: 20,
    },
    petInfoText: {
        fontSize: 16,
        marginBottom: 5,
        marginLeft: 10,
    },
    petInfoLabel: {
        fontSize: 16,
        marginBottom: 5,
        marginLeft: 10,
        fontWeight: "bold",
    },
    petInfoLine: {
        flexDirection: 'row',
        borderBottomColor: colors.grey,
        borderBottomWidth: 1,
        padding: 10,

    },
    returnButton: {
        backgroundColor: 'blue',
        paddingVertical: 10,
        paddingHorizontal: 20,
        borderRadius: 10,
        color: colors.white,
    },
    returnButtonText: {
        color: colors.white,
        fontSize: 18,
        fontWeight: 'bold',
    },
    loadingOverlay: {
        position: 'absolute',
        left: 0,
        top: 0,
        right: 0,
        bottom: 0,
        backgroundColor: 'rgba(255,255,255,0.8)',
        alignItems: 'center',
        justifyContent: 'center'
    },        
})

export const autoCompleteStyles = StyleSheet.create({
    container: {
      flex: 1,
    },
    textInput: {
      height: 38,
      color: colors.black,
      fontSize: 16,
      flex: 1,
      backgroundColor: '#a8d8f0',
      borderRadius: 4,
      paddingHorizontal: 10,
    },
    listView: {
      backgroundColor: colors.background,
      marginTop: 0,
      marginLeft: 0,
      marginRight: 0,
      elevation: 0,
      shadowOpacity: 0,
    },
    separator: {
      height: 1,
      backgroundColor: '#ddd',
    },
    row: {
      backgroundColor: colors.background,
      flexDirection: 'row',
      alignItems: 'center',
      height: 45,
    },
    icon: {
      width: 30,
      height: 30,
      marginRight: 5,
    },
    placeName: {
      fontSize: 16,
      fontWeight: '700'
    },
    placeAddress: {
      fontSize: 12,
      color: '#707070',
    },
    clearButton: {
        position: 'absolute',
        right: 10,
        top: '50%',
        marginTop: -10,
    },
    reenterLocationButton: {
        borderWidth: 1,
        
    },
  });

export const mapStyles = StyleSheet.create({
    locationHeader: {
        position: 'absolute',
        top: 0,
        left: 0,
        right: 0,
        padding: 10,
        backgroundColor: colors.lightBlue,
        alignItems: 'flex-start',
        flexShrink: 1
    },
    locationText: {
        color: 'white',
        fontSize: 16,
        fontWeight: 'bold',
        paddingHorizontal: 8,
        paddingVertical: 4,
    },
    locationContainer: {
        flexDirection: 'row',
        alignItems: 'center',
    },
    footer: {
        flexDirection: 'row',
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: colors.lightBlue,
        padding: 10,
    },
    footerText: {
        color: 'white',
        fontSize: 20,
        fontWeight: 'bold',
        paddingHorizontal: 8,
    },
    iconStyle: {
        paddingHorizontal: 8,
    },
    buttonContainer: {
        position: 'absolute',
        right: 10,
        bottom: 50,
    },
    button: {
        backgroundColor: colors.action_Orange,
        padding: 10,
        borderRadius: 20,
        marginBottom: 12,
    }
});

export const lightMapStyle = [
  {
    "featureType": "administrative",
    "elementType": "geometry",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  }
]

export const addressStyles = StyleSheet.create({
  container: {
      padding: 20,
  },
  headerRow: {
      flexDirection: 'row',
      alignItems: 'center',
      marginBottom: 20,
  },
  title: {
      fontSize: 22,
      fontWeight: 'bold',
  },
  inputEmpty: {
      borderBottomWidth: 1,
      borderBottomColor: '#000000',
      padding: 10,
  },
  inputFilled: {
      borderWidth: 1,
      borderColor: '#000000',
      padding: 10,
  },
  listView: {
      backgroundColor: colors.background,
      marginTop: 44,
      marginLeft: 0,
      marginRight: 0,
      elevation: 0,
      shadowOpacity: 0,
      position: 'absolute',
      zIndex: 1
  },
  vetInfoBox: {
        alignItems: "center",

        display: "flex",
        flexDirection: "row",
        justifyContent: "space-between",
        paddingVertical: 10,
        width: "90%",
        backgroundColor: colors.primary_Blue,
        borderRadius: 30,
        marginBottom: 10,

  },
  inlineFields: {
      flexDirection: 'row',
  },
  halfInput: {
      flex: 1,
      padding: 10,
      borderBottomWidth: 1,
      borderBottomColor: '#000000',
      marginTop: 20,
      fontSize: 16
  },
  leftInput: {
      marginRight: 5,
  },
  rightInput: {
      marginLeft: 5,
  },
  fullInput: {
      borderBottomWidth: 1,
      borderBottomColor: '#000000',
      padding: 10,
      marginTop: 40,
      fontSize: 16
  },
  button: {
      backgroundColor: '#FFF',
      borderColor: '#000',
      borderWidth: 1,
      borderRadius: 5,
      paddingVertical: 10,
      paddingHorizontal: 20,
      marginTop: 40,
      width: '40%',
      alignItems: 'center'
  },
  buttonText: {
      color: '#000',
      fontSize: 16,
      fontWeight: 'bold',
  },
});

interface ToastProps {
  text1?: string;
  text2?: string;
  props?: any;
}

export const toastConfig = {
  success: ({ text1, text2, props }: ToastProps) => (
      <View style={{
          height: 60,
          width: '90%',
          backgroundColor: colors.lightBlue,
          shadowColor: "#000",
          shadowOffset: {
              width: 0,
              height: 2,
          },
          shadowOpacity: 0.25,
          shadowRadius: 3.84,
          elevation: 5,
          borderRadius: 10,
          borderWidth: 1,
          borderColor: '#000',
          flexDirection: 'row',
          alignItems: 'center',
          paddingHorizontal: 10,
      }}>
          <View>
              <Text style={{ fontWeight: 'bold', fontSize: 16 }}>{text1}</Text>
              <Text>{text2}</Text>
          </View>
      </View>
  ),
  error: ({ text1, text2, props }: ToastProps) => (
    <View style={{
        height: 60,
        width: '90%',
        backgroundColor: colors.brightRed,
        shadowColor: "#000",
        shadowOffset: {
            width: 0,
            height: 2,
        },
        shadowOpacity: 0.25,
        shadowRadius: 3.84,
        elevation: 5,
        borderRadius: 10,
        borderWidth: 1,
        borderColor: '#000',
        flexDirection: 'row',
        alignItems: 'center',
        paddingHorizontal: 10,
    }}>
        <View>
            <Text style={{ fontWeight: 'bold', fontSize: 16 }}>{text1}</Text>
            <Text>{text2}</Text>
        </View>
    </View>
),
};
  
  
