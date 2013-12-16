UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=6;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=6) AND action_param1 = 48287;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,1000,3000,1000,5000,11,48287,0,0,0,0,0,2,0,0,0,0,0,0,0,'powerful bite crocolisk' from `creature_template` where `rank`=0 AND family=6);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=6) AND action_param1 = 87228;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,2,0,100,0,1,60,0,0,11,87228,2,0,0,0,0,1,0,0,0,0,0,0,0,'thick hide crocolisk' from `creature_template` where `rank`=0 AND family=6);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=6) AND action_param1 = 13445;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,1000,3000,1000,5000,11,13445,0,0,0,0,0,2,0,0,0,0,0,0,0,'rend crocolisk' from `creature_template` where `rank`=0 AND family=6);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=7;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=7) AND action_param1 = 24423;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,1000,3000,1000,5000,11,24423,0,0,0,0,0,2,0,0,0,0,0,0,0,'screech carrion bird' from `creature_template` where `rank`=0 AND family=7);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=7) AND action_param1 = 81179;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,2,0,100,0,1,80,0,0,11,81179,2,0,0,0,0,1,0,0,0,0,0,0,0,'dmg carrion bird' from `creature_template` where `rank`=0 AND family=7);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=7) AND action_param1 = 3427;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,1000,3000,1000,5000,11,3427,0,0,0,0,0,2,0,0,0,0,0,0,0,'debuff carrion bird' from `creature_template` where `rank`=0 AND family=7);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=8;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=8) AND action_param1 = 49978;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,1000,6000,1000,5000,11,49978,0,0,0,0,0,2,0,0,0,0,0,0,0,'pinch crab' from `creature_template` where `rank`=0 AND family=8);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=8) AND action_param1 = 79175;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,5000,6000,4000,8000,11,79175,0,0,0,0,0,2,0,0,0,0,0,0,0,'slash crab' from `creature_template` where `rank`=0 AND family=8);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=8) AND action_param1 = 78744;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,5000,6000,4000,8000,11,78744,0,0,0,0,0,2,0,0,0,0,0,0,0,'bubble crab' from `creature_template` where `rank`=0 AND family=8);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=9;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=9) AND action_param1 = 53148;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,4,0,100,0,0,0,0,0,11,53148,0,0,0,0,0,2,0,0,0,0,0,0,0,'Charge dei gorilla' from `creature_template` where `rank`=0 AND family=9);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=9) AND action_param1 = 81140;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,1000,3000,3000,6000,11,81140,0,0,0,0,0,2,0,0,0,0,0,0,0,'thunderstomp gorilla' from `creature_template` where `rank`=0 AND family=9);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=9) AND action_param1 = 83378;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,83378,0,0,0,0,0,2,0,0,0,0,0,0,0,'stomp gorilla' from `creature_template` where `rank`=0 AND family=9);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=11;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=11) AND action_param1 = 6607;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,2,0,100,1,1,30,0,0,11,6607,2,0,0,0,0,2,0,0,0,0,0,0,0,'lash raptor' from `creature_template` where `rank`=0 AND family=11);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=11) AND action_param1 = 3393;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,2,0,100,1,1,30,0,0,11,3393,2,0,0,0,0,2,0,0,0,0,0,0,0,'bite raptor' from `creature_template` where `rank`=0 AND family=11);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=11) AND action_param1 = 7938;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,7938,0,0,0,0,0,2,0,0,0,0,0,0,0,'drain raptor' from `creature_template` where `rank`=0 AND family=11);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=12;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=12) AND action_param1 = 81678;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,81678,0,0,0,0,0,2,0,0,0,0,0,0,0,'eye peck tallstrider' from `creature_template` where `rank`=0 AND family=12);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=12) AND action_param1 = 66060;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,2,0,100,1,1,30,0,0,11,66060,2,0,0,0,0,2,0,0,0,0,0,0,0,'sprint tallstrider' from `creature_template` where `rank`=0 AND family=12);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=12) AND action_type = 25;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,2,0,100,1,1,30,0,0,25,0,2,0,0,0,0,0,0,0,0,0,0,0,0,'flee tallstrider' from `creature_template` where `rank`=0 AND family=12);