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
 (1, FALSE, "Not eating", NULL, NULL),
 (1, FALSE, "Off-color", NULL, NULL),
 (1, FALSE, "Poison exposure", NULL, NULL),
 (1, FALSE, "Problems after surgery", NULL, NULL),
 (1, FALSE, "Smelly", NULL, NULL),
 (1, FALSE, "Sneezing", NULL, NULL),
 (1, FALSE, "Straining", NULL, NULL),
 (1, FALSE, "Ticks", NULL, NULL),
 (1, FALSE, "Vomitting", NULL, NULL),
 (1, FALSE, "Weight loss", NULL, NULL),
 (1, FALSE, "Wound", NULL, NULL),
 (1, FALSE, "Young puppies", NULL, NULL);

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