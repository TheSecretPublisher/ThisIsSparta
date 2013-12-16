UPDATE `creature_template` SET `family`=29 WHERE `rank`=0 AND name LIKE '%felguard%';
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=29;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=29) AND action_param1 = 22120;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,4,0,100,0,0,0,0,0,11,22120,2,0,0,0,0,2,0,0,0,0,0,0,0,'Charge felguard' from `creature_template` where `rank`=0 AND family=29);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=29) AND action_param1 = 15496;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,15496,2,0,0,0,0,2,0,0,0,0,0,0,0,'cleave felguard' from `creature_template` where `rank`=0 AND family=29);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=29) AND action_param1 = 8599;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,2,0,100,1,1,35,0,0,11,8599,2,0,0,0,0,1,0,0,0,0,0,0,0,'enrage felguard' from `creature_template` where `rank`=0 AND family=29);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=30;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=30) AND action_param1 = 43299;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,43299,0,0,0,0,0,2,0,0,0,0,0,0,0,'fire blast dragonhawk' from `creature_template` where `rank`=0 AND family=30);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=30) AND action_param1 = 29117;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,29117,2,0,0,0,0,2,0,0,0,0,0,0,0,'feather burst dragonhawk' from `creature_template` where `rank`=0 AND family=30);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=30) AND action_param1 = 37985;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,37985,0,0,0,0,0,2,0,0,0,0,0,0,0,'fire breath dragonhawk' from `creature_template` where `rank`=0 AND family=30);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=31;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=31) AND action_param1 = 3242;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,3242,2,0,0,0,0,2,0,0,0,0,0,0,0,'ravage ravager' from `creature_template` where `rank`=0 AND family=31);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=31) AND action_param1 = 13443;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,13443,2,0,0,0,0,2,0,0,0,0,0,0,0,'feather burst dragonhawk' from `creature_template` where `rank`=0 AND family=31);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=31) AND action_param1 = 15716;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,2,0,100,1,1,35,0,0,11,15716,2,0,0,0,0,1,0,0,0,0,0,0,0,'enrage ravager' from `creature_template` where `rank`=0 AND family=31);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=32;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=32) AND action_param1 = 37417;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,4,0,100,0,0,0,0,0,11,37417,2,0,0,0,0,2,0,0,0,0,0,0,0,'Charge warp stalker' from `creature_template` where `rank`=0 AND family=32);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=32) AND action_param1 = 32739;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,32739,2,0,0,0,0,2,0,0,0,0,0,0,0,'venomous bite warp charger' from `creature_template` where `rank`=0 AND family=32);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=32) AND action_param1 = 32920;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,32920,2,0,0,0,0,2,0,0,0,0,0,0,0,'warp warp stalker' from `creature_template` where `rank`=0 AND family=32);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=32) AND action_param1 = 32943;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,3,3,2,0,100,1,1,35,0,0,11,32943,2,0,0,0,0,1,0,0,0,0,0,0,0,'phasing invisibility warp stalker' from `creature_template` where `rank`=0 AND family=32);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=33;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=33) AND action_param1 = 35394;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,1000,3000,1000,3000,11,35394,0,0,0,0,0,2,0,0,0,0,0,0,0,'spore cloud sporebat' from `creature_template` where `rank`=0 AND family=33);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=16) AND action_param1 = 35336;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,6,0,100,0,0,0,0,0,11,35336,2,0,0,0,0,2,0,0,0,0,0,0,0,'Energizing spores sporebat' from `creature_template` where `rank`=0 AND family=16);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=34;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=34) AND action_param1 = 17008;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,17008,0,0,0,0,0,2,0,0,0,0,0,0,0,'drain mana nether ray' from `creature_template` where `rank`=0 AND family=34);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=34) AND action_param1 = 35334;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,35334,0,0,0,0,0,2,0,0,0,0,0,0,0,'nether shock nether ray' from `creature_template` where `rank`=0 AND family=34);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=34) AND action_param1 = 36659;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,36659,2,0,0,0,0,2,0,0,0,0,0,0,0,'tail sting nether ray' from `creature_template` where `rank`=0 AND family=34);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=35;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=35) AND action_param1 = 32093;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,32093,0,0,0,0,0,2,0,0,0,0,0,0,0,'poison spit serpent' from `creature_template` where `rank`=0 AND family=35);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=35) AND action_param1 = 12097;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,12097,2,0,0,0,0,2,0,0,0,0,0,0,0,'pierce armor serpent' from `creature_template` where `rank`=0 AND family=35);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=35) AND action_param1 = 24002;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,6000,10000,11,24002,2,0,0,0,0,2,0,0,0,0,0,0,0,'tranquilizing poison serpent' from `creature_template` where `rank`=0 AND family=35);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=37;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=37) AND action_param1 = 45610;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,45610,2,0,0,0,0,2,0,0,0,0,0,0,0,'pollen moth' from `creature_template` where `rank`=0 AND family=37);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=37) AND action_param1 = 32914;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,8000,6000,8000,11,32914,0,0,0,0,0,2,0,0,0,0,0,0,0,'wing buffet moth' from `creature_template` where `rank`=0 AND family=37);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=37) AND action_param1 = 32913;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,1000,8000,8000,19000,11,32913,2,0,0,0,0,2,0,0,0,0,0,0,0,'pacify moth' from `creature_template` where `rank`=0 AND family=37);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=38;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=38) AND action_param1 = 15797;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,15797,0,0,0,0,0,2,0,0,0,0,0,0,0,'lightning breath chimaera' from `creature_template` where `rank`=0 AND family=38);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=38) AND action_param1 = 16552;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,16552,0,0,0,0,0,2,0,0,0,0,0,0,0,'venom spit chimaera' from `creature_template` where `rank`=0 AND family=38);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=38) AND action_param1 = 8599;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,2,0,100,1,1,35,0,0,11,8599,2,0,0,0,0,1,0,0,0,0,0,0,0,'enrage chimaera' from `creature_template` where `rank`=0 AND family=38);

UPDATE `creature_template` SET `family`=39 WHERE `rank`=0 AND name LIKE '%devilsaur%';
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=39;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=39) AND action_param1 = 35321;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,35321,2,0,0,0,0,2,0,0,0,0,0,0,0,'gushing wound devilsaur' from `creature_template` where `rank`=0 AND family=39);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=39) AND action_param1 = 36629;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,1000,8000,6000,18000,11,36629,2,0,0,0,0,2,0,0,0,0,0,0,0,'terrifying roar devilsaur' from `creature_template` where `rank`=0 AND family=39);

UPDATE `creature_template` SET `family`=40 WHERE `rank`=0 AND name LIKE '%ghoul%';
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=40;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=40) AND action_param1 = 38056;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,38056,2,0,0,0,0,2,0,0,0,0,0,0,0,'flesh rip ghoul' from `creature_template` where `rank`=0 AND family=40);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=40) AND action_param1 = 12097;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,12097,2,0,0,0,0,2,0,0,0,0,0,0,0,'pierce armor ghoul' from `creature_template` where `rank`=0 AND family=40);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=40) AND action_param1 = 15716;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,2,0,100,1,1,70,0,0,11,15716,2,0,0,0,0,1,0,0,0,0,0,0,0,'enrage ghoul' from `creature_template` where `rank`=0 AND family=40);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=41;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=41) AND action_param1 = 81224;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,81224,2,0,0,0,0,2,0,0,0,0,0,0,0,'silithid toxin silithid' from `creature_template` where `rank`=0 AND family=41);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=41) AND action_param1 = 83574;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,83574,0,0,0,0,0,2,0,0,0,0,0,0,0,'acidic adhesive silithid' from `creature_template` where `rank`=0 AND family=41);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=41) AND action_param1 = 8137;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,8137,0,0,0,0,0,2,0,0,0,0,0,0,0,'silithid pox silithid' from `creature_template` where `rank`=0 AND family=41);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=41) AND action_param1 = 3391;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,3,3,0,0,100,0,1000,6000,4000,8000,11,3391,2,0,0,0,0,1,0,0,0,0,0,0,0,'thrash silithid' from `creature_template` where `rank`=0 AND family=41);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=42;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=42) AND action_param1 = 21059;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,21059,0,0,0,0,0,2,0,0,0,0,0,0,0,'acid spit worm' from `creature_template` where `rank`=0 AND family=42);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=42) AND action_param1 = 6607;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,6607,2,0,0,0,0,2,0,0,0,0,0,0,0,'lash worm' from `creature_template` where `rank`=0 AND family=42);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=42) AND action_param1 = 33126;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,1,3000,6000,3000,6000,11,33126,2,0,0,0,0,2,0,0,0,0,0,0,0,'dropped weapon worm' from `creature_template` where `rank`=0 AND family=42);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=42) AND action_param1 = 66954;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,3,3,0,0,100,0,3000,6000,3000,6000,11,66954,0,0,0,0,0,2,0,0,0,0,0,0,0,'acidic strike worm' from `creature_template` where `rank`=0 AND family=42);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=43;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=43) AND action_param1 = 55193;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,55193,2,0,0,0,0,1,0,0,0,0,0,0,0,'rhino charge rhino' from `creature_template` where `rank`=0 AND family=43);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=43) AND action_param1 = 51944;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,51944,2,0,0,0,0,2,0,0,0,0,0,0,0,'trample rhino' from `creature_template` where `rank`=0 AND family=43);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=43) AND action_param1 = 50502;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,1,0,100,0,1000,2000,6000,8000,11,50502,2,0,0,0,0,1,0,0,0,0,0,0,0,'thick hide rhino' from `creature_template` where `rank`=0 AND family=43);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=44;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=44) AND action_param1 = 35331;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,1000,3000,1000,4000,11,35331,2,0,0,0,0,2,0,0,0,0,0,0,0,'black blood wasp' from `creature_template` where `rank`=0 AND family=44);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=44) AND action_param1 = 34392;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,34392,0,0,0,0,0,2,0,0,0,0,0,0,0,'stinger rage wasp' from `creature_template` where `rank`=0 AND family=44);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=44) AND action_param1 = 17170;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,2,2,0,100,0,1,25,0,0,11,17170,0,0,0,0,0,2,0,0,0,0,0,0,0,'fatal sting wasp' from `creature_template` where `rank`=0 AND family=44);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `rank`=0 AND family=45;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=45) AND action_param1 = 87356;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,3000,6000,11,87356,0,0,0,0,0,2,0,0,0,0,0,0,0,'cauterizing flames core hound' from `creature_template` where `rank`=0 AND family=45);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `rank`=0 AND `family`=45) AND action_param1 = 84867;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,1000,3000,2000,5000,11,84867,2,0,0,0,0,2,0,0,0,0,0,0,0,'sundering swipe core hound' from `creature_template` where `rank`=0 AND family=45);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE family=46;
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `family`=46) AND action_param1 = 75002;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,0,0,0,0,100,0,3000,6000,4000,8000,11,75002,0,0,0,0,0,2,0,0,0,0,0,0,0,'leap spirit beast' from `creature_template` where family=46);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `family`=46) AND action_param1 = 61186;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,1,1,0,0,100,0,3000,6000,3000,6000,11,61186,0,0,0,0,0,2,0,0,0,0,0,0,0,'frozen bite spirit beast' from `creature_template` where family=46);
DELETE FROM smart_scripts WHERE entryorguid IN (SELECT `entry` from `creature_template` where `family`=46) AND action_param1 = 61184;
INSERT IGNORE INTO smart_scripts (SELECT `entry`,0,2,2,0,0,100,0,3000,6000,3000,6000,11,61184,0,0,0,0,0,2,0,0,0,0,0,0,0,'pounce spirit beast' from `creature_template` where  family=46);