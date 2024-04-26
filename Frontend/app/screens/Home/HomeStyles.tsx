import { StyleSheet } from "react-native"
import { colors } from "../shared/Colors"

export const homeStyles: any = StyleSheet.create({

    clientComponent: {
        width: "90%",
        height: "90%"
    },

    vetComponent: {
        width: "90%",
        height: "90%"
    },

    petInfo: {
        alignItems: "center",

        display: "flex",
        flexDirection: "row",
        justifyContent: "space-between",
        paddingVertical: 10,
        width: "100%",
        backgroundColor: colors.primary_Blue,
        borderRadius: 30,
        marginBottom: 10,
    },

    createAppointment: {
        backgroundColor: colors.action_Orange,
        borderColor: colors.darkGrey,
        width: 120,
        marginRight: 10,
        borderRadius: 25,
    },

    viewAppointment: {
        backgroundColor: colors.green,
        borderColor: colors.green,
        width: 120,
    },

    waitingForAppointment: {
        backgroundColor: colors.blue,
        borderColor: colors.blue,
        width: 120,
    },

    payAppointment: {
        backgroundColor: colors.black,
        borderColor: colors.black,
        width: 120,
    },

    container: {
        alignItems: "flex-start",
        display: "flex",
        flexDirection: "column",
        width: "100%",
        padding: 0,
        margin: 0,
    },

    addPetContainer: {
        bottom: 20,
        position: "absolute",
        display: 'flex',
        flexDirection: 'row',
        justifyContent: 'center',
        marginHorizontal: 20,
    },

    addPetButton: {
        borderRadius: 35,
        borderWidth: 2,
        color: colors.lightBlue,
        width: 70,
    },

    tempPic: {
        backgroundColor: colors.grey,
        height: 60,
        width: 60,
        borderRadius: 100,
        justifyContent: "center",
        alignItems: "center",
    },

    tempPicLarge: {
        backgroundColor: colors.grey,
        height: 120,
        width: 120,
        borderRadius: 100,
        justifyContent: "center",
        alignItems: "center",
    },

    addButton: {
        margin: 5,
        padding: 15,
        width: 70,
        color: colors.primary_Blue,
        backgroundColor: colors.primary_Blue,

    },
    refreshButton: {
        margin: 5,
        padding: 15,
        width: 150,
        color: colors.primary_Blue,
        backgroundColor: colors.primary_Blue,

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

})