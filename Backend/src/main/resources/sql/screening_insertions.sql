use vetgo_db;

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
"Bitches can have other problems when they are in season. If you are at all worried about your bitch contact your vet for advice.
If the bleeding seems to be getting heavier, contact your vet.",
"It is normal for bitches to loose a small amount of blood when they are in season.
Some behaviour changes are also normal and include restlessness, nervousness and increased attractiveness to male dogs.",
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
"Inform your vet practice that your bitch is pregnant, they will be able to give you important advice about worming, diet and care and may want to check her over.",
"It is normal for the abdomen to be distended during pregnancy, and this on its own is not usually a cause for concern.
If the distension has increased dramatically in a short space of time it could suggest a serious condition such a a twisted stomach or internal bleeding - in this case contact your vet immediately.
If you have any other concerns about your bitch or if your bitch has any other symptoms contact your vet.",
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
"A dog that is bloated and off color could be suffering from life threatening condition such as heart failure, internal bleeding or a tumor. Your dog needs to be checked over by a vet urgently.",
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
"A dog that is bloated and off color could be suffering from life threatening condition such as heart failure, internal bleeding or a tumor.
A blue tinge to the gums or 'cyanosis' is a sign that your dog is not getting enough oxygen around its body. Your dog needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 31
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Try to keep your dog warm, quiet and calm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.",
"A dog that is bloated and off color could be suffering from life threatening condition such as heart failure, internal bleeding or a tumor.
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
"A dog that is bloated and off color could be suffering from life threatening condition such as heart failure, internal bleeding or a tumor.
Very pale gums can be a sign of shock, failure of the circulation, or blood loss. These can be life threatening and your dog needs urgent veterinary treatment.",
3);

INSERT INTO screening_results (do_next, first_aid_advice, problem, result_priority) VALUES # ID: 35
("Your vet may give you telephone advice or may ask to see you.
Always telephone the vets before going to the practice. The vet may need to give you special instructions or an appointment time.
Take care. When dogs are injured or ill they may accidentally bite or scratch.",
"Keep your dog warm.
Do not try to feed your dog until you have checked with your vet practice that it is ok to do so.
If the opportunity arises before you get to the vets, collect a urine sample from your dog.",
"A dog that is bloated and off color could be suffering from life threatening condition such as heart failure, liver disease, internal bleeding or a tumor.
Yellow tinged gums are a sign of jaundice which can be caused by liver or blood problems. These conditions can be life threatening and your dog requires urgent veterinary treatment.",
3);

# ----------------------------------------------------------------------------------------------------------------------------------

INSERT INTO screening_options (question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(1, false, "Bleeding", NULL, 2),
 (1, false, "Bloated", NULL, 17),
 (1, false, "Breathing problems", NULL, NULL), # NEXT SET TO COMPLETE!
 (1, false, "Collapsed", NULL, NULL),
 (1, false, "Coughing or wheezing", NULL, NULL),
 (1, false, "Diarrhoea", NULL, NULL),
 (1, false, "Drinking more than usual", NULL, NULL),
 (1, false, "Drooing or dribbling", NULL, NULL),
 (1, false, "Ear problems", NULL, NULL),
 (1, false, "Eye problems", NULL, NULL),
 (1, false, "Fits", NULL, NULL),
 (1, false, "Funny turn", NULL, NULL),
 (1, false, "Itching", NULL, NULL),
 (1, false, "Lameness or limping", NULL, NULL),
 (1, false, "Lump or swelling", NULL, NULL),
 (1, false, "Moulting", NULL, NULL),
 (1, false, "Nail problems", NULL, NULL),
 (1, false, "Not eating", NULL, NULL),
 (1, false, "Off color", NULL, NULL),
 (1, false, "Poison exposure", NULL, NULL),
 (1, false, "Problems after surgery", NULL, NULL),
 (1, false, "Smelly", NULL, NULL),
 (1, false, "Sneezing", NULL, NULL),
 (1, false, "Straining", NULL, NULL),
 (1, false, "Ticks", NULL, NULL),
 (1, false, "Vomitting", NULL, NULL),
 (1, false, "Weight loss", NULL, NULL),
 (1, false, "Wound", NULL, NULL),
 (1, false, "Young puppies", NULL, NULL);

 INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(2, false, "Wound", NULL, 3),
(2, false, "Mouth", NULL, 6),
(2, false, "Nose", NULL, 8), 
(2, false, "Vulva", NULL, 10), 
(2, false, "Stools", NULL, 12),
(2, true, "Vomit or coughing up", 23, NULL);

 INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(3, true, "Trickling, streaming, or pulsing out", 1, NULL),
(3, false, "A few drops", NULL, 4);

 INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(4, true, "Burn (heat or chemical)", 2, NULL),
(4, false, "Graze (less than skin depth)", NULL, 5),
(4, true, "Laceration (skin depth or deeper)", 5, NULL),
(4, true, "Puncture wound (unknown depth)", 6, NULL);

 INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(5, true, "Yes", 3, NULL),
(5, true, "No", 4, NULL);

 INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(6, true, "Trickling, streaming, or pulsing out", 7, NULL),
(6, false, "A few drops", NULL, 7);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(7, true, "Yes", 8, NULL),
(7, true, "No", 9, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(8, true, "Trickling, streaming, or pulsing out", 10, NULL),
(8, false, "A few drops", NULL, 9);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(9, true, "Yes", 11, NULL),
(9, true, "No", 12, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(10, true, "Trickling, streaming, or pulsing out", 13, NULL),
(10, false, "A few drops", NULL, 11);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(11, true, "Yes", 14, NULL),
(11, true, "No", 15, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(12, true, "Distributed throughout or a black appearence", 16, NULL),
(12, true, "More than a trace on the outside of the stool", 17, NULL),
(12, false, "Trace of blood on the outside of the stool", NULL, 13);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(13, true, "Yes", 18, NULL),
(13, false, "No", NULL, 14);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(14, false, "Yes", NULL, 15),
(14, true, "No", 19, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(15, true, "Yes", 20, NULL),
(15, false, "No", NULL, 16);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(16, true, "Yes", 21, NULL),
(16, true, "No", 22, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(17, true, "Yes", 24, NULL),
(17, false, "No", NULL, 18);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(18, false, "Yes", NULL, 19),
(18, true, "No", 25, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(19, true, "Yes", 26, NULL),
(19, false, "No", NULL, 20);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(20, false, "Yes", NULL, 21),
(20, true, "No", 27, NULL);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(21, true, "Yes", 28, NULL),
(21, false, "No", NULL, 22);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(22, true, "Yes", 29, NULL),
(22, false, "No", NULL, 23);

INSERT INTO screening_options ( question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(23, true, "Blue tinged", 30, NULL),
(23, true, "Brick red", 31, NULL),
(23, true, "Can't tell", 32, NULL),
(23, true, "Similar to cooked salmon", 33, NULL),
(23, true, "White or very pale", 34, NULL),
(23, true, "Yellow tinged", 35, NULL);