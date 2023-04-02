UPDATE `quest_template` SET `Details` = 'So, $N, the footprints were definitely quillboar hooves. I followed them well into the Barrens, thinking they would lead me to the Kraul. I was wrong. The raiding party actually stopped just outside Bael Modan, which makes your job easier.$B$BVenturing into the Kraul... The mere thought makes me shudder.$B$BBack to the topic. The camp is north of Bael Modan, close to the road. You should have no trouble finding it. Try to sneak in, or kill them all. Doesn\'t matter to me. What is important - find some evidence, maybe some items that could\'ve been taken from the inn.$B$BAnd to address the elephant in the room: the orc. He said that he is here to investigate the inn too. I\'m keeping an eye on him- I don\'t trust him. I feel like the Horde is trying to cover up something. Good luck.' WHERE `entry` = 40549;

UPDATE `creature_template` SET `scale` = 1.3 WHERE `entry` = 51545;

UPDATE `gameobject_template` SET `name` = 'Little sproutling. It yearns for fertile soil!' WHERE `entry` = 1000337;

-- https://github.com/slowtorta/turtlewow-bug-tracker/issues/3053

UPDATE `quest_template` SET `RewChoiceItemCount3` = 1 WHERE `entry` = 40677;