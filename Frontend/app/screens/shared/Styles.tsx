import {StyleSheet} from "react-native"
import {colors} from "./Colors"

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
      backgroundColor: '#C8C8C8',
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
  });

export const mapStyles = StyleSheet.create({
    locationHeader: {
        position: 'absolute',
        top: 0,
        left: 0,
        right: 0,
        padding: 20,
        backgroundColor: '#28282B',
        alignItems: 'flex-start',
        flexShrink: 1
    },
    locationText: {
        color: 'white',
        fontSize: 16,
        fontWeight: 'bold',
        marginLeft: 6
    },
    locationContainer: {
        flexDirection: 'row',
        alignItems: 'center',
    },
    footer: {
        flexDirection: 'row',
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#28282B',
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
});

export const darkMapStyle = [
    {
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#212121"
        }
      ]
    },
    {
      "elementType": "labels.icon",
      "stylers": [
        {
          "visibility": "off"
        }
      ]
    },
    {
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#757575"
        }
      ]
    },
    {
      "elementType": "labels.text.stroke",
      "stylers": [
        {
          "color": "#212121"
        }
      ]
    },
    {
      "featureType": "administrative",
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#757575"
        },
        {
          "visibility": "off"
        }
      ]
    },
    {
      "featureType": "administrative.country",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#9e9e9e"
        }
      ]
    },
    {
      "featureType": "administrative.land_parcel",
      "stylers": [
        {
          "visibility": "off"
        }
      ]
    },
    {
      "featureType": "administrative.locality",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#bdbdbd"
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
      "featureType": "poi",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#757575"
        }
      ]
    },
    {
      "featureType": "poi.park",
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#181818"
        }
      ]
    },
    {
      "featureType": "poi.park",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#616161"
        }
      ]
    },
    {
      "featureType": "poi.park",
      "elementType": "labels.text.stroke",
      "stylers": [
        {
          "color": "#1b1b1b"
        }
      ]
    },
    {
      "featureType": "road",
      "elementType": "geometry.fill",
      "stylers": [
        {
          "color": "#2c2c2c"
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
      "featureType": "road",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#ffffff"
        }
      ]
    },
    {
      "featureType": "road.arterial",
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#373737"
        }
      ]
    },
    {
      "featureType": "road.highway",
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#3c3c3c"
        }
      ]
    },
    {
      "featureType": "road.highway.controlled_access",
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#4e4e4e"
        }
      ]
    },
    {
      "featureType": "road.local",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#616161"
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
    },
    {
      "featureType": "transit",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#757575"
        }
      ]
    },
    {
      "featureType": "water",
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#000000"
        }
      ]
    },
    {
      "featureType": "water",
      "elementType": "labels.text.fill",
      "stylers": [
        {
          "color": "#3d3d3d"
        }
      ]
    }
  ]


  
  
