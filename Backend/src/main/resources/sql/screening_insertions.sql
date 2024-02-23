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

# ----------------------------------------------------------------------------------------------------------------------------------

INSERT INTO screening_options (question_id, is_terminating, option_text, result_id, next_question_id) VALUES
(1, false, "Bleeding", NULL, 2),
 (1, false, "Bloated", NULL, NULL),
 (1, false, "Breathing problems", NULL, NULL),
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
(2, false, "Mouth", NULL, NULL), # NEXT SET TO COMPLETE!
(2, false, "Nose", NULL, NULL),
(2, false, "Vulva", NULL, NULL),
(2, false, "Stools", NULL, NULL),
(2, false, "Vomit or coughing up", NULL, NULL);

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