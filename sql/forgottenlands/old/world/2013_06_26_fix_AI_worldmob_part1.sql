UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=5;
UPDATE `creature_template` SET `family`=5 WHERE `rank`=0 AND name LIKE '%swine';
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=5) AND action_param1 = 88288;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,4,0,100,0,0,0,0,0,11,88288,0,0,0,0,0,2,0,0,0,0,0,0,0,'Charge dei Boar' from `creature_template` where `rank`=0 AND family=5);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=5) AND action_param1 = 79581;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,1000,3000,6000,8000,11,79581,2,0,0,0,0,2,0,0,0,0,0,0,0,'dannino e stun dei Boar' from `creature_template` where `rank`=0 AND family=5);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=5) AND action_param1 = 84873;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,2,0,100,1,1,35,0,0,11,84873,2,0,0,0,0,1,0,0,0,0,0,0,0,'difesa boar' from `creature_template` where `rank`=0 AND family=5);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=1;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=1) AND action_type = 39;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,4,0,100,0,0,0,0,0,39,40,1,0,0,0,0,0,0,0,0,0,0,0,0,'call for help wolf' from `creature_template` where `rank`=0 AND family=1);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=1) AND action_param1 = 3149;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,1000,3000,6000,8000,11,3149,2,0,0,0,0,1,0,0,0,0,0,0,0,'shout wolf' from `creature_template` where `rank`=0 AND family=1);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=1) AND action_param1 = 16460;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,1000,3000,6000,8000,11,16460,2,0,0,0,0,2,0,0,0,0,0,0,0,'unghiata wolf' from `creature_template` where `rank`=0 AND family=1);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=2;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=2) AND action_param1 = 75002;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,4,0,100,0,0,0,0,0,11,75002,0,0,0,0,0,2,0,0,0,0,0,0,0,'Charge dei cat' from `creature_template` where `rank`=0 AND family=2);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=2) AND action_param1 = 75930;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,1000,3000,6000,8000,11,75930,2,0,0,0,0,2,0,0,0,0,0,0,0,'danno cat' from `creature_template` where `rank`=0 AND family=2);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=2) AND action_param1 = 43358;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,1000,3000,6000,8000,11,43358,2,0,0,0,0,2,0,0,0,0,0,0,0,'debuff cat' from `creature_template` where `rank`=0 AND family=2);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=3;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=3) AND action_param1 = 4962;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,1000,3000,3000,8000,11,4962,0,0,0,0,0,2,0,0,0,0,0,0,0,'ragnatela spiders' from `creature_template` where `rank`=0 AND family=3);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=3) AND action_param1 = 744;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,1000,3000,3000,8000,11,744,2,0,0,0,0,2,0,0,0,0,0,0,0,'poison spider' from `creature_template` where `rank`=0 AND family=3);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=3) AND action_param1 = 85826;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,1000,3000,3000,8000,11,85826,2,0,0,0,0,2,0,0,0,0,0,0,0,'blind spider' from `creature_template` where `rank`=0 AND family=3);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=4;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=4) AND action_param1 = 31279;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,1000,3000,3000,8000,11,31279,0,0,0,0,0,2,0,0,0,0,0,0,0,'swipe bear' from `creature_template` where `rank`=0 AND family=4);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=4) AND action_param1 = 50256;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,2,0,100,0,1,60,0,0,11,50256,2,0,0,0,0,2,0,0,0,0,0,0,0,'demoralizing roar bear' from `creature_template` where `rank`=0 AND family=4);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=4) AND action_param1 = 84868;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,2,0,100,1,1,60,0,0,11,84868,2,0,0,0,0,1,0,0,0,0,0,0,0,'hibernate bear' from `creature_template` where `rank`=0 AND family=4);
