import React, { useEffect, useRef, useState } from 'react'
import { LocationInterface } from '../shared/Interfaces'
import { colors } from '../shared/Colors'
import { SafeAreaView, ScrollView, StyleSheet, View, TextInput, Pressable, Alert, TouchableHighlight, Modal } from "react-native"
import { Button, Card, Text, TopNavigation } from '@ui-kitten/components'
import { Dimensions } from 'react-native'
import { BASE_URL } from "../shared/Constants"
import { styles } from "../shared/Styles"
import { FontAwesome5 } from '@expo/vector-icons'
import { HomeScreenParams } from "../Home/HomeScreen"
import { Dropdown } from 'react-native-element-dropdown'
import { Int32 } from 'react-native/Libraries/Types/CodegenTypes'
import axios from 'axios';

export interface ScreeningQuestionsParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
    petId: string,
    body: any
}

export interface Screening {
    selectedOptionId: string
    selectedOptionText: string
}


const ScreeningQuestionsScreen = (props: any) => {

    const params: ScreeningQuestionsParams = props.route.params as ScreeningQuestionsParams


    const [sessionId, setSession] = useState<any>()
    const [question, setQuestion] = useState<any>({ questionText: "Start screening questions using the buttom at the bottom of the page", startButtonText: "Start Screening Questions" })
    const [answer, setAnswer] = useState<Screening>({ selectedOptionId: "", selectedOptionText: ""})
    const [options, setOptions] = useState<any[]>([])
    const [terminate, setTerminate] = useState<any>({ isTerminating: false, showTopText: true })
    const [result, setResult] = useState<any>({ resultPriority: "", doNext: "", firstAidAdvice: "", problem: "" })
    const [error, setError] = useState<any>({ errorText: "" })
    const [questionList, setQuestionList] = useState<any>([])
    const [updateReady, setUpdateReady] = useState<any>({ ready: false})
    const [processing, setProcessing] = useState<any>();
    const [selectedOptions, setSelectedOptions] = useState<{ [key: string]: Screening }>({});
    const [showDropdown, setShowDropdown] = useState<any>({ showDrop: false})
    const [appointmentPopup, setAppointmentPopup] = useState<any>({ showing: false });
    const scrollViewRef = useRef<ScrollView>(null);

    const urgencyLevel = "After answering the screening questions, you will be shown a result that contains an urgency level, those urgency levels mean the following: \n \n ";
    const levelLow = "Low"; const levelLowDesc = ": You do not need to visit your vet unless your pet's symptoms get worse \n";
    const levelMiddle = "Middle"; const levelMiddleDesc = ": You should make an appointment with your vet within the next 24 hours \n"
    const levelHigh = "High"; const levelHighDesc = ": You should make an appointment with your vet within the next 12 hours \n"
    const levelUrgent = "Urgent"; const levelUrgentDesc = ": You should contact your vet or visit a pet hospital as soon as possible";
    


    const scrollToBottom = () => {
        if(scrollViewRef.current)
        {
            scrollViewRef.current.scrollToEnd({animated: true})
        }
    }

    const optionChange = (selectedOption: any, questionId: string) => {
        setAnswer({ selectedOptionId: selectedOption.value, selectedOptionText: selectedOption.label });
        setSelectedOptions(prevState => ({...prevState,[questionId]: { selectedOptionId: selectedOption.value, selectedOptionText: selectedOption.label }
        }));

        const Terminating = options.find(option => option.optionId === selectedOption.value)?.isTerminating || false;
        setTerminate({ isTerminating: Terminating, showTopText: terminate.showTopText });
        
        //console.log(answer.selectedOptionId)
        //console.log(terminate.showTopText)
        if(processing == 1)
        setProcessing(0);
        else
        setProcessing(1);
        //processOption();
      };

      useEffect(() => {
        // Call processOption after all the dependent state variables have updated
        console.log("Process Option")
        processOption();
    }, [processing]);

    useEffect(() => {
        scrollToBottom();
     }, [questionList]);

    const backToQuestion = () => {
        setTerminate({ showTopText: true})
        updateQuestionList();
    }


    const updateQuestionList = async () => {
        let urlList = BASE_URL + "/screening/session/" + sessionId + "/view"
        console.log(urlList);

        try{
        const responseList = await fetch(urlList);
            const responseBodyList = await responseList.json();

            console.log(responseBodyList);
            
            setQuestionList(responseBodyList.answeredDetails);
            scrollToBottom();
        } catch (error: any) {
    
            console.error('Error:', error.message);
        }
    }


    /*
    useEffect(() => {
        //fetchRoot()
        if (questionList.length > 0) {
            // Now you can safely access questionList and perform actions
            questionList.forEach((detail: { questionText: any; options: any[] }) => {
                // Log the question text
                console.log('Question:', detail.questionText);
                
                // Iterate over each option in the "options" array
                detail.options.forEach((option: { optionText: any }) => {
                    // Log the option text
                    console.log('Option:', option.optionText);
                });
            });
        }
    }, [questionList])
    */


    const fetchRoot = async () => {
        console.log(params.petId);
        setShowDropdown({ showDrop: true});
        let url = BASE_URL + "/screening/start-session/user/" + params.userId + "/pet/" + params.petId  //--hardcoded petId for now

        console.log('Creating new screening questions session...');
        console.log('URL:', url);
        try{
            const response = await fetch(url, {
                method: 'POST'
            })

            const responseBody = await response.json();
            setSession(responseBody);
            console.log(responseBody);


            const res = await fetch(BASE_URL + "/screening/get/root-question/dog")
            const data = await res.json()
            setOptions(data.options)
            setQuestion({ questionText: data.questionText, startButtonText: "Restart Screening Questions"})
            setTerminate({ isTerminating: data.options.some((option: { isTerminating: any }) => option.isTerminating), showTopText: true})
            setQuestionList([data]);
            //setAnswer({ selectedOptionId: "", selectedOptionText: answer.selectedOptionText });
            setSelectedOptions({});

            setUpdateReady({Ready: true});
            //updateQuestionList();

        } catch (error: any) {
        
            console.error('Error:', error.message);
        }


    }

    const processOption = async () => {
        if(answer.selectedOptionId == "")
        {
            setError({errorText: "Please select an answer"})
        }
        else
        {
            setError({errorText: ""})
            setUpdateReady({Ready: true});
            let url = BASE_URL + "/screening/session/" + sessionId + "/process-option/" + answer.selectedOptionId
            

            console.log("Url: " + url) 
            try{
                const response = await fetch(url, {
                    method: 'POST'
                })
    
                const responseBody = await response.json();
                //console.log(responseBody);
                //console.log(terminate.isTerminating)

                updateQuestionList();
                console.log("terminate: " + terminate.isTerminating)
                if(terminate.isTerminating || responseBody.options == null)
                {
                    setResult({resultPriority: responseBody.resultPriority, doNext: responseBody.doNext, firstAidAdvice: responseBody.firstAidAdvice, problem: responseBody.problem})
                    setTerminate({ showTopText: false})
                    //console.log(result.resultPriority)
                    //console.log(result.doNext)
                    //console.log(result.firstAidAdvice)
                    //console.log(result.problem)
                }
                else
                {
                setOptions(responseBody.options)
                setQuestion({ questionText: responseBody.questionText, startButtonText: "Restart Screening Questions"})
                setTerminate({ isTerminating: responseBody.options.some((option: { isTerminating: any }) => option.isTerminating), showTopText: true})
                //setAnswer({ selectedOptionId: "", selectedOptionText: answer.selectedOptionText })
                }
            } catch (error: any) {
        
                console.error('Error:', error.message);
            }
        }

    }

    const handleSubmit = async () => {
        params.body.sessionId = sessionId;
        console.log(params.body);
        const options = {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(params.body),
        }
        const url = BASE_URL + '/appointment/create/' + params.userId + '/' + params.petId
        console.log(url)
        console.log(options)

        await postAppointment(url, params.body)
    }

    const postAppointment = async (url: string, options: any) => {
        try {
            const response = await axios.post(url, options, {
                headers: { 'Content-Type': 'application/json' }
            });
            console.log('Appointment created:', response.data);
            setAppointmentPopup({showing: true})
            //props.navigation.popToTop();
            //props.navigation.navigate("HomeClient");
        } catch (error) {
            console.error('Error creating appointment:', error);
            setError('Failed to create appointment. Please try again.');
        }
    }

    const returnToHome = async () => {
        //props.navigation.popToTop()
        setAppointmentPopup({showing: false})
        props.navigation.popToTop()
        props.navigation.navigate("HomeClient")
    }



    return (
        <SafeAreaView style={styles.loginBackground}>
            {!terminate.showTopText ? null : (
                
            <ScrollView contentContainerStyle={{ flexGrow: 1}} ref={scrollViewRef} onContentSizeChange={scrollToBottom}>
                <View style={{ width: "100%", marginTop: "1%", flex: 1, alignItems: "center" }}>
                    {updateReady.Ready ? null : (
                        <View style={{ width: "100%", marginTop: "10%", flex: 1, alignContent: 'flex-start' }}>
                            <Text style={{ color: 'black', fontWeight: "bold", fontSize: 26, textAlign: 'center', paddingBottom: 15 }}> {question.questionText}</Text>

                            {!showDropdown.showDrop && (
                                <Text style={{ color: 'black', fontWeight: "bold", fontSize: 24, textAlign: 'center', paddingBottom: 15 }}> {urgencyLevel}
                                <Text style={{textAlign: 'auto'}}>{}
                                <Text style={{color: 'green', fontSize: 24}}>{levelLow}</Text> <Text style={{fontSize: 20}}>{levelLowDesc}</Text> <Text style={{color: 'rgb(240, 220, 0)', fontSize: 24}}>{levelMiddle}</Text>
                                <Text style={{fontSize: 20}}>{levelMiddleDesc}</Text> <Text style={{color: 'orange', fontSize: 24}}>{levelHigh}</Text> <Text style={{fontSize: 20}}>{levelHighDesc}</Text>
                                <Text style={{color: 'red', fontSize: 24}}>{levelUrgent}</Text> <Text style={{fontSize: 20}}>{levelUrgentDesc}</Text> </Text> </Text>
                            )}
                        </View>

                    )}

                    
                    
                    {updateReady.Ready && questionList && questionList.map((question: any, index: any) => (
                        <View style={{ width: "100%", marginTop: "5%", flex: 1, alignItems: "center" }} key={index}>
                        <Text style={{ color: 'black', fontWeight: "bold", fontSize: 26, textAlign: 'center', paddingBottom: 5 }}> {question.questionText}</Text>

        
                    {question.options.length < 6 ? (
                        <View style={{ flexDirection: 'column', width: '90%' }}>
                            {question.options.map((option: any) => (
                                <TouchableHighlight
                                    key={option.optionId}
                                    style={{ ...styles.mainButton, backgroundColor: selectedOptions[question.questionId]?.selectedOptionText === option.optionText ? 'black' : colors.primary_Blue, marginTop: "auto", width: '100%' }}
                            onPress={() => optionChange({ value: option.optionId, label: option.optionText }, question.questionId)}
                                >
                                    <Text style={{ color: colors.white, textAlign: 'left' }}>{option.optionText}</Text>
                                 </TouchableHighlight>
                        ))}
                        </View>
                        ) : (
                        <Dropdown
                            data={question.options.map((option: any) => ({ label: option.optionText, value: option.optionId }))}
                            value={selectedOptions[question.questionId]?.selectedOptionId || ""}
                            onChange={(option: any) => optionChange(option, question.questionId)}
                            style={[
                                styles.ScreeningDropDown,
                                { width: "97%", padding: 25, borderRadius: 20, borderColor: colors.primary_Blue, backgroundColor: colors.white, borderWidth: 2, color: colors.background_Grey,
                                marginBottom: index === questionList.length - 1 ? 100 : 0 }
                            ]}
                            placeholder={selectedOptions[question.questionId]?.selectedOptionText || "Select Answer"}
                            labelField={"label"} valueField={"value"}    
                            />
                            )}


                        </View>
                        ))}

                    
                    

                    {!showDropdown.showDrop && (
                    <TouchableHighlight style={{ ...styles.mainButton, marginTop: "auto", alignContent: "center" }}
                            underlayColor={colors.black_underlay} onPress={fetchRoot}>
                            <Text style={{...styles.buttonText, textAlign: "center"}}> {question.startButtonText} </Text>
                    </TouchableHighlight>
                    )}
                
                    </View>
                </ScrollView>
            
                )}


            {terminate.showTopText ? null : (
            <View style={{ width: "90%", marginTop: "5%", flex: 1, alignItems: "center" }}>
                <ScrollView contentContainerStyle={{ flexGrow: 1}}>
                <Text style={{ color: 'black', fontSize: 28, paddingBottom: 15, fontWeight: "bold" }}>
                {"Problem Severity: "}
                    <Text style={{ color: result.resultPriority === 'LOW' ? 'green' : result.resultPriority === 'MIDDLE' ? 'rgb(240, 220, 0)' : result.resultPriority === 'HIGH' ? 'orange' : result.resultPriority === 'URGENT' ? 'red' : 'black', fontSize: 28, paddingBottom: 15, fontWeight: "bold" }}>
                    {result.resultPriority}
                    </Text>
                </Text>
                <Text style={{ color: 'black', fontSize: 26, paddingBottom: 5, fontWeight: "bold" }}> {"Problem:"}</Text>
                <Text style={{ color: 'black', fontSize: 22, paddingBottom: 15 }}> {result.problem}</Text>
                <Text style={{ color: 'black', fontSize: 26, paddingBottom: 5, fontWeight: "bold" }}> {"First Aid Advice:"}</Text>
                <Text style={{ color: 'black', fontSize: 22, paddingBottom: 15 }}> {result.firstAidAdvice}</Text>
                <Text style={{ color: 'black', fontSize: 26, paddingBottom: 5, fontWeight: "bold" }}> {"What to Do Next:"}</Text>
                <Text style={{ color: 'black', fontSize: 22, paddingBottom: 15 }}> {result.doNext}</Text>

                <Modal transparent={true} visible={appointmentPopup.showing}>
                    <View style={{flex:1, alignItems: 'center'}}>
                        <View style={{backgroundColor:"#ffffff",margin:100, padding:60, borderRadius:10, flex:1}}>
                        <Text style={{fontSize: 40, textAlign: 'center'}}>{"Appointment Created"}</Text>
                        <TouchableHighlight style={{...styles.mainButton}} onPress={returnToHome}>
                            <Text style={{...styles.buttonText,fontSize: 25}}>{"Continue"}</Text>
                        </TouchableHighlight>
                        </View>
                    </View>

                </Modal>

                <TouchableHighlight style={{ ...styles.mainButton, paddingTop: 15, alignSelf: "center" }}
                        underlayColor={colors.black_underlay} onPress={backToQuestion}>
                        <Text style={styles.buttonText}> Back </Text>
                </TouchableHighlight>
                <TouchableHighlight style={{ ...styles.mainButton, paddingBottom: 15, alignSelf: "center" }}
                        underlayColor={colors.black_underlay} onPress={handleSubmit}>
                        <Text style={styles.buttonText}> Create Appointment </Text>
                </TouchableHighlight>
                </ScrollView>
            </View>
            )}
                

            
            
        </SafeAreaView>
        )



}

export default ScreeningQuestionsScreen
