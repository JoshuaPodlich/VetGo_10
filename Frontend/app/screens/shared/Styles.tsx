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
    GAC_ContainerStyle: {
        backgroundColor: colors.white,
        borderColor: colors.grey,
        borderRadius: 3,
        borderWidth: 1,
        fontSize: 20,
        fontWeight: "normal",
        height: 50,
        width: "100%",
    },
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
        


})
