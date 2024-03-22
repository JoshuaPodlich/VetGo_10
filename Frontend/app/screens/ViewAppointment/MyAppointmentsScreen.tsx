import React, { useEffect } from 'react'
import { LocationInterface } from '../shared/Interfaces'

export interface MyAppointmentsScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
    appointmentId: string
}
function MyAppointmentsScreen(props: any) {

    //region States
    const params: MyAppointmentsScreenParams = props.route.params as MyAppointmentsScreenParams

    //endregion



    useEffect(() => {
        if (params.userIsVet) {
            props.navigation.navigate("MyAppointmentsVet")
        } else {
            props.navigation.navigate("MyAppointmentsOwner")
        }
    }, [])

    return <></>



}

export default MyAppointmentsScreen
