import {StyleSheet} from "react-native"
import {colors} from "../shared/Colors"

export const locationStyles = StyleSheet.create({
    background: {
        flex: 1,
        backgroundColor: colors.background, // Light grey or white
    },
    container: {
        flex: 1,
        padding: 20,
        justifyContent: 'space-around',
        alignItems: 'center',
    },
    titleText: {
        fontSize: 18,
        fontWeight: 'bold',
        marginBottom: 10,
        color: colors.primary,
        textAlign: 'center',
    },
    errorText: {
        color: colors.error,
        fontSize: 14,
        marginTop: 5,
        textAlign: 'center',
    },
    submitButton: {
        backgroundColor: colors.primary,
        padding: 10,
        borderRadius: 5,
        width: '100%',
    },
    submitButtonDisabled: {
        backgroundColor: colors.disabled,
        padding: 10,
        borderRadius: 5,
        width: '100%',
    },
    submitButtonText: {
        color: colors.white,
        fontSize: 16,
    },
    submitButtonTextDisabled: {
        color: colors.lightGrey,
        fontSize: 16,
    },
});

