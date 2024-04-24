import React, { useEffect } from 'react'
import { LocationInterface } from '../shared/Interfaces'
import { useUser } from '../shared/UserContext';

export interface MyAppointmentsScreenParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
    appointmentId: string
}


function MyAppointmentsScreen(props: any) {
    const { user } = useUser();
    //region States
    const params: MyAppointmentsScreenParams = user as MyAppointmentsScreenParams

    //endregion



    useEffect(() => {
        if (params.userIsVet) {
            props.navigation.navigate("MyAppointmentsVet", { userId: params.userId, userIsVet: params.userIsVet, location: params.location })
        } else {
            props.navigation.navigate("MyAppointmentsOwner", { userId: params.userId, userIsVet: params.userIsVet, location: params.location })
        }
    }, [])

    return <></>



}

export default MyAppointmentsScreen
