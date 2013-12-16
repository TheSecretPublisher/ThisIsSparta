-- Missing Spawn
DELETE FROM `creature` WHERE (`id`='35091');
INSERT INTO `creature` VALUES (null, 35091, 1, 1, 1, 29602, 35091, 2945.52, -4980.34, 126.03, 2.53073, 600, 0, 0, 356, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='35085');
INSERT INTO `creature` VALUES (null, 35085, 1, 1, 1, 29598, 35085, 2936.11, -4986.15, 125.855, 2.30383, 600, 0, 0, 328, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='36752');
INSERT INTO `creature` VALUES (null, 36752, 1, 1, 1, 30433, 36752, 2923.55, -5000.98, 126.595, 1.3439, 600, 0, 0, 328, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='35088');
INSERT INTO `creature` VALUES (null, 35088, 1, 1, 1, 29601, 35088, 2922.92, -5004.75, 125.781, 4.39823, 600, 0, 0, 300, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='35087');
INSERT INTO `creature` VALUES (null, 35087, 1, 1, 1, 29600, 35087, 2922.03, -5009.6, 125.952, 2.00713, 600, 0, 0, 316, 326, 0, 0, 0, 0);

-- Quest 14202 Survey the Lakeshore CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14209' WHERE (`Id`='14202');
UPDATE `quest_template` SET `NextQuestIdChain`='14423' WHERE (`Id`='14209');
UPDATE `quest_template` SET `PrevQuestId`='14202' WHERE (`Id`='14209');
UPDATE `quest_template` SET `PrevQuestId`='14209' WHERE (`Id`='14423');

-- Quest 14424 Need More Science CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14308' WHERE (`Id`='14424');
UPDATE `quest_template` SET `NextQuestIdChain`='14310' WHERE (`Id`='14308');
UPDATE `quest_template` SET `PrevQuestId`='14424' WHERE (`Id`='14308');
UPDATE `quest_template` SET `PrevQuestId`='14308' WHERE (`Id`='14310');

-- Quest 14202 Survey the Lakeshore
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='67569');
INSERT INTO `spell_linked_spell` VALUES (67569, 62464, 0, 'spell area credit');
-- Survey North Mark
DELETE FROM `creature_template` WHERE (`entry`='341237');
INSERT INTO `creature_template` VALUES (341237, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Survey North Marker Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341237');
INSERT INTO `creature_template_addon` VALUES (341237, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `creature` WHERE (`id`='341237');
INSERT INTO `creature` VALUES (null, 341237, 1, 1, 1, 0, 0, 2749.38, -5286.7, 116.157, 3.36848, 120, 0, 0, 1, 0, 0, 0, 0, 0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`='341237');
INSERT INTO `smart_scripts` VALUES (341237, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 35487, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
-- Survey East Mark
DELETE FROM `creature_template` WHERE (`entry`='341238');
INSERT INTO `creature_template` VALUES (341238, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Survey East  Marker Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341238');
INSERT INTO `creature_template_addon` VALUES (341238, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `creature` WHERE (`id`='341238');
INSERT INTO `creature` VALUES (null, 341238, 1, 1, 1, 0, 0, 2637.16, -5433.62, 116.34, 1.36136, 120, 0, 0, 1, 0, 0, 0, 0, 0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`='341238');
INSERT INTO `smart_scripts` VALUES (341238, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 35489, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
-- Survey West Mark
DELETE FROM `creature_template` WHERE (`entry`='341239');
INSERT INTO `creature_template` VALUES (341239, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Survey West Marker Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341239');
INSERT INTO `creature_template_addon` VALUES (341239, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `creature` WHERE (`id`='341239');
INSERT INTO `creature` VALUES (null, 341239, 1, 1, 1, 0, 0, 2563.09, -5263.25, 112.208, 5.02655, 120, 0, 0, 1, 0, 0, 0, 0, 0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`='341239');
INSERT INTO `smart_scripts` VALUES (341239, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 35488, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');

-- Quest 14209 Gunk in the Trunk
DELETE FROM `creature` WHERE (`id`='35558');
INSERT INTO `creature` VALUES (null, 35558, 1, 1, 1, 0, 0, 2909.46, -5027.92, 126.935, 1.21167, 300, 0, 0, 50, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14', `lootid`='35558' WHERE (`entry`='35558');
DELETE FROM `creature_loot_template` WHERE (`entry`='35558') AND (`item`='48780');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('35558', '48780', '-100');

-- Quest 14423 Dozercism
DELETE FROM `creature` WHERE (`id`='35526');
INSERT INTO `creature` VALUES (null, 35526, 1, 1, 1, 30174, 35526, 2909.2, -5032.95, 126.99, 3.42085, 600, 0, 0, 459, 0, 0, 0, 0, 0);
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='68007');
INSERT INTO `spell_linked_spell` VALUES (68007, 85933, 0, 'spell area credit');
DELETE FROM `spell_scripts` WHERE (`datalong`='35526');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '35526');
DELETE FROM `conditions` WHERE (`SourceEntry`='68007');
INSERT INTO `conditions` VALUES (17, 0, 68007, 0, 0, 29, 0, 35526, 15, 0, 0, 0, 0, '', 'Spell can be used only near Dozercism');

-- Quest 14308 When Science Attacks
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36025');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='36025');
INSERT INTO `smart_scripts` VALUES (36025, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 36025, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'credit quest');
INSERT INTO `smart_scripts` VALUES (36025, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn fire');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36061');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='36061');
INSERT INTO `smart_scripts` VALUES (36061, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 36061, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'credit quest');
INSERT INTO `smart_scripts` VALUES (36061, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn goblin');
UPDATE `creature_template` SET `modelid1`='16946', `modelid2`='0' WHERE (`entry`='36025');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='68283');
INSERT INTO `spell_linked_spell` VALUES (68283, 62464, 0, 'spell area credit');
UPDATE `gameobject_template` SET `faction`='35' WHERE (`entry`='195676');
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='195676');

-- Quest 14310 Segmentation Fault: Core Dumped REMOVED
DELETE FROM `gameobject_questrelation` WHERE (`id`='195676') AND (`quest`='14310');

-- Quest 14442 My Favorite Subject CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14408' WHERE (`Id`='14442');
UPDATE `quest_template` SET `NextQuestIdChain`='14422' WHERE (`Id`='14408');
UPDATE `quest_template` SET `PrevQuestId`='14442' WHERE (`Id`='14408');
UPDATE `quest_template` SET `PrevQuestId`='14408' WHERE (`Id`='14422');

-- Quest 14408 Nine's Plan
DELETE FROM `creature` WHERE (`id`='36500');
INSERT INTO `creature` VALUES (null, 36500, 1, 1, 1, 30145, 36500, 2583.3, -5701.69, 110.488, 1.39626, 600, 0, 0, 328, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36472');
UPDATE `creature_template` SET `gossip_menu_id`='36472' WHERE (`entry`='36472');
delete from gossip_menu_option where menu_id = 36472;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(36472,0,"Ring the Buzzer",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (36472) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36472, 0, 1, 2, 62, 0, 100, 0, 36472, 0, 0, 0, 12, 36156, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 2578.67, -5907.49, 96.6743, 0.187, 'Spawn Mutant Goblin'),
(36472, 0, 2, 5, 62, 0, 100, 0, 36472, 0, 0, 0, 33, 52041, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'credit'),
(36472, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14', `lootid`='36156' WHERE (`entry`='36156');
DELETE FROM `creature_loot_template` WHERE (`entry`='36156') AND (`item`='49204');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36156', '49204', '-100');

-- Quest 14422 Raptor Raptor Rocket
DELETE FROM `spell_scripts` WHERE (`datalong`='36534');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '36534');
UPDATE `gameobject_template` SET `data10`='85933', `data12`='196486' WHERE (`entry`='196486');

-- Quest 14370 Mysterious Azsharite
UPDATE `gameobject_template` SET `faction`='35', `data7`='152620', `data8`='14370' WHERE (`entry`='152620');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='9819') AND (`item`='49207');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('9819', '49207', '-100');
UPDATE `gameobject_template` SET `faction`='35', `data7`='152631', `data8`='14370' WHERE (`entry`='152631');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='9676') AND (`item`='49207');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('9676', '49207', '-100');

-- Quest 14371 A Gigantic Snack
DELETE FROM `creature_loot_template` WHERE (`entry`='36304') AND (`item`='49208');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36304', '49208', '-85');
UPDATE `creature_template` SET `lootid`='36304' WHERE (`entry`='36304');

-- Quest 14383 The Terrible Tinkers of the Ruined Reaches
DELETE FROM `creature` WHERE (`id`='36385');
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30101, 36385, 2253.61, -5612.21, 9.27435, 0.876657, 600, 0, 0, 300, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30100, 36385, 2339.19, -5794.9, 105.043, 4.7964, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30100, 36385, 2410.81, -5540.62, 106.563, 3.29456, 600, 0, 0, 300, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30100, 36385, 2279.99, -5798.64, 11.0055, 2.38105, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30101, 36385, 2277.36, -5614.78, 18.0728, 3.42832, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30101, 36385, 2253.99, -5677.3, 0.383596, 3.99667, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30101, 36385, 2304.55, -5564.53, 29.7676, 0.069295, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30100, 36385, 2382.33, -5558.19, 89.2394, 1.51853, 600, 0, 0, 300, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30100, 36385, 2295.97, -5630.59, 31.9367, 5.5163, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30100, 36385, 2251.81, -5563.57, 21.4699, 1.68298, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30101, 36385, 2314.23, -5701.58, 66.7707, 4.73898, 600, 0, 0, 300, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36385, 1, 1, 1, 30100, 36385, 2217.08, -5580.03, 4.10026, 4.79261, 600, 0, 0, 273, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='36384');
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2312.77, -5699.92, 65.7734, 4.74461, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2219.02, -5577.75, 4.47526, 4.79269, 600, 0, 0, 300, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2280.06, -5801.64, 11.9739, 2.38081, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2268.76, -5584.6, 21.1152, 5.078, 600, 0, 0, 300, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2310.44, -5577.09, 30.0018, 4.4436, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2347.48, -5776.91, 102.793, 1.95228, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2256.43, -5674.13, 0.383649, 4.56681, 600, 0, 0, 300, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2396.91, -5520, 113.399, 5.06145, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2399.22, -5554.15, 100.379, 0.645772, 600, 0, 0, 300, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2244.76, -5619.24, 4.77448, 4.22506, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2380.84, -5559.55, 88.2394, 1.51508, 600, 0, 0, 273, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2303.9, -5635.73, 35.185, 1.38928, 600, 0, 0, 300, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2280.09, -5572.31, 21.4848, 2.27426, 600, 0, 0, 300, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36384, 1, 1, 1, 30099, 36384, 2350.88, -5800.85, 106.489, 0.349066, 600, 0, 0, 300, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='35', `faction_H`='14' WHERE (`entry`='36407');
DELETE FROM `creature` WHERE (`id`='36407');
INSERT INTO `creature` VALUES (null, 36407, 1, 1, 1, 30106, 36407, 2266.56, -5569.23, 21.2302, 5.20108, 600, 0, 0, 600, 0, 0, 0, 0, 0);

-- Quest 14267 Investigating the Sea Shrine CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14270' WHERE (`Id`='14267');
UPDATE `quest_template` SET `NextQuestIdChain`='14271' WHERE (`Id`='14270');
UPDATE `quest_template` SET `NextQuestIdChain`='14295' WHERE (`Id`='14271');
UPDATE `quest_template` SET `PrevQuestId`='14267' WHERE (`Id`='14270');
UPDATE `quest_template` SET `PrevQuestId`='14270' WHERE (`Id`='14271');
UPDATE `quest_template` SET `PrevQuestId`='14271' WHERE (`Id`='14295');

-- Quest 14377 Befriending Giants CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14385' WHERE (`Id`='14377');
UPDATE `quest_template` SET `NextQuestIdChain`='14388' WHERE (`Id`='14385');
UPDATE `quest_template` SET `PrevQuestId`='14377' WHERE (`Id`='14385');
UPDATE `quest_template` SET `PrevQuestId`='14385' WHERE (`Id`='14388');

-- Quest 14377 Befriending Giants
DELETE FROM `creature` WHERE (`id`='36297');
INSERT INTO `creature` VALUES (null, 36297, 1, 1, 1, 12813, 36297, 2604.24, -6005.88, 101.5, 6.07375, 600, 0, 0, 1452, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36297');
UPDATE `creature_template` SET `gossip_menu_id`='36297' WHERE (`entry`='36297');
DELETE FROM `conditions` WHERE (`ConditionValue1`='14377');
INSERT INTO `conditions` VALUES (15, 36297, 0, 0, 0, 9, 0, 14377, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='36297');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='36298');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='36299');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='36300');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='36301');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='36302');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='36303');
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag,action_menu_id) values
(36297,0,"I brought you something to eat.",1,1,36298),
(36298,0,"Do you know anything about azsharite?",1,1,36299),
(36299,0,"Those piles of blue-ish crystals we find on the gorund.",1,1,36300),
(36300,0,"So the giants have been dropping the azsharite? But where does it come from?",1,1,36301),
(36301,0,"It's ... your droppings!? And the goblins have been running around scooping it up?",1,1,36302),
(36302,0,"How often do you, uh, go?",1,1,36303),
(36303,0,"15 to 25 years? Assistant Greely isn't going to want to hear that!",1,1,'0');

DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36297, 0, 1, 2, 62, 0, 100, 0, 36297, 0, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(36297, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(36297, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),

(36297, 0, 4, 5, 62, 0, 100, 0, 36298, 0, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(36297, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(36297, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),

(36297, 0, 7, 8, 62, 0, 100, 0, 36299, 0, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(36297, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(36297, 0, 9, 10, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),

(36297, 0, 10, 11, 62, 0, 100, 0, 36300, 0, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(36297, 0, 11, 12, 61, 0, 100, 0, 0, 0, 0, 0, 1, 4, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(36297, 0, 12, 13, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),

(36297, 0, 13, 14, 62, 0, 100, 0, 36301, 0, 0, 0, 33, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(36297, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 1, 5, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(36297, 0, 15, 16, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),

(36297, 0, 16, 17, 62, 0, 100, 0, 36302, 0, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'gossip - emote eat'),
(36297, 0, 17, 18, 61, 0, 100, 0, 0, 0, 0, 0, 1, 6, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(36297, 0, 18, 19, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),

(36297, 0, 19, 20, 62, 0, 100, 0, 36303, 0, 0, 0, 33, 36333, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'gossip - credit'),
(36297, 0, 20, 21, 61, 0, 100, 0, 0, 0, 0, 0, 1, 7, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(36297, 0, 21, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

DELETE FROM `creature_text` WHERE (`entry`='36297') AND (`groupid`='1');
DELETE FROM `creature_text` WHERE (`entry`='36297') AND (`groupid`='2');
DELETE FROM `creature_text` WHERE (`entry`='36297') AND (`groupid`='3');
DELETE FROM `creature_text` WHERE (`entry`='36297') AND (`groupid`='4');
DELETE FROM `creature_text` WHERE (`entry`='36297') AND (`groupid`='5');
DELETE FROM `creature_text` WHERE (`entry`='36297') AND (`groupid`='6');
DELETE FROM `creature_text` WHERE (`entry`='36297') AND (`groupid`='7');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('36297','1','0','Ha - harrrum! Food? We don t eat squishlings, friend, not unless they aggravate us. We eat rocks and stones and earth. Though I sometimes find the crunch of bones makes a delightful seasoning.  ','12','0','100','0','0','0','Life party'),
('36297','2','0','Azsharite? You soft ones come up with new names for everything. What is this "azsharite?" ','12','0','100','0','0','0','Life party'),
('36297','3','0','Oh - hah! Harrooo - Ha harum! Little friend, I am sorry. I suppose my kind does not pick up after ourselves as you do. ','12','0','100','0','0','0','Life party'),
('36297','4','0','It comes from - harum - what is your word for it? Harrrm. Let us say that my kind does not have bathrooms. Do you understand? ','12','0','100','0','0','0','Life party'),
('36297','5','0','It would seem so. You and your friends are welcome to as much as you can find. I suppose it is very potent. We dont need to go that often. ','12','0','100','0','0','0','Life party'),
('36297','6','0','We don t live as quickly as you do, my mushy friend. A healthy giant eats three square meals a decade, although I am known to indulge in a snack every couple of years. We ll go to the bathroom every 15 to 25 years... barring any tummy trouble.  ','12','0','100','0','0','0','Life party'),
('36297','7','0','Haaarrum! I have never had my personal habits scrutinized so. Your kind never ceases to surprise me. Farewell, friend, and good luck with ... whatever it is you are on about.   ','12','0','100','0','0','0','Life party');

-- Quest 14385 Azsharite Experiment Number One
DELETE FROM `gameobject` WHERE (`id`='196462');
INSERT INTO `gameobject` VALUES (null, 196462, 1, 1, 1, 2264.47, -5572.77, 35.1225, 1.02974, 0, 0, 0, 1, 180, 100, 1);
DELETE FROM `gameobject_template` WHERE (`entry`='196462');
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `flags`, `size`, `questItem1`, `data0`, `data1`, `data2`, `data6`, `data7`, `data8`, `data14`) VALUES ('196462', '3', '9118', 'Giant-Sized Laxative', 'Retrieving', '0', '1.4', '49230', '93', '196462', '2', '0', '196462', '14385', '23645');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='196462') AND (`item`='49230');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('196462', '49230', '-100');
DELETE FROM `conditions` WHERE (`ConditionValue1`='14385');
DELETE FROM `conditions` WHERE (`ConditionValue1`='49230');
INSERT INTO `conditions` VALUES (15, 36297, 1, 0, 0, 9, 0, 14385, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
INSERT INTO `conditions` VALUES (15, 36297, 1, 0, 0, 2, 0, 49230, 1, 0, 0, 0, 0, '', 'Gossip is showed only when quest item is present ');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='36297') AND (`id`='1');
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag,action_menu_id) values
(36297,1,"Here, eat this! It is a special chocolate rock.",1,1,0);

DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  event_param1 = 36297;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 23;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 24;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36297, 0, 22, 23, 62, 0, 100, 0, 36297, 1, 0, 0, 33, 36420, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'gossip - credit'),
(36297, 0, 23, 24, 61, 0, 100, 0, 0, 0, 0, 0, 1, 8, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(36297, 0, 24, 25, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip");

DELETE FROM `creature_text` WHERE (`entry`='36297') AND (`groupid`='8');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('36297','8','0','I suspect your little green friends are putting you up to no good. Please explain to them that we giants are not to be toyed with.','12','0','100','0','0','0','Life party');

-- Quest 14388 Azsharite Experiment Number Two
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='36437');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('36437', '80804', '1');
UPDATE `creature_template` SET `npcflag`='16777216', `spell1`='68728' WHERE (`entry`='36437');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36077');
UPDATE `creature_template` SET `gossip_menu_id`='36077' WHERE (`entry`='36077');
delete from gossip_menu_option where menu_id = 36077;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(36077,0,"I'm ready. Shrink me!",1,1);
DELETE FROM `conditions` WHERE (`ConditionValue1`='14388');
INSERT INTO `conditions` VALUES (15, 36077, 0, 0, 0, 9, 0, 14388, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
DELETE FROM smart_scripts WHERE entryorguid IN (36077) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36077, 0, 1, 0, 62, 0, 100, 0, 36077, 0, 0, 0, 75, 58479, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'cast spell in order to reduce player size'),
(36077, 0, 2, 0, 62, 0, 100, 0, 36077, 0, 0, 0, 75, 16595, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'cast spell in order to reduce player size'),
(36077, 0, 3, 0, 62, 0, 100, 0, 36077, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Close gossip");
DELETE FROM `conditions` WHERE (`ConditionValue1`='14385');
INSERT INTO `conditions` VALUES (15, 36297, 2, 0, 0, 9, 0, 14388, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='36297') AND (`id`='2');
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag,action_menu_id) values
(36297,2,"SQUEAK!!",1,1,0);

DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  event_param1 = 36297;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 26;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 27;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 28;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 29;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 30;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 31;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 32;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 33;
DELETE FROM smart_scripts WHERE entryorguid IN (36297) AND  id = 34;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36297, 0, 27, 0, 62, 0, 100, 0, 36297, 2, 0, 0, 1, 9, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Creature talk"),
(36297, 0, 28, 0, 62, 0, 100, 0, 36297, 2, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Close gossip"),
(36297, 0, 29, 0, 62, 0, 100, 0, 36297, 2, 0, 0, 2, 189, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,"Change faction in order to cast spell VS player"),
(36297, 0, 30, 0, 62, 0, 100, 0, 36297, 2, 0, 0, 11, 78696, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0,"Cast scripted spell"),
(36297, 0, 31, 0, 62, 0, 100, 0, 36297, 2, 0, 0, 11, 62464, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0,"Cast bunny spell in order to hit the rat"),
(36297, 0, 32, 0, 62, 0, 100, 0, 36297, 2, 0, 0, 28, 16595, 32, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0,"remove first aura small size"),
(36297, 0, 33, 0, 62, 0, 100, 0, 36297, 2, 0, 0, 28, 58479, 32, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0,"remove second aura small size");

DELETE FROM `spell_scripts` WHERE (`datalong`='80835');
DELETE FROM `spell_scripts` WHERE (`datalong`='36138');
DELETE FROM `spell_scripts` WHERE (`datalong`='68747');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `delay`) VALUES ('78696', '15', '80835', '1' ); -- Stomp spell
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `delay`) VALUES ('78696', '15', '36138', '4'); -- Stun spell
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `delay`) VALUES ('78696', '15', '68747', '3'); -- Credit spell

DELETE FROM `creature_text` WHERE (`entry`='36297') AND (`groupid`='9');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('36297','9','0','EeeEEEEEEKK! Oh, $n, it was just you. Please don t scare me like that.','12','0','100','0','0','0','Life party');
UPDATE `creature_template` SET `unit_flags`='32836' WHERE (`entry`='36297');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36437'); -- Rat AI
DELETE FROM `smart_scripts` WHERE (`entryorguid`='36437');
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36437, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Force rat death');

-- Quest 24436 Halo Drops
DELETE FROM `creature` WHERE (`id`='36921');
INSERT INTO `creature` VALUES (null, 36921, 1, 1, 1, 30434, 36921, 3397.98, -5655.15, 7.33072, 0.942478, 600, 0, 0, 328, 0, 0, 0, 0, 0);
DELETE FROM `conditions` WHERE (`SourceEntry`='69624');
INSERT INTO `conditions` VALUES (17, 0, 69624, 0, 0, 29, 0, 36922, 3, 0, 0, 0, 0, '', 'Spell can be used only near Wounded soldier');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='69624');
INSERT INTO `spell_linked_spell` VALUES (69624, 62464, 0, 'spell trigger for AI mob');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36922');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='36922');
INSERT INTO `smart_scripts` VALUES (36922, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 36922, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'credit quest');
INSERT INTO `smart_scripts` VALUES (36922, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn corpe');
-- Fix Bunny other quest was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='36932');

-- Quest 24448 Field Promotion
DELETE FROM `creature` WHERE (`id`='36745');
INSERT INTO `creature` VALUES (null, 36745, 1, 1, 1, 0, 0, 3732.75, -5269.29, 83.6843, 4.39319, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 24437 First Come, First Served
-- Credit 1
DELETE FROM `creature_template` WHERE (`entry`='341240');
INSERT INTO `creature_template` VALUES (341240, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Southern Pagoda Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341240');
INSERT INTO `creature_template_addon` VALUES (341240, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `creature` WHERE (`id`='341240');
INSERT INTO `creature` VALUES (null, 341240, 1, 1, 1, 0, 0, 3177.69, -5791.45, 3.43499, 5.01365, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='69648');
INSERT INTO `spell_linked_spell` VALUES (69648, 58178, 0, 'spell trigger for AI mob');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='341240');
INSERT INTO `smart_scripts` VALUES (341240, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 33, 36953, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
-- Credit 2
DELETE FROM `creature_template` WHERE (`entry`='341241');
INSERT INTO `creature_template` VALUES (341241, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Big ol Tower Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341241');
INSERT INTO `creature_template_addon` VALUES (341241, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `creature` WHERE (`id`='341241');
INSERT INTO `creature` VALUES (null, 341241, 1, 1, 1, 0, 0, 3784.28, -5777.05, 4.64905, 2.17836, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='69648');
INSERT INTO `spell_linked_spell` VALUES (69648, 58178, 0, 'spell trigger for AI mob');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='341241');
INSERT INTO `smart_scripts` VALUES (341241, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 33, 36952, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
-- Credit 3
DELETE FROM `creature_template` WHERE (`entry`='341242');
INSERT INTO `creature_template` VALUES (341242, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Northern Vista Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='341242');
INSERT INTO `creature_template_addon` VALUES (341242, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `creature` WHERE (`id`='341242');
INSERT INTO `creature` VALUES (null, 341242, 1, 1, 1, 0, 0, 3963.99, -5879.44, 7.90421, 2.59464, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='69648');
INSERT INTO `spell_linked_spell` VALUES (69648, 58178, 0, 'spell trigger for AI mob');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='341242');
INSERT INTO `smart_scripts` VALUES (341242, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 33, 36951, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
-- Fix Bunny other quest was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='36951');
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='36952');
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='36953');

-- Quest 14478 Operation Fishgut CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24455' WHERE (`Id`='14478');
UPDATE `quest_template` SET `NextQuestIdChain`='14479' WHERE (`Id`='24455');
UPDATE `quest_template` SET `NextQuestIdChain`='24435' WHERE (`Id`='14479');
UPDATE `quest_template` SET `PrevQuestId`='14478' WHERE (`Id`='24455');
UPDATE `quest_template` SET `PrevQuestId`='24455' WHERE (`Id`='14479');
UPDATE `quest_template` SET `PrevQuestId`='14479' WHERE (`Id`='24435');

-- Quest 14478 Operation Fishgut 
DELETE FROM `gameobject_template` WHERE (`entry`='201578');
INSERT INTO `gameobject_template` VALUES (201578, 2, 15, 'Wrenchmen Recruitment Poster', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 527, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `gameobject` WHERE (`id`='201578');
INSERT INTO `gameobject` VALUES (null, 201578, 1, 1, 1, 3531.69, -6254.26, 8.98862, 3.11625, 0, 0, 0.99992, 0.0126712, 300, 0, 1);

-- Quest 24452 Profitability Scouting CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24453' WHERE (`Id`='24452');
UPDATE `quest_template` SET `PrevQuestId`='24452' WHERE (`Id`='24453');

-- Quest 24452 Profitability Scouting
UPDATE quest_template SET requirednpcorgo1 = 36854, flags = 0, requirednpcorgocount1 = 1 WHERE id = 24452;

delete FROM creature WHERE id = 36854;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('36854','1','1','1','0','0','3543.5','-5137.31','87.8069','4.93116','300','0','0','42','0','0','0','0','0');

UPDATE creature_template SET ainame = "SmartAI", scriptname = '' WHERE entry = 36854;
DELETE FROM smart_scripts WHERE entryorguid IN (36854) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36854,0,0,0,10,0,100,0,1,10,1000,1200,33,36854,0,0,0,0,0,18,20,0,0,0,0,0,0,"Credit arkkoroc");

-- Quest 24452 Profitability Scouting
UPDATE creature_template SET npcflag = 16777216, scriptname = '', ainame = "SmartAI" WHERE entry = 36756;

DELETE FROM npc_spellclick_spells WHERE npc_entry = 36756;
INSERT IGNORE INTO npc_spellclick_spells (npc_entry,spell_id,cast_flags) VALUES 
(36756,69261,2),(36756,69262,1);

DELETE FROM smart_scripts WHERE entryorguid IN (36756) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36756,0,1,0,8,0,100,1,69262,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn");

-- Quest 14470 Military breakthrough
DELETE FROM `creature_loot_template` WHERE (`entry`='8408') AND (`item`='49700');
INSERT INTO creature_loot_template (entry,item,chanceorquestchance,mincountorref,maxcount) values
(8408,49700,-100,1,1);

-- Quest 14472 In The Face!
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='36868');

-- Quest 14486 Handling the goods
DELETE FROM gameobject WHERE id = 199329;
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('199329','1','1','1','3545.3','-5307.38','134.253','-1.25664','0','0','0','1','180','100','1'),
('199329','1','1','1','3653.39','-5367.19','111.546','2.1293','0','0','0','1','180','100','1'),
('199329','1','1','1','3533.04','-5386.47','105.882','1.20428','0','0','0','1','180','100','1'),
('199329','1','1','1','3472.39','-5332.72','108.826','2.77507','0','0','0','1','180','100','1'),
('199329','0','1','1','-6525.7','4816.9','-606.311','4.51149','0','0','0.774451','-0.632633','300','0','1'),
('199329','0','1','1','-6580.94','4781.49','-594.513','3.16061','0','0','0.999955','-0.00950636','300','0','1'),
('199329','0','1','1','-6805.21','4784.04','-603.901','2.70664','0','0','0.976445','0.215766','300','0','1'),
('199329','0','1','1','-6965.89','4770.9','-606.31','0.257769','0','0','0.128528','0.991706','300','0','1'),
('199329','0','1','1','-7140.54','4714.78','-605.479','2.68858','0','0','0.974456','0.224577','300','0','1'),
('199329','0','1','1','-6873.57','4602.25','-604.565','0.634757','0','0','0.312077','0.950057','300','0','1'),
('199329','1','1','1','3454.5','-5288.53','92.3963','2.00903','0','0','0.843902','0.536497','300','0','1'),
('199329','1','1','1','3407.98','-5239.13','83.6478','2.30827','0','0','0.914445','0.40471','300','0','1'),
('199329','1','1','1','3436.1','-5204.59','83.4235','0.765746','0','0','0.373587','0.927595','300','0','1'),
('199329','1','1','1','3410.28','-5129.97','82.9162','0.436664','0','0','0.216602','0.97626','300','0','1'),
('199329','1','1','1','3409.67','-5108.85','85.2906','0.364408','0','0','0.181197','0.983447','300','0','1'),
('199329','1','1','1','3444.21','-5089.64','85.8362','4.25056','0','0','0.850173','-0.526503','300','0','1'),
('199329','1','1','1','3479.29','-5111.17','84.4333','6.04441','0','0','0.119106','-0.992882','300','0','1'),
('199329','1','1','1','3545.43','-5157.64','85.6063','1.24405','0','0','0.582684','0.812699','300','0','1'),
('199329','1','1','1','3598.98','-5180.75','83.0189','4.51838','0','0','0.772268','-0.635297','300','0','1'),
('199329','1','1','1','3642.76','-5187.99','81.1498','0.21047','0','0','0.105041','0.994468','300','0','1'),
('199329','1','1','1','3662.94','-5153.25','81.7019','5.18361','0','0','0.522506','-0.852636','300','0','1'),
('199329','1','1','1','3640.5','-5242.59','87.4317','4.76264','0','0','0.68912','-0.724647','300','0','1'),
('199329','1','1','1','3651.45','-5339.67','109.779','4.82547','0','0','0.666018','-0.745935','300','0','1'),
('199329','1','1','1','3559.65','-5264.81','101.025','0.736684','0','0','0.360069','0.932926','300','0','1'),
('199329','1','1','1','3522.92','-5201.67','89.2947','3.1887','0','0','0.999723','-0.0235505','300','0','1'),
('199329','1','1','1','3515.86','-5118.24','82.5305','1.42941','0','0','0.655393','0.755288','300','0','1'),
('199329','1','1','1','3534.99','-5032.98','88.229','4.46811','0','0','0.78799','-0.615688','300','0','1'),
('199329','1','1','1','3484.72','-5058.06','86.8533','4.91579','0','0','0.631665','-0.775241','300','0','1');
UPDATE `quest_template` SET `RequiredItemId2`='49629', `RequiredItemCount2`='1' WHERE (`Id`='14486');

-- Quest 14250 Renewable Resource
UPDATE creature_template SET scriptname = '', ainame = "SmartAI" WHERE entry = 35759;
DELETE FROM smart_scripts WHERE entryorguid IN (35759) AND source_type = 0 and id > 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(35759,0,1,0,4,0,100,1,0,0,0,0,56,49036,1,0,0,0,0,18,20,0,0,0,0,0,0,"tocco di basalto"),
(35759,0,2,0,0,0,100,0,5000,7000,5000,7000,56,49036,1,0,0,0,0,18,20,0,0,0,0,0,0,"tocco di basalto");

-- Quest 14297 Pro-liberation
UPDATE quest_template SET requirednpcorgo1 = -197332 WHERE id = 14297;
UPDATE `creature_template` SET `lootid`='36636' WHERE (`entry`='36636');
DELETE FROM `creature_loot_template` WHERE (`entry`='36636') AND (`item`='49533');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36636', '49533', '-37');
UPDATE `creature_template` SET `lootid`='36637' WHERE (`entry`='36637');
DELETE FROM `creature_loot_template` WHERE (`entry`='36637') AND (`item`='49533');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36637', '49533', '-30');

-- Quest 14392 Farewell, Minnow
DELETE FROM `creature` WHERE (`id`='36676');
INSERT INTO `creature` VALUES (null, 36676, 1, 1, 1, 0, 0, 4634.71, -7088.77, 105.455, 0.336226, 300, 0, 0, 11550, 0, 0, 0, 0, 0);
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='36210');

-- Quest 14428 Amberwind's Journal CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14429' WHERE (`Id`='14428');
UPDATE `quest_template` SET `NextQuestIdChain`='14430' WHERE (`Id`='14429');
UPDATE `quest_template` SET `PrevQuestId`='14428' WHERE (`Id`='14429');
UPDATE `quest_template` SET `PrevQuestId`='14429' WHERE (`Id`='14430');

-- Quest 14428 Amberwind's Journal
UPDATE `creature_template` SET `lootid`='36594' WHERE (`entry`='36594');
DELETE FROM `creature_loot_template` WHERE (`entry`='36594') AND (`item`='49356');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36594', '49356', '-100');

-- Quest 14429 Arcane De-Construction
UPDATE `creature_template` SET `lootid`='36592' WHERE (`entry`='36592');
DELETE FROM `creature_loot_template` WHERE (`entry`='36592') AND (`item`='49359');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36592', '49359', '-86');
UPDATE `creature_template` SET `lootid`='36593' WHERE (`entry`='36593');
DELETE FROM `creature_loot_template` WHERE (`entry`='36593') AND (`item`='49359');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36593', '49359', '-82');


-- Quest 14345 Wash Out CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14340' WHERE (`Id`='14345');
UPDATE `quest_template` SET `PrevQuestId`='14345' WHERE (`Id`='14340');

-- Quest 14323 Absorbent CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14324' WHERE (`Id`='14323');
UPDATE `quest_template` SET `PrevQuestId`='14323' WHERE (`Id`='14324');

-- Quest 14323 Absorbent
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='14323');
UPDATE creature_template SET scriptname = '', ainame = "SmartAI" WHERE entry = 36131;
DELETE FROM smart_scripts WHERE entryorguid IN (36131) AND source_type = 0 AND id >0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36131,0,1,0,24,0,100,0,68413,1,5000,5100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"fase 1"),
(36131,0,2,0,0,1,100,0,1000,1100,5000,5100,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crepa"),
(36131,0,3,0,6,1,100,0,0,0,0,0,56,49172,1,0,0,0,0,18,30,0,0,0,0,0,0,"credit");

-- Quest 14323 Full of hot water
update creature_template set faction_a = 14, faction_h = 14, minlevel = 16, maxlevel = 18 where entry = 36130;
UPDATE `creature_template` SET `lootid`='36130' WHERE (`entry`='36130');
DELETE FROM `creature_loot_template` WHERE (`entry`='36130') AND (`item`='49174');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36130', '49174', '-100');

-- Quest 14413 The Pinnacle of Learning CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14296' WHERE (`Id`='14413');
UPDATE `quest_template` SET `PrevQuestId`='14413' WHERE (`Id`='14296');
DELETE FROM `creature` WHERE (`id`='36334');

-- Quest 14296 Watch Your Step
INSERT INTO `creature` VALUES (null, 36334, 1, 1, 1, 0, 0, 4844.13, -6440.02, 19.7361, 4.756, 300, 0, 0, 1, 9694, 0, 0, 0, 0);

DELETE FROM `gameobject` WHERE (`id`='195367');
DELETE FROM `gameobject` WHERE (`id`='196407');
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4967.5, -6452.59, 134.402, 2.32173, 0, 0, 0.917148, 0.398546, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4950.83, -6504.83, 121.182, 0.295882, 0, 0, 0.147402, 0.989077, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4893.6, -6484.63, 108.922, 5.10354, 0, 0, 0.556213, -0.831039, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4915.93, -6410.59, 89.151, 3.90272, 0, 0, 0.928456, -0.371443, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4977.23, -6422.97, 83.2544, 3.14775, 0, 0, 0.999995, -0.00307957, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4994.91, -6477.66, 63.7605, 1.22749, 0, 0, 0.575933, 0.817497, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4969.83, -6535.25, 37.3051, 1.18501, 0, 0, 0.558441, 0.829544, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4910.79, -6550.42, 30.8816, 5.95525, 0, 0, 0.163235, -0.986587, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4861.73, -6519.94, 26.6205, 5.27793, 0, 0, 0.481731, -0.876319, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4840.75, -6471.46, 19.6374, 4.95523, 0, 0, 0.616255, -0.787547, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 196407, 1, 1, 1, 4831.11, -6427.08, 0.202199, 0, 0, 0, 0, 1, 120, 255, 1);

-- Fix Bunny other quest was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='35171');

DELETE FROM creature_template WHERE name = "Coso salterelloso";
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('363340','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363341','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363342','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363343','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363344','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363345','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363346','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363347','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363348','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363349','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363350','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363351','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340'),
('363352','0','0','0','0','0','11686','0','0','0','Coso salterelloso','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340');

DELETE FROM smart_scripts WHERE entryorguid IN (363340,363341,363342,363343,363344,363345,363346,363347,363348,363349,363350,363351,363352) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(363340,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4851,-6496,28,0,"fa saltare giocatore"),
(363341,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4884,-6534,38,5.7,"fa saltare giocatore"),
(363342,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4931,-6545,48,0.1,"fa saltare giocatore"),
(363343,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4985,-6503,75,1.2,"fa saltare giocatore"),
(363344,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4991,-6449,90,1.6,"fa saltare giocatore"),
(363345,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4947,-6409,98,3.3,"fa saltare giocatore"),
(363346,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4888,-6455,115,4.5,"fa saltare giocatore"),
(363347,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4920,-6501,128,5.9,"fa saltare giocatore"),
(363348,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4961,-6482,138,1.1,"fa saltare giocatore"),
(363349,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4929,-6445,168,5.0,"fa saltare giocatore"),
(363350,0,0,0,10,0,100,0,1,3,3000,3200,62,1,0,0,0,0,0,7,0,0,0,4844,-6439,21,4.5,"fa saltare giocatore"),
(363351,0,1,0,24,0,100,0,68613,6,5000,5100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"fase 1"),
(363351,0,2,0,0,1,100,0,1000,1100,5000,5100,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Crepa"),
(363351,0,3,0,6,1,100,0,0,0,0,0,33,35171,1,0,0,0,0,18,10,0,0,0,0,0,0,"credit");

update creature_template set mindmg = 1, maxdmg = 1, attackpower = 1, faction_a = 14, faction_h = 14 where entry = 363351;

update creature_template set minlevel = 85, maxlevel = 85, scriptname = '', ainame = "SmartAI", faction_a = 190, faction_h = 190 where entry = 36295;
DELETE FROM smart_scripts WHERE entryorguid IN (36295) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36295,0,0,0,1,0,100,0,5000,8000,10000,10200,11,68602,0,0,0,0,0,1,0,0,0,0,0,0,0,"Arcane detonation");


delete FROM creature WHERE id IN (363340,363341,363342,363343,363344,363345,363346,363347,363348,363349,363350,363351,363352,36295,36361);
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('363340','1','1','1','0','0','4841.4','-6471.27','19.4375','4.67279','300','0','0','71','0','0','0','0','0'),
('363341','1','1','1','0','0','4861.12','-6518.64','26.1932','5.2064','300','0','0','71','0','0','0','0','0'),
('363342','1','1','1','0','0','4910.27','-6550.08','30.65','5.93326','300','0','0','71','0','0','0','0','0'),
('363343','1','1','1','0','0','4968.54','-6535.88','36.4854','0.215454','300','0','0','71','0','0','0','0','0'),
('363344','1','1','1','0','0','4994.48','-6478.9','63.2963','1.38143','300','0','0','71','0','0','0','0','0'),
('363345','1','1','1','0','0','4978.05','-6423','82.839','2.33906','300','0','0','71','0','0','0','0','0'),
('363346','1','1','1','0','0','4916.98','-6409.55','88.7202','3.289','300','0','0','71','0','0','0','0','0'),
('363347','1','1','1','0','0','4892.92','-6484.22','108.487','5.00737','300','0','0','71','0','0','0','0','0'),
('363348','1','1','1','0','0','4949.5','-6505.62','120.778','6.05472','300','0','0','71','0','0','0','0','0'),
('363349','1','1','1','0','0','4968.9','-6454.11','134.087','1.62936','300','0','0','71','0','0','0','0','0'),
('363350','1','1','1','0','0','4678.7','-6456.34','2.24748','0.0188273','300','0','0','71','0','0','0','0','0'),
('36295','1','1','1','0','0','4950.08','-6537.69','38.7933','0.363894','300','0','0','1','0','0','0','0','0'),
('36295','1','1','1','0','0','4982.63','-6436.52','84.9289','2.10894','300','0','0','1','0','0','0','0','0'),
('36295','1','1','1','0','0','4934.78','-6411.74','91.1049','3.06438','300','0','0','1','0','0','0','0','0'),
('36295','1','1','1','0','0','4893.79','-6473.17','109.204','4.8173','300','0','0','1','0','0','0','0','0'),
('36295','1','1','1','0','0','4965.51','-6470.2','135.453','1.30735','300','0','0','1','0','0','0','0','0'),
('36295','1','1','1','0','0','4859.2','-6507.25','27.2209','5.14122','300','0','0','1','0','0','0','0','0'),
('363351','1','1','1','0','0','4931.67','-6449.2','160.629','5.02027','1','0','0','71','0','0','0','0','0'),
('36361','1','1','1','0','0','4943.73','-6461.38','160.839','3.01357','300','0','0','57','0','0','0','0','0'),
('36361','1','1','1','0','0','4506.74','-5187.55','304.051','5.07461','300','0','0','57','0','0','0','0','0'),
('36361','1','1','1','0','0','4398.8','-5079.73','335.592','3.80698','300','0','0','57','0','0','0','0','0'),
('36361','1','1','1','0','0','4601.41','-6790.84','212.65','0.00170898','300','0','0','57','0','0','0','0','0');

-- Quest 14300 The Trial of Fire
update creature_template set modelid1 = 11686, modelid2 = 11686, ainame = "SmartAI", scriptname = '' where entry in (34773,50448);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36361');
DELETE FROM smart_scripts WHERE entryorguid IN (36361) AND source_type = 0;

INSERT INTO `smart_scripts` VALUES (36361, 0, 1, 0, 19, 0, 100, 0, 14300, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 4521,-5184,305,4.61, 'Teleport player');
INSERT INTO `smart_scripts` VALUES (36361, 0, 2, 0, 19, 0, 100, 0, 14300, 0, 0, 0, 12, 50448, 2, 80000, 0, 0, 0, 8, 0, 0, 0, 4521,-5184,315,4.61, 'Summon bunny istruzioni');
DELETE FROM smart_scripts WHERE entryorguid IN (50448) AND source_type = 0;

DELETE FROM smart_scripts WHERE entryorguid IN (34773,50448) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(34773,0,0,0,1,0,100,0,50,80,10000,10200,11,64851,0,0,0,0,0,1,0,0,0,0,0,0,0,"Flaming rune visuale"),
(34773,0,1,0,1,0,100,1,500,800,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fase 1"),
(34773,0,2,0,1,1,100,0,5000,8000,8000,12000,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fase 2"),
(34773,0,3,0,1,2,100,0,400,500,6000,6000,75,42344,1,0,0,0,0,1,0,0,0,0,0,0,0,"cosmetic"),
(34773,0,4,0,1,2,100,0,4000,4000,6000,6000,11,91918,7,0,0,0,0,1,0,0,0,0,0,0,0,"Flaming rune"),
(34773,0,5,0,1,2,100,0,4000,4000,6000,6000,6,14300,0,0,0,0,0,18,0.5,0,0,0,0,0,0,"Fallisce quest"),
(34773,0,7,0,1,2,100,0,4000,4000,6000,6000,28,42344,1,0,0,0,0,1,0,0,0,0,0,0,0,"via cosmetic"),
(34773,0,8,0,1,2,100,0,6000,6000,6000,6000,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"fase 1"),
(34773,0,9,0,10,1,100,0,1,0.5,6000,6000,75,18209,1,0,0,0,0,11,50448,1000,0,0,0,0,0,"buffa bunny"),
(34773,0,10,0,10,1,100,0,0,0.5,6000,6000,75,18209,1,0,0,0,0,11,50448,1000,0,0,0,0,0,"buffa bunny"),

(50448,0,0,0,23,0,100,0,18209,20,1000,1020,33,34773,0,0,0,0,0,18,100,0,0,0,0,0,0,"completa quest"),
(50448,0,1,0,1,0,100,1,5000,5100,0,0,1,1,0,0,0,0,0,18,100,0,0,0,0,0,0,"istruzioni"),
(50448,0,2,0,1,0,100,1,10000,10100,0,0,1,2,0,0,0,0,0,18,100,0,0,0,0,0,0,"istruzioni"),
(50448,0,3,0,1,0,100,1,15000,15100,0,0,1,3,0,0,0,0,0,18,100,0,0,0,0,0,0,"istruzioni");


delete from creature_text where comment = "istruzioni prova fuoco";
insert into `creature_text` (`entry`, `groupid`, `id`, `text`,`sound`, `type`, `language`, `emote`, `comment`) values
(50448,1,0,'Gira fra le rune di fuoco evitando le esplosioni.',0,41,0,0,'istruzioni prova fuoco'),
(50448,2,0,'Se vieni colpito, devi ricominciare la quest. Se resisti abbastanza a lungo, completerai la prova.',0,41,0,0,'istruzioni prova fuoco'),
(50448,3,0,'VIA!',0,41,0,0,'istruzioni prova fuoco');

delete FROM creature WHERE id = 34773;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('34773','1','1','1','0','0','4532.31','-5202.04','304.05','4.76394','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4526','-5201.76','304.05','4.76394','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4519.48','-5202.1','304.05','4.76394','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4513.48','-5202.41','304.05','4.76394','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4507.61','-5202.25','304.05','4.76394','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4507.91','-5208.07','304.05','4.76394','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4513.6','-5207.49','304.05','4.71367','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4519.52','-5207.48','304.05','4.71367','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4525.64','-5207.88','304.05','1.59093','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4531.59','-5208.08','304.05','1.52809','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4531.34','-5213.8','304.05','1.52809','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4531.61','-5218.99','304.05','1.57836','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4531.58','-5224.29','304.05','1.53516','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4525.73','-5224.41','304.05','4.69561','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4513.79','-5218.7','304.05','1.53831','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4525.63','-5213.44','304.05','1.57836','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4519.88','-5213.36','304.05','1.59172','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4519.68','-5218.67','304.05','1.56344','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4519.4','-5224.46','304.05','4.63906','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4513.68','-5213.29','304.05','1.69617','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4525.67','-5219.04','304.05','1.57836','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4508.2','-5213.25','304.05','4.68304','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4508.05','-5218.64','304.05','4.68304','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4507.89','-5223.93','304.05','4.68304','300','0','0','42','0','0','0','0','0'),
('34773','1','1','1','0','0','4513.53','-5223.77','304.05','4.68304','300','0','0','42','0','0','0','0','0');
update creature set orientation = 1.59 where id = 34773;

-- Quest 14431 The Blackmaw Scar
UPDATE `creature_template` SET `lootid`='36611' WHERE (`entry`='36611');
DELETE FROM `creature_loot_template` WHERE (`entry`='36611') AND (`item`='49364');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36611', '49364', '-25');

-- Quest 14432 A Pale Brew
UPDATE `creature_template` SET `lootid`='36013' WHERE (`entry`='36013');
DELETE FROM `creature_loot_template` WHERE (`entry`='36013') AND (`item`='49365');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36013', '49365', '-54');
UPDATE `creature_template` SET `lootid`='36012' WHERE (`entry`='36012');
DELETE FROM `creature_loot_template` WHERE (`entry`='36012') AND (`item`='49365');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36012', '49365', '-37');
UPDATE `creature_template` SET `lootid`='36015' WHERE (`entry`='36015');
DELETE FROM `creature_loot_template` WHERE (`entry`='36015') AND (`item`='49365');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36015', '49365', '-14');

-- Quest 14433 Diplomacy by Another Means
UPDATE `creature_template` SET `lootid`='36614' WHERE (`entry`='36614');
DELETE FROM `creature_loot_template` WHERE (`entry`='36614') AND (`item`='49366');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36614', '49366', '-40');

-- Quest 14435 The Blackmaw Doublecross
UPDATE `creature_template` SET `gossip_menu_id`='36596' WHERE (`entry`='36596');
delete from gossip_menu_option where menu_id = 36596;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(36596,0,"I'm ready. Teleport me to Blackmaw Hold",1,1);
DELETE FROM `conditions` WHERE (`ConditionValue1`='14435');
INSERT INTO `conditions` VALUES (15, 36596, 0, 0, 0, 9, 0, 14435, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36596');
DELETE FROM smart_scripts WHERE entryorguid IN (36596) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (36596, 0, 1, 2, 62, 0, 100, 0, 36596, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 4283.31,-5089.0,131.936,2.164, 'Teleport player to Dragonmaw Hold');
DELETE FROM `creature` WHERE (`id`='36618');
INSERT INTO `creature` VALUES (null, 36618, 1, 1, 1, 6822, 36618, 4278.36, -5081.08, 133.064, 5.25344, 600, 0, 0, 438, 0, 0, 0, 0, 0);

UPDATE creature_template SET ainame = "SmartAI", scriptname = '', npcflag = 1, gossip_menu_id = 36618 WHERE entry = 36618;

delete from gossip_menu_option where menu_id = 36618;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(36618,0,"Preparatevi a sottomettervi ai nostri signori della guerra gnomici!",1,1),
(36618,1,"Pensavamo di usarvi come cavalcature.",1,1),
(36618,2,"Il mio re esige in mogli tutte le vostre primogenite.",1,1),
(36618,3,"Che esseri schifosi che siete! Potevate lavarvi prima di incontrarmi!",1,1),
(36618,4,"Se volete entrare nell\'Alleanza dovete prima depilarvi!",1,1);

delete from conditions where comment = "blackmaw guerra";
insert into conditions (SourceTypeOrReferenceId,SourceGroup,sourceentry,sourceid,elsegroup,conditiontypeorreference,conditiontarget,conditionvalue1,conditionvalue2, conditionvalue3,negativecondition,comment) values
(15,36618,0,0,0,9,0,14435,0,0,0,"blackmaw guerra");

DELETE FROM smart_scripts WHERE entryorguid IN (36618) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36618,0,1,0,62,0,100,0,36618,0,10000,10100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"gossip 1"),
(36618,0,10,0,62,0,100,0,36618,1,10000,10100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"gossip 1"),
(36618,0,11,0,62,0,100,0,36618,2,10000,10100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"gossip 1"),
(36618,0,12,0,62,0,100,0,36618,3,10000,10100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"gossip 1"),
(36618,0,13,0,62,0,100,0,36618,4,10000,10100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"gossip 1"),
(36618,0,2,0,1,1,100,0,100,200,10000,10100,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"close gossip"),
(36618,0,3,0,1,1,100,0,1100,1200,10000,10100,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"yell 1"),
(36618,0,9,0,1,1,100,0,1100,1200,10000,10100,33,36625,0,0,0,0,0,7,0,0,0,0,0,0,0,"credit"),
(36618,0,15,0,1,1,100,0,1100,1200,10000,10100,28,69059,0,0,0,0,0,7,0,0,0,0,0,0,0,"credit"),
(36618,0,14,0,1,1,100,0,10000,10100,10000,10100,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"fase 0");

delete from creature_text where comment = "blackmaw guerra";
insert into `creature_text` (`entry`, `groupid`, `id`, `text`,`sound`, `type`, `language`, `emote`, `comment`) values
(36618,1,0,'Tu dice brutto!!! Tu no rispetta noi!!! Tu dice tuo re NOI SPACCA ALLEANZA!!!',0,14,0,0,'blackmaw guerra');

-- Quest 14226 Trouble Under Foot
update quest_template set sourcespellid = 67843 where id = 14226;
update creature_template set health_mod = 200, scriptname = '', ainame = "SmartAI" where entry = 35178;
DELETE FROM smart_scripts WHERE entryorguid IN (35178) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(35178,0,1,0,4,0,100,1,0,0,0,0,11,67794,0,0,0,0,0,11,6200,10,0,0,0,0,0,"polymorph satiro"),
(35178,0,2,0,4,0,100,1,0,0,0,0,11,67794,0,0,0,0,0,11,6201,10,0,0,0,0,0,"polymorph satiro"),
(35178,0,3,0,4,0,100,1,0,0,0,0,11,67794,0,0,0,0,0,11,6202,10,0,0,0,0,0,"polymorph satiro");
UPDATE creature_template SET killcredit1 = 35628 WHERE entry IN (6200,6201,6202);

-- Quest 14249 Shear Will
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='35648');
DELETE FROM `creature_loot_template` WHERE (`item`='49068');
INSERT INTO `creature_loot_template` VALUES (6375, 49068, -87, 1, 0, 5, 12);
INSERT INTO `creature_loot_template` VALUES (6377, 49068, -75, 1, 0, 5, 12);

-- Quest 14299 Xylem's Asylum CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14389' WHERE (`Id`='14299');
UPDATE `quest_template` SET `NextQuestIdChain`='14390' WHERE (`Id`='14389');
UPDATE `quest_template` SET `NextQuestIdChain`='14391' WHERE (`Id`='14390');
UPDATE `quest_template` SET `PrevQuestId`='14299' WHERE (`Id`='14389');
UPDATE `quest_template` SET `PrevQuestId`='14389' WHERE (`Id`='14390');
UPDATE `quest_template` SET `PrevQuestId`='14390' WHERE (`Id`='14391');

-- Quest 14299 Xylem's Asylum
-- part of the setting for this AI can be found on quest 14300 The Trial of Fire
INSERT INTO `smart_scripts` VALUES (36361, 0, 3, 0, 19, 0, 100, 0, 14299, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3779,-4613,230,5.39, 'Teleport player');
DELETE FROM `creature` WHERE (`id`='36372');
INSERT INTO `creature` VALUES (null, 36372, 1, 1, 1, 30092, 36372, 3985.34, -4784.14, 270.414, 1.90241, 600, 0, 0, 3636, 17272, 0, 0, 0, 0);

-- Quest 14389 Wasn't It Obvious?
update quest_template set flags = 0 where id = 14389;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36372');
DELETE FROM smart_scripts WHERE entryorguid IN (36372) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (36372, 0, 3, 0, 19, 0, 100, 0, 14389, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3878,-4867,152,4.709, 'Teleport player');
INSERT INTO `smart_scripts` VALUES (36372, 0, 4, 0, 19, 0, 100, 0, 14389, 0, 0, 0, 75, 79587, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0,0,0,0, 'Apply aura');
INSERT INTO `smart_scripts` VALUES (36372, 0, 5, 0, 19, 0, 100, 0, 14389, 0, 0, 0, 75, 59073, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0,0,0,0, 'Cast spell phase 2');
delete FROM creature WHERE id IN (37040,36436);
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('36436','1','1','2','0','0','3913.17','-4909.32','149.823','3.01217','300','0','0','11550','0','0','0','0','0'),
('37040','1','1','2','0','0','3914.4','-4890.53','150.209','4.18163','300','0','0','42','0','0','0','0','0');

DELETE FROM `creature_template_addon` WHERE (`entry`='36436');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('36436', '3');

-- Quest 14390 Easy is Boring
update quest_template set flags = 0, requirednpcorgo1 = 36436, requirednpcorgocount1 = 1 where id = 14390;

update creature_template set ainame = "SmartAI", scriptname = '', npcflag = 3, gossip_menu_id = 36436 where entry = 36436;

DELETE FROM smart_scripts WHERE entryorguid IN (36436) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES

(36436,0,1,0,62,0,100,0,36436,0,60000,60100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fase 1 on gossip 1"),
(36436,0,2,0,1,1,100,0,100,110,52000,52100,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"chiudi gossip"),
# (36436,0,3,0,1,1,100,0,100,110,52000,52100,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Via flag gossip"),
(36436,0,4,0,1,1,100,0,100,110,52000,52100,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
(36436,0,5,0,1,1,100,0,10100,10110,52000,52100,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
(36436,0,6,0,1,1,100,0,20100,20110,52000,52100,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
(36436,0,7,0,1,1,100,0,30100,30110,52000,52100,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
(36436,0,8,0,1,1,100,0,40100,40110,52000,52100,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
# (36436,0,9,0,1,1,100,0,50100,50510,52000,52100,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"flag gossip"),
(36436,0,10,0,1,1,100,0,51100,51510,52000,52100,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"fase 0"),

(36436,0,11,0,62,0,100,0,36437,0,60000,60100,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fase 2 on gossip 2"),
(36436,0,12,0,1,2,100,0,100,110,32000,32100,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"chiudi gossip"),
# (36436,0,13,0,1,2,100,0,100,110,32000,32100,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Via flag gossip"),
(36436,0,14,0,1,2,100,0,100,110,32000,32100,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
(36436,0,15,0,1,2,100,0,10100,10110,32000,32100,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
(36436,0,16,0,1,2,100,0,20100,20110,32000,32100,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
# (36436,0,17,0,1,2,100,0,30100,30510,32000,32100,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"flag gossip"),
(36436,0,18,0,1,2,100,0,31100,31510,32000,32100,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"fase 0"),

(36436,0,21,0,62,0,100,0,36438,0,60000,60100,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fase 3 on gossip 3"),
(36436,0,22,0,1,4,100,0,100,110,42000,42100,72,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"chiudi gossip"),
# (36436,0,23,0,1,4,100,0,100,110,42000,42100,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Via flag gossip"),
(36436,0,24,0,1,4,100,0,100,110,42000,42100,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
(36436,0,25,0,1,4,100,0,10100,10110,42000,42100,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
(36436,0,26,0,1,4,100,0,20100,20110,42000,42100,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
(36436,0,27,0,1,4,100,0,30100,30110,42000,42100,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,"Parla"),
(36436,0,28,0,1,4,100,0,30100,30110,42000,42100,33,36436,0,0,0,0,0,7,0,0,0,0,0,0,0,"credit"),
# (36436,0,29,0,1,4,100,0,40100,40510,42000,42100,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"flag gossip"),
(36436,0,30,0,1,4,100,0,41100,41510,42000,42100,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"fase 0");

delete from creature_text where comment = "azuregos convincere";
insert into `creature_text` (`entry`, `groupid`, `id`, `text`,`sound`, `type`, `language`, `emote`, `comment`) values
(36436,1,0,'Cerchi Azuregos? Flagello delle Spiagge Amare? Tormento della Baia delle Tempeste? Signore della magia di Azshara? Bene, lo hai trovato.',0,12,0,0,'azuregos convincere'),
(36436,2,0,'Kalecgos?! Pensi che sia un buon inizio? Ti avrà mandato per salvare questo grosso drago blu da se stesso, dalla sua fuga nel mondo degli spiriti e dall\'ossessione per gli artefatti magici!',0,12,0,0,'azuregos convincere'),
(36436,3,0,'Ma Kalec non capisce. Io ho cambiato vita. Ho incontrato qualcuno.',0,12,0,0,'azuregos convincere'),
(36436,4,0,'Eccola, è qui: Adara. Trattala con rispetto. Quante volte lei e le sue sorelle ti hanno salvato dalle grinfie della morte? Razza di ingrato!',0,12,0,0,'azuregos convincere'),
(36436,5,0,'Lo so, LO SO. Non funzionerà, dici? Drago e spirit healer... due mondi diversi, un sacco di problemi fisiologici. Ma noi siamo più profondi di questo, sai?',0,12,0,0,'azuregos convincere'),
(36436,6,0,'E poi qui non ci sono avventurieri che mi attaccano senza motivo.',0,12,0,0,'azuregos convincere'),
(36436,7,0,'Ma non mi dire! Pensavi che non avessi notato la terra bruciata ed il massacro insensato che creano sempre? Non sono COSI\' vecchio!',0,12,0,0,'azuregos convincere'),
(36436,8,0,'Ma lasciamoli perdere... non hanno la minima idea di dove io sia.',0,12,0,0,'azuregos convincere'),
(36436,9,0,'E poi uno degli aspetti divertenti di male e distruzione è che alla fine tendono a distruggersi malignamente a vicenda.',0,12,0,0,'azuregos convincere'),
(36436,10,0,'Kalec vuole affrontarli? E ti ha mandato a chiedere il mio aiuto? Implorava? Era in lacrime?',0,12,0,0,'azuregos convincere'),
(36436,11,0,'E va bene, verrò. Così potrò rinfacciarglielo a vita. Pensa sempre di essere l eroe al centro del mondo.',0,12,0,0,'azuregos convincere'),
(36436,12,0,'E magari penserà pure di diventare il prossimo Aspetto! Roba da ridere.',0,12,0,0,'azuregos convincere'),
(36436,13,0,'Vediamoci a Sable Ridge, su. Non fartela sotto.',0,12,0,0,'azuregos convincere');

delete from gossip_menu_option where menu_id in (36436,36437,36438);
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag,action_menu_id) values
(36436,0,"Mi manda Kalecgos...",1,1,36437),
(36437,0,"Ma io... io vengo ad avvisarti che il Black Dragonflight ti sta dando la caccia!",1,1,36438),
(36438,0,"Ma Kalecgos si è già mosso per fermarli! Gli serve il tuo aiuto!",1,1,0);

delete from conditions where comment = "azuregos convincere";
insert into conditions (SourceTypeOrReferenceId,SourceGroup,sourceentry,sourceid,elsegroup,conditiontypeorreference,conditiontarget,conditionvalue1,conditionvalue2, conditionvalue3,negativecondition,comment) values
(15,36436,0,0,0,9,0,14390,0,0,0,"azuregos convincere");

-- Quest 14391 Turning the Tables
delete FROM creature WHERE id IN (35867);
INSERT INTO `creature` VALUES (null, 35867, 1, 1, 1, 0, 35867, 4631.17, -7049.85, 114.173, 5.98177, 300, 0, 0, 697250, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 35867, 1, 1, 1, 0, 35867, 3464.82, -6432.44, 11.7666, 1.42386, 300, 0, 0, 290400, 0, 0, 0, 0, 0);

update creature_template set ainame = "SmartAI", scriptname = '', npcflag = 1, gossip_menu_id = 37040 where entry = 37040;

delete from gossip_menu_option where menu_id = 37040;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(37040,0,"I'm ready. Please help me to return to the world of living",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (37040) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (37040, 0, 1, 0, 62, 0, 100, 0, 37040, 0, 0, 0, 28, 79587, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Return to the life - remove aura');
INSERT INTO `smart_scripts` VALUES (37040, 0, 2, 0, 62, 0, 100, 0, 37040, 0, 0, 0, 28, 59073, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Return to the life - remove spell phase');

-- Quest 14407 Azshara Blues CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14130' WHERE (`Id`='14407');
UPDATE `quest_template` SET `PrevQuestId`='14407' WHERE (`Id`='14130');


-- Quest 24497 Airborne Again
delete FROM creature_template WHERE entry = 371390;
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values
('371390','0','0','0','0','0','26556','0','0','0','Wings of Steel','','','0','10','10','0','35','35','0','3','3','1','0','3.8','3.8','0','46','1','0','0','1','0','0','0','0','0','0','0','1.9','1.9','0','9','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','742','0','0','SmartAI','0','4','10','1','1','0','0','0','0','0','0','0','197','1','0','0','0','','1');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='37142');
DELETE FROM smart_scripts WHERE entryorguid IN (37142) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (37142, 0, 1, 0, 19, 0, 100, 0, 24497, 0, 0, 0, 75, 59073, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0,0,0,0, 'Cast spell phase 2');
INSERT INTO `smart_scripts` VALUES (37142, 0, 2, 0, 19, 0, 100, 0, 24497, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3514,-6776,70.52,5.10, 'Teleport player');


delete from creature_template_addon where entry = 371390;
insert into creature_template_addon (entry,auras) values
(371390,73149);

DELETE FROM npc_spellclick_spells WHERE npc_entry = 371390;
INSERT IGNORE INTO npc_spellclick_spells (npc_entry,spell_id,cast_flags) VALUES 
(371390,72764,1);

UPDATE creature_template SET ainame = "SmartAI", scriptname = '' WHERE entry IN (371390);
DELETE FROM smart_scripts WHERE entryorguid IN (371390) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(371390,0,0,0,27,0,100,0,30000,31000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Navetta - raccatta passeggero"),
(371390,0,1,0,1,1,100,1,1000,1100,0,0,11,60534,7,0,0,0,0,1,0,0,0,0,0,0,0,"Navetta - speed volo"),
(371390,0,2,0,1,1,100,1,1000,1100,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Navetta - set fly"),
(371390,0,3,0,1,1,100,1,1000,1100,0,0,11,73149,7,0,0,0,0,21,10,0,0,0,0,0,0,"Navetta - set fly"),
(371390,0,5,0,1,1,100,1,1000,1100,0,0,69,5,5,0,0,0,0,8,0,0,0,3519,-6802,77,4.71,"Navetta - movimento 1"),
(371390,0,6,0,1,1,100,1,2000,2100,0,0,69,5,5,0,0,0,0,8,0,0,0,3315,-6773,91,2.71,"Navetta - movimento 2"),
(371390,0,7,0,1,1,100,1,5000,5100,0,0,69,5,5,0,0,0,0,8,0,0,0,2942,-6314,205,2.25,"Navetta - movimento 3"),
(371390,0,8,0,1,1,100,1,16000,16100,0,0,69,5,5,0,0,0,0,8,0,0,0,2602,-5184,307,1.48,"Navetta - movimento 4"),
(371390,0,15,0,1,1,100,1,36000,36100,0,0,69,5,5,0,0,0,0,8,0,0,0,2955,-4260,183,1.10,"Navetta - movimento 5"),
(371390,0,17,0,1,1,100,1,51000,51100,0,0,69,5,5,0,0,0,0,8,0,0,0,2997,-4178,102,1,"Navetta - movimento 6"),
(371390,0,22,0,1,1,100,1,70200,70300,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Navetta - crepa"),
(371390,0,23,0,1,1,100,1,70200,70300,0,0, 28, 59073, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Remove spell phase');
delete FROM creature WHERE id = 371390;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('371390','1','1','2','0','0','3518.32','-6781.1','70.5278','4.7756','1','0','0','1980','0','0','0','0','0');

UPDATE creature_template SET npcflag = 8195 WHERE entry = 36728;


delete FROM creature WHERE id IN (36730,8587,35194,10361,3621,36728,36919);
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('3621','1','1','1','0','62','3014.95','-4151.12','102.285','3.47777','300','0','0','2769','0','0','0','0','0'),
('8587','1','1','1','0','1279','3011.65','-4137.13','101.7','3.94037','300','0','0','2673','0','0','0','0','0'),
('10361','1','1','1','0','16','3013.34','-4144.06','102.124','3.34661','300','0','0','3082','0','0','0','0','0'),
('35194','1','1','1','0','0','2999.66','-4137.76','101.07','5.17737','300','0','0','50','0','0','0','0','0'),
('36728','1','1','1','0','0','2987.5','-4160.41','101.256','0.693529','300','0','0','126','0','0','0','0','0'),
('36730','1','1','1','0','0','2997.05','-4145.77','101.281','0.0432253','300','0','0','42','0','0','0','0','0'),
('36919','1','1','1','0','0','3005.91','-4155.99','101.747','1.98988','300','0','0','42','0','0','0','0','0');

insert ignore into creature_questrelation (id,quest) values (36919,24434);

-- Quest 14479 There Are Many Like It
DELETE FROM smart_scripts WHERE entryorguid IN (36956) AND source_type = 0;
DELETE FROM `creature` WHERE (`id`='36917');
INSERT INTO `creature` VALUES (null, 36917, 1, 1, 1, 0, 0, 3460.47, -6565.87, 60.7242, 1.1619, 300, 0, 0, 42, 0, 0, 0, 0, 0);

UPDATE creature_template SET ainame = "SmartAI", scriptname = '', vehicleid = 109, faction_a = 35, faction_h = 35, npcflag = 16777216, inhabittype = 4, speed_run = 8, speed_walk =8 WHERE entry IN (36917);
DELETE FROM `creature_template` WHERE (`entry`='36917');
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values
('36917','0','0','0','0','0','23647','0','0','0','Surface to Other Surface Transport','','','0','10','10','0','35','35','0','3','3','1','0','3.8','3.8','0','46','1','0','0','1','0','0','0','0','0','0','0','1.9','1.9','0','9','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','742','0','0','SmartAI','0','4','10','1','1','0','0','0','0','0','0','0','197','1','0','0','0','','1');

DELETE FROM smart_scripts WHERE entryorguid IN (36917) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36917,0,0,0,27,0,100,0,30000,31000,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Navetta - raccatta passeggero"),
(36917,0,1,0,1,1,100,1,1000,1100,0,0,11,60534,7,0,0,0,0,1,0,0,0,0,0,0,0,"Navetta - speed volo"),
(36917,0,2,0,1,1,100,1,1000,1100,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Navetta - set fly"),
(36917,0,4,0,1,1,100,1,1101,1202,0,0,69,5,5,0,0,0,0,8,0,0,0,3466,-6554,62,1.07,"Navetta - movimento 1"),
(36917,0,5,0,1,1,100,1,1202,1300,0,0,69,5,5,0,0,0,0,8,0,0,0,3472,-6543,77,1.07,"Navetta - movimento 2"),
(36917,0,6,0,1,1,100,1,1300,3100,0,0,69,5,5,0,0,0,0,8,0,0,0,3496,-6484,129,1.1,"Navetta - movimento 3"),
(36917,0,7,0,1,1,100,1,3100,8200,0,0,69,5,5,0,0,0,0,8,0,0,0,3389,-6086,172,1.3,"Navetta - movimento 4"),
(36917,0,8,0,1,1,100,1,8200,9100,0,0,69,5,5,0,0,0,0,8,0,0,0,3445,-5824,104,1.3,"Navetta - movimento 5"),
(36917,0,9,0,1,1,100,1,9100,15100,0,0,69,5,5,0,0,0,0,8,0,0,0,3414,-5649,8,1.3,"Navetta - movimento 6"),
(36917,0,10,0,1,1,100,1,21000,21100,0,0,11,68813,7,0,0,0,0,21,10,0,0,0,0,0,0,"Navetta - schianto e credit"),
(36917,0,11,0,1,1,100,1,21200,21300,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Navetta - crepa");

UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='14479');

INSERT IGNORE INTO npc_spellclick_spells (npc_entry,spell_id,cast_flags) VALUES 
(36917,60968,1);

update creature set spawntimesecs = 1 where id = 36917;
update creature_template set flags_extra = 2 where entry = 36932;

-- Quest 14487 Still Beating Heart
DELETE FROM `gameobject` WHERE (`id`='200298');
INSERT INTO `gameobject` VALUES (null, 200298, 1, 1, 1, 3543.5, -5137.31, 87.8, -80, 0, 0, 0.28727, -0.95785, 300, 0, 1);

-- Quest 14484 Head of the Snake
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='36822');
DELETE FROM `creature` WHERE (`id`='36822');
INSERT INTO `creature` VALUES (null, 36822, 1, 1, 1, 30338, 36822, 3548.06, -5357.8, 107.565, 1.69297, 600, 10, 0, 5838, 0, 0, 1, 0, 0);

-- Quest 14165 Stone Cold CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14190' WHERE (`Id`='14165');
UPDATE `quest_template` SET `NextQuestIdChain`='14192' WHERE (`Id`='14190');
UPDATE `quest_template` SET `NextQuestIdChain`='14194' WHERE (`Id`='14192');
UPDATE `quest_template` SET `PrevQuestId`='14165' WHERE (`Id`='14190');
UPDATE `quest_template` SET `PrevQuestId`='14190' WHERE (`Id`='14192');
UPDATE `quest_template` SET `PrevQuestId`='14192' WHERE (`Id`='14194');

-- Quest 14117 The Eyes of Ashenvale
delete from creature where id = 35095;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`, `curmana`) values
('35095','1','1','1','29606','35095','2664.54','-4986.59','120.011','1.70635','600','0','222','0'),
('35095','1','1','1','29606','35095','2603.3','-4723.42','142.915','0.543614','600','0','222','0'),
('35095','1','1','1','29606','35095','2477.41','-5375.66','128.518','5.12446','600','0','222','0'),
('35095','1','1','1','29607','35095','2460.71','-5202.4','139.136','0.771279','600','0','222','0'),
('35095','1','1','1','29607','35095','2505.9','-5096.63','124.717','0.080141','600','0','222','0'),
('35095','1','1','1','29606','35095','2720.76','-5031.88','121.906','1.65491','600','0','222','0'),
('35095','1','1','1','29606','35095','2659.9','-5024.75','121.785','2.08855','600','0','222','0'),
('35095','1','1','1','0','35095','2565.46','-4935.11','137.105','1.03102','300','0','222','0'),
('35095','1','1','1','0','35095','2653.46','-4956.69','120.63','1.30198','300','0','198','0'),
('35095','1','1','1','0','35095','2712.68','-4890.84','115.75','2.92461','300','0','198','0'),
('35095','1','1','1','0','35095','2668.1','-4836.01','129.958','3.57807','300','0','222','0'),
('35095','1','1','1','0','35095','2575.89','-4723.16','144.63','4.83784','300','0','222','0'),
('35095','1','1','1','0','35095','2616','-5029.92','121.223','1.03653','300','0','198','0'),
('35095','1','1','1','0','35095','2555.06','-5066.05','120.076','1.64285','300','0','222','0');

-- Quest 14118 Venison for the Troops
UPDATE `creature_template` SET `lootid`='35096' WHERE (`entry`='35096');
DELETE FROM `creature_loot_template` WHERE (`entry`='35096') AND (`item`='47038');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES ('35096', '47038', '-69', '2' );

-- Quest 14127 Return of the Highborne? CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14128' WHERE (`Id`='14127');
UPDATE `quest_template` SET `PrevQuestId`='14127' WHERE (`Id`='14128');

-- Quest 14127 Return of the Highborne?
UPDATE `creature_template` SET `lootid`='35095' WHERE (`entry`='35095');
DELETE FROM `creature_loot_template` WHERE (`entry`='35095') AND (`item`='47039');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('35095', '47039', '21');

-- Quest 14165 Stone Cold / 14194 Refleshification
UPDATE quest_template SET sourcespellid = 67032, flags = 8, prevquestid = 14197, requirednpcorgo1 = 35257, requirednpcorgocount1 = 1 WHERE id = 14165;

UPDATE creature_template SET ainame = "SmartAI", scriptname = '' WHERE entry = 35257;

DELETE FROM smart_scripts WHERE entryorguid IN (35257) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(35257,0,0,0,1,0,100,0,1000,1200,1000,1200,11,94507,7,0,0,0,0,21,5,0,0,0,0,0,0,"salta a cappuccio"),
(35257,0,1,0,38,0,100,1,1,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"fase 1"),
(35257,0,2,0,1,1,100,1,100,200,0,0,28,67032,0,0,0,0,0,21,5,0,0,0,0,0,0,"leva aura veicolo al giocatore"),
(35257,0,3,0,1,1,100,1,300,400,0,0,33,35257,0,0,0,0,0,21,5,0,0,0,0,0,0,"kill credit al giocatore"),
(35257,0,4,0,1,1,100,1,11000,12000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn"),
(35257,0,5,0,8,0,100,1,67362,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"fase 2"),
(35257,0,6,0,1,2,100,1,100,200,0,0,28,67021,0,0,0,0,0,1,0,0,0,0,0,0,0,"leva aura veicolo al giocatore"),
(35257,0,7,0,1,2,100,1,100,200,0,0,28,67023,0,0,0,0,0,1,0,0,0,0,0,0,0,"leva aura veicolo al giocatore"),
(35257,0,8,0,1,2,100,1,100,200,0,0,28,67024,0,0,0,0,0,1,0,0,0,0,0,0,0,"leva aura veicolo al giocatore"),
(35257,0,9,0,1,2,100,1,300,400,0,0,33,35375,0,0,0,0,0,18,15,0,0,0,0,0,0,"kill credit al giocatore"),
(35257,0,10,0,1,2,100,1,3100,3200,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"yell"),
(35257,0,11,0,1,2,100,1,11000,12000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"despawn");

delete from creature_text where comment = "goblin pietrificati";
insert into `creature_text` (`entry`, `groupid`, `id`, `text`,`sound`, `type`, `language`, `emote`, `comment`) values
(35257,1,0,'Grazie! Credo che ora mi licenzierò.',0,12,0,0,'goblin pietrificati'),
(35257,1,1,'Nessun lavoro vale tutto questo!',0,12,0,0,'goblin pietrificati'),
(35257,1,2,'Ehi! Ma le ore che ho passato in questo stato contano per la paga, vero?',0,12,0,0,'goblin pietrificati'),
(35257,1,3,'Devo trovarmi un sindacato migliore.',0,12,0,0,'goblin pietrificati'),
(35257,1,4,'La mamma me l aveva detto di buttarmi nel campo del crimine, altro che lavoro onesto!',0,12,0,0,'goblin pietrificati');

UPDATE creature_template SET ainame = "SmartAI", scriptname = '' WHERE entry = 35091;
DELETE FROM smart_scripts WHERE entryorguid IN (35091) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(35091,0,0,0,1,0,100,0,1000,1200,1000,1200,45,1,1,0,0,0,0,11,35257,10,0,0,0,0,0,"set data goblin pietrificati");

-- Quest 14190 The Perfect Prism
UPDATE `creature_template` SET `lootid`='35312' WHERE (`entry`='35312');
DELETE FROM `creature_loot_template` WHERE (`entry`='35312') AND (`item`='47819');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('35312', '47819', '-20');

-- Quest 14162 Report to Horzak CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14161' WHERE (`Id`='14162');
UPDATE `quest_template` SET `PrevQuestId`='14162' WHERE (`Id`='14161');

-- Quest 14201 A Thousand Stories in the Sand CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14215' WHERE (`Id`='14201');
UPDATE `quest_template` SET `NextQuestIdChain`='14216' WHERE (`Id`='14215');
UPDATE `quest_template` SET `PrevQuestId`='14201' WHERE (`Id`='14215');
UPDATE `quest_template` SET `PrevQuestId`='14215' WHERE (`Id`='14216');

-- Quest 14215 Memories of the Dead
UPDATE quest_template SET flags = 0 WHERE id = 14215;

UPDATE creature_template SET npcflag = 3, ainame = "SmartAI", scriptname = '' WHERE entry IN (35567);
DELETE FROM smart_scripts WHERE entryorguid IN (35567) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(35567,0,0,0,10,0,100,0,1,10,1000,1200,33,35593,0,0,0,0,0,18,20,0,0,0,0,0,0,"Memories credit");

insert ignore into creature_questrelation (id,quest) values (35567,14216);
insert ignore into creature_involvedrelation (id,quest) values (35567,14215);

delete FROM creature WHERE id = 35567;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('35567','1','1','1','0','0','2673.07','-5440.44','114.312','1.83745','300','0','0','42','0','0','0','0','0');

delete FROM gameobject WHERE id = 195513;
insert into `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('195513','1','1','1','2624.51','-5335.8','70.3235','2.93073','0','0','0.994447','0.105235','300','0','1');

-- Quest 14475 Grounded! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14476' WHERE (`Id`='14475');
UPDATE `quest_template` SET `NextQuestIdChain`='14477' WHERE (`Id`='14476');
UPDATE `quest_template` SET `PrevQuestId`='14475' WHERE (`Id`='14476');
UPDATE `quest_template` SET `PrevQuestId`='14476' WHERE (`Id`='14477');

-- Quest 14475 Grounded! / 24433 Let Them Feast on Fear
UPDATE creature_template SET minlevel = 17, maxlevel = 19, faction_a = 84, faction_h = 84, mindmg = 30, maxdmg = 40, attackpower = 25 WHERE entry IN (36816,36914,36849,36680);

delete FROM creature WHERE id IN (36729,36816,36914,36918,36849,36680,36785,36903);
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('36680','1','1','1','0','0','2865.38','-4027.41','142.252','0.33181','300','0','0','84','0','0','0','0','0'),
('36729','1','1','1','0','0','2902.55','-4062.76','122.518','5.00338','300','0','0','42','0','0','0','0','0'),
('36785','1','1','1','0','0','2600.51','-4170.74','158.628','5.35757','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2777.93','-4068.78','98.5326','5.27355','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2770.34','-4074.23','99.165','5.23664','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2723.74','-4000.93','100.342','6.13356','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2847.82','-3959.75','97.2184','3.00924','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2904.69','-3967.2','112.385','4.07581','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2892.06','-4022.17','137.713','0.666397','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2886.61','-4013.17','137.401','0.37737','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2732.24','-3904.82','96.1224','5.82882','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2744.02','-3891.34','95.4395','4.89263','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2777.64','-3841.6','86.9461','1.24602','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2787.61','-3846.15','86.7225','1.30257','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2779.71','-3939','94.5263','4.38054','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2769.24','-4015.99','96.2222','4.06324','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2781.56','-4042.29','96.838','5.75028','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2756.54','-3929.71','93.2161','2.62596','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2711.67','-3933.49','102.669','0.31218','300','0','0','42','0','0','0','0','0'),
('36816','1','1','1','0','0','2704.93','-3962.19','104.778','6.12491','300','0','0','42','0','0','0','0','0'),
('36849','1','1','1','0','0','2791.04','-3972.32','94.1319','5.02221','300','0','0','42','0','0','0','0','0'),
('36849','1','1','1','0','0','2790.36','-3981.6','94.9577','1.3277','300','0','0','42','0','0','0','0','0'),
('36849','1','1','1','0','0','2710.25','-3909.15','97.4724','0.773207','300','0','0','42','0','0','0','0','0'),
('36849','1','1','1','0','0','2753.88','-3962.08','92.6418','6.07779','300','0','0','42','0','0','0','0','0'),
('36849','1','1','1','0','0','2705.91','-3981.07','105.081','0.913789','300','0','0','42','0','0','0','0','0'),
('36849','1','1','1','0','0','2638.49','-3961.83','110.83','3.58493','300','0','0','42','0','0','0','0','0'),
('36849','1','1','1','0','0','2639.74','-3966.19','110.699','3.14511','300','0','0','42','0','0','0','0','0'),
('36914','1','1','1','0','0','2765.04','-3905.44','94.1101','4.10173','300','0','0','42','0','0','0','0','0'),
('36914','1','1','1','0','0','2754.24','-3991.89','95.5408','4.61459','300','0','0','42','0','0','0','0','0'),
('36914','1','1','1','0','0','2798.14','-3998.24','103.778','3.5221','300','0','0','42','0','0','0','0','0'),
('36914','1','1','1','0','0','2822.31','-3972','104.521','1.59159','300','0','0','42','0','0','0','0','0'),
('36914','1','1','1','0','0','2830.25','-3917.83','108.037','1.52562','300','0','0','42','0','0','0','0','0'),
('36914','1','1','1','0','0','2804.34','-3893.93','109.886','1.27743','300','0','0','42','0','0','0','0','0'),
('36914','1','1','1','0','0','2879.29','-3945.96','111.233','0.775562','300','0','0','42','0','0','0','0','0'),
('36914','1','1','1','0','0','2933.13','-3979.16','121.983','6.07621','300','0','0','42','0','0','0','0','0'),
('36914','1','1','1','0','0','2666.68','-3946.9','111.806','5.64424','300','0','0','42','0','0','0','0','0'),
('36918','1','1','1','0','0','2757.99','-3962.24','92.5865','0.0207944','300','0','0','42','0','0','0','0','0'),
('36903','1','1','1','0','0','3004.23','-4135.56','101.034','4.6711','300','0','0','42','0','0','0','0','0');

-- Quest 14477 Push the Button!
delete FROM gameobject_template WHERE entry = 1784420;
INSERT INTO `gameobject_template` VALUES (1784420, 5, 1988, 'Horde Supply Crate', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
delete FROM gameobject_template WHERE entry = 142220;
INSERT INTO `gameobject_template` VALUES (142220, 10, 339, 'Button', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 14477, 3000, 0, 0, 0, 0, 0, 0, 0, 85933, 0, 142220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);
delete FROM gameobject WHERE id = 142220;
INSERT INTO `gameobject` VALUES (null, 142220, 1, 1, 1, 2597.75, -4166.81, 159.281, 2.03717, 0, 0, 0.851368, 0.524569, 300, 0, 1);
delete FROM gameobject WHERE id = 1784420;
INSERT INTO `gameobject` VALUES (null, 1784420, 1, 1, 1, 2598.04, -4167.21, 158.633, 5.25002, 0, 0, 0.493911, -0.869512, 300, 0, 1);

UPDATE `quest_template` SET `RequiredNpcOrGo1`='36654', `RequiredNpcOrGoCount1`='1' WHERE (`Id`='14477');

DELETE FROM `spell_scripts` WHERE (`datalong`='36654');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '36654');

-- Quest 24463 Probing into Ashenvale CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13866' WHERE (`Id`='24463');
UPDATE `quest_template` SET `PrevQuestId`='24463' WHERE (`Id`='13866');

-- Quest 14462 Probing into Ashenvale CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='14464' WHERE (`Id`='14462');
UPDATE `quest_template` SET `PrevQuestId`='14462' WHERE (`Id`='14464');

-- Quest 14464 Lightning Strike Assassination
UPDATE `creature_template` SET `lootid`='36680' WHERE (`entry`='36680');
DELETE FROM `creature_loot_template` WHERE (`entry`='36680') AND (`item`='49540');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36680', '49540', '-100');

-- Quest 24439 Lightning Strike Assassination
UPDATE `creature_template` SET `lootid`='36884' WHERE (`entry`='36884');
DELETE FROM `creature_loot_template` WHERE (`entry`='36884') AND (`item`='49674');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36884', '49674', '-100');

-- Quest 24430 Blacken the Skies
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36903');
DELETE FROM smart_scripts WHERE entryorguid IN (36903) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (36903, 0, 2, 0, 19, 0, 100, 0, 24430, 0, 0, 0, 12, 369000, 2, 600000, 0, 0, 0, 8, 0, 0, 0, 3004,-4141,102,3.49, 'Summon Mob');

delete FROM creature_template WHERE entry = 369000;
insert into `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) values
('369000','0','0','0','0','0','29313','0','0','0','Grounded Wind Rider','','vehichleCursor','0','1','1','0','35','35','0','1','1.14286','1','0','3.8','3.8','0','46','1','0','0','1','0','0','0','0','0','0','0','1.9','1.9','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','0','0','0','0','0','0','0','140','1','0','0','0','','1');

update creature_template set speed_run = 2, speed_walk = 2, minlevel = 20, maxlevel = 20, vehicleid = 165, inhabittype = 4, npcflag = 16777216, spell1 = 37859, spell2 = 43800, health_mod = 50 where entry = 369000;

INSERT IGNORE INTO npc_spellclick_spells (npc_entry,spell_id,cast_flags) VALUES 
(369000,60968,1);

delete from creature_template_addon where entry = 369000;
insert into creature_template_addon (entry,auras) values
(369000,60534);

delete FROM creature WHERE id = 36890;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('36890','1','1','1','29642','36890','2898.67','-4310.21','132.868','1.29154','600','0','0','1668','0','0','0','0','0'),
('36890','1','1','1','29642','36890','2736.22','-4258.58','133.815','4.39823','600','0','0','1668','0','0','0','0','0'),
('36890','1','1','1','29642','36890','2814.49','-4279.69','131.603','5.20108','600','0','0','1668','0','0','0','0','0'),
('36890','1','1','1','0','36890','2692.79','-4005.56','107.831','5.82264','300','0','0','1668','0','0','0','0','0'),
('36890','1','1','1','0','36890','2687.43','-4016.35','108.084','5.82264','300','0','0','1668','0','0','0','0','0'),
('36890','1','1','1','0','36890','2754.52','-3837.68','97.1087','1.83596','300','0','0','1668','0','0','0','0','0'),
('36890','1','1','1','0','36890','2856.53','-4004.69','142.866','2.56717','300','0','0','1668','0','0','0','0','0'),
('36890','1','1','1','0','36890','2739.18','-4097','150.106','6.10695','300','0','0','1668','0','0','0','0','0');

update creature_template set faction_a = 190, faction_h = 190, modelid1 = 11686, modelid2 = 11686 where entry = 36906;

delete FROM creature WHERE id = 36906;
insert into `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) values
('36906','1','1','1','0','0','2737.37','-3898.7','95.998','2.52396','300','0','0','168','0','0','0','0','0'),
('36906','1','1','1','0','0','2739.01','-3900.09','124.723','2.31819','300','0','0','168','0','0','0','0','0'),
('36906','1','1','1','0','0','2712.57','-3882.98','123.025','2.62921','300','0','0','168','0','0','0','0','0'),
('36906','1','1','1','0','0','2723.21','-3866.37','124.775','0.68456','300','0','0','168','0','0','0','0','0'),
('36906','1','1','1','0','0','2702.65','-3900.89','124.821','4.21492','300','0','0','168','0','0','0','0','0'),
('36906','1','1','1','0','0','2693.61','-3871.27','122.726','2.62999','300','0','0','168','0','0','0','0','0');
update creature set spawntimesecs = 1 where id = 36906;

-- Quest 14471 First Degree Mortar
update creature_template set vehicleid = 116, minlevel = 16, maxlevel = 16, speed_walk = 0.5, speed_run = 0.5, npcflag = 16777216, spell1 = 69280, health_mod = 8 where entry = 36768;

INSERT IGNORE INTO npc_spellclick_spells (npc_entry,spell_id,cast_flags) VALUES 
(36768,60968,1);

UPDATE `creature` SET `phaseMask`='2' WHERE (`id`='6196');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36746');
DELETE FROM smart_scripts WHERE entryorguid IN (36746) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (36746, 0, 1, 0, 19, 0, 100, 0, 14471, 0, 0, 0, 75, 59073, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0,0,0,0, 'Cast spell phase 2');
INSERT INTO `smart_scripts` VALUES (36746, 0, 2, 0, 19, 0, 100, 0, 14471, 0, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 3253,-5096,128.72,4.88, 'Teleport player');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36768');
DELETE FROM smart_scripts WHERE entryorguid IN (36768) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (36768, 0, 1, 0, 28, 0, 100, 0, 500, 1000, 0, 0, 28, 59073, 32, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0,'Remove spell phase 2');

UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='6196');
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='6196');

DELETE FROM creature WHERE id IN (36768) AND phaseMask = 2;
INSERT INTO `creature` VALUES (null, 36768, 1, 1, 2, 0, 0, 3253.46, -5098.87, 128.976, 4.67748, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36768, 1, 1, 2, 0, 0, 3271.14, -5093.73, 129.852, 4.67748, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36768, 1, 1, 2, 0, 0, 3265.61, -5090.12, 129.731, 5.13127, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36768, 1, 1, 2, 0, 0, 3263.18, -5090.89, 129.765, 4.86947, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36768, 1, 1, 2, 0, 0, 3251.71, -5093.61, 129.112, 4.29351, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36768, 1, 1, 2, 0, 0, 3260.61, -5090.67, 129.816, 4.41568, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36768, 1, 1, 2, 0, 0, 3257.12, -5089.61, 129.603, 4.10152, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36768, 1, 1, 2, 0, 0, 3246.36, -5090.97, 129.854, 4.55531, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36768, 1, 1, 2, 0, 0, 3254.84, -5087.93, 129.614, 4.04916, 120, 0, 0, 1, 0, 0, 0, 0, 0);

-- Quest 14485 Ticker Required
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='36895');
DELETE FROM smart_scripts WHERE entryorguid IN (36895) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (36895, 0, 2, 0, 19, 0, 100, 0, 14485, 0, 0, 0, 12, 367500, 2, 600000, 0, 0, 0, 8, 0, 0, 0, 3736,-5273,83.56,3.61, 'Summon Mob');

DELETE FROM creature_template WHERE entry = 367500;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('367500','0','0','0','0','0','11686','0','0','0','Summoner Ticker','','','0','3','3','0','35','35','0','1','1.14286','1','0','2','2','0','24','1','0','0','1','33554432','8','0','0','0','0','0','1','1','0','10','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','0','','12340');

UPDATE creature_template SET ainame = "SmartAI", faction_a = 35, faction_h = 35 WHERE entry IN (367500);
DELETE FROM smart_scripts WHERE entryorguid IN (367500) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(367500,0,0,0,1,0,100,1,200,210,0,0,85,69314,7,0,0,0,0,21,20,0,0,0,0,0,0,"summon ticker"),
(367500,0,1,0,1,0,100,1,200,210,0,0,86,69314,7,21,20,0,0,21,20,0,0,0,0,0,0,"summon ticker"),
(367500,0,2,0,1,0,100,0,11300,11410,2000,2100,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"crepa");

update creature_template set scriptname = '', ainame = "SmartAI", mindmg = 200, maxdmg = 220, attackpower = 210, dmg_multiplier = 6 where entry = 36750;

DELETE FROM smart_scripts WHERE entryorguid IN (36750) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36750,0,1,2,1,0,100,0,1000,1100,20000,20100,11,60080,0,0,0,0,0,19,36843,10,0,0,0,0,0,"esplosione"),
(36750,0,2,0,61,0,100,0,0,0,0,0,51,0,0,0,0,0,0,11,36843,10,0,0,0,0,0,"esplosione");

update creature_template set scriptname = '', ainame = "SmartAI" where entry = 36843;
DELETE FROM smart_scripts WHERE entryorguid IN (36843) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(36843,0,1,0,6,0,100,0,0,0,0,0,33,36843,0,0,0,0,0,18,30,0,0,0,0,0,0,"credit");
-- Fix Bunny was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='36843');

delete FROM creature WHERE id = 36843;
INSERT INTO `creature` VALUES (null, 36843, 1, 1, 1, 0, 0, 3481.55, -5247.53, 91.4538, 4.86161, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36843, 1, 1, 1, 0, 0, 3587.92, -5055.36, 89.9284, 1.08298, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36843, 1, 1, 1, 0, 0, 3606.12, -5263.09, 91.6062, 4.82233, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36843, 1, 1, 1, 0, 0, 3631.08, -5354.74, 111.547, 0.360835, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36843, 1, 1, 1, 0, 0, 3543.6, -5324.62, 134.253, 1.4089, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36843, 1, 1, 1, 0, 0, 3445.73, -5365.56, 111.545, 4.40259, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36843, 1, 1, 1, 0, 0, 3452.29, -5155.21, 83.4671, 1.88783, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36843, 1, 1, 1, 0, 0, 3276.31, -5252.66, 86.1584, 5.02654, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36843, 1, 1, 1, 0, 0, 3208.37, -5348.92, 89.1902, 5.647, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 36843, 1, 1, 1, 0, 0, 3176.37, -5505.02, 102.904, 4.49466, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 26335 Ready the Navy CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26337' WHERE (`Id`='26335');
UPDATE `quest_template` SET `PrevQuestId`='26335' WHERE (`Id`='26337');

-- Quest 26337 Beating the Market
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42777');
UPDATE `creature_template` SET `gossip_menu_id`='42777' WHERE (`entry`='42777');
delete from gossip_menu_option where menu_id = 42777;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(42777,0,"Nobody shorts Garrosh Hellscream. You finish those ships - and finish them right - or this get personal",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (42777) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(42777, 0, 1, 2, 62, 0, 100, 0, 42777, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mob change faction'),
(42777, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42777, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(42777, 0, 4, 0,  6, 0, 100, 0, 0, 0, 0, 0, 33, 42798, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0,"Credit after death");

DELETE FROM `creature_text` WHERE (`entry`='42777') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42777','1','0','Nobody tell me how to run my business here.','12','0','100','0','0','0','Enrage');
DELETE FROM `conditions` WHERE (`ConditionValue1`='26337');
INSERT INTO `conditions` VALUES (15, 42777, 0, 0, 0, 9, 0, 26337, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 28717 Warchief's Command: Twilight Highlands! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26293' WHERE (`Id`='28717');
UPDATE `quest_template` SET `NextQuestIdChain`='26294' WHERE (`Id`='26293');
UPDATE `quest_template` SET `NextQuestIdChain`='26324' WHERE (`Id`='26294');
UPDATE `quest_template` SET `NextQuestIdChain`='26374' WHERE (`Id`='26324');
UPDATE `quest_template` SET `PrevQuestId`='28717' WHERE (`Id`='26293');
UPDATE `quest_template` SET `PrevQuestId`='26293' WHERE (`Id`='26294');
UPDATE `quest_template` SET `PrevQuestId`='26294' WHERE (`Id`='26324');
UPDATE `quest_template` SET `PrevQuestId`='26324' WHERE (`Id`='26374');

-- Quest 26374 Ready the Ground Troops
UPDATE `creature_template` SET `AIName`='SmartAI',`npcflag`='1' WHERE (`entry`='42646');
UPDATE `creature_template` SET `gossip_menu_id`='42646' WHERE (`entry`='42646');
delete from gossip_menu_option where menu_id = 42646;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(42646,0,"AWOOOOOL",1,1);
DELETE FROM smart_scripts WHERE entryorguid IN (42646) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(42646, 0, 1, 2, 62, 0, 100, 0, 42646, 0, 0, 0, 27, 42646, 80017, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Player scream'),
(42646, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0,  1, 1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42646, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(42646, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 33, 42893, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0,"Credit"),
(42646, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

DELETE FROM `creature_text` WHERE (`entry`='42646') AND (`groupid`='1');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42646','1','0','Please don t tell the Warlord...','12','0','100','0','0','0','Frase');
DELETE FROM `conditions` WHERE (`ConditionValue1`='26374');
INSERT INTO `conditions` VALUES (15, 42646, 0, 0, 0, 9, 0, 26374, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 26358 Ready the Air Force CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26361' WHERE (`Id`='26358');
UPDATE `quest_template` SET `NextQuestIdChain`='26372' WHERE (`Id`='26361');
UPDATE `quest_template` SET `NextQuestIdChain`='26388' WHERE (`Id`='26372');
UPDATE `quest_template` SET `NextQuestIdChain`='26388' WHERE (`Id`='28849');
UPDATE `quest_template` SET `NextQuestIdChain`='26539' WHERE (`Id`='26388');
UPDATE `quest_template` SET `NextQuestIdChain`='26549' WHERE (`Id`='26539');
UPDATE `quest_template` SET `NextQuestIdChain`='26608' WHERE (`Id`='26549');
UPDATE `quest_template` SET `PrevQuestId`='26358' WHERE (`Id`='26361');
UPDATE `quest_template` SET `PrevQuestId`='26361' WHERE (`Id`='26372');
UPDATE `quest_template` SET `PrevQuestId`='26361' WHERE (`Id`='28849');
UPDATE `quest_template` SET `PrevQuestId`='26372' WHERE (`Id`='26388');
UPDATE `quest_template` SET `PrevQuestId`='26388' WHERE (`Id`='26539');
UPDATE `quest_template` SET `PrevQuestId`='26539' WHERE (`Id`='26549');
UPDATE `quest_template` SET `PrevQuestId`='26549' WHERE (`Id`='26608');

-- Quest 26361 Smoot's Samophlange
DELETE FROM `gameobject` WHERE (`id`='207259');
INSERT INTO `gameobject` VALUES (null, 207259, 1, 1, 1, 3594.17, -6494.55, 27.2118, 5.67734, 0, 0, 0.29831, -0.954469, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207259, 1, 1, 1, 3517.31, -6430.55, 20.3568, 3.22293, 0, 0, 0.999173, -0.0406586, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207259, 1, 1, 1, 3565.9, -6408.21, 16.13, 3.90231, 0, 0, 0.928532, -0.371253, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207259, 1, 1, 1, 3616.06, -6380, 0.755146, 2.13909, 0, 0, 0.876982, 0.480523, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207259, 1, 1, 1, 3583.03, -6455.4, 20.5082, 3.90625, 0, 0, 0.927798, -0.373083, 300, 0, 1);

-- Quest 28849 Twilight Skies
DELETE FROM `creature` WHERE (`id`='50367');
INSERT INTO `creature` VALUES (null, 50367, 1, 1, 1, 0, 0, 2663.29, -6168.45, 100.515, 2.56316, 300, 0, 0, 579, 0, 0, 0, 0, 0);

-- Quest 26388 Twilight Skies
DELETE FROM `creature` WHERE (`id`='42978');
INSERT INTO `creature` VALUES (null, 42978, 0, 1, 1, 0, 0, -3814.66, -6632.6, 14.8049, 5.17404, 600, 0, 0, 46, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='50367');
DELETE FROM smart_scripts WHERE entryorguid IN (50367) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (50367, 0, 1, 0, 19, 0, 100, 0, 26388, 0, 0, 0, 33, 42977, 0, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0, 0,"Credit");
INSERT INTO `smart_scripts` VALUES (50367, 0, 2, 0, 19, 0, 100, 0, 26388, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -3817,-6637,13.5,1, 'Teleport player');

-- Quest 25243 She Loves Me, She Loves Me NOT! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25251' WHERE (`Id`='25243');
UPDATE `quest_template` SET `NextQuestIdChain`='25251' WHERE (`Id`='25244');
UPDATE `quest_template` SET `NextQuestIdChain`='25265' WHERE (`Id`='25251');
UPDATE `quest_template` SET `NextQuestIdChain`='25266' WHERE (`Id`='25265');
UPDATE `quest_template` SET `NextQuestIdChain`='25267' WHERE (`Id`='25266');
UPDATE `quest_template` SET `NextQuestIdChain`='25275' WHERE (`Id`='25267');
UPDATE `quest_template` SET `NextQuestIdChain`='14129' WHERE (`Id`='25275');
UPDATE `quest_template` SET `NextQuestIdChain`='14129' WHERE (`Id`='28496');
UPDATE `quest_template` SET `NextQuestIdChain`='14134' WHERE (`Id`='14129');
UPDATE `quest_template` SET `NextQuestIdChain`='14135' WHERE (`Id`='14134');
UPDATE `quest_template` SET `NextQuestIdChain`='14146' WHERE (`Id`='14135');
UPDATE `quest_template` SET `NextQuestIdChain`='14155' WHERE (`Id`='14146');
UPDATE `quest_template` SET `PrevQuestId`='25243' WHERE (`Id`='25251');
UPDATE `quest_template` SET `PrevQuestId`='25251' WHERE (`Id`='25265');
UPDATE `quest_template` SET `PrevQuestId`='25265' WHERE (`Id`='25266');
UPDATE `quest_template` SET `PrevQuestId`='25266' WHERE (`Id`='25267');
UPDATE `quest_template` SET `PrevQuestId`='25267' WHERE (`Id`='25275');
UPDATE `quest_template` SET `PrevQuestId`='25267' WHERE (`Id`='28496');
UPDATE `quest_template` SET `PrevQuestId`='25275' WHERE (`Id`='14129');
UPDATE `quest_template` SET `PrevQuestId`='14129' WHERE (`Id`='14134');
UPDATE `quest_template` SET `PrevQuestId`='14134' WHERE (`Id`='14135');
UPDATE `quest_template` SET `PrevQuestId`='14135' WHERE (`Id`='14146');
UPDATE `quest_template` SET `PrevQuestId`='14146' WHERE (`Id`='14155');

-- Quest 14134 The Captain's Logs
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='14134');
DELETE FROM `gameobject_template` WHERE (`entry`='1953610');
INSERT INTO `gameobject_template` VALUES (1953610, 3, 289, 'Azshara Lumber Pile', '', 'Collecting', '', 35, 0, 2.5, 47050, 0, 0, 0, 0, 0, 43, 1953610, 30, 1, 0, 0, 0, 1953610, 14134, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `gameobject_loot_template` WHERE (`entry`='1953610') AND (`item`='47050');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1953610', '47050', '-100');
UPDATE `gameobject` SET `id`='1953610' WHERE (`id`='195361');

-- Quest 14135 Up a Tree
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='14135');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='35149');
DELETE FROM `creature` WHERE (`id`='35149');
INSERT INTO `creature` VALUES (null, 35149, 1, 1, 1, 0, 0, 2631.54, -5043.72, 121.414, 1.61641, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 35149, 1, 1, 1, 0, 0, 2732.83, -5089.08, 120.992, 2.6767, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 35149, 1, 1, 1, 0, 0, 2664.98, -5094.16, 120.232, 3.04583, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 35149, 1, 1, 1, 0, 0, 2583.8, -5126.12, 115.537, 0.51685, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 35149, 1, 1, 1, 0, 0, 2540.17, -5114.71, 118.498, 0.744618, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 35149, 1, 1, 1, 0, 0, 2558.92, -5036.72, 122.23, 5.82222, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 35149, 1, 1, 1, 0, 0, 2590.33, -5056.89, 120.535, 2.45286, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 35149, 1, 1, 1, 0, 0, 2629.18, -5101.42, 120.53, 1.02344, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 35149, 1, 1, 1, 0, 0, 2500.44, -5092.62, 126.952, 1.01951, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 35149, 1, 1, 1, 0, 0, 2464.72, -5111.05, 134.776, 5.89291, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 14146 Defend the Gates!
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='14146');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='35177');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='35086');
DELETE FROM `creature_involvedrelation` WHERE (`id`='35086') AND (`quest`='14146');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('35086', '14146');
DELETE FROM `creature_questrelation` WHERE (`id`='35086') AND (`quest`='14155');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('35086', '14155');
DELETE FROM smart_scripts WHERE entryorguid IN (35086) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (35086, 0, 1, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2571.47,-4889.21,140.304,2.60778, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 2, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2577.81,-4871.67,138.105,3.17719, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 3, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2559.91,-4875.77,142.706,2.73344, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 4, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2566.90,-4864.28,141.488,2.92979, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 5, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2583.57,-4888.85,135.719,2.54495, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 6, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2589.45,-4873.24,134.980,2.85125, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 7, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2586.74,-4896.08,134.304,2.18366, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 8, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2598.18,-4878.74,132.350,3.03582, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 9, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2561.59,-4895.21,147.499,1.97946, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 10, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2552.88,-4889.35,146.958,1.55142, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 11, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2586.25,-4847.38,144.367,3.53062, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 12, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2573.85,-4832.83,145.589,4.37885, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 13, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2565.01,-4824.46,147.831,4.44168, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 14, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2536.38,-4889.45,152.938,1.09982, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 15, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2551.10,-4898.26,148.249,1.59461, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 16, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2562.36,-4910.69,148.203,1.81453, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 17, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2606.46,-4877.33,130.829,2.92979, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 18, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2593.01,-4895.19,132.273,2.49782, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 19, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2576.80,-4905.06,139.032,2.16010, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 20, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2596.27,-4857.92,146.142,2.96515, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 21, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2607.52,-4906.55,137.137,2.17975, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 22, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2607.85,-4899.37,136.639,2.60779, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (35086, 0, 23, 0, 19, 0, 100, 0, 14146, 0, 0, 0, 12, 35177, 2, 8000000, 0, 0, 0, 8, 0, 0, 0, 2623.65,-4913.06,132.686,2.41144, 'Summon mob');

-- Quest 14155 Arborcide 
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='35198');

-- Quest 24478 The Trial of Frost REMOVED
DELETE FROM `creature_questrelation` WHERE (`id`='36361') AND (`quest`='24478');

-- Quest 24479 The Trial of Shadow REMOVED
DELETE FROM `creature_questrelation` WHERE (`id`='36361') AND (`quest`='24479');
