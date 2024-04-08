import React, { useEffect, useRef, useState } from 'react'
import { LocationInterface } from '../shared/Interfaces'
import { colors } from '../shared/Colors'
import { SafeAreaView, ScrollView, StyleSheet, View, TextInput, Pressable, Alert, TouchableHighlight } from "react-native"
import { Button, Card, Text, TopNavigation } from '@ui-kitten/components'
import { Dimensions } from 'react-native'
import { BASE_URL } from "../shared/Constants"
import { styles } from "../shared/Styles"
import { FontAwesome5 } from '@expo/vector-icons'
import { HomeScreenParams } from "../Home/HomeScreen"
import { Dropdown } from 'react-native-element-dropdown'
import { Int32 } from 'react-native/Libraries/Types/CodegenTypes'

export interface ScreeningQuestionsParams {
    userId: string,
    userIsVet: boolean,
    location: LocationInterface,
    petId: string,
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

    const urgencyLevel = "After answering the screening questions, you will be shown a result that contains an urgency level, those urgency levels mean the following: \n \n " +
    "Selfcare: You do not need to visit your vet unless your pet's symptoms get worse \n" +
    "Middle: You should make an appointment with your vet within the next 24 hours \n" +
    "High: You should make an appointment with your vet within the next 12 hours \n" +
    "Urgent: You should contact your vet or visit a pet hospital as soon as possible";
    


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
        //console.log(params.petId);
        setShowDropdown({ showDrop: true});
        let url = BASE_URL + "/screening/start-session/user/" + params.userId + "/pet/1"// + params.petId  //--hardcoded petId for now

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
            //setAnswer({ selectedOptionId: "", selectedOptionText: answer.selectedOptionText });
            setSelectedOptions({});

            setUpdateReady({Ready: false});
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
                    console.log(result.resultPriority)
                    console.log(result.doNext)
                    console.log(result.firstAidAdvice)
                    console.log(result.problem)
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



    return (
        <SafeAreaView style={styles.loginBackground}>
            {!terminate.showTopText ? null : (
                
            <ScrollView contentContainerStyle={{ flexGrow: 1}}>
                <View style={{ width: "100%", marginTop: "10%", flex: 1, alignItems: "center" }}>
                    {updateReady.Ready ? null : (
                        <View style={{ width: "100%", marginTop: "10%", flex: 1, alignItems: "center" }}>
                            <Text style={{ color: 'black', fontWeight: "bold", fontSize: 26, textAlign: 'center', paddingBottom: 15 }}> {question.questionText}</Text>

                            {!showDropdown.showDrop && (
                                <Text style={{ color: 'black', fontWeight: "bold", fontSize: 22, textAlign: 'center', paddingBottom: 15 }}> {urgencyLevel} </Text>
                            )}
                            
                            { showDropdown.showDrop && (
                            <Dropdown
                                data={options.map((option: any) => ({ label: option.optionText, value: option.optionId }))}
                                value={selectedOptions['first']?.selectedOptionId || ""}
                                onChange={(option: any) => optionChange(option, 'first')}
                                style={[
                                    styles.ScreeningDropDown,
                                    { width: "97%", padding: 5, borderRadius: 20, borderColor: colors.primary_Blue, backgroundColor: colors.white, borderWidth: 2, color: colors.background_Grey }
                                ]}
                                placeholder='Select Answer' labelField={"label"} valueField={"value"}    />

                                )}
                        </View>

                    )}

                    
                    
                    {updateReady.Ready && questionList && questionList.map((question: any, index: any) => (
                        <View style={{ width: "100%", marginTop: "10%", flex: 1, alignItems: "center" }} key={index}>
                        <Text style={{ color: 'black', fontWeight: "bold", fontSize: 26, textAlign: 'center', paddingBottom: 5 }}> {question.questionText}</Text>

        
                    {question.options.length === 2 ? (
                        <View style={{ flexDirection: 'row', justifyContent: 'center', width: '100%' }}>
                            {question.options.map((option: any) => (
                                <TouchableHighlight
                                    key={option.optionId}
                                    style={{ ...styles.mainButton, backgroundColor: selectedOptions[question.questionId]?.selectedOptionText === option.optionText ? 'black' : colors.primary_Blue, marginTop: "auto", alignContent: "center", width: '35%' }}
                            onPress={() => optionChange({ value: option.optionId, label: option.optionText }, question.questionId)}
                                >
                                    <Text style={{ color: colors.white, textAlign: 'center' }}>{option.optionText}</Text>
                                 </TouchableHighlight>
                        ))}
                        </View>
                        ) : (
                        <Dropdown
                            data={question.options.map((option: any) => ({ label: option.optionText, value: option.optionId }))}
                            value={selectedOptions['first']?.selectedOptionId || ""}
                            onChange={(option: any) => optionChange(option, question.questionId)}
                            style={[
                                styles.ScreeningDropDown,
                                { width: "97%", padding: 25, borderRadius: 20, borderColor: colors.primary_Blue, backgroundColor: colors.white, borderWidth: 2, color: colors.background_Grey }
                            ]}
                            placeholder={selectedOptions[question.questionId]?.selectedOptionText || "Select Answer"}
                            labelField={"label"} valueField={"value"}    
                            />
                            )}

                        </View>
                        ))}

                    
                    


                    <TouchableHighlight style={{ ...styles.mainButton, marginTop: "auto", alignContent: "center" }}
                            underlayColor={colors.black_underlay} onPress={fetchRoot}>
                            <Text style={{...styles.buttonText, textAlign: "center"}}> {question.startButtonText} </Text>
                    </TouchableHighlight>
                
                    </View>
                </ScrollView>
            
                )}


            {terminate.showTopText ? null : (
            <View style={{ width: "90%", marginTop: "5%", flex: 1, alignItems: "center" }}>
                <ScrollView contentContainerStyle={{ flexGrow: 1}}>
                <Text style={{ color: 'black', fontSize: 28, paddingBottom: 15, fontWeight: "bold" }}> {"Problem severity: " + result.resultPriority}</Text>
                <Text style={{ color: 'black', fontSize: 26, paddingBottom: 5, fontWeight: "bold" }}> {"Problem:"}</Text>
                <Text style={{ color: 'black', fontSize: 22, paddingBottom: 15 }}> {result.problem}</Text>
                <Text style={{ color: 'black', fontSize: 26, paddingBottom: 5, fontWeight: "bold" }}> {"FirstAid advice:"}</Text>
                <Text style={{ color: 'black', fontSize: 22, paddingBottom: 15 }}> {result.firstAidAdvice}</Text>
                <Text style={{ color: 'black', fontSize: 26, paddingBottom: 5, fontWeight: "bold" }}> {"What to do next:"}</Text>
                <Text style={{ color: 'black', fontSize: 22, paddingBottom: 15 }}> {result.doNext}</Text>

                <TouchableHighlight style={{ ...styles.mainButton, paddingTop: 15, alignSelf: "center" }}
                        underlayColor={colors.black_underlay} onPress={backToQuestion}>
                        <Text style={styles.buttonText}> Back </Text>
                </TouchableHighlight>
                </ScrollView>
            </View>
            )}
                

            
            
        </SafeAreaView>
        )



}

export default ScreeningQuestionsScreen
