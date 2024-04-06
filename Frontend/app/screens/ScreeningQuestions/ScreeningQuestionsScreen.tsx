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
}


const ScreeningQuestionsScreen = (props: any) => {

    //region States
    const params: ScreeningQuestionsParams = props.route.params as ScreeningQuestionsParams

    const [loading, setLoading] = useState(true)

    //const isSubmittingRef = useRef<boolean>(false)

    //endregion
    const [sessionId, setSession] = useState<any>()
    const [question, setQuestion] = useState<any>({ questionText: "Start screening questions using the buttom at the bottom of the page", startButtonText: "Start Screening Questions" })
    const [answer, setAnswer] = useState<Screening>({ selectedOptionId: "", })
    const [options, setOptions] = useState<any[]>([])
    const [terminate, setTerminate] = useState<any>({ isTerminating: false, showTopText: true })
    const [result, setResult] = useState<any>({ resultPriority: "", doNext: "", firstAidAdvice: "", problem: "" })
    const [error, setError] = useState<any>({ errorText: "" })
    const [questionList, setQuestionList] = useState<any>([])
    const [updateReady, setUpdateReady] = useState<any>({ ready: false})


    const optionChange = (selectedOption: any) => {
        setAnswer({ selectedOptionId: selectedOption.value });
        //console.log(selectedOption)
        const Terminating = options.find(option => option.optionId === selectedOption.value)?.isTerminating || false;
        setTerminate({ isTerminating: Terminating, showTopText: terminate.showTopText });
        
        //console.log(answer.selectedOptionId)
        console.log(terminate.showTopText)
      };

    const backToQuestion = () => {
        setTerminate({ showTopText: true})
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


    const fetchRoot = async () => {
        //setLoading(true)

        //setForm(1);

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
            setAnswer({ selectedOptionId: "" });

            //setUpdateReady("Now");
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

                if(terminate.isTerminating)
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
                setAnswer({ selectedOptionId: "" })
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

                            <Dropdown
                                data={options.map((option: any) => ({ label: option.optionText, value: option.optionId }))}
                                value={answer.selectedOptionId}
                                onChange={optionChange}
                                style={[
                                    styles.ScreeningDropDown,
                                    { width: "97%", padding: 5, borderRadius: 10, borderColor: colors.primary_Blue, backgroundColor: colors.white, borderWidth: 1, color: colors.background_Grey }
                                ]}
                                placeholder='Select Answer' labelField={"label"} valueField={"value"}    />

                    <Text style={styles.errorText}>{error.errorText}</Text> 

                    <TouchableHighlight style={{ ...styles.mainButton, paddingTop: 15 }}
                            underlayColor={colors.black_underlay} onPress={processOption}>
                            <Text style={styles.buttonText}> Submit </Text>
                    </TouchableHighlight>
                        </View>

                    )}
                
                    {questionList && questionList.map((question: any, index: any) => (
                    <View style={{ width: "100%", marginTop: "10%", flex: 1, alignItems: "center" }} key={index}>
                    <Text style={{ color: 'black', fontWeight: "bold", fontSize: 26, textAlign: 'center', paddingBottom: 15 }}> {question.questionText}</Text>

                    <Dropdown
                                data={question.options.map((option: any) => ({ label: option.optionText, value: option.optionId }))}
                                value={answer.selectedOptionId}
                                onChange={optionChange}
                                style={[
                                    styles.ScreeningDropDown,
                                    { width: "97%", padding: 5, borderRadius: 10, borderColor: colors.primary_Blue, backgroundColor: colors.white, borderWidth: 1, color: colors.background_Grey }
                                ]}
                                placeholder={answer.selectedOptionId ? options.find((opt: any) => opt.optionId === answer.selectedOptionId)?.optionText : 'Select Answer'}
                                labelField={"label"} valueField={"value"}    />

                    <Text style={styles.errorText}>{error.errorText}</Text> 

                    <TouchableHighlight style={{ ...styles.mainButton, paddingTop: 15 }}
                            underlayColor={colors.black_underlay} onPress={processOption}>
                            <Text style={styles.buttonText}> Submit </Text>
                    </TouchableHighlight>
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
