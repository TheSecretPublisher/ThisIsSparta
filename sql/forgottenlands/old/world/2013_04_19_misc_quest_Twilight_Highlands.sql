-- Fix some wrong creature/object spawn
UPDATE `creature` SET `phaseMask`='1' WHERE (`id`='48194');
DELETE FROM `creature` WHERE (`id`='50049');
INSERT INTO `creature` VALUES (null, 50049, 0, 1, 1, 0, 0, -8654.47, 1080.65, 114.361, 3.96007, 300, 0, 0, 90294, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='125', `faction_H`='125' WHERE (`entry`='47492');
DELETE FROM `creature` WHERE (`id`='42107');
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 0, -4251.92, -2374.44, 204.861, 5.91667, 120, 0, 0, 1, 0, 0, 0, 0, 0);
DELETE FROM `gameobject` WHERE (`id`='206569');
INSERT INTO `gameobject` VALUES (null, 206569, 0, 1, 1, -3333.8, -5491.07, 51.4686, 0.146283, 0, 0, 0.0730763, 0.997326, 300, 0, 1);
DELETE FROM `gameobject` WHERE (`id`='207735');
INSERT INTO `gameobject` VALUES (null, 207735, 730, 1, 1, 847.821, 1042.33, -6.17743, 4.23757, 0, 0, 0.853575, -0.52097, 300, 0, 1);
DELETE FROM `creature` WHERE (`id`='46323');
INSERT INTO `creature` VALUES (null, 46323, 0, 1, 1, 0, 0, -3658.7, -5248.77, 42.1382, 2.73027, 300, 0, 0, 46, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='49762');
INSERT INTO `creature` VALUES (null, 49762, 0, 1, 1, 0, 0, -3663.97, -5246.13, 42.1394, 4.63879, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='47261');
INSERT INTO `creature` VALUES (null, 47261, 0, 1, 1, 0, 0, -3660.75, -5247.03, 42.1394, 4.18718, 300, 0, 0, 21, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47261, 0, 1, 1, 0, 0, -3174.88, -5049.87, 121, 3.17602, 300, 0, 0, 21, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='45414');
INSERT INTO `creature` VALUES (null, 45414, 0, 1, 1, 0, 0, -2613.72, -4958.76, -128.961, 4.01437, 300, 0, 0, 464940, 53448, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45414, 0, 1, 1, 0, 0, -2612.36, -4972.53, -127.26, 2.04302, 300, 0, 0, 464940, 53448, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45414, 0, 1, 1, 0, 0, -2657.3, -5028.66, -127.59, 2.97372, 300, 0, 0, 464940, 53448, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45414, 0, 1, 1, 0, 0, -2670.91, -5031.92, -127.619, 0.268018, 300, 0, 0, 464940, 53448, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='47991');
INSERT INTO `creature` VALUES (null, 47991, 0, 1, 1, 0, 0, -2663.3, -4977.22, -128.807, 2.34539, 300, 0, 0, 464940, 26724, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='47960');
DELETE FROM `creature` WHERE (`id`='45426');
INSERT INTO `creature` VALUES (null, 45426, 0, 1, 1, 0, 0, -2674.72, -4980.76, -128.807, 1.28903, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45426, 0, 1, 1, 0, 0, -2682.3, -4970.19, -128.807, 0.000976086, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45426, 0, 1, 1, 0, 0, -2663.47, -4964.8, -128.801, 3.69235, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45426, 0, 1, 1, 0, 0, -2673.6, -4960.97, -128.807, 4.96076, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='47999');
INSERT INTO `creature` VALUES (null, 47999, 0, 1, 1, 0, 0, -2667.67, -4983.15, -128.809, 1.85452, 300, 0, 0, 464940, 26724, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='48000');
INSERT INTO `creature` VALUES (null, 48000, 0, 1, 1, 0, 0, -2672.28, -4969.97, -128.808, 5.89539, 300, 0, 0, 3874500, 44540, 0, 0, 0, 0);
UPDATE `creature_template` SET `modelid2`='0' WHERE (`entry`='48000');
DELETE FROM `creature_template_addon` WHERE (`entry`='48000');
INSERT INTO `creature_template_addon` VALUES (48000, 0, 0, 65536, 1, 0, '89242');
DELETE FROM `creature` WHERE (`id`='45413');
INSERT INTO `creature` VALUES (null, 45413, 0, 1, 1, 0, 0, -2683.19, -4935.39, -129.534, 3.18654, 300, 0, 0, 464940, 53448, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45413, 0, 1, 1, 0, 0, -2699.81, -4940.32, -129.911, 5.75087, 300, 0, 0, 464940, 53448, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45413, 0, 1, 1, 0, 0, -2719.51, -4959.83, -128.213, 4.66309, 300, 0, 0, 464940, 53448, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45413, 0, 1, 1, 0, 0, -2737.02, -4969.49, -129.796, 4.47066, 300, 0, 0, 464940, 53448, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45413, 0, 1, 1, 0, 0, -2709.38, -4987.92, -127.238, 0.0881398, 300, 0, 0, 464940, 53448, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47991');
DELETE FROM smart_scripts WHERE entryorguid IN (47991);
INSERT INTO `smart_scripts` VALUES (47991, 0, 1, 0, 1, 0, 100, 0, 0,0,0,0,11, 97935, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'pre cast spell state');
DELETE FROM `creature` WHERE (`id`='45435');
INSERT INTO `creature` VALUES (null, 45435, 0, 1, 1, 0, 0, -2543.79, -4784.12, 179.672, 4.16922, 3, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45435, 0, 1, 1, 0, 0, -2530.11, -4783.5, 179.925, 4.16922, 3, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45435, 0, 1, 1, 0, 0, -2522.56, -4782.37, 179.925, 4.16922, 3, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 27947 A Vision of Twilight CHAIN TIMELINE FIX HORDE
UPDATE `quest_template` SET `NextQuestIdChain`='27951' WHERE (`Id`='27947');
UPDATE `quest_template` SET `NextQuestIdChain`='27954' WHERE (`Id`='27951');
UPDATE `quest_template` SET `NextQuestIdChain`='27955' WHERE (`Id`='27954');
UPDATE `quest_template` SET `PrevQuestId`='27947' WHERE (`Id`='27951');
UPDATE `quest_template` SET `PrevQuestId`='27951' WHERE (`Id`='27954');
UPDATE `quest_template` SET `PrevQuestId`='27954' WHERE (`Id`='27955');

UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28241');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='27947');

-- Quest 28241 A Vision of Twilight CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='28242' WHERE (`Id`='28241');
UPDATE `quest_template` SET `NextQuestIdChain`='28243' WHERE (`Id`='28242');
UPDATE `quest_template` SET `NextQuestIdChain`='28244' WHERE (`Id`='28243');
UPDATE `quest_template` SET `PrevQuestId`='28241' WHERE (`Id`='28242');
UPDATE `quest_template` SET `PrevQuestId`='28242' WHERE (`Id`='28243');
UPDATE `quest_template` SET `PrevQuestId`='28243' WHERE (`Id`='28244');

-- Quest 27955 Eye Spy
UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (47261);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='47261');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('47261', '62464', '1');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47261');
DELETE FROM smart_scripts WHERE entryorguid IN (47261);
INSERT INTO `smart_scripts` VALUES (47261, 0, 1, 2, 8, 0, 100, 0, 62464,0,0,0,68, 75, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'hit bunny');
INSERT INTO `smart_scripts` VALUES (47261, 0, 2, 0, 61, 0, 100, 0, 0,0,0,0,22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'phase1');
INSERT INTO `smart_scripts` VALUES (47261, 0, 3, 0, 1, 1, 100, 1, 15000, 15100, 0, 0, 33, 47252, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0,'credit');

-- Quest 27299 Torn Ground CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='27300' WHERE (`Id`='27299');
UPDATE `quest_template` SET `NextQuestIdChain`='27376' WHERE (`Id`='27300');
UPDATE `quest_template` SET `NextQuestIdChain`='27377' WHERE (`Id`='27376');
UPDATE `quest_template` SET `NextQuestIdChain`='27378' WHERE (`Id`='27377');
UPDATE `quest_template` SET `NextQuestIdChain`='27379' WHERE (`Id`='27378');
UPDATE `quest_template` SET `NextQuestIdChain`='27380' WHERE (`Id`='27379');
UPDATE `quest_template` SET `PrevQuestId`='27299' WHERE (`Id`='27300');
UPDATE `quest_template` SET `PrevQuestId`='27300' WHERE (`Id`='27376');
UPDATE `quest_template` SET `PrevQuestId`='27376' WHERE (`Id`='27377');
UPDATE `quest_template` SET `PrevQuestId`='27377' WHERE (`Id`='27378');
UPDATE `quest_template` SET `PrevQuestId`='27378' WHERE (`Id`='27379');
UPDATE `quest_template` SET `PrevQuestId`='27379' WHERE (`Id`='27380');

-- Quest 27945 Paint it Black CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='27375' WHERE (`Id`='27945');
UPDATE `quest_template` SET `PrevQuestId`='27945' WHERE (`Id`='27375');

-- Quest 27945 Paint it Black 
UPDATE `creature_template` SET `lootid`='47226' WHERE (`entry`='47226');
DELETE FROM `creature_loot_template` WHERE (`entry`='47226') AND (`item`='62796');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47226', '62796', '-20');
DELETE FROM `creature_loot_template` WHERE (`entry`='47226') AND (`item`='63285');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47226', '63285', '-45');

-- Quest 27299 Torn Ground
UPDATE `creature_template` SET `modelid2`='0' WHERE (`entry`='45394');

-- Quest 27376 The Maw of Iso'rath
UPDATE creature_template SET type_flags = 2048, vehicleid = 156, MovementType = 0, unit_flags = 16777216, npcflag = 16777216, inhabittype = 5, speed_run = 3, speed_walk = 3 WHERE entry IN (47973);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='47973');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('47973', '80343', '1');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47973');
DELETE FROM smart_scripts WHERE entryorguid IN (47973) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (47973, 0, 1, 2, 27, 0, 100, 0, 0, 0, 0, 0, 46, 430, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'on passanger boarded');
INSERT INTO `smart_scripts` VALUES (47973, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48281, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (47973, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'change phase');
INSERT INTO `smart_scripts` VALUES (47973, 0, 5, 0, 1, 1, 100, 1, 31999, 32000, 0, 0, 37, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Die');
INSERT INTO `smart_scripts` VALUES (47973, 0, 6, 0, 1, 1, 100, 1, 31999, 32000, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45332');
DELETE FROM smart_scripts WHERE entryorguid IN (45332) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (45332, 0, 1, 0, 19, 0, 100, 0, 27376, 0, 0, 0, 12, 47973, 6, 60, 0, 0, 0, 8, 0, 0, 0, -2536.93, -4781.71, 179.925, 4.16922, 'Summon');

DELETE FROM `creature_template` WHERE (`entry`='341759');
INSERT INTO `creature_template` VALUES (341759, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Spell fall bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341759');
INSERT INTO `creature_template_addon` VALUES (341759, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341759');
INSERT INTO `creature` VALUES (null, 341759, 0, 1, 1, 0, 0, -2670.60, -4973.73, 80.58, 0.871088, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341759) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341759, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 75, 89210, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 'spell fall');

-- Quest 27377 Devoured
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27377');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27378');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27379');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27380');
DELETE FROM `creature_involvedrelation` WHERE (`id`='45042') AND (`quest`='27377');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('45042', '27377');
DELETE FROM `creature_questrelation` WHERE (`id`='45042') AND (`quest`='27378');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('45042', '27378');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47991');
INSERT INTO `smart_scripts` VALUES (47991, 0, 3, 4, 19, 0, 100, 0, 27377, 0, 0, 0, 33, 48108, 0, 0, 0, 0, 0, 21, 3, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (47991, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 62, 730, 0, 0, 0, 0, 0, 21, 3, 0, 0, 851.30, 1067.76, -10.1, 4.5, 'credit');

-- Quest 27378 The Worldbreaker
UPDATE creature_template SET inhabittype = 4 WHERE entry IN (56584);
DELETE FROM `creature_template_addon` WHERE (`entry`='56584');
INSERT INTO `creature_template_addon` VALUES (56584, 0, 0, 50331648, 1, 0, '53112');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45042');
DELETE FROM smart_scripts WHERE entryorguid IN (45042);
INSERT INTO `smart_scripts` VALUES (45042, 0, 1, 0, 1, 0, 100, 0, 0,0,0,0,11, 89631, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'pre cast spell state');
INSERT INTO `smart_scripts` VALUES (45042, 0, 2, 0, 19, 0, 100, 0, 27378,0,0,0,22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'change phase');
INSERT INTO `smart_scripts` VALUES (45042, 0, 3, 0, 1, 1, 100, 1, 1500, 2500, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (45042, 0, 4, 0, 1, 1, 100, 1, 11500, 12500, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (45042, 0, 5, 0, 1, 1, 100, 1, 14500, 15500, 0, 0, 12, 56584, 3, 13000, 0, 0, 0, 8, 0, 0, 0, 885.55, 949.72, 24.44, 1.90, 'Summon');
INSERT INTO `smart_scripts` VALUES (45042, 0, 7, 0, 1, 1, 100, 1, 19500, 19500, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (45042, 0, 8, 0, 1, 1, 100, 1, 20000, 21000, 0, 0, 33, 48161, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'credit');
INSERT INTO `smart_scripts` VALUES (45042, 0, 9, 0, 1, 1, 100, 1, 27000, 27002, 0, 0, 62, 0, 0, 0, 0, 0, 0, 21, 3, 0, 0, -2659.29, -4971.59, -128.7, 3.26, 'credit');

DELETE FROM `creature_text` WHERE (`entry`='45042') AND (`groupid`='2') AND (`id`='0');
DELETE FROM `creature_text` WHERE (`entry`='45042') AND (`groupid`='3') AND (`id`='0');
DELETE FROM `creature_text` WHERE (`entry`='45042') AND (`groupid`='5') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45042','2','0','NOBUNDO! NOOO! ','12','0','100','0','0','0','Life party'),
('45042','3','0','You ve failed us all. Deathwing has won. The world is doomed. ','12','0','100','0','0','0','Life party'),
('45042','5','0','We re surrounded! Its defenses are too great. $N ! Wake up! ','12','0','100','0','0','0','Life party');

DELETE FROM `creature_involvedrelation` WHERE (`id`='47991') AND (`quest`='27378');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('47991', '27378');
DELETE FROM `creature_questrelation` WHERE (`id`='47991') AND (`quest`='27379');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('47991', '27379');
DELETE FROM `creature_involvedrelation` WHERE (`id`='47991') AND (`quest`='27379');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('47991', '27379');
DELETE FROM `creature_questrelation` WHERE (`id`='47991') AND (`quest`='27380');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('47991', '27380');

-- Quest 27379 The Terrors of Iso'rath
DELETE FROM `creature_template` WHERE (`entry`='453941');
DELETE FROM `creature_template` WHERE (`entry`='453942');
DELETE FROM `creature_template` WHERE (`entry`='453943');
DELETE FROM `creature_template` WHERE (`entry`='453944');
INSERT INTO `creature_template` VALUES (453941, 0, 0, 0, 48731, 0, 34432, 0, 0, 0, 'Tentacle of Iso rath', '', '', 0, 84, 84, 3, 0, 2324, 2324, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1.2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);
INSERT INTO `creature_template` VALUES (453942, 0, 0, 0, 48732, 0, 34432, 0, 0, 0, 'Tentacle of Iso rath', '', '', 0, 84, 84, 3, 0, 2324, 2324, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1.2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);
INSERT INTO `creature_template` VALUES (453943, 0, 0, 0, 48733, 0, 34432, 0, 0, 0, 'Tentacle of Iso rath', '', '', 0, 84, 84, 3, 0, 2324, 2324, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1.2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);
INSERT INTO `creature_template` VALUES (453944, 0, 0, 0, 48734, 0, 34432, 0, 0, 0, 'Tentacle of Iso rath', '', '', 0, 84, 84, 3, 0, 2324, 2324, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 10, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1.2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);
DELETE FROM `creature` WHERE (`id`='47990');
DELETE FROM `creature` WHERE (`id`='45394');
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2591.93, -4817.71, 160.909, 2.06713, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2620.9, -4768.93, 161.592, 1.52127, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2597.92, -4737.05, 161.882, 1.34063, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2602.13, -4744.86, 161.558, 5.99019, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2601.84, -4735.47, 161.712, 0.484537, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2632.65, -4702.53, 165.314, 2.4284, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2605.03, -4666.99, 167.522, 1.46236, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2518.61, -4624.95, 149.398, 0.0564856, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2551.35, -4644.6, 158.824, 4.96911, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2470.14, -4657.26, 148.23, 0.0015049, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2456.67, -4614.7, 138.05, 0.936123, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2447.89, -4614.4, 136.659, 5.31865, 600, 0, 0, 50, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45394, 0, 1, 1, 0, 0, -2599.13, -4599.12, 160.477, 0.107497, 600, 0, 0, 50, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='48733');
INSERT INTO `creature` VALUES (null, 48733, 0, 1, 1, 0, 0, -2608.93, -5051.44, -131.736, 2.35321, 300, 0, 0, 252, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='48731');
INSERT INTO `creature` VALUES (null, 48731, 0, 1, 1, 0, 0, -2633.38, -4898.48, -130.204, 3.17787, 300, 0, 0, 252, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='453941');
INSERT INTO `creature` VALUES (null, 453941, 0, 1, 1, 0, 0, -2643.65, -4894.15, -131.277, 4.30099, 300, 0, 0, 77395, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='453942');
INSERT INTO `creature` VALUES (null, 453942, 0, 1, 1, 0, 0, -2722.12, -5046.25, -129.174, 5.28169, 300, 0, 0, 77395, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='453943');
INSERT INTO `creature` VALUES (null, 453943, 0, 1, 1, 0, 0, -2626.49, -5060.45, -131.129, 0.0744889, 300, 0, 0, 77395, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='453944');
INSERT INTO `creature` VALUES (null, 453944, 0, 1, 65535, 0, 0, -2727.86, -4922.6, -128.077, 4.0387, 300, 0, 0, 77395, 0, 0, 0, 0, 0);

-- Quest 27380 Nightmare
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='47960');
UPDATE creature_template SET inhabittype = 4 WHERE entry IN (47960);
DELETE FROM `creature_template_addon` WHERE (`entry`='47960');
INSERT INTO `creature_template_addon` VALUES (47960, 0, 0, 50331648, 1, 0, '53112');
UPDATE `creature_template` SET `Health_mod`='38390.475' WHERE (`entry`='47960');
INSERT INTO `smart_scripts` VALUES (47991, 0, 5, 0, 19, 0, 100, 0, 27380, 0, 0, 0, 12, 47960, 6, 60, 0, 0, 0, 8, 0, 0, 0, -2686.49, -5002.54, -115.68, 6.17, 'Summon');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48731');
DELETE FROM smart_scripts WHERE entryorguid IN (48731);
INSERT INTO `smart_scripts` VALUES (48731, 0, 1, 0, 1, 0, 100, 0, 0,0,0,0,11, 90736, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'pre cast spell state');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48789');
DELETE FROM smart_scripts WHERE entryorguid IN (48789);
INSERT INTO `smart_scripts` VALUES (48789, 0, 1, 0, 1, 0, 100, 0, 0,0,0,0,11, 90736, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'pre cast spell state');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48733');
DELETE FROM smart_scripts WHERE entryorguid IN (48733);
INSERT INTO `smart_scripts` VALUES (48733, 0, 1, 0, 1, 0, 100, 0, 0,0,0,0,11, 90736, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'pre cast spell state');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48795');
DELETE FROM smart_scripts WHERE entryorguid IN (48795);
INSERT INTO `smart_scripts` VALUES (48795, 0, 1, 0, 1, 0, 100, 0, 0,0,0,0,11, 90736, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'pre cast spell state');

-- Quest 27302 Simple Solutions
UPDATE `creature_template` SET `lootid`='45359' WHERE (`entry`='45359');
DELETE FROM `creature_loot_template` WHERE (`entry`='45359') AND (`item`='60982');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45359', '60982', '-45');
DELETE FROM `gameobject` WHERE (`id`='205422');
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2716.57, -4823.13, 185.219, 0.440526, 0, 0, 0.218486, 0.97584, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2742.65, -4674.51, 191.697, 0.542613, 0, 0, 0.26799, 0.963422, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2715.52, -4820.98, 185.257, 0.373765, 0, 0, 0.185796, 0.982588, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2740.33, -4673.73, 191.634, 3.03625, 0, 0, 0.998613, 0.0526457, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2797.82, -4643.98, 199.015, 0.939232, 0, 0, 0.452544, 0.891742, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2809.47, -4682.87, 200.498, 0.208807, 0, 0, 0.104214, 0.994555, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2807.21, -4683.1, 191.2, 3.69598, 0, 0, 0.961828, -0.273656, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2772.56, -4712.53, 191.485, 3.26793, 0, 0, 0.998006, -0.0631268, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2741.86, -4673.03, 191.721, 5.14503, 0, 0, 0.538857, -0.842397, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2728.02, -4641.73, 183.087, 3.35431, 0, 0, 0.994349, -0.106156, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2778.19, -4621.31, 187.303, 0.0045783, 0, 0, 0.00228915, 0.999997, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2784.82, -4667.65, 191.979, 3.07156, 0, 0, 0.999387, 0.0350084, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2794.68, -4730.39, 191.485, 4.01797, 0, 0, 0.905521, -0.424301, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2800.82, -4708.21, 191.481, 3.52709, 0, 0, 0.981481, -0.191557, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2749.47, -4733.34, 191.503, 3.04407, 0, 0, 0.998811, 0.0487435, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2674.21, -4769.27, 175.004, 3.28609, 0, 0, 0.997391, -0.0721863, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2711.34, -4765.26, 175.226, 5.20638, 0, 0, 0.512764, -0.85853, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2679.26, -4730.05, 175.005, 0.965236, 0, 0, 0.4641, 0.885783, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2704.3, -4725.14, 175.005, 3.0269, 0, 0, 0.998356, 0.0573134, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2688.39, -4670.06, 184.581, 4.35814, 0, 0, 0.820637, -0.57145, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2686.25, -4639, 184.309, 6.25309, 0, 0, 0.0150471, -0.999887, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2720.16, -4612.13, 184.534, 0.42937, 0, 0, 0.21304, 0.977044, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205422, 0, 1, 1, -2733.95, -4705.26, 192.166, 0.833193, 0, 0, 0.404651, 0.914471, 300, 0, 1);
UPDATE `gameobject_template` SET `data7`='205422', `data8`='27302' WHERE (`entry`='205422');

-- Quest 27301 Unbroken CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27303' WHERE (`Id`='27301');
UPDATE `quest_template` SET `PrevQuestId`='27301' WHERE (`Id`='27303');

-- Quest 27303 Mercy for the Bound
UPDATE `creature_template` SET `lootid`='45358' WHERE (`entry`='45358');
DELETE FROM `creature_loot_template` WHERE (`entry`='45358') AND (`item`='60981');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45358', '60981', '-90');

-- Quest 27504 Even Dragons Bleed CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27505' WHERE (`Id`='27504');
UPDATE `quest_template` SET `NextQuestIdChain`='27564' WHERE (`Id`='27505');
UPDATE `quest_template` SET `PrevQuestId`='27504' WHERE (`Id`='27505');
UPDATE `quest_template` SET `PrevQuestId`='27505' WHERE (`Id`='27564');

-- Quest 27486 / 27485 Warm Welcome
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27485');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='27486');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45708');
DELETE FROM smart_scripts WHERE entryorguid IN (45708);
INSERT INTO `smart_scripts` VALUES (45708, 0, 1, 2, 62, 0, 100, 0, 45708, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'change phase');
INSERT INTO `smart_scripts` VALUES (45708, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (45708, 0, 3, 0, 1, 1, 100, 1, 1500, 2500, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (45708, 0, 4, 0, 1, 1, 100, 1, 11500, 12500, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (45708, 0, 7, 0, 1, 1, 100, 1, 19500, 19500, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (45708, 0, 9, 0, 1, 1, 100, 1, 25500, 26500, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (45708, 0, 8, 0, 1, 1, 100, 1, 30000, 31000, 0, 0, 33, 45708, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'credit');

UPDATE `creature_template` SET `gossip_menu_id`='45708', `npcflag`='1' WHERE (`entry`='45708');

delete from gossip_menu_option where menu_id = 45708;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45708,0,"Hello Lirastrasza",1,1);

DELETE FROM `creature_text` WHERE (`entry`='45708');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45708','1','0','You ve crossed into the domain of red dragons, $r. ','12','0','100','0','0','0','Life party'),
('45708','2','0','You and your allies have struck against my kind at the gates to Grim Batol in the past. You ve shown no respect for the sacred oath we would die to keep. You ll find no trust with me. ','12','0','100','0','0','0','Life party'),
('45708','3','0','Fortunately for you, your fate is not mine to decide. ','12','0','100','0','0','0','Life party'),
('45708','4','0','My drakes shall be watching you. Choose your words and your actions carefully, $r. ','12','0','100','0','0','0','Life party');
DELETE FROM `creature` WHERE (`id`='45528');
INSERT INTO `creature` VALUES (null, 45528, 0, 1, 1, 0, 0, -3068.26, -3984.1, 267.399, 3.36432, 300, 0, 0, 46494000, 133620, 0, 0, 0, 0);

-- Quest 27505 Draconic Mending
DELETE FROM `creature` WHERE (`id`='45748');
INSERT INTO `creature` VALUES (null, 45748, 0, 1, 1, 0, 0, -3245.03, -3923.02, 203.533, 2.95832, 600, 0, 0, 21, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45748, 0, 1, 1, 0, 0, -3259.55, -3865.16, 202.304, 3.5513, 600, 0, 0, 21, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45748, 0, 1, 1, 0, 0, -3313.49, -3860.35, 203.148, 5.08827, 300, 0, 0, 38745, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45748, 0, 1, 1, 0, 0, -3358.82, -3928.26, 203.321, 5.98362, 300, 0, 0, 38745, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45748, 0, 1, 1, 0, 0, -3296.1, -3920.19, 202.4, 4.51493, 300, 0, 0, 38745, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45748, 0, 1, 1, 0, 0, -3372.3, -3911.09, 212.481, 5.49275, 300, 0, 0, 38745, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45748, 0, 1, 1, 0, 0, -3365.64, -3971.41, 214.421, 0.0852775, 300, 0, 0, 38745, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `KillCredit1`='45746' WHERE (`entry`='45748');

-- Fix some missing race requirement
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28101');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='27576');

-- Quest 27508 Far from the Nest
UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (45508);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='45508');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('45508', '85491', '3');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='85491');
INSERT INTO `spell_linked_spell` VALUES (85491, 62464, 0, 'spell despawn');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45508');
DELETE FROM smart_scripts WHERE entryorguid IN (45508);
INSERT INTO `smart_scripts` VALUES (45508, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,0,0,0, 'Force despawn');
UPDATE creature_template SET inhabittype = 4 WHERE entry IN (45503);
DELETE FROM `creature_template_addon` WHERE (`entry`='45503');
INSERT INTO `creature_template_addon` VALUES (45503, 0, 0, 50331648, 1, 0, '53112');

-- Quest 27506 Life from Death
DELETE FROM `conditions` WHERE (`SourceEntry`='85389');
INSERT INTO `conditions` VALUES (17, 0, 85389, 0, 0, 29, 0, 45748, 2, 0, 0, 0, 0, '', 'Spell can be used only near mob');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='85389');
INSERT INTO `spell_linked_spell` VALUES (85389, 69874, 1, 'spell root cosmetic');
INSERT INTO `spell_linked_spell` VALUES (85389, 62464, 0, 'credit');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45748');
DELETE FROM smart_scripts WHERE entryorguid IN (45748);
INSERT INTO `smart_scripts` VALUES (45748, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 45503, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'credit');

-- Quest 28090 Precious Goods CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='28097' WHERE (`Id`='28090');
UPDATE `quest_template` SET `NextQuestIdChain`='28097' WHERE (`Id`='28091');
UPDATE `quest_template` SET `NextQuestIdChain`='28092' WHERE (`Id`='28097');
UPDATE `quest_template` SET `NextQuestIdChain`='28093' WHERE (`Id`='28092');
UPDATE `quest_template` SET `PrevQuestId`='28090' WHERE (`Id`='28097');
UPDATE `quest_template` SET `PrevQuestId`='28097' WHERE (`Id`='28092');
UPDATE `quest_template` SET `PrevQuestId`='28092' WHERE (`Id`='28093');

-- Quest 28090 Precious Goods
UPDATE `creature_template` SET `lootid`='47490' WHERE (`entry`='47490');
DELETE FROM `creature_loot_template` WHERE (`entry`='47490') AND (`item`='62926');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47490', '62926', '-27');

UPDATE `creature_template` SET `lootid`='47458' WHERE (`entry`='47458');
DELETE FROM `creature_loot_template` WHERE (`entry`='47458') AND (`item`='62926');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47458', '62926', '-25');

UPDATE `gameobject_template` SET `data7`='206674', `data8`='28090' WHERE (`entry`='206674');
UPDATE `gameobject_template` SET `data7`='206675', `data8`='28104' WHERE (`entry`='206675');
DELETE FROM `gameobject` WHERE (`id`='206674');
DELETE FROM `gameobject` WHERE (`id`='206675');
INSERT INTO `gameobject` VALUES (null, 206674, 0, 1, 1, -3490.62, -3774.57, 72.9703, 3.51144, 0, 0, 0.98295, -0.183873, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206675, 0, 1, 1, -3486.86, -3766.08, 71.4715, 2.51398, 0, 0, 0.951166, 0.308681, 300, 0, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`='35565') AND (`item`='62927');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('35565', '62927', '-100');

-- Quest 28091 Easy Pickings
DELETE FROM `creature` WHERE (`id`='47490');
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3540.55, -3944.62, 103.084, 1.78805, 600, 5, 0, 46, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3555.35, -3910.86, 98.25, 5.33021, 600, 5, 0, 46, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3516.77, -3906.81, 94.3736, 2.36139, 600, 5, 0, 46, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3497.46, -3881.28, 92.271, 2.36139, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3527.83, -3831.99, 86.4095, 5.73466, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3517.78, -3777.41, 79.9864, 0.973275, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3517.63, -3755.7, 77.6648, 5.9684, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3431.73, -3811.18, 84.97, 3.34125, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3441.65, -3776.39, 76.0122, 2.2574, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3550.87, -3865.98, 108.058, 0.808331, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47490, 0, 1, 1, 0, 0, -3520.06, -3953.99, 106.124, 2.00999, 300, 0, 0, 85239, 0, 0, 0, 0, 0);

-- Quest 28097 The Gates of Grim Batol
DELETE FROM `creature` WHERE (`id`='47493');
INSERT INTO `creature` VALUES (null, 47493, 0, 1, 1, 0, 0, -3592.21, -4006.39, 113.281, 2.36094, 300, 0, 0, 85239, 0, 0, 0, 0, 0);

-- Quest 28092 If The Key Fits
DELETE FROM `creature` WHERE (`id`='47374');
INSERT INTO `creature` VALUES (null, 47374, 0, 1, 1, 0, 0, -3967.42, -3965.32, 177.876, 5.27869, 300, 0, 0, 271215, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47374');
DELETE FROM smart_scripts WHERE entryorguid IN (47374);
INSERT INTO `smart_scripts` VALUES (47374, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 47539, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0,'credit');

-- Quest 28093 Pressing Forward
DELETE FROM `creature` WHERE (`id`='47605');
INSERT INTO `creature` VALUES (null, 47605, 0, 1, 1, 0, 0, -4135.07, -3652.91, 205.931, 5.63441, 300, 0, 0, 46494000, 133620, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47605');
DELETE FROM smart_scripts WHERE entryorguid IN (47605);
INSERT INTO `smart_scripts` VALUES (47605, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 47566, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0,'credit');

-- Quest 28147 Purple is Your Color CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='28151' WHERE (`Id`='28147');
UPDATE `quest_template` SET `PrevQuestId`='28147' WHERE (`Id`='28151');

-- Quest 28147 Purple is Your Color
UPDATE `creature_template` SET `lootid`='47724' WHERE (`entry`='47724');
DELETE FROM `creature_loot_template` WHERE (`entry`='47724') AND (`item`='63087');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47724', '63087', '-75');

-- Quest 28149 Whispers in the Wind CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='28166' WHERE (`Id`='28149');
UPDATE `quest_template` SET `NextQuestIdChain`='28170' WHERE (`Id`='28166');
UPDATE `quest_template` SET `PrevQuestId`='28149' WHERE (`Id`='28166');
UPDATE `quest_template` SET `PrevQuestId`='28166' WHERE (`Id`='28170');

-- Quest 28149 Whispers in the Wind
DELETE FROM `gameobject_template` WHERE (`entry`='206786');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `faction`, `questItem1`, `data0`, `data1`, `data2`, `data6`, `WDBVerified`) VALUES ('206786', '3', '10037', 'Windspeaker Pylon', '35', '63085', '43', '206786', '30', '0', '13329');
UPDATE `creature_template` SET `lootid`='47728' WHERE (`entry`='47728');
DELETE FROM `creature_loot_template` WHERE (`entry`='47728') AND (`item`='63089');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47728', '63089', '-40');
DELETE FROM `gameobject` WHERE (`id`='206786');
INSERT INTO `gameobject` VALUES (null, 206786, 0, 1, 1, -3817.66, -4507.81, 166.01, 5.06176, 0, 0, 0.573452, -0.819239, 300, 0, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`='206786') AND (`item`='63085');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('206786', '63085', '-100');
UPDATE `gameobject_template` SET `data7`='206786', `data8`='28149' WHERE (`entry`='206786');

-- Quest 28166 Thog's Nightlight
DELETE FROM `gameobject` WHERE (`id`='206839');
INSERT INTO `gameobject` VALUES (null, 206839, 0, 1, 1, -3305.56, -4585.75, 173.342, 4.67213, 0, 0, 0.721195, -0.692732, 300, 0, 1);
UPDATE `gameobject_template` SET `displayId`='6895' WHERE (`entry`='206289');

-- Quest 28871 Crushing the Wildhammer
UPDATE `creature_template` SET `lootid`='46378' WHERE (`entry`='46378');
DELETE FROM `creature_loot_template` WHERE (`entry`='46378') AND (`item`='62325');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46378', '62325', '-85');
UPDATE `creature_template` SET `lootid`='46885' WHERE (`entry`='46885');
DELETE FROM `creature_loot_template` WHERE (`entry`='46885') AND (`item`='62325');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46885', '62325', '-80');
UPDATE `creature_template` SET `lootid`='46320' WHERE (`entry`='46320');
DELETE FROM `creature_loot_template` WHERE (`entry`='46320') AND (`item`='62325');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46320', '62325', '-75');
UPDATE `creature_template` SET `lootid`='46376' WHERE (`entry`='46376');
DELETE FROM `creature_loot_template` WHERE (`entry`='46376') AND (`item`='62325');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46376', '62325', '-65');
UPDATE `creature_template` SET `lootid`='46377' WHERE (`entry`='46377');
DELETE FROM `creature_loot_template` WHERE (`entry`='46377') AND (`item`='62325');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46377', '62325', '-33');

-- Quest 28872 Total War
DELETE FROM `gameobject_template` WHERE (`entry`='906787');
INSERT INTO `gameobject_template` VALUES (906787, 22, 1727, 'Keg of Thundermar Ale', '', '', '', 35, 0, 1, 0, 0, 0, 0, 0, 0, 86809, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 13329);
UPDATE `gameobject_template` SET `data7`='906787' WHERE (`entry`='906787');
DELETE FROM `gameobject` WHERE (`id`='906787');
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3286.63, -5175.32, 83.0458, 4.13353, 0, 0, 0.879507, -0.475885, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3338.67, -5149.66, 79.6637, 5.09879, 0, 0, 0.558185, -0.829716, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3335.08, -5121.84, 79.7035, 1.23306, 0, 0, 0.578209, 0.815889, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3434.33, -5033.23, 67.2722, 3.74948, 0, 0, 0.954164, -0.299285, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3484.85, -5000.2, 66.3579, 5.81272, 0, 0, 0.233067, -0.972461, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3467.26, -4993.2, 66.7418, 0.0667514, 0, 0, 0.0333695, 0.999443, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3477.92, -4880.88, 89.0466, 1.22914, 0, 0, 0.576608, 0.817021, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3453.76, -4858.78, 92.4005, 5.72005, 0, 0, 0.277862, -0.960621, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3487.32, -4813.89, 78.4642, 0.212837, 0, 0, 0.106218, 0.994343, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3315.27, -4841.4, 111.03, 4.60949, 0, 0, 0.742534, -0.669808, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3315.77, -4884.89, 111.125, 2.9688, 0, 0, 0.99627, 0.0862891, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3217.54, -5227.12, 92.6653, 5.2551, 0, 0, 0.491703, -0.870763, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3185.14, -5196.12, 100.077, 5.54962, 0, 0, 0.358614, -0.933486, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3133.22, -5165.49, 91.3067, 5.76953, 0, 0, 0.254013, -0.967201, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3117.06, -5187.36, 91.3024, 2.32791, 0, 0, 0.918376, 0.395709, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3137.15, -5221.24, 100.304, 2.02711, 0, 0, 0.848716, 0.528848, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3131.17, -5234.92, 99.4881, 1.33517, 0, 0, 0.619091, 0.785319, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 906787, 0, 1, 1, -3115.75, -5150.96, 128.316, 4.19481, 0, 0, 0.864517, -0.502603, 300, 0, 1);
DELETE FROM `creature` WHERE (`id`='42107');
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3687.3, -5376.31, 35.8255, 0.673399, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3729.87, -5305.04, 36.0968, 0.208827, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3731.52, -5294.24, 35.7841, 0.0203311, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3680.08, -5381.44, 35.7684, 0.783362, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -4083.65, -6414.68, 39.9971, 3.76276, 600, 0, 0, 42, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3712.51, -5231.13, 37.9182, 5.3379, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3703.65, -5223.68, 39.4192, 4.98055, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3724.6, -5249.29, 60.48, 0.98286, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3721.82, -5266.43, 60.4964, 5.54995, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3626.35, -5388.46, 55.3179, 0.17389, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3635.92, -5393.83, 55.3405, 5.43606, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3646.57, -5387.68, 55.3405, 3.19375, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3626.47, -5395.19, 38.0643, 5.07871, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3633.79, -5397.95, 38.0643, 5.25935, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3732.61, -5258.25, 37.3846, 2.51438, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3729.03, -5248.42, 37.2325, 2.3573, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3627.51, -5244.85, 39.8772, 1.26952, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3639.81, -5229.42, 38.5173, 6.27643, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3635.15, -5239.89, 39.7865, 0.71581, 300, 0, 0, 23247000, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3707.92, -5227.14, 38.2676, 4.82737, 300, 0, 0, 23247000, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3734.16, -5298.49, 35.7783, 6.10757, 300, 0, 0, 154980, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3666.72, -5272.65, 41.8484, 4.57998, 300, 0, 0, 154980, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3673.1, -5271.39, 41.8481, 4.43232, 300, 0, 0, 154980, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3651.45, -5306.6, 33.5836, 4.36791, 300, 0, 0, 154980, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42107, 0, 1, 1, 0, 47335, -3656.78, -5317.23, 34.1926, 1.06139, 300, 0, 0, 154980, 0, 0, 0, 0, 0);
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='86809');
INSERT INTO `spell_linked_spell` VALUES (86809, 34539, 0, 'spell cosmetic explosion');
INSERT INTO `spell_linked_spell` VALUES (86809, 85933, 0, 'spell credit');
INSERT INTO `spell_linked_spell` VALUES (86809, 86855, 0, 'collecting alliance similar quest');
DELETE FROM `conditions` WHERE (`SourceEntry`='86855');
INSERT INTO `conditions` VALUES (17, 0, 86855, 0, 0, 9, 0, 27752, 0, 0, 0, 0, 0, '', 'Spell is allow only when quest is active ');
DELETE FROM `spell_scripts` WHERE (`datalong`='46551');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '46551');
DELETE FROM `creature_template` WHERE (`entry`='42107');
INSERT INTO `creature_template` VALUES (42107, 0, 0, 0, 41080, 0, 34226, 0, 0, 0, 'Dragonmaw Grunt', '', '', 0, 85, 85, 3, 0, 2305, 2305, 0, 1, 1.14286, 1, 0, 1007, 1354.7, 0, 1571, 1, 2000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 758.1, 1062.1, 220, 7, 0, 42107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 33, '', 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 47335, 0, 0, '', 14480);
DELETE FROM `creature_template_addon` WHERE (`entry`='42107');

-- Quest 28038 Blood in the Highlands
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27863');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27864');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27865');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27866');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27867');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27868');

-- Quest 28874 Hook 'em High
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0' WHERE (`entry`='46321');
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0' WHERE (`entry`='27751');
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0' WHERE (`entry`='27929');
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0' WHERE (`entry`='28043');
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0' WHERE (`entry`='28041');
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0' WHERE (`entry`='27690');

-- Quest 28041 Bait and Throttle CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='28043' WHERE (`Id`='28041');
UPDATE `quest_template` SET `NextQuestIdChain`='28123' WHERE (`Id`='28043');
UPDATE `quest_template` SET `NextQuestIdChain`='28133' WHERE (`Id`='28123');
UPDATE `quest_template` SET `PrevQuestId`='28041' WHERE (`Id`='28043');
UPDATE `quest_template` SET `PrevQuestId`='28043' WHERE (`Id`='28123');
UPDATE `quest_template` SET `PrevQuestId`='28123' WHERE (`Id`='28133');

-- Quest 28041 Bait and Throttle
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='28041');
UPDATE `creature_template` SET `lootid`='46158' WHERE (`entry`='46158');
DELETE FROM `creature_loot_template` WHERE (`entry`='46158') AND (`item`='62915');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46158', '62915', '-30');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='88449');
INSERT INTO `spell_linked_spell` VALUES (88449, 88463, 0, 'summon drake');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='47422');
UPDATE `creature_template` SET `KillCredit1`='47416' WHERE (`entry`='47422');
UPDATE `creature_template` SET `minlevel`='85', `maxlevel`='85' WHERE (`entry`='47422');
UPDATE `creature_template` SET `Health_mod`='12.61' WHERE (`entry`='47422');

-- Quest 28123 The Demon Chain
DELETE FROM `creature` WHERE (`id`='47618');
INSERT INTO `creature` VALUES (null, 47618, 0, 1, 1, 0, 0, -3147.6, -5026.53, 131.959, 2.30515, 300, 0, 0, 46, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `dynamicflags`='32', `unit_flags`='536870912', `unit_flags2`='1' WHERE (`entry`='47618');
DELETE FROM `gameobject` WHERE (`id`='206724');
INSERT INTO `gameobject` VALUES (null, 206724, 0, 1, 1, -3151.32, -5026.3, 131.733, 2.86278, 0, 0, 0.990299, 0.138953, 300, 0, 1);
UPDATE `gameobject_template` SET `data7`='206724', `data8`='28123' WHERE (`entry`='206724');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='35625') AND (`item`='63036');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('35625', '63036', '-100');

-- Quest 28133 Fury Unbound
UPDATE `creature_template` SET `minlevel`='85', `maxlevel`='85' WHERE (`entry`='47669');
UPDATE `creature_template` SET `Health_mod`='63.09' WHERE (`entry`='47669');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='47669');

-- Quest 27863 The Crucible of Carnage: The Bloodeye Bruiser!
UPDATE `quest_template` SET `RequiredNpcOrGo1`='46944', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='27863');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46935');
UPDATE `creature_template` SET `Health_mod`='189.276' WHERE (`entry`='46944');
DELETE FROM smart_scripts WHERE entryorguid IN (46935);
INSERT INTO `smart_scripts` VALUES (46935, 0, 1, 0, 19, 0, 100, 0, 27863, 0, 0, 0, 12, 46944, 6, 60, 0, 0, 0, 8, 0, 0, 0, -4190.12, -5121.95, -7.6, 4.95, 'Summon');

-- Quest 27864 The Crucible of Carnage: The Deadly Dragonmaw!
UPDATE `quest_template` SET `RequiredNpcOrGo1`='46945', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='27864');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46935');
UPDATE `creature_template` SET `Health_mod`='201.955' WHERE (`entry`='46945');
UPDATE `creature_template` SET `minlevel`='85', `maxlevel`='85' WHERE (`entry`='46945');
INSERT INTO `smart_scripts` VALUES (46935, 0, 2, 0, 19, 0, 100, 0, 27864, 0, 0, 0, 12, 46945, 6, 60, 0, 0, 0, 8, 0, 0, 0, -4190.12, -5121.95, -7.6, 4.95, 'Summon');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='46945');

-- Quest 27865 The Crucible of Carnage: The Wayward Wildhammer!
UPDATE `quest_template` SET `RequiredNpcOrGo1`='46946', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='27865');
UPDATE `creature_template` SET `AIName`='SmartAI', `Health_mod`='201.955', `minlevel`='85', `maxlevel`='85', `faction_A`='14', `faction_H`='14', `unit_flags`='0', `type_flags`='0' WHERE (`entry`='46946');
INSERT INTO `smart_scripts` VALUES (46935, 0, 3, 0, 19, 0, 100, 0, 27865, 0, 0, 0, 12, 46946, 6, 60, 0, 0, 0, 8, 0, 0, 0, -4190.12, -5121.95, -7.6, 4.95, 'Summon');
UPDATE `creature_template` SET `VehicleId`='0' WHERE (`entry`='46946');

-- Quest 27866 The Crucible of Carnage: Calder's Creation!
UPDATE `quest_template` SET `RequiredNpcOrGo1`='46947', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='27866');
UPDATE `creature_template` SET `AIName`='SmartAI', `Health_mod`='201.955', `minlevel`='85', `maxlevel`='85', `faction_A`='14', `faction_H`='14', `unit_flags`='0', `type_flags`='0' WHERE (`entry`='46947');
INSERT INTO `smart_scripts` VALUES (46935, 0, 4, 0, 19, 0, 100, 0, 27866, 0, 0, 0, 12, 46947, 6, 60, 0, 0, 0, 8, 0, 0, 0, -4190.12, -5121.95, -7.6, 4.95, 'Summon');
UPDATE `creature_template` SET `VehicleId`='0' WHERE (`entry`='46947');

-- Quest 27867 The Crucible of Carnage: The Earl of Evisceration!
UPDATE `quest_template` SET `RequiredNpcOrGo1`='46948', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='27867');
UPDATE `creature_template` SET `AIName`='SmartAI', `Health_mod`='378.691', `minlevel`='85', `maxlevel`='85', `faction_A`='14', `faction_H`='14', `unit_flags`='0', `type_flags`='0' WHERE (`entry`='46948');
INSERT INTO `smart_scripts` VALUES (46935, 0, 5, 0, 19, 0, 100, 0, 27867, 0, 0, 0, 12, 46948, 6, 60, 0, 0, 0, 8, 0, 0, 0, -4190.12, -5121.95, -7.6, 4.95, 'Summon');
UPDATE `creature_template` SET `VehicleId`='0' WHERE (`entry`='46948');

-- Quest 27868 The Crucible of Carnage: The Twilight Terror!
UPDATE `quest_template` SET `RequiredNpcOrGo1`='46949', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='27868');
UPDATE `creature_template` SET `AIName`='SmartAI', `Health_mod`='16', `minlevel`='85', `maxlevel`='85', `faction_A`='14', `faction_H`='14', `unit_flags`='0', `type_flags`='0' WHERE (`entry`='46949');
INSERT INTO `smart_scripts` VALUES (46935, 0, 6, 0, 19, 0, 100, 0, 27868, 0, 0, 0, 12, 46949, 6, 60, 0, 0, 0, 8, 0, 0, 0, -4190.12, -5121.95, -7.6, 4.95, 'Summon');
UPDATE `creature_template` SET `VehicleId`='0' WHERE (`entry`='46949');

-- Quest 28173 Blackout CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='28176' WHERE (`Id`='28173');
UPDATE `quest_template` SET `NextQuestIdChain`='28176' WHERE (`Id`='28191');
UPDATE `quest_template` SET `NextQuestIdChain`='28247' WHERE (`Id`='28176');
UPDATE `quest_template` SET `PrevQuestId`='28173' WHERE (`Id`='28176');
UPDATE `quest_template` SET `PrevQuestId`='28176' WHERE (`Id`='28247');

-- Quest 28176 Following the Young Home
DELETE FROM `creature` WHERE (`id`='40485');
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -776.828, -805.925, 233.318, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -777.288, -800.51, 233.318, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -786.903, -803.082, 233.318, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -784.347, -807.035, 233.318, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -782.665, -803.326, 233.318, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -792.997, -802.547, 233.318, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -782.184, -798.821, 233.318, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -782.535, -794.217, 233.318, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -790.483, -807.644, 233.278, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -784.413, -845.229, 232.672, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -791.816, -844.05, 233.318, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -796.07, -840.373, 233.352, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -784.693, -848.736, 232.672, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -791.63, -838.427, 233.318, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -782.245, -842.293, 232.672, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -788.729, -849.266, 232.672, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 670, 1, 1, 0, 0, -793.693, -848.474, 232.671, 0, 7200, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 0, 1, 1, 0, 0, -5119.06, -5545.75, 32.397, 3.53352, 300, 0, 0, 6141, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 0, 1, 1, 0, 0, -5121.82, -5543.89, 32.2806, 5.11581, 300, 0, 0, 6141, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 0, 1, 1, 0, 0, -5123.37, -5542.02, 32.2452, 4.11836, 300, 0, 0, 6141, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 0, 1, 1, 0, 0, -5114.73, -5545.13, 33.0144, 4.06337, 300, 0, 0, 6141, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 0, 1, 1, 0, 0, -5111.91, -5547.81, 32.9432, 3.83954, 300, 0, 0, 6141, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 0, 1, 1, 0, 0, -5118.57, -5542.42, 33.0236, 3.41543, 300, 0, 0, 6141, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 40485, 0, 1, 1, 0, 0, -5125.09, -5539.7, 32.0928, 4.36419, 300, 0, 0, 6141, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='40485');
DELETE FROM smart_scripts WHERE entryorguid IN (40485);
INSERT INTO `smart_scripts` VALUES (40485, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 47855, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'credit');
INSERT INTO `smart_scripts` VALUES (40485, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 91297, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'summon whelp');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='34539');
INSERT INTO `spell_linked_spell` VALUES (34539, 62464, 0, 'spell trigger');
DELETE FROM `item_template` WHERE (`entry`='63126');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `delay`, `spellid_1`, `spellcooldown_1`, `bonding`, `Material`, `WDBVerified`) VALUES ('63126', '12', 'Mother s Flame', '35738', '1', '64', '8192', '0', '34539', '1500', '4', '4', '13329');

DELETE FROM `creature_template` WHERE (`entry`='341760');
INSERT INTO `creature_template` VALUES (341760, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Infiltration bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341760');
INSERT INTO `creature_template_addon` VALUES (341760, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341760');
INSERT INTO `creature` VALUES (null, 341760, 0, 1, 1, 0, 0, -5167.72, -5059.15, 68.3, 2.514, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341760) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341760, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 47874, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');

DELETE FROM `creature` WHERE (`id`='47905');
INSERT INTO `creature` VALUES (null, 47905, 0, 1, 1, 0, 0, -4659.1, -5541.24, 75.3534, 4.57798, 600, 0, 0, 378, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47905, 0, 1, 1, 0, 1, -5347.36, -4801.22, 37.8537, 5.66794, 300, 0, 0, 697410, 0, 0, 0, 0, 0);

-- Quest 28247 Last of Her Kind
DELETE FROM `creature` WHERE (`id`='47929');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47905');
DELETE FROM smart_scripts WHERE entryorguid IN (47905) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (47905, 0, 1, 0, 19, 0, 100, 0, 28247, 0, 0, 0, 12, 47929, 6, 6000, 0, 0, 0, 8, 0, 0, 0, -5388.28, -4809.64, 35.90, 0.123, 'Summon');
UPDATE `quest_template` SET `RequiredNpcOrGo1`='47929', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='28247');
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0', `type_flags`='0' WHERE (`entry`='47929');

-- Quest 28248 Victors' Point
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28248');

-- Quest 28248 Victors' Point CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27492' WHERE (`Id`='28248');
UPDATE `quest_template` SET `NextQuestIdChain`='27494' WHERE (`Id`='27492');
UPDATE `quest_template` SET `PrevQuestId`='28248' WHERE (`Id`='27492');
UPDATE `quest_template` SET `PrevQuestId`='27492' WHERE (`Id`='27494');

-- Quest 28249 Crushblow
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28249');

-- Quest 28249 Crushblow CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27493' WHERE (`Id`='28249');
UPDATE `quest_template` SET `NextQuestIdChain`='27495' WHERE (`Id`='27493');
UPDATE `quest_template` SET `NextQuestIdChain`='27590' WHERE (`Id`='27495');
UPDATE `quest_template` SET `PrevQuestId`='28249' WHERE (`Id`='27493');
UPDATE `quest_template` SET `PrevQuestId`='27493' WHERE (`Id`='27495');
UPDATE `quest_template` SET `PrevQuestId`='27495' WHERE (`Id`='27590');

-- Quest 27495 Move the Mountain
DELETE FROM `gameobject` WHERE (`id`='205590');
INSERT INTO `gameobject` VALUES (null, 205590, 0, 1, 1, -4482.44, -4442.22, 254.023, 5.93589, 0, 0, 0.172778, -0.984961, 300, 0, 1);
DELETE FROM `creature_involvedrelation` WHERE (`id`='45658') AND (`quest`='27495');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('45658', '27495');

-- Quest 27590 Signal the Attack
DELETE FROM `creature_involvedrelation` WHERE (`id`='45658') AND (`quest`='27590');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('45658', '27590');
DELETE FROM `item_template` WHERE (`entry`='61511');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `delay`, `spellid_1`, `spellcooldown_1`, `bonding`, `Material`) VALUES ('61511', '12', 'Attack Signal', '34282', '1', '64', '8192', '0', '11544', '5000', '4', '4');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='11544');
INSERT INTO `spell_linked_spell` VALUES (11544, 62464, 0, 'spell trigger');

DELETE FROM `creature_template` WHERE (`entry`='341761');
INSERT INTO `creature_template` VALUES (341761, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Top tower bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341761');
INSERT INTO `creature_template_addon` VALUES (341761, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341761');
INSERT INTO `creature` VALUES (null, 341761, 0, 1, 1, 0, 0, -4348.33, -4582.71, 215.9, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341761, 0, 1, 1, 0, 0, -4341.17, -4584, 215.855, 1.12191, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341761, 0, 1, 1, 0, 0, -4337.8, -4575.73, 215.9, 2.41389, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341761, 0, 1, 1, 0, 0, -4344.32, -4573.24, 215.858, 3.97683, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341761, 0, 1, 1, 0, 0, -4348.93, -4576.01, 215.902, 3.87866, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341761, 0, 1, 1, 0, 0, -4568.09, -4670.86, 208.844, 2.97545, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341761, 0, 1, 1, 0, 0, -4573.05, -4674.65, 208.744, 2.4885, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341761, 0, 1, 1, 0, 0, -4579.93, -4671.79, 208.731, 2.1822, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341761, 0, 1, 1, 0, 0, -4579.63, -4665.05, 208.797, 1.47927, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341761, 0, 1, 1, 0, 0, -4574.25, -4663.52, 208.77, 0.234409, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341761) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341761, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 46000, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');

UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27590');

DELETE FROM `gameobject_template` WHERE (`entry`='431200');
INSERT INTO `gameobject_template` VALUES (431200, 8, 396, 'Obsidian Tree Hollow', '', '', '', 0, 0, 1.17224, 0, 0, 0, 0, 0, 0, 1701, 8, 431200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

-- Quest 27503 Up to the Citadel
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27503');
DELETE FROM `creature` WHERE (`id`='46119');
INSERT INTO `creature` VALUES (null, 46119, 0, 1, 1, 0, 0, -4401.47, -4481.54, 210.191, 3.45843, 300, 0, 0, 46, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46119');
DELETE FROM smart_scripts WHERE entryorguid IN (46119);
INSERT INTO `smart_scripts` VALUES (46119, 0, 1, 0, 62, 0, 100, 0, 46119, 0, 0, 0, 86, 85917, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (46119, 0, 2, 0, 62, 0, 100, 0, 46119, 0, 0, 0, 86, 85917, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (46119, 0, 3, 0, 62, 0, 100, 0, 46119, 0, 0, 0, 86, 85917, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (46119, 0, 4, 5, 62, 0, 100, 0, 46119, 0, 0, 0, 86, 85917, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (46119, 0, 5, 7, 61, 0, 100, 0, 0, 0, 0, 0, 33, 46117, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'credit');
INSERT INTO `smart_scripts` VALUES (46119, 0, 7, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (46119, 0, 6, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (46119, 0, 8, 0, 61, 0, 100, 0, 0,0,0,0,12, 46106, 6, 60, 0, 0, 0, 8, 0, 0, 0,-4401.47, -4481.54, 210.191, 1, 'summon mob aggro activator');

UPDATE `creature_template` SET `gossip_menu_id`='46119' WHERE (`entry`='46119');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='46119');

delete from gossip_menu_option where menu_id = 46119;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(46119,0,"I m ready, Commander, let s head up.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='46119') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('46119','1','0','Let s move out quickly, $N. Up the ramp and then straight to Garona.  ','12','0','100','0','0','0','Life party');

DELETE FROM `creature_template` WHERE (`entry`='341762');
INSERT INTO `creature_template` VALUES (341762, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Top tower bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341762');
INSERT INTO `creature_template_addon` VALUES (341762, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341762');
INSERT INTO `creature` VALUES (null, 341762, 0, 1, 1, 0, 0, -4413.65, -4428.84, 285.43, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341762) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341762, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 46121, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');

DELETE FROM `creature_involvedrelation` WHERE (`id`='45665') AND (`quest`='27503');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('45665', '27503');
DELETE FROM `creature_questrelation` WHERE (`id`='45665') AND (`quest`='27638');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('45665', '27638');

DELETE FROM `conditions` WHERE (`ConditionValue1`='27503');
INSERT INTO `conditions` VALUES (15, 46119, 0, 0, 0, 9, 0, 27503, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 27609 Four Heads are Better than None CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27503' WHERE (`Id`='27609');
UPDATE `quest_template` SET `NextQuestIdChain`='27638' WHERE (`Id`='27503');
UPDATE `quest_template` SET `PrevQuestId`='27609' WHERE (`Id`='27503');
UPDATE `quest_template` SET `PrevQuestId`='27503' WHERE (`Id`='27638');

-- Quest 27609 Four Heads are Better than None
UPDATE `creature_template` SET `lootid`='46017' WHERE (`entry`='46017');
DELETE FROM `creature_loot_template` WHERE (`entry`='46017') AND (`item`='61924');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46017', '61924', '-100');
DELETE FROM `creature_loot_template` WHERE (`entry`='46017') AND (`item`='61925');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46017', '61925', '-100');
UPDATE `creature_template` SET `lootid`='46018' WHERE (`entry`='46018');
DELETE FROM `creature_loot_template` WHERE (`entry`='46018') AND (`item`='61926');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46018', '61926', '-100');
DELETE FROM `creature_loot_template` WHERE (`entry`='46018') AND (`item`='61927');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46018', '61927', '-100');

-- Quest 27638 Just You and Garona
DELETE FROM `creature` WHERE (`id`='45675');
INSERT INTO `creature` VALUES (null, 45675, 0, 1, 1, 0, 0, -4290.32, -4611.37, 149.763, 4.32961, 600, 0, 0, 420, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45675, 0, 1, 1, 0, 0, -4475.98, -4354.12, 322.34, 3.07689, 300, 0, 0, 774900, 0, 0, 0, 0, 0);

-- Quest 27491 Kor'kron Drop
UPDATE `creature` SET `phaseMask`='1' WHERE (`id`='45947');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45947');
DELETE FROM smart_scripts WHERE entryorguid IN (45947);
INSERT INTO `smart_scripts` VALUES (45947, 0, 1, 0, 62, 0, 100, 0, 45947, 3, 0, 0, 86, 85631, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (45947, 0, 2, 0, 62, 0, 100, 0, 45947, 3, 0, 0, 86, 85631, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (45947, 0, 3, 0, 62, 0, 100, 0, 45947, 3, 0, 0, 86, 85631, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (45947, 0, 4, 5, 62, 0, 100, 0, 45947, 3, 0, 0, 86, 85631, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (45947, 0, 5, 7, 61, 0, 100, 0, 0, 0, 0, 0, 33, 45902, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'credit');
INSERT INTO `smart_scripts` VALUES (45947, 0, 7, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (45947, 0, 6, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (45947, 0, 8, 0, 61, 0, 100, 0, 0,0,0,0,12, 46106, 6, 60, 0, 0, 0, 8, 0, 0, 0,-4831.60, -4850.89, 199.230, 1, 'summon mob aggro activator');

UPDATE `creature_template` SET `gossip_menu_id`='45947' WHERE (`entry`='45947');

delete from gossip_menu_option where menu_id = 45947;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45947,3,"Jon-Jon, I m here to lead your wind rider squad and drop off the Kor kron assassins.",1,1);
INSERT INTO `gossip_menu_option` VALUES (45947, 0, 2, 'Show me where I can fly.', 4, 8192, 0, 0, 0, 0, '');

DELETE FROM `creature_text` WHERE (`entry`='45947') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45947','1','0','Hey, why not you say so? Give dem Twilight s the ol  one-two, den ya comin  back here an we party!  ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='27491');
INSERT INTO `conditions` VALUES (15, 45947, 3, 0, 0, 9, 0, 27491, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

UPDATE creature_template SET inhabittype = 4 WHERE entry IN (45942);
DELETE FROM `creature_template_addon` WHERE (`entry`='45942');
INSERT INTO `creature_template_addon` VALUES (45942, 0, 0, 50331648, 1, 0, '53112');
-- Delete is present on the quest above
INSERT INTO `smart_scripts` VALUES (46119, 0, 9, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 45877, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 27497/27496 Call in the Artillery
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='85481');
INSERT INTO `spell_linked_spell` VALUES (85481, 62464, 0, 'spell trigger');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='85478');
INSERT INTO `spell_linked_spell` VALUES (85478, 62464, 0, 'spell trigger');
-- Building 1
DELETE FROM `creature_template` WHERE (`entry`='341763');
INSERT INTO `creature_template` VALUES (341763, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Northern Building bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341763');
INSERT INTO `creature_template_addon` VALUES (341763, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341763');
INSERT INTO `creature` VALUES (null, 341763, 0, 1, 1, 0, 0, -4324.88, -4512.41, 240.5, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341763) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341763, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 45865, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');
-- Building 2
DELETE FROM `creature_template` WHERE (`entry`='341764');
INSERT INTO `creature_template` VALUES (341764, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Northeastern Building bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341764');
INSERT INTO `creature_template_addon` VALUES (341764, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341764');
INSERT INTO `creature` VALUES (null, 341764, 0, 1, 1, 0, 0, -4411.71, -4601.70, 209.95, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341764) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341764, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 45864, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');
-- Building 3
DELETE FROM `creature_template` WHERE (`entry`='341765');
INSERT INTO `creature_template` VALUES (341765, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Southwestern Building bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341765');
INSERT INTO `creature_template_addon` VALUES (341765, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341765');
INSERT INTO `creature` VALUES (null, 341765, 0, 1, 1, 0, 0, -4590.77, -4532.47, 226.5, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341765) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341765, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 45863, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');
-- Building 4
DELETE FROM `creature_template` WHERE (`entry`='341766');
INSERT INTO `creature_template` VALUES (341766, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Southern Building bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341766');
INSERT INTO `creature_template_addon` VALUES (341766, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341766');
INSERT INTO `creature` VALUES (null, 341766, 0, 1, 1, 0, 0, -4711.94, -4634.63, 252, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341766) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341766, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 45862, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 27783 Garona Needs You / 27782 Mathias Needs You
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27782');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='27783');
UPDATE `creature_template` SET `modelid1`='35324', `modelid2`='0' WHERE (`entry`='46717');
DELETE FROM `creature_template_addon` WHERE (`entry`='46717');

-- Quest 27782 Mathias Needs You CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27784' WHERE (`Id`='27782');
UPDATE `quest_template` SET `NextQuestIdChain`='27787' WHERE (`Id`='27784');
UPDATE `quest_template` SET `PrevQuestId`='27782' WHERE (`Id`='27784');
UPDATE `quest_template` SET `PrevQuestId`='27784' WHERE (`Id`='27787');

-- Quest 27783 Garona Needs You CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27786' WHERE (`Id`='27783');
UPDATE `quest_template` SET `NextQuestIdChain`='27788' WHERE (`Id`='27786');
UPDATE `quest_template` SET `PrevQuestId`='27783' WHERE (`Id`='27786');
UPDATE `quest_template` SET `PrevQuestId`='27786' WHERE (`Id`='27788');

-- Quest 27788 Skullcrusher the Mountain
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46717');
DELETE FROM smart_scripts WHERE entryorguid IN (46717) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (46717, 0, 1, 2, 19, 0, 100, 0, 27788, 0, 0, 0, 12, 46732, 6, 16000, 0, 0, 0, 8, 0, 0, 0, -5267.18, -4832.97, 444.5, 0.494, 'Summon');
INSERT INTO `smart_scripts` VALUES (46717, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 46967, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');
DELETE FROM `creature` WHERE (`id`='46732');

-- Quest 27610 Scouting the Shore
DELETE FROM `gameobject` WHERE (`id`='205356');
INSERT INTO `gameobject` VALUES (null, 205356, 0, 1, 1, -4445.24, -6521.27, 4.60042, 5.60102, 0, 0, 0.334509, -0.942393, 300, 0, 1);
DELETE FROM `gameobject` WHERE (`id`='205357');
INSERT INTO `gameobject` VALUES (null, 205357, 0, 1, 1, -4446.38, -6520.5, 4.64045, 2.46336, 0, 0, 0.943049, 0.332652, 300, 0, 1);
DELETE FROM `gameobject` WHERE (`id`='205355');
INSERT INTO `gameobject` VALUES (null, 205355, 0, 1, 1, -4446.38, -6520.5, 4.64045, 2.64793, 0, 0, 0.969692, 0.244332, 300, 0, 1);

DELETE FROM `creature_template` WHERE (`entry`='341767');
INSERT INTO `creature_template` VALUES (341767, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Scouting bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341767');
INSERT INTO `creature_template_addon` VALUES (341767, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341767');
INSERT INTO `creature` VALUES (null, 341767, 0, 1, 1, 0, 0, -4441.97, -6509.06, 12.49, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341767) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341767, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 341767, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');

UPDATE `quest_template` SET `RequiredNpcOrGo1`='341767', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='27610');

-- Quest 27622 Mo' Better Shredder CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='28583' WHERE (`Id`='27622');
UPDATE `quest_template` SET `NextQuestIdChain`='28588' WHERE (`Id`='28583');
UPDATE `quest_template` SET `NextQuestIdChain`='28589' WHERE (`Id`='28588');
UPDATE `quest_template` SET `PrevQuestId`='27622' WHERE (`Id`='28583');
UPDATE `quest_template` SET `PrevQuestId`='28583' WHERE (`Id`='28588');
UPDATE `quest_template` SET `PrevQuestId`='28588' WHERE (`Id`='28589');

-- Quest 27622 Mo' Better Shredder
UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (46100);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='46100');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('46100', '85897', '3');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='85897');
INSERT INTO `spell_linked_spell` VALUES (85897, 62464, 0, 'spell trigger');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46100');
DELETE FROM smart_scripts WHERE entryorguid IN (46100);
INSERT INTO `smart_scripts` VALUES (46100, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'phase1');
INSERT INTO `smart_scripts` VALUES (46100, 0, 2, 0, 1, 1, 100, 1, 1000, 1100, 0, 0, 12, 45174, 6, 60, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summon');
INSERT INTO `smart_scripts` VALUES (46100, 0, 3, 0, 1, 1, 100, 1, 10000, 10100, 0, 0, 12, 45174, 6, 60, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summon');
INSERT INTO `smart_scripts` VALUES (46100, 0, 4, 0, 1, 1, 100, 1, 9000, 9100, 0, 0, 12, 45174, 6, 60, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summon');
INSERT INTO `smart_scripts` VALUES (46100, 0, 5, 0, 1, 1, 100, 1, 15000, 15100, 0, 0, 12, 45174, 6, 60, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summon');
INSERT INTO `smart_scripts` VALUES (46100, 0, 6, 0, 1, 1, 100, 1, 20000, 20100, 0, 0, 12, 45185, 6, 60, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summon');
INSERT INTO `smart_scripts` VALUES (46100, 0, 7, 0, 1, 1, 100, 1, 20100, 20200, 0, 0, 33, 46109, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'Credit');
INSERT INTO `smart_scripts` VALUES (46100, 0, 8, 0, 1, 1, 100, 1, 20200, 20300, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

-- Quest 28588 Wildhammer Infestation
DELETE FROM `creature` WHERE (`id`='49628');
INSERT INTO `creature` VALUES (null, 49628, 0, 1, 1, 0, 1, -2748.05, -6488.98, 229.008, 5.46461, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49628, 0, 1, 1, 0, 1, -2741.15, -6507.64, 230.619, 0.548015, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49628, 0, 1, 1, 0, 1, -2713.69, -6510.16, 217.325, 4.21975, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49628, 0, 1, 1, 0, 1, -2798.24, -6492.57, 229.193, 4.32971, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49628, 0, 1, 1, 0, 1, -2799.85, -6475.86, 229.562, 2.26018, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49628, 0, 1, 1, 0, 1, -2776.5, -6456.15, 219.722, 2.87279, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49628, 0, 1, 1, 0, 1, -2779.03, -6481.33, 218.276, 2.70001, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49628, 0, 1, 1, 0, 1, -2777.13, -6429.19, 219.406, 4.15692, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49628, 0, 1, 1, 0, 1, -2765.17, -6442.5, 247.918, 4.93447, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49628, 0, 1, 1, 0, 1, -2785.4, -6432.7, 246.511, 3.3244, 300, 0, 0, 70946, 0, 0, 0, 0, 0);

-- Quest 28589 Everything But the Kitchen Sink
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48993');
DELETE FROM smart_scripts WHERE entryorguid IN (48993);
INSERT INTO `smart_scripts` VALUES (48993, 0, 1, 0, 19, 0, 100, 0, 28589, 0, 0, 0, 33, 49831, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0,'credit1');
DELETE FROM `creature` WHERE (`id`='49683');
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2672.27, -6494.31, 184.048, 5.15673, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2662.56, -6533.57, 185.634, 4.19855, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2708.08, -6472.77, 262.626, 4.11609, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2792.76, -6565.5, 184.041, 2.03477, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2817.33, -6516.4, 167.822, 2.03477, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2703.4, -6413.47, 316.558, 2.95763, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2694.15, -6421.68, 200.028, 1.84629, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2721.08, -6470.99, 274.393, 3.90403, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2793.89, -6458.56, 295.616, 4.94862, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2685.3, -6443.46, 191.087, 5.08212, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2720.72, -6571.18, 186.961, 3.51525, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2753.47, -6520.26, 347.585, 0.727094, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2721.98, -6351.76, 87.0917, 2.00472, 300, 0, 0, 20899, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2840.22, -6440.31, 51.6843, 3.04144, 300, 0, 0, 20899, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2857.04, -6493.77, 49.0676, 2.76655, 300, 0, 0, 20899, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2880.13, -6597.53, 43.4798, 3.23779, 300, 0, 0, 20899, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2851.71, -6640.49, 40.616, 3.67762, 300, 0, 0, 20899, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2775.16, -6655.26, 59.8504, 3.43022, 300, 0, 0, 20899, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2717.02, -6608.99, 122.844, 3.06893, 300, 0, 0, 20899, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49683, 0, 1, 1, 0, 0, -2679.63, -6579.69, 173.879, 2.52701, 300, 0, 0, 20899, 0, 0, 0, 0, 0);

-- Quest 28590 Reprisal 
DELETE FROM `creature` WHERE (`id`='49378');
INSERT INTO `creature` VALUES (null, 49378, 0, 1, 1, 0, 0, -4662.42, -6710.31, 8.68655, 0.668808, 300, 0, 0, 18423, 0, 0, 0, 0, 0);
-- Removed quest 28591 due to zeppeling bug, at any server restart npc on it get duplicated
DELETE FROM `creature_questrelation` WHERE (`id`='49378') AND (`quest`='28591');

-- Quest 28593 Of Utmost Importance CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='28595' WHERE (`Id`='28593');
UPDATE `quest_template` SET `NextQuestIdChain`='28595' WHERE (`Id`='28594');
UPDATE `quest_template` SET `PrevQuestId`='28593' WHERE (`Id`='28595');

-- Quest 28593 Of Utmost Importance
DELETE FROM `gameobject` WHERE (`id`='204091');
INSERT INTO `gameobject` VALUES (null, 204091, 0, 1, 1, -4715.7, -6690.08, 34.1448, 4.36018, 0, 0, 0.820053, -0.572288, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 204091, 0, 1, 1, -4736.86, -6703.6, 21.5737, 3.50408, 0, 0, 0.98362, -0.180254, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 204091, 0, 1, 1, -4789.74, -6732.9, 18.7271, 2.10607, 0, 0, 0.868929, 0.494936, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 204091, 0, 1, 1, -4809.91, -6766.25, 40.3347, 3.48837, 0, 0, 0.985006, -0.172521, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 204091, 0, 1, 1, -4877.29, -6666.43, 43.0953, 2.16105, 0, 0, 0.882205, 0.470866, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 204091, 0, 1, 1, -4849.67, -6643.9, 43.095, 1.69373, 0, 0, 0.749208, 0.662335, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 204091, 0, 1, 1, -4800.74, -6618.29, 11.415, 5.12593, 0, 0, 0.546876, -0.837214, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 204091, 0, 1, 1, -4741.32, -6618.71, 11.6604, 2.0354, 0, 0, 0.850902, 0.525324, 300, 0, 1);

-- Quest 28592 Parting Packages
DELETE FROM `gameobject_template` WHERE (`entry`='431201');
INSERT INTO `gameobject_template` VALUES (431201, 8, 396, 'Highbank Bomb Target', '', '', '', 0, 0, 1.17224, 0, 0, 0, 0, 0, 0, 1706, 8, 431200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='91976');
INSERT INTO `spell_linked_spell` VALUES (91976, 62464, 0, 'spell trigger');

DELETE FROM `gameobject` WHERE (`id`='431201');
INSERT INTO `gameobject` VALUES (null, 431201, 0, 1, 1, -4922.95, -6737.78, 5.5, 4.36018, 0, 0, 0.820053, -0.572288, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 431201, 0, 1, 1, -4871.51, -6648.78, 32, 4.36018, 0, 0, 0.820053, -0.572288, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 431201, 0, 1, 1, -4698.09, -6662.87, 44.3, 4.36018, 0, 0, 0.820053, -0.572288, 300, 0, 1);
-- build1
DELETE FROM `creature_template` WHERE (`entry`='341768');
INSERT INTO `creature_template` VALUES (341768, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Boat bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341768');
INSERT INTO `creature_template_addon` VALUES (341768, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341768');
INSERT INTO `creature` VALUES (null, 341768, 0, 1, 1, 0, 0, -4922.95, -6737.78, 5.5, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341768) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341768, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 49381, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');
-- build2
DELETE FROM `creature_template` WHERE (`entry`='341769');
INSERT INTO `creature_template` VALUES (341769, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Keep bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341769');
INSERT INTO `creature_template_addon` VALUES (341769, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341769');
INSERT INTO `creature` VALUES (null, 341769, 0, 1, 1, 0, 0, -4871.51, -6648.78, 32, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341769) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341769, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 49380, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');
-- build3
DELETE FROM `creature_template` WHERE (`entry`='341770');
INSERT INTO `creature_template` VALUES (341770, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Tower bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341770');
INSERT INTO `creature_template_addon` VALUES (341770, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341770');
INSERT INTO `creature` VALUES (null, 341770, 0, 1, 1, 0, 0, -4698.09, -6662.87, 44.3, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341770) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341770, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 49144, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');

DELETE FROM `creature` WHERE (`id`='49002');
INSERT INTO `creature` VALUES (null, 49002, 0, 1, 1, 0, 0, -4986.73, -6750.45, 6.29815, 0.126578, 300, 0, 0, 12282, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='2202', `faction_H`='2202' WHERE (`entry`='47611');

-- Quest 28586 Pool Pony Rescue
DELETE FROM `creature` WHERE (`id`='49548');
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2786.89, -6314.65, 3.84194, 3.76348, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2777.55, -6318.31, 1.17965, 3.12731, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2789.81, -6322.69, 4.47184, 3.40612, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2807.97, -6317.98, 3.05291, 2.88776, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2834.24, -6344.12, 2.56898, 3.57499, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2818.92, -6336.21, 5.04246, 0.445177, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2839.3, -6376.82, 23.8524, 4.30149, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2934.19, -6431.29, 0.00115549, 1.26538, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2920.71, -6460.69, 0.000878519, 5.17667, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2974.54, -6582.27, 0.000878519, 4.05443, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2961.68, -6609.05, 0.000878519, 5.16143, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2938.76, -6676.52, 0.000878519, 5.25368, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2853.98, -6733.03, 0.000878519, 5.59006, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2786.46, -6723.22, 0.000878519, 0.150622, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2746.34, -6729.38, 0.000878519, 0.303623, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2686.32, -6710.57, 0.000878519, 0.303623, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2600.82, -6689.98, 0.000878519, 5.28743, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2543.4, -6580.18, 0.000878519, 0.842498, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2528.39, -6497.55, 0.000878519, 1.1845, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2548.17, -6428.46, 0.000878519, 1.86062, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2516.87, -6509.46, 0.000878519, 0.0403724, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2542.49, -6357.9, 0.000878519, 2.04962, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2619.2, -6295.34, 0.000878519, 2.49175, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2644.23, -6310.75, 0.000878519, 3.69325, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2691.52, -6269.12, 0.000878519, 3.24325, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2787.21, -6278.88, 0.000878519, 3.24325, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2818.54, -6282.07, 0.000878519, 3.24325, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2860.5, -6325.52, 0.000878519, 4.58087, 300, 0, 0, 6568, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49548, 0, 1, 1, 0, 0, -2896.49, -6363.76, 0.000878519, 3.91037, 300, 0, 0, 6568, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `unit_flags`='0', `dynamicflags`='0', `InhabitType`='4', `HoverHeight`='0'WHERE (`entry`='49548');
DELETE FROM `creature_template_addon` WHERE (`entry`='49548');
INSERT INTO `creature_template_addon` VALUES (49548, 0, 0, 33554432, 0, 0, '53112');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='49548');
DELETE FROM smart_scripts WHERE entryorguid IN (49548);
INSERT INTO `smart_scripts` VALUES (49548, 0, 1, 2, 8, 0, 100, 0, 92317, 0, 0, 0, 33, 49548, 0, 0, 0, 0, 0, 21, 60, 0, 0, 0, 0, 0, 0,'credit');
INSERT INTO `smart_scripts` VALUES (49548, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

-- Quest 28584 Quality Construction
UPDATE `gameobject_template` SET `data5`='28584' WHERE (`entry`='207298');
DELETE FROM `gameobject` WHERE (`id`='207298');
INSERT INTO `gameobject` VALUES (null, 207298, 0, 1, 1, -2769.20, -6434.84, 249.552, 6.27993, 0, 0, 0.00162879, -0.999999, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207298, 0, 1, 1, -2769.85, -6450.97, 247.738, 1.75211, 0, 0, 0.768219, 0.640187, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207298, 0, 1, 1, -2727.70, -6417.48, 241.796, 3.11084, 0, 0, 0.999882, 0.0153733, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207298, 0, 1, 1, -2793.64, -6472.00, 218.278, 0.24806, 0, 0, 0.123716, 0.992318, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207298, 0, 1, 1, -2722.49, -6428.97, 252.144, 3.49174, 0, 0, 0.984714, -0.174181, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207298, 0, 1, 1, -2767.48, -6390.13, 199.149, 2.23510, 0, 0, 0.89903, 0.437887, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207298, 0, 1, 1, -2787.22, -6401.58, 199.180, 0.05954, 0, 0, 0.0297692, 0.999557, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207298, 0, 1, 1, -2781.28, -6383.74, 199.030, 6.03642, 0, 0, 0.12307, -0.992398, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207298, 0, 1, 1, -2749.46, -6534.76, 200.748, 0.45887, 0, 0, 0.227428, 0.973795, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207298, 0, 1, 1, -2761.88, -6529.15, 200.748, 0.35645, 0, 0, 0.177287, 0.984159, 300, 0, 1);

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='92245');
INSERT INTO `spell_linked_spell` VALUES (92245, 62464, 0, 'spell trigger');

DELETE FROM `creature_template` WHERE (`entry`='341771');
INSERT INTO `creature_template` VALUES (341771, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Pipe bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341771');
INSERT INTO `creature_template_addon` VALUES (341771, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341771');
INSERT INTO `creature` VALUES (null, 341771, 0, 1, 1, 0, 0, -2769.20, -6434.84, 249.552, 0.226557, 60, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341771, 0, 1, 1, 0, 0, -2769.85, -6450.97, 247.738, 0.226557, 60, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341771, 0, 1, 1, 0, 0, -2727.70, -6417.48, 241.796, 0.226557, 60, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341771, 0, 1, 1, 0, 0, -2793.64, -6472.00, 218.278, 0.226557, 60, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341771, 0, 1, 1, 0, 0, -2722.49, -6428.97, 252.144, 0.226557, 60, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341771, 0, 1, 1, 0, 0, -2767.48, -6390.13, 199.149, 0.226557, 60, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341771, 0, 1, 1, 0, 0, -2787.22, -6401.58, 199.180, 0.226557, 60, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341771, 0, 1, 1, 0, 0, -2781.28, -6383.74, 199.030, 0.226557, 60, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341771, 0, 1, 1, 0, 0, -2749.46, -6534.76, 200.748, 0.226557, 60, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341771, 0, 1, 1, 0, 0, -2761.88, -6529.15, 200.748, 0.226557, 60, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341771) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341771, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 49451, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (341771, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

-- Quest 27583 The Northern Flank CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27584' WHERE (`Id`='27583');
UPDATE `quest_template` SET `PrevQuestId`='27583' WHERE (`Id`='27584');

-- Quest 27586 Shells on the Sea Shore
DELETE FROM `gameobject` WHERE (`id`='205823');
INSERT INTO `gameobject` VALUES (null, 205823, 0, 1, 1, -3738.28, -6291.87, 3.49976, 1.66343, 0, 0, 0.739087, 0.67361, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205823, 0, 1, 1, -3706, -6283.56, 1.25563, 0.0612132, 0, 0, 0.0306018, 0.999532, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205823, 0, 1, 1, -3690.64, -6219.23, 7.94095, 1.38068, 0, 0, 0.6368, 0.771029, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205823, 0, 1, 1, -3624.72, -6233.99, 0.802332, 5.86923, 0, 0, 0.205501, -0.978657, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205823, 0, 1, 1, -3595.73, -6246.59, -0.387536, 6.15983, 0, 0, 0.0616402, -0.998098, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205823, 0, 1, 1, -3588.39, -6213.51, 1.37311, 0.936929, 0, 0, 0.451517, 0.892263, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205823, 0, 1, 1, -3541.95, -6158.72, 9.45191, 0.171165, 0, 0, 0.0854781, 0.99634, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205823, 0, 1, 1, -3566.25, -6229.12, -0.727909, 2.75905, 0, 0, 0.981764, 0.190105, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205823, 0, 1, 1, -3561.79, -6198.52, 1.70994, 1.2668, 0, 0, 0.591887, 0.806021, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205823, 0, 1, 1, -3632.82, -6191.78, 6.39101, 2.43704, 0, 0, 0.93859, 0.345036, 300, 0, 1);

-- Quest 27606 Blast Him!
DELETE FROM `gameobject` WHERE (`id`='205831');
INSERT INTO `gameobject` VALUES (null, 205831, 0, 1, 1, -3634.92, -6254.88, 1.30222, 2.72567, 0, 0, 0.978454, 0.206466, 300, 0, 1);
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='46009');
UPDATE `creature_template` SET `minlevel`='84', `maxlevel`='84' WHERE (`entry`='46009');
UPDATE `creature_template` SET `Health_mod`='43.206' WHERE (`entry`='46009');
DELETE FROM `creature` WHERE (`id`='46009');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='85784') AND (`spell_effect`='45320');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('85784', '45320', 'summon creature');
DELETE FROM `spell_scripts` WHERE (`datalong`='46009');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('45320', '10', '46009', '120000', '-3642.15', '-6243.52', '1.12', '0.03');

-- Fix some wrong spawn and race requirement
DELETE FROM `creature` WHERE (`id`='43943');
INSERT INTO `creature` VALUES (null, 43943, 0, 1, 1, 0, 0, -4073.24, -6410.49, 39.6547, 1.04664, 600, 0, 0, 16800, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='43581');
INSERT INTO `creature` VALUES (null, 43581, 0, 1, 1, 0, 0, -3890.38, -6473.84, 18.4421, 3.5501, 300, 0, 0, 6755, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43581, 0, 1, 1, 0, 0, -3889.65, -6385.63, 59.7812, 6.27542, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='43576');
INSERT INTO `creature` VALUES (null, 43576, 0, 1, 1, 0, 0, -4011.57, -6327.71, 39.3101, 4.06464, 600, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `gameobject` WHERE (`id`='208226');
INSERT INTO `gameobject` VALUES (null, 208226, 732, 1, 1, -598.766, 1377.97, 21.919, 0, 0, 0, 0, 1, 7200, 255, 1);
INSERT INTO `gameobject` VALUES (null, 208226, 0, 1, 1, -4037.85, -6313.93, 38.6993, 2.1469, 0, 0, 0.878853, 0.477093, 300, 0, 1);
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27720');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28885');

-- Quest 26619 You Say You Want a Revolution CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='26621' WHERE (`Id`='26619');
UPDATE `quest_template` SET `NextQuestIdChain`='26622' WHERE (`Id`='26621');
UPDATE `quest_template` SET `NextQuestIdChain`='26786' WHERE (`Id`='26622');
UPDATE `quest_template` SET `NextQuestIdChain`='26784' WHERE (`Id`='26786');
UPDATE `quest_template` SET `NextQuestIdChain`='26798' WHERE (`Id`='26784');
UPDATE `quest_template` SET `NextQuestIdChain`='26830' WHERE (`Id`='26798');
UPDATE `quest_template` SET `NextQuestIdChain`='26840' WHERE (`Id`='26830');
UPDATE `quest_template` SET `PrevQuestId`='26619' WHERE (`Id`='26621');
UPDATE `quest_template` SET `PrevQuestId`='26621' WHERE (`Id`='26622');
UPDATE `quest_template` SET `PrevQuestId`='26622' WHERE (`Id`='26786');
UPDATE `quest_template` SET `PrevQuestId`='26786' WHERE (`Id`='26784');
UPDATE `quest_template` SET `PrevQuestId`='26784' WHERE (`Id`='26798');
UPDATE `quest_template` SET `PrevQuestId`='26798' WHERE (`Id`='26830');
UPDATE `quest_template` SET `PrevQuestId`='26830' WHERE (`Id`='26840');

-- Quest 26621 Insurrection
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43387');
DELETE FROM smart_scripts WHERE entryorguid IN (43387);
INSERT INTO `smart_scripts` VALUES (43387, 0, 1, 5, 62, 0, 100, 0, 43387, 0, 0, 0, 33, 43654, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (43387, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (43387, 0, 6, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (43387, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

UPDATE `creature_template` SET `gossip_menu_id`='43387' WHERE (`entry`='43387');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='43387');

delete from gossip_menu_option where menu_id = 43387;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(43387,0,"Support and heal me! Take up this warhammer and be a hero.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='43387') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('43387','1','0','For the Horde!  ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='26621');
INSERT INTO `conditions` VALUES (15, 43387, 0, 0, 0, 9, 0, 26621, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43941');
DELETE FROM smart_scripts WHERE entryorguid IN (43941);
INSERT INTO `smart_scripts` VALUES (43941, 0, 1, 5, 62, 0, 100, 0, 43941, 0, 0, 0, 33, 43654, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (43941, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (43941, 0, 6, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (43941, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

UPDATE `creature_template` SET `gossip_menu_id`='43941' WHERE (`entry`='43941');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='43941');

delete from gossip_menu_option where menu_id = 43941;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(43941,0,"Support and heal me! Take up this warhammer and be a hero.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='43941') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('43941','1','0','For the Horde!  ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='26621');
INSERT INTO `conditions` VALUES (15, 43941, 0, 0, 0, 9, 0, 26621, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43577');
DELETE FROM smart_scripts WHERE entryorguid IN (43577);
INSERT INTO `smart_scripts` VALUES (43577, 0, 1, 5, 62, 0, 100, 0, 43577, 0, 0, 0, 33, 43654, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (43577, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (43577, 0, 6, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (43577, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

UPDATE `creature_template` SET `gossip_menu_id`='43577' WHERE (`entry`='43577');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='43577');

delete from gossip_menu_option where menu_id = 43577;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(43577,0,"Support and heal me! Take up this warhammer and be a hero.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='43577') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('43577','1','0','For the Horde!  ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='26621');
INSERT INTO `conditions` VALUES (15, 43577, 0, 0, 0, 9, 0, 26621, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='49567');
DELETE FROM smart_scripts WHERE entryorguid IN (49567);
INSERT INTO `smart_scripts` VALUES (49567, 0, 1, 5, 62, 0, 100, 0, 49567, 0, 0, 0, 33, 43654, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (49567, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (49567, 0, 6, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (49567, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

UPDATE `creature_template` SET `gossip_menu_id`='49567' WHERE (`entry`='49567');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='49567');

delete from gossip_menu_option where menu_id = 49567;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(49567,0,"Support and heal me! Take up this warhammer and be a hero.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='49567') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('49567','1','0','For the Horde!  ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='26621');
INSERT INTO `conditions` VALUES (15, 49567, 0, 0, 0, 9, 0, 26621, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 26784 Muddied Waters
UPDATE `creature_template` SET `lootid`='44011' WHERE (`entry`='44011');
DELETE FROM `creature_loot_template` WHERE (`entry`='44011') AND (`item`='60333');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44011', '60333', '-30');

-- Quest 26830 Traitor's Bait
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44160');
DELETE FROM smart_scripts WHERE entryorguid IN (44160);
INSERT INTO `smart_scripts` VALUES (44160, 0, 1, 5, 62, 0, 100, 0, 44160, 0, 0, 0, 33, 44132, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (44160, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (44160, 0, 6, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (44160, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 44120 , 6, 60, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summon');

UPDATE `creature_template` SET `gossip_menu_id`='44160' WHERE (`entry`='44160');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='44160');

delete from gossip_menu_option where menu_id = 44160;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(44160,0,"Has a secret cult infiltrated the Orgrimmar skyway?",1,1);

DELETE FROM `creature_text` WHERE (`entry`='44160') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('44160','1','0','Wait, uh - you put words in my mouth! Not fair!  ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='26830');
INSERT INTO `conditions` VALUES (15, 44160, 0, 0, 0, 9, 0, 26830, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

UPDATE `creature_template` SET `unit_flags`='0', `Health_mod`='128992' WHERE (`entry`='44120');

-- Quest 26538 Emergency Aid CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='26540' WHERE (`Id`='26538');
UPDATE `quest_template` SET `PrevQuestId`='26538' WHERE (`Id`='26540');

-- Quest 26538 Emergency Aid
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43191');
DELETE FROM smart_scripts WHERE entryorguid IN (43191);
INSERT INTO `smart_scripts` VALUES (43191, 0, 1, 5, 62, 0, 100, 0, 43191, 0, 0, 0, 33, 43212, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (43191, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (43191, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');

UPDATE `creature_template` SET `gossip_menu_id`='43191' WHERE (`entry`='43191');

delete from gossip_menu_option where menu_id = 43191;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(43191,0,"I need support from the shore to keep my men alive!",1,1);

DELETE FROM `creature_text` WHERE (`entry`='43191') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('43191','1','0','I trust you to do the right thing. $C, I can help your fallen warriors...  ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='26538');
INSERT INTO `conditions` VALUES (15, 43191, 0, 0, 0, 9, 0, 26538, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 26549 Madness - AUTOCOMPLETE - animation missing
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='26549');

-- Quest 27689 Distract Them for Me CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27701' WHERE (`Id`='27689');
UPDATE `quest_template` SET `NextQuestIdChain`='27701' WHERE (`Id`='27696');
UPDATE `quest_template` SET `NextQuestIdChain`='27703' WHERE (`Id`='27701');
UPDATE `quest_template` SET `NextQuestIdChain`='27712' WHERE (`Id`='27703');
UPDATE `quest_template` SET `NextQuestIdChain`='27712' WHERE (`Id`='27798');
UPDATE `quest_template` SET `NextQuestIdChain`='28885' WHERE (`Id`='27712');
UPDATE `quest_template` SET `PrevQuestId`='27689' WHERE (`Id`='27701');
UPDATE `quest_template` SET `PrevQuestId`='27701' WHERE (`Id`='27703');
UPDATE `quest_template` SET `PrevQuestId`='27701' WHERE (`Id`='27798');
UPDATE `quest_template` SET `PrevQuestId`='27703' WHERE (`Id`='27712');
UPDATE `quest_template` SET `PrevQuestId`='27712' WHERE (`Id`='28885');

-- Quest 27696 The Elementium Axe 
UPDATE `creature_template` SET `lootid`='46399' WHERE (`entry`='46399');
DELETE FROM `creature_loot_template` WHERE (`entry`='46399') AND (`item`='62230');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46399', '62230', '-100');

-- Quest 27701 Dragon, Unchained
DELETE FROM `gameobject` WHERE (`id`='190938');
INSERT INTO `gameobject` VALUES (null, 190938, 609, 1, 4, 1817.74, -6010.35, 119.749, 2.30383, 0, 0, 0, 1, 180, 0, 1);
INSERT INTO `gameobject` VALUES (null, 190938, 0, 1, 1, -4567.2, -4139.01, 332.587, 1.41519, 0, 0, 0.650007, 0.759928, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 190938, 0, 1, 1, -4567.2, -4139.01, 332.587, 1.37592, 0, 0, 0.634962, 0.772544, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 190938, 0, 1, 1, -4579.42, -4139.55, 331.529, 2.52653, 0, 0, 0.953084, 0.302707, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 190938, 0, 1, 1, -4579.46, -4127.81, 330.836, 0.405953, 0, 0, 0.201585, 0.979471, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 190938, 0, 1, 1, -4574.36, -4123.98, 330.481, 3.61039, 0, 0, 0.972654, -0.232257, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 190938, 0, 1, 1, -4578.63, -4129.78, 330.865, 0.280298, 0, 0, 0.139691, 0.990195, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 190938, 0, 1, 1, -4580.71, -4125.72, 331.273, 0.311715, 0, 0, 0.155227, 0.987879, 300, 0, 1);

DELETE FROM `gameobject_template` WHERE (`entry`='431202');
INSERT INTO `gameobject_template` VALUES (431202, 8, 396, 'Chained Lirastrasza ', '', '', '', 0, 0, 1.17224, 0, 0, 0, 0, 0, 0, 1691, 8, 431202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `gameobject` WHERE (`id`='431202');
INSERT INTO `gameobject` VALUES (null, 431202, 0, 1, 1, -4572.00, -4147.62, 330.3, 1.41519, 0, 0, 0.650007, 0.759928, 300, 0, 1);

DELETE FROM `item_template` WHERE (`entry`='62248');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `delay`, `spellid_1`, `spellcooldown_1`, `bonding`, `Material`, `WDBVerified`) VALUES ('62248', '12', 'The Elementium Axe', '72219', '1', '64', '8192', '0', '62464', '1000', '4', '8', '13329');

DELETE FROM `creature_template` WHERE (`entry`='341772');
INSERT INTO `creature_template` VALUES (341772, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Chain bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341772');
INSERT INTO `creature_template_addon` VALUES (341772, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341772');
INSERT INTO `creature` VALUES (null, 341772, 0, 1, 1, 0, 0, -4572.00, -4147.62, 330.3, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341772) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341772, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 46456, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 27703 Coup de Grace
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='46416');

-- Quest 27719 / 27798 Water of Life
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27719');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='27798');

-- Quest 27798 Water of Life
DELETE FROM `creature` WHERE (`id`='46819');
INSERT INTO `creature` VALUES (null, 46819, 0, 1, 1, 0, 0, -4233.33, -4293.36, 308.548, 2.21168, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46819, 0, 1, 1, 0, 0, -4298.6, -4299.15, 285.683, 5.60793, 300, 0, 0, 6755, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46819');
DELETE FROM smart_scripts WHERE entryorguid IN (46819);
INSERT INTO `smart_scripts` VALUES (46819, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'change phase');
INSERT INTO `smart_scripts` VALUES (46819, 0, 3, 0, 1, 1, 100, 1, 1500, 2500, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (46819, 0, 4, 0, 1, 1, 100, 1, 11500, 12500, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (46819, 0, 7, 0, 1, 1, 100, 1, 19500, 19500, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (46819, 0, 9, 0, 1, 1, 100, 1, 25500, 26500, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (46819, 0, 8, 0, 1, 1, 100, 1, 30000, 31000, 0, 0, 33, 46819, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'credit');

DELETE FROM `creature_text` WHERE (`entry`='46819');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('46819','1','0','I m dead! Murdered by the Twilight s Hammer.. ','12','0','100','0','0','0','Life party'),
('46819','2','0','They captured and enslaved us. Put us to work on a weapon. ','12','0','100','0','0','0','Life party'),
('46819','3','0','A special project... an artifact for Cho gall. ','12','0','100','0','0','0','Life party'),
('46819','4','0','The weapon which you seek is called the Hammer of Twilight. ','12','0','100','0','0','0','Life party');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='86499');
INSERT INTO `spell_linked_spell` VALUES (86499, 62464, 0, 'spell trigger');

DELETE FROM `gameobject_template` WHERE (`entry`='431203');
INSERT INTO `gameobject_template` VALUES (431203, 8, 107, 'Instruction Book of Hammer', '', '', '', 0, 0, 1.17224, 0, 0, 0, 0, 0, 0, 1696, 8, 431203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `gameobject` WHERE (`id`='431203');
INSERT INTO `gameobject` VALUES (null, 431203, 0, 1, 1, -4300.99, -4301.62, 284.0, 1.41519, 0, 0, 0.650007, 0.759928, 300, 0, 1);

-- Quest 28885 / 27720 Mr. Goldmine's Wild Ride
UPDATE `creature_template` SET `modelid1`='25703' WHERE (`entry`='39329');
UPDATE `creature_template` SET `npcflag`='16777216', `VehicleId`='156' WHERE (`entry`='39329');
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='39329');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('39329', '73746', '1');
DELETE FROM `creature` WHERE (`id`='46513');
INSERT INTO `creature` VALUES (null, 46513, 0, 1, 1, 0, 0, -5451.4, -4456.49, 328.195, 3.86522, 300, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46513, 0, 1, 1, 0, 0, -5197.18, -4241.93, 296.165, 4.78134, 300, 0, 0, 46, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46243');
DELETE FROM smart_scripts WHERE entryorguid IN (46243);
INSERT INTO `smart_scripts` VALUES (46243, 0, 1, 3, 19, 0, 100, 0, 28885, 0, 0, 0, 86, 73746, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'Summon cart');
INSERT INTO `smart_scripts` VALUES (46243, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 46472, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'First credit');
INSERT INTO `smart_scripts` VALUES (46243, 0, 2, 4, 19, 0, 100, 0, 27720, 0, 0, 0, 86, 73746, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'Summon cart');
INSERT INTO `smart_scripts` VALUES (46243, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 46472, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'First credit');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46513');
DELETE FROM smart_scripts WHERE entryorguid IN (46513);
INSERT INTO `smart_scripts` VALUES (46513, 0, 1, 3, 1, 0, 100, 0, 0, 0, 0, 0, 33, 46459, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Second credit');
INSERT INTO `smart_scripts` VALUES (46513, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 28, 73747, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'Remove aurea');
DELETE FROM `creature` WHERE (`id`='46472');

-- Quest 27742 A Little on the Side CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27745' WHERE (`Id`='27742');
UPDATE `quest_template` SET `PrevQuestId`='27742' WHERE (`Id`='27745');

-- Quest 27742 A Little on the Side
UPDATE `creature_template` SET `lootid`='46580' WHERE (`entry`='46580');
DELETE FROM `creature_loot_template` WHERE (`entry`='46580') AND (`item`='62331');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46580', '62331', '-30');

-- Quest 27743 While We're Here
UPDATE `creature_template` SET `unit_flags`='0', `dynamicflags`='0', `unit_flags2`='2048' WHERE (`entry`='46579');
DELETE FROM `creature_template_addon` WHERE (`entry`='46579');

-- Quest 27744 Rune Ruination
DELETE FROM `gameobject_template` WHERE (`entry`='206315');
INSERT INTO `gameobject_template` VALUES (206315, 10, 465, 'Twilight Rune of Earth', '', 'Destroying', '', 0, 36, 2, 0, 0, 0, 0, 0, 0, 43, 27744, 0, 1, 0, 0, 0, 0, 0, 0, 86957, 0, 0, 1, 24585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
UPDATE `quest_template` SET `RequiredNpcOrGo1`='-206315' WHERE (`Id`='27744');
UPDATE `gameobject_template` SET `data10`='86955' WHERE (`entry`='206314');
UPDATE `gameobject_template` SET `data10`='86945' WHERE (`entry`='206313');
UPDATE `gameobject_template` SET `data10`='86946' WHERE (`entry`='206312');

-- Quest 27745 A Fiery Reunion
DELETE FROM `creature` WHERE (`id`='46611');
INSERT INTO `creature` VALUES (null, 46611, 0, 1, 1, 0, 0, -5100.12, -4356.45, 297.428, 2.60358, 300, 0, 0, 154980, 4454, 0, 0, 0, 0);
UPDATE `creature_template` SET `lootid`='46611' WHERE (`entry`='46611');
DELETE FROM `creature_loot_template` WHERE (`entry`='46611') AND (`item`='62394');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46611', '62394', '-100');

DELETE FROM `gameobject_template` WHERE (`entry`='431204');
INSERT INTO `gameobject_template` VALUES (431204, 8, 396, 'Fire Portal', '', '', '', 0, 0, 1.17224, 0, 0, 0, 0, 0, 0, 1694, 8, 431204, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);

DELETE FROM `gameobject` WHERE (`id`='431204');
INSERT INTO `gameobject` VALUES (null, 431204, 0, 1, 1, -5100.12, -4356.45, 297.428, 1.41519, 0, 0, 0.650007, 0.759928, 300, 0, 1);

DELETE FROM `spell_target_position` WHERE (`id`='86873');
INSERT INTO `spell_target_position` (`id`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('86873', '-5269.83', '-4422.98', '402.5', '2.43');

-- Quest 27659 Portal Overload
UPDATE `quest_template` SET `RequiredNpcOrGo1`='46258', `RequiredNpcOrGo2`='46259', `RequiredNpcOrGo3`='46256' WHERE (`Id`='27659');

-- Quest 27660 Spirit of the Loch CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27661' WHERE (`Id`='27660');
UPDATE `quest_template` SET `PrevQuestId`='27660' WHERE (`Id`='27661');

-- Quest 27653 Dark Assassins
UPDATE `creature_template` SET `lootid`='46202' WHERE (`entry`='46202');
DELETE FROM `creature_loot_template` WHERE (`entry`='46202') AND (`item`='62033');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46202', '62033', '-90');

-- Quest 27655 Bring the Hammer Down
UPDATE `creature_template` SET `unit_flags`='0', `dynamicflags`='0', `unit_flags2`='2048' WHERE (`entry`='46204');
DELETE FROM `creature_template_addon` WHERE (`entry`='46204');
UPDATE `creature_template` SET `unit_flags`='0', `dynamicflags`='0', `unit_flags2`='2048' WHERE (`entry`='46203');
DELETE FROM `creature_template_addon` WHERE (`entry`='46203');

-- Quest 28758 Battle of Life and Death
DELETE FROM `creature` WHERE (`id`='49810');
INSERT INTO `creature` VALUES (null, 49810, 0, 1, 1, 0, 0, -2702.23, -3186.98, 178.794, 4.41543, 300, 0, 0, 46494000, 133620, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='49873');
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3794.65, -3736.05, 450.879, 0.272191, 600, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3746.27, -3708.57, 470.964, 1.08115, 600, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3762.69, -3631.39, 412.245, 0.770919, 600, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3690.35, -3617.61, 377.2, 0.967269, 600, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3661.89, -3566.11, 377.196, 1.56024, 600, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3791.91, -3537.05, 510.081, 2.98574, 600, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3843.47, -3564.53, 537.03, 2.1061, 600, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -4063.2, -3536.04, 333.372, 1.79585, 600, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3770.45, -3586.51, 450.628, 6.0393, 300, 0, 0, 77490, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3798.78, -3616.41, 450.529, 5.34916, 300, 0, 0, 77490, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3836.59, -3648.32, 450.541, 5.54158, 300, 0, 0, 77490, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49873, 0, 1, 1, 0, 0, -3878.42, -3578.78, 543.219, 4.48522, 300, 0, 0, 77490, 0, 0, 0, 0, 0);

-- Quest 28758 Battle of Life and Death CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='28171' WHERE (`Id`='28758');
UPDATE `quest_template` SET `PrevQuestId`='28758' WHERE (`Id`='28171');

-- Quest 28171 And the Sky Streaked Red
-- AI already set before some row above
INSERT INTO `smart_scripts` VALUES (47605, 0, 2, 3, 19, 0, 100, 0, 28171, 0, 0, 0, 33, 47605, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (47605, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -4605.53, -5556.39, 76.18, 1.62, 'teleport and credit');

-- Quest 28712 Enter the Dragon Queen
DELETE FROM `creature` WHERE (`id`='47603');
INSERT INTO `creature` VALUES (null, 47603, 0, 1, 1, 0, 0, -4159.47, -3583.24, 215.801, 4.82511, 300, 0, 0, 165150000, 4735000, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='49417');
INSERT INTO `creature` VALUES (null, 49417, 0, 1, 1, 0, 0, -2731.34, -3220.45, 178.893, 0.528985, 300, 0, 0, 774900, 0, 0, 0, 0, 0);

-- Quest 28170 Night Terrors
DELETE FROM `creature` WHERE (`id`='47826');
INSERT INTO `creature` VALUES (null, 47826, 0, 1, 1, 0, 1, -3444.75, -4282.98, 208.56, 4.61651, 300, 0, 0, 85239, 4454, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47826');
DELETE FROM smart_scripts WHERE entryorguid IN (47826);
INSERT INTO `smart_scripts` VALUES (47826, 0, 1, 7, 62, 0, 100, 0, 47826, 0, 0, 0, 86, 88981, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'Realm spell');
INSERT INTO `smart_scripts` VALUES (47826, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');

UPDATE `creature_template` SET `gossip_menu_id`='47826' WHERE (`entry`='47826');

delete from gossip_menu_option where menu_id = 47826;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(47826,0,"I m ready, Uchek!",1,1);

DELETE FROM `conditions` WHERE (`ConditionValue1`='28170');
INSERT INTO `conditions` VALUES (15, 47826, 0, 0, 0, 9, 0, 28170, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

DELETE FROM `creature_template` WHERE (`entry`='341773');
INSERT INTO `creature_template` VALUES (341773, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'First bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341773');
INSERT INTO `creature_template_addon` VALUES (341773, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341773');
INSERT INTO `creature` VALUES (null, 341773, 0, 1, 1, 0, 0, -3408.64, -4243.73, 221.3, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341773) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341773, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 47838, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'credit');

DELETE FROM `creature_template` WHERE (`entry`='341774');
INSERT INTO `creature_template` VALUES (341774, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Second bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341774');
INSERT INTO `creature_template_addon` VALUES (341774, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341774');
INSERT INTO `creature` VALUES (null, 341774, 0, 1, 1, 0, 0, -3461.18, -4199.50, 212.99, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341774) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341774, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 47839, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'credit');

DELETE FROM `creature_template` WHERE (`entry`='341775');
INSERT INTO `creature_template` VALUES (341775, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Third bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341775');
INSERT INTO `creature_template_addon` VALUES (341775, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341775');
INSERT INTO `creature` VALUES (null, 341775, 0, 1, 1, 0, 0, -3484.20, -4241.37, 214.6, 0.226557, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341775) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341775, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 47840, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'credit');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47751');
DELETE FROM smart_scripts WHERE entryorguid IN (47751);
INSERT INTO `smart_scripts` VALUES (47751, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 28, 88981, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'Realm spell exit');

-- ALLIANCE PART

-- Quest 27688 Distract Them for Me CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27700' WHERE (`Id`='27688');
UPDATE `quest_template` SET `NextQuestIdChain`='27700' WHERE (`Id`='27695');
UPDATE `quest_template` SET `NextQuestIdChain`='27702' WHERE (`Id`='27700');
UPDATE `quest_template` SET `NextQuestIdChain`='27711' WHERE (`Id`='27702');
UPDATE `quest_template` SET `NextQuestIdChain`='27711' WHERE (`Id`='27719');
UPDATE `quest_template` SET `NextQuestIdChain`='27720' WHERE (`Id`='27711');
UPDATE `quest_template` SET `PrevQuestId`='27688' WHERE (`Id`='27700');
UPDATE `quest_template` SET `PrevQuestId`='27700' WHERE (`Id`='27702');
UPDATE `quest_template` SET `PrevQuestId`='27700' WHERE (`Id`='27719');
UPDATE `quest_template` SET `PrevQuestId`='27702' WHERE (`Id`='27711');
UPDATE `quest_template` SET `PrevQuestId`='27711' WHERE (`Id`='27720');

UPDATE `creature_template` SET `faction_A`='2305', `faction_H`='2305' WHERE (`entry`='45675');

-- Quest 27787 Skullcrusher the Mountain
-- delete is present on some row above
INSERT INTO `smart_scripts` VALUES (46717, 0, 3, 4, 19, 0, 100, 0, 27787, 0, 0, 0, 12, 46732, 6, 16000, 0, 0, 0, 8, 0, 0, 0, -5267.18, -4832.97, 444.5, 0.494, 'Summon');
INSERT INTO `smart_scripts` VALUES (46717, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 46967, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 27588 Signal the Attack
DELETE FROM `creature_involvedrelation` WHERE (`id`='45668') AND (`quest`='27588');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('45668', '27588');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27588');

-- Quest 28103 Easy Pickings CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='28108' WHERE (`Id`='28103');
UPDATE `quest_template` SET `NextQuestIdChain`='28108' WHERE (`Id`='28104');
UPDATE `quest_template` SET `NextQuestIdChain`='28109' WHERE (`Id`='28108');
UPDATE `quest_template` SET `PrevQuestId`='28103' WHERE (`Id`='28108');
UPDATE `quest_template` SET `PrevQuestId`='28108' WHERE (`Id`='28109');

-- Quest 28108 If The Key Fits
UPDATE `creature_template` SET `minlevel`='85', `maxlevel`='85' WHERE (`entry`='47611');
DELETE FROM `creature` WHERE (`id`='47611');
INSERT INTO `creature` VALUES (null, 47611, 0, 1, 1, 0, 0, -4913.77, -6598.93, 20.2074, 5.37947, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47611, 0, 1, 1, 0, 0, -4622.15, -6490.63, 4.55033, 0.211527, 600, 0, 0, 147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47611, 0, 1, 1, 0, 0, -4762.36, -6607.95, 4.59698, 1.04004, 600, 0, 0, 147, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47611, 0, 1, 1, 0, 0, -4984.54, -6730.55, 5.15239, 5.62796, 600, 0, 0, 43211, 0, 2, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47611, 0, 1, 1, 0, 0, -3972.12, -3961.46, 179.042, 4.61545, 300, 0, 0, 21494, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='2305', `faction_H`='2305' WHERE (`entry`='47374');
UPDATE `creature_template` SET `unit_flags`='512' WHERE (`entry`='47611');
UPDATE `creature_template` SET `unit_flags`='512' WHERE (`entry`='47374');
UPDATE `creature_template` SET `unit_flags`='512' WHERE (`entry`='45675');

-- Quest 27494 Move the Mountain
DELETE FROM `creature_involvedrelation` WHERE (`id`='45796') AND (`quest`='27494');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('45796', '27494');

-- Quest 28655 Wild, Wild, Wildhammer Wedding
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48368');
DELETE FROM smart_scripts WHERE entryorguid IN (48368);
INSERT INTO `smart_scripts` VALUES (48368, 0, 4, 5, 62, 0, 100, 0, 48368, 0, 0, 0, 12, 49234, 6, 60, 0, 0, 0, 8, 0, 0, 0,-2764.31, -5327.44, 174.1, 1.027, 'summon mob');
INSERT INTO `smart_scripts` VALUES (48368, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (48368, 0, 6, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');

UPDATE `creature_template` SET `gossip_menu_id`='48368' WHERE (`entry`='48368');

delete from gossip_menu_option where menu_id = 48368;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(48368,0,"I ll keep my eyes open, Grundy. Let the wedding commence!",1,1);

DELETE FROM `creature_text` WHERE (`entry`='48368') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('48368','1','0','SAVE THE WEDDING! Kill The Beast Unleashed!  ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='28655');
INSERT INTO `conditions` VALUES (15, 48368, 0, 0, 0, 9, 0, 28655, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

UPDATE `creature_template` SET `Health_mod`='967440' WHERE (`entry`='49234');

-- Quest 28408 Something Bold
UPDATE `creature_template` SET `lootid`='46162' WHERE (`entry`='46162');
DELETE FROM `creature_loot_template` WHERE (`entry`='46162') AND (`item`='64317');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46162', '64317', '-35');

DELETE FROM `gameobject` WHERE (`id`='207158');
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2995.35, -5345.71, 107.413, 2.59206, 0, 0, 0.962489, 0.271321, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -3017.41, -5306.02, 101.664, 1.68492, 0, 0, 0.746284, 0.665628, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2966.92, -5214.73, 123.401, 0.550022, 0, 0, 0.271558, 0.962422, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2964.32, -5156.37, 136.032, 4.9836, 0, 0, 0.605022, -0.796209, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -3005.98, -5389.23, 120.605, 4.79903, 0, 0, 0.67582, -0.737067, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -3044.75, -5427.33, 101.239, 3.27929, 0, 0, 0.997631, -0.0687953, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -3084.28, -5450.71, 84.4126, 3.70341, 0, 0, 0.960804, -0.277227, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2987.43, -5441.08, 153.023, 1.70457, 0, 0, 0.752785, 0.658266, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2921.16, -5435.14, 161.783, 6.2049, 0, 0, 0.039133, -0.999234, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2902.19, -5541.76, 168.474, 4.74799, 0, 0, 0.694408, -0.719582, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2952.67, -5656.45, 171.509, 4.61447, 0, 0, 0.740866, -0.671653, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2958.03, -5733.51, 161.017, 4.21785, 0, 0, 0.85867, -0.512529, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2838.44, -5939.04, 97.027, 5.06215, 0, 0, 0.573291, -0.819352, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2912.73, -6082.11, 90.9004, 4.43384, 0, 0, 0.798424, -0.602095, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2970.56, -6099.15, 92.4311, 3.49529, 0, 0, 0.984403, -0.175928, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -2999.35, -6201.51, 93.2035, 5.47841, 0, 0, 0.391615, -0.920129, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -3161.12, -6233.36, 91.1765, 3.25181, 0, 0, 0.998482, -0.0550815, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -3354.47, -6136.24, 103.018, 4.7048, 0, 0, 0.709783, -0.70442, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -3306.15, -5955.68, 113.445, 1.63389, 0, 0, 0.72906, 0.68445, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -3326.74, -5894.68, 125.209, 2.21116, 0, 0, 0.893725, 0.448615, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -3287.86, -5870.94, 146.298, 1.02521, 0, 0, 0.49045, 0.87147, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207158, 0, 1, 1, -3328.33, -5808.35, 91.1126, 2.37609, 0, 0, 0.927641, 0.373472, 300, 0, 1);

-- Quest 28409 Something Brewed
DELETE FROM `creature` WHERE (`id`='48758');
INSERT INTO `creature` VALUES (null, 48758, 0, 1, 1, 0, 0, -2950.48, -5832.27, 137.848, 1.62573, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48758');
DELETE FROM smart_scripts WHERE entryorguid IN (48758);
INSERT INTO `smart_scripts` VALUES (48758, 0, 4, 5, 62, 0, 100, 0, 48758, 0, 0, 0, 33, 48762, 0, 0, 0, 0, 0, 21, 10, 0, 0,0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (48758, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (48758, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -2764.31, -5327.44, 174.1, 1.027, 'teleport');

INSERT INTO `smart_scripts` VALUES (48758, 0, 7, 8, 62, 0, 100, 0, 48758, 1, 0, 0, 33, 48762, 0, 0, 0, 0, 0, 21, 10, 0, 0,0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (48758, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (48758, 0, 9, 0, 61, 0, 100, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -2764.31, -5327.44, 174.1, 1.027, 'teleport');

UPDATE `creature_template` SET `gossip_menu_id`='48758' WHERE (`entry`='48758');

delete from gossip_menu_option where menu_id = 48758;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(48758,0,"I m here to escort a delivery to Kirthaven.",1,1),
(48758,1,"I m here to escort a delivery to Kirthaven.",1,1);

DELETE FROM `conditions` WHERE (`ConditionValue1`='28409');
DELETE FROM `conditions` WHERE (`ConditionValue1`='28864');
INSERT INTO `conditions` VALUES (15, 48758, 0, 0, 0, 9, 0, 28409, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
INSERT INTO `conditions` VALUES (15, 48758, 1, 0, 0, 9, 0, 28864, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 28410 Something Stolen
UPDATE `creature_template` SET `lootid`='46764' WHERE (`entry`='46764');
DELETE FROM `creature_loot_template` WHERE (`entry`='46764') AND (`item`='64318');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46764', '64318', '-100');

-- Quest 28411 Something Stewed
UPDATE `creature_template` SET `lootid`='46971' WHERE (`entry`='46971');
DELETE FROM `creature_loot_template` WHERE (`entry`='46971') AND (`item`='64319');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46971', '64319', '-100');
UPDATE `creature_template` SET `lootid`='46970' WHERE (`entry`='46970');
DELETE FROM `creature_loot_template` WHERE (`entry`='46970') AND (`item`='64319');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46970', '64319', '-50');

UPDATE `creature_template` SET `lootid`='46153' WHERE (`entry`='46153');
DELETE FROM `creature_loot_template` WHERE (`entry`='46153') AND (`item`='64320');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46153', '64320', '-30');

-- Quest 28413 Words and Music By...
DELETE FROM `creature` WHERE (`id`='48366');
INSERT INTO `creature` VALUES (null, 48366, 0, 1, 1, 0, 0, -2784.68, -5328.07, 173.715, 0.301467, 300, 0, 0, 85239, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48366');
UPDATE `creature_template` SET `gossip_menu_id`='48366' WHERE (`entry`='48366');
DELETE FROM `conditions` WHERE (`ConditionValue1`='28413');
INSERT INTO `conditions` VALUES (15, 48366, 0, 0, 0, 9, 0, 28413, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
INSERT INTO `conditions` VALUES (15, 48366, 1, 0, 0, 9, 0, 28413, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='48366');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='48367');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='48368');
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag,action_menu_id) values
(48366,0,"Wise.",1,1,48367),
(48366,1,"Thighs!",1,1,0),

(48367,0,"Blessed. ",1,1,0),
(48367,1,"Arrest. ",1,1,48368),

(48368,3,"Alight.",1,1,0),
(48368,1,"Knifefight.",1,1,0);

-- Prima Domanda
DELETE FROM smart_scripts WHERE entryorguid IN (48366) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(48366, 0, 1, 2, 62, 0, 100, 0, 48366, 0, 0, 0, 10, 1, 2, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(48366, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Risposta Esatta"),
(48366, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),

(48366, 0, 22, 23, 62, 0, 100, 0, 48366, 1, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(48366, 0, 23, 24, 61, 0, 100, 0, 0, 0, 0, 0, 1, 10, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Risposta Errata"),
(48366, 0, 24, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),

-- Seconda Domanda
(48366, 0, 4, 5, 62, 0, 100, 0, 48367, 1, 0, 0, 10, 1, 2, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(48366, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Risposta Esatta"),
(48366, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),

(48366, 0, 25, 26, 62, 0, 100, 0, 48367, 0, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(48366, 0, 26, 27, 61, 0, 100, 0, 0, 0, 0, 0, 1, 10, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Risposta Errata"),
(48366, 0, 27, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),

-- Terza Domanda
(48366, 0, 7, 8, 62, 0, 100, 0, 48368, 1, 0, 0, 10, 1, 2, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(48366, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Risposta Esatta"),
(48366, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(48366, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 48712, 0, 0, 0, 0, 0, 21, 6, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),

(48366, 0, 28, 29, 62, 0, 100, 0, 48368, 3, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(48366, 0, 29, 30, 61, 0, 100, 0, 0, 0, 0, 0, 1, 10, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Risposta Errata"),
(48366, 0, 30, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

DELETE FROM `creature_text` WHERE (`entry`='48366') AND (`groupid`='1');
DELETE FROM `creature_text` WHERE (`entry`='48366') AND (`groupid`='10');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('48366','1','0','OK, it sounds good!!  ','12','0','100','0','0','0','Life party'),
('48366','10','0','NO, I m not sure this works! Retry!.   ','12','0','100','0','0','0','Life party');

-- Quest 28378 Find Fanny
DELETE FROM `creature` WHERE (`id`='48499');
INSERT INTO `creature` VALUES (null, 48499, 0, 1, 1, 0, 0, -3256.99, -4267.33, 163.026, 5.00995, 300, 0, 0, 46, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48499');
DELETE FROM smart_scripts WHERE entryorguid IN (48499);
INSERT INTO `smart_scripts` VALUES (48499, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 48489, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 27754 Dragonmaw Takedown
UPDATE `creature_template` SET `lootid`='46756' WHERE (`entry`='46756');
DELETE FROM `creature_loot_template` WHERE (`entry`='46756') AND (`item`='62332');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46756', '62332', '-95');
UPDATE `creature_template` SET `lootid`='46493' WHERE (`entry`='46493');
DELETE FROM `creature_loot_template` WHERE (`entry`='46493') AND (`item`='62332');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46493', '62332', '-90');
UPDATE `creature_template` SET `lootid`='46310' WHERE (`entry`='46310');
DELETE FROM `creature_loot_template` WHERE (`entry`='46310') AND (`item`='62332');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46310', '62332', '-80');
DELETE FROM `creature` WHERE (`id`='48173');
INSERT INTO `creature` VALUES (null, 48173, 0, 1, 1, 0, 0, -3192.76, -5027.31, 120.326, 1.8585, 300, 0, 0, 100737, 0, 0, 0, 0, 0);

-- Quest 28216 Magmalord Falthazar
UPDATE `creature_template` SET `lootid`='48015' WHERE (`entry`='48015');
DELETE FROM `creature_loot_template` WHERE (`entry`='48015') AND (`item`='63286');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('48015', '63286', '-100');

-- Quest 28369 My Sister, Fanny CHAIN TIMELINE FIX 
UPDATE `quest_template` SET `NextQuestIdChain`='27753' WHERE (`Id`='28369');
UPDATE `quest_template` SET `PrevQuestId`='28369' WHERE (`Id`='27753');

-- Quest 28369 My Sister, Fanny 
DELETE FROM `creature` WHERE (`id`='48013');
INSERT INTO `creature` VALUES (null, 48013, 0, 1, 1, 0, 0, -3224, -5052.34, 120.664, 1.8994, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48013, 0, 1, 1, 0, 0, -3183.21, -5061.98, 120.996, 1.04214, 300, 0, 0, 70946, 0, 0, 0, 0, 0);

-- Quest 28212 Hot Stuff
UPDATE `creature_template` SET `lootid`='48016' WHERE (`entry`='48016');
DELETE FROM `creature_loot_template` WHERE (`entry`='48016') AND (`item`='63283');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('48016', '63283', '-30');

-- Quest 28281 Paint it Black CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='28282' WHERE (`Id`='28281');
UPDATE `quest_template` SET `NextQuestIdChain`='28294' WHERE (`Id`='28282');
UPDATE `quest_template` SET `PrevQuestId`='28281' WHERE (`Id`='28282');
UPDATE `quest_template` SET `PrevQuestId`='28282' WHERE (`Id`='28294');

-- Quest 28282 Narkrall, The Drake-Tamer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48173');
DELETE FROM smart_scripts WHERE entryorguid IN (48173);
INSERT INTO `smart_scripts` VALUES (48173, 0, 1, 7, 62, 0, 100, 0, 12409, 0, 0, 0, 12, 48257, 6, 60, 0, 0, 0, 8, 0, 0, 0,-3204.74, -5003.59, 119.6, 5.13, 'summon mob');
INSERT INTO `smart_scripts` VALUES (48173, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
UPDATE `gossip_menu_option` SET `option_id`='1', `npc_option_npcflag`='1' WHERE (`menu_id`='12409') AND (`id`='0');
DELETE FROM `conditions` WHERE (`ConditionValue1`='28282');
INSERT INTO `conditions` VALUES (15, 12409, 0, 0, 0, 9, 0, 28282, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 28863 Warlord Halthar is Back
UPDATE `creature` SET `phaseMask`='1' WHERE (`id`='46493');

-- Quest 28280 Tear Them From the Sky!
UPDATE `creature` SET `phaseMask`='1' WHERE (`id`='48174');
DELETE FROM `conditions` WHERE (`SourceEntry`='89557');
INSERT INTO `conditions` VALUES (17, 0, 89557, 0, 0, 31, 1, 3, 48197, 0, 0, 0, 0, '', 'Spell can be used only on quest mob');
DELETE FROM `creature` WHERE (`id`='46143');
INSERT INTO `creature` VALUES (null, 46143, 0, 1, 1, 0, 0, -3871.28, -5715.14, 38.8077, 4.42989, 300, 0, 0, 619920, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46143, 0, 1, 1, 0, 0, -4456.82, -4861.22, 123.18, 3.63666, 300, 0, 0, 619920, 0, 0, 0, 0, 0);

-- Quest 27642 Sifting Through The Wreckage
DELETE FROM `creature` WHERE (`id`='46609');
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4623.43, -5110.36, 122.124, 3.8837, 300, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4642.3, -5120.86, 124.546, 3.4478, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4662.43, -5108.71, 128.358, 1.37042, 300, 0, 0, 40906, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4672.01, -5102.33, 129.228, 4.09575, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4675.72, -5057.13, 136.619, 1.09946, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4640.54, -5063.62, 131.638, 0.0679522, 300, 0, 0, 40906, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4624.36, -5035.3, 145.742, 0.939744, 300, 0, 0, 49147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4601.75, -4999.53, 146.339, 1.21463, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 20445, 0, -4619.73, -4953.42, 162.291, 3.79859, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4573.76, -4922.18, 159.361, 0.963299, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4562.61, -4963.68, 145.044, 6.23275, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 20445, 0, -4567.62, -4994.15, 141.116, 4.00517, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4542.13, -5019.67, 127.986, 5.50921, 300, 0, 0, 40906, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4549.93, -5048.57, 121.322, 3.54572, 300, 0, 0, 40906, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4573.55, -5070.88, 121.214, 0.836096, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4576.12, -5097.05, 117.7, 5.11259, 300, 0, 0, 40906, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4580.01, -5129.71, 118.913, 5.44057, 300, 0, 0, 59049, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4607.4, -5167.43, 110.474, 4.66696, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4606.84, -5188.04, 110.198, 5.35811, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4612.84, -5216.77, 117.658, 2.45214, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4652.49, -5210.46, 110.366, 3.16685, 300, 0, 0, 70946, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4688.05, -5187.75, 124.766, 2.36967, 300, 0, 0, 49147, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46609, 0, 1, 1, 0, 0, -4683.91, -5151.05, 125.556, 0.507115, 300, 0, 0, 85239, 0, 0, 0, 0, 0);

UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (46609);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='46609');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('46609', '62464', '1');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46609');
DELETE FROM smart_scripts WHERE entryorguid IN (46609);
INSERT INTO `smart_scripts` VALUES (46609, 0, 1, 2, 8, 0, 100, 0, 62464,0,0,0,33, 46609, 0, 0, 0, 0, 0, 21, 8, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (46609, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

-- Quest 27643 Donnelly Dunwald CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='27646' WHERE (`Id`='27643');
UPDATE `quest_template` SET `NextQuestIdChain`='27646' WHERE (`Id`='27645');
UPDATE `quest_template` SET `NextQuestIdChain`='27650' WHERE (`Id`='27646');
UPDATE `quest_template` SET `NextQuestIdChain`='27650' WHERE (`Id`='27648');
UPDATE `quest_template` SET `NextQuestIdChain`='27651' WHERE (`Id`='27650');
UPDATE `quest_template` SET `PrevQuestId`='27643' WHERE (`Id`='27646');
UPDATE `quest_template` SET `PrevQuestId`='27643' WHERE (`Id`='27648');
UPDATE `quest_template` SET `PrevQuestId`='27646' WHERE (`Id`='27650');
UPDATE `quest_template` SET `PrevQuestId`='27650' WHERE (`Id`='27651');

-- Quest 27645 Cayden Dunwald
DELETE FROM `creature` WHERE (`id`='46174');
INSERT INTO `creature` VALUES (null, 46174, 0, 1, 1, 0, 0, -4468.65, -4891.12, 134.252, 4.08645, 300, 0, 0, 387450, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46174, 0, 1, 1, 0, 0, -4676.94, -4849.58, 162.57, 0.359176, 300, 0, 0, 387450, 0, 0, 0, 0, 0);

-- Quest 27646 Finding Beak
DELETE FROM `creature_template` WHERE (`entry`='341776');
INSERT INTO `creature_template` VALUES (341776, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'First bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341776');
INSERT INTO `creature_template_addon` VALUES (341776, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341776');
INSERT INTO `creature` VALUES (null, 341776, 0, 1, 1, 0, 0, -4259.34, -4827.49, 104.7, 4.180, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341776) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341776, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 46599, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'credit');
--
DELETE FROM `creature_template` WHERE (`entry`='341777');
INSERT INTO `creature_template` VALUES (341777, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Second bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341777');
INSERT INTO `creature_template_addon` VALUES (341777, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341777');
INSERT INTO `creature` VALUES (null, 341777, 0, 1, 1, 0, 0, -4047.12, -4879.90, 86.8, 4.180, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341777) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341777, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 46600, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'credit');
--
DELETE FROM `creature_template` WHERE (`entry`='341778');
INSERT INTO `creature_template` VALUES (341778, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Third bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341778');
INSERT INTO `creature_template_addon` VALUES (341778, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341778');
INSERT INTO `creature` VALUES (null, 341778, 0, 1, 1, 0, 0, -4004.75, -4992.32, 79.1, 4.180, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341778) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341778, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 46601, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 27648 Once More Into The Fire
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46174');
DELETE FROM smart_scripts WHERE entryorguid IN (46174);
INSERT INTO `smart_scripts` VALUES (46174, 0, 4, 5, 19, 0, 100, 0, 27648, 0, 0, 0, 33, 46174, 0, 0, 0, 0, 0, 21, 10, 0, 0,0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (46174, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -4768.29, -4952.62, 159.4, 0.78, 'teleport');

-- Quest 27651 Doing It Like a Dunwald
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0', `type_flags`='0', `unit_class`='0', `VehicleId`='0' WHERE (`entry`='46624');

-- Quest 27643 Donnelly Dunwald CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='27646' WHERE (`Id`='27649');
UPDATE `quest_template` SET `NextQuestIdChain`='27646' WHERE (`Id`='27645');
UPDATE `quest_template` SET `NextQuestIdChain`='27650' WHERE (`Id`='27646');
UPDATE `quest_template` SET `NextQuestIdChain`='27650' WHERE (`Id`='27648');
UPDATE `quest_template` SET `NextQuestIdChain`='27651' WHERE (`Id`='27650');
UPDATE `quest_template` SET `PrevQuestId`='27643' WHERE (`Id`='27646');
UPDATE `quest_template` SET `PrevQuestId`='27643' WHERE (`Id`='27648');
UPDATE `quest_template` SET `PrevQuestId`='27646' WHERE (`Id`='27650');
UPDATE `quest_template` SET `PrevQuestId`='27650' WHERE (`Id`='27651');

-- Quest 27808 Stubborn as a Doyle
DELETE FROM `creature` WHERE (`id`='47317');
INSERT INTO `creature` VALUES (null, 47317, 0, 1, 1, 0, 0, -4564.83, -5613.59, 70.9937, 5.08608, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47317, 0, 1, 1, 0, 0, -4525.57, -5676.38, 64.1382, 6.17779, 300, 0, 0, 85239, 0, 0, 0, 0, 0);

-- Quest 27644 Eoin Dunwald CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='27647' WHERE (`Id`='27644');
UPDATE `quest_template` SET `NextQuestIdChain`='27649' WHERE (`Id`='27647');
UPDATE `quest_template` SET `PrevQuestId`='27644' WHERE (`Id`='27647');
UPDATE `quest_template` SET `PrevQuestId`='27647' WHERE (`Id`='27649');

-- Quest 27647 Anything But Water
DELETE FROM `gameobject` WHERE (`id`='206203');
INSERT INTO `gameobject` VALUES (null, 206203, 0, 1, 1, -4612.21, -5222.71, 98.8458, 2.28613, 0, 0, 0.90991, 0.414806, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206203, 0, 1, 1, -4610.72, -5221.4, 98.8454, 2.30969, 0, 0, 0.914733, 0.404058, 300, 0, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`='35326') AND (`item`='62317');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('35326', '62317', '-100');
DELETE FROM `creature` WHERE (`id`='46583');
INSERT INTO `creature` VALUES (null, 46583, 0, 1, 1, 0, 0, -4649.69, -5079.48, 126.354, 3.95029, 600, 0, 0, 336, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46583, 0, 1, 1, 0, 0, -4626.72, -5201.63, 108.504, 2.77308, 300, 0, 0, 619920, 0, 0, 0, 0, 0);

-- Quest 27649 A Steady Supply
DELETE FROM `gameobject` WHERE (`id`='206292');
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4641.6, -5078.26, 127.471, 3.33464, 0, 0, 0.995345, -0.0963753, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4673.34, -5089.27, 129.675, 3.9826, 0, 0, 0.912884, -0.408219, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4642.89, -5114.03, 125.881, 5.24314, 0, 0, 0.496898, -0.867809, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4644.35, -5112.14, 125.603, 3.84907, 0, 0, 0.938084, -0.346407, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4663.73, -5105.15, 128.614, 2.12904, 0, 0, 0.874556, 0.484924, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4683.14, -5074.91, 132.933, 1.40255, 0, 0, 0.645191, 0.764021, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4687.95, -5050.18, 139.112, 0.306916, 0, 0, 0.152856, 0.988248, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4498.41, -4898.9, 134.305, 1.33185, 0, 0, 0.617785, 0.786347, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4471.55, -4896.24, 134.532, 4.3046, 0, 0, 0.835638, -0.54928, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4486.26, -4896.59, 136.648, 0.738886, 0, 0, 0.361096, 0.932529, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4484.3, -4898.34, 136.471, 0.715323, 0, 0, 0.350085, 0.936718, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206292, 0, 1, 1, -4468.59, -4928.77, 128.926, 4.0415, 0, 0, 0.900467, -0.434924, 300, 0, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`='35331') AND (`item`='62327');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('35331', '62327', '-100');

-- Quest 27810 The Fighting Spirit
DELETE FROM `creature` WHERE (`id`='46813');
INSERT INTO `creature` VALUES (null, 46813, 0, 1, 1, 0, 0, -4254.08, -5013.31, 49.5438, 4.99692, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46813, 0, 1, 1, 0, 0, -4256.57, -5149.87, 26.5918, 2.62466, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46813, 0, 1, 1, 0, 1, -4276.75, -5139.38, 29.2387, 0.383558, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46813, 0, 1, 1, 0, 1, -4279.86, -5128.53, 28.5038, 0.112595, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46813, 0, 1, 1, 0, 1, -4280.09, -5119.81, 28.2914, 6.2387, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46813, 0, 1, 1, 0, 1, -4265.13, -5117.51, 26.7174, 3.1678, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46813, 0, 1, 1, 0, 1, -4262.08, -5125.21, 27.0845, 3.68615, 300, 0, 0, 85239, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46813, 0, 1, 1, 0, 1, -4256.57, -5135.85, 26.7166, 3.33272, 300, 0, 0, 85239, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46813');
DELETE FROM smart_scripts WHERE entryorguid IN (46813);
INSERT INTO `smart_scripts` VALUES (46813, 0, 1, 7, 62, 0, 100, 0, 46813, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Change faction');
INSERT INTO `smart_scripts` VALUES (46813, 0, 7, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (46813, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');

UPDATE `creature_template` SET `gossip_menu_id`='46813' WHERE (`entry`='46813');

delete from gossip_menu_option where menu_id = 46813;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(46813,0,"Not backing out, are you?",1,1);

DELETE FROM `creature_text` WHERE (`entry`='46813') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('46813','1','0','Them s DEFINITELY fightin  words!','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='27810');
INSERT INTO `conditions` VALUES (15, 46813, 0, 0, 0, 9, 0, 27810, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0', `type_flags`='0', `unit_class`='0', `VehicleId`='0' WHERE (`entry`='46813');

-- Quest 27817 Dropping the Hammer
DELETE FROM `creature` WHERE (`id`='47199');
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 0, -4020.06, -5559.62, 96.1008, 0.327215, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 0, -4027.58, -5512.51, 127.061, 0.613885, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 0, -3979.55, -5523.87, 149.26, 5.81715, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 0, -3941.27, -5564.2, 129.229, 5.57761, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 0, -4018.78, -5611.67, 116.389, 3.53557, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -3954.79, -5466.97, 119.489, 0.269641, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -3939.29, -5616.71, 130.474, 1.82865, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -3961.59, -5648.01, 113.146, 2.85359, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -4058.57, -5674.99, 87.9241, 3.32483, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -3996.12, -5683.48, 89.2546, 6.07765, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -3954, -5707.96, 90.9811, 2.65723, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -3860.16, -5600.41, 96.0771, 1.90718, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -4076.77, -5478.02, 90.4457, 4.81708, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -3863.23, -5400.8, 57.3868, 4.40867, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -3964.84, -5522.11, 235.786, 4.02776, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -3988.04, -5531.05, 236.844, 0.13218, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47199, 0, 1, 1, 0, 1, -3977.49, -5542.98, 237.498, 0.948993, 300, 0, 0, 56757, 9512, 0, 0, 0, 0);

-- Quest 27811 The Scent of Battle
DELETE FROM `creature` WHERE (`id`='46812');
INSERT INTO `creature` VALUES (null, 46812, 0, 1, 1, 0, 0, -4271.74, -5116.37, 26.4896, 4.96747, 300, 0, 0, 619920, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46968');
DELETE FROM smart_scripts WHERE entryorguid IN (46968);
INSERT INTO `smart_scripts` VALUES (46968, 0, 1, 7, 62, 0, 100, 0, 12165, 0, 0, 0, 33, 46968, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Credit');
INSERT INTO `smart_scripts` VALUES (46968, 0, 7, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (46968, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,0,0,0, 'Force despawn');

DELETE FROM `conditions` WHERE (`ConditionValue1`='27811');
INSERT INTO `conditions` VALUES (15, 12165, 0, 0, 0, 9, 0, 27811, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

UPDATE `gossip_menu_option` SET `option_id`='1', `npc_option_npcflag`='1' WHERE (`menu_id`='12165') AND (`id`='0');

-- Quest 28233 The Lost Brother CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='28234' WHERE (`Id`='28233');
UPDATE `quest_template` SET `PrevQuestId`='28233' WHERE (`Id`='28234');

-- Quest 28233 The Lost Brother
DELETE FROM `creature` WHERE (`id`='48053');
INSERT INTO `creature` VALUES (null, 48053, 0, 1, 1, 0, 0, -3829.13, -5768.14, 23.1727, 4.69009, 300, 0, 0, 619920, 0, 0, 0, 0, 0);

-- Quest 28234 They Took Me Pants!
UPDATE `creature_template` SET `lootid`='48102' WHERE (`entry`='48102');
DELETE FROM `creature_loot_template` WHERE (`entry`='48102') AND (`item`='63374');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('48102', '63374', '-100');

DELETE FROM `creature` WHERE (`id`='48102');
INSERT INTO `creature` VALUES (null, 48102, 0, 1, 1, 0, 0, -3815.46, -5714.19, 34.019, 2.77692, 300, 0, 0, 70946, 0, 0, 0, 0, 0);

-- Quest 27814 Anything We Can Get
UPDATE `creature_template` SET `lootid`='47465' WHERE (`entry`='47465');
DELETE FROM `creature_loot_template` WHERE (`entry`='47465') AND (`item`='62511');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47465', '62511', '-100');

UPDATE `creature_template` SET `lootid`='46851' WHERE (`entry`='46851');
DELETE FROM `creature_loot_template` WHERE (`entry`='46851') AND (`item`='62511');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46851', '62511', '-20');
DELETE FROM `gameobject` WHERE (`id`='206673');
INSERT INTO `gameobject` VALUES (null, 206673, 0, 1, 1, -3826.37, -5664.19, 44.0191, 5.90672, 0, 0, 0.187125, -0.982336, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206673, 0, 1, 1, -3850.28, -5688.89, 42.3629, 4.13565, 0, 0, 0.879003, -0.476816, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206673, 0, 1, 1, -3883.04, -5685.77, 46.8286, 3.74295, 0, 0, 0.955136, -0.296169, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206673, 0, 1, 1, -3881.43, -5718.62, 39.1497, 4.30844, 0, 0, 0.834582, -0.550884, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206673, 0, 1, 1, -3834.69, -5742.08, 29.0568, 5.76535, 0, 0, 0.256034, -0.966668, 300, 0, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`='35358') AND (`item`='62511');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('35358', '62511', '-100');
DELETE FROM `gameobject` WHERE (`id`='206389');
INSERT INTO `gameobject` VALUES (null, 206389, 0, 1, 1, -3802.91, -5687.69, 38.1226, 0.127142, 0, 0, 0.0635282, 0.99798, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206389, 0, 1, 1, -3881.22, -5697.5, 44.1194, 1.74018, 0, 0, 0.764388, 0.644756, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206389, 0, 1, 1, -3856.23, -5657.73, 49.8142, 0.314683, 0, 0, 0.156693, 0.987647, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206389, 0, 1, 1, -3839.29, -5697.67, 39.3906, 0.350035, 0, 0, 0.174125, 0.984724, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206389, 0, 1, 1, -3844.15, -5755.54, 27.1821, 4.13958, 0, 0, 0.878065, -0.478542, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206389, 0, 1, 1, -3829.84, -5766.36, 23.5832, 0.157599, 0, 0, 0.0787179, 0.996897, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206389, 0, 1, 1, -3800.37, -5740.61, 27.2509, 2.09361, 0, 0, 0.865828, 0.500342, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206389, 0, 1, 1, -3776.98, -5699.57, 34.572, 4.21025, 0, 0, 0.86061, -0.509264, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 206389, 0, 1, 1, -3783.82, -5644.49, 38.4001, 1.02939, 0, 0, 0.492269, 0.870443, 300, 0, 1);

-- Fix some wrong data
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='28001');
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='27640');
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='27803');
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='27804');
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='27341');

-- Quest 27803 Welcome Relief CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='27806' WHERE (`Id`='27803');
UPDATE `quest_template` SET `PrevQuestId`='27803' WHERE (`Id`='27806');

-- Quest 27804 The Only Homes We Have AUTOCOMPLETE
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='27804');

-- Quest 27341 Scouting the Shore CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='27514' WHERE (`Id`='27341');
UPDATE `quest_template` SET `NextQuestIdChain`='27514' WHERE (`Id`='27366');
UPDATE `quest_template` SET `NextQuestIdChain`='27515' WHERE (`Id`='27514');
UPDATE `quest_template` SET `NextQuestIdChain`='27516' WHERE (`Id`='27515');
UPDATE `quest_template` SET `NextQuestIdChain`='27537' WHERE (`Id`='27516');
UPDATE `quest_template` SET `PrevQuestId`='27341' WHERE (`Id`='27514');
UPDATE `quest_template` SET `PrevQuestId`='27514' WHERE (`Id`='27515');
UPDATE `quest_template` SET `PrevQuestId`='27515' WHERE (`Id`='27516');
UPDATE `quest_template` SET `PrevQuestId`='27516' WHERE (`Id`='27537');

-- Quest 27341 Scouting the Shore
UPDATE `quest_template` SET `RequiredNpcOrGo1`='341767', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='27341');

-- Quest 27515 Roots'll Do 'Er
DELETE FROM `gameobject_loot_template` WHERE (`entry`='34711') AND (`item`='61319');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('34711', '61319', '-100');

-- Quest 27516 Wings Over Highbank
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45172');
DELETE FROM smart_scripts WHERE entryorguid IN (45172);
INSERT INTO `smart_scripts` VALUES (45172, 0, 1, 0, 19, 0, 100, 0, 27516, 0, 0, 0, 33, 45767, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Credit');

-- Quest 27200 Siren's Song
DELETE FROM `creature` WHERE (`id`='45171');
INSERT INTO `creature` VALUES (null, 45171, 0, 1, 1, 0, 0, -4965.03, -6441.64, 1.1721, 6.02541, 300, 0, 0, 38698, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45171');
DELETE FROM smart_scripts WHERE entryorguid IN (45171) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (45171, 0, 1, 0, 19, 0, 100, 0, 27200, 0, 0, 0, 12, 45184, 6, 60, 0, 0, 0, 8, 0, 0, 0, -4984.53, -6449.40, 0.62, 0.27, 'Summon');

UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14', `minlevel`='84', `maxlevel`='84' WHERE (`entry`='45184');
UPDATE `quest_template` SET `RequiredNpcOrGo1`='45184', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='27200');
UPDATE `creature_template` SET `Health_mod`='21.43' WHERE (`entry`='45184');

-- Quest 28597 Burnin' at Both Ends CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='28598' WHERE (`Id`='28597');
UPDATE `quest_template` SET `NextQuestIdChain`='28599' WHERE (`Id`='28598');
UPDATE `quest_template` SET `NextQuestIdChain`='27338' WHERE (`Id`='28599');
UPDATE `quest_template` SET `PrevQuestId`='28597' WHERE (`Id`='28598');
UPDATE `quest_template` SET `PrevQuestId`='28598' WHERE (`Id`='28599');
UPDATE `quest_template` SET `PrevQuestId`='28599' WHERE (`Id`='27338');

-- Quest 28597 Burnin' at Both Ends
DELETE FROM `creature` WHERE (`id`='49143');
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4836.27, -6627.4, 9.41579, 3.78767, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4834.29, -6630.09, 9.41579, 1.22334, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4856.45, -6598.44, 9.41721, 2.88839, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4860.29, -6584.14, 9.41721, 1.90664, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4853.63, -6576.37, 9.41721, 1.85952, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4838.21, -6579.29, 9.41721, 0.740321, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4815.74, -6640.97, 5.96161, 4.79691, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4857, -6650.72, 9.33677, 2.50355, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4885.43, -6698.83, 9.383, 3.94084, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4850.47, -6708.7, 5.15838, 5.39776, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4811.45, -6720.39, 5.82554, 5.92791, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4802.11, -6742.18, 9.41633, 5.66479, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4841.22, -6744.05, 9.41633, 4.07043, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4857.47, -6731.12, 9.41633, 2.11479, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4862.97, -6750.7, 9.41633, 4.40815, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4887.29, -6707.02, 5.15344, 2.2915, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4879.59, -6738.44, 5.01424, 5.30743, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4919.18, -6668.87, 9.39947, 2.15013, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4900.74, -6677.23, 9.41644, 0.877783, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4775.24, -6721.85, 5.15741, 5.37024, 300, 0, 0, 11, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 49143, 0, 1, 1, 0, 0, -4778.05, -6744.52, 9.41765, 3.47352, 300, 0, 0, 11, 0, 0, 0, 0, 0);

UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (49143);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='49143');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('49143', '91587', '3');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='49143');
DELETE FROM smart_scripts WHERE entryorguid IN (49143);
INSERT INTO `smart_scripts` VALUES (49143, 0, 1, 0, 8, 0, 100, 0, 62464,0,0,0,41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='91587');
INSERT INTO `spell_linked_spell` VALUES (91587, 62464, 0, 'spell despawn');

-- Quest 28598 Aiming High - AUTOCOMPLETE - Bug vehicle movement
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGo2`='0', `RequiredNpcOrGoCount1`='0', `RequiredNpcOrGoCount2`='0' WHERE (`Id`='28598');

-- Quest 27433 Shredderectomy CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='27468' WHERE (`Id`='27433');
UPDATE `quest_template` SET `PrevQuestId`='27433' WHERE (`Id`='27468');

-- Quest 27433 Shredderectomy
UPDATE `creature_template` SET `lootid`='45185' WHERE (`entry`='45185');
DELETE FROM `creature_loot_template` WHERE (`entry`='45185') AND (`item`='61048');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45185', '61048', '-55');

UPDATE `creature_template` SET `lootid`='46098' WHERE (`entry`='46098');
DELETE FROM `creature_loot_template` WHERE (`entry`='46098') AND (`item`='61048');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46098', '61048', '-55');

UPDATE `creature_template` SET `faction_A`='125', `faction_H`='125' WHERE (`entry`='46098');

-- Quest 27468 Siege Tank Rescue
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45524');
DELETE FROM smart_scripts WHERE entryorguid IN (45524);
INSERT INTO `smart_scripts` VALUES (45524, 0, 3, 0, 62, 0, 100, 0, 45524, 0, 0, 0, 33, 45580, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Credit1');
INSERT INTO `smart_scripts` VALUES (45524, 0, 1, 7, 62, 0, 100, 0, 45524, 0, 0, 0, 33, 45581, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Credit2');
INSERT INTO `smart_scripts` VALUES (45524, 0, 7, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (45524, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');

UPDATE `creature_template` SET `gossip_menu_id`='45524', `npcflag`='1' WHERE (`entry`='45524');

delete from gossip_menu_option where menu_id = 45524;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45524,0,"Here are some spare parts. I ll cover you while you make repairs!",1,1);

DELETE FROM `creature_text` WHERE (`entry`='45524') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45524','1','0','Aye, protect the tank while the boys make repairs! I ll try to get her moving again...','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='27468');
INSERT INTO `conditions` VALUES (15, 45524, 0, 0, 0, 9, 0, 27468, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 27178 Naga Reinforcements
DELETE FROM `gameobject` WHERE (`id`='205250');
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4929.15, -6460.62, -0.0000581145, 3.03703, 0, 0, 0.998634, 0.0522556, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4935.97, -6455.42, -24.6525, 3.05459, 0, 0, 0.999054, 0.0434876, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4922.79, -6414.89, -5.46635, 3.3766, 0, 0, 0.993104, -0.117235, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4939.76, -6404.58, -2.60129, 3.21953, 0, 0, 0.999241, -0.0389564, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4960.49, -6406.86, -12.8821, 3.14099, 0, 0, 1, 0.000303702, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4986.68, -6403.29, -17.2243, 2.27705, 0, 0, 0.908016, 0.418936, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4997.57, -6427.65, -18.5878, 4.35049, 0, 0, 0.822814, -0.56831, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -5025.29, -6438.61, -26.2675, 4.00492, 0, 0, 0.908271, -0.418382, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -5041.59, -6461.43, -30.0823, 4.95917, 0, 0, 0.614701, -0.78876, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4994.86, -6495.51, -62.431, 3.4512, 0, 0, 0.988042, -0.154186, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4978.39, -6524.4, -69.512, 5.14372, 0, 0, 0.539405, -0.842046, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -5004.48, -6512.73, -65.2855, 2.99566, 0, 0, 0.997339, 0.0729007, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -5024.32, -6528.74, -62.1646, 3.37265, 0, 0, 0.993334, -0.115273, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4964.83, -6419.29, -9.86466, 5.24583, 0, 0, 0.495734, -0.868474, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205250, 0, 1, 1, -4929.98, -6432.2, -4.1047, 1.68012, 0, 0, 0.744685, 0.667417, 300, 0, 1);

-- Quest 27608 Four Heads are Better than None CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='27502' WHERE (`Id`='27608');
UPDATE `quest_template` SET `NextQuestIdChain`='27636' WHERE (`Id`='27502');
UPDATE `quest_template` SET `PrevQuestId`='27608' WHERE (`Id`='27502');
UPDATE `quest_template` SET `PrevQuestId`='27502' WHERE (`Id`='27636');

-- Quest 27502 Up to the Citadel
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27502');
DELETE FROM `creature` WHERE (`id`='46076');
INSERT INTO `creature` VALUES (null, 46076, 0, 1, 1, 0, 0, -4391.29, -4433.84, 287.356, 2.15342, 600, 0, 0, 46, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46076, 0, 1, 1, 0, 0, -4401.92, -4488.48, 207.015, 2.48355, 300, 0, 0, 85239, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46076');
DELETE FROM smart_scripts WHERE entryorguid IN (46076);
INSERT INTO `smart_scripts` VALUES (46076, 0, 1, 0, 62, 0, 100, 0, 46076, 0, 0, 0, 86, 85903, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (46076, 0, 2, 0, 62, 0, 100, 0, 46076, 0, 0, 0, 86, 85903, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (46076, 0, 3, 0, 62, 0, 100, 0, 46076, 0, 0, 0, 86, 85903, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (46076, 0, 4, 5, 62, 0, 100, 0, 46076, 0, 0, 0, 86, 85903, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (46076, 0, 5, 7, 61, 0, 100, 0, 0, 0, 0, 0, 33, 46076, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'credit');
INSERT INTO `smart_scripts` VALUES (46076, 0, 7, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (46076, 0, 6, 8, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (46076, 0, 8, 0, 61, 0, 100, 0, 0,0,0,0,12, 45795, 6, 60, 0, 0, 0, 8, 0, 0, 0,-4406.51, -4485.42, 210.5, 5.6, 'summon mob aggro activator');

UPDATE `creature_template` SET `gossip_menu_id`='46076' WHERE (`entry`='46076');
UPDATE `creature_template` SET `npcflag`='3' WHERE (`entry`='46076');

delete from gossip_menu_option where menu_id = 46076;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(46076,0,"I m ready, Commander, let s head up.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='46076') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('46076','1','0','Let s move out quickly, $N. Up the ramp and then straight to Mathias.  ','12','0','100','0','0','0','Life party');

DELETE FROM `creature_involvedrelation` WHERE (`id`='46076') AND (`quest`='27502');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('46076', '27502');
DELETE FROM `creature_questrelation` WHERE (`id`='46076') AND (`quest`='27636');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('46076', '27636');

DELETE FROM `conditions` WHERE (`ConditionValue1`='27502');
INSERT INTO `conditions` VALUES (15, 46076, 0, 0, 0, 9, 0, 27502, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 27636 Just You and Mathias
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27636');

-- Quest 27490 SI:7 Drop
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45669');
DELETE FROM smart_scripts WHERE entryorguid IN (45669);
INSERT INTO `smart_scripts` VALUES (45669, 0, 1, 0, 19, 0, 100, 0, 27490, 0, 0, 0, 33, 45902, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Credit');