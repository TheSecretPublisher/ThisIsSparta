UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=15;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=15) AND action_param1 = 79619;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,1000,3000,3000,6000,11,79619,0,0,0,0,0,2,0,0,0,0,0,0,0,'drain life felhunter' from `creature_template` where `rank`=0 AND family=15);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=15) AND action_param1 = 13321;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,1000,3000,1000,5000,11,13321,0,0,0,0,0,2,0,0,0,0,0,0,0,'mana burn felhunter' from `creature_template` where `rank`=0 AND family=15);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=15) AND action_param1 = 30849;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,13,0,75,0,3000,15000,0,0,11,30849,2,0,0,0,0,2,0,0,0,0,0,0,0,'spell lock felhunter' from `creature_template` where `rank`=0 AND family=15);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=16;
UPDATE `creature_template` SET `family`=16 WHERE `rank`=0 AND name LIKE '%voidwalker%';
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=16) AND action_param1 = 34259;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,50,0,1000,3000,6000,10000,11,34259,0,0,0,0,0,2,0,0,0,0,0,0,0,'fear voidwalker' from `creature_template` where `rank`=0 AND family=16);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=16) AND action_param1 = 34233;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,2,2,0,100,0,1,20,0,0,11,34233,0,0,0,0,0,1,0,0,0,0,0,0,0,'collapse voidwalker' from `creature_template` where `rank`=0 AND family=16);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=16) AND action_param1 = 34234;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,6,0,100,0,0,0,0,0,11,34234,2,0,0,0,0,0,0,0,0,0,0,0,0,'collapse2 voidwalker' from `creature_template` where `rank`=0 AND family=16);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=17;
UPDATE `creature_template` SET `family`=17 WHERE `rank`=0 AND name LIKE '%succubus%';
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=17) AND action_param1 = 31865;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,50,0,3000,6000,6000,10000,11,31865,0,0,0,0,0,2,0,0,0,0,0,0,0,'seduction succubus' from `creature_template` where `rank`=0 AND family=17);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=17) AND action_param1 = 131485;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,1000,3000,3000,6000,11,131485,2,0,0,0,0,2,0,0,0,0,0,0,0,'crack the whip succubus' from `creature_template` where `rank`=0 AND family=17);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=17) AND action_param1 = 131486;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,8000,10000,15000,11,131486,0,0,0,0,0,2,0,0,0,0,0,0,0,'enticing succubus' from `creature_template` where `rank`=0 AND family=17);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=19;
UPDATE `creature_template` SET `family`=19 WHERE `rank`=0 AND name LIKE '%doomguard%';
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=19) AND action_param1 = 38742;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,38742,2,0,0,0,0,2,0,0,0,0,0,0,0,'fel cleave doomguard' from `creature_template` where `rank`=0 AND family=19);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=19) AND action_param1 = 84502;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,84502,0,0,0,0,0,2,0,0,0,0,0,0,0,'rain of chaos doomguard' from `creature_template` where `rank`=0 AND family=19);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=19) AND action_param1 = 84451;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,84451,2,0,0,0,0,2,0,0,0,0,0,0,0,'wing buffet doomguard' from `creature_template` where `rank`=0 AND family=19);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=20;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=20) AND action_param1 = 26050;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,26050,2,0,0,0,0,2,0,0,0,0,0,0,0,'acid spit scorpid' from `creature_template` where `rank`=0 AND family=20);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=20) AND action_param1 = 6016;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,6016,2,0,0,0,0,2,0,0,0,0,0,0,0,'pierce armor scorpid' from `creature_template` where `rank`=0 AND family=20);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=20) AND action_param1 = 22412;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,22412,2,0,0,0,0,2,0,0,0,0,0,0,0,'virulent poison scorpid' from `creature_template` where `rank`=0 AND family=20);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=21;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=21) AND action_param1 = 80604;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,80604,2,0,0,0,0,2,0,0,0,0,0,0,0,'snap turtle' from `creature_template` where `rank`=0 AND family=21);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=21) AND action_param1 = 83488;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,2,0,100,0,1,50,0,0,11,83488,2,0,0,0,0,2,0,0,0,0,0,0,0,'shell turtle' from `creature_template` where `rank`=0 AND family=21);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=21) AND action_param1 = 78799;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,78799,2,0,0,0,0,2,0,0,0,0,0,0,0,'knockback turtle' from `creature_template` where `rank`=0 AND family=21);

UPDATE `creature_template` SET `family`=23 WHERE `rank`=0 AND name LIKE '%Imp';
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=23;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=23) AND action_param1 = 36227;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,1000,2000,2000,4000,11,36227,0,0,0,0,0,2,0,0,0,0,0,0,0,'felfirebolt imp' from `creature_template` where `rank`=0 AND family=23);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=23) AND action_param1 = 13340;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,13340,2,0,0,0,0,2,0,0,0,0,0,0,0,'fire blast imp' from `creature_template` where `rank`=0 AND family=23);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=24;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=24) AND action_param1 = 50519;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,60,0,3000,6000,6000,10000,11,50519,2,0,0,0,0,2,0,0,0,0,0,0,0,'screech bat' from `creature_template` where `rank`=0 AND family=24);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=24) AND action_param1 = 29363;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,29363,0,0,0,0,0,2,0,0,0,0,0,0,0,'drain touch bat' from `creature_template` where `rank`=0 AND family=24);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=24) AND action_param1 = 54663;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,54663,2,0,0,0,0,2,0,0,0,0,0,0,0,'fatal bite bat' from `creature_template` where `rank`=0 AND family=24);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=25;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=25) AND action_param1 = 82797;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,82797,2,0,0,0,0,2,0,0,0,0,0,0,0,'leaping bite hyena' from `creature_template` where `rank`=0 AND family=25);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=25) AND action_param1 = 13445;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,13445,2,0,0,0,0,2,0,0,0,0,0,0,0,'rend hyena' from `creature_template` where `rank`=0 AND family=25);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=25) AND action_param1 = 3604;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,3604,2,0,0,0,0,2,0,0,0,0,0,0,0,'cripple hyena' from `creature_template` where `rank`=0 AND family=25);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=26;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=26) AND action_param1 = 49865;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,49865,2,0,0,0,0,2,0,0,0,0,0,0,0,'eye peck owl' from `creature_template` where `rank`=0 AND family=26);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=26) AND action_param1 = 81680;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,81680,2,0,0,0,0,2,0,0,0,0,0,0,0,'screech owl' from `creature_template` where `rank`=0 AND family=26);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=26) AND action_param1 = 3391;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,1000,6000,4000,8000,11,3391,2,0,0,0,0,1,0,0,0,0,0,0,0,'thrash owl' from `creature_template` where `rank`=0 AND family=26);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=27;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=27) AND action_param1 = 57780;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,57780,0,0,0,0,0,2,0,0,0,0,0,0,0,'lightning bolt wind serpent' from `creature_template` where `rank`=0 AND family=27);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=27) AND action_param1 = 24844;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,24844,0,0,0,0,0,2,0,0,0,0,0,0,0,'lightning breath wind serpent' from `creature_template` where `rank`=0 AND family=27);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=27) AND action_param1 = 59220;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,59220,0,0,0,0,0,2,0,0,0,0,0,0,0,'chain lightning wind serpent' from `creature_template` where `rank`=0 AND family=27);
