import React, { useState, useEffect } from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet, ScrollView, Alert, SafeAreaView, Linking } from 'react-native';
import { GoogleAutoComplete } from '../shared/Components';
import { styles } from '../shared/Styles';
import { GOOGLE_MAPS_APIKEY } from '../shared/Constants';
import { set } from 'lodash';
import { colors } from '../shared/Colors';

function EmergencyScreen() {
  const [emergencyLocation, setEmergencyLocation] = useState('');
  const [petSpecies, setPetSpecies] = useState('');
  const [petSymptoms, setPetSymptoms] = useState('');
  const [nearbyVets, setNearbyVets] = useState<Array<{ name: string; address: string; phone: string; openingHours: { open_now: boolean } }>>([]);
  const [locationEntered, setLocationEntered] = useState("1");
  const [helpNumber, setHelpNumber] = useState('123-456-7890');

  useEffect(() => {
    if (nearbyVets.length > 0) {
      const nearestOpenVet = nearbyVets.find(vet => vet.openingHours.open_now);
      if (nearestOpenVet) {
        setHelpNumber(nearestOpenVet.phone);
      }
    }
  }, [nearbyVets]);

  const handleSubmit = () => {
    // Handle submission logic here, e.g., sending data to backend
    console.log('Emergency Location:', emergencyLocation);
    console.log('Pet Species:', petSpecies);
    console.log('Pet Symptoms:', petSymptoms);
  };

  const emergencyInfo = {
    emergencyNumber: '911',
    helpNumber: helpNumber,
    websites: ['www.webmd.com/pets/default.htm'],
  };

  const getNearbyVets = async (lat: any, lng: any) => {
    try {
      const apiKey = GOOGLE_MAPS_APIKEY;
      const location = `${lat},${lng}`;
      const radius = 5000; // 5km radius
      const type = 'veterinary_care'; // Search for veterinary care places
      const url = `https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${location}&radius=${radius}&type=${type}&key=${apiKey}`;
  
      const response = await fetch(url);
      const data = await response.json();
      
      const vets = await Promise.all(data.results.map(async (vet: { place_id: any; }) => {
        const placeDetailsUrl = `https://maps.googleapis.com/maps/api/place/details/json?place_id=${vet.place_id}&fields=name,formatted_address,international_phone_number,opening_hours&key=${apiKey}`;
        const placeDetailsResponse = await fetch(placeDetailsUrl);
        const placeDetailsData = await placeDetailsResponse.json();
        return {
          name: placeDetailsData.result.name,
          address: placeDetailsData.result.formatted_address,
          phone: placeDetailsData.result.international_phone_number,
          openingHours: placeDetailsData.result.opening_hours ? placeDetailsData.result.opening_hours : { open_now: false },
        };
      }));
      setNearbyVets(vets);
      setLocationEntered("0");
    } catch (error) {
      console.error('Error fetching nearby vets:', error);
    }
  };

  const fetchAddress = (lat: any, lng: any, address: React.SetStateAction<string>) => {
    console.log('Latitude:', lat);
    console.log('Longitude:', lng);
    console.log('Address:', address);
    setEmergencyLocation(address);
    getNearbyVets(lat, lng);    
  };


  const handleInfoPress = () => {
    Alert.alert('Information', "Set your preferred location from which you plan on traveling to a pet owner's residence, such as your office.");
  };


  const handleCallHelpNumber = () => {
    Linking.openURL(`tel:${helpNumber}`);
  };


  const handleOpenWebsite = (website: string) => {
    Linking.openURL(`https://${website}`);
  };


  const reEnterLocation = () => {
    setLocationEntered("1");
  };

  

  return (
    <>
      {locationEntered == "1" ? (
        <SafeAreaView style={{ flex: 1, padding: 20 }}> 
          <View style={{ flexDirection: 'row', justifyContent: 'center', alignItems: 'center' }}>
            <Text style={{ fontSize: 20, fontWeight: 'bold', marginBottom: 10, marginTop: 5 }}>
              Set your preferred location
            </Text>
          </View>
          <GoogleAutoComplete
            placeholderText="Enter address"
            fetchAddress={fetchAddress} 
          />
        </SafeAreaView>
      ) : (
        <View style={emStyles.container}>
            <TouchableOpacity onPress={reEnterLocation} style={styles.reenterLocationButton}>
                <Text style={styles.clearButtonText}>Re-enter location</Text>
            </TouchableOpacity>
          <ScrollView>
            <Text style={{ fontSize: 30, fontWeight: 'bold', color: colors.action_Orange, marginLeft: 60}}>
              Vet Emergency
            </Text>
            <View style={emStyles.infoContainer}>
                <Text style={emStyles.infoText}>Nearest Open Vet:</Text>
                <TouchableOpacity onPress={handleCallHelpNumber}>
                <Text style={emStyles.infoTextClick}> {emergencyInfo.helpNumber}</Text>
              </TouchableOpacity>


              
              <Text style={emStyles.infoText}>Websites to help:</Text>
              {emergencyInfo.websites.map((website, index) => (
                <TouchableOpacity key={index} onPress={() => handleOpenWebsite(website)}>
                  <Text style={emStyles.infoTextClick}>{website}</Text>
                </TouchableOpacity>
              ))}
            </View>
            {nearbyVets.map((vet, index) => (
              <View key={index} style={{ marginBottom: 10 }}>
                <Text style={{ fontSize: 18, fontWeight: 'bold' }}>{vet.name}</Text>
                <Text>{vet.address}</Text>
                <TouchableOpacity onPress={() => Linking.openURL(`tel:${vet.phone}`)}>
                  <Text style={emStyles.infoTextClick}>{vet.phone}</Text>
                </TouchableOpacity>
                <Text>{vet.openingHours.open_now ? 'Open now' : 'Closed'}</Text>
              </View>
            ))}
          </ScrollView>
        </View>
      )}
    </>
  );
}

const emStyles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    paddingHorizontal: 20,
  },
  infoContainer: {
    marginBottom: 20,
  },
  infoText: {
    fontSize: 16,
    marginBottom: 5,
  },
  infoTextClick: {
    fontSize: 16,
    marginBottom: 5,
    color: 'blue',
    textDecorationLine: 'underline',
  },
  input: {
    borderWidth: 1,
    borderRadius: 10,
    paddingHorizontal: 10,
    marginBottom: 20,
    width: '100%',
  },
  submitButton: {
    backgroundColor: 'blue',
    paddingVertical: 10,
    paddingHorizontal: 20,
    borderRadius: 10,
  },
  submitButtonText: {
    color: '#fff',
    fontSize: 18,
    fontWeight: 'bold',
  },
});

export default EmergencyScreen;
