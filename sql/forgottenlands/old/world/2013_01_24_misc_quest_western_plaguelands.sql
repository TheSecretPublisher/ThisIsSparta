-- Quest 27175 The Menders' Stead
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27175');

-- Quest 27683 Into the Woods
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='45417');

-- Quest 27012 Into the Woods
UPDATE `creature_template` SET `lootid`='44478' WHERE (`entry`='44478');
DELETE FROM `creature_loot_template` WHERE (`entry`='44478') AND (`item`='60748');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44478', '60748', '-95');
UPDATE `creature_template` SET `lootid`='44479' WHERE (`entry`='44479');
DELETE FROM `creature_loot_template` WHERE (`entry`='44479') AND (`item`='60747');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44479', '60747', '-90');

-- Quest 26999 A New Era for the Plaguelands CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26935' WHERE (`Id`='26999');
UPDATE `quest_template` SET `NextQuestIdChain`='27000' WHERE (`Id`='26935');
UPDATE `quest_template` SET `NextQuestIdChain`='27001' WHERE (`Id`='27000');
UPDATE `quest_template` SET `NextQuestIdChain`='27002' WHERE (`Id`='27001');
UPDATE `quest_template` SET `PrevQuestId`='26999' WHERE (`Id`='26935');
UPDATE `quest_template` SET `PrevQuestId`='26935' WHERE (`Id`='27000');
UPDATE `quest_template` SET `PrevQuestId`='27000' WHERE (`Id`='27001');
UPDATE `quest_template` SET `PrevQuestId`='27001' WHERE (`Id`='27002');

-- Quest 26999 A New Era for the Plaguelands
UPDATE `creature_template` SET `lootid`='1824' WHERE (`entry`='1824');
DELETE FROM `creature_loot_template` WHERE (`entry`='1824') AND (`item`='60760');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1824', '60760', '-80');

UPDATE `creature_template` SET `lootid`='1822' WHERE (`entry`='1822');
DELETE FROM `creature_loot_template` WHERE (`entry`='1822') AND (`item`='60761');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1822', '60761', '-80');

UPDATE `creature_template` SET `lootid`='44482' WHERE (`entry`='44482');
DELETE FROM `creature_loot_template` WHERE (`entry`='44482') AND (`item`='60762');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44482', '60762', '-50');

UPDATE `creature_template` SET `lootid`='1817' WHERE (`entry`='1817');
DELETE FROM `creature_loot_template` WHERE (`entry`='1817') AND (`item`='60763');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1817', '60763', '-55');

-- Quest 27000 Learning The Ropes / 27001 This Means WAR Wild Arachnid Roundup
UPDATE `creature_template` SET `IconName`='vehichleCursor', `VehicleId`='486', `spell1`='83605', `mindmg`='3.8', `maxdmg`='3.8', `attackpower`='46', `minrangedmg`='1.9', `maxrangedmg`='1.9' WHERE (`entry`='44832');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='11616');
DELETE FROM smart_scripts WHERE entryorguid IN (11616) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (11616, 0, 1, 0, 19, 0, 100, 0, 27000, 0, 0, 0, 85, 83604, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell summon horse');
INSERT INTO `smart_scripts` VALUES (11616, 0, 2, 0, 19, 0, 100, 0, 27001, 0, 0, 0, 85, 83604, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell summon horse');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44284');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='44284');
INSERT INTO `smart_scripts` VALUES (44284, 0, 1, 2, 8, 0, 100, 0, 83605, 0, 0, 0, 33, 44850, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `smart_scripts` VALUES (44284, 0, 2, 5, 8, 0, 100, 0, 83605, 0, 0, 0, 33, 44838, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `smart_scripts` VALUES (44284, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- Quest 26979 Strange New Faces CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26937' WHERE (`Id`='26979');
UPDATE `quest_template` SET `NextQuestIdChain`='26938' WHERE (`Id`='26937');
UPDATE `quest_template` SET `PrevQuestId`='26979' WHERE (`Id`='26937');
UPDATE `quest_template` SET `PrevQuestId`='26937' WHERE (`Id`='26938');

-- Quest 26979 Strange New Faces
DELETE FROM `creature` WHERE (`id`='44466');
INSERT INTO `creature` VALUES (null, 44466, 0, 1, 1, 0, 0, 1487.19, -1629.35, 68.957, 0.0523599, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44466, 0, 1, 1, 0, 0, 1874.87, -1332.88, 60.0156, 3.74285, 300, 0, 0, 3048, 0, 0, 0, 0, 0);

-- Quest 26937 When Death is Not Enough
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44466');
DELETE FROM smart_scripts WHERE entryorguid IN (44466) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (44466, 0, 1, 0, 19, 0, 100, 0, 26937, 0, 0, 0, 85, 84149, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell summon horse');
UPDATE `creature_template` SET `KillCredit1`='45089' WHERE (`entry`='44433');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26937');

-- Quest 26938 Combat Training
DELETE FROM `creature` WHERE (`id`='45048');
INSERT INTO `creature` VALUES (null, 45048, 0, 1, 1, 0, 0, 1746.13, -1184.19, 59.7264, 2.34284, 300, 0, 0, 1220, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45048, 0, 1, 1, 0, 0, 1722.92, -1199.29, 59.9857, 5.68076, 300, 0, 0, 1220, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45048, 0, 1, 1, 0, 0, 1736.91, -1165.61, 59.5639, 3.6466, 300, 0, 0, 1277, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45048, 0, 1, 1, 0, 0, 1755.65, -1231.52, 59.601, 5.46476, 300, 0, 0, 1220, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45048, 0, 1, 1, 0, 0, 1748.97, -1194, 59.7441, 5.13492, 300, 0, 0, 1277, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45048, 0, 1, 1, 0, 0, 1713.66, -1216.09, 59.7454, 1.25111, 300, 0, 0, 1220, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `gossip_menu_id`='45048', `npcflag`='1', `AIName`='SmartAI' WHERE (`entry`='45048');
delete from gossip_menu_option where menu_id = 45048;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45048,0,"Come back to work. NOW!",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (45048) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(45048, 0, 1, 2, 62, 0, 100, 0, 45048, 0, 0, 0, 33, 45090, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0, 0, 0, 0, 'Credit'),
(45048, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(45048, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(45048, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_text` WHERE (`entry`='45048') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45048','1','0','At your command!.','12','0','100','0','0','0','frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='26938');
INSERT INTO `conditions` VALUES (15, 45048, 0, 0, 0, 9, 0, 26938, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='45098');
DELETE FROM `creature` WHERE (`id`='45098');
INSERT INTO `creature` VALUES (null, 45098, 0, 1, 1, 0, 0, 1784.14, -1252.21, 60.0102, 2.98278, 300, 0, 0, 8141, 0, 0, 0, 0, 0);

-- Quest 27144 The Reckoning
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='44451');
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='27144');

-- Quest 27089 Ace in the Hole CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27090' WHERE (`Id`='27089');
UPDATE `quest_template` SET `PrevQuestId`='27089' WHERE (`Id`='27090');

-- Quest 27085 Supporting the Troops
UPDATE `quest_template` SET `RequiredNpcOrGo1`='44328' WHERE (`Id`='27085');

-- Quest 27053 Gahrron's Withering Cauldron CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27057' WHERE (`Id`='27053');
UPDATE `quest_template` SET `NextQuestIdChain`='27054' WHERE (`Id`='27057');
UPDATE `quest_template` SET `NextQuestIdChain`='27055' WHERE (`Id`='27054');
UPDATE `quest_template` SET `PrevQuestId`='27053' WHERE (`Id`='27057');
UPDATE `quest_template` SET `PrevQuestId`='27057' WHERE (`Id`='27054');
UPDATE `quest_template` SET `PrevQuestId`='27054' WHERE (`Id`='27055');

-- Quest 27053 Gahrron's Withering Cauldron
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='176392');

-- Quest 27054 Desperate Acts
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27054');
UPDATE `creature_template` SET `lootid`='44442' WHERE (`entry`='44442');
DELETE FROM `creature_loot_template` WHERE (`entry`='44442') AND (`item`='60772');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44442', '60772', '-100');

-- Quest 27161 The Endless Flow CHAIN TIMELINE FIX  - Alliance
UPDATE `quest_template` SET `NextQuestIdChain`='27162' WHERE (`Id`='27161');
UPDATE `quest_template` SET `NextQuestIdChain`='27165' WHERE (`Id`='27162');
UPDATE `quest_template` SET `NextQuestIdChain`='27165' WHERE (`Id`='27163');
UPDATE `quest_template` SET `NextQuestIdChain`='27165' WHERE (`Id`='27164');
UPDATE `quest_template` SET `NextQuestIdChain`='27166' WHERE (`Id`='27165');
UPDATE `quest_template` SET `PrevQuestId`='27161' WHERE (`Id`='27162');
UPDATE `quest_template` SET `PrevQuestId`='27161' WHERE (`Id`='27163');
UPDATE `quest_template` SET `PrevQuestId`='27161' WHERE (`Id`='27164');
UPDATE `quest_template` SET `PrevQuestId`='27162' WHERE (`Id`='27165');
UPDATE `quest_template` SET `PrevQuestId`='27165' WHERE (`Id`='27166');

-- Quest 27162 Scholomancer
DELETE FROM `creature` WHERE (`id`='44323');
INSERT INTO `creature` VALUES (null, 44323, 0, 1, 1, 0, 0, 1277.79, -1530.71, 58.7618, 5.95157, 120, 0, 0, 1, 0, 0, 0, 0, 0);

-- Quest 26922 The Endless Flow CHAIN TIMELINE FIX  - Horde
UPDATE `quest_template` SET `NextQuestIdChain`='26924' WHERE (`Id`='26922');
UPDATE `quest_template` SET `NextQuestIdChain`='26926' WHERE (`Id`='26924');
UPDATE `quest_template` SET `NextQuestIdChain`='26926' WHERE (`Id`='26925');
UPDATE `quest_template` SET `NextQuestIdChain`='26926' WHERE (`Id`='27117');
UPDATE `quest_template` SET `NextQuestIdChain`='26930' WHERE (`Id`='26926');
UPDATE `quest_template` SET `PrevQuestId`='26922' WHERE (`Id`='26924');
UPDATE `quest_template` SET `PrevQuestId`='26922' WHERE (`Id`='26925');
UPDATE `quest_template` SET `PrevQuestId`='26922' WHERE (`Id`='27117');
UPDATE `quest_template` SET `PrevQuestId`='26924' WHERE (`Id`='26926');
UPDATE `quest_template` SET `PrevQuestId`='26926' WHERE (`Id`='26930');

-- Quest 26922 The Endless Flow
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='44360');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44360');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='44360');
INSERT INTO `smart_scripts` VALUES (44360, 0, 1, 2, 8, 0, 100, 0, 83108, 0, 0, 0, 33, 44360, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `smart_scripts` VALUES (44360, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature` WHERE (`id`='44329');
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1463.84, -1396.59, 66.2863, 3.13711, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1557.26, -1500.84, 65.8006, 4.72959, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1460.11, -1393.23, 64.655, 1.9214, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1554.52, -1480.54, 68.5635, 4.41568, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1460.38, -1389.69, 63.8679, 4.52154, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1458.35, -1397.39, 65.1461, 4.80804, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1560.83, -1475.86, 68.3982, 3.75089, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1478.13, -1417.99, 67.2087, 2.44346, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1555.53, -1500.08, 65.5164, 2.39672, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1563.14, -1475.18, 68.3983, 2.33353, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1470.13, -1410.77, 68.6157, 4.56837, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1547.77, -1504.49, 63.6435, 4.3671, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1555.21, -1511.45, 62.911, 5.74701, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1557, -1463.59, 68.4036, 3.3498, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1473.61, -1415.08, 67.0408, 1.76396, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1451.12, -1390.94, 62.1196, 3.8524, 600, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1452.29, -1389.73, 62.1196, 0.622805, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1545.61, -1494.71, 66.8203, 2.38646, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1484.88, -1418.36, 67.0464, 2.70797, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1543.3, -1498.83, 65.2079, 1.23793, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1553.78, -1487.78, 67.692, 4.02823, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1456.11, -1393.82, 63.5999, 3.82465, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1453.08, -1396.85, 63.4323, 0.981006, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1557.2, -1502.08, 65.2929, 1.85905, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1554.06, -1503.78, 64.2396, 5.42133, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1466.99, -1403.74, 67.0383, 3.31733, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1546.68, -1501.49, 64.3589, 3.60023, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1460, -1397.52, 65.6707, 5.46987, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1552.21, -1498.35, 65.5398, 1.6232, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1486.51, -1419.08, 67.2087, 2.44346, 600, 0, 0, 303, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1453.97, -1400.66, 64.6344, 2.82276, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44329, 0, 1, 1, 7846, 44329, 1557.17, -1474.93, 68.3956, 1.30637, 600, 0, 0, 290, 1007, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44329');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='44329');
INSERT INTO `smart_scripts` VALUES (44329, 0, 1, 2, 8, 0, 100, 0, 83108, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='44329');

-- Quest 27084 The Farmers' Militia CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27087' WHERE (`Id`='27084');
UPDATE `quest_template` SET `NextQuestIdChain`='27087' WHERE (`Id`='27086');
UPDATE `quest_template` SET `PrevQuestId`='27084' WHERE (`Id`='27087');

-- Quest 27084 The Farmers' Militia
DELETE FROM `conditions` WHERE (`SourceEntry`='84009');
INSERT INTO `conditions` VALUES (17, 0, 84009, 0, 0, 29, 0, 45101, 20, 0, 0, 0, 0, '', 'Spell can be used only near Frightened Provincial Minuteman');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45101');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='45101');
INSERT INTO `smart_scripts` VALUES (45101, 0, 1, 0, 8, 0, 100, 0, 84009, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- Quest 27086 Ashes to Ashes
DELETE FROM `creature` WHERE (`id`='44450');
INSERT INTO `creature` VALUES (null, 44450, 0, 1, 1, 0, 0, 1327.6, -1377.36, 46.1544, 4.14785, 180, 0, 0, 3048, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44450, 0, 1, 1, 0, 0, 1427.64, -1420.14, 55.6425, 5.35108, 180, 0, 0, 3048, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44450, 0, 1, 1, 0, 0, 1502.2, -1438.63, 65.4981, 5.1618, 180, 0, 0, 3048, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44450, 0, 1, 1, 0, 0, 1311.04, -1442.79, 50.4263, 6.07286, 180, 0, 0, 3048, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='2202', `faction_H`='2202' WHERE (`entry`='44450');

-- Quest 27089 Ace in the Hole
UPDATE `creature_template` SET `spell1`='84197' WHERE (`entry`='44492');
UPDATE `creature_template` SET `unit_flags`='16777216' WHERE (`entry`='44492');
DELETE FROM `creature` WHERE (`id`='45101');
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1424.4, -1697.55, 69.1646, 4.9119, 300, 0, 0, 590, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1420.89, -1660.85, 68.1349, 4.71555, 300, 0, 0, 590, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1429.46, -1694.42, 69.0982, 4.64879, 300, 0, 0, 590, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1423.63, -1625.36, 68.1898, 4.7352, 300, 0, 0, 613, 1283, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1425.81, -1640.49, 69.2095, 0.168103, 300, 0, 0, 590, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1477.64, -1723.97, 69.1699, 3.77309, 300, 0, 0, 613, 1283, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1447.78, -1733.75, 69.3344, 5.40671, 300, 0, 0, 590, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1460.48, -1706.73, 69.3729, 2.32796, 300, 0, 0, 590, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1474.36, -1696.35, 69.012, 2.61856, 300, 0, 0, 613, 1283, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1484.18, -1683.35, 68.7379, 5.65412, 300, 0, 0, 590, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1450.77, -1651.65, 69.3605, 3.48251, 300, 0, 0, 613, 1283, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45101, 0, 1, 1, 0, 0, 1436.84, -1670.65, 68.9881, 3.11337, 300, 0, 0, 590, 1236, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='44453');
INSERT INTO `creature` VALUES (null, 44453, 0, 1, 1, 0, 0, 1347.3, -1349.02, 49.2879, 4.11898, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44453, 0, 1, 1, 0, 0, 1291, -1530.75, 58.7618, 4.32258, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44453, 0, 1, 1, 0, 0, 1351.8, -1296.9, 55.6894, 1.08341, 300, 0, 0, 7, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44492');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='44492');
INSERT INTO `smart_scripts` VALUES (44492, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 3000, 3000, 11, 84197, 0, 0, 0, 0, 0, 11, 45101, 10, 0, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `unit_flags`='131714' WHERE (`entry`='44492');

DELETE FROM `creature_template_addon` WHERE (`entry`='45101');
INSERT INTO `creature_template_addon` (`entry`, `bytes2`, `auras`) VALUES ('45101', '1', '76821 87259');
UPDATE `creature_template` SET `AIName`='SmartAI', `unit_flags`='536904448' WHERE (`entry`='45101');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='45101');
INSERT INTO `smart_scripts` VALUES (45101, 0, 1, 2, 8, 0, 100, 0, 84197, 0, 0, 0, 5, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Play emote');
INSERT INTO `smart_scripts` VALUES (45101, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1500, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn corpe');
INSERT INTO `smart_scripts` VALUES (45101, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 45061, 6, 60, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Raise Forsaken');

UPDATE `creature_template` SET `gossip_menu_id`='45061', `npcflag`='1', `AIName`='SmartAI' WHERE (`entry`='45061');
delete from gossip_menu_option where menu_id = 45061;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45061,0,"Come back to work. NOW!",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (45061) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(45061, 0, 1, 2, 62, 0, 100, 0, 45061, 0, 0, 0, 33, 45103, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0, 0, 0, 0, 'Credit'),
(45061, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(45061, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(45061, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_text` WHERE (`entry`='45061') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45061','1','0','At your command!.','12','0','100','0','0','0','frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='27089');
INSERT INTO `conditions` VALUES (15, 45061, 0, 0, 0, 9, 0, 27089, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44451');
DELETE FROM smart_scripts WHERE entryorguid IN (44451) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (44451, 0, 1, 0, 19, 0, 100, 0, 27089, 0, 0, 0, 85, 84198, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell summon Guardian');

-- Quest 27151 Taelan Fordring's Legacy CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27152' WHERE (`Id`='27151');
UPDATE `quest_template` SET `NextQuestIdChain`='27153' WHERE (`Id`='27152');
UPDATE `quest_template` SET `NextQuestIdChain`='27154' WHERE (`Id`='27153');
UPDATE `quest_template` SET `NextQuestIdChain`='27155' WHERE (`Id`='27154');
UPDATE `quest_template` SET `PrevQuestId`='27151' WHERE (`Id`='27152');
UPDATE `quest_template` SET `PrevQuestId`='27152' WHERE (`Id`='27153');
UPDATE `quest_template` SET `PrevQuestId`='27153' WHERE (`Id`='27154');
UPDATE `quest_template` SET `PrevQuestId`='27154' WHERE (`Id`='27155');

-- Quest 27151 Taelan Fordring's Legacy 
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27151');

-- Quest 27153 The Good People of Hearthglen
-- Speak with Morris Vant
UPDATE `creature_template` SET `gossip_menu_id`='45148', `AIName`='SmartAI' WHERE (`entry`='45148');
delete from gossip_menu_option where menu_id = 45148;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45148,0,"Have you noticed anything strange lately? Any new customers in the blacksmith shop?",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (45148) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(45148, 0, 1, 2, 62, 0, 100, 0, 45148, 0, 0, 0, 33, 45148, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0, 0, 0, 0, 'Credit'),
(45148, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(45148, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

DELETE FROM `creature_text` WHERE (`entry`='45148') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45148','1','0','Well, let s see... I saw some drudges running away from that mine over there. Said something about a spider. New customers? Well, there s Jeralee, the lovely young gnome who bought an axe twice her size last week. Oh, and Magus Bisp came by asking for armor. Not sure why he d need plate armor... ','12','0','100','0','0','0','frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='27153');
INSERT INTO `conditions` VALUES (15, 45148, 0, 0, 0, 9, 0, 27153, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
-- Speak with Outfitter Mendelev
UPDATE `creature_template` SET `gossip_menu_id`='45149', `AIName`='SmartAI' WHERE (`entry`='45149');
delete from gossip_menu_option where menu_id = 45149;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45149,0,"Have you noticed anything strange lately? Any new customers, buying anything suspicious?",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (45149) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(45149, 0, 1, 2, 62, 0, 100, 0, 45149, 0, 0, 0, 33, 45149, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0, 0, 0, 0, 'Credit'),
(45149, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(45149, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

DELETE FROM `creature_text` WHERE (`entry`='45149') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45149','1','0','What is this, an interrogation? You re not one of Fordring s internal affairs guys, are you?  ','12','0','100','0','0','0','frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='27153');
INSERT INTO `conditions` VALUES (15, 45149, 0, 0, 0, 9, 0, 27153, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
-- Speak with Bree Ironstock 
UPDATE `creature_template` SET `gossip_menu_id`='45150', `AIName`='SmartAI' WHERE (`entry`='45150');
delete from gossip_menu_option where menu_id = 45150;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45150,0,"Hello, ma'am. Heard any interesting rumors lately?",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (45150) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(45150, 0, 1, 2, 62, 0, 100, 0, 45150, 0, 0, 0, 33, 45150, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0, 0, 0, 0, 'Credit'),
(45150, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(45150, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

DELETE FROM `creature_text` WHERE (`entry`='45150') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45150','1','0','Well, let s see. I heard that Magus Bisp has been spending his time cooped up on top of his tower, working on some new spell, or something. ','12','0','100','0','0','0','frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='27153');
INSERT INTO `conditions` VALUES (15, 45150, 0, 0, 0, 9, 0, 27153, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
-- Speak with High Cleric Alphus 
UPDATE `creature_template` SET `gossip_menu_id`='45151', `AIName`='SmartAI' WHERE (`entry`='45151');
delete from gossip_menu_option where menu_id = 45151;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45151,0,"I'm looking for someone who may have stolen some supplies from Hearthglen. Have any leads for me?",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (45151) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(45151, 0, 1, 2, 62, 0, 100, 0, 45151, 0, 0, 0, 33, 45151, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0, 0, 0, 0, 'Credit'),
(45151, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(45151, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

DELETE FROM `creature_text` WHERE (`entry`='45151') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45151','1','0','Stolen supplies? Well, let me think about it... I know a certain priest named Daria who took all the extra wine after last week s service, but didn t throw it out as I asked. I believe she ll be apologizing soon, though.  ','12','0','100','0','0','0','frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='27153');
INSERT INTO `conditions` VALUES (15, 45151, 0, 0, 0, 9, 0, 27153, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 27154 Bagging Bisp
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27154');

UPDATE `creature_template` SET `gossip_menu_id`='45152', `AIName`='SmartAI' WHERE (`entry`='45152');
delete from gossip_menu_option where menu_id = 45152;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45152,0,"I was just wondering what you knew about the gnolls to the south. Someone has been giving them supplies to practice necromancy.",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (45152) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(45152, 0, 1, 2, 62, 0, 100, 0, 45152, 0, 0, 0, 33, 45152, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0, 0, 0, 0, 'Credit'),
(45152, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(45152, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

DELETE FROM `creature_text` WHERE (`entry`='45152') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45152','1','0','You\'ll pay with your life for interfering with my plans, you miserable scum!','12','0','100','0','0','0','frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='27154');
INSERT INTO `conditions` VALUES (15, 45152, 0, 0, 0, 9, 0, 27154, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 27155 Turning Yourself In
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27155');

-- Quest 26957 The Long Trip Home CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27017' WHERE (`Id`='26957');
UPDATE `quest_template` SET `PrevQuestId`='26957' WHERE (`Id`='27017');

-- Quest 26957 The Long Trip Home
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='44905');
DELETE FROM `creature` WHERE (`id`='44458');
INSERT INTO `creature` VALUES (null, 44458, 0, 1, 1, 0, 0, 1861.64, -1757.87, 59.6931, 2.47442, 300, 0, 0, 1268, 1332, 0, 0, 0, 0);

-- Quest 27156 It's About Time! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27157' WHERE (`Id`='27156');
UPDATE `quest_template` SET `PrevQuestId`='27156' WHERE (`Id`='27157');

-- Quest 27156 It's About Time!
UPDATE `creature_template` SET `gossip_menu_id`='45162', `AIName`='SmartAI' WHERE (`entry`='45162');
delete from gossip_menu_option where menu_id = 45162;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45162,0,"I'm ready for the challenge",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (45162) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(45162, 0, 1, 2, 62, 0, 100, 0, 45162, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Challenge begin - change faction'),
(45162, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(45162, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

DELETE FROM `creature_text` WHERE (`entry`='45162') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('45162','1','0','I WILL KILL YOU!','12','0','100','0','0','0','frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='27156');
INSERT INTO `conditions` VALUES (15, 45162, 0, 0, 0, 9, 0, 27156, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 26953 Zen'Kiki, the Druid CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26954' WHERE (`Id`='26953');
UPDATE `quest_template` SET `PrevQuestId`='26953' WHERE (`Id`='26954');

-- Quest 26953 Zen'Kiki, the Druid
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44456');
DELETE FROM smart_scripts WHERE entryorguid IN (44456) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (44456, 0, 1, 0, 19, 0, 100, 0, 26953, 0, 0, 0, 85, 83456, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell summon Guardian');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44269');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='44269');
INSERT INTO `smart_scripts` VALUES (44269, 0, 1, 0, 0, 0, 100, 0, 1000, 1000, 15000, 15000, 33, 44777, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0, 0, 0, 0, '');

-- Quest 26954 A Different Approach
UPDATE `creature_template` SET `faction_A`='974', `faction_H`='974', `unit_flags`='0' WHERE (`entry`='44481');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44456');
UPDATE `creature_template` SET `InhabitType`='5' WHERE (`entry`='44481');
-- delete from quest 26953
INSERT INTO `smart_scripts` VALUES (44456, 0, 2, 0, 19, 0, 100, 0, 26954, 0, 0, 0, 85, 83456, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell summon Guardian');
DELETE FROM `creature` WHERE (`id`='44481');
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1849.99, -1856.91, 83.3424, 2.47049, 300, 0, 0, 1336, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1827.65, -1840.09, 74.5463, 1.9639, 300, 0, 0, 1395, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1809.94, -1866.26, 148.177, 3.5183, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1831.19, -1851.98, 83.1038, 1.30809, 300, 0, 0, 1336, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1851.11, -1876.67, 92.602, 1.45166, 300, 0, 0, 1336, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1794.05, -1912.73, 137.765, 4.95928, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1813.01, -1892.36, 117.387, 3.99728, 300, 0, 0, 1395, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1787.91, -1900.68, 136.198, 1.98467, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1778.03, -1909.15, 151.997, 1.83123, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1871.16, -1869.3, 93.2326, 3.11451, 300, 0, 0, 1395, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1861.66, -1907.35, 103.767, 1.63531, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1865, -1903.76, 104.516, 4.46309, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1841.68, -1895.95, 113.667, 6.19972, 300, 0, 0, 1395, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1846.04, -1925.84, 105.156, 0.225562, 300, 0, 0, 1336, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1832.69, -1896.23, 121.089, 0.194629, 300, 0, 0, 1336, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1850.57, -1903.2, 132.509, 3.76676, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1841.14, -1931.03, 102.744, 0.649677, 300, 0, 0, 1395, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1815.51, -1922.3, 113.068, 6.10593, 300, 0, 0, 1395, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44481, 0, 1, 1, 0, 0, 1824.5, -1901.6, 121.508, 5.08505, 300, 0, 0, 1395, 0, 0, 0, 0, 0);

-- Quest 26955 Zen'Kiki and the Cultists
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44456');
-- delete from quest 26953
INSERT INTO `smart_scripts` VALUES (44456, 0, 3, 0, 19, 0, 100, 0, 26955, 0, 0, 0, 85, 83456, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Cast spell summon Guardian');

UPDATE `creature_template` SET `gossip_menu_id`='44902', `npcflag`='1', `AIName`='SmartAI' WHERE (`entry`='44902');
delete from gossip_menu_option where menu_id = 44902;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(44902,0,"Go Friend! RUN ! RUN !",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (44902) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(44902, 0, 1, 2, 62, 0, 100, 0, 44902, 0, 0, 0, 33, 44902, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0, 0, 0, 0, 'Credit'),
(44902, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(44902, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(44902, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM `creature_text` WHERE (`entry`='44902') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('44902','1','0',' Thank you!','12','0','100','0','0','0','frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='26955');
INSERT INTO `conditions` VALUES (15, 44902, 0, 0, 0, 9, 0, 26955, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 26956 I Ain't Sayin' You a Gourd-Digger...
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='44487');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='44489');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='44488');

-- Quest 27168 Those That Couldn't Let Go 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45166');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='45166');
INSERT INTO `smart_scripts` VALUES (45166, 0, 1, 0, 8, 0, 100, 0, 84375, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Change faction');

-- Quest 27169 Uther's Blessing CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27170' WHERE (`Id`='27169');
UPDATE `quest_template` SET `NextQuestIdChain`='27171' WHERE (`Id`='27170');
UPDATE `quest_template` SET `NextQuestIdChain`='27172' WHERE (`Id`='27171');
UPDATE `quest_template` SET `NextQuestIdChain`='27173' WHERE (`Id`='27172');
UPDATE `quest_template` SET `NextQuestIdChain`='27174' WHERE (`Id`='27173');
UPDATE `quest_template` SET `PrevQuestId`='27169' WHERE (`Id`='27170');
UPDATE `quest_template` SET `PrevQuestId`='27170' WHERE (`Id`='27171');
UPDATE `quest_template` SET `PrevQuestId`='27171' WHERE (`Id`='27172');
UPDATE `quest_template` SET `PrevQuestId`='27172' WHERE (`Id`='27173');
UPDATE `quest_template` SET `PrevQuestId`='27173' WHERE (`Id`='27174');

-- Quest 27171 Ambushed!
DELETE FROM `creature` WHERE (`id`='1784');
INSERT INTO `creature` VALUES (null, 1784, 0, 1, 1, 0, 0, 1038.17, -1911.3, 68.74, 6.0548, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1784, 0, 1, 1, 0, 0, 1070.84, -1947.48, 62.84, 1.32278, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1784, 0, 1, 1, 0, 0, 1094.46, -1953.33, 75.95, 0.372444, 120, 0, 0, 1, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='1783');
INSERT INTO `creature` VALUES (null, 1783, 0, 1, 1, 0, 0, 1047.78, -1979.45, 79.63, 1.03218, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1783, 0, 1, 1, 0, 0, 1058.12, -1965.66, 73.5, 5.63461, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1783, 0, 1, 1, 0, 0, 1042.08, -1950.66, 78.02, 0.125044, 120, 0, 0, 1, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `lootid`='1784' WHERE (`entry`='1784');
DELETE FROM `creature_loot_template` WHERE (`entry`='1784') AND (`item`='60864');
DELETE FROM `creature_loot_template` WHERE (`entry`='1784') AND (`item`='60863');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1784', '60864', '-45');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1784', '60863', '-45');
UPDATE `creature_template` SET `lootid`='1784' WHERE (`entry`='1784');
DELETE FROM `creature_loot_template` WHERE (`entry`='1783') AND (`item`='60864');
DELETE FROM `creature_loot_template` WHERE (`entry`='1783') AND (`item`='60863');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1783', '60864', '-40');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1783', '60863', '-40');

-- Quest 27172 The Writhing Haunt
DELETE FROM `creature` WHERE (`id`='45165');
INSERT INTO `creature` VALUES (null, 45165, 0, 1, 1, 0, 0, 955.528, -1419.61, 66.3221, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45165, 0, 1, 1, 0, 0, 1514.55, -1895.19, 59.7982, 2.26197, 300, 0, 0, 1995, 1534, 0, 0, 0, 0);
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='45165');

-- Quest 27173 This Is Our Army
UPDATE `creature_template` SET `faction_A`='14' WHERE (`entry`='45209');
DELETE FROM `creature` WHERE (`id`='45209');
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1455.33, -1819.99, 58.1722, 1.66409, 300, 0, 0, 1050, 1097, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1453.34, -1815.98, 58.4584, 5.65391, 300, 0, 0, 1050, 1097, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1443.15, -1818.53, 58.9935, 2.67333, 300, 0, 0, 1050, 1097, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1438.9, -1855.96, 57.9373, 6.18012, 300, 0, 0, 1050, 1097, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1426.74, -1860.34, 57.9751, 3.44301, 300, 0, 0, 1050, 1097, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1419.88, -1861.18, 57.9751, 5.24941, 300, 0, 0, 1009, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1420.47, -1881.27, 59.4086, 5.13946, 300, 0, 0, 1050, 1097, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1424.52, -1893.26, 61.2623, 1.54624, 300, 0, 0, 1009, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1435.31, -1893.96, 59.4648, 0.148235, 300, 0, 0, 1009, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1451.69, -1861.65, 58.1479, 1.62478, 300, 0, 0, 1009, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1477.32, -1847.99, 58.0178, 5.52036, 300, 0, 0, 1009, 1067, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45209, 0, 1, 1, 0, 0, 1482.71, -1843.87, 58.0458, 3.82784, 300, 0, 0, 1009, 1067, 0, 0, 0, 0);

-- Quest 27167 A Mighty Hunger
UPDATE `creature_template` SET `lootid`='44473' WHERE (`entry`='44473');
DELETE FROM `creature_loot_template` WHERE (`entry`='44473') AND (`item`='60851');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44473', '60851', '-30');

-- Quest 27202 Brother Against Brother
UPDATE `creature_template` SET `faction_A`='14' WHERE (`entry`='45242');
DELETE FROM `creature` WHERE (`id`='45242');
INSERT INTO `creature` VALUES (null, 45242, 0, 1, 1, 0, 0, 1336.19, -1524.1, 63.7927, 5.65777, 300, 0, 0, 1180, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45242, 0, 1, 1, 0, 0, 1310.13, -1524.36, 59.584, 4.16944, 300, 0, 0, 1180, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45242, 0, 1, 1, 0, 0, 1393.86, -1503.15, 55.9868, 5.1669, 300, 0, 0, 1180, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45242, 0, 1, 1, 0, 0, 1383.02, -1483.63, 56.9684, 4.8174, 300, 0, 0, 1226, 1283, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='14' WHERE (`entry`='45241');
DELETE FROM `creature` WHERE (`id`='45241');
INSERT INTO `creature` VALUES (null, 45241, 0, 1, 1, 0, 0, 1270.59, -1375.37, 48.5445, 2.87352, 300, 0, 0, 885, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45241, 0, 1, 1, 0, 0, 1318.72, -1351.79, 58.44, 6.22324, 300, 0, 0, 920, 1283, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45241, 0, 1, 1, 0, 0, 1331.42, -1338.32, 59.7977, 6.24288, 300, 0, 0, 885, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45241, 0, 1, 1, 0, 0, 1375.89, -1354.02, 53.7423, 0.222797, 300, 0, 0, 885, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45241, 0, 1, 1, 0, 0, 1400.95, -1348.09, 58.7485, 2.45333, 300, 0, 0, 885, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45241, 0, 1, 1, 0, 0, 1390.5, -1431.5, 55.2788, 6.01118, 300, 0, 0, 920, 1283, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45241, 0, 1, 1, 0, 0, 1375.29, -1434.86, 55.1991, 3.27407, 300, 0, 0, 920, 1283, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45241, 0, 1, 1, 0, 0, 1335.57, -1479.53, 57.9517, 1.42839, 300, 0, 0, 885, 1236, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='14' WHERE (`entry`='45243');
DELETE FROM `creature` WHERE (`id`='45243');
INSERT INTO `creature` VALUES (null, 45243, 0, 1, 1, 0, 0, 1382.82, -1495.91, 55.9823, 4.23228, 300, 0, 0, 1180, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45243, 0, 1, 1, 0, 0, 1357.43, -1436.31, 51.3472, 1.65617, 300, 0, 0, 1180, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45243, 0, 1, 1, 0, 0, 1368.35, -1327.53, 52.6675, 3.04633, 300, 0, 0, 1180, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45243, 0, 1, 1, 0, 0, 1258.88, -1374.63, 49.4624, 3.32907, 300, 0, 0, 1180, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45243, 0, 1, 1, 0, 0, 1249.55, -1376.83, 49.6948, 0.811871, 300, 0, 0, 1180, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45243, 0, 1, 1, 0, 0, 1215.49, -1336.58, 53.6398, 0.105012, 300, 0, 0, 1180, 1236, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45243, 0, 1, 1, 0, 0, 1260.59, -1440.04, 57.0475, 3.73356, 300, 0, 0, 1226, 1283, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45243, 0, 1, 1, 0, 0, 1254.19, -1445.89, 60.6634, 1.24384, 300, 0, 0, 1226, 1283, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45243, 0, 1, 1, 0, 0, 1306.62, -1455.96, 50.3979, 0.525205, 300, 0, 0, 1226, 1283, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45243, 0, 1, 1, 0, 0, 1324.97, -1467.88, 57.6179, 1.49518, 300, 0, 0, 1180, 1236, 0, 0, 0, 0);





