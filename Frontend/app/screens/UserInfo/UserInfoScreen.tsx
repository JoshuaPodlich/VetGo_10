// import React, { useEffect } from 'react';
// import { View, Text, TouchableOpacity, StyleSheet } from 'react-native';
// import { styles } from '../shared/Styles';
// import { colors } from '../shared/Colors';
// import { BASE_URL } from '../shared/Constants';
// import { Log } from 'victory-native';
// import { Logo } from '../shared/Components';

// export interface UserInfoScreenParams {
//     userId: string,
//     userIsVet: boolean,
// }

// // Hardcoded user info for demonstration
// const userInfo = {
//     email: 'not added',
//     userAddress: 'not added',
//     firstName: 'not added',
//     lastName: 'not added',
//     telephone: 'not added',
// };

// function UserInfoScreen(props: any) {
//     useEffect(() => {
//         getUserInfo(props.route.params.userId)
//     }, [])   
//     // Get user info from the params
//     const getUserInfo = async (userId: any) => {
//         try {
//             const response = await fetch(`${BASE_URL}/user/id/${userId}`);

//             if (!response.ok) {
//                 throw new Error('Problem fetching user data');
//             }

//             const data = await response.json();

//             const { id, email, address, firstName, lastName, telephone } = data;

//             userInfo.email = email;
//             userInfo.userAddress = address;
//             userInfo.firstName = firstName;
//             userInfo.lastName = lastName;
//             userInfo.telephone = telephone;

//             //if a value is null, set it to 'not added'
//             if (userInfo.email == null) {
//                 userInfo.email = 'not added';
//             }
//             if (userInfo.userAddress == null) {
//                 userInfo.userAddress = 'not added';
//             }
//             if (userInfo.firstName == null) {
//                 userInfo.firstName = 'not added';
//             }
//             if (userInfo.lastName == null) {
//                 userInfo.lastName = 'not added';
//             }
//             if (userInfo.telephone == null) {
//                 userInfo.telephone = 'not added';
//             }

//         }
//         catch (error) {
//             console.log(error);
//         }
    
//     }

        


//     return (
//         <View style={userStyles.container}>
//             <Text style={{ fontSize: 40, fontWeight: "bold", marginTop: 30, color: colors.action_Orange, paddingBottom: 25}}  >
//                             User Info</Text>
//             <View style={userStyles.userInfoContainer}>
//                 <Text style={userStyles.userInfoText}>First Name: {userInfo.firstName}</Text>
//                 <Text style={userStyles.userInfoText}>Last Name: {userInfo.lastName}</Text>
//                 <Text style={userStyles.userInfoText}>Phone Number: {userInfo.telephone}</Text>
//                 <Text style={userStyles.userInfoText}>Address: {userInfo.userAddress}</Text>
//                 <Text style={userStyles.userInfoText}>Email: {userInfo.email}</Text>
//             </View>
//             <TouchableOpacity style={{...styles.mainButton, marginTop: 50}} onPress={() => props.navigation.goBack()
// }>
//                 <Text style={userStyles.returnButtonText}>Return</Text>
//             </TouchableOpacity>
//         </View>
//     );
// }

// const userStyles = StyleSheet.create({
//     container: {
//         flex: 1,
//         alignItems: 'center',
//     },
//     title: {
//         fontSize: 30,
//         fontWeight: 'bold',
//         marginBottom: 20,
//     },
//     userInfoContainer: {
//         marginBottom: 20,
//     },
//     userInfoText: {
//         fontSize: 18,
//         marginBottom: 10,
//         borderWidth: 1,
//         borderRadius: 10,
//         padding: 10,
//         backgroundColor: colors.primary_Blue,
//         borderColor: colors.primary_Blue,
//         color: colors.white,
//         width: 300,

//     },
//     returnButton: {
//         backgroundColor: 'blue',
//         paddingVertical: 10,
//         paddingHorizontal: 20,
//         borderRadius: 10,
//     },
//     returnButtonText: {
//         color: '#fff',
//         fontSize: 18,
//         fontWeight: 'bold',
//     },
// });

// export default UserInfoScreen;











import React, { useState, useEffect } from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet } from 'react-native';
import { styles } from '../shared/Styles';
import { colors } from '../shared/Colors';
import { BASE_URL } from '../shared/Constants';
import { Log } from 'victory-native';
import { Logo } from '../shared/Components';

export interface UserInfoScreenParams {
    userId: string;
    userIsVet: boolean;
}

// Hardcoded user info for demonstration
const userInfo = {
    email: 'not added',
    userAddress: 'not added',
    firstName: 'not added',
    lastName: 'not added',
    telephone: 'not added',
};

function UserInfoScreen(props: any) {
    const [editingField, setEditingField] = useState<string | null>(null);
    const [inputValue, setInputValue] = useState<string>('');
    const [userData, setUserData] = useState(userInfo);

    useEffect(() => {
        getUserInfo(props.route.params.userId);
    }, []);

    const getUserInfo = async (userId: string) => {
        try {
            const response = await fetch(`${BASE_URL}/user/id/${userId}`);
            if (!response.ok) {
                throw new Error('Problem fetching user data');
            }
            const data = await response.json();
            const { id, email, address, firstName, lastName, telephone } = data;

            // Update user info state
            setUserData({
                email: email || 'not added',
                userAddress: address || 'not added',
                firstName: firstName || 'not added',
                lastName: lastName || 'not added',
                telephone: telephone || 'not added',
            });
        } catch (error) {
            console.log(error);
        }
    };

    const handleEdit = (field: keyof typeof userInfo) => {
        setEditingField(field);
        setInputValue(userData[field]);
    };

    const handleSubmit = () => {
        setUserData((prevState) => ({
            ...prevState,
            [editingField as string]: inputValue,
        }));
        setEditingField(null);
        setInputValue('');

        // Update user info in the database
    //     const body = {

    //         [editingField as string]: inputValue,
    //     };
    //     console.log(body);
    //     fetch(`${BASE_URL}/user/update/${props.route.params.userId}`, {
    //         method: 'PUT',
    //         headers: {
    //             'Content-Type': 'application/json',
    //         },
    //         body: JSON.stringify({
    //             [editingField as string]: inputValue,
    //         }),
    //     }
    // )
    //         .then((response) => {
    //             console.log(response);
    //             if (!response.ok) {
    //                 throw new Error('Problem updating user data');
    //             }
    //         })

    //         .catch((error) => {
    //             console.log(error);
    //         });


    };

    function handleInputChange(text: string): void {
        setInputValue(text);}

    return (
        <View style={userStyles.container}>
            <Text style={userStyles.title}>User Info</Text>
            <View style={userStyles.userInfoContainer}>
                {/* Display user info fields with edit button */}
                {['firstName', 'lastName', 'telephone', 'userAddress', 'email'].map((field) => (
                    <View style={userStyles.userInfoRow} key={field}>
                        <Text style={userStyles.userInfoText}>
                            {field.charAt(0).toUpperCase() + field.slice(1)}: {userData[field as keyof typeof userData]}
                        </Text>
                        <TouchableOpacity
                            style={userStyles.editButton}
                            onPress={() => handleEdit(field as keyof typeof userData)}
                        >
                            <Text style={userStyles.editButtonText}>Edit</Text>
                        </TouchableOpacity>
                    </View>
                ))}

                {/* Display input box and submit button when editing */}
                {editingField && (
                    <View style={userStyles.editContainer}>
                        <TextInput
                            style={userStyles.input}
                            value={inputValue}
                            onChangeText={handleInputChange}
                        />
                        <TouchableOpacity
                            style={userStyles.submitButton}
                            onPress={handleSubmit}
                        >
                            <Text style={userStyles.submitButtonText}>Submit</Text>
                        </TouchableOpacity>
                    </View>
                )}
            </View>
            <TouchableOpacity style={userStyles.returnButton} onPress={() => props.navigation.goBack()}>
                <Text style={userStyles.returnButtonText}>Return</Text>
            </TouchableOpacity>
        </View>
    );
}

const userStyles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: 'center',
        padding: 20,
    },
    title: {
        fontSize: 40,
        fontWeight: 'bold',
        color: colors.action_Orange,
        paddingBottom: 25,
    },
    userInfoContainer: {
        width: '100%',
        alignItems: 'center',
    },
    userInfoRow: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        marginBottom: 10,
        borderWidth: 1,
        borderRadius: 10,
        padding: 10,
        backgroundColor: colors.primary_Blue,
        borderColor: colors.primary_Blue,
        color: colors.white,
        width: 300,
    },
    userInfoText: {
        fontSize: 18,
        color: colors.white,
    },
    editButton: {
        backgroundColor: colors.action_Orange,
        padding: 5,
        borderRadius: 5,
    },
    editButtonText: {
        color: colors.white,
        fontSize: 14,
    },
    editContainer: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        alignItems: 'center',
        marginTop: 10,
    },
    input: {
        borderWidth: 1,
        borderColor: colors.primary_Blue,
        borderRadius: 5,
        padding: 8,
        width: '80%',
    },
    submitButton: {
        backgroundColor: colors.action_Orange,
        padding: 10,
        borderRadius: 5,
    },
    submitButtonText: {
        color: colors.white,
        fontSize: 16,
        fontWeight: 'bold',
    },
    returnButton: {
        backgroundColor: colors.primary_Blue,
        paddingVertical: 10,
        paddingHorizontal: 20,
        borderRadius: 10,
        marginTop: 300,
        width: 150,
        alignItems: 'center'

    },
    returnButtonText: {
        color: colors.white,
        fontSize: 18,
        fontWeight: 'bold',
    },
});

export default UserInfoScreen;

