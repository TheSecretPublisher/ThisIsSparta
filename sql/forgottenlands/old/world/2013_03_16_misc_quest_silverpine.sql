-- Missing Spawn
DELETE FROM `creature` WHERE (`id`='44365');
INSERT INTO `creature` VALUES (null, 44365, 0, 1, 1, 0, 44365, 1381.7, 1041.26, 54.3171, 4.02848, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44365, 0, 1, 1, 0, 44365, 501.183, 1566.28, 128.213, 3.91105, 300, 0, 0, 34356800, 189400, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='45228');
INSERT INTO `creature` VALUES (null, 45228, 0, 1, 1, 0, 0, 378.204, 1107.64, 106.124, 4.29755, 300, 0, 0, 387450, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='45312');
INSERT INTO `creature` VALUES (null, 45312, 0, 1, 1, 0, 0, -926.789, 1632.4, 68.384, 1.31696, 300, 0, 0, 2085, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='44789');
INSERT INTO `creature` VALUES (null, 44789, 0, 1, 1, 0, 0, 1414.19, 1014.16, 52.8818, 2.41445, 300, 0, 0, 2085, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='44640');
INSERT INTO `creature` VALUES (null, 44640, 0, 1, 1, 0, 0, 1380.71, 1049.09, 53.4561, 4.10114, 300, 0, 0, 30705, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='44778');
INSERT INTO `creature` VALUES (null, 44778, 0, 1, 1, 0, 0, 1409.48, 1065.73, 60.4794, 6.25704, 300, 0, 0, 230, 498, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='44784');
INSERT INTO `creature` VALUES (null, 44784, 0, 1, 1, 0, 0, 1431.15, 1086.74, 60.4789, 3.77748, 300, 0, 0, 276, 590, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='44825');
INSERT INTO `creature` VALUES (null, 44825, 0, 1, 1, 0, 0, 1421.32, 1021.02, 52.666, 2.44511, 300, 0, 0, 6141, 0, 0, 0, 0, 0);

-- Fixed some wrong flags
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27097');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27193');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27056');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27096');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27098');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27099');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27180');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27181');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27095');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27542');

-- Fix some wrong auras
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='44916');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='44917');

-- Fix Bunny - it was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='44920');

-- Quest 27180 Honor the Dead CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27181' WHERE (`Id`='27180');
UPDATE `quest_template` SET `NextQuestIdChain`='27193' WHERE (`Id`='27181');
UPDATE `quest_template` SET `NextQuestIdChain`='27194' WHERE (`Id`='27193');
UPDATE `quest_template` SET `PrevQuestId`='27180' WHERE (`Id`='27181');
UPDATE `quest_template` SET `PrevQuestId`='27181' WHERE (`Id`='27193');
UPDATE `quest_template` SET `PrevQuestId`='27193' WHERE (`Id`='27194');

-- Quest 27180 Honor the Dead
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='45197');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('45197', '84379', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='45197');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45197');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='45197');
INSERT INTO `smart_scripts` VALUES (45197, 0, 1, 2, 8, 0, 100, 0, 84379, 0, 0, 0, 56,60862,1,0,0,0,0,21,2,0,0,0,0,0,0,'Add item quest');
INSERT INTO `smart_scripts` VALUES (45197, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Quest 27181 Excising the Taint
DELETE FROM `creature_questrelation` WHERE (`id`='44365') AND (`quest`='27181');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('44365', '27181');

-- Quest 27193 Seek and Destroy
UPDATE `creature_template` SET `lootid`='45219' WHERE (`entry`='45219');
DELETE FROM `creature_loot_template` WHERE (`entry`='45219') AND (`item`='60867');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45219', '60867', '-85');

-- Quest 27290 To Forsaken Forward Command CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27342' WHERE (`Id`='27290');
UPDATE `quest_template` SET `PrevQuestId`='27290' WHERE (`Id`='27342');

-- Quest 27097 Rise, Forsaken CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27099' WHERE (`Id`='27097');
UPDATE `quest_template` SET `NextQuestIdChain`='27098' WHERE (`Id`='27099');
UPDATE `quest_template` SET `PrevQuestId`='27097' WHERE (`Id`='27099');
UPDATE `quest_template` SET `PrevQuestId`='27099' WHERE (`Id`='27098');

-- Quest 27097 Rise, Forsaken
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44365');
DELETE FROM smart_scripts WHERE entryorguid IN (44365);
INSERT INTO `smart_scripts` VALUES (44365, 0, 1, 0, 19, 0, 100, 0, 27097, 0, 0, 0, 86, 85870, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Summon Agatha Guardian');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46034');
DELETE FROM smart_scripts WHERE entryorguid IN (46034);
INSERT INTO `smart_scripts` VALUES (46034, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2500, 2510, 11, 85950, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0,0,0,0, 'On aggro cast spell');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44954');
DELETE FROM smart_scripts WHERE entryorguid IN (44954);
INSERT INTO `smart_scripts` VALUES (44954, 0, 1, 2, 8, 0, 100, 0, 85950, 0, 0, 0, 33, 44953, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 'credit quest');
INSERT INTO `smart_scripts` VALUES (44954, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44966');
DELETE FROM smart_scripts WHERE entryorguid IN (44966);
INSERT INTO `smart_scripts` VALUES (44966, 0, 1, 2, 8, 0, 100, 0, 85950, 0, 0, 0, 33, 44953, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 'credit quest');
INSERT INTO `smart_scripts` VALUES (44966, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Quest 27099 No Escape
DELETE FROM `creature_template` WHERE (`entry`='460340');
INSERT INTO `creature_template` VALUES (460340, 0, 0, 0, 0, 0, 33996, 0, 0, 0, 'Bunny Agatha', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 30, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 868, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature` WHERE (`id`='460340');
INSERT INTO `creature` VALUES (null, 460340, 0, 1, 1, 0, 44365, 997.7, 690.06, 74.90, 4.02848, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`='460340');
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES ('460340', '64573 52855');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='460340');
DELETE FROM smart_scripts WHERE entryorguid IN (460340);
INSERT INTO `smart_scripts` VALUES (460340, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 44951, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'credit quest');

-- Quest 27098 Lordaeron
DELETE FROM `creature_template` WHERE (`entry`='460341');
INSERT INTO `creature_template` VALUES (460341, 0, 0, 0, 0, 0, 33996, 0, 0, 0, 'Bunny Lady Sylvanas', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 30, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 868, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature` WHERE (`id`='460341');
INSERT INTO `creature` VALUES (null, 460341, 0, 1, 1, 0, 44365, 501.183, 1566.28, 128.213, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`='460341');
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES ('460341', '64573 52855');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='460341');
DELETE FROM smart_scripts WHERE entryorguid IN (460341);
INSERT INTO `smart_scripts` VALUES (460341, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 45051, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'credit quest');

-- Quest 27039 Dangerous Intentions CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27045' WHERE (`Id`='27039');
UPDATE `quest_template` SET `NextQuestIdChain`='27056' WHERE (`Id`='27045');
UPDATE `quest_template` SET `NextQuestIdChain`='27065' WHERE (`Id`='27056');
UPDATE `quest_template` SET `NextQuestIdChain`='27069' WHERE (`Id`='27065');
UPDATE `quest_template` SET `NextQuestIdChain`='27093' WHERE (`Id`='27069');
UPDATE `quest_template` SET `NextQuestIdChain`='27096' WHERE (`Id`='27093');
UPDATE `quest_template` SET `PrevQuestId`='27039' WHERE (`Id`='27045');
UPDATE `quest_template` SET `PrevQuestId`='27045' WHERE (`Id`='27056');
UPDATE `quest_template` SET `PrevQuestId`='27056' WHERE (`Id`='27065');
UPDATE `quest_template` SET `PrevQuestId`='27065' WHERE (`Id`='27069');
UPDATE `quest_template` SET `PrevQuestId`='27069' WHERE (`Id`='27093');
UPDATE `quest_template` SET `PrevQuestId`='27093' WHERE (`Id`='27096');

-- Quest 27045 Waiting to Exsanguinate
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='44894');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('44894', '58178', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='44894');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44894');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='44894');
INSERT INTO `smart_scripts` VALUES (44894, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 33,44882,0,0,0,0,0,21,2,0,0,0,0,0,0,"Credit quest");

-- Quest 27069 Steel Thunder
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='83837');
INSERT INTO `spell_linked_spell` VALUES (83837, 58178, 0, 'Spell trigger');

DELETE FROM `creature_template` WHERE (`entry`='449201');
INSERT INTO `creature_template` VALUES (449201, 0, 0, 0, 0, 0, 33996, 0, 0, 0, 'Bunny Orc Box', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 30, 20, 1, 1, 0, 0, 0, 0, 0, 0, 0, 868, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature` WHERE (`id`='449201');
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 950.993, 1815.29, 9.74893, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 927.278, 1818.42, 9.47999, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 930.177, 1846.25, 6.28156, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 839.420, 1755.41, 16.8780, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 881.530, 1895.49, 1.43335, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 851.701, 1873.99, 1.98331, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 871.358, 1843.83, 5.87360, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 910.163, 1851.72, 5.80952, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 909.620, 1874.39, 4.28866, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 884.266, 1828.26, 7.56721, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 449201, 0, 1, 1, 0, 44365, 809.651, 1855.92, 0.80949, 3.91105, 600, 0, 0, 34356800, 189400, 0, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`='449201');
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES ('449201', '64573 52855');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='449201');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='449201');
INSERT INTO `smart_scripts` VALUES (449201, 0, 1, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 33,44915,0,0,0,0,0,21,3,0,0,0,0,0,0,"Credit quest");

-- Quest 27093 Lost in the Darkness
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44941');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='44941');
INSERT INTO `smart_scripts` VALUES (44941, 0, 1, 2, 6, 0, 100, 0, 0, 0, 0, 0, 33,44942,0,0,0,0,0,21,20,0,0,0,0,0,0,"Credit quest");
INSERT INTO `smart_scripts` VALUES (44941, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 44942, 6, 60000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summon Freed Orc on Death');

-- Quest 26995 Dangerous Intentions CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26998' WHERE (`Id`='26995');
UPDATE `quest_template` SET `PrevQuestId`='26995' WHERE (`Id`='26998');

-- Quest 26995 Guts and Gore
DELETE FROM `creature_loot_template` WHERE (`entry`='1778') AND (`item`='60742');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1778', '60742', '-45');
DELETE FROM `creature_loot_template` WHERE (`entry`='1765') AND (`item`='60742');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1765', '60742', '-45');

-- Quest 26998 Iterating Upon Success
UPDATE creature_template SET ainame = "SmartAI", scriptname = '', type_flags = 2048, vehicleid = 165, unit_flags = 898, npcflag = 16777216, spell1 = 83573, inhabittype = 6, speed_run = 3, speed_walk =3 WHERE entry IN (44821);

DELETE FROM smart_scripts WHERE entryorguid IN (44821) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(44821,0,0,0,27,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Navetta - raccatta passeggero"),
(44821,0,2,0,1,1,100,1,1000,1100,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Navetta - set fly"),
(44821,0,6,0,1,1,100,1,1302,1303,0,0,69,5,5,0,0,0,0,8,0,0,0,1123,117,80,4.4,"Navetta - movimento 2"),
(44821,0,8,0,0,1,100,1,139000,139003,0,0,69,5,5,0,0,0,0,8,0,0,0,994,87, 80,3.18,"Navetta - movimento 3");

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44825');
UPDATE `creature_template` SET `gossip_menu_id`='44825' WHERE (`entry`='44825');
DELETE FROM `conditions` WHERE (`ConditionValue1`='26998');
INSERT INTO `conditions` VALUES (15, 44825, 1, 0, 0, 9, 0, 26998, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

DELETE FROM `gossip_menu_option` WHERE (`menu_id`='44825');
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag,action_menu_id) values
(44825,1,"I need to take a bat to the Dawning Isles ",1,1,0);

DELETE FROM smart_scripts WHERE entryorguid IN (44825);
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(44825, 0, 22, 23, 62, 0, 100, 0, 44825, 1, 0, 0, 33, 44825, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'gossip - credit'),
(44825, 0, 23, 24, 61, 0, 100, 0, 0, 0, 0, 0, 86, 83584, 0,0,0,0,0,21,2,0,0,0,0,0,0,"Frase"),
(44825, 0, 24, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

-- Quest 25005 Speak with Sevren
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='25005');

-- Quest 25006 The Grasp Weakens
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='39117');
UPDATE `creature_template` SET `gossip_menu_id`='39117' WHERE (`entry`='39117');
DELETE FROM `conditions` WHERE (`ConditionValue1`='25006');
INSERT INTO `conditions` VALUES (15, 39117, 1, 0, 0, 9, 0, 25006, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

DELETE FROM `gossip_menu_option` WHERE (`menu_id`='39117');
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag,action_menu_id) values
(39117,1,"I am ready. ",1,1,0);

DELETE FROM smart_scripts WHERE entryorguid IN (39117);
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(39117, 0, 22, 23, 62, 0, 100, 0, 39117, 1, 0, 0, 12, 38981, 7, 80000, 0, 0, 0, 8, 0, 0, 0, 2242.24, 238.86, 34.6, 5.084, 'Summon mob'),
(39117, 0, 23, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

update creature_template set faction_a = 14, faction_h = 14 where entry = 38981;

-- Quest 25046 A Daughter's Embrace
UPDATE `quest_template` SET `RequiredNpcOrGo1`='39097' WHERE (`Id`='25046');

-- Quest 26965 The Warchief Cometh
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44615');
DELETE FROM smart_scripts WHERE entryorguid IN (44615) AND event_param1 = 26965;
INSERT INTO `smart_scripts` VALUES (44615, 0, 1, 0, 19, 0, 100, 0, 26965, 0, 0, 0, 12, 44629, 7, 80000, 0, 0, 0, 8, 0, 0, 0, 1341.13, 1015.28,54.56,0.50, 'Summon Garrosh Hellscream');
INSERT INTO `smart_scripts` VALUES (44615, 0, 2, 0, 19, 0, 100, 0, 26965, 0, 0, 0, 33, 44629, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 'credit');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44629');
DELETE FROM smart_scripts WHERE entryorguid IN (44629);
INSERT INTO `smart_scripts` VALUES (44629, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 46, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0, 'move forward');

-- Quest 27231 Reinforcements from Fenris CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27232' WHERE (`Id`='27231');
UPDATE `quest_template` SET `PrevQuestId`='27231' WHERE (`Id`='27232');

-- Quest 27231 Reinforcements from Fenris
UPDATE `gameobject_template` SET `faction`='35', `flags`='0' WHERE (`entry`='205350');

-- Quest 27232 The Waters Run Red...
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='45263');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('45263', '87027', '1');
UPDATE `creature_template` SET `npcflag`='16777216', `spell1`='84575', `unit_flags`='4' WHERE (`entry`='45263');
UPDATE `creature_template` SET `VehicleId`='244' WHERE (`entry`='45263');

DELETE FROM `gameobject` WHERE (`id`='203535');
INSERT INTO `gameobject` VALUES (null, 203535, 0, 1, 1, 770.777, 955.58, 32.9341, 5.61688, 0, 0, 0.327023, -0.945016, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 203535, 0, 1, 1, 752.189, 903.373, 32.9339, 5.45197, 0, 0, 0.403748, -0.91487, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 203535, 0, 1, 1, 775.182, 930.714, 32.9341, 5.86037, 0, 0, 0.209835, -0.977737, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 203535, 0, 1, 1, 779.766, 911.098, 32.932, 5.76611, 0, 0, 0.255666, -0.966765, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 203535, 0, 1, 1, 745.453, 868.382, 32.9341, 5.25953, 0, 0, 0.489773, -0.87185, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 203535, 0, 1, 1, 720.667, 893.626, 32.9342, 5.58154, 0, 0, 0.34367, -0.939091, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 203535, 0, 1, 1, 707.571, 872.384, 32.9352, 4.80007, 0, 0, 0.675437, -0.737417, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 203535, 0, 1, 1, 703.496, 906.52, 32.9351, 5.22419, 0, 0, 0.5051, -0.863061, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 203535, 0, 1, 1, 796.091, 942.542, 32.932, 3.11071, 0, 0, 0.999881, 0.0154421, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 203535, 0, 1, 1, 769.625, 987.564, 32.9341, 4.9446, 0, 0, 0.62043, -0.784262, 300, 0, 1);

DELETE FROM `creature` WHERE (`id`='45270');
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 706.112, 903.62, 33.607, 0.229067, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 703.069, 904.654, 33.6284, 3.04079, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 704.912, 906.389, 34.0587, 1.11264, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 700.817, 910.866, 34.4568, 2.05512, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 702.154, 908.791, 34.0624, 0.994816, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 707.238, 877.12, 34.4455, 1.68204, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 708.366, 874.857, 34.0506, 0.857372, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 708.589, 869.188, 34.0024, 5.287, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 706.447, 871.379, 33.9775, 2.70304, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 708.913, 871.668, 34.0648, 0.165328, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 717.039, 896.875, 34.4476, 2.47731, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 719.646, 896.215, 34.0598, 0.977198, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 721.903, 893.981, 34.0478, 0.494174, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 724.017, 891.176, 33.8985, 5.91342, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 720.724, 891.354, 33.7584, 3.81248, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 754.236, 899.454, 33.8087, 4.8492, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 754.636, 902.082, 33.842, 0.879015, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 751.973, 901.729, 33.7779, 3.40407, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 750.145, 904.289, 34.004, 3.40014, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 749.146, 907.133, 34.4356, 1.58195, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 776.382, 913.726, 34.2489, 2.0257, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 776.966, 911.322, 34.0646, 4.30059, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 780.869, 912.308, 34.0454, 1.34356, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 779.827, 909.482, 34.0578, 4.72863, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 783.13, 908.935, 34.5408, 5.91458, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 742.979, 872.923, 34.4568, 1.63416, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 742.985, 869.396, 34.0329, 3.8215, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 746.86, 868.194, 34.0188, 0.727026, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 744.785, 866.317, 33.6769, 4.09638, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 747.095, 864.922, 34.3519, 5.60435, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 778.295, 928.128, 33.6749, 4.94069, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 778.103, 930.872, 33.8562, 1.64594, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 775.489, 930.285, 33.979, 3.9825, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 772.848, 931.043, 34.0327, 3.7783, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 770.886, 933.205, 34.4274, 1.93654, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 772.869, 952.751, 34.0014, 4.94069, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 773.077, 955.587, 33.6546, 0.723102, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 770.557, 954.68, 34.0027, 3.84899, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 768.105, 956.255, 34.0631, 3.25601, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 767.172, 959.141, 34.4286, 1.95225, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 771.082, 983.468, 33.8118, 5.41976, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 771.146, 986.351, 33.6331, 0.459976, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 768.517, 986.169, 33.6891, 3.04786, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 770.193, 990.207, 34.0563, 0.577786, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 767.767, 991.59, 34.3612, 2.58055, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 792.789, 944.018, 34.0347, 2.39597, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 795.484, 943.727, 34.033, 1.31997, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 793.352, 941.063, 34.0012, 4.33983, 300, 0, 0, 247, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 798.978, 941.607, 34.097, 5.10166, 300, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45270, 0, 1, 1, 0, 0, 800.776, 943.587, 34.3025, 1.00188, 300, 0, 0, 247, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='44916');
INSERT INTO `creature` VALUES (null, 44916, 0, 1, 1, 0, 0, 1068.75, 1601.3, 28.0847, 2.28638, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44916, 0, 1, 1, 0, 0, 494.972, 1524.42, 130.132, 5.21549, 300, 0, 0, 1640, 0, 0, 0, 0, 0);

-- Quest 27082 Playing Dirty CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27088' WHERE (`Id`='27082');
UPDATE `quest_template` SET `PrevQuestId`='27082' WHERE (`Id`='27088');

-- Quest 27082 Playing Dirty
DELETE FROM `creature_loot_template` WHERE (`item`='60793');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1797', '60793', '-50');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1766', '60793', '-50');

-- Quest 27095 Skitterweb Menace CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27094' WHERE (`Id`='27095');
UPDATE `quest_template` SET `PrevQuestId`='27095' WHERE (`Id`='27094');

-- Quest 27226 Hair of the Dog
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45196');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='45196');
INSERT INTO `smart_scripts` VALUES (45196, 0, 1, 2, 8, 0, 100, 0, 84514, 0, 0, 0, 33, 45196, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'credit quest');
INSERT INTO `smart_scripts` VALUES (45196, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');
DELETE FROM `creature` WHERE (`id`='44917m');
INSERT INTO `creature` VALUES (null, 44917, 0, 1, 1, 0, 0, 1070.59, 1602.1, 28.0824, 1.97222, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44917, 0, 1, 1, 0, 0, 495.445, 1533.87, 129.612, 5.40437, 300, 0, 0, 1500, 0, 0, 0, 0, 0);

-- Quest 27474 Breaking the Barrier CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27476' WHERE (`Id`='27474');
UPDATE `quest_template` SET `NextQuestIdChain`='27478' WHERE (`Id`='27476');
UPDATE `quest_template` SET `NextQuestIdChain`='27484' WHERE (`Id`='27478');
UPDATE `quest_template` SET `NextQuestIdChain`='27512' WHERE (`Id`='27484');
UPDATE `quest_template` SET `NextQuestIdChain`='27513' WHERE (`Id`='27512');
UPDATE `quest_template` SET `NextQuestIdChain`='27518' WHERE (`Id`='27513');
UPDATE `quest_template` SET `PrevQuestId`='27474' WHERE (`Id`='27476');
UPDATE `quest_template` SET `PrevQuestId`='27476' WHERE (`Id`='27478');
UPDATE `quest_template` SET `PrevQuestId`='27478' WHERE (`Id`='27484');
UPDATE `quest_template` SET `PrevQuestId`='27484' WHERE (`Id`='27512');
UPDATE `quest_template` SET `PrevQuestId`='27512' WHERE (`Id`='27513');
UPDATE `quest_template` SET `PrevQuestId`='27513' WHERE (`Id`='27518');

-- Quest 27474 Breaking the Barrier
DELETE FROM `creature` WHERE (`id`='45617');
INSERT INTO `creature` VALUES (null, 45617, 0, 1, 1, 0, 0, -152.207, 1270.81, 51.5022, 3.03519, 300, 0, 0, 16800, 0, 0, 0, 0, 0);

-- Quest 27542 Taking the Battlefront
UPDATE `quest_template` SET `Method`='2' WHERE (`Id`='27542');

-- Quest 27478 Relios the Relic Keeper
UPDATE `creature_template` SET `lootid`='45734' WHERE (`entry`='45734');
DELETE FROM `creature_loot_template` WHERE (`entry`='45734') AND (`item`='61312');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45734', '61312', '-100');

-- Quest 27513 Transdimensional Warfare: Chapter II
DELETE FROM `creature` WHERE (`id`='3577');
INSERT INTO `creature` VALUES (null, 3577, 0, 1, 1, 0, 67, -151.246, 823.844, 64.1192, 5.35811, 300, 0, 0, 328, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='3578');
INSERT INTO `creature` VALUES (null, 3578, 0, 1, 1, 0, 53, -94.6722, 826.08, 63.926, 4.28604, 300, 0, 0, 328, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='1888');
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, 88.629, 744.229, 61.7521, 3.3752, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3569, 0, 62.1989, 767.244, 63.8601, 4.17134, 275, 0, 0, 354, 1326, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, 51.7442, 687.14, 63.8624, 2.15615, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, -1.1166, 754.995, 63.7725, 6.00936, 275, 0, 0, 354, 1326, 0, 2, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, -40.2474, 803.025, 63.3324, 0.949752, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, 20.9485, 715.504, 63.7214, 0.862618, 275, 5, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, 89.7352, 712.978, 60.4226, 4.74901, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, 12.3213, 665.348, 67.72, 0.123386, 275, 5, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, 43.9987, 742.928, 63.7948, 3.69211, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, 5.50446, 789.691, 64.0431, 5.56716, 275, 5, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, 35.8256, 784.977, 64.9515, 1.21437, 275, 0, 0, 354, 1326, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, 68.6201, 772.337, 64.0461, 5.7731, 275, 3, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, -115.605, 736.628, 64.6895, 4.17457, 275, 5, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, -65.625, 734.375, 66.8521, 4.22428, 275, 5, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, -445.433, 818.329, 97.4096, 4.64305, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, -474.193, 809.023, 95.7396, 1.35425, 275, 0, 0, 354, 1326, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, -589.36, 976.123, 89.6548, 3.18497, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3569, 0, -495.4, 777.425, 91.5306, 3.15074, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3568, 0, -472.702, 793.781, 94.9056, 0.930005, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, -388.491, 819.671, 97.9254, 3.47256, 275, 5, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, -537.096, 1023.58, 98.2979, 4.86718, 275, 3, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, -457.812, 879.688, 99.0823, 1.66156, 275, 5, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3568, 0, -566.525, 937.234, 89.5777, 2.23759, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3569, 0, -566.052, 880.626, 88.9518, 2.19701, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, -490.764, 849.439, 94.6555, 4.15018, 275, 5, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3566, 0, -481.483, 825.465, 95.7536, 0.314159, 275, 0, 0, 354, 1326, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3569, 0, -497.404, 801.064, 92.4144, 4.1711, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, -494.516, 832.085, 93.8851, 2.97388, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3569, 0, -575.6, 840.105, 90.9519, 4.73389, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3569, 0, -462.53, 927.437, 96.266, 3.57933, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3569, 0, -469.09, 953.318, 91.9062, 4.05506, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3569, 0, -518.141, 1099.53, 81.3403, 5.62445, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, -506.316, 1023.98, 93.78, 1.40597, 275, 0, 0, 354, 1326, 0, 2, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, -415.372, 829.486, 94.8417, 3.5738, 275, 10, 0, 354, 1326, 0, 1, 0, 0);
INSERT INTO `creature` VALUES (null, 1888, 0, 1, 1, 3567, 0, -427.931, 911.598, 107.515, 3.9194, 275, 3, 0, 354, 1326, 0, 1, 0, 0);

DELETE FROM `creature` WHERE (`id`='1914');
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -153.612, 923.439, 65.5704, 1.2232, 300, 0, 0, 307, 856, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -98.1285, 894.368, 64.6994, 2.81755, 300, 0, 0, 285, 790, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -159.674, 888.904, 63.0132, 0.249301, 300, 0, 0, 285, 790, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -59.5096, 877.752, 66.9252, 2.82934, 300, 0, 0, 307, 856, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -51.5115, 872.148, 65.7852, 3.59903, 300, 0, 0, 307, 856, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -114.982, 872.842, 62.5868, 1.49809, 300, 0, 0, 285, 790, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -85.6049, 864.188, 64.3419, 3.16706, 300, 0, 0, 307, 856, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -63.679, 853.998, 65.1173, 4.43864, 300, 0, 0, 307, 856, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -47.26, 839.044, 65.4008, 2.76968, 300, 0, 0, 285, 790, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -114.63, 830.527, 63.7662, 2.84849, 300, 0, 0, 307, 856, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -115.187, 818.851, 63.9312, 2.67178, 300, 0, 0, 285, 790, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -74.9602, 810.342, 64.8911, 3.56321, 300, 0, 0, 307, 856, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1914, 0, 1, 1, 0, 10, -108.547, 786.496, 66.0234, 3.2869, 300, 0, 0, 285, 790, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='1913');
INSERT INTO `creature` VALUES (null, 1913, 0, 1, 1, 0, 1090, -86.3143, 879.97, 65.2683, 2.87566, 300, 0, 0, 386, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1913, 0, 1, 1, 0, 1090, -131.485, 845.062, 62.0512, 1.71326, 300, 0, 0, 356, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1913, 0, 1, 1, 0, 1090, -159.464, 794.662, 64.7645, 2.59684, 300, 0, 0, 386, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1913, 0, 1, 1, 0, 1090, -129.596, 822.29, 63.5818, 1.75257, 300, 0, 0, 386, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='1889');
INSERT INTO `creature` VALUES (null, 1889, 0, 1, 1, 0, 10, -85.7864, 1013.7, 65.9046, 2.35143, 300, 0, 0, 608, 1202, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1889, 0, 1, 1, 0, 10, -69.1196, 996.536, 67.3363, 3.06222, 300, 0, 0, 569, 1118, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1889, 0, 1, 1, 0, 10, -86.7137, 979.974, 68.344, 3.13683, 300, 0, 0, 569, 1118, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1889, 0, 1, 1, 0, 10, -69.3222, 964.505, 67.3842, 0.537162, 300, 0, 0, 608, 1202, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1889, 0, 1, 1, 0, 10, -96.2752, 936.847, 67.866, 3.92221, 300, 0, 0, 608, 1202, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 1889, 0, 1, 1, 0, 10, -81.1483, 928.517, 68.7216, 4.88433, 300, 0, 0, 569, 1118, 0, 0, 0, 0);

-- Quest 27518 Transdimensional Warfare: Chapter III
DELETE FROM `creature` WHERE (`id`='2120');
INSERT INTO `creature` VALUES (null, 2120, 0, 1, 1, 0, 301, -135.502, 1073.35, 65.8461, 1.59042, 300, 0, 0, 2315, 1357, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='2120');
DELETE FROM smart_scripts WHERE entryorguid IN (2120);
INSERT INTO `smart_scripts` VALUES (2120, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 86, 85376, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0,0,0, 'credit on death');

-- Quest 27601 Cities in Dust
DELETE FROM `creature` WHERE (`id`='44610');
INSERT INTO `creature` VALUES (null, 44610, 0, 1, 1, 0, 0, -708.525, 1541.41, 28.0153, 0.854055, 300, 0, 0, 9030, 6520, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='44609');
INSERT INTO `creature` VALUES (null, 44609, 0, 1, 1, 0, 0, -713.935, 1547.39, 28.0091, 6.26938, 300, 0, 0, 9030, 6520, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='44951');
INSERT INTO `creature` VALUES (null, 44951, 0, 1, 1, 0, 0, -708.769, 1554.51, 28.0182, 5.06379, 300, 0, 0, 1260, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='46124');
INSERT INTO `creature` VALUES (null, 46124, 0, 1, 1, 0, 0, -707.806, 1547.49, 28.007, 0.0019083, 300, 0, 0, 16800, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44610');
DELETE FROM smart_scripts WHERE entryorguid IN (44610);
INSERT INTO `smart_scripts` VALUES (44610, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 46019, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0,0,0, 'credit');

-- Quest 27475 Unyielding Servitors
DELETE FROM `creature` WHERE (`id`='45610');
INSERT INTO `creature` VALUES (null, 45610, 0, 1, 1, 0, 0, -197.085, 1264.75, 45.0998, 1.48522, 300, 0, 0, 1260, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `lootid`='45711' WHERE (`entry`='45711');
DELETE FROM `creature_loot_template` WHERE (`entry`='45711') AND (`item`='61307');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45711', '61307', '-45');

UPDATE `creature_template` SET `lootid`='47009' WHERE (`entry`='47009');
DELETE FROM `creature_loot_template` WHERE (`entry`='47009') AND (`item`='61307');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('47009', '61307', '-25');

DELETE FROM `creature` WHERE (`id`='45626');
INSERT INTO `creature` VALUES (null, 45626, 0, 1, 1, 0, 0, -148.174, 1270.46, 51.9224, 2.9606, 300, 0, 0, 1260, 0, 0, 0, 0, 0);

-- Quest 27547 Of No Consequence
DELETE FROM `creature` WHERE (`id`='45880');
INSERT INTO `creature` VALUES (null, 45880, 0, 1, 1, 0, 0, -156.978, 1272.8, 50.8143, 5.94697, 300, 0, 0, 252, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45880, 0, 1, 1, 0, 0, -352.095, 1556.39, 24.1955, 3.09069, 300, 0, 0, 252, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='45910');
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -384.535, 1618.32, 20.6459, 6.27249, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -356.327, 1610.07, 18.6579, 3.5982, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -404.22, 1609.23, 19.9107, 5.64417, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -422.74, 1599.96, 18.6388, 5.34572, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -314.384, 1583.65, 20.5727, 2.56937, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -342.911, 1578.14, 18.9491, 0.847569, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -404.183, 1577.48, 18.658, 0.176053, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -433.805, 1566.71, 20.4207, 3.41584, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -355.744, 1533.06, 25.4461, 4.16197, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -403.675, 1510.49, 18.6581, 0.79654, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -389.869, 1502.68, 20.7173, 1.75133, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -333.488, 1491.36, 19.6202, 2.94906, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -350.77, 1489.73, 19.3322, 2.56421, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -387.445, 1490.54, 21.7232, 3.16113, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -388.723, 1451.52, 25.6838, 4.3099, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45910, 0, 1, 1, 0, 0, -402.168, 1451.36, 25.6838, 2.83335, 300, 0, 0, 84, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='3' WHERE (`entry`='45910');
UPDATE `creature_template` SET `gossip_menu_id`='45910' WHERE (`entry`='45910');

delete from gossip_menu_option where menu_id = 45910;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(45910,0,"I am here to rescue you, quickly RUNNNN now! ",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (45910) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(45910,0,1,2,62,0,100,0,45910,0,0,0,33,45910,1,0,0,0,0,21,2,0,0,0,0,0,0,"Credit"),
(45910,0,2,3,61,0,100,0,45910,0,0,0,41,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Despawn"),
(45910,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip");

DELETE FROM `conditions` WHERE (`ConditionValue1`='27547');
INSERT INTO `conditions` VALUES (15, 45910, 0, 0, 0, 9, 0, 27547, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active');

-- Quest 27548 Lessons in Fear CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27577' WHERE (`Id`='27548');
UPDATE `quest_template` SET `PrevQuestId`='27548' WHERE (`Id`='27577');

-- Quest 27548 Lessons in Fear 
DELETE FROM `creature` WHERE (`id`='45883');
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -357.742, 1473.78, 20.6821, 4.273, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -374.061, 1490.45, 18.6702, 6.21292, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -366.698, 1510.37, 18.6587, 1.92465, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -371.734, 1512.45, 18.6587, 0.318509, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -388.061, 1519.08, 18.6587, 1.76131, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -390.231, 1522.65, 18.6587, 5.3663, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -404.383, 1522.89, 18.6587, 5.53516, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -423.363, 1531.88, 18.6587, 3.39102, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -452.456, 1554.4, 18.8467, 6.24522, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -453.19, 1537.11, 18.6503, 6.09688, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -420.047, 1561.95, 18.6579, 0.198534, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -417.453, 1565.2, 18.6579, 4.56754, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -406.949, 1547.67, 18.658, 5.30189, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -372.715, 1553.3, 24.2916, 3.22452, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -379.595, 1583.15, 18.6591, 2.00468, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -396.767, 1591.27, 18.6584, 0.508498, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -388.554, 1604.64, 18.6584, 0.257164, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -365.272, 1606.57, 18.6584, 4.10955, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -368.448, 1603.94, 18.6584, 0.406386, 300, 0, 0, 63, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45883, 0, 1, 1, 0, 0, -363.203, 1581.82, 18.7089, 3.85633, 300, 0, 0, 63, 0, 0, 0, 0, 0);

update creature_template set faction_a = 14, faction_h = 14 where entry = 45883;

DELETE FROM `creature` WHERE (`id`='45879');
INSERT INTO `creature` VALUES (null, 45879, 0, 1, 1, 0, 0, -157.3, 1268.42, 51.319, 0.498275, 300, 0, 0, 252, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45879, 0, 1, 1, 0, 0, -351.596, 1559.49, 24.1974, 3.81244, 300, 0, 0, 252, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45879, 0, 1, 1, 0, 0, -548.099, 1728.61, 18.0458, 4.00464, 300, 0, 0, 252, 0, 0, 0, 0, 0);

-- Quest 27577 7th Legion Battle Plans
DELETE FROM `creature` WHERE (`id`='45995');
INSERT INTO `creature` VALUES (null, 45995, 0, 1, 1, 0, 0, -671.081, 1714.28, 30.661, 2.64713, 300, 0, 0, 420, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45995, 0, 1, 1, 0, 0, -639.137, 1657.39, 30.3162, 6.07335, 300, 0, 0, 420, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45995, 0, 1, 1, 0, 0, -587.958, 1732.78, 24.0857, 5.06804, 300, 0, 0, 420, 0, 0, 0, 0, 0);

DELETE FROM `creature` WHERE (`id`='45855');
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -683.877, 1722.78, 30.8107, 5.59993, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -684.181, 1710.67, 30.7339, 0.785434, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -632.881, 1645.72, 30.9573, 3.83147, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -642.464, 1640.08, 31.418, 0.367861, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -675.665, 1727.23, 31.0125, 1.49173, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -605.62, 1762.36, 30.7296, 0.0151822, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -603.718, 1772.35, 30.6084, 0.384328, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -569.913, 1765.19, 32.5987, 0.270442, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -601.373, 1696.03, 22.296, 0.0269425, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -577.116, 1679.7, 14.5356, 5.71323, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -564.681, 1662.77, 13.6666, 1.637, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -549.785, 1657.91, 13.6648, 1.04403, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -536.027, 1670.84, 15.6511, 4.41341, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -532.611, 1709.23, 16.8282, 1.08332, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -567.363, 1717.48, 16.5419, 2.7414, 300, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 45855, 0, 1, 1, 0, 0, -643.859, 1734.9, 31.339, 3.37364, 300, 0, 0, 126, 0, 0, 0, 0, 0);

update creature_template set faction_a = 14, faction_h = 14 where entry = 45855;
update creature_template set faction_a = 14, faction_h = 14 where entry = 45995;

UPDATE `creature_template` SET `lootid`='45855' WHERE (`entry`='45855');
DELETE FROM `creature_loot_template` WHERE (`entry`='45855') AND (`item`='61510');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45855', '61510', '-30');

UPDATE `creature_template` SET `lootid`='45995' WHERE (`entry`='45995');
DELETE FROM `creature_loot_template` WHERE (`entry`='45995') AND (`item`='61510');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45995', '61510', '-10');

-- Quest 27472 Rise, Godfrey
DELETE FROM `creature` WHERE (`id`='45525');
INSERT INTO `creature` VALUES (null, 45525, 0, 1, 1, 0, 0, -181.609, 1273.94, 47.1786, 3.00722, 300, 0, 0, 16800, 0, 0, 0, 0, 0);
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='27472');

-- Quest 27510 A Wolf in Bear's Clothing
DELETE FROM `creature` WHERE (`id`='45631');
INSERT INTO `creature` VALUES (null, 45631, 0, 1, 1, 0, 0, -210.544, 1285.19, 42.8894, 5.74824, 300, 0, 0, 210, 0, 0, 0, 0, 0);