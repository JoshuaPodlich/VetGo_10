USE vetgo_db;

# Make sure the tables are clear for inserting the questions and options.
DELETE FROM screening_options;
DELETE FROM screening_results;
DELETE FROM screening_questions;

ALTER TABLE screening_options AUTO_INCREMENT = 1;
ALTER TABLE screening_results AUTO_INCREMENT = 1;
ALTER TABLE screening_questions AUTO_INCREMENT = 1;

INSERT INTO screening_questions (question_text) VALUES ("Which symptom best describes your dog's condition?"); # ID: 1
INSERT INTO screening_questions (question_text) VALUES ("Select one of the areas in the dropdown list below:"); # ID: 2
INSERT INTO screening_questions (question_text) VALUES ("How much blood is coming out?"); # ID: 3
INSERT INTO screening_questions (question_text) VALUES ("What sort of wound is it?"); # ID: 4
INSERT INTO screening_questions (question_text) VALUES ("Is there an unpleasant odor or discharge coming from the wound?"); # ID: 5
INSERT INTO screening_questions (question_text) VALUES ("How much blood is coming out?"); # ID: 6
INSERT INTO screening_questions (question_text) VALUES ("Keep your dog still and calm. Encourage it to lower its head. Wait five minutes. Has the bleeding stopped? If the bleeding gets worse as you are doing this, call your vet immediately."); # ID: 7
INSERT INTO screening_questions (question_text) VALUES ("How much blood is coming out?"); # ID: 8
INSERT INTO screening_questions (question_text) VALUES ("Keep your dog still and calm. Encourage it to lower its head. Wait five minutes. Has the bleeding stopped? If the bleeding gets worse as you are doing this call your vet immediately."); # ID: 9
INSERT INTO screening_questions (question_text) VALUES ("How much blood is coming out?"); # ID: 10
INSERT INTO screening_questions (question_text) VALUES ("Is your female dog in season?"); # ID: 11
INSERT INTO screening_questions (question_text) VALUES ("How much blood is there?"); # ID: 12
INSERT INTO screening_questions (question_text) VALUES ("Is your dog flat, depressed or in pain? (e.g., crying out or hunched posture)"); # ID: 13
INSERT INTO screening_questions (question_text) VALUES ("Is your dog alert, moving around, and responding to you normally?"); # ID: 14
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have eaten anything poisonous? (e.g., rat poison, or mice or rats that have been killed by rat poison)"); # ID: 15
INSERT INTO screening_questions (question_text) VALUES ("Has your dog eaten any bones recently?"); # ID: 16
INSERT INTO screening_questions (question_text) VALUES ("Is your dog pregnant?"); # ID: 17
INSERT INTO screening_questions (question_text) VALUES ("Has bloating been present for longer than 2 days?"); # ID: 18
INSERT INTO screening_questions (question_text) VALUES ("Is your dog in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 19
INSERT INTO screening_questions (question_text) VALUES ("Is your dog responding to you normally and able to move around?"); # ID: 20
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been coughing or having any breathing difficulties recently?"); # ID: 21
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been retching or vomited?"); # ID: 22
INSERT INTO screening_questions (question_text) VALUES ("If it's possible to do so safely, look at your dog's gums. Find an area where there is no pigmentation (in some dogs this is not possible). What color are they?"); # ID: 23
INSERT INTO screening_questions (question_text) VALUES ("Is your dog having difficulty getting air in or out?"); # ID: 24
INSERT INTO screening_questions (question_text) VALUES ("Is your dog responding to you?"); # ID: 25
INSERT INTO screening_questions (question_text) VALUES ("Is your dog able to move around normally?"); # ID: 26
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have been exposed to smoke, toxic gases, or poisons?"); # ID: 27
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have fallen into water, been strangled by its collar, or been electrocuted?"); # ID: 28
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have become very hot or very cold? Remember, dogs can easily overheat in cars, even when they are moving."); # ID: 29
INSERT INTO screening_questions (question_text) VALUES ("If it's possible to do so safely, look at your dog's gums. Find an area where there is no pigmentation (in some dogs this is not possible). What color are they?"); # ID: 30
INSERT INTO screening_questions (question_text) VALUES ("Is your dog eating normally?"); # ID: 31
INSERT INTO screening_questions (question_text) VALUES ("Is your dog having any difficulty breathing?"); # ID: 32
INSERT INTO screening_questions (question_text) VALUES ("Is your dog in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 33
INSERT INTO screening_questions (question_text) VALUES ("Is your dog able to move around and respond to you normally?"); # ID: 34
INSERT INTO screening_questions (question_text) VALUES ("Has your dog inhaled any smoke or poisonous fumes?"); # ID: 35
INSERT INTO screening_questions (question_text) VALUES ("Has your dog accidentally strangled itself on its collar or fallen into water?"); # ID: 36
INSERT INTO screening_questions (question_text) VALUES ("Has your dog collapsed or been less energetic recently? (e.g., less willing to exercise)"); # ID: 37
INSERT INTO screening_questions (question_text) VALUES ("Is your dog's abdomen (stomach area) swollen?"); # ID: 38
INSERT INTO screening_questions (question_text) VALUES ("If it's possible to do so safely, look at your dog's gums. Find an area where there is no pigmentation (in some dogs this is not possible). What color are they?"); # ID: 39
INSERT INTO screening_questions (question_text) VALUES ("Is your dog eating normally?"); # ID: 40
INSERT INTO screening_questions (question_text) VALUES ("Is your dog in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 41
INSERT INTO screening_questions (question_text) VALUES ("Is your dog alert and responding to you normally?"); # ID: 42
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have eaten anything poisonous? (e.g., lead or detergent)"); # ID: 43
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have eaten anything inappropriate? (e.g., a toy or bone)"); # ID: 44
INSERT INTO screening_questions (question_text) VALUES ("How much is your dog straining to pass the stool?"); # ID: 45
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been drinking more than usual recently?"); # ID: 46
INSERT INTO screening_questions (question_text) VALUES ("Is your dog's abdomen (stomach area) swollen?"); # ID: 47
INSERT INTO screening_questions (question_text) VALUES ("What does the diarrhea look like in terms of consistency?"); # ID: 48
INSERT INTO screening_questions (question_text) VALUES ("Is there any blood in the diarrhoea?"); # ID: 49
INSERT INTO screening_questions (question_text) VALUES ("How much blood is there?"); # ID: 50
INSERT INTO screening_questions (question_text) VALUES ("If it's possible to do so safely, look at your dog's gums. Find an area where there is no pigmentation (in some dogs this is not possible). What color are they?"); # ID: 51
INSERT INTO screening_questions (question_text) VALUES ("Is your dog not eating or showing a lack of interest in its usual food?"); # ID: 52
INSERT INTO screening_questions (question_text) VALUES ("Has your dog had diarrhoea for longer than 24 hours?"); # ID: 53
INSERT INTO screening_questions (question_text) VALUES ("How many watery stools has your dog passed in the last 24 hours?"); # ID: 54
INSERT INTO screening_questions (question_text) VALUES ("Is there any blood in the stool?"); # ID: 55
INSERT INTO screening_questions (question_text) VALUES ("Is your dog in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 56
INSERT INTO screening_questions (question_text) VALUES ("Is your dog able to move around and respond to you normally?"); # ID: 57
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have eaten anything poisonous? (e.g., too much salt)"); # ID: 58
INSERT INTO screening_questions (question_text) VALUES ("Are there any other symptoms, such as vomiting?"); # ID: 59
INSERT INTO screening_questions (question_text) VALUES ("What is your dog's appetite like?"); # ID: 60
INSERT INTO screening_questions (question_text) VALUES ("Is your dog depressed, flat, or in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 61
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and responding to you normally?"); # ID: 62
INSERT INTO screening_questions (question_text) VALUES ("Is your dog showing any nervous signs, such as convulsions, twitching, circling, or unsteady gait?"); # ID: 63
INSERT INTO screening_questions (question_text) VALUES ("Has your dog eaten something which might be poisonous, such as garden chemicals, detergent, chocolate, or poisonous plants?"); # ID: 64
INSERT INTO screening_questions (question_text) VALUES ("Does your dog have a suddenly swollen, gas-filled stomach that sounds like a balloon if you pat it?"); # ID: 65
INSERT INTO screening_questions (question_text) VALUES ("Has your dog eaten something foul tasting, such as a toad or rotting food?"); # ID: 66
INSERT INTO screening_questions (question_text) VALUES ("Along with the drool, is there any bleeding from the mouth?"); # ID: 67
INSERT INTO screening_questions (question_text) VALUES ("Is your dog vomiting?"); # ID: 68
INSERT INTO screening_questions (question_text) VALUES ("Does your dog have discolored teeth or inflamed sore gums?"); # ID: 69
INSERT INTO screening_questions (question_text) VALUES ("Does your dog only drool when travelling by car?"); # ID: 70
INSERT INTO screening_questions (question_text) VALUES ("Does your dog only drool when anticipating food?"); # ID: 71
INSERT INTO screening_questions (question_text) VALUES ("Has your dog always drooled a lot from a young age?"); # ID: 72
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been playing with a stick?"); # ID: 73
INSERT INTO screening_questions (question_text) VALUES ("Is your dog distressed, disorientated, or in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 74
INSERT INTO screening_questions (question_text) VALUES ("Is your dog able to move and respond to you normally?"); # ID: 75
INSERT INTO screening_questions (question_text) VALUES ("Is your dog shaking its head continuously or scratching non-stop?"); # ID: 76
INSERT INTO screening_questions (question_text) VALUES ("Has your dog developed a head tilt or is it moving around in circles?"); # ID: 77
INSERT INTO screening_questions (question_text) VALUES ("Is there any swelling in the ear flap?"); # ID: 78
INSERT INTO screening_questions (question_text) VALUES ("Is your dog distressed, disorientated, or in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 79
INSERT INTO screening_questions (question_text) VALUES ("Has your dog suddenly gone blind?"); # ID: 80
INSERT INTO screening_questions (question_text) VALUES ("Is an eye, or both eyes, sticking out more than usual?"); # ID: 81
INSERT INTO screening_questions (question_text) VALUES ("Is your dog squinting such that you cannot see the affected eye(s)?"); # ID: 82
INSERT INTO screening_questions (question_text) VALUES ("Does an eye, or both eyes, look red?"); # ID: 83
INSERT INTO screening_questions (question_text) VALUES ("After looking at the pupils, are they both the same size?"); # ID: 84
INSERT INTO screening_questions (question_text) VALUES ("Is your dog avoiding light?"); # ID: 85
INSERT INTO screening_questions (question_text) VALUES ("Is there any discharge from either eye?"); # ID: 86
INSERT INTO screening_questions (question_text) VALUES ("Is your dog having a fit at the moment?"); # ID: 87
INSERT INTO screening_questions (question_text) VALUES ("For how long has the fit been occurring?"); # ID: 88
INSERT INTO screening_questions (question_text) VALUES ("Is your dog alert, moving around, and responding to you normally?"); # ID: 89
INSERT INTO screening_questions (question_text) VALUES ("Is your dog distressed, disorientated, or in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 90
INSERT INTO screening_questions (question_text) VALUES ("Is your dog behaving strangely? (e.g., twitching, turning around in circles, or moving as if drunk)"); # ID: 91
INSERT INTO screening_questions (question_text) VALUES ("After looking at the pupils, are they both the same size?"); # ID: 92
INSERT INTO screening_questions (question_text) VALUES ("After looking at the eyes again, do the pupils get smaller in the light and larger in the dark? Click 'Yes' if your dog is blind, and your vet already knows this."); # ID: 93
INSERT INTO screening_questions (question_text) VALUES ("After looking at the eyes again, do they move or twitch abnormally?"); # ID: 94
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been exposed to any poisons? (e.g., slug/snail bait poison)"); # ID: 95
INSERT INTO screening_questions (question_text) VALUES ("Is your dog distressed, disorientated, or in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 96
INSERT INTO screening_questions (question_text) VALUES ("Is your dog alert, moving around, and responding to you normally?"); # ID: 97
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been involved in a fall, been hit by a car, or become very hot or very cold?"); # ID: 98
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been coughing, collapsing, or exhibiting less stamina than usual recently?"); # ID: 99
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been drinking more than usual recently?"); # ID: 100
INSERT INTO screening_questions (question_text) VALUES ("Has your dog eaten anything poisonous? (e.g., slug bait, marijuana, or anti-freeze)"); # ID: 101
INSERT INTO screening_questions (question_text) VALUES ("Is your dog behaving strangely? (e.g., twitching, turning around in circles, or moving as if drunk)"); # ID: 102
INSERT INTO screening_questions (question_text) VALUES ("Is your dog's head now tilted to one side?"); # ID: 103
INSERT INTO screening_questions (question_text) VALUES ("After looking at the pupils, are they both the same size?"); # ID: 104
INSERT INTO screening_questions (question_text) VALUES ("After looking at the eyes again, do the pupils get smaller in the light and larger in the dark? Click 'Yes' if your dog is blind, and your vet already knows this."); # ID: 105
INSERT INTO screening_questions (question_text) VALUES ("After looking at the eyes again, do they move or twitch abnormally?"); # ID: 106
INSERT INTO screening_questions (question_text) VALUES ("Is your dog's abdomen (stomach area) swollen?"); # ID: 107
INSERT INTO screening_questions (question_text) VALUES ("Pick up the skin of the scruff of your dog's neck and then release it. Does it fall back into place?"); # ID: 108
INSERT INTO screening_questions (question_text) VALUES ("Is your dog in distress or off-color?"); # ID: 109
INSERT INTO screening_questions (question_text) VALUES ("Is your dog constantly scratching or biting itself?"); # ID: 110
INSERT INTO screening_questions (question_text) VALUES ("Is your dog causing damage to itself by scratching?"); # ID: 111
INSERT INTO screening_questions (question_text) VALUES ("Do you see any fleas on your dog?"); # ID: 112
INSERT INTO screening_questions (question_text) VALUES ("Are there any red areas, scabs, greasy areas, or scurf (dandruff)?"); # ID: 113
INSERT INTO screening_questions (question_text) VALUES ("Quickly brush your dog's fur, ideally using a flea comb. Gather any debris on a damp piece of white paper. After waiting a few minutes, are there any black particles that release a red pigment?"); # ID: 114
INSERT INTO screening_questions (question_text) VALUES ("Are there any red areas, scabs, greasy areas, or scurf (dandruff)?"); # ID: 115
INSERT INTO screening_questions (question_text) VALUES ("Are there any red areas, scabs, greasy areas, or scurf (dandruff)?"); # ID: 116
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been involved in a car accident, fall, or any other serious accident?"); # ID: 117
INSERT INTO screening_questions (question_text) VALUES ("Can your dog stand up and move around?"); # ID: 118
INSERT INTO screening_questions (question_text) VALUES ("Does the dog's leg appear to be at an unusual angle?"); # ID: 119
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been lame (i.e., limping or having difficulty walking) for more than half an hour?"); # ID: 120
INSERT INTO screening_questions (question_text) VALUES ("Is your dog upset or in pain?"); # ID: 121
INSERT INTO screening_questions (question_text) VALUES ("Is your dog putting any weight on the leg?"); # ID: 122
INSERT INTO screening_questions (question_text) VALUES ("Monitor your dog closely for half an hour. Has anything changed?"); # ID: 123
INSERT INTO screening_questions (question_text) VALUES ("Is your dog upset or in pain?"); # ID: 124
INSERT INTO screening_questions (question_text) VALUES ("Is your dog putting any weight on the leg?"); # ID: 125
INSERT INTO screening_questions (question_text) VALUES ("Is your dog depressed, flat, or in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual?"); # ID: 126
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, moving around, and responding to you normally?"); # ID: 127
INSERT INTO screening_questions (question_text) VALUES ("Does the swelling or lump cause your dog pain when touched?"); # ID: 128
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been involved in a fall or been hit by a car?"); # ID: 129
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have been bitten by a snake?"); # ID: 130
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been stung by a bee or wasp?"); # ID: 131
INSERT INTO screening_questions (question_text) VALUES ("Where is the lump or swelling?"); # ID: 132
INSERT INTO screening_questions (question_text) VALUES ("Is the lump or swelling in any of the following places: midline of the stomach, over the site of an old injury, in the area under the tail, or the groin area?"); # ID: 133
INSERT INTO screening_questions (question_text) VALUES ("Has your dog vomited or been off-color since the swelling appeared?"); # ID: 134
INSERT INTO screening_questions (question_text) VALUES ("In relation to the anus, where is the lump or swelling?"); # ID: 135
INSERT INTO screening_questions (question_text) VALUES ("In relation to the head or neck, where is the lump or swelling?"); # ID: 136
INSERT INTO screening_questions (question_text) VALUES ("Is the area hot, inflamed, or sore?"); # ID: 137
INSERT INTO screening_questions (question_text) VALUES ("Is your dog pregnant?"); # ID: 138
INSERT INTO screening_questions (question_text) VALUES ("Is the swelling on the mammary gland smooth and even, or is it lumpy?"); # ID: 139
INSERT INTO screening_questions (question_text) VALUES ("Has the swelling been present for longer than 30 minutes?"); # ID: 140
INSERT INTO screening_questions (question_text) VALUES ("Is the penis dry or bleeding?"); # ID: 141
INSERT INTO screening_questions (question_text) VALUES ("Monitor closely for 15 more minutes. Is the penis still swollen?"); # ID: 142
INSERT INTO screening_questions (question_text) VALUES ("In relation to the vulva, where is the swelling?"); # ID: 143
INSERT INTO screening_questions (question_text) VALUES ("Is the swelling on the vulva even, or is there a lump?"); # ID: 144
INSERT INTO screening_questions (question_text) VALUES ("Is your female dog in season or pregnant?"); # ID: 145
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and responding to you normally?"); # ID: 146
INSERT INTO screening_questions (question_text) VALUES ("Does your dog seem to be in pain? Specifically, a dog in pain may be subdued, grumpy, hunched over, or may whine a lot."); # ID: 147
INSERT INTO screening_questions (question_text) VALUES ("Is your dog scratching itself?"); # ID: 148
INSERT INTO screening_questions (question_text) VALUES ("Is your dog distressed or causing damage to itself by scratching?"); # ID: 149
INSERT INTO screening_questions (question_text) VALUES ("Are there patches of skin that feel greasy, look red, or seem scurfy (i.e., covered with dandruff)?"); # ID: 150
INSERT INTO screening_questions (question_text) VALUES ("Is your dog drinking more than usual?"); # ID: 151
INSERT INTO screening_questions (question_text) VALUES ("Are there any bald patches?"); # ID: 152
INSERT INTO screening_questions (question_text) VALUES ("Is your dog drinking more than usual?"); # ID: 153
INSERT INTO screening_questions (question_text) VALUES ("Is your dog drinking more than usual?"); # ID: 154
INSERT INTO screening_questions (question_text) VALUES ("Are your dog's nails overgrown or very sharp?"); # ID: 155
INSERT INTO screening_questions (question_text) VALUES ("Is a nail cracked, broken, or bleeding?"); # ID: 156
INSERT INTO screening_questions (question_text) VALUES ("Apply firm pressure to the bleeding part for several minutes. Afterwards, has the bleeding stopped?"); # ID: 157
INSERT INTO screening_questions (question_text) VALUES ("Is the nail injury very painful for the dog?"); # ID: 158
INSERT INTO screening_questions (question_text) VALUES ("Repeat the firm pressure for several minutes. Afterwards, has the bleeding stopped?"); # ID: 159
INSERT INTO screening_questions (question_text) VALUES ("Is the nail injury very painful?"); # ID: 160
INSERT INTO screening_questions (question_text) VALUES ("Is blood dripping or spurting out?"); # ID: 161
INSERT INTO screening_questions (question_text) VALUES ("Is the nail injury very painful?"); # ID: 162
INSERT INTO screening_questions (question_text) VALUES ("Is the nail injury very painful?"); # ID: 163
INSERT INTO screening_questions (question_text) VALUES ("Does your dog have brittle, crumbly, or abnormally shaped nails?"); # ID: 164
INSERT INTO screening_questions (question_text) VALUES ("Does your dog have a sore, swollen, or red area where the nail meets the skin?"); # ID: 165
INSERT INTO screening_questions (question_text) VALUES ("Does your dog have dew claws on any of its legs which are prone to injury?"); # ID: 166
INSERT INTO screening_questions (question_text) VALUES ("Is your dog depressed, flat, or in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 167
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, moving around, and responding to you normally?"); # ID: 168
INSERT INTO screening_questions (question_text) VALUES ("Is your dog drinking more than usual?"); # ID: 169
INSERT INTO screening_questions (question_text) VALUES ("Pick up the skin of the scruff of your dog's neck and then release it. Does it fall back into place?"); # ID: 170
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have eaten anything poisonous? (e.g., rat poison, or mice or rats that have been poisoned)"); # ID: 171
INSERT INTO screening_questions (question_text) VALUES ("Are there any other symptoms, such as vomiting or coughing?"); # ID: 172
INSERT INTO screening_questions (question_text) VALUES ("Is your dog in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 173
INSERT INTO screening_questions (question_text) VALUES ("Is your dog moving around and responding to you normally?"); # ID: 174
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been drinking more than usual?"); # ID: 175
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have been exposed to toxic gases or poisons? (e.g., marijuana, sedatives, rat poison, or dead mice/rats that have been poisoned)"); # ID: 176
INSERT INTO screening_questions (question_text) VALUES ("Is your dog having any difficulty breathing?"); # ID: 177
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been involved in a fall, been hit by a car, or become very hot or very cold?"); # ID: 178
INSERT INTO screening_questions (question_text) VALUES ("Recently, has your dog exhibited symptoms such as coughing, collapsing, or reduced stamina?"); # ID: 179
INSERT INTO screening_questions (question_text) VALUES ("Is your dog behaving strangely? (e.g., twitching, turning around in circles, or moving as if drunk)"); # ID: 180
INSERT INTO screening_questions (question_text) VALUES ("Has your dog's abdomen (stomach area) become more swollen than usual?"); # ID: 181
INSERT INTO screening_questions (question_text) VALUES ("Pick up the skin of the scruff of your dog's neck and then release it. Does it fall back into place?"); # ID: 182
INSERT INTO screening_questions (question_text) VALUES ("If you are concerned your dog has eaten something poisonous, what has it recently eaten?"); # ID: 183
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and responding to you normally?"); # ID: 184
INSERT INTO screening_questions (question_text) VALUES ("Is your dog behaving normally?"); # ID: 185
INSERT INTO screening_questions (question_text) VALUES ("Is your dog showing signs of pain?"); # ID: 186
INSERT INTO screening_questions (question_text) VALUES ("Is your dog breathing normally?"); # ID: 187
INSERT INTO screening_questions (question_text) VALUES ("Has your dog vomited since eating the baby oil?"); # ID: 188
INSERT INTO screening_questions (question_text) VALUES ("Is there any blood in the vomit?"); # ID: 189
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have eaten anything else inappropriate or poisonous? (e.g., bleach, aspirin, or a toy)"); # ID: 190
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been drinking more than usual recently?"); # ID: 191
INSERT INTO screening_questions (question_text) VALUES ("Is your dog trying to vomit but nothing is coming up?"); # ID: 192
INSERT INTO screening_questions (question_text) VALUES ("Has your dog had diarrhoea since eating the baby oil?"); # ID: 193
INSERT INTO screening_questions (question_text) VALUES ("Was there any blood in the diarrhoea?"); # ID: 194
INSERT INTO screening_questions (question_text) VALUES ("What is the consistency of the diarrhoea like?"); # ID: 195
INSERT INTO screening_questions (question_text) VALUES ("How much is your dog straining to pass the stool?"); # ID: 196
INSERT INTO screening_questions (question_text) VALUES ("Is the dog's abdomen (stomach area) distended or sore?"); # ID: 197
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have eaten anything else inappropriate, such as a toy or bone?"); # ID: 198
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been drinking noticeably more than usual recently?"); # ID: 199
INSERT INTO screening_questions (question_text) VALUES ("Is your dog flat or in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 200
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and responding to you normally?"); # ID: 201
INSERT INTO screening_questions (question_text) VALUES ("Is there any bleeding coming from the wound?"); # ID: 202
INSERT INTO screening_questions (question_text) VALUES ("How much blood is coming out?"); # ID: 203
INSERT INTO screening_questions (question_text) VALUES ("Have any stitches become dislodged? In cases of dog castration, sometimes there are no stitches visible on the skin."); # ID: 204
INSERT INTO screening_questions (question_text) VALUES ("Have the edges of the wound separated?"); # ID: 205
INSERT INTO screening_questions (question_text) VALUES ("How long is it since the operation?"); # ID: 206
INSERT INTO screening_questions (question_text) VALUES ("Is there any swelling under the wound?"); # ID: 207
INSERT INTO screening_questions (question_text) VALUES ("How would you describe the swelling?"); # ID: 208
INSERT INTO screening_questions (question_text) VALUES ("Has your dog vomited or been off-color since the swelling appeared?"); # ID: 209
INSERT INTO screening_questions (question_text) VALUES ("Is your dog licking or chewing at the wound?"); # ID: 210
INSERT INTO screening_questions (question_text) VALUES ("Is there another problem that you have not been asked about?"); # ID: 211
INSERT INTO screening_questions (question_text) VALUES ("Select one of the areas listed that is smelly."); # ID: 212
INSERT INTO screening_questions (question_text) VALUES ("Is the smell associated with flatulence?"); # ID: 213
INSERT INTO screening_questions (question_text) VALUES ("Does your dog also have diarrhoea?"); # ID: 214
INSERT INTO screening_questions (question_text) VALUES ("Is your dog straining or in pain?"); # ID: 215
INSERT INTO screening_questions (question_text) VALUES ("Is the diarrhoea watery or bloody?"); # ID: 216
INSERT INTO screening_questions (question_text) VALUES ("Is there anything sticking out from the anus or vagina?"); # ID: 217
INSERT INTO screening_questions (question_text) VALUES ("Are there any lumps, swellings, or wounds close to the anus?"); # ID: 218
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and responding to you normally?"); # ID: 219
INSERT INTO screening_questions (question_text) VALUES ("Is the swelling or lump painful for the dog when you touch it?"); # ID: 220
INSERT INTO screening_questions (question_text) VALUES ("Is your dog eating and drinking normally?"); # ID: 221
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been rubbing its bottom along the ground (scooting) or trying to lick the anus?"); # ID: 222
INSERT INTO screening_questions (question_text) VALUES ("Is the anus sore or bleeding?"); # ID: 223
INSERT INTO screening_questions (question_text) VALUES ("How much bleeding is coming from the anus?"); # ID: 224
INSERT INTO screening_questions (question_text) VALUES ("Is there any bleeding from the anus?"); # ID: 225
INSERT INTO screening_questions (question_text) VALUES ("How much bleeding is there?"); # ID: 226
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and eating normally?"); # ID: 227
INSERT INTO screening_questions (question_text) VALUES ("Is there any soiling of the anal area with faeces?"); # ID: 228
INSERT INTO screening_questions (question_text) VALUES ("If your dog is female, is there any swelling or discharge from the vulva (vagina)?"); # ID: 229
INSERT INTO screening_questions (question_text) VALUES ("Is your female dog bright, alert, and eating normally?"); # ID: 230
INSERT INTO screening_questions (question_text) VALUES ("Is your dog leaving damp patches where it has been lying down?"); # ID: 231
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright and alert with a normal appetite?"); # ID: 232
INSERT INTO screening_questions (question_text) VALUES ("Is your dog distressed, disorientated, or in pain?"); # ID: 233
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and responsive?"); # ID: 234
INSERT INTO screening_questions (question_text) VALUES ("Is your dog shaking its head continuously or scratching its ears continuously?"); # ID: 235
INSERT INTO screening_questions (question_text) VALUES ("Has your dog developed a head tilt, or is it moving in circles?"); # ID: 236
INSERT INTO screening_questions (question_text) VALUES ("Is there any swelling in the ear flap?"); # ID: 237
INSERT INTO screening_questions (question_text) VALUES ("Is there any wet discharge or dry crusty matter inside the ear flap?"); # ID: 238
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and responsive?"); # ID: 239
INSERT INTO screening_questions (question_text) VALUES ("Is your dog drinking more than usual?"); # ID: 240
INSERT INTO screening_questions (question_text) VALUES ("Is the smell present all the time?"); # ID: 241
INSERT INTO screening_questions (question_text) VALUES ("Is the smell very strong or offensive?"); # ID: 242
INSERT INTO screening_questions (question_text) VALUES ("Try shampooing your dog with a shampoo recommended by your vet. Does the smell remain or quickly return?"); # ID: 243
INSERT INTO screening_questions (question_text) VALUES ("Is the smell very strong or offensive?"); # ID: 244
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and responsive?"); # ID: 245
INSERT INTO screening_questions (question_text) VALUES ("Does your dog seem to be in pain? Specifically, a dog in pain may seem depressed or grumpy, hunched up, or whining."); # ID: 246
INSERT INTO screening_questions (question_text) VALUES ("Is your dog pawing at the mouth or rubbing it on the floor?"); # ID: 247
INSERT INTO screening_questions (question_text) VALUES ("Is your dog drooling or bleeding from the mouth?"); # ID: 248
INSERT INTO screening_questions (question_text) VALUES ("Does your dog have any wounds or swellings anywhere on the face?"); # ID: 249
INSERT INTO screening_questions (question_text) VALUES ("Is the smell present all the time?"); # ID: 250
INSERT INTO screening_questions (question_text) VALUES ("Is the smell very strong or offensive?"); # ID: 251
INSERT INTO screening_questions (question_text) VALUES ("Is the smell very strong or offensive?"); # ID: 252
INSERT INTO screening_questions (question_text) VALUES ("Has your dog had a dental check at a veterinary practice in the last 6 months?"); # ID: 253
INSERT INTO screening_questions (question_text) VALUES ("Is your dog, bright, alert, and responding normally to you?"); # ID: 254
INSERT INTO screening_questions (question_text) VALUES ("Does your dog seem to be in pain? Specifically, a dog in pain may be subdued, hunched up, grumpy, or may whine a lot."); # ID: 255
INSERT INTO screening_questions (question_text) VALUES ("Are there any areas of skin with a sticky discharge?"); # ID: 256
INSERT INTO screening_questions (question_text) VALUES ("Is your dog distressed or scratching or biting at itself almost continuously?"); # ID: 257
INSERT INTO screening_questions (question_text) VALUES ("Is your dog scratching or biting at itself?"); # ID: 258
INSERT INTO screening_questions (question_text) VALUES ("Is your dog scratching or biting almost continuously?"); # ID: 259
INSERT INTO screening_questions (question_text) VALUES ("Is your dog causing damage to itself by scratching?"); # ID: 260
INSERT INTO screening_questions (question_text) VALUES ("Are there any red areas, scabs, greasy areas, or scurf?"); # ID: 261
INSERT INTO screening_questions (question_text) VALUES ("Are there areas of skin which are red or scurfy or have lost hair?"); # ID: 262
INSERT INTO screening_questions (question_text) VALUES ("Is your dog's appetite and thirst levels normal, without any increase or decrease?"); # ID: 263
INSERT INTO screening_questions (question_text) VALUES ("Is the smell present all the times?"); # ID: 264
INSERT INTO screening_questions (question_text) VALUES ("Is the smell very strong or offensive?"); # ID: 265
INSERT INTO screening_questions (question_text) VALUES ("Is the smell very strong or offensive?"); # ID: 266
INSERT INTO screening_questions (question_text) VALUES ("Is your dog distressed or pawing at its nose a lot?"); # ID: 267
INSERT INTO screening_questions (question_text) VALUES ("Is your dog having difficulty breathing?"); # ID: 268
INSERT INTO screening_questions (question_text) VALUES ("How often is your dog sneezing?"); # ID: 269
INSERT INTO screening_questions (question_text) VALUES ("Is there any discharge from the nose?"); # ID: 270
INSERT INTO screening_questions (question_text) VALUES ("Is your dog in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 271
INSERT INTO screening_questions (question_text) VALUES ("Is your dog alert, moving around, and responding to you normally?"); # ID: 272
INSERT INTO screening_questions (question_text) VALUES ("Is your dog straining to pass urine or stools?"); # ID: 273
INSERT INTO screening_questions (question_text) VALUES ("How much is your dog straining?"); # ID: 274
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been treated with chemotherapy recently?"); # ID: 275
INSERT INTO screening_questions (question_text) VALUES ("Is there any blood in the urine?"); # ID: 276
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been exposed to any poisons? (e.g., rat poison or mice/rats that have been poisoned)"); # ID: 277
INSERT INTO screening_questions (question_text) VALUES ("Has your dog eaten any inappropriate objects? (e.g., toys or bones)"); # ID: 278
INSERT INTO screening_questions (question_text) VALUES ("How much is your dog straining?"); # ID: 279
INSERT INTO screening_questions (question_text) VALUES ("Is there blood in the stool?"); # ID: 280
INSERT INTO screening_questions (question_text) VALUES ("How much is your dog straining?"); # ID: 281
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been producing normal amounts of urine in the last 24 hours?"); # ID: 282
INSERT INTO screening_questions (question_text) VALUES ("Has your dog eaten any inappropriate objects? (e.g., toys or bones)"); # ID: 283
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been treated with chemotherapy recently?"); # ID: 284
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and responding normally to you?"); # ID: 285
INSERT INTO screening_questions (question_text) VALUES ("Does your dog seem unwell or in pain?"); # ID: 286
INSERT INTO screening_questions (question_text) VALUES ("Does your dog have ticks on its skin at the moment?"); # ID: 287
INSERT INTO screening_questions (question_text) VALUES ("Are you confident to remove ticks yourself with a proper tick removal device?"); # ID: 288
INSERT INTO screening_questions (question_text) VALUES ("Is your dog in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 289
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, and responding normally to you?"); # ID: 290
INSERT INTO screening_questions (question_text) VALUES ("Is your dog trying to vomit but nothing is coming up?"); # ID: 291
INSERT INTO screening_questions (question_text) VALUES ("Is your dog's abdomen (stomach area) swollen?"); # ID: 292
INSERT INTO screening_questions (question_text) VALUES ("Is there any blood in the vomit?"); # ID: 293
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have eaten anything poisonous? (e.g., bleach, aspirin, or ibuprofen)"); # ID: 294
INSERT INTO screening_questions (question_text) VALUES ("Could your dog have swallowed anything inappropriate? (e.g., a toy, ball, or bones)"); # ID: 295
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been drinking more than usual recently?"); # ID: 296
INSERT INTO screening_questions (question_text) VALUES ("Pick up the skin at the scruff of your dog's neck and release. Does it fall back into place?"); # ID: 297
INSERT INTO screening_questions (question_text) VALUES ("How many times has your dog been sick in the last 24 hours?"); # ID: 298
INSERT INTO screening_questions (question_text) VALUES ("Is your dog in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 299
INSERT INTO screening_questions (question_text) VALUES ("Is your dog moving around and responding to you normally?"); # ID: 300
INSERT INTO screening_questions (question_text) VALUES ("Pick up the skin of the scruff of your dog's neck. Does if fall quickly back into place?"); # ID: 301
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been eating normally?"); # ID: 302
INSERT INTO screening_questions (question_text) VALUES ("Has your dog been drinking more than usual recently?"); # ID: 303
INSERT INTO screening_questions (question_text) VALUES ("Is your dog depressed, flat, or in pain? Specifically, dogs that are in pain may cry out or be hunched or more grumpy than usual."); # ID: 304
INSERT INTO screening_questions (question_text) VALUES ("Is your dog bright, alert, moving around, and responding to you normally?"); # ID: 305
INSERT INTO screening_questions (question_text) VALUES ("What sort of wound is it?"); # ID: 306
INSERT INTO screening_questions (question_text) VALUES ("Is there an unpleasant odor or any discharge coming from the wound?"); # ID: 307
INSERT INTO screening_questions (question_text) VALUES ("Has your puppy been crying persistently for longer than 20 minutes?"); # ID: 308
INSERT INTO screening_questions (question_text) VALUES ("Has your puppy had convulsions or collapsed?"); # ID: 309
INSERT INTO screening_questions (question_text) VALUES ("Is your puppy depressed or less active than usual?"); # ID: 310
INSERT INTO screening_questions (question_text) VALUES ("Is your puppy feeding normally?"); # ID: 311
INSERT INTO screening_questions (question_text) VALUES ("Does your puppy have a blue tinge around its mouth?"); # ID: 312
INSERT INTO screening_questions (question_text) VALUES ("Have any of the litter mates died recently?"); # ID: 313
INSERT INTO screening_questions (question_text) VALUES ("Is there an injury or wound?"); # ID: 314
INSERT INTO screening_questions (question_text) VALUES ("Is your puppy bloated (compare with a healthy puppy)?"); # ID: 315
INSERT INTO screening_questions (question_text) VALUES ("Is your puppy gaining weight as quickly as its litter mates?"); # ID: 316
INSERT INTO screening_questions (question_text) VALUES ("Does your puppy have diarrhoea or vomiting?"); # ID: 317
INSERT INTO screening_questions (question_text) VALUES ("Does your puppy have any other specific symptoms that we haven't asked about?"); # ID: 318

# ----------------------------------------------------------------------------------------------------------------------------------

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 1
("Your vet may give you telephone advice or may ask to see you. 
Always telephone the vets before going to the practice. 
The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"This type of bleeding needs urgent treatment from a vet to find the cause and to repair the damage, relieve the pain and prevent infection.
If it is practical to do so apply firm pressure to the wound with a clean cloth. 
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to lick at or scratch the wound. 
Try to keep your dog warm, quiet and calm.",
"Significant bleeding can lead to shock and dehydration.
Wounds can cause severe infection.
There may also be damage to underlying tissues and structures that aren't immediately obvious.
Veterinary care is essential.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 2
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"A burn requires treatment to prevent pain and infection.
Do not allow your dog to lick or scratch at the wound.
If possible wrap a clean towel or sheet around the affected area on the way to the surgery.
Try to keep your dog warm, quiet and calm.",
"Significant burns can lead to shock and dehydration.
Burns can also cause severe infection.
There may also be damage to underlying tissues and structures that aren't immediately obvious.
The seriousness of a burn may not be immediately obvious. Damage to the skin can be minimised by early treatment.
Veterinary care is essential.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 3
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to lick or scratch at the wound.
If possible wrap a clean towel or sheet around the affected area on the way to the surgery.
Try to keep your dog warm, quiet and calm.",
"An unpleasant odor or discharge from the graze means that it is likely to be infected and painful.
Some skin infections can spread very rapidly even if the original wound was not deep.
An infected wound will be painful and may make the dog unwell.
Early treatment will minimise the skin damage.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 4
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"If the graze is small and mild home treatment may be adequate. If you are in any doubt, contact your vet for advice.
If the wound becomes swollen, smelly or sore for the dog, contact your vet immediately.
If you can't stop your dog licking or scratching at the wound, contact your vet for advice.
Prepare some boiled water, allow to cool. Stir in a teaspoon of salt.
Use clean cotton wool to gently drip the cool salty water over the wound. If there is any embedded dirt, contact your vet.",
"Even small wounds can mask infection, so monitor your dog closely for any change.
There may also be damage to underlying tissues and structures that aren't immediately obvious.
However, most grazes will heal well on their own with a little home care.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 5
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to lick or scratch at the wound.
If possible wrap a clean sheet or towel around the affected area on the way to the surgery.
Try to keep your dog warm, quiet and calm.",
"A wound which involves the full thickness of the skin might need stitches, as well as treatment for pain and to prevent infection.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 6
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to lick or scratch at the wound.
If possible wrap a clean towel or sheet around the affected area on the way to the surgery.
Try to keep your dog warm, quiet and calm.",
"Puncture wounds may appear small on the surface but can cause damage to underlying tissues.
Many punctures are caused by unclean objects like glass or rusty nails, or by bites. These are certain to cause infection in the deeper tissues which they penetrate.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 7
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If possible keep your dogs head lowered on the journey to prevent choking.
Do not try to feed your dog; your dog may require an anaesthetic or sedation. These procedures are safer if your dog has not been fed
Try to keep your dog warm, quiet and calm.",
"Bleeding from the mouth is commonly due to injuries, but can also be a sign of medical problems like a clotting disorder or gut damage.
Significant bleeding can lead to shock and dehydration.
Wounds in this area can cause severe infection.
There may also be damage to underlying tissues and structures that aren't immediately obvious.
Veterinary care is essential.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 8
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Well done! you've stopped the bleeding.
Keep a close eye on your dog for the next few hours. Bleeding is likely to restart from the same area if the dog knocks itself or it gets excited.
It is important to take your dog for a checkup to rule out abnormalities that can cause bleeding from the mouth.",
"Bleeding from the mouth is commonly due to injuries, but can also be a sign of medical problems like a clotting disorder or gut damage.
If the bleeding starts again, it could lead to shock and dehydration.
Wounds in this area can cause severe infection.
There may also be damage to underlying tissues and structures that aren't immediately obvious.
Immediate veterinary care is essential if the bleeding starts again.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 9
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If possible keep your dogs head lowered on the journey to prevent choking.
Do not try to feed your dog, your dog may require an anaesthetic or sedation. These procedures are safer if your dog has not been fed
Try to keep your dog warm, quiet and calm.",
"Bleeding from the mouth is commonly due to injuries, but can also be a sign of medical problems like a clotting disorder or gut damage.
Significant bleeding can lead to shock and dehydration.
Wounds in this area can cause severe infection.
There may also be damage to underlying tissues and structures that aren't immediately obvious.
Veterinary care is essential.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 10
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If possible keep your dogs head lowered on the journey to prevent choking.
Do not try to feed your dog, your dog may require an anaesthetic or sedation. These procedures are safer if your dog has not been fed
Try to keep your dog warm, quiet and calm.",
"Bleeding from the nose is commonly due to injuries, but can also be a sign of medical problems like a clotting disorder or infection.
Significant bleeding can lead to shock and dehydration.
There may also be damage to underlying tissues and structures that aren't immediately obvious.
Veterinary care is essential.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 11
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Well done! you've stopped the bleeding.
Keep a close eye on your dog for the next few hours. Bleeding is likely to restart from the same area if the dog knocks itself or it gets excited.
It is important to take your dog for a checkup to rule out abnormalities that can cause bleeding from the nose.",
"Bleeding from the nose is commonly due to injuries, but can also be a sign of medical problems like a clotting disorder or infection.
Significant bleeding can lead to shock and dehydration.
There may also be damage to underlying tissues and structures that aren't immediately obvious.
Immediate veterinary care is essential if the bleeding starts again.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 12
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If possible keep your dogs head lowered on the journey to prevent choking.
Do not try to feed your dog, your dog may require an anaesthetic or sedation. These procedures are safer if your dog has not been fed
Try to keep your dog warm, quiet and calm.",
"Bleeding from the nose is commonly due to injuries, but can also be a sign of medical problems like a clotting disorder or infection.
Significant bleeding can lead to shock and dehydration.
There may also be damage to underlying tissues and structures that aren't immediately obvious.
Veterinary care is essential.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 13
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not try to feed your dog, your dog may require an anaesthetic or sedation. These procedures are safer if your dog has not been fed.
Try to keep your dog warm, quiet and calm.",
"Bleeding from the vulva is commonly due to seasons, but this is usually light (a few drops).
More severe bleeding can also be a sign of other medical problems like infection, a clotting disorder or tumors.
It can also be a sign of a pyometra or womb infection.
Significant bleeding can lead to shock and dehydration.
Veterinary care is essential.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 14
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Female dogs can have other problems when they are in season. If you are at all worried about your female dog, contact your vet for advice.
If the bleeding seems to be getting heavier, contact your vet.",
"It is normal for female dogs to loose a small amount of blood when they are in season.
Some behavior changes are also normal and include restlessness, nervousness and increased attractiveness to male dogs.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 15
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not try to feed your dog, your dog may require an anaesthetic or sedation. These procedures are safer if your dog has not been fed.
Try to keep your dog warm, quiet and calm.",
"Bleeding from the vulva is commonly due to seasons, but can also be a sign of other medical problems like infection, a clotting disorder or tumors.
It can also be a sign of a pyometra or womb infection.
Significant bleeding can lead to shock and dehydration.
Veterinary care is essential if she is not in season.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 16
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Black blood or blood mixed in with the feces often suggests an intestinal bleed.
This may be due to ulcers, tumors, or other gut damage.
It always requires veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 17
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A significant amount of blood on the feces often suggests a bleed near the rectum or in the colon.
This may be due to injury, anal gland disease, tumors, or other gut damage.
It always requires veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 18
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Blood on the feces often suggests a bleed near the rectum or in the colon.
This may be due to a foreign body, injury, anal gland disease, tumors, or other gut damage.
Alternatively, some poisons may thin the blood leading to abnormal bleeding.
It always requires veterinary attention if there are any other symptoms.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 19
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Blood on the feces often suggests a bleed near the rectum or in the colon.
This may be due to a foreign body, injury, anal gland disease, tumors, or other gut damage.
Alternatively, some poisons may thin the blood leading to abnormal bleeding.
It always requires veterinary attention if there are any other symptoms.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 20
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Blood on the feces often suggests a bleed near the rectum or in the colon.
This may be due to a foreign body, injury, anal gland disease, tumors, or other gut damage.
Alternatively, some poisons may thin the blood leading to abnormal bleeding.
It always requires veterinary attention if there are any other symptoms.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 21
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Blood on the feces often suggests a bleed near the rectum or in the colon.
This may be due to a foreign body, injury, anal gland disease, tumors, or other gut damage.
It always requires veterinary attention if there are any other symptoms.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 22
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep your dog warm, quiet and calm.
Try to collect a urine sample, it will help your vet to work out what is wrong with your dog.
Encourage your dog to take extra fluids, you can try mixing a little water in to your dogs food.",
"Blood on the feces often suggests a bleed near the rectum or in the colon.
This may be due to a foreign body, injury, anal gland disease, tumors, or other gut damage.
Alternatively, some poisons may thin the blood leading to abnormal bleeding.
It always requires veterinary attention if there are any other symptoms.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 23
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Blood in the vomit can look like coffee granules or fresh blood.
Do not try to feed your dog until you have been advised by your vet that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of blood in the vomit can affect humans.",
"Injuries to the stomach lining such as ulcers, foreign bodies, or tumors can all cause blood in the vomit.
Lung injuries can look very similar.
Sometimes, some clotting problems can also cause these symptoms.
They always require veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 24
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Inform your vet practice that your female dog is pregnant, they will be able to give you important advice about worming, diet and care and may want to check her over.",
"It is normal for the abdomen to be distended during pregnancy, and this on its own is not usually a cause for concern.
If the distension has increased dramatically in a short space of time it could suggest a serious condition such a a twisted stomach or internal bleeding - in this case contact your vet immediately.
If you have any other concerns about your female dog, or if your femael dog has any other symptoms, contact your vet.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 25
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Sudden bloating of the abdomen can be a sign of serious problems such as internal bleeding, twisted stomach (GDV) or heart failure. Your dog needs to be urgently checked by a vet to rule out these problems.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 26
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is bloated and in pain could be suffering from life threatening condition such as internal bleeding or a twisted stomach.
Your dog needs to be checked over by a vet urgently to rule out these conditions.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 27
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is bloated and off-color could be suffering from life threatening condition such as heart failure, internal bleeding or a tumor. Your dog needs to be checked over by a vet urgently.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 28
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Bloating and retching can be signs of life threatening conditions such as a twisted stomach. Other less serious conditions can also cause these signs but your dog needs to be checked by a vet urgently to establish what is causing its symptoms.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 29
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is bloated and coughing or breathless could be suffering from a serious health problem such as heart failure, internal bleeding or a tumor.
Your dog needs to be checked by a vet urgently.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 30
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is bloated and off-color could be suffering from life threatening condition such as heart failure, internal bleeding or a tumor.
A blue tinge to the gums or 'cyanosis' is a sign that your dog is not getting enough oxygen around its body. Your dog needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 31
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is bloated and off-color could be suffering from life threatening condition such as heart failure, internal bleeding or a tumor.
Brick red gums are a sign that the circulatory system is not working properly. It can be a very serious sign and your dog needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 32
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to collect a urine sample, it will help your vet to work out what is wrong with your dog.
Do not feed your dog for 8 hours before the appointment unless your vet practice tells you it is ok to do so.",
"Bloating can be caused by a variety of different health problems from being overweight to diseases such as Cushings and heart failure.
Your dog needs veterinary attention to establish what is causing the bloating and to begin treatment as necessary.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 33
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to collect a urine sample, it will help your vet to work out what is wrong with your dog.
Do not feed your dog for 8 hours before the appointment unless your vet practice tells you it is ok to do so.",
"Bloating can be caused by a variety of different health problems from being overweight to diseases such as Cushings and heart failure.
Your dog needs veterinary attention to establish what is causing the bloating and to begin treatment as necessary.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 34
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
If the opportunity arises before you arrive at the vets, collect a urine sample from your dog.",
"A dog that is bloated and off-color could be suffering from life threatening condition such as heart failure, internal bleeding or a tumor.
Very pale gums can be a sign of shock, failure of the circulation, or blood loss. These can be life threatening and your dog needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 35
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
If the opportunity arises before you get to the vets, collect a urine sample from your dog.",
"A dog that is bloated and off-color could be suffering from life threatening condition such as heart failure, liver disease, internal bleeding or a tumor.
Yellow tinged gums are a sign of jaundice which can be caused by liver or blood problems. These conditions can be life threatening and your dog requires urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 36
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
If your dog is unconscious: 1. Pull the tongue forwards. 2. Straighten the neck. 3.Look for any obstructions in the back of the mouth. Remove them carefully by hand if you can see anything.
If your dog is still not breathing: Gently close the mouth and breath very gently into the nose approximately every 10 seconds.
If there is no heart beat: Gently compress the chest 15 times then give two breaths. If possible keep going until you get to the vets.",
"Any condition that causes difficulty breathing is life threatening. Your dog needs urgent veterinary treatment, the quicker treatment is started the more likely it is to be successful.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 37
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
If your dog is unconscious: 1. Pull the tongue forwards. 2. Straighten the neck. 3. Look for any obstructions in the back of the mouth. Remove them carefully by hand if you can see anything.
If your dog is still not breathing: Gently close the mouth and breath very gently into the nose approximately every 10 seconds.
If there is no heart beat: Gently compress the chest 30 times then give two breaths. If possible keep going until you get to the vets.",
"A dog that is off-color and having difficulty breathing may be suffering from a life threatening condition and needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 38
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is off-color and having difficulty breathing may be suffering from a life threatening condition and needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 39
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Don't put yourself in danger to rescue your dog; call 911 for the Fire Department.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Smoke inhalation and toxic fumes can cause systemic poisoning or burns to the lungs.
Sometimes, these fumes can prevent dogs from breathing, or make it difficult to do so.
Emergency veterinary care is needed.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 40
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not put yourself in danger!
Deep or fast flowing water: Do not go into the water in case you get into any difficulties. Try to catch hold of your dog while remaining securely on the bank; alternatively, try to move downstream and catch them at a slower moving or shallower region of the watercourse.
Electricity: Do not touch your dog until you have turned off the electricity or called 911.
Check your dog's status:
If your dog is unconscious: 1. Pull the tongue forwards. 2. Straighten the neck. 3. Look for any obstructions in the back of the mouth. Remove them carefully by hand if you can see anything.
If your dog is still not breathing: Gently close the mouth and breath very gently into the nose approximately every 10 seconds.
If there is no heart beat: Gently compress the chest 30 times then give two breaths. If possible, keep going until you get to the vets.
Do not use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Drowning is common on dogs but, with immediate treatment, may be survivable.
Sometimes, dogs may start showing signs of difficulty breathing minutes or even hours after being rescued from the water. This is called Secondary Drowning.
Strangulation may cause brain damage from lack of oxygen; in addition, bruising of the throat may make the airways swell shut some time after the original injury.
Electrocution can cause burns throughout the body's internal organs, including the heart and lungs.
For all these conditions, urgent veterinary attention is required.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 41
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Don't use a lead that may tighten around your dogs neck.",
"Overheating is potentially life threatening. Urgent veterinary treatment is required to prevent permanent damage to the brain and other organs. Try to keep your dog as cool as possible on the way to the vet by opening windows, wetting the coat, and offering cool or cold water.
Hypothermia, or getting too cold, is also dangerous and requires immediate veterinary treatment. On the way to the vet, cover your dog with a blanket and keep the environment warm.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 42
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is off-color and having difficulty breathing may be suffering from a life threatening condition.
A blue tinge to the gums, or 'cyanosis,' is a sign that your dog is not getting enough oxygen around its body. Your dog needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 43
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is off-color and having difficulty breathing may be suffering from a life threatening condition.
Brick red gums are a sign that the circulatory system is not working properly. It can also indicate carbon monoxide poisoning, which is often fatal.
This is often a very serious sign and your dog needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 44
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"This can be a sign of carbon monoxide poisoning, which is potentially fatal.
A dog that is off-color and having difficulty breathing may be suffering from a life threatening condition and needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 45
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Until you see your vet keep your dog warm, quiet and calm.
Do not use a lead that may tighten around your dogs neck.
Restrict exercise to lead walks to toilet only.",
"Breathing problems can be caused by heart, lung, blood or throat problems, amongst others. Many of these conditions are potentially very serious and your dog needs to be checked by over by a vet.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 46
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is off-color and having difficulty breathing may be suffering from a life threatening condition.
Yellow tinged gums are a sign of jaundice which can be caused by liver or blood problems.
These conditions can be life threatening and your dog requires urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 47
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep your dog warm, quiet and calm.
Don't use a lead that may tighten around your dogs neck.
Restrict exercise to lead walks to toilet only.",
"Breathing problems can be caused by heart, lung, blood or throat problems, amongst others. Many of these conditions are potentially very serious and your dog needs to be checked by over by a vet.
A dog that is off-color and having difficulty breathing may be suffering from a serious condition, so if they deteriorate they may need urgent veterinary treatment.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 48
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is off-color and having difficulty breathing may be suffering from a life threatening condition and needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 49
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If your dog has being treated with insulin or has been diagnosed with the condition 'insulinoma,' apply honey or sugar to the gums.
If your dog is unconscious: 1. Pull the tongue forwards. 2. Straighten the neck. 3. Look for any obstructions in the back of the mouth. Remove them carefully by hand if you can see anything.
If your dog is still not breathing: Gently close the mouth and breath very gently into the nose approximately evey 10 seconds.
If there is no heart beat: Gently compress the chest 15 times then give two breaths.
Try to keep your dog warm, quiet and calm.",
"There are a wide range of possible causes of collapse, including heart disease, brain problems, severe infections, low blood sugar, salt imbalances, dehydration, heat stroke, spinal or bone disease, muscle wasting, and many, many more.
Any collapsed dog needs immediate veterinary attention to work out what's wrong and then to treat it appropriately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 50
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If your dog is unconscious: 1. Pull the tongue forwards. 2. Straighten the neck. 3. Look for any obstructions in the back of the mouth. Remove them carefully by hand if you can see anything.
If your dog is still not breathing: Gently close the mouth and breath very gently into the nose approximately every 10 seconds.
If there is no heart beat: Gently compress the chest 15 times then give two breaths. If possible, keep going until you get to the vets.
Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways and heart can cause coughing and wheezing in dogs. This may sometimes worsen to difficulty breathing, which is often fatal if untreated.
A dog with these signs who is showing other symptoms needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 51
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill, they may accidentally bite or scratch.",
"Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways and heart can cause coughing and wheezing in dogs.
A dog with these signs who is showing other symptoms needs veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 52
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways and heart can cause coughing and wheezing in dogs.
A dog with these signs who is showing other symptoms needs veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 53
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not put yourself in danger! Do not enter a burning building or a cloud of fumes. Instead, call 911 for the Fire Department.
Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing; they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet, and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Toxic fumes and smoke may cause poisoning, or lung damage, or even internal burns.
All of these conditions can result in a cough or wheezy breathing, but require emergency veterinary attention in case they worsen.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 54
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not put yourself in danger.
Deep or fast flowing water: Do not go in to rescue your dog, as you may get into difficulties yourself. Try to reach them from the bank, or move downstream to shallower or slower moving parts of the watercourse.
Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"Drowning is an emergency for dogs as it is for people.
Sometimes, difficulty breathing can occur hours after inhaling water, and is often signalled by a soft cough or wheezing. This is called Secondary Drowning and is a genuine emergency that may be life threatening if veterinary treatment is not immediate.
Dogs with a neck injury from strangulation may find their airways swelling shut some time after the injury. This can cause coughing or wheezing, and again needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 55
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways and heart can cause coughing and wheezing in dogs.
A dog with these signs who is showing other symptoms needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 56
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways, and heart can cause coughing and wheezing in dogs.
A distended abdomen may indicate heart disease, tumours, or a twisted gut.
All of these conditions require urgent veterinary advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 57
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways and heart can cause coughing and wheezing in dogs.
A blue tinge to the gums or 'cyanosis' is a sign that your dog is not getting enough oxygen around its body. Your dog needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 58
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways and heart can cause coughing and wheezing in dogs.
Brick red gums are a sign that the circulatory system is not working properly. It can be a very serious sign and your dog needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 59
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"This can be a sign of carbon monoxide poisoning which is potentially fatal.
A wide range of diseases of the lungs, airways and heart can cause coughing and wheezing in dogs.
A dog with these signs who is showing other symptoms needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 60
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed, contact your vet.",
"Keep your dog warm, quiet and calm.
Don't use a lead that may tighten around your dogs neck.
Restrict exercise to lead walks to toilet only.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways, and heart can cause coughing and wheezing in dogs.
A dog with these signs who is showing other symptoms needs veterinary attention.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 61
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways, and heart can cause coughing and wheezing in dogs.
Very pale gums can be a sign of shock, failure of the circulation, anaemia, or blood loss. These can be life threatening and your dog needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 62
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Don't use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways and heart can cause coughing and wheezing in dogs.
Yellow tinged gums are a sign of jaundice which can be caused by liver or blood problems. These conditions can be life threatening and your dog requires urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 63
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep your dog warm, quiet and calm.
Do not use a lead that may tighten around your dogs neck.
Restrict exercise to lead walks to toilet only.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways and heart can cause coughing and wheezing in dogs.
A dog with these signs who is showing other symptoms needs veterinary attention.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 64
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Some types of cough are catching. Keep your dog away from other dogs.
Tell your vet practice that your dog is coughing, they may give you special instructions.
Do not use a lead that may tighten around your dogs neck.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A wide range of diseases of the lungs, airways and heart can cause coughing and wheezing in dogs.
A dog with these signs who is showing other symptoms needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 65
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Any dog with diarrhoea who is in pain needs veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 66
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Any dog with diarrhoea who is off-color or has other symptoms needs veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 67
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
Other possible causes include certain types of poisoning, and some toxins (such as detergents) which can severely damage the bowel lining; if this is possible, your dog requires urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 68
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally tumours, other gut disorders, or foreign bodies such as bones, trapped in the large intestine. This requires immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 69
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Constant straining may be due to colitis or other large-bowel disorders; or to a foreign object strapped in the rectum.
Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Any dog with diarrhoea who is off-color or has other symptoms needs veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 70
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
A dog that is drinking more than usual and has diarrhoea could be suffering from a serious underlying health problem, or may be dangerously dehydrated, and needs immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 71
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
A swollen abdomen may suggest more severe gut damage, such as a twist or torsion. Your dog therefore requires immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 72
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre, such as boiled white rice and white fish poached in water).
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
Occasionally, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
A trace of blood on the stool usually means there has been some injury to the lining of the large bowel or rectum; this may just be due to the diarrhoea, but should be checked out by your vet.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 73
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Blood mixed in, or black stools, suggest a significant intestinal bleed, that requires urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 74
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Blood on the stool suggests a rectal or intestinal bleed, that requires immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 75
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
A blue tinge to the gums or 'cyanosis' is a sign that your dog is not getting enough oxygen around its body. Your dog needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 76
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Brick red gums are a sign that the circulatory system is not working properly. It can be a very serious sign and your dog needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 77
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Very pale gums can be a sign of shock, failure of the circulation, or blood loss. These can be life threatening and your dog needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 78
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Any dog with diarrhoea who is off-color or has other symptoms needs veterinary attention.
Yellow tinged gums are a sign of jaundice which can be caused by liver or blood problems. These conditions can be life threatening and your dog requires urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 79
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre, such as boiled white rice and white fish poached in water).
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Any dog with diarrhoea who is off-color or has other symptoms needs veterinary attention.
Diarrhoea can occasionally be a sign of a more serious problem and it is vital to keep a close eye on your dog.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 80
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre eg boiled white rice and white fish poached in water.)
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
Occasionally, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening if severe or prolonged.
Any dog with diarrhoea who is off-color, has other symptoms, or where it does not resolve on its own in a day or so needs veterinary attention.
Diarrhoea can occasionally be a sign of a more serious problem and it is vital to keep a close eye on your dog.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 81
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre, such as boiled white rice and white fish poached in water).
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances.
Diarrhoea can occasionally be a sign of a more serious problem and it is vital to keep a close eye on your dog.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 82
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Ongoing watery diarrhoea suggests severe fluid loss, and therefore your dog need immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 83
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections such as Parvo, Salmonella and Campylobacter, but also occasionally foreign bodies, tumours, or other gut disorders.
If severe or prolonged, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become life-threatening.
Blood in the stool suggests an intestinal bleed, which requires urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 84
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre, such as boiled white rice and white fish poached in water).
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea may be due to a wide range of conditions, particularly gut infections, but also occasionally foreign bodies, tumours, or other gut disorders.
Occasionally, diarrhoea may lead to severe dehydration, salt and acid imbalances, which may become serious if it goes on for too long, especially with watery diarrhoea. As a rule of thumb, less than 3 watery diarrhoea bouts is unlikely to be dangerous, as long as your dog seems well otherwise. If they become unwell, or have further bouts, contact your vet for advice.
Diarrhoea can occasionally be a sign of a more serious problem and it is vital to keep a close eye on your dog.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 85
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"It is very important to make sure that your dog has free access to water until you leave for the vets.
Keep your dog warm and quiet.",
"Drinking more than usual can be a sign of life threatening medical problems including kidney failure, pyometra (infected uterus) or diabetes.
If your dog is also in pain it suggests a serious health problem, you need to telephone your vet immediately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 86
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"It is very important to make sure that your dog has free access to water until you leave for the vets.
Keep your dog warm and quiet.",
"Drinking more than usual can be a sign of life threatening medical problems including kidney failure, pyometra (infected uterus) or diabetes. You need to telephone your vet immediately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 87
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take any packets, labels, etc. with details of the toxin to the vet. If possible, work out how much your dog has eaten.
It is very important to make sure that your dog has free access to water until you leave for the vets.
Keep your dog warm and quiet.",
"Even if your dog appears well you need to call your vet immediately. Some toxins can take a while to start having an effect and the sooner treatment is started the more likely it is to be successful.
Salt poisoning causes dehydration of the brain and may be fatal without immediate treatment.
Other toxins may damage the kidneys causing increased thirst, and this damage may prove irreversible if not treated rapidly.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 88
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"It is very important to make sure that your dog has free access to water until you leave for the vets.
Keep your dog warm and quiet.",
"Drinking more than usual can be a sign of life threatening medical problems including kidney failure, pyometra (infected uterus) or diabetes. You need to telephone your vet immediately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 89
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Try to record how much your dog is drinking by measuring how much you put into his water bowl. It will help the vet to establish if there is a problem.
It is essential to give your dog free access to water until you go to the vets.
If possible take a fresh urine sample to the vets, it will help them to work out what is wrong with your dog.",
"Drinking more than usual can be a sign of serious medical problems including kidney failure, Cushing's Disease or diabetes, so you need to get your dog checked by a vet.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 90
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to record how much your dog is drinking by measuring how much you put into his water bowl. It will help the vet to establish if there is a problem.
It is essential to give your dog free access to water until you go to the vets.
If possible take a fresh urine sample to the vets, it will help them to work out what is wrong with your dog.",
"Drinking more than usual can be a sign of serious medical problems including kidney failure, pyometra (infected uterus), Cushing's Disease or diabetes, so you need to get your dog checked by a vet.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 91
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"It is very important to make sure that your dog has free access to water until you leave for the vets.
Keep your dog warm and quiet.",
"Drinking more than usual can be a sign of life threatening medical problems including kidney failure, pyometra (infected uterus) or diabetes. You need to telephone your vet immediately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 92
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog any food unless your vet says it is all right to do so.",
"A dog that is depressed or in pain needs to see a vet urgently.
Drooling can be a sign of many problems, some of which are very serious. Your vet will need to examine your dog before deciding on the best treatment.
Possible causes include gastric bloat or torsion, poisoning, nausea, eating something with a foul taste, injury to the mouth, dental disease and gum disease.
If your dog has been abroad or has been in contact with dogs who have been abroad, your vet will want to rule out infectious diseases such as rabies.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 93
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog any food unless your vet says it is all right to do so.",
"A dog that is depressed or in pain needs to see a vet urgently.
Drooling can be a sign of many problems, some of which are very serious. Your vet will need to examine your dog before deciding on the best treatment.
Possible causes include gastric bloat or torsion, poisoning, nausea, eating something with a foul taste, injury to the mouth, dental disease and gum disease.
If your dog has been abroad or has been in contact with dogs who have been abroad, your vet will want to rule out infectious diseases such as rabies.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 94
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not put yourself at risk - dogs with nervous system problems may bite or snap without meaning to.
Do not offer your dog any food unless your vet says it is all right to do so.",
"Drooling combined with nervous system signs may suggest a seizure, poisoning, or brain injury.
A dog with any of these symptoms combined with drooling needs to see a vet urgently.
Other possible causes include gastric bloat or torsion, poisoning, nausea, eating something with a foul taste, injury to the mouth, dental disease or gum disease.
If your dog has been abroad or has been in contact with dogs who have been abroad, your vet will want to rule out infectious diseases such as rabies.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 95
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
If you know what substance your pet has eaten, try to take the packaging with you to the vet as it may contain helpful information which can save time. Do not delay treatment to look for the packaging as you can ring your surgery later when you find it.",
"A case of suspected poisoning should see your vet as soon as possible to try to limit the effects of the poison.
There are many poisons apart from those listed in the question, so if you suspect poisoning, always ring for urgent advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 96
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.",
"This can be a first sign of gastric bloat or torsion, a life-threatening condition which needs urgent treatment, or other tummy problems which need investigation.
Other possible causes of drooling include poisoning, nausea, eating something with a foul taste, injury to the mouth, dental disease or gum disease.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 97
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog food unless your vet says it is all right to, as it may cause further problems.",
"Toads are mainly encountered by dogs at dawn or dusk in the summer months. They produce very irritant chemicals which can cause severe drooling in dogs and occasionally more serious effects. Ring your surgery for advice at once. If possible, rinse the dogs mouth with cold water but do not let it swallow the water.
Rotting food can cause drooling, nausea, vomiting and diarrhoea in dogs because of bacteria and toxins produced in decomposition. Ring your surgery for advice at once.
Other possible causes include gastric bloat or torsion, poisoning, nausea, eating something with a foul taste, injury to the mouth, dental disease and gum disease.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 98
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If it is safe to do so, check your dog's mouth for injury or a foreign object lodged inside.
If you cannot examine your dog's mouth, or you cannot see where the blood is coming from, call your vet.
If you can see an injury or a foreign object which you cannot remove without damage, your dog will still need treatment to remove the object or to repair the injury and prevent infection.
Do not offer your dog anything to eat or drink unless advised to do so by your vet beucase your dog may need to have sedation or an anaesthetic.
Try to keep your dog warm, quiet, and calm.",
"Sticks and bones are very common causes of injury.
Other possible causes of bleeding and drooling include dental or gum disease or a growth inside the mouth.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 99
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Avoid giving your dog food unless your vet says you can because there could be an injury to the mouth or gut.",
"The cause of the vomiting or retching and drooling needs to be found and treated.
Possible causes include gastric bloat or torsion, bacterial or viral infections, dietary problems, eating something with a foul taste, injury to the throat or gullet, dental disease, or gum disease.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 100
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.",
"Dogs can drool if their mouth, teeth, or gums are sore. The problem may have been present for some time; but, if your dog is now drooling, it requires treatment as soon as possible. The mouth may be infected and/or painful.
Other possible causes of drooling include gastric bloat or torsion, poisoning, nausea, eating something with a foul taste, or injuries to the mouth.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 101
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Dogs can suffer from motion sickness just like humans, or from anxiety if they are not used to travelling.
Your vet could advise you about different ways of making your dog less fearful or could dispense medication for your dog, if needed.",
"Dogs should be on leads attached to a harness in the car or collar.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 102
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"An increase in saliva production is a normal response to the sight or smell of food or to the familiar sounds which your dog associates with food (e.g., opening a tin or rustling a food bag).
If you give treats between meals or share bits of your own food with your dog, it is likely to salivate whenever there is any food around.",
NULL,
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 103
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Many owners wipe their dogs mouth frequently with a towel, or use commercially available wet wipes which are made for that purpose.
If your dog develops any other symptoms, or you are concerned, call your vet for advice.",
"Certain breeds and certain individual dogs always drool because of the shape of the mouth and lips (e.g., Bloodhounds, St Bernards, etc.).
This does not usually need treatment unless there are secondary problems, such as infection in the lip folds and creases. If there is a bad smell from the mouth, call your vet for advice.
Other possible causes of drooling include gastric bloat or torsion, poisoning, nausea, eating something with a foul taste, or injuries to the mouth.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 104
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Avoid giving your dog food unless your vet says you can because there could be an injury to the mouth.",
"Sticks can sometimes cause damage in the mouth that is not easily seen. If the drooling started after playing with a stick, your vet will need to examine your dog for signs of a stick injury.
Other possible causes of drooling include gastric bloat or torsion, poisoning, nausea, eating something with a foul taste, injury to the mouth, dental disease, or gum disease.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 105
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"If your dog develops any other symptoms, call your vet for advice immediately.",
"Possible causes include gastric bloat or torsion, poisoning, nausea, eating something with a foul taste, injury to the mouth, dental disease, or gum disease.
If the drooling is not something your dog has always done, it would be advisable to have a check up to find out what is causing it.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 106
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Ear problems can be due to infections, parasites, or foreign bodies such as grass seeds inside the ear.
In some cases, the inner ear may also be affected, leading to an inner ear infection, which can cause changes in balance, posture, and behavior.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 107
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Do not try to feed your dog unless your vet practice tells you it is OK to do so.",
"Ear problems can be due to infections, parasites, or foreign bodies such as grass seeds inside the ear.
In some cases, the inner ear may also be affected, leading to an inner ear infection, which can cause changes in balance, posture, and behavior.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 108
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Ear problems can be due to infections or parasites.
Continuous scratching or shaking may suggest the presence of a foreign body such as a grass seed inside the ear, which needs to be removed as soon as possible.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 109
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and shaking its head.
If necessary put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Ear problems can be due to infections, parasites, or foreign bodies such as grass seeds inside the ear.
In some cases, the inner ear may also be affected, leading to an inner ear infection, which can cause changes in balance, posture, and behavior.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 110
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to distract your dog from scratching and shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Stop feeding your dog for 8 hours prior to taking your dogs to the vet, it may be necessary to sedate or anaesthetise your dog, this is safer if your dog has been starved.",
"Ear problems can be due to infections, parasites, or foreign bodies such as grass seeds inside the ear.
Swelling of the ear flap is common following an ear problem as scratching and shaking the head damage the small blood vessels, leading to a \"blood blister\" forming inside the ear.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 111
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Try to distract your dog from scratching and shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Stop feeding your dog for 8 hours prior to taking your dogs to the vet, it may be necessary to sedate or anaesthetise your dog, this is safer if your dog has been starved.",
"Ear problems can be due to infections, parasites, or foreign bodies such as grass seeds inside the ear.
In some cases, the inner ear may also be affected, leading to an inner ear infection, which can cause changes in balance, posture, and behavior.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 112
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to scratch at its eye.
If necessary put some socks on your dogs feet to stop any self damage.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Eye problems can be due to damage to the surface, infections, trauma to the eyeball, abnormal pressure in the eye (glaucoma), abscesses behind the eyeball, or penetrating foreign bodies.
Sometimes, damage to parts of the brain or to the nerves of the head can also cause eye problems, and these need urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 113
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to scratch at its eye.
If necessary put some socks on your dogs feet to stop any self damage.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Eye problems can be due to damage to the surface, infections, trauma to the eyeball, abnormal pressure in the eye (glaucoma), abscesses behind the eyeball, or penetrating foreign bodies.
Sometimes, damage to parts of the brain or to the nerves of the head can also cause eye problems, and these need urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 114
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to scratch at its eye.
Hold a clean damp dressing over the eye.
If necessary put some socks on your dogs feet to stop any self damage.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Eye problems can be due to damage to the surface, infections, trauma to the eyeball, abnormal pressure in the eye (glaucoma), abscesses behind the eyeball, or penetrating foreign bodies.
In some breeds and some individuals, the eyeball is only loosely held within the socket and can start to \"pop out\" under pressure.
This is an emergency and requires urgent veterinary advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 115
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to scratch or rub at its eye.
If necessary put some socks on your dogs feet to stop any self damage.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Eye problems can be due to damage to the surface, infections, trauma to the eyeball, abnormal pressure in the eye (glaucoma), abscesses behind the eyeball, or penetrating foreign bodies.
Sometimes, damage to parts of the brain or to the nerves of the head can also cause eye problems, and these need urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 116
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to scratch or rub at its eye.
If necessary put some socks on your dogs feet to stop any self damage.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Eye problems can be due to damage to the surface, infections, trauma to the eyeball, abnormal pressure in the eye (glaucoma), abscesses behind the eyeball, or penetrating foreign bodies.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 117
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to scratch or rub at its eye.
If necessary put some socks on your dogs feet to stop any self damage.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Eye problems can be due to damage to the surface, infections, trauma to the eyeball, abnormal pressure in the eye (glaucoma), abscesses behind the eyeball, or penetrating foreign bodies.
Sometimes, damage to parts of the brain or to the nerves of the head can also cause eye problems, and these need urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 118
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to scratch or rub at its eye.
If necessary put some socks on your dogs feet to stop any self damage.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Eye problems can be due to damage to the surface, infections, trauma to the eyeball, abnormal pressure in the eye (glaucoma), abscesses behind the eyeball, or penetrating foreign bodies.
Sometimes, damage to parts of the brain or to the nerves of the head can also cause eye problems, and these need urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 119
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Do not allow your dog to scratch or rub at its eye.
If necessary put some socks on your dog's feet to stop any self damage.",
"Eye problems can be due to damage to the surface, infections, trauma to the eyeball, abnormal pressure in the eye (glaucoma), abscesses behind the eyeball, or penetrating foreign bodies.
In this case, an infection of the front of the eye (conjunctivitis) is likely.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 120
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Do not allow your dog to scratch or rub at its eye.
If necessary put some socks on your dogs feet to stop any self damage.
Do not try to feed your dog for 8 hours before your appointment in case your dog needs sedation or an anaesthetic.",
"Eye problems can be due to damage to the surface, infections, trauma to the eyeball, abnormal pressure in the eye (glaucoma), abscesses behind the eyeball, or penetrating foreign bodies.
Although the eye is non-painful and showing no other signs, eyes are delicate and any problems need to be checked out.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 121
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Take great care. When dogs are fitting or have recently been fitting they may be disorientated. They may accidentally bite or scratch.
Move away any objects that could injure your dog.
Keep the lighting dim.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes and brain injuries.
Your vet will need to examine your dog and possibly carry out some more tests to determine exactly what the cause is.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 122
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take great care. When dogs are fitting or have recently been fitting they may be disorientated. They may accidentally bite or scratch.
Move away any objects that could injure your dog.
Keep the lighting dim.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes and brain injuries.
Whatever the cause, a fit lasting over 5 minutes is a potentially life-threatening condition called status epilepticus, and your dog needs emergency veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 123
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take great care. When dogs are fitting or have recently been fitting they may be disorientated. They may accidentally bite or scratch.
Move away any objects that could injure your dog.
Keep the lighting dim.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes and brain injuries.
Whatever the cause, a fit that may have lasted over 5 minutes is a potentially life-threatening condition called status epilepticus, and your dog needs emergency veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 124
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take great care. When dogs are fitting or have recently been fitting they may be disorientated. They may accidentally bite or scratch.
Move away any objects that could injure your dog.
Keep the lighting dim.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes and brain injuries.
Whatever the cause, multiple fits without return of normal consciousness in between are a potentially life-threatening condition called status epilepticus, and your dog needs emergency veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 125
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take great care. When dogs are fitting or have recently been fitting they may be disorientated. They may accidentally bite or scratch.
Move away any objects that could injure your dog.
Keep the lighting dim.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes and brain injuries.
If your dog is not recovering normally after a fit, they need urgent veterinary assessment to rule out serious underlying diseases.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 126
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take great care. When dogs are fitting or have recently been fitting they may be disorientated. They may accidentally bite or scratch.
Move away any objects that could injure your dog.
Keep the lighting dim.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes and brain injuries.
If your dog is in pain or distress, then whatever the cause, they need urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 127
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take great care. When dogs are fitting or have recently been fitting they may be disorientated. They may accidentally bite or scratch.
Move away any objects that could injure your dog.
Keep the lighting dim.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes, and brain injuries.
If your dog is not recovering normally after a fit, it needs urgent veterinary assessment to rule out serious underlying diseases.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 128
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take great care. When dogs are fitting or have recently been fitting they may be disorientated. They may accidentally bite or scratch.
Move away any objects that could injure your dog.
Keep the lighting dim.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes, and brain injuries.
Unequal pupils suggest a malfunction in the parts of the brain that control the eyes, which needs urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 129
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take great care. When dogs are fitting or have recently been fitting they may be disorientated. They may accidentally bite or scratch.
Move away any objects that could injure your dog.
Keep the lighting dim.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes, and brain injuries.
If the eyes are not responding normally to light, this may suggest blindness, or a malfunction of the parts of the brain controlling the pupils. This requires immediate veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 130
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take great care. When dogs are fitting or have recently been fitting they may be disorientated. They may accidentally bite or scratch.
Move away any objects that could injure your dog.
Keep the lighting dim.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes and brain injuries.
This movement of the eyes may suggest that your dog is still fitting, or that the parts of the brain controlling eye movement are malfunctioning, in which case they need urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 131
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Take great care. When dogs are fitting they do not know where they are or what is happening. They may accidentally bite or scratch.
Keep the lighting dim.
Do not try to feed your dog.
Try to keep your dog warm, quiet and calm.
If it is possible to do so safely have a look at your dog's gums. Note the color and tell your vet when you arrive.
If possible take details of the poison to the vets.",
"A wide range of toxins are capable of causing fits in dogs, including theobromine (chocolate), metaldehyde (slug/snail bait), cannabis, and many more.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 132
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep in a quiet darkened room for a few hours.
Withhold food and water for an hour then offer little and often.
Make a note of some details of what happened, it may help your vet to reach a diagnosis.
Keep your dog warm, quiet and calm.
Restrict exercise. Give lead walks to the toilet only.",
"There are a wide range of conditions that can cause fitting, including epilepsy, poisonings, meningitis, strokes and brain injuries.
Your vet will need to examine your dog and possibly carry out some more tests to determine the exact cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 133
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is OK to do so.
If it is possible to do so safely have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear, but diseases of almost any body system can cause them as well.
Any abnormalities in your dog's behavior in association with pain or distress require urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 134
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear.
Any abnormalities in your dog's responsiveness suggest a problem with your dog's brain, requiring urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 135
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"Internal bleeding, hyperthermia (overheating) and hypothermia (being too cold) can all lead to a wide range of symptoms and secondary problems.
These all require urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 136
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear, but diseases of almost any body system can cause them as well.
A dog experiencing coughing, collapsing, or reduced stamina could be showing signs of serious health issues ranging from cardiac conditions to neurological disorders.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 137
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear, but diseases of almost any body system can cause them as well.
Dehydration can be a problem in itself, but increased thirst may also indicate a hormonal problem, salt poisoning, or a pyometra (womb infection), among other problems, all of which require immediate veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 138
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
Make a note of what they may have eaten so your vet knows what to expect.",
"There are a wide range of toxins that can cause a \"funny turn\"; many of these affect the brain either directly (e.g., cannabis, salt, chocolate or antifreeze) or indirectly (e.g., xylitol).
Even if your dog seems well now, the earlier they receive treatment the better the outcome is likely to be.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 139
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is Okay to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear, but diseases of almost any body system can cause them as well.
Any abnormalities in your dog's balance or behavior suggest a problem with its brain, requiring urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 140
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear.
Any abnormalities in your dog's responsiveness suggest a problem with your dog's brain (e.g., a stroke) or ears (e.g., vestibular syndrome or an inner ear infection), requiring urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 141
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is OK to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear.
Any abnormalities in your dog's eye reflexes suggest a problem with your dog's brain, requiring urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 142
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear.
Any abnormalities in your dog's vision suggest a problem with your dog's eyes or brain, requiring urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 143
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
If it is possible to do so safely have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear, but diseases of almost any body system can cause them as well.
Any abnormalities in your dog's nervous system like this suggest a problem with their brain, requiring urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 144
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"This could be a sign of a torsion (gastric dilation and volvulus), which is a potentially life-threatening emergency. Your dog needs immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 145
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you talk to the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear, but diseases of almost any body system can cause them as well.
Your dog needs to be checked out by a vet to determine the exact cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 146
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is okay to do so.
If it is possible to do so safely, have a look at your dog's gums. Note the color and tell your vet when you arrive at the surgery.",
"There are a wide range of medical conditions that can cause a \"funny turn\"; many of these are diseases or malfunctions of the brain and inner ear, but diseases of almost any body system can cause them as well.
Failure of the \"pinch test\" suggests that your dog might be seriously dehydrated, and thus in need of immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 147
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and biting itself.
Put some socks on your dog's feet or put a t-shirt on your dog to stop any self damage while you call your vet.",
"Itchiness can be due to a wide range of possible causes, including parasites, allergies, and skin infections.
Whatever the cause, if your dog is in distress or seems unwell, then it needs rapid veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 148
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and biting itself.
Put some socks on your dog's feet or put a t-shirt on your dog to stop any self damage while you call your vet.",
"Itchiness can be due to a wide range of possible causes, including parasites, allergies, and skin infections.
Your vet may need to examine your dog and may need to carry out extra tests to determine the cause and the best treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 149
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and biting itself.
Put some socks on your dog's feet or put a t-shirt on your dog to stop any self damage while you call your vet.",
"Itchiness can be due to a wide range of possible causes, including parasites, allergies, and skin infections.
Your vet may need to examine your dog and may need to carry out extra tests to determine the cause and the best treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 150
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to distract your dog from scratching and biting itself.
Put some socks on your dog's feet or put a t-shirt on your dog to stop any self damage.
If you can not stop your dog from scratching contact your vet.",
"It is likely that your dog has fleas.
Ask your vet for advice before treating for fleas, as the other skin symptoms suggest that there may be other problems (e.g., mites, allergies, or infection) as well.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 151
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Try to distract your dog from scratching and biting itself.
Put some socks on your dog's feet or put a t-shirt on your dog to stop any self damage.
If you can not stop your dog from scratching or biting, contact your vet.",
"It is likely that your dog has fleas.
You need to contact your vet to obtain products with which you can treat your pet, and your vet will give you advice on how to use these products.
If the problem does not resolve after treatment, contact your vet for more advice.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 152
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to distract your dog from scratching and biting itself.
Put some socks on your dog's feet or put a t-shirt on your dog to stop any self damage.
If you can not stop your dog from scratching contact your vet.",
"It is likely that your dog has fleas.
Ask your vet for advice before treating for fleas in this instance, as the other skin signs might suggest that there are other problems (e.g., mites, allergies, or infection) as well.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 153
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Try to distract your dog from scratching and biting itself.
Put some socks on your dog's feet or put a t-shirt on your dog to stop any self damage.
If you can not stop your dog from scratching contact your vet.",
"It is likely that your dog has fleas.
You need to contact your vet to obtain products to treat your pet with. They will give you advice on how to use these products.
If the problem does not resolve, contact your vet for further advice.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 154
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to distract your dog from scratching and biting itself.
Put some socks on your dog's feet or put a t-shirt on your dog to stop any self damage.
If you can not stop your dog from scratching contact your vet.",
"Itchiness can be due to a wide range of possible causes, including parasites, allergies, and skin infections.
Your vet will need to examine your dog and may need to carry out extra tests to determine the cause and the best treatment.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 155
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Try to distract your dog from scratching and biting itself.
Put some socks on your dog's feet or put a t-shirt on your dog to stop any self damage.
If you can not stop your dog from scratching contact your vet.",
"Itchiness can be due to a wide range of possible causes, including parasites, allergies, and skin infections.
Your vet will need to examine your dog and may need to carry out extra tests to determine the cause and the best treatment.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 156
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to prevent movement of your dog as much as possible.
You can try to hold an ice pack in a towel gently on to the affected area to ease the pain and reduce the swelling.
Do not feed your dog. Anaesthetic or sedation may be required, these procedures are safer if your dog has not been fed.
Try to keep your dog warm, quiet and calm.",
"Lameness can be caused by bone, muscle, tendon, ligament, nerve, or brain damage, as well as skin and pad lesions, and in some cases it can be hard to tell what the cause is.
Your vet will probably need to examine your dog and may need to carry out further tests such as X-rays to determine the cause and the best treatment options.
Following a serious accident there may be even more serious internal injuries, so get your dog seen by a vet as soon as possible.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 157
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Lameness can be caused by bone, muscle, tendon, ligament, nerve, or brain damage, as well as skin and pad lesions, and in some cases it can be hard to tell what the cause is.
Your vet will probably need to examine your dog and may need to carry out further tests such as X-rays to determine the cause and the best treatment option.
A dog who cannot move freely needs immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 158
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to prevent movement of your dog as much as possible.
You can try to hold an ice pack in a towel gently on to the affected area to ease the pain and reduce the swelling.
Do not feed your dog. Anaesthetic or sedation may be required, these procedures are safer if your dog has not been fed.
Try to keep your dog warm, quiet and calm.",
"Abnormal angles in the leg suggest a serious problem, probably a fractured bone.
This requires urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 159
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to prevent movement of your dog as much as possible.
You can try to hold an ice pack in a towel gently on to the affected area to ease the pain and reduce the swelling.
Do not feed your dog. Anaesthetic or sedation may be required, these procedures are safer if your dog has not been fed.
Try to keep your dog warm, quiet and calm.",
"Lameness can be caused by bone, muscle, tendon, ligament, nerve or brain damage, as well as skin and pad lesions, and in some cases it can be hard to tell what the cause is.
Your vet will probably need to examine your dog and may need to carry out further tests such as X-rays to determine the cause and the best treatment options.
Significant or severe pain suggests a more serious problem, such as a fracture or ligament rupture, requiring immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 160
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only
Do not feed your dog for 8 hours before the appointment until you have asked your vet practice if it is ok to do so. Make sure water is available at all times",
"Lameness can be caused by bone, muscle, tendon, ligament, nerve or brain damage, as well as skin and pad lesions, and in some cases it can be hard to tell what the cause is.
Your vet will probably need to examine your dog and may need to carry out further tests such as X-rays to determine the cause and the best treatment options.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 161
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to prevent movement of your dog as much as possible.
You can try to hold an ice pack in a towel gently on to the affected area to ease the pain and reduce the swelling.
Do not feed your dog. Anaesthetic or sedation may be required, these procedures are safer if your dog has not been fed.
Try to keep your dog warm, quiet and calm.",
"Lameness can be caused by bone, muscle, tendon, ligament, nerve or brain damage, as well as skin and pad lesions, and in some cases it can be hard to tell what the cause is.
Your vet will probably need to examine your dog and may need to carry out further tests such as X-rays to determine the cause and the best treatment options.
Being unable to weight bear suggests a more serious problem, such as a fracture, requiring urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 162
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Keep a close eye on your dog for the next few days but with luck there should be no further problems.
There is no need to take your dog to the vets at the moment.
Keep your dog rested for 24 hours.",
"Keep a close eye on your dog for the next few days but with luck there should be no further problems.
There is no need to take your dog to the vets at the moment.
Keep your dog rested for 24 hours.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 163
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to prevent movement of your dog as much as possible.
You can try to hold an ice pack in a towel gently on to the affected area to ease the pain and reduce the swelling.
Do not feed your dog. Anaesthetic or sedation may be required, these procedures are safer if your dog has not been fed.
Try to keep your dog warm, quiet and calm.",
"Lameness can be caused by bone, muscle, tendon, ligament, nerve or brain damage, as well as skin and pad lesions, and in some cases it can be hard to tell what the cause is.
Your vet will probably need to examine your dog and may need to carry out further tests such as X-rays to determine the cause and the best treatment options.
Significant or severe pain suggests a more serious problem, such as a fracture or ligament rupture, requiring immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 164
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to prevent movement of your dog as much as possible.
You can try to hold an ice pack in a towel gently on to the affected area to ease the pain and reduce the swelling.
Do not feed your dog. Anaesthetic or sedation may be required, these procedures are safer if your dog has not been fed.
Try to keep your dog warm, quiet and calm.",
"Lameness can be caused by bone, muscle, tendon, ligament, nerve or brain damage, as well as skin and pad lesions, and in some cases it can be hard to tell what the cause is.
Your vet will probably need to examine your dog and may need to carry out further tests such as X-rays to determine the cause and the best treatment options.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 165
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to prevent movement of your dog as much as possible.
You can try to hold an ice pack in a towel gently on to the affected area to ease the pain and reduce the swelling.
Do not feed your dog. Anaesthetic or sedation may be required, these procedures are safer if your dog has not been fed.
Try to keep your dog warm, quiet and calm.",
"Lameness can be caused by bone, muscle, tendon, ligament, nerve or brain damage, as well as skin and pad lesions, and in some cases it can be hard to tell what the cause is.
Your vet will probably need to examine your dog and may need to carry out further tests such as X-rays to determine the cause and the best treatment options.
Inability to weight bear suggests a serious issue like a fracture, and requires urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 166
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, fractures, hernias, abscesses, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.
However, if your dog is distressed or in pain, this requires urgent attention, whatever the cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 167
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, fractures, hernias, abscesses, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.
A swelling along with your dog being off colour or ill in themself, however, suggests a potentially more serious cause requiring immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 168
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, fractures, hernias, abscesses, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.
A hot or painful swelling typically suggests an infection or abscess, so seek veterinary attention at this point.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 169
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including bruises or strains and fractured.
There may also be more serious internal injuries, so seek immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 170
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Snake bites, particularly from rattlesnakes, are not uncommon in the U.S., and lead to severe local swelling.
In more severe cases, however, death of tissue, kidney failure, and even suffocation (if the bite is near the nose or neck) can occur, so seek urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 171
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Dogs will usually recover from stings without any treatment but sometimes they can have allergic reactions.
If you can see the sting pull it out whole.
Keep a close eye on your dog if shows any signs of having distress or difficulty breathing contact your vet immediately.
If your dog has had an allergic reaction to a sting in the past contact your vet immediately.
If the swelling is excessive contact your vet immediately.",
"Insect stings and bites frequently result in mild/moderate local swelling.
As long as your dog is not distressed, and the swelling does not impede breathing, it is likely to resolve on its own in 12-24 hours.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 172
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump or run.
Do not feed your dog for 8 hours before the appointment until your vet practice has told you it is ok to do so. Make sure water is available at all times
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, fractures, abscesses, hernias, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 173
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"It is possible that the lump is a hernia; while these can be harmless, in some cases, internal organs can become trapped, causing serious illness.
As the other symptoms suggest that this might be happening now, seek urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 174
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump or run.
Do not feed your dog for 8 hours before the appointment until your vet practice has told you it is ok to do so. Make sure water is available at all times
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, fractures, abscesses, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.
In this case, it is possible that the lump is a hernia; while these can be harmless, in some cases, internal organs can become trapped, causing serious illness if not treated appropriately. While this has not yet happened, keep a close eye on your dog for signs of any problems, such as pain or vomiting.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 175
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"This may be a rectal prolapse, which requires urgent veterinary attention to repair. Immediately contact your vet for advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 176
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, hernias, abscesses, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 177
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump or run.
Do not feed your dog for 8 hours before the appointment until your vet practice has told you it is ok to do so. Make sure water is available at all times
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, fractures, hernias, abscesses, swollen lymph glands due to infection, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 178
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump or run.
Do not feed your dog for 8 hours before the appointment until your vet practice has told you it is ok to do so. Make sure water is available at all times
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, fractures, hernias, abscesses, and of course tumours.
Swellings of the ear are most commonly due to a \"blood blister\" inside the ear flap, often due to an ear disease.
Your vet may need to examine your dog carefully to determine the exact cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 179
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Swellings on or around the eye may indicate infection, injury, or even tumours, of the eye or eyelid.
Eyes are delicate, so seek immediate veterinary assistance.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 180
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, fractures, hernias, abscesses, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.
Any swelling around the head or neck is potentially dangerous as it can obstruct the airway, so seek veterinary advice immediately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 181
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Hot, swollen and/or sore mammary glands suggest mastitis, an infection. This needs immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 182
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump or run.
Do not feed your dog for 8 hours before the appointment until your vet practice has told you it is ok to do so. Make sure water is available at all times
Do not allow your dog to lick at or scratch the lump or swelling.",
"Mammary lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, mastitis, and of course tumours.
Your vet will need to examine your dog carefully to determine the exact cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 183
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"If you have any other concerns about your female dog contact your vet.
Inform your vet practice that your female dog is pregnant, they will be able to give you important advice and may want to check her over.",
"It is normal for the mammary gland to be swollen during pregnancy.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 184
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump or run.
Do not feed your dog for 8 hours before the appointment until your vet practice has told you it is okay to do so. Make sure water is available at all times.
Do not allow your dog to lick at or scratch the lump or swelling.",
"While it is normal for the mammary glands to be enlarged in pregnancy, especially late pregnancy, lumpy swelling may indicate early mastitis, or even a mammary tumour, so it is best to get it checked out by your vet.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 185
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump or run.
Do not feed your dog for 8 hours before the appointment or until your vet practice has told you it is okay to do so.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, fractures, hernias, abscesses, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 186
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at the area.
If possible, strap the penis to the stomach using a clean, damp sheet.",
"The normal erections that healthy male dogs (entire or neutered) do not usually last this long.
Other possible causes include priaprism or paraphimosis, where the penis becomes trapped outside the body. Without treatment this can lead to severe tissue damage, so seek urgent veterinary assistance.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 187
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at the area.
If possible, strap the penis to the stomach using a clean, damp sheet.",
"Damage to the mucosa (i.e., the red skin on the outside) of the penis can cause bleeding, and is commonly due to infection, trauma, or the penis becoming trapped outside the body (i.e., paraphimosis or priaprism). It may also be due to a type of tumour called a \"transmissible venereal tumour\".
If untreated, these conditions can all lead to serious tissue damage, so urgent veterinary attention is required.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 188
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at the area.
If possible, strap the penis to the stomach using a clean, damp sheet.",
"Normal erections would be expected to subside by now; however, some conditions, such as paraphimosis or priaprism, may lead to abnormally prolonged erections that can cause severe tissue damage without treatment, so immediately contact your vet for advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 189
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Continue to monitor over the next few days. There is no need to take your dog to the vets if this doesn't happen again.",
"Male dogs, even if neutered, do become excited sometimes and develop erections. It is normally nothing to worry about in terms of their health.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 190
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, fractures, hernias, abscesses, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.
Lumps in multiple sites suggest a more serious or generalized condition, so seek immediate veterinary advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 191
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"This may be a vaginal prolapse; if so, your female dog will need urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 192
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not feed your dog for 8h before the appointment until you have checked with your vet practice that it is ok to do so.
Restrict exercise, lead walk to the toilet only.
Do not allow your dog to lick at or scratch the lump or swelling.
If you can not stop your dog from licking or scratching at the lump or swelling contact your vet for advice.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, hernias, abscesses, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 193
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"If the swelling has not reduced in few weeks, contact your vet for further advice.
If the skin becomes sore contact your vet for advice.",
"This is a normal finding and a good way of telling if your female dog is in season.
If you notice any other symptoms that you do not expect, contact your vet for advice.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 194
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not feed your dog for 8h before the appointment unless you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run.
Do not allow your dog to lick at or scratch the lump or swelling.",
"Lumps and swellings have a wide range of causes, including insects stings or bites, bruises or strains, hernias, abscesses, and of course tumours.
Your vet may need to examine your dog carefully to determine the exact cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 195
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump or run.
Do not feed your dog for 8 hours before the appointment until your vet practice has told you it is ok to do so.",
"Swelling of the abdomen or stomach may be a sign of a torsion (gastric dilation and volvulus); this is a life threatening condition that needs emergency treatment, so seek urgent veterinary assistance.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 196
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog anything to eat or drink unless you have been advised by your surgery that it is safe to do so.",
"Dullness and lethargy can be signs of serious illness, which may or may not be related to the moulting problem. Your dog should have an examination to find the cause and decide the right treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 197
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog anything to eat or drink unless you have been advised by your surgery that it is safe to do so.",
"The cause of the pain needs to be found and treated. It may be related to the moulting, or it may be a separate problem.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 198
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching or itching itself, as it may cause further damage.
Using a pet t-shirt or Elizabethan Collar (i.e., pet cone) may help.",
"The cause of the moulting and the itchiness needs to be investigated to give the right treatment.
Your vet will be able to prescribe medications to ease the itching and prevent further damage.
Possible causes include parasites such as fleas or mites, bacterial or fungal infection or allergic skin disease.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 199
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Try to distract your dog from scratching or itching itself, as it may cause further damage.",
"The cause of the moulting and the itchiness needs to be investigated to give the right treatment.
Scratching is distressing and can lead to skin damage, weight loss, and bad temper.
Possible causes include parasites, such as fleas or mites, bacterial or fungal infection, or allergic skin disease.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 200
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to give your vet as much information as possible about how long your dog has been drinking more than usual, when the skin changes started, and when last in season (if your dog is an unspayed female).
Try to prevent your dog from licking or scratching at the sore patches.
A pet t-shirt or Elizabethan Collar (i.e., pet cone) may help.",
"A dog drinking more than usual should always be examined because this can be a sign of serious illnesses, such as diabetes, hormonal problems, kidney or liver problems, or womb infection.
Some of these illnesses may also cause skin and coat changes.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 201
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Prevent your dog from licking or scratching at the sore patches.
Using a pet t-shirt or an Elizabethan Collar (i.e., pet cone) may help.",
"Because there are other skin symptoms as well as moulting, your dog should be examined to find the cause of the problem.
Possible causes include parasites, such as fleas or mites, bacterial or fungal infection, or allergic skin disease.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 202
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to give your vet as much information as possible about how long your dog has been drinking more than usual, when the skin changes started, and when last in season (if your dog is an unspayed female)",
"A dog drinking more than usual should always be examined because this can be a sign of serious illnesses, such as diabetes, hormonal problems, kidney or liver problems, or pyometra (i.e., womb infection).
Some of these illnesses may also cause skin and coat changes.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 203
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Prevent your dog from licking or scratching at the bald patches.
Using a pet t-shirt or an Elizabethan Collar (i.e., pet cone) may help.",
"The cause of the bald patches should be investigated. In a normal moult the hair loss should be balanced by new hair growth with no baldness.
Possible causes include parasites, such as fleas or mites, bacterial or fungal infection, or allergic skin disease.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 204
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to give your vet as much information as possible about how long your dog has been drinking more than usual, when the skin changes started, and when last in season (if your dog is an unspayed female)",
"A dog drinking more than usual should always be examined because this can be a sign of serious illnesses, such as diabetes, hormonal problems, kidney or liver problems, or pyometra (i.e., womb infection).
Some of these illnesses may also cause skin and coat changes.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 205
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Remove excess hair by brushing once or twice daily. Avoid brushing too vigorously because this can make the coat scurfy (i.e., covered with dandruff) but will not speed up the moulting process.",
"If your dog remains healthy, and there are no other skin symptoms, this is probably a normal moult.
In some dogs, moulting is not related to the seasons, possibly because people keep our homes heated all year round.
If your dog's coat is matted or tangled, dead hair becomes difficult to remove, exacerbating shedding issues. To alleviate discomfort, consider having your dog professionally groomed or clipped.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 206
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Nails can be clipped at home if you have suitable clippers, and your dog is co-operative.
White nails are easier to clip than dark colored nails. With white nails, you can see the \"quick\", the pink part inside. This contains nerves and blood vessels. If cut too close, the nail will bleed and it will be painful.
If in doubt, trim a small amount frequently. Avoid any twisting action when clipping.
If you prefer, ask your vet, vet nurse, or groomer to clip your dog's nails or to show you how, and then do them at home when you feel confident.
If you accidentally make a nail bleed, apply firm pressure for several minutes. If bleeding is not stopping, call your vet for advice.",
"Overgrown or sharp nails can be caused by exercising on soft ground. Regular walking on pavements can help to wear down nails.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 207
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If your dog is in a lot of pain, call your vet for advice. It is possible that the injury is more serious than is obvious.
Try to prevent your dog from licking the injured nail as this may do further damage.",
"The nail may be infected; there may be a foreign body embedded under it; or the toe may be broken.
In any case, this needs immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 208
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"If the broken nail is not bleeding and is not painful, keep it clean and observe closely. Warm salty water is a good cleaning fluid.
A light bandage can safeguard the nail during healing, but it must not be wrapped too tightly.",
"Broken nails may become infected, like any other wound, so watch for signs of pain, swelling, discharge, or excessive licking. Call your vet for advice if any of these occur. If the nail becomes infected or painful, it will need immediate veterinary treatment.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 209
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If your dog is in a lot of pain, call your vet for advice. It is possible that the injury is more serious than is obvious.
Try to prevent your dog from licking the injured nail as this may do further damage.",
"The nail may be infected; there may be a foreign body embedded under it; or the toe may be broken.
In any case, this needs immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 210
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"If the broken nail is not bleeding and is not painful, keep it clean and observe closely. Warm salty water is a good cleaning fluid.
A light bandage can safeguard the nail during healing, but it must not be wrapped too tightly.",
"Broken nails may become infected, like any other wound, so watch for signs of pain, swelling, discharge, or excessive licking. Call your vet for advice if any of these occur. If the nail becomes infected or painful, it will need immediate veterinary treatment.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 211
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If possible, wrap the nail with a bandage to manage bleeding until you reach the vet. Use a clean cotton handkerchief, pillowcase, or dish towel for the bandage, but ensure it's not tied too tightly to avoid restricting blood flow to the foot. 
Avoid feeding your dog before visiting the vet, as sedation or anesthesia may be necessary.",
"Bleeding which you are unable to stop with firm pressure for several minutes will need to be treated.
Your vet may need to cauterise the end of the nail, with chemicals or heat, to stop the bleeding.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 212
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If your dog is in a lot of pain, call your vet for advice. It is possible that the injury is more serious than is obvious.
Try to prevent your dog from licking the injured nail as this may do further damage.",
"The nail may be infected; there may be a foreign body embedded under it; or the toe may be broken.
In any case, this needs immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 213
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"If the broken nail is not bleeding and is not painful, keep it clean and observe closely. Warm salty water is a good cleaning fluid.
A light bandage can safeguard the nail during healing, but it must not be wrapped too tightly.",
"Broken nails may become infected, like any other wound, so watch for signs of pain, swelling, discharge, or excessive licking. Call your vet for advice if any of these occur. If the nail becomes infected or painful, it will need immediate veterinary treatment.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 214
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"If your dog is in a lot of pain, call your vet for advice. It is possible that the injury is more serious than is obvious.
Try to prevent your dog from licking the injured nail as this may do further damage.",
"While a broken nail is usually uncomfortable, severe pain suggests that it may be pinching; the nail may be infected; there may be a foreign body embedded under it; or the toe may be broken.
In any case, this needs immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 215
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"If the broken nail is not bleeding and is not painful, keep it clean and observe closely. Warm salty water is a good cleaning fluid.
A light bandage can safeguard the nail during healing, but it must not be wrapped too tightly.",
"Broken nails may become infected, like any other wound, so watch for signs of pain, swelling, discharge, or excessive licking. Call your vet for advice if any of these occur. If the nail becomes infected or painful, it will need immediate veterinary treatment.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 216
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
NULL,
"This can be a sign of other illnesses, and your dog should have a full health check.
Try to give your vet as much information as possible about how long the nails have been like they are.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 217
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Bathe the foot or toe in warm, salty water if your dog will allow this. Try to prevent licking.
If any kind of bandage is used, it must not be applied tightly around the leg.",
"Infection in the nail bed is very common and is often caused by a very small injury, sometimes made worse by licking due to pain.
Occasionally, these symptoms may be due to immune diseases, but this is rare.
Your dog may need antibiotics to treat this problem. If it is very painful, your vet might give painkillers or anti-inflammatories.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 218
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Dew claws are like a thumb, situated on the inside of the leg but a little higher up. They do not normally come into contact with the ground.
Dew claws can occur on both front and back legs, or sometimes on only one back leg. Sometimes back dew claws can be double claws, which may have small pads attached to them.
In some breeds, it is traditional to keep the dew claws. In others, they may be removed soon after birth, leaving only a tiny scar or bump at the site.
Dew claws which are not prone to injury may still need to be clipped more often than other claws because they do not wear down naturally.",
"If dew claws cause a problem because they get injured frequently, they can be surgically removed under anaesthetic. Your vet will explain all the advantages and disadvantages of this operation.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 219
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"A regular exercise routine and a healthy diet will maintain the good condition of most dogs' nails. If needed, trim them frequently but in small amounts, or opt to have them trimmed at your vet's office or a grooming salon.
If you have any other concerns about your dogs nails, ask for advice at your veterinary surgery.",
NULL,
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 220
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.",
"Loss of appetite is a common symptom, and can be due to a wide range of problems, including stomach upsets, infections, hormonal problems, pain, and tumours.
Your vet will have to examine your dog carefully and may need to carry out additional tests to determine the cause.
If your dog is showing other symptoms, it needs urgent veterinary attention, as some of these conditions are very serious.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 221
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.",
"Loss of appetite is a common symptom, and can be due to a wide range of problems, including stomach upsets, infections, hormonal problems, pain, and tumours.
Your vet will have to examine your dog carefully and may need to carry out additional tests to determine the cause.
If your dog is showing other symptoms, they need urgent attention, as some of these conditions are very serious.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 222
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.",
"Loss of appetite is a common symptom, and can be due to a wide range of problems, including stomach upsets, infections, hormonal problems, pain, and tumours.
Changes in drinking suggest that these conditions are more likely, so your dog needs urgent veterinary attention, as some of these conditions are very serious.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 223
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.",
"Loss of appetite is a common symptom, and can be due to a wide range of problems, including stomach upsets, infections, hormonal problems, pain, and tumours.
Your vet will have to examine your dog carefully and may need to carry out additional tests to determine the cause.
The \"skin pinch test\" suggests your dog may be clinically dehydrated, so it needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 224
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Attempt to identify any potential exposures your dog may have had, so you can inform your vet about the possible cause of the issue.",
"Many poisons cause stomach pain and nausea, resulting in a loss of appetite.
Some of these are very dangerous and potentially fatal without rapid treatment, so seek urgent veterinary assistance.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 225
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, calm, and quiet.",
"Loss of appetite is a common symptom, and can be due to a wide range of problems, including stomach upsets, infections, hormonal problems, pain, and tumours.
Your vet will have to examine your dog carefully and may need to carry out additional tests to determine the cause.
If your dog is showing other symptoms, it needs immediate veterinary attention, as some of these conditions are very serious.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 226
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep your dog warm, quiet and calm. Restrict exercise , keep in one room if possible.
Offer some tasty food that has been warmed slightly.
Try hand feeding some food.",
"Loss of appetite is a common symptom, and can be due to a wide range of problems, including stomach upsets, infections, hormonal problems, pain, and tumours.
Your vet will have to examine your dog carefully and may need to carry out additional tests to determine the cause.
If your dog shows any other symptoms, it may need urgent attention, as some of these conditions are very serious.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 227
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, calm, and quiet.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored, especially if your dog is in pain or distress.
Your vet will need to examine your dog carefully and may need to do further tests to determine the cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 228
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, calm, and quiet.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored.
If your dog is not responding normally to you, this might be a sign of a more serious illness.
Your vet will need to examine your dog carefully and may need to do further tests to determine the cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 229
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet, and calm.
Try to estimate how much your dog is drinking in a day and tell the vet.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored.
Drinking more may suggest infection (e.g., a pyometra, or womb infection), hormone disorders, or dehydration, all of which are potentially life-threatening if untreated.
Your vet will need to examine your dog carefully and may need to do further tests to determine the cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 230
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet, and calm.
Attempt to identify any potential exposures your dog may have had so you can inform your vet about the possible cause of the issue.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored.
Many poisons cause initially vague symptoms, so seek veterinary advice as soon as possible to maximise the chances of successful treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 231
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet, and calm.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored.
Difficulty breathing is a potentially life-threatening situation, so seek urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 232
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet, and calm.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored.
Following injury, hypothermia, or overheating, a wide range of body systems may be affected, resulting in organ damage and/or internal bleeding; as a result, your dog should be checked out by your vet as soon as possible.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 233
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet, and calm.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored.
A decrease in stamina, along with symptoms like coughing or collapsing, may indicate an issue with the heart or lungs.
Your vet will need to examine your dog carefully and may need to do further tests to determine the cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 234
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet, and calm.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored.
Abnormal behaviour suggests a problem in the brain or balance organs, but metabolic problems or poisoning are also possible.
Your vet will need to examine your dog carefully and may need to do further tests to determine the cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 235
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet, and calm.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored.
Distension of the abdomen may suggest a torsion (gastric dilation and volvulus), which is a life threatening emergency; it can also be due to heart or liver disease, among other problems.
Seek veterinary attention immediately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 236
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep your dog warm, quiet, and calm.
Limit your dog's physical activity to short, leashed walks for bathroom breaks only.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored.
Your vet will need to examine your dog carefully and may need to do further tests to determine the cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 237
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet, and calm.",
"Being \"off-color\" is a non-specific symptom of illness, but should not be ignored.
Your vet will need to examine your dog carefully and may need to do further tests to determine the cause.
If the skin at the scruff of the neck forms a 'tent' and does not quickly return to its original position, this may indicate severe dehydration.
In some conditions, severe dehydration can occur even when a dog is drinking a lot.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 238
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Contact your vet immediately - your dog will probably need urgent treatment even if they seem fine now.
Remember, your vet will want to know some details about your dog (how old and heavy it is, does he/she have any underlying health issues, etc.), as well as full details of what and how much he/she has eaten.
Keep your dog warm, quiet, and calm.
Do not offer food unless your vet says it is okay.",
"Aspirin is the active ingredient in some over-the-counter painkilling tablets and gels
Aspirin damages the systems that maintain the stomach and gut lining, and kidney function.
The onset of symptoms is usually in 8-12 hours; the first signs are normally vomiting and diarrhoea (possibly with blood). In the long run, there may be kidney failure or liver damage.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 239
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Contact your vet immediately - your dog will probably need urgent treatment even if they seem fine now.
Remember, your vet will want to know some details about your dog (how old and heavy it is, does he/she have any underlying health issues, etc.), as well as full details of what and how much he/she has eaten.
Keep your dog warm, quiet, and calm.
Do not offer food unless your vet says it is okay.",
"Azaleas, also known as Rhododendrons, are hardy evergreen shrubs, widely planted in gardens.
All parts of the plant contain toxic substances, primarily grayanotoxins. These act on the sodium channels in cell membranes leading rapid-onset to toxic effects.
Symptoms may arise in as little as 20 minutes, although 1-2 hours is more common. 
Symptoms of poisoning typically include gastrointestinal signs (excessive salivation, vomiting and diarrhoea, abdominal tenderness), neuromuscular problems (trembling, wobbliness, lethargy, muscle weakness, collapse) and heart issues (slow, weak heartbeat). 
Signs may persist for several days before recovery or, less commonly, death due to respiratory paralysis.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 240
("Your vet may give you telephone advice or may ask to see you.
Always call your vet before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
NULL,
"The main component in baby oil is mineral oil, a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, abnormal behavior can be a sign of medical problems and should always be checked out by your vet.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 241
("Your vet may give you telephone advice or may ask to see you.
Always call your vet before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
NULL,
"The main component in baby oil is mineral oil, a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, abnormal behavior can be a sign of medical problems and should always be checked out by your vet.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 242
("Your vet may give you telephone advice or may ask to see you.
Always call your vet before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Although baby oil is normally harmless, if your dog is in pain it may require urgent treatment.",
"The main component in baby oil is mineral oil, a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.",
3);

#------------------------------------------------------------------------------------------------------------------------------------------ BELOW WRONG

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 243
("Your vet may give you telephone advice or may ask to see you.
Always call your vet before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
NULL,
"The main component in baby oil is mineral oil, a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, abnormal behavior can be a sign of medical problems and should always be checked out by your vet.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 244
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"The main component in baby oil is mineral oil, a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, blood in the vomit can be a sign of serious illness.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 245
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"The main component in baby oil is mineral oil, a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Bleach and other caustic substances, however, can seriously injure the gut and may be life-threatening.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 246
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"The main component in baby oil is mineral oil, a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, drinking more than usual and vomiting can be a sign of serious illness.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 247
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"The main component in baby oil is mineral oil, a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, drinking more than usual and vomiting can be a sign of serious illness.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 248
("If it is day time contact your vet now. If it is the evening, and there is no change in your pet's condition, it is probably safe to wait until the morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Although baby oil is normally harmless, since your dog has been sick it is worth getting him checked over by a vet.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"The main component in baby oil is mineral oil, a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 249
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.",
"Your dog is likely to be fine, but keep a very close eye on your dog and call your vet if you are concerned or you see any other symptoms.",
"The main component in baby oil is mineral oil, a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except it can have a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 250
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre eg boiled white rice and white fish poached in water).
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"The main component in baby oil is mineral oil a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, bloody diarrhoea can be a sign of serious illness.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 251
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre eg boiled white rice and white fish poached in water).
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"The main component in baby oil is mineral oil a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, watery diarrhoea can be a sign of serious illness, and may lead to serious dehydration.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 252
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre eg boiled white rice and white fish poached in water).
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"The main component in baby oil is mineral oil a tasteless, colourless liquid; usually with added perfumes
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
The straining may not be related to the baby oil - other possible causes include foreign bodies or colitis.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 253
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.",
"The main component in baby oil is mineral oil a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, a swollen abdomen can be a sign of serious illness.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 254
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are ill they may accidentally bite or scratch.",
"Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre eg boiled white rice and white fish poached in water).
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"The main component in baby oil is mineral oil a tasteless, colourless liquid; usually with added perfumes.
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, eating inappropriate objects can be dangerous.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 255
("If it is day time contact your vet now. If it is the evening, and there is no change in your pet's condition, it is probably safe to wait until the morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre eg boiled white rice and white fish poached in water).
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"The main component in baby oil is mineral oil a tasteless, colourless liquid; usually with added perfumes.
Poisoning is very rare, the only likely symptom is mild diarrhoea.
Although baby oil is normally harmless, drinking more than usual can be a sign of serious illness.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 256
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Although baby oil is normally harmless, diarrhoea can be a sign of another illness.
Make sure that your dog has access to fresh water.
Electrolyte solution (available from your vet) can be used to keep your dog hydrated.
Feed bland food (low in fat and fibre eg boiled white rice and white fish poached in water).
Feed little and often.
Restrict exercise.
Keep your dog warm, quiet and calm.",
"The main component in baby oil is mineral oil a tasteless, colourless liquid; usually with added perfumes
Baby oil is usually non-toxic except a mild laxative effect.
Poisoning is very rare, the only likely symptom is mild diarrhoea.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 257
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump, go upstairs, or move unnecessarily.",
"Post operative pain should be well controlled; if it is not, contact your vet immediately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 258
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump, go upstairs or move unnecessarily.",
"While dogs may be a bit sleepy after surgery, they should still be moving around and responsive. If not, contact your vet for advice immediately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 259
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump, go upstairs or move unnecessarily.
If it is safe to do so apply some gentle pressure to the wound with a clean towel.",
"Opening of the wound with bleeding may be due to complete failure of the stitches, or infection within the wound.
The most common cause is dogs licking or chewing at their wounds, or other dogs in the household \"helping\" to try and clean the site. In either case, it needs immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 260
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump, go upstairs or move unnecessarily.
If it is safe to do so apply some gentle pressure to the wound with a clean towel.",
"Opening of the wound with bleeding may be due to complete failure of the stitches, or infection within the wound.
The most common cause is dogs licking or chewing at their wounds, or other dogs in the household \"helping\" to try and clean the site. In either case, seek veterinary advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 261
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump, go upstairs or move unnecessarily.
If possible wrap a clean towel or sheet around the affected area on the way to the surgery.",
"The wound needs to be held closed if it is to heal properly; if they have failed your dog needs urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 262
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump, go upstairs or move unnecessarily.
If possible, wrap a clean towel or sheet around the affected area on the way to the surgery.",
"Stitches are necessary to hold the skin together while it heals; they are most important for the first 7 days.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 263
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"If the skin edges come apart (ie you can see reddish tissue) contact your vet for advice.
Try to keep your dog warm, quiet and calm.
Do not allow your dog to lick or scratch at the wound.
If you can not stop your dog from licking or scratching at the wound contact your vet immediately.",
"The stitches are needed to hold the wound together while it heals; after the first 7 days, they are less important but still need checking.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 264
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump, go upstairs or move unnecessarily.
If possible, wrap a clean towel or sheet around the affected area on the way to the surgery.",
"Significant swelling is commonly due to inflammation, infection, or a seroma (i.e., fluid building up under the skin).",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 265
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to jump, go upstairs, or move unnecessarily.",
"The presence of swelling and other symptoms suggests that there might be infection in the wound or other surgical complications; seek veterinary advice immediately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 266
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet, and calm.
Use a t-shirt around the wound and socks on the feet to prevent your dog from licking or scratching at the wound.
If you can not stop your dog from licking or scratching at the wound, contact your vet immediately.",
"Although swelling may be due to infection of the wound, it can also be part of the healing process.
Your vet will likely want to examine it, but if your dog is otherwise in good health, it's not considered an emergency.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 267
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"It is quite common for dogs to try to lick or chew at their surgical wound.
It is vital to not let them do this.
\"Buster\" or \"Elizabethan\" collars provided by your vet are an excellent way to prevent licking for most wound sites. Dogs may resent them to start off with but quickly grow used to them.
Dogs can sleep and usually eat whilst wearing a buster collar.
If you can't stop your dog from licking at its wound contact your vet.",
"The bacteria and other bugs on your dogs tongue and feet can cause wound infections.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 268
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet, and calm.
Do not allow your dog to jump, go upstairs, or move unnecessarily.",
"There are a range of possible problems after surgery, so contact your vet for advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 269
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Keep a close eye on your dog; if there are any further problems, contact your vet.",
"It is common for dogs to be a bit quieter than normal for a few days after surgery.
They should be happy to move around the room normally and should be bright and responsive.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 270
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"A little flatulence is a normal by-product of digestion. Excessive flatulence may be difficult to live with, although it seldom worries dogs.
The problem may well be dietary in origin, so it is worth trying a few simple changes first.
Ask your vet to recommend a good quality, simple diet with very few components, which your dog will like. Feed this with no extras of any kind, and just water to drink. (For treats you can use a little of the mixer or kibble part of the chosen diet.) It may take several weeks to notice an improvement.
If the flatulence has improved, either stick to this diet permanently, or try adding other foods in very gradually. Wait a few weeks in between each added foodstuff. If the flatulence returns, remove the new foodstuff from the diet.
If the flatulence does not improve, you can repeat the whole process with a different, more bland diet, making the changeover gradually.
Alternatively, ask for advice at your surgery about diets which are specially formulated to help with digestive problems.",
NULL,
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 271
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Diarrhoea tends to be caused by dietary issues, gut infections, or other diseases of the bowel. However, straining or pain may also indicate colitis, or a foreign body in the rectum.
Veterinary examination and treatment are likely to be required.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 272
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of diarrhoea can affect humans.",
"Watery or bloody diarrhoea tend to be caused by more severe gut infections, or other diseases of the bowel.
Dehydration can occur rapidly in these conditions, and may even be life-threatening in some cases.
Veterinary examination and treatment are likely to be required.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 273
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Select the \"Diarrhoea\" symptom and answer the subsequent questions for further information.",
NULL,
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 274
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not attempt to remove or replace the lump which is sticking out because it must be identified first before deciding how to treat it.
Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet or nurse that it is ok to do so.
Do not allow your dog to lick at or scratch the lump or swelling. If necessary, protect by holding a non-adhesive dressing over the anus until your dog is seen by the vet.",
"A swelling coming out through the anus may be a prolapse of the wall of the bowel, which would require urgent treatment. The delicate lining of the bowel will be damaged if exposed to the air for any length of time.
Other possible causes include a growth like a polyp or a tumour growing inside the rectum, or a foreign body which the dog is having difficulty passing.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 275
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not offer your dog anything else to eat or drink before going to the surgery unless advised that it is okay to do so.",
"If your dog is not bright and alert, or is not eating, they need to be examined to find out why.
Infected lumps could cause a smell and make your dog unwell or in pain, but the cause could be unrelated to the lumps.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 276
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Do not allow your dog to jump or run. Do not allow your dog to lick at or scratch the lump or swelling.",
"A painful lump might be an infected anal gland, or an anal abscess.
Other possibilities include infected growths around the anus, or an anal fistula.
All of these conditions require veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 277
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
NULL,
"The lumps should be examined if they are causing a smell to find out what treatment would be best.
Possible causes include small skin tumours called adenomas, polyps, wounds, or full anal sacs (anal glands).",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 278
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
NULL,
"The lumps should be examined if they are causing a smell to find out what treatment would be best.
Possible causes include small skin tumours called adenomas, polyps, wounds, or full anal sacs (anal glands).",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 279
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
NULL,
"The most likely cause of these signs is overfull or infected anal sacs (anal glands), although any irritation in this area can cause the same reaction. Your vet may want to make a rectal examination to see if this is the cause of the problem.
Dogs have a pair of scent glands either side of the anus, which are used for territory marking. If the sac does not empty normally, it becomes overfull and unable to empty (impacted).
Impacted anal sacs easily become infected, causing a painful abscess which may burst.
The anal sacs may need regular emptying and infection may need antibiotic treatment. Occasionally dogs have these glands surgically removed if the problem occurs frequently.
Anal gland problems may be reduced by feeding a fibre-rich diet (eg by adding bran) to keep the stool firm. This helps normal emptying of the sacs.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 280
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog calm, quiet and warm.",
"Continuous bleeding from the rectum needs to be urgently investigated and treated.
Possible causes include a polyp or growth inside the bowel, damage due to a sharp object being passed (eg a stick or bone) or severe inflammation of the bowel or a blood disorder.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 281
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog calm, quiet and warm.",
"Occasional bleeding from the rectum needs to be investigated, especially when combined with an unpleasant smell.
Possible causes include a polyp or growth inside the bowel, damage due to a sharp object being passed (eg a stick or bone), inflammation of the bowel or a burst anal gland abscess.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 282
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog calm, quiet and warm.",
"Continuous bleeding needs to be urgently investigated and treated.
Possible causes include a blood disorder, polyp or growth inside the bowel, damage due to a sharp object being passed (eg a stick or bone) or severe inflammation of the bowel.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 283
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog calm, quiet and warm.",
"Occasional bleeding from the rectum needs to be investigated, especially when combined with an unpleasant smell.
Possible causes include a polyp or growth inside the bowel, damage due to a sharp object being passed (e.g., a stick or bone), inflammation of the bowel, or a burst anal gland abscess.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 284
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog calm, quiet and warm.",
"Occasional bleeding from the rectum needs to be investigated, especially when combined with an unpleasant smell and the dog being off-color.
Possible causes include a polyp or growth inside the bowel, damage due to a sharp object being passed (e.g., a stick or bone), inflammation of the bowel, or a burst anal gland abscess.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 285
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Clean the area gently with dog shampoo, while wearing gloves, and rinse it well. Check the area after each defecation to see if there is further soiling.",
"A healthy dog will not normally soil itself when defecating, so if the problem happens repeatedly then your dog should have an examination.
The stool may be abnormally soft, or your dog may have difficulty adopting the right posture to defecate because of arthritis, back pain, etc.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 286
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Make sure your dog has free access to clean water unless your vet practice advises you to withdraw it.",
"A discharge or swelling which is combined with an unpleasant smell needs to be investigated.
Possible causes include a womb infection (pyometra) if your bitch is unspayed, or a urinary tract infection or growth.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 287
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not offer your female dog any food or drink before going to the surgery unless you have been advised to do so.",
"Your female dog needs to be examined to find out the cause and treat the problem.
If unspayed (entire), your female dog may be suffering from a womb infection (pyometra) which could need urgent treatment.
Other possible causes include urinary tract infection, bladder stones, or kidney problems.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 288
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Try washing your dog gently with dog shampoo in case they have rolled in something unpleasant.
If the smell persists, or returns quickly, ring your surgery for further advice.",
"The most likely cause that there is dirt or something smelly rubbed into their fur around their back end; this is common in dogs who roll in, for example, fox faeces.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 289
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Make sure your dog has free access to plenty of clean water, unless your vet practice tells you to withdraw it.",
"Possible causes include urinary incontinence or infection. Although more common in females, it can occur in males too.
Your vet will want to investigate the cause before deciding on the best treatment.
Please also follow the Interactive Symptom Guide for the symptom Urinary Problems for further advice.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 290
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not offer your dog any food or drink before going to the surgery unless you have been advised to do so.",
"Your dog needs to be examined to find out the cause and treat the problem.
If you have an unspayed female dog, it may be suffering from a womb infection (pyometra) which could need urgent treatment.
Other possible causes include urinary tract infection, bladder stones or kidney problems.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 291
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Possible causes include an ear infection or a foreign object such as a grass seed in the ear canal.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 292
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Possible causes include an ear infection or a foreign object such as a grass seed stuck in the ear canal.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 293
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Possible causes include an ear infection or a foreign object such as a grass seed stuck in the ear canal.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 294
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Do not try to feed your dog unless your vet practice tells you it is ok to do so.",
"Possible causes include an ear infection or a foreign object such as a grass seed stuck in the ear canal, reduced blood flow to an area of the brain or a tumor.
If the deeper parts of the ear are involved, these problems can affect balance.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 295
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to distract your dog from scratching and shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dog's ear without consulting your vet, if the ear drum is damaged they can cause serious problems.
Stop feeding your dog for 8 hours prior to taking your dogs to the vet, it may be necessary to sedate or anaesthetise your dog, this is safer if your dog has been starved.",
"Possible causes include a burst blood vessel within the ear flap causing a blood blister called a haematoma, which may be as large as the ear flap.
Other causes include damage due to scratching, growths on the ear flap or various skin conditions.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 296
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Do not put any drops down your dogs ear without consulting your vet, if the eardrum is damaged they can cause serious problems.
Stop feeding your dog 8 hours before going to the vet, it may be necessary to sedate or anaesthetise your dog. This is safer if your dog has been starved.",
"The skin inside the ear flap should be pale pink in colour and free from wet or dry crusty discharges.
A discharge combined with a smell may mean that the ear is infected. Your vet will want to treat the infection and any underlying problem which may have caused it.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 297
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Try to distract your dog from scratching or shaking its head.
Put some socks on your dogs feet to stop any self damage.
Do not put any drops down your dogs ear without consulting your vet, if the eardrum is damaged they can cause serious problems.",
"Smelly ears should be investigated, because if left, the problem can become worse and require much more treatment.
Possible causes include bacterial and yeast infections, and potentially underlying factors such as ear mites.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 298
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog calm and quiet.
Do not offer your dog anything to eat or drink before going to the surgery unless you have been advised to do so.
Try to give your vet as much information as you can about other possible symptoms such as appetite, thirst, changes in behaviour, duration of the smell, etc.",
"Whatever the cause of the smell, if your dog is not bright, responding to you, and alert, this suggests an underlying health problem that should be investigated.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 299
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog calm and quiet.
If appropriate, select the symptom Drinking More Than Usual and answer the subsequent questions.",
"Many illnesses can cause dogs to drink more than usual. Some are serious, so the cause needs to be investigated.
Most generalised smells are from dogs with a dirty or smelly coat. All dogs have a natural odour, and in some cases this may be strong enough for us to detect it; this is especially true of older dogs and entire males.
However, the smell may also be the result of dental problems, diet, metabolic diseases (such as diabetes or kidney disease), skin issues, infection, urinary tract disease, or even certain drugs, and so if it does not resolve with cleaning, a check up with your vet is advisable.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 300
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
NULL,
"An offensive smell which is present all the time should be investigated.
Possible causes include teeth/gum problems, skin problems, ear problems, anal gland problems, urine infection or leakage, womb infection in female dogs.
The cause will need to be identified before the most suitable treatment can be given.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 301
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Check the most obvious causes of smell: teeth, gums, skin, discharges from anywhere.
Your vet will want to do a thorough examination of ears, mouth, skin and the back end to establish the cause of the smell.",
"Most generalised smells are from dogs with a dirty or smelly coat. All dogs have a natural odour, and in some cases this may be strong enough for us to detect it; this is especially true of older dogs and entire males.
However, the smell may also be the result of dental problems, diet, metabolic diseases (such as diabetes or kidney disease), skin issues, infection, urinary tract disease, or even certain drugs, and so if it does not resolve with cleaning, a check up with your vet is advisable.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 302
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Regular gentle brushing will help keep your dog's skin and coat healthy.
If your dog has long hair or a thick coat, regular visits to the dog groomer may prevent your dog from smelling excessively.
Dogs should be bathed regularly but not too frequently, every 3 weeks to 3 months is about right.",
"Most generalized smells are from dogs with a dirty or smelly coat. All dogs have a natural odor, and in some cases this may be strong enough for us to detect it; this is especially true of older dogs and entire males.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 303
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Check the most obvious causes of smell: teeth, gums, skin, discharges from anywhere. If any abnormalities of these are found, ask your veterinary surgery for advice.
If nothing abnormal is visible to you, and your dog is otherwise well, try shampooing your dog and washing the bedding. If the smell returns, ask your surgery for advice.",
"Most generalised smells are from dogs with a dirty or smelly coat. All dogs have a natural odour, and in some cases this may be strong enough for us to detect it; this is especially true of older dogs and entire males.
However, the smell may also be the result of dental problems, diet, metabolic diseases (such as diabetes or kidney disease), skin issues, infection, urinary tract disease, or even certain drugs, and so if it does not resolve with cleaning, a check up with your vet is advisable.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 304
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"A mild, intermittent smell may not need any treatment. Check all the most common causes: teeth, gums, skin, ears, discharges from anywhere. If any abnormalities are found, ask your veterinary surgery for advice.
If nothing appears to be abnormal and your dog is otherwise well, try shampooing your dog and washing the bedding. Watch when they go out to see if they are rolling in anything outside, or eating anything they shouldn't.
If the smell persists, contact your veterinary surgeon.",
"Most generalized smells are from dogs with a dirty or smelly coat. All dogs have a natural odour, and in some cases this may be strong enough for us to detect it; this is especially true of older dogs and entire males.
However, the smell may also be the result of dental problems, diet, metabolic diseases (e.g., diabetes or kidney disease), skin issues, infection, urinary tract disease, or even certain drugs, and so if it does not resolve with cleaning, a check up with your vet is advisable.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 305
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog anything to eat or drink unless you have been advised by your surgery to do so.",
"It is possible that your dog is in pain from dental disease; this would also explain the smell.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 306
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog anything to eat or drink unless you have been advised by your surgery that it is safe to do so.",
"Your dog will need to have the cause of the pain investigated and treatment given.
Possible causes include tooth or gum problems, infection, a growth or a foreign object lodged in the mouth.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 307
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog anything to eat or drink unless you have been advised by your surgery that it is safe to do so.",
"This is a sign of pain or irritation which needs to be investigated and treated.
Possible causes include tooth or gum problems, infection, a growth or a foreign object lodged in the mouth.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 308
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog anything to eat or drink unless you have been advised by your surgery that it is safe to do so.",
"Drooling or bleeding from the mouth combined with a smell from the mouth needs to be investigated and treated.
Possible causes include an injury, tooth or gum problems, infection, a growth or a foreign object lodged in the mouth.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 309
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog anything to eat or drink unless you have been advised by your surgery that it is safe to do so.",
"A wound or swelling which is also associated with a bad smell may be infected. This would be painful and require treatment.
Possible causes include injuries, bites, tooth or gum problems, infection, a growth or a foreign object lodged in the mouth.
Abscesses caused by bad teeth may appear anywhere on the upper or lower jaw or below the eyes.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 310
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to keep your dog warm, quiet and calm.
Do not give your dog anything to eat or drink unless you have been advised by your surgery that it is safe to do so.",
"An offensive smell from the mouth which is present all the time needs to be investigated.
Possible causes include tooth or gum problems, infection, a growth or a foreign object lodged in the mouth.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 311
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
NULL,
"Your dog should have a check up to find the reason for the smell from the mouth.
Possible causes include tooth or gum problems, infection, a growth or a foreign object lodged in the mouth.
Be sure to ask your vet about routine dental care and diet, to try to prevent future problems.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 312
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
NULL,
"Your dog should have a check up to find the reason for the smell from the mouth.
Possible causes include tooth or gum problems, infection, a growth or a foreign object lodged in the mouth.
Be sure to ask your vet about routine dental care and diet, to try to prevent future problems.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 313
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Check that you are feeding a suitable diet to your dog. Lots of sweet treats are likely to cause tooth problems as well as other health problems.
Ask your vet or vet nurse about routine preventative dental care, such as tooth brushing, which can reduce or slow down the formation of tartar on teeth.
Check your dog's mouth regularly so that you can spot any changes at an early stage.
If the smell persists or gets worse, ring your surgery for further advice.",
NULL,
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 314
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
NULL,
"Your dog should have a check up to find the reason for the smell from the mouth.
Possible causes include tooth or gum problems, infection, a growth or a foreign object lodged in the mouth.
Be sure to ask your vet about routine dental care and diet, to try to prevent future problems.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 315
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog anything to eat or drink unless advised by your surgery that it is safe to do so.",
"Dullness and depression can be signs of serious illness and should be investigated by your vet.
This may or may not be associated with the smell. All dogs have a natural odour, and in some cases this may be strong enough for us to detect it; this is especially true of older dogs and entire males.
However, smell from the skin or coat may be related to dirt (e.g. faeces or urine) or skin disease, especially yeast infections.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 316
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not offer your dog anything to eat or drink unless advised by your surgery that it is safe to do so.",
"The cause of your dog's pain needs to be found and treated to make your dog comfortable.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 317
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to discourage your dog from scratching; the use of an Elizabethan collar or socks on their feet may help.",
"It is possible your dog is suffering from 'wet excema' which can be painful and distressing for the dog.
Your vet will be able to ease the itching and pain and prevent further damage and spread.
Even small areas of skin where there is pus on the surface need to be treated as these can spread rapidly to become large infected areas.
As well as bacterial infection, other possible causes include parasites such as fleas or mites, allergic skin disease or fungal infection.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 318
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to discourage your dog from scratching; the use of an Elizabethan collar may help, as can putting socks on their feet.",
"Even small areas of skin where there is pus on the surface need to be treated as these can spread rapidly to become large infected areas.
As well as bacterial infection, other possible causes include parasites such as fleas or mites, allergic skin disease or fungal infection.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 319
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and biting at itself.
Put some socks on your dogs feet or put a t-shirt on your dog to stop any self damage whilst you contact your vet practice.",
"Skin diseases, such as fleas, mites and infections (especially yeast infections), can cause your dog's skin to smell more or differently.
Sore or itchy skin can be very distressing. Your vet will be able to prescribe medications to ease the itching and prevent further damage.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 320
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to distract your dog from scratching and biting at itself.
Put some socks on your dogs feet or put a t-shirt on your dog to stop any self damage whilst you contact your vet practice.",
"Skin diseases, such as fleas, mites and infections (especially yeast infections), can cause your dog's skin to smell more or differently.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 321
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Try to distract your dog from scratching and biting at itself.
Put some socks on your dogs feet or put a t-shirt on your dog to stop any self damage whilst you contact your vet practice.",
"The cause of the skin problem needs to be found to stop it from getting worse.
Possible causes include parasites, such as fleas or mites, bacterial or fungal infection, or allergic skin disease.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 322
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Try to distract your dog from scratching and biting at itself.
Put some socks on your dogs feet or put a t-shirt on your dog to stop any self damage whilst you contact your vet practice.",
"The cause of the skin problem needs to be found to stop it from getting worse.
Possible causes include parasites, such as fleas or mites, bacterial or fungal infection, or allergic skin disease.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 323
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
NULL,
"The cause of the skin problem needs to be found to stop it from getting worse.
Possible causes include parasites, such as fleas or mites, bacterial or fungal infection, or allergic skin disease.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 324
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
NULL,
"Several illnesses can affect appetite and thirst and also cause skin changes, so look into this combination of signs.
Try to give your vet as much information as possible about the length of time any changes have been present.
If appropriate, select the symptom Not Eating or Drinking More Than Usual and answer the subsequent questions.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 325
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
NULL,
"Healthy skin should not smell strongly all the time, so your dog should be examined to find the reason.
Possible causes include parasites, such as fleas or mites, bacterial or fungal infection, or allergic skin disease.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 326
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
NULL,
"A smell which is present all the times is unlikely to be just due to rolling in something unpleasant, so your dog should have a check-up.
Possible causes include parasites, such as fleas or mites, bacterial or fungal infection, or allergic skin disease.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 327
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
NULL,
"If your dog goes outside unaccompanied, check that they are not rolling in something unpleasant, such as fox dung, cow dung, or anything fishy washed up on the beach.
If you cannot locate the source of the smell, your dog should have a check-up.
Possible other causes include parasites such as fleas or mites, bacterial or fungal infection or allergic skin disease.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 328
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Try shampooing your dog to see if that is enough to remove the smell.
Use a dog shampoo and rinse off well.
Do not shampoo too frequently or you will cause drying of the coat because of loss of natural oils.
If the smell persists, or if it returns quickly, then your dog should have a check-up.",
"Smell from the skin or coat may be related to dirt (e.g., faeces or urine).
All dogs have a natural odour, and in some cases this may be strong enough for us to detect it; this is especially true of older dogs and entire males.
However, or skin disease, especially yeast infections, can also cause your dog's skin to smell more or differently.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 329
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to scratch at its nose.
Keep your dog warm calm and quiet.",
"Sneezing and pawing at the nose are usually signs of severe nasal irritation, often caused by problems such as a foreign body (e.g., a grass seed) up the nose, an infection, or a growth in the nose.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 330
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not allow your dog to scratch at its nose.
Keep your dog warm calm and quiet.",
"Sneezing suggests some irritation of the nasal chambers.
Difficulty breathing, however, is an emergency that requires urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 331
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to prevent your dog from scratching at its nose.
Put old socks on your dog's feet to prevent any damage to the nose.
Keep your dog warm, calm and quiet.",
"Constant sneezing suggests severe irritation of the nasal passages; this may be due to a foreign body (e.g., grass seed), infection, or a growth.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 332
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Restrict exercise to lead walks to the toilet only.
Keep your dog warm and calm.
If your dog is scratching at its nose, try to put socks on its feet to prevent any damage.",
"Sneezing and nasal discharge suggest severe irritation of the nasal passages; this may be due to a foreign body (e.g., grass seed), infection, or a growth.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 333
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Restrict exercise to lead walks to the toilet only.
Keep your dog warm and calm.
If your dog is scratching at its nose, try to put socks on its feet to prevent any damage.",
"Sneezing suggests irritation of the nasal passages; this may be due to a foreign body (e.g., grass seed), infection, or a growth.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 334
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only.",
"Dogs may strain to pass urine or faeces, or to pass puppies when whelping (i.e., giving birth).
Straining to urinate is an emergency that may suggest a blocked bladder - seek immediate veterinary attention.
Straining to defecate is often due to constipation, but could also be caused by colitis, or a foreign body in the rectum.
Straining to whelp without success or progress is an emergency requiring immediate veterinary attention if puppy and mother are to be saved.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 335
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only",
"Dogs may strain to pass urine or faeces, or to pass puppies when whelping (i.e., giving birth).
Straining to urinate is an emergency that may suggest a blocked bladder - seek immediate veterinary attention.
Straining to defecate is often due to constipation.
Straining to whelp without success or progress is an emergency requiring immediate veterinary attention if puppy and mother are to be saved.
In any case, if your dog is not responding normally, contact your vet immediately.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 336
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only",
"Constant straining to urinate is an emergency that may suggest a blocked bladder; seek immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 337
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only",
"Chemotherapy makes urinary tract infections and abnormal bleeding more likely.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 338
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only
Collect a urine sample for your vet if possible.",
"Straining to urinate with red or pink urine may suggest a serious urinary tract infection.
Inability to urinate is an emergency that may suggest a blocked bladder; seek immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 339
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep your dog warm, quiet and calm.
Try to collect a urine sample, it will help your vet to work out what is wrong with your dog.
Encourage your dog to take extra fluids, you can try mixing a little water in to your dogs food.",
"Occasionally straining to urinate may suggest a urinary tract infection.
If they are unable to pass urine, however, this is an emergency that may suggest a blocked bladder; seek immediate veterinary attention.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 340
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Try to collect a urine sample, it will help your vet to work out what is wrong with your dog.
Try to take the packaging of the poison, if known, to the vet to help them determine the best treatment option.",
"Many rat poisons can cause abnormal bleeding; this may be the first sign of a severe poisoning.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 341
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Try to collect a urine sample, it will help your vet to work out what is wrong with your dog.
Try to take the packaging of the poison, if known, to the vet to help them determine the best treatment option.",
"Many rat poisons can cause abnormal bleeding; this may be the first sign of a severe poisoning.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 342
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only.",
"Straining to defecate is often due to constipation, but could also be caused by colitis, or a foreign body in the rectum, especially if it is prone to eating inappropriate objects.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 343
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only.",
"Constant straining to defecate is often due to constipation, but it could also be caused by colitis or a foreign body in the rectum.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 344
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only.",
"Straining to defecate is often due to constipation, but could also be caused by colitis, or a foreign body in the rectum.
Blood in the stools suggests some damage to the gut wall, or the presence of a growth or polyp.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 345
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep your dog warm, quiet and calm.",
"Straining to defecate is often due to constipation, but could also be caused by colitis, or a foreign body in the rectum.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 346
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only.",
"Dogs may strain constantly to pass urine or faeces, or to pass puppies when whelping (i.e., giving birth).
Straining to urinate is an emergency that may suggest a blocked bladder; seek immediate veterinary attention.
Straining to defecate is often due to constipation, but could also be caused by colitis, or a foreign body in the rectum.
Straining to whelp without success or progress is an emergency requiring immediate veterinary attention if puppy and mother are to be saved.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 347
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only.",
"Straining to urinate is an emergency that may suggest a blocked bladder; seek immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 348
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only.",
"Straining to urinate, without passage of normal amount of urine, is an emergency that may suggest a blocked bladder; seek immediate veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 349
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only.",
"Straining to urinate is an emergency that may suggest a urinary infection or a blocked bladder; seek immediate veterinary attention.
Straining to defecate is often due to constipation, but could also be caused by colitis, or a foreign body in the rectum, especially if they are prone to eat inappropriate objects.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 350
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.
Restrict exercise to lead walks to toilet only.",
"Straining to urinate is an emergency that may suggest a urinary infection or a blocked bladder; seek immediate veterinary attention.
Straining to defecate is often due to constipation, but could also be caused by colitis; gut problems are more common after chemotherapy.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 351
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep your dog warm, quiet and calm.
Try to collect a urine sample, as it will help your vet to work out what is wrong with your dog.",
"Straining to urinate is an emergency that may suggest a blocked bladder, so seek immediate veterinary attention if they seem unable to produce urine; alternatively, it may suggest a urinary infection.
Straining to defecate is often due to constipation, but could also be caused by colitis, or a foreign body in the rectum.
Straining to whelp (i.e., giving birth) without success or progress is an emergency requiring immediate veterinary attention if a puppy and a mother are to be saved.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 352
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.",
"A dog which is dull or unresponsive needs to see a vet urgently to diagnose and treat the cause.
Ticks can cause serious illnesses, such as Lyme disease, but the presence of ticks can be coincidental to other illnesses.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 353
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.",
"A dog which is unwell or in pain needs to see a vet to have the cause diagnosed and treated.
Ticks can cause serious illnesses, such as Lyme disease, but the presence of ticks can be coincidental to other illnesses.
The main signs of Lyme disease are lameness, loss of appetite, depression, fever, and sometimes breathing problems.
Other diseases which may be occasionally transmitted by ticks include babesiosis and ehrlichiosis.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 354
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Prevention is much better than removal, so ask at your vet for advice on which product will best suit your dog. These are usually spot-on medications applied to the skin.
If your dog travels abroad, it is important to have a tick prevention programm in place before travel.
Avoid walking in areas of long grass or woodlands in the summer months.
If your dog does pick up a tick, visit your vet so he or she can remove the tick and advise on preventing ticks in the future.
Do not try to pull a tick out without the proper removal device because you could end up leaving small parts behind, which could cause irritation and infection.",
"Ticks are small gray/brown parasites with rounded bodies. They are only a few millimeters in size before they attach to the dog and take a meal of blood. They then become engorged and swollen and drop off after a few days.
Ticks can cause pain and irritation, and they can transmit serious illnesses to the dog or other hosts, including humans.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 355
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"If you are certain that they are ticks (not warts or similar) then it is safe to remove them with a suitable device. If uncertain, make an appointment with your vet or vet nurse.
Do not try to pull a tick out without the proper removal device as leaving parts behind can cause irritation and infection.
Prevention is much better than removal, so ask at your veterinary surgery for advice on which product will best suit your dog. These are usually spot-on medications applied to the skin.
If your dog travels abroad, it is important to have a good tick prevention programme in place before travel. Ask your veterinary surgery for advice.
Avoid walking your dog in areas of long grass or woodland in the summer months.",
"Ticks are small gray/brown parasites with rounded bodies. They are only a few millimeters in size before they attach to the dog and take a meal of blood. They then become engorged and swollen and drop off after a few days.
Ticks can cause pain and irritation, and they can transmit serious illnesses to the dog or other hosts, including humans.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 356
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Do not try to pull a tick out without the proper removal device as leaving small parts behind can cause irritation and infection.
Prevention is much better than removal, so ask at your veterinary surgery for advice on which product will best suit your dog. These are usually spot-on medications applied to the skin.
If your dog travels abroad, it is important to have a tick prevention programm in place before travel.
Avoid walking in areas of long grass or woodlands in the summer months.",
"Ticks are small gray/brown parasites with rounded bodies. They are only a few millimeters in size before they attach to the dog and take a meal of blood. They then become engorged and swollen and drop off after a few days.
It is important to have the tick removed because they can cause pain and irritation and can transmit serious illnesses. If you're interested, your vet can demonstrate how to properly remove ticks at home using the appropriate tick removal tool.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 357
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"Vomiting may be caused by a wide range of conditions, although in dogs it is most commonly due to “dietary indiscretion” (i.e., eating something inappropriate and usually rotten).
Other possible causes include intestinal blockages, a high worm burden, poisoning, the side effects of certain drugs, stomach ulcers, infections, liver or kidney disease, some metabolic diseases (e.g., diabetes or Addison’s disease), motion sickness, pancreatic disease, and many more.
Prolonged or severe vomiting may lead to serious dehydration and both electrolyte and acid imbalances in the body, which may in themselves become dangerous if not treated.
As your dog is displaying signs of pain, your vet will probably want to examine them carefully, and possibly run further tests to determine the exact cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 358
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"Vomiting may be caused by a wide range of conditions, although in dogs it is most commonly due to “dietary indiscretion” (i.e., eating something inappropriate and usually rotten).
Other possible causes include intestinal blockages, a high worm burden, poisoning, the side effects of certain drugs, stomach ulcers, infections, liver or kidney disease, some metabolic diseases (e.g., diabetes or Addison’s disease), motion sickness, pancreatic disease, and many more.
Prolonged or severe vomiting may lead to serious dehydration and both electrolyte and acid imbalances in the body, which may in themselves become dangerous if not treated.
As your dog is displaying signs of pain, your vet will probably want to examine them carefully, and possibly run further tests to determine the exact cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 359
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"Attempts to vomit without production, or bringing up just some white froth, are commonly signs of a torsion (i.e., gastric dilation and volvulus). This is a potentially life-threatening emergency that requires urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 360
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"Bloating may be a sign of a torsion (i.e., gastric dilation and volvulus); this is a potentially life-threatening emergency that requires urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 361
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"Vomiting may be caused by a wide range of conditions, although in dogs it is most commonly due to “dietary indiscretion” (i.e., eating something inappropriate and usually rotten).
Other possible causes include intestinal blockages, a high worm burden, poisoning, the side effects of certain drugs, stomach ulcers, infections, liver or kidney disease, some metabolic diseases (e.g. diabetes or Addison’s disease), motion sickness, pancreatic disease, and many more.
Prolonged or severe vomiting may lead to serious dehydration and both electrolyte and acid imbalances in the body, which may in themselves become dangerous if not treated.
Blood in the vomit may be due to irritation from the vomiting, or there may be a stomach bleed.
Your vet will probably want to examine them carefully, and possibly run further tests, to determine the exact cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 362
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Try to work out what your dog might have been exposed to so that you can tell the vet.",
"Many poisons cause vomiting, and some are caustic, burning the intestinal tract.
Dogs with poisoning always need veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 363
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"Vomiting may be caused by a wide range of conditions, although in dogs it is most commonly due to “dietary indiscretion” (i.e., eating something inappropriate and usually rotten).
Other possible causes include intestinal blockages, a high worm burden, poisoning, the side effects of certain drugs, stomach ulcers, infections, liver or kidney disease, some metabolic diseases (e.g., diabetes or Addison’s disease), motion sickness, pancreatic disease, and many more.
Prolonged or severe vomiting may lead to serious dehydration and both electrolyte and acid imbalances in the body, which may in themselves become dangerous if not treated.
As your dog is displaying other symptoms, your vet will probably want to examine them carefully, and possibly run further tests, to determine the exact cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 364
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"Vomiting may be caused by a wide range of conditions, although in dogs it is most commonly due to “dietary indiscretion” (i.e., eating something inappropriate and usually rotten).
Other possible causes include intestinal blockages, a high worm burden, poisoning, the side effects of certain drugs, stomach ulcers, infections, liver or kidney disease, some metabolic diseases (e.g., diabetes or Addison’s disease), motion sickness, pancreatic disease, and many more.
Prolonged or severe vomiting may lead to serious dehydration and both electrolyte and acid imbalances in the body, which may in themselves become dangerous if not treated.
As your dog is displaying other symptoms, your vet will probably want to examine them carefully, and possibly run further tests, to determine the exact cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 365
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.
Try to keep your dog warm, quiet and calm.",
"Vomiting may be caused by a wide range of conditions, although in dogs it is most commonly due to “dietary indiscretion” (i.e., eating something inappropriate and usually rotten).
Other possible causes include intestinal blockages, a high worm burden, poisoning, the side effects of certain drugs, stomach ulcers, infections, liver or kidney disease, some metabolic diseases (e.g., diabetes or Addison’s disease), motion sickness, pancreatic disease, and many more.
Prolonged or severe vomiting may lead to serious dehydration and both electrolyte and acid imbalances in the body, which may in themselves become dangerous if not treated.
As your dog is displaying other symptoms, your vet will probably want to examine them carefully, and possibly run further tests, to determine the exact cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 366
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
Take great care to wash your hands thoroughly after handling your dog, some causes of vomiting can affect humans.",
"Vomiting may be caused by a wide range of conditions, although in dogs it is most commonly due to “dietary indiscretion” (i.e., eating something inappropriate and usually rotten).
Other possible causes include intestinal blockages, a high worm burden, poisoning, the side effects of certain drugs, stomach ulcers, infections, liver or kidney disease, some metabolic diseases (e.g., diabetes or Addison’s disease), motion sickness, pancreatic disease, and many more.
Prolonged or severe vomiting may lead to serious dehydration and both electrolyte and acid imbalances in the body, which may in themselves become dangerous if not treated.
As your dog is vomiting profusely, your vet will probably want to examine them carefully, and possibly run further tests, to determine the exact cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 367
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Occasionally, vomiting may indicate a serious issue, so it's important to monitor your dog closely. 
Initially, withhold water for only two hours. To maintain hydration, you can offer small amounts of an electrolyte solution recommended by your vet. 
If your dog is unable to retain the solution, seek veterinary advice immediately. 
After 12 hours, introduce a bland diet low in fat and fiber, such as boiled white rice and fish, feeding small portions frequently. 
Limit physical activity, and ensure your dog stays warm, quiet, and comfortable. 
Practice good hygiene by washing your hands thoroughly after handling your dog, as some causes of vomiting can be transmissible to humans. 
Once your dog has recovered, verify with your vet that its worming treatments are up to date.",
"Vomiting may be caused by a wide range of conditions, although in dogs it is most commonly due to “dietary indiscretion” (i.e., eating something inappropriate and usually rotten).
If your dog cannot even keep water down, or develops any other symptoms, contact your vet for advice.",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 368
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.",
"Weight loss in dogs may be due to a wide range of conditions, including inadequate nutrition, inability to eat (e.g., dental disease), regurgitation (e.g., megaoesophagus), chronic vomiting, metabolic disease (e.g., kidney or liver problems, or diabetes), gut disease (e.g., parasites, pancreatic insufficiency or inflammatory bowel disease), growths or tumours, or any serious systemic disease (e.g., heart disease).
Your vet will probably want to examine your dog carefully, and possibly run further tests, to determine the exact cause, especially as they are in pain; this may or may not be causing the weight loss but does suggest a serious health issue.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 369
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.",
"Weight loss in dogs may be due to a wide range of conditions, including inadequate nutrition, inability to eat (e.g., dental disease), regurgitation (e.g., megaoesophagus), chronic vomiting, metabolic disease (e.g., kidney or liver problems, or diabetes), gut disease (e.g., parasites, pancreatic insufficiency or inflammatory bowel disease), growths or tumours, or any serious systemic disease (e.g., heart disease).
Your vet will probably want to examine your dog carefully, and possibly run further tests, to determine the exact cause, especially as they are in pain; this may or may not be causing the weight loss but does suggest a serious health issue.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 370
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm, quiet and calm.",
"Weight loss in dogs may be due to a wide range of conditions, including inadequate nutrition, inability to eat (e.g., dental disease), regurgitation (e.g., megaoesophagus), chronic vomiting, metabolic disease (e.g., kidney or liver problems, or diabetes), gut disease (e.g., parasites, pancreatic insufficiency or inflammatory bowel disease), growths or tumours, or any serious systemic disease (e.g., heart disease).
The \"skin pinch test\" above suggests that it may also be seriously dehydrated.
Your vet will probably want to examine your dog carefully, and possibly run further tests, to determine the exact cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 371
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Keep your dog warm, quiet and calm.
Restrict exercise; lead walks to the toilet only.
Before you go to the vets make a note of the amount and type of food that you are feeding your dog.",
"Weight loss in dogs may be due to a wide range of conditions, including inadequate nutrition, inability to eat (e.g., dental disease), regurgitation (e.g., megaoesophagus), chronic vomiting, metabolic disease (e.g., kidney or liver problems, or diabetes), gut disease (e.g., parasites, pancreatic insufficiency or inflammatory bowel disease), growths or tumours, or any serious systemic disease (e.g., heart disease).
Your vet will probably want to examine your dog carefully, and possibly run further tests, to determine the exact cause.",
1);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 372
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Keep your dog warm, quiet and calm.",
"Weight loss in dogs may be due to a wide range of conditions, including inadequate nutrition, inability to eat (e.g., dental disease), regurgitation (e.g., megaoesophagus), chronic vomiting, metabolic disease (e.g., kidney or liver problems, or diabetes), gut disease (e.g., parasites, pancreatic insufficiency or inflammatory bowel disease), growths or tumours, or any serious systemic disease (e.g., heart disease).
Increased thirst suggests a systemic problem, and needs veterinary attention.
Your vet will probably want to examine your dog carefully, and possibly run further tests, to determine the exact cause.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 373
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Keep your dog warm, quiet and calm.
Restrict exercise; lead walks to the toilet only.
Before you go to the vets make a note of the amount and type of food that you are feeding your dog.",
"Weight loss in dogs may be due to a wide range of conditions, including inadequate nutrition, inability to eat (e.g., dental disease), regurgitation (e.g., megaoesophagus), chronic vomiting, metabolic disease (e.g., kidney or liver problems, or diabetes), gut disease (e.g., parasites, pancreatic insufficiency or inflammatory bowel disease), growths or tumours, or any serious systemic disease (e.g., heart disease).
Your vet will probably want to examine your dog carefully, and possibly run further tests, to determine the exact cause.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 374
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to lick or scratch at the wound
If possible, wrap a clean towel or sheet around the affected area on the way to the surgery.",
"Wounds may be more severe than they look, as well as damage to the skin; there may be muscle, nerve, bone or even internal injuries, as well as the risks from blood loss and infection.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 375
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to lick or scratch at the wound
If possible, wrap a clean towel or sheet around the affected area on the way to the surgery.",
"Wounds may be more severe than they look, as well as damage to the skin; there may be muscle, nerve, bone or even internal injuries, as well as the risks from blood loss and infection.
If your dog is not moving freely or responding normally, the injury may be more severe than it appears, so seek urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 376
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Do not put yourself in danger; make sure that you do not come into contact with hot surface or caustic substances.
Remember that animals in pain may bite or scratch without meaning to.
Try to keep your dog warm, quiet and calm.
Do not allow your dog to lick or scratch at the wound.
If the burn seems open, or there are chemicals on it, wash the area with clean water.
If possible wrap a non-adhesive dressing around the affected area on the way to the surgery, where cling film is ideal, to keep it clean and prevent bacterial invasion.",
"Burns can result in severe tissue damage, pain, and fluid loss (that may lead to shock and even death). They are also highly susceptible to infection, and therefore require emergency veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 377
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to lick or scratch at the wound
If possible, wrap a clean towel or sheet around the affected area on the way to the surgery.",
"Wounds may be more severe than they look, as well as damage to the skin; there may be muscle, nerve, bone or even internal injuries, as well as the risks from blood loss and infection.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 378
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to lick or scratch at the wound
If possible, wrap a clean towel or sheet around the affected area on the way to the surgery.",
"Wounds may be more severe than they look, as well as damage to the skin; there may be muscle, nerve, bone or even internal injuries, as well as the risks from blood loss and infection.
Puncture wounds are particularly dangerous because it is very difficult to know how deep they are or what structures might be damaged. They are also very prone to establish deep infections and abscesses.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 379
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not allow your dog to lick or scratch at the wound
If possible, wrap a clean towel or sheet around the affected area on the way to the surgery.",
"While grazes are rarely dangerous in themselves, your dog may have developed an infection that will require treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 380
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"If the graze is small and mild, home treatment may be adequate. If you are in any doubt, contact your vet for advice.
If the wound becomes swollen, smelly, or sore for the dog, contact your vet immediately.
If you can't stop your dog from licking or scratching at the wound, contact your vet for advice.
Prepare some boiled water, allow to cool. Stir in a teaspoon of salt.
Use clean cotton wool to gently drip the salty water over the wound. If there is any embedded dirt, contact your vet.",
"While grazes are rarely dangerous, if reasonably small, it is important to monitor for signs of infection or other complications (e.g., worsening pain or swelling, or any discharge).",
0);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 381
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Persistent crying suggests pain or distress, the cause of which needs to be determined by your vet.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 382
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Convulsions or collapse may mean a fever, a serious infection, or a brain or spinal problem. In any case, your puppy requires urgent veterinary assessment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 383
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Dropping activity levels are often the first sign of a significant health problem in a young puppy.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 384
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Situations can change quickly with young animals. Keep a close eye on your puppy if you are worried at all contact your vet immediately.
Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Young puppies are much more fragile than adults, so it's always worth getting them checked out.
Reluctance to feed is a potential emergency, so definitely seek veterinary advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 385
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Situations can change quickly with young animals. Keep a close eye on your puppy if you are worried at all contact your vet immediately.
Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Bluish gums suggest difficulty getting enough oxygen into the blood; this is an emergency requiring urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 386
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Situations can change quickly with young animals. Keep a close eye on your puppy if you are worried at all contact your vet immediately.
Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Young puppies are much more delicate than older dogs.
If other members of the litter have recently died, there could be an infectious or hereditary disease problem that will need urgent treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 387
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Situations can change quickly with young animals. Keep a close eye on your puppy if you are worried at all contact your vet immediately.
Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Wounds are much more serious in smaller puppies, so always seek veterinary advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 388
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Situations can change quickly with young animals. Keep a close eye on your puppy if you are worried at all contact your vet immediately.
Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Young puppies are much more delicate than older dogs, so if you have any concerns, it’s always worth contacting your vet for advice.
Bloating may be a sign of gut or rectal disorders.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 389
("If it is day time contact your vet now. If it is the evening, and there is no change in your dog's condition, it is probably safe to wait until morning.
Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for each symptom. Go to the vet in the shortest time recommended.
If any of the symptoms are not listed contact your vet.",
"Situations can change quickly with young animals. Keep a close eye on your puppy if you are worried at all contact your vet immediately.
Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Young puppies are much more fragile than adults, so it's always worth getting them checked out.
Failure to thrive is always a concern, so definitely seek veterinary attention.",
2);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 390
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Situations can change quickly with young animals. Keep a close eye on your puppy if you are worried at all contact your vet immediately.
Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Diarrhoea and vomiting may be a sign of Parvovirus, which is often fatal in young puppies.
Whatever the cause, young puppies often cannot survive dehydration from even moderate vomiting or diarrhoea, so seek urgent veterinary attention.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 391
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Situations can change quickly with young animals. Keep a close eye on your puppy if you are worried at all contact your vet immediately.
Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Young puppies are much more delicate than older dogs, so if you have any concerns, it’s always worth contacting your vet for advice.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 392
("Situations can change. Keep a close eye on your dog. If there is any deterioration or new symptoms appear, contact your vet immediately.
If your dog has any other symptoms follow the series of questions for those symptoms. Go to the vet in the shortest recommended time.
If any of the symptoms are not listed contact your vet.
If your dog is not better in 24 hours contact your vet.",
"Situations can change quickly with young animals. Keep a close eye on your puppy if you are worried at all contact your vet immediately.
Ask your vet if he or she wants you to bring the rest of the litter and mother or just the affected puppy.",
"Young puppies are much more delicate than older dogs, so if you have any concerns, its always worth contacting your vet for advice.",
1);

# ----------------------------------------------------------------------------------------------------------------------------------

INSERT INTO screening_options (question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(1, FALSE, "Bleeding", NULL, 2),
 (1, FALSE, "Bloated", NULL, 17),
 (1, FALSE, "Breathing problems", NULL, 24),
 (1, TRUE, "Collapsed", 49, NULL),
 (1, FALSE, "Coughing or wheezing", NULL, 32),
 (1, FALSE, "Diarrhoea", NULL, 41),
 (1, FALSE, "Drinking more than usual", NULL, 56),
 (1, FALSE, "Drooing or dribbling", NULL, 61),
 (1, FALSE, "Ear problems", NULL, 74), 
 (1, FALSE, "Eye problems", NULL, 79),
 (1, FALSE, "Fits", NULL, 87),
 (1, FALSE, "Funny turn", NULL, 96),
 (1, FALSE, "Itching", NULL, 109),
 (1, FALSE, "Lameness or limping", NULL, 117),
 (1, FALSE, "Lump or swelling", NULL, 126),
 (1, FALSE, "Moulting (Shedding)", NULL, 146),
 (1, FALSE, "Nail problems", NULL, 155),
 (1, FALSE, "Not eating", NULL, 167),
 (1, FALSE, "Off-color", NULL, 173),
 (1, FALSE, "Poison exposure", NULL, 183),
 (1, FALSE, "Problems after surgery", NULL, 200),
 (1, FALSE, "Smelly", NULL, 212),
 (1, FALSE, "Sneezing", NULL, 267),
 (1, FALSE, "Straining", NULL, 271),
 (1, FALSE, "Ticks", NULL, 285),
 (1, FALSE, "Vomitting", NULL, 289),
 (1, FALSE, "Weight loss", NULL, 299),
 (1, FALSE, "Wound", NULL, 304),
 (1, FALSE, "Young puppies", NULL, 308);

 INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(2, FALSE, "Wound", NULL, 3),
(2, FALSE, "Mouth", NULL, 6),
(2, FALSE, "Nose", NULL, 8), 
(2, FALSE, "Vulva", NULL, 10), 
(2, FALSE, "Stools", NULL, 12),
(2, TRUE, "Vomit or coughing up", 23, NULL);

 INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(3, TRUE, "Trickling, streaming, or pulsing out", 1, NULL),
(3, FALSE, "A few drops", NULL, 4);

 INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(4, TRUE, "Burn (heat or chemical)", 2, NULL),
(4, FALSE, "Graze (less than skin depth)", NULL, 5),
(4, TRUE, "Laceration (skin depth or deeper)", 5, NULL),
(4, TRUE, "Puncture wound (unknown depth)", 6, NULL);

 INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(5, TRUE, "Yes", 3, NULL),
(5, TRUE, "No", 4, NULL);

 INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(6, TRUE, "Trickling, streaming, or pulsing out", 7, NULL),
(6, FALSE, "A few drops", NULL, 7);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(7, TRUE, "Yes", 8, NULL),
(7, TRUE, "No", 9, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(8, TRUE, "Trickling, streaming, or pulsing out", 10, NULL),
(8, FALSE, "A few drops", NULL, 9);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(9, TRUE, "Yes", 11, NULL),
(9, TRUE, "No", 12, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(10, TRUE, "Trickling, streaming, or pulsing out", 13, NULL),
(10, FALSE, "A few drops", NULL, 11);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(11, TRUE, "Yes", 14, NULL),
(11, TRUE, "No", 15, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(12, TRUE, "Distributed throughout or a black appearence", 16, NULL),
(12, TRUE, "More than a trace on the outside of the stool", 17, NULL),
(12, FALSE, "Trace of blood on the outside of the stool", NULL, 13);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(13, TRUE, "Yes", 18, NULL),
(13, FALSE, "No", NULL, 14);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(14, FALSE, "Yes", NULL, 15),
(14, TRUE, "No", 19, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(15, TRUE, "Yes", 20, NULL),
(15, FALSE, "No", NULL, 16);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(16, TRUE, "Yes", 21, NULL),
(16, TRUE, "No", 22, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(17, TRUE, "Yes", 24, NULL),
(17, FALSE, "No", NULL, 18);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(18, FALSE, "Yes", NULL, 19),
(18, TRUE, "No", 25, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(19, TRUE, "Yes", 26, NULL),
(19, FALSE, "No", NULL, 20);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(20, FALSE, "Yes", NULL, 21),
(20, TRUE, "No", 27, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(21, TRUE, "Yes", 28, NULL),
(21, FALSE, "No", NULL, 22);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(22, TRUE, "Yes", 29, NULL),
(22, FALSE, "No", NULL, 23);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(23, TRUE, "Blue tinged", 30, NULL),
(23, TRUE, "Brick red", 31, NULL),
(23, TRUE, "Can't tell", 32, NULL),
(23, TRUE, "Similar to cooked salmon", 33, NULL),
(23, TRUE, "White or very pale", 34, NULL),
(23, TRUE, "Yellow tinged", 35, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(24, TRUE, "Yes", 36, NULL),
(24, FALSE, "No", NULL, 25);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(25, FALSE, "Yes", NULL, 26),
(25, TRUE, "No", 37, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(26, FALSE, "Yes", NULL, 27),
(26, TRUE, "No", 38, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(27, TRUE, "Yes", 39, NULL),
(27, FALSE, "No", NULL, 28);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(28, TRUE, "Yes", 40, NULL),
(28, FALSE, "No", NULL, 29);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(29, TRUE, "Yes", 41, NULL),
(29, FALSE, "No", NULL, 30);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(30, TRUE, "Blue tinged", 42, NULL),
(30, TRUE, "Brick red", 43, NULL),
(30, FALSE, "Can't tell", NULL, 31),
(30, TRUE, "Similar to cooked salmon", 44, NULL),
(30, TRUE, "White or very pale", 45, NULL),
(30, TRUE, "Yellow tinged", 46, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(31, TRUE, "Yes", 47, NULL),
(31, TRUE, "No", 48, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(32, TRUE, "Yes", 50, NULL),
(32, FALSE, "No", NULL, 33);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(33, TRUE, "Yes", 51, NULL),
(33, FALSE, "No", NULL, 34);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(34, FALSE, "Yes", NULL, 35),
(34, TRUE, "No", 52, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(35, TRUE, "Yes", 53, NULL),
(35, FALSE, "No", NULL, 36);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(36, TRUE, "Yes", 54, NULL),
(36, FALSE, "No", NULL, 37);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(37, TRUE, "Yes", 55, NULL),
(37, FALSE, "No", NULL, 38);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(38, TRUE, "Yes", 56, NULL),
(38, FALSE, "No", NULL, 39);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(39, TRUE, "Blue tinged", 57, NULL),
(39, TRUE, "Brick red", 58, NULL),
(39, FALSE, "Can't tell", NULL, 40),
(39, TRUE, "Similar to cooked salmon", 59, NULL),
(39, TRUE, "White or very pale", 61, NULL),
(39, TRUE, "Yellow tinged", 62, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(40, TRUE, "Yes", 63, NULL),
(40, TRUE, "No", 64, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(41, TRUE, "Yes", 65, NULL),
(41, FALSE, "No", NULL, 42);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(42, FALSE, "Yes", NULL, 43),
(42, TRUE, "No", 66, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(43, TRUE, "Yes", 67, NULL),
(43, FALSE, "No", NULL, 44);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(44, TRUE, "Yes", 68, NULL),
(44, FALSE, "No", NULL, 45);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(45, TRUE, "Constantly or most of the time", 69, NULL),
(45, FALSE, "Normal or slightly more than usual", NULL, 46);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(46, TRUE, "Yes", 70, NULL),
(46, FALSE, "No", NULL, 47);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(47, TRUE, "Yes", 71, NULL),
(47, FALSE, "No", NULL, 48);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(48, FALSE, "Similar to a cow dung patty (i.e., thick and shapeless)", NULL, 49),
(48, FALSE, "Watery", NULL, 54);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(49, FALSE, "Yes", NULL, 50),
(49, FALSE, "No", NULL, 51);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(50, TRUE, "A trace on the outside of the stool", 72, NULL),
(50, TRUE, "Blood distributed throughout or a black appearance", 73, NULL),
(50, TRUE, "More than a trace on the outside of the stool", 74, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(51, TRUE, "Blue tinged", 75, NULL),
(51, TRUE, "Brick red", 76, NULL),
(51, FALSE, "Can't tell", NULL, 52),
(51, FALSE, "Similar to cooked salmon", NULL, 53),
(51, TRUE, "White or very pale", 77, NULL),
(51, TRUE, "Yellow tinged", 78, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(52, TRUE, "Yes", 79, NULL),
(52, FALSE, "No", NULL, 53);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(53, TRUE, "Yes", 80, NULL),
(53, TRUE, "No", 81, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(54, TRUE, "More than three", 82, NULL),
(54, FALSE, "Three or fewer", NULL, 55);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(55, TRUE, "Yes", 83, NULL),
(55, TRUE, "No", 84, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(56, TRUE, "Yes", 85, NULL),
(56, FALSE, "No", NULL, 57);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(57, FALSE, "Yes", NULL, 58),
(57, TRUE, "No", 86, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(58, TRUE, "Yes", 87, NULL),
(58, FALSE, "No", NULL, 59);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(59, TRUE, "Yes", 88, NULL),
(59, FALSE, "No", NULL, 60);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(60, TRUE, "Eating normally", 89, NULL),
(60, TRUE, "Eating, but less than usual", 90, NULL),
(60, TRUE, "Not eating", 91, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(61, TRUE, "Yes", 92, NULL),
(61, FALSE, "No", NULL, 62);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(62, FALSE, "Yes", NULL, 63),
(62, TRUE, "No", 93, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(63, TRUE, "Yes", 94, NULL),
(63, FALSE, "No", NULL, 64);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(64, TRUE, "Yes", 95, NULL),
(64, FALSE, "No", NULL, 65);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(65, TRUE, "Yes", 96, NULL),
(65, FALSE, "No", NULL, 66);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(66, TRUE, "Yes", 97, NULL),
(66, FALSE, "No", NULL, 67);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(67, TRUE, "Yes", 98, NULL),
(67, FALSE, "No", NULL, 68);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(68, FALSE, "No, or once only", NULL, 69),
(68, TRUE, "Yes, vomiting or retching constantly", 99, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(69, TRUE, "Yes", 100, NULL),
(69, FALSE, "No", NULL, 70);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(70, TRUE, "Yes", 101, NULL),
(70, FALSE, "No", NULL, 71);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(71, TRUE, "Yes", 102, NULL),
(71, FALSE, "No", NULL, 72);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(72, TRUE, "Yes", 103, NULL),
(72, FALSE, "No", NULL, 73);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(73, TRUE, "Yes", 104, NULL),
(73, TRUE, "No", 105, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(74, TRUE, "Yes", 106, NULL),
(74, FALSE, "No", NULL, 75);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(75, FALSE, "Yes", NULL, 76),
(75, TRUE, "No", 107, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(76, TRUE, "Yes", 108, NULL),
(76, FALSE, "No", NULL, 77);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(77, TRUE, "Yes", 109, NULL),
(77, FALSE, "No", NULL, 78);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(78, TRUE, "Yes", 110, NULL),
(78, TRUE, "No", 111, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(79, TRUE, "Yes", 112, NULL),
(79, FALSE, "No", NULL, 80);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(80, TRUE, "Yes", 113, NULL),
(80, FALSE, "No", NULL, 81);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(81, TRUE, "Yes", 114, NULL),
(81, FALSE, "No", NULL, 82);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(82, TRUE, "Yes", 115, NULL),
(82, FALSE, "No", NULL, 83);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(83, TRUE, "Yes", 116, NULL),
(83, FALSE, "No", NULL, 84);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(84, FALSE, "Yes", NULL, 85),
(84, TRUE, "No", 117, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(85, TRUE, "Yes", 118, NULL),
(85, FALSE, "No", NULL, 86);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(86, TRUE, "Yes", 119, NULL),
(86, TRUE, "No", 120, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(87, FALSE, "Yes", NULL, 88),
(87, FALSE, "No", NULL, 89);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(88, TRUE, "Less than 5 minutes", 121, NULL),
(88, TRUE, "More than 5 minutes", 122, NULL),
(88, TRUE, "Don't know", 123, NULL),
(88, TRUE, "Several fits without returning to normal in between", 124, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(89, FALSE, "Yes", NULL, 90),
(89, TRUE, "No", 125, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(90, TRUE, "Yes", 126, NULL),
(90, FALSE, "No", NULL, 91);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(91, TRUE, "Yes", 127, NULL),
(91, FALSE, "No", NULL, 92);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(92, FALSE, "Yes", NULL, 93),
(92, TRUE, "No", 128, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(93, FALSE, "Yes", NULL, 94),
(93, TRUE, "No", 129, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(94, TRUE, "Yes", 130, NULL),
(94, FALSE, "No", NULL, 95);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(95, TRUE, "Yes", 131, NULL),
(95, TRUE, "No", 132, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(96, TRUE, "Yes", 133, NULL),
(96, FALSE, "No", NULL, 97);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(97, FALSE, "Yes", NULL, 98),
(97, TRUE, "No", 134, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(98, TRUE, "Yes", 135, NULL),
(98, FALSE, "No", NULL, 99);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(99, TRUE, "Yes", 136, NULL),
(99, FALSE, "No", NULL, 100);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(100, TRUE, "Yes", 137, NULL),
(100, FALSE, "No", NULL, 101);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(101, TRUE, "Yes", 138, NULL),
(101, FALSE, "No", NULL, 102);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(102, TRUE, "Yes", 139, NULL),
(102, FALSE, "No", NULL, 103);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(103, TRUE, "Yes", 140, NULL),
(103, FALSE, "No", NULL, 104);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(104, FALSE, "Yes", NULL, 105),
(104, TRUE, "No", 141, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(105, FALSE, "Yes", NULL, 106),
(105, TRUE, "No", 142, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(106, TRUE, "Yes", 143, NULL),
(106, FALSE, "No", NULL, 107);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(107, TRUE, "Yes", 144, NULL),
(107, FALSE, "No", NULL, 108);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(108, TRUE, "Yes", 145, NULL),
(108, TRUE, "No", 146, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(109, TRUE, "Yes", 147, NULL),
(109, FALSE, "No", NULL, 110);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(110, TRUE, "Yes", 148, NULL),
(110, FALSE, "No", NULL, 111);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(111, TRUE, "Yes", 149, NULL),
(111, FALSE, "No", NULL, 112);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(112, FALSE, "Yes", NULL, 113),
(112, FALSE, "No", NULL, 114);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(113, TRUE, "Yes", 150, NULL),
(113, TRUE, "No", 151, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(114, FALSE, "Yes", NULL, 115),
(114, FALSE, "No", NULL, 116);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(115, TRUE, "Yes", 152, NULL),
(115, TRUE, "No", 153, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(116, TRUE, "Yes", 154, NULL),
(116, TRUE, "No", 155, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(117, TRUE, "Yes", 156, NULL),
(117, FALSE, "No", NULL, 118);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(118, FALSE, "Yes", NULL, 119),
(118, TRUE, "No", 157, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(119, TRUE, "Yes", 158, NULL),
(119, FALSE, "No", NULL, 120);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(120, FALSE, "Yes", NULL, 121),
(120, FALSE, "No", NULL, 123);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(121, TRUE, "Yes", 159, NULL),
(121, FALSE, "No", NULL, 122);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(122, TRUE, "Yes", 160, NULL),
(122, TRUE, "No", 161, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(123, TRUE, "Much better", 162, NULL),
(123, FALSE, "No change or getting worse", NULL, 124);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(124, TRUE, "Yes", 163, NULL),
(124, FALSE, "No", NULL, 125);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(125, TRUE, "Yes", 164, NULL),
(125, TRUE, "No", 165, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(126, TRUE, "Yes", 166, NULL),
(126, FALSE, "No", NULL, 127);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(127, FALSE, "Yes", NULL, 128),
(127, TRUE, "No", 167, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(128, TRUE, "Yes", 168, NULL),
(128, FALSE, "No", NULL, 129);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(129, TRUE, "Yes", 169, NULL),
(129, FALSE, "No", NULL, 130);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(130, TRUE, "Yes", 170, NULL),
(130, FALSE, "No", NULL, 131);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(131, TRUE, "Yes", 171, NULL),
(131, FALSE, "No", NULL, 132);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(132, FALSE, "Another area", NULL, 133),
(132, FALSE, "Anus", NULL, 135),
(132, FALSE, "Head or neck", NULL, 136),
(132, FALSE, "Mammary gland (i.e., series of milk-producing glands and ducts)", NULL, 137),
(132, TRUE, "Leg", 185, NULL),
(132, FALSE, "Penis", NULL, 140),
(132, TRUE, "Several areas", 190, NULL),
(132, FALSE, "Vulva", NULL, 143),
(132, TRUE, "Whole abdomen (stomach) area", 195, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(133, FALSE, "Yes", NULL, 134),
(133, TRUE, "No", 172, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(134, TRUE, "Yes", 173, NULL),
(134, TRUE, "No", 174, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(135, TRUE, "Coming out through the anus", 175, NULL),
(135, TRUE, "On the anus", 176, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(136, TRUE, "Another single area", 177, NULL),
(136, TRUE, "Ear", 178, NULL),
(136, TRUE, "Eye", 179, NULL),
(136, TRUE, "Several places", 180, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(137, TRUE, "Yes", 181, NULL),
(137, FALSE, "No", NULL, 138);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(138, FALSE, "Yes", NULL, 139),
(138, TRUE, "No", 182, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(139, TRUE, "Smooth and even", 183, NULL),
(139, TRUE, "Lumpy", 184, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(140, TRUE, "Yes", 186, NULL),
(140, FALSE, "No", NULL, 141);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(141, TRUE, "Yes", 187, NULL),
(141, FALSE, "No", NULL, 142);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(142, TRUE, "Yes", 188, NULL),
(142, TRUE, "No", 189, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(143, TRUE, "Coming out through the vulva", 191, NULL),
(143, FALSE, "On the vulva", NULL, 144);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(144, FALSE, "Even", NULL, 145),
(144, TRUE, "Lump", 192, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(145, TRUE, "Yes", 193, NULL),
(145, TRUE, "No", 194, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(146, FALSE, "Yes", NULL, 147),
(146, TRUE, "No", 196, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(147, TRUE, "Yes", 197, NULL),
(147, FALSE, "No", NULL, 148);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(148, FALSE, "Yes", NULL, 149),
(148, FALSE, "No", NULL, 150);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(149, TRUE, "Yes", 198, NULL),
(149, TRUE, "No", 199, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(150, FALSE, "Yes", NULL, 151),
(150, FALSE, "No", NULL, 152);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(151, TRUE, "Yes", 200, NULL),
(151, TRUE, "No", 201, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(152, FALSE, "Yes", NULL, 153),
(152, FALSE, "No", NULL, 154);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(153, TRUE, "Yes", 202, NULL),
(153, TRUE, "No", 203, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(154, TRUE, "Yes", 204, NULL),
(154, TRUE, "No", 205, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(155, TRUE, "Yes", 206, NULL),
(155, FALSE, "No or not sure", NULL, 156);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(156, FALSE, "Bleeding", NULL, 157),
(156, FALSE, "Cracked or broken, but no bleeding", NULL, 163),
(156, FALSE, "No", NULL, 164);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(157, FALSE, "Yes", NULL, 158),
(157, FALSE, "No", NULL, 159);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(158, TRUE, "Yes", 207, NULL),
(158, TRUE, "No", 208, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(159, FALSE, "Yes", NULL, 160),
(159, FALSE, "No", NULL, 161);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(160, TRUE, "Yes", 209, NULL),
(160, TRUE, "No", 210, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(161, TRUE, "Yes, dripping or spurting out", 211, NULL),
(161, FALSE, "No, slight oozing only", NULL, 162);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(162, TRUE, "Yes", 212, NULL),
(162, TRUE, "No", 213, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(163, TRUE, "Yes", 214, NULL),
(163, TRUE, "No", 215, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(164, TRUE, "Yes", 216, NULL),
(164, FALSE, "No", NULL, 165);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(165, TRUE, "Yes", 217, NULL),
(165, FALSE, "No", NULL, 166);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(166, TRUE, "Yes", 218, NULL),
(166, TRUE, "No", 219, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(167, TRUE, "Yes", 220, NULL),
(167, FALSE, "No", NULL, 168);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(168, FALSE, "Yes", NULL, 169),
(168, TRUE, "No", 221, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(169, TRUE, "Yes", 222, NULL),
(169, FALSE, "No", NULL, 170);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(170, FALSE, "Yes", NULL, 171),
(170, TRUE, "No", 223, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(171, TRUE, "Yes", 224, NULL),
(171, FALSE, "No", NULL, 172);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(172, TRUE, "Yes", 225, NULL),
(172, TRUE, "No", 226, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(173, TRUE, "Yes", 227, NULL),
(173, FALSE, "No", NULL, 174);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(174, FALSE, "Yes", NULL, 175),
(174, TRUE, "No", 228, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(175, TRUE, "Yes", 229, NULL),
(175, FALSE, "No", NULL, 176);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(176, TRUE, "Yes", 230, NULL),
(176, FALSE, "No", NULL, 177);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(177, TRUE, "Yes", 231, NULL),
(177, FALSE, "No", NULL, 178);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(178, TRUE, "Yes", 232, NULL),
(178, FALSE, "No", NULL, 179);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(179, TRUE, "Yes", 233, NULL),
(179, FALSE, "No", NULL, 180);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(180, TRUE, "Yes", 234, NULL),
(180, FALSE, "No", NULL, 181);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(181, TRUE, "Yes", 235, NULL),
(181, FALSE, "No", NULL, 182);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(182, TRUE, "Yes", 236, NULL),
(182, TRUE, "No", 237, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(183, TRUE, "Aspirin", 238, NULL),
(183, TRUE, "Azalea", 239, NULL),
(183, FALSE, "Baby oil", NULL, 184);
-- (183, FALSE, "Baby wipes", NULL, NULL),
-- (183, FALSE, "Blu-Tak or similar adhesives", NULL, NULL),
-- (183, FALSE, "Blue cheese", NULL, NULL),
-- (183, FALSE, "Blue-green alage", NULL, NULL),
-- (183, FALSE, "Cannabis", NULL, NULL),
-- (183, FALSE, "Chalk", NULL, NULL),
-- (183, FALSE, "Chocolate", NULL, NULL),
-- (183, FALSE, "Coal (real or artificial)", NULL, NULL),
-- (183, FALSE, "Conkers", NULL, NULL),
-- (183, FALSE, "Crayons", NULL, NULL),
-- (183, FALSE, "Daffodil (Narcissus)", NULL, NULL),
-- (183, FALSE, "Diclofenac", NULL, NULL),
-- (183, FALSE, "Emollient cream (e.g., E45)", NULL, NULL),
-- (183, FALSE, "Folic acid", NULL, NULL),
-- (183, FALSE, "Fuchsias", NULL, NULL),
-- (183, FALSE, "Grapes (currants, raisins, and sultanas)", NULL, NULL),
-- (183, FALSE, "Graphite pencils", NULL, NULL),
-- (183, FALSE, "Holly (Ilex species)", NULL, NULL),
-- (183, FALSE, "Honeysuckle (Lonicera species)", NULL, NULL),
-- (183, FALSE, "Hormone Replacement Therapy (HRT) tablets or creams", NULL, NULL),
-- (183, FALSE, "Ibuprofen-based painkillers", NULL, NULL),
-- (183, FALSE, "Icepacks (methylcellulose)", NULL, NULL),
-- (183, FALSE, "Inch Plant/Spiderwort (Tradescantia)", NULL, NULL),
-- (183, FALSE, "Iron tablets/supplements", NULL, NULL),
-- (183, FALSE, "Leeks or chives", NULL, NULL),
-- (183, FALSE, "Lipstick", NULL, NULL),
-- (183, FALSE, "Macadamia nuts", NULL, NULL),
-- (183, FALSE, "Matches", NULL, NULL),
-- (183, FALSE, "Mistletoe (Viscum album)", NULL, NULL),
-- (183, FALSE, "Nappies", NULL, NULL),
-- (183, FALSE, "Nappy rash cream", NULL, NULL),
-- (183, FALSE, "Onions or garlic", NULL, NULL),
-- (183, FALSE, "Oral contraceptives", NULL, NULL),
-- (183, FALSE, "Paper", NULL, NULL),
-- (183, FALSE, "Paracetamol-based painkillers", NULL, NULL),
-- (183, FALSE, "Pencils or pencil lead", NULL, NULL),
-- (183, FALSE, "Plant foot", NULL, NULL),
-- (183, FALSE, "Polystyrene", NULL, NULL),
-- (183, FALSE, "Rhododendron", NULL, NULL),
-- (183, FALSE, "Rodenticides/rat bait", NULL, NULL),
-- (183, FALSE, "Rotting food", NULL, NULL),
-- (183, FALSE, "Rowan (Sobus aucuparia)", NULL, NULL),
-- (183, FALSE, "Rubbers or erasers", NULL, NULL),
-- (183, FALSE, "Salt", NULL, NULL),
-- (183, FALSE, "Silica gel", NULL, NULL),
-- (183, FALSE, "Slug bait (Ferric phosphate)", NULL, NULL),
-- (183, FALSE, "Slug bait (Metaldehyde)", NULL, NULL),
-- (183, FALSE, "Slug bait (Methiocarb)", NULL, NULL),
-- (183, FALSE, "Snake bite", NULL, NULL),
-- (183, FALSE, "Toad venom", NULL, NULL),
-- (183, FALSE, "Wandering dude (Tradescantia)", NULL, NULL),
-- (183, FALSE, "Wax candles", NULL, NULL),
-- (183, FALSE, "Xylitol in gum or peanut butter", NULL, NULL),
-- (183, FALSE, "Zinc oxide creams (e.g., Sudocrem)", NULL, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(184, FALSE, "Yes", NULL, 185),
(184, TRUE, "No", 240, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(185, FALSE, "Yes", NULL, 186),
(185, TRUE, "No", 241, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(186, TRUE, "Yes", 242, NULL),
(186, FALSE, "No", NULL, 187);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(187, FALSE, "Yes", NULL, 188),
(187, TRUE, "No", 243, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(188, FALSE, "Yes", NULL, 189),
(188, FALSE, "No", NULL, 193);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(189, TRUE, "Yes", 244, NULL),
(189, FALSE, "No", NULL, 190);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(190, TRUE, "Yes", 245, NULL),
(190, FALSE, "No", NULL, 191);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(191, TRUE, "Yes", 246, NULL),
(191, FALSE, "No", NULL, 192);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(192, TRUE, "Yes", 247, NULL),
(192, TRUE, "No", 248, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(193, FALSE, "Yes", NULL, 194),
(193, TRUE, "No", 249, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(194, TRUE, "Yes", 250, NULL),
(194, FALSE, "No", NULL, 195);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(195, FALSE, "Cow pat", NULL, 196),
(195, TRUE, "Watery", 251, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(196, TRUE, "Constantly or most of the time", 252, NULL),
(196, FALSE, "Normal or slightly more than usual", NULL, 197);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(197, TRUE, "Yes", 253, NULL),
(197, FALSE, "No", NULL, 198);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(198, TRUE, "Yes", 254, NULL),
(198, FALSE, "No", NULL, 199);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(199, TRUE, "Yes", 255, NULL),
(199, TRUE, "No", 256, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(200, TRUE, "Yes", 257, NULL),
(200, FALSE, "No", NULL, 201);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(201, FALSE, "Yes", NULL, 202),
(201, TRUE, "No", 258, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(202, FALSE, "Yes", NULL, 203),
(202, FALSE, "No", NULL, 204);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(203, TRUE, "Blood is dripping or trickling out", 259, NULL),
(203, TRUE, "One or two drops only", 260, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(204, FALSE, "Yes", NULL, 205),
(204, FALSE, "No", NULL, 207);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(205, TRUE, "Yes", 261, NULL),
(205, FALSE, "No", NULL, 206);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(206, TRUE, "Less than 7 days", 262, NULL),
(206, TRUE, "More than 7 days", 263, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(207, FALSE, "Yes", NULL, 208),
(207, FALSE, "No", NULL, 210);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(208, TRUE, "Large", 264, NULL),
(208, FALSE, "Small", NULL, 209);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(209, TRUE, "Yes", 265, NULL),
(209, TRUE, "No", 266, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(210, TRUE, "Large", 267, NULL),
(210, FALSE, "Small", NULL, 211);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(211, TRUE, "Yes", 268, NULL),
(211, TRUE, "No", 269, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(212, FALSE, "Under the tail", NULL, 213),
(212, FALSE, "Ears", NULL, 233),
(212, FALSE, "General smell", NULL, 239),
(212, FALSE, "Mouth", NULL, 245),
(212, FALSE, "Skin", NULL, 254);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(213, FALSE, "Yes", NULL, 214),
(213, FALSE, "No", NULL, 217);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(214, FALSE, "Yes", NULL, 215),
(214, TRUE, "No", 270, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(215, TRUE, "Yes", 271, NULL),
(215, FALSE, "No", NULL, 216);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(216, TRUE, "Yes", 272, NULL),
(216, TRUE, "No", 273, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(217, TRUE, "Yes", 274, NULL),
(217, FALSE, "No", NULL, 218);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(218, FALSE, "Yes", NULL, 219),
(218, FALSE, "No", NULL, 222);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(219, FALSE, "Yes", NULL, 220),
(219, TRUE, "No", 275, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(220, TRUE, "Yes", 276, NULL),
(220, FALSE, "No", NULL, 221);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(221, TRUE, "Yes", 277, NULL),
(221, TRUE, "No", 278, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(222, FALSE, "Yes", NULL, 223),
(222, FALSE, "No", NULL, 225);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(223, FALSE, "Yes", NULL, 224),
(223, TRUE, "No", 279, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(224, TRUE, "A continuous flow of blood", 280, NULL),
(224, TRUE, "None or slight oozing", 281, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(225, FALSE, "Yes", NULL, 226),
(225, FALSE, "No", NULL, 228);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(226, TRUE, "A continuous flow of blood", 282, NULL),
(226, FALSE, "An occasional drop of blood", NULL, 227);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(227, TRUE, "Yes", 283, NULL),
(227, TRUE, "No", 284, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(228, TRUE, "Yes", 285, NULL),
(228, FALSE, "No", NULL, 229);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(229, FALSE, "Yes, swelling or discharge present", NULL, 230),
(229, FALSE, "No swelling or discharge, or the dog is male", NULL, 231);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(230, TRUE, "Yes", 286, NULL),
(230, TRUE, "No", 287, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(231, FALSE, "Yes", NULL, 232),
(231, TRUE, "No", 288, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(232, TRUE, "Yes", 289, NULL),
(232, TRUE, "No", 290, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(233, TRUE, "Yes", 291, NULL),
(233, FALSE, "No", NULL, 234);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(234, FALSE, "Yes", NULL, 235),
(234, TRUE, "No", 292, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(235, TRUE, "Yes", 293, NULL),
(235, FALSE, "No", NULL, 236);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(236, TRUE, "Yes", 294, NULL),
(236, FALSE, "No", NULL, 237);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(237, TRUE, "Yes", 295, NULL),
(237, FALSE, "No", NULL, 238);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(238, TRUE, "Yes", 296, NULL),
(238, TRUE, "No", 297, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(239, FALSE, "Yes", NULL, 240),
(239, TRUE, "No", 298, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(240, TRUE, "Yes", 299, NULL),
(240, FALSE, "No", NULL, 241);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(241, FALSE, "Yes", NULL, 242),
(241, FALSE, "No, intermittently", NULL, 244);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(242, TRUE, "Yes", 300, NULL),
(242, FALSE, "No, mild smell", NULL, 243);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(243, TRUE, "Smell remains or returns quickly", 301, NULL),
(243, TRUE, "Smell has gone", 302, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(244, TRUE, "Yes", 303, NULL),
(244, TRUE, "No, mild smell", 304, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(245, FALSE, "Yes", NULL, 246),
(245, TRUE, "No", 305, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(246, TRUE, "Yes", 306, NULL),
(246, FALSE, "No", NULL, 247);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(247, TRUE, "Yes", 307, NULL),
(247, FALSE, "No", NULL, 248);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(248, TRUE, "Yes", 308, NULL),
(248, FALSE, "No", NULL, 249);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(249, TRUE, "Yes", 309, NULL),
(249, FALSE, "No", NULL, 250);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(250, FALSE, "Yes", NULL, 251),
(250, FALSE, "No, intermittently", NULL, 252);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(251, TRUE, "Yes", 310, NULL),
(251, TRUE, "No, mild smell", 311, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(252, TRUE, "Yes", 312, NULL),
(252, FALSE, "No, mild smell", NULL, 253);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(253, TRUE, "Yes", 313, NULL),
(253, TRUE, "No", 314, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(254, FALSE, "Yes", NULL, 255),
(254, TRUE, "No", 315, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(255, TRUE, "Yes", 316, NULL),
(255, FALSE, "No", NULL, 256);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(256, FALSE, "Yes", NULL, 257),
(256, FALSE, "No", NULL, 258);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(257, TRUE, "Yes", 317, NULL),
(257, TRUE, "No", 318, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(258, FALSE, "Yes", NULL, 259),
(258, FALSE, "No", NULL, 262);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(259, TRUE, "Yes", 319, NULL),
(259, FALSE, "No", NULL, 260);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(260, TRUE, "Yes", 320, NULL),
(260, FALSE, "No", NULL, 261);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(261, TRUE, "Yes", 321, NULL),
(261, TRUE, "No", 322, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(262, TRUE, "Yes", 323, NULL),
(262, FALSE, "No", NULL, 263);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(263, FALSE, "Yes, both normal", NULL, 264),
(263, TRUE, "No", 324, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(264, FALSE, "Yes", NULL, 265),
(264, FALSE, "No, intermittently", NULL, 266);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(265, TRUE, "Yes", 325, NULL),
(265, TRUE, "No, mild smell", 326, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(266, TRUE, "Yes", 327, NULL),
(266, TRUE, "No, mild smell", 328, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(267, TRUE, "Yes", 329, NULL),
(267, FALSE, "No", NULL, 268);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(268, TRUE, "Yes", 330, NULL),
(268, FALSE, "No", NULL, 269);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(269, TRUE, "Constantly or most of the time", 331, NULL),
(269, FALSE, "Occasionally", NULL, 270);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(270, TRUE, "Yes", 332, NULL),
(270, TRUE, "No", 333, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(271, TRUE, "Yes", 334, NULL),
(271, FALSE, "No", NULL, 272);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(272, FALSE, "Yes", NULL, 273),
(272, TRUE, "No", 335, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(273, FALSE, "Urine", NULL, 274),
(273, FALSE, "Stools", NULL, 278),
(273, FALSE, "Not sure or nothing coming out", NULL, 281);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(274, TRUE, "Constantly or most of the time", 336, NULL),
(274, FALSE, "Occasionally", NULL, 275);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(275, TRUE, "Yes", 337, NULL),
(275, FALSE, "No", NULL, 276);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(276, FALSE, "Yes, urine is very pale pink", NULL, 277),
(276, TRUE, "Yes, urine is red or pink", 338, NULL),
(276, TRUE, "No", 339, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(277, TRUE, "Yes", 340, NULL),
(277, TRUE, "No", 341, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(278, TRUE, "Yes", 342, NULL),
(278, FALSE, "No", NULL, 279);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(279, TRUE, "Constantly or most of the time", 343, NULL),
(279, FALSE, "Occasionally", NULL, 280);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(280, TRUE, "Yes", 344, NULL),
(280, TRUE, "No", 345, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(281, TRUE, "Constantly or most of the time", 346, NULL),
(281, FALSE, "Occasionally", NULL, 282);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(282, FALSE, "Yes", NULL, 283),
(282, TRUE, "Not sure", 347, NULL),
(282, TRUE, "No", 348, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(283, TRUE, "Yes", 349, NULL),
(283, FALSE, "No", NULL, 284);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(284, TRUE, "Yes", 350, NULL),
(284, TRUE, "No", 351, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(285, FALSE, "Yes", NULL, 286),
(285, TRUE, "No", 352, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(286, TRUE, "Yes", 353, NULL),
(286, FALSE, "No", NULL, 287);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(287, FALSE, "Yes or maybe (not sure what they look like)", NULL, 288),
(287, TRUE, "No, but would like to prevent it", 354, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(288, TRUE, "Yes", 355, NULL),
(288, TRUE, "No", 356, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(289, TRUE, "Yes", 357, NULL),
(289, FALSE, "No", NULL, 290);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(290, FALSE, "Yes", NULL, 291),
(290, TRUE, "No", 358, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(291, TRUE, "Yes", 359, NULL),
(291, FALSE, "No", NULL, 292);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(292, TRUE, "Yes", 360, NULL),
(292, FALSE, "No", NULL, 293);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(293, TRUE, "Yes", 361, NULL),
(293, FALSE, "No", NULL, 294);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(294, TRUE, "Yes", 362, NULL),
(294, FALSE, "No", NULL, 295);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(295, TRUE, "Yes", 363, NULL),
(295, FALSE, "No", NULL, 296);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(296, TRUE, "Yes", 364, NULL),
(296, FALSE, "No", NULL, 297);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(297, FALSE, "Yes", NULL, 298),
(297, TRUE, "No", 365, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(298, TRUE, "More than five", 366, NULL),
(298, TRUE, "Less than five", 367, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(299, TRUE, "Yes", 368, NULL),
(299, FALSE, "No", NULL, 300);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(300, FALSE, "Yes", NULL, 301),
(300, TRUE, "No", 369, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(301, FALSE, "Yes", NULL, 302),
(301, TRUE, "No", 370, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(302, TRUE, "Yes", 371, NULL),
(302, FALSE, "No", NULL, 303);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(303, TRUE, "Yes", 372, NULL),
(303, TRUE, "No", 373, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(304, TRUE, "Yes", 374, NULL),
(304, FALSE, "No", NULL, 305);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(305, FALSE, "Yes", NULL, 306),
(305, TRUE, "No", 375, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(306, TRUE, "Burn (heat or chemical)", 376, NULL),
(306, FALSE, "Graze (less than skin depth)", NULL, 307),
(306, TRUE, "Laceration (skin depth or deeper)", 377, NULL),
(306, TRUE, "Puncture wound (unknown depth)", 378, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(307, TRUE, "Yes", 379, NULL),
(307, TRUE, "No", 380, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(308, TRUE, "Yes", 381, NULL),
(308, FALSE, "No", NULL, 309);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(309, TRUE, "Yes", 382, NULL),
(309, FALSE, "No", NULL, 310);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(310, TRUE, "Yes", 383, NULL),
(310, FALSE, "No", NULL, 311);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(311, FALSE, "Yes", NULL, 312),
(311, TRUE, "No", 384, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(312, TRUE, "Yes", 385, NULL),
(312, FALSE, "No", NULL, 313);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(313, TRUE, "Yes", 386, NULL),
(313, FALSE, "No", NULL, 314);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(314, TRUE, "Yes", 387, NULL),
(314, FALSE, "No", NULL, 315);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(315, TRUE, "Yes", 388, NULL),
(315, FALSE, "No", NULL, 316);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(316, FALSE, "Yes", NULL, 317),
(316, TRUE, "No", 389, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(317, TRUE, "Yes", 390, NULL),
(317, FALSE, "No", NULL, 318);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(318, TRUE, "Yes", 391, NULL),
(318, TRUE, "No", 392, NULL);