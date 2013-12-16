-- Quest 28428 A Perfect Costume CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28433' WHERE (`Id`='28432');
UPDATE `quest_template` SET `NextQuestIdChain`='28434' WHERE (`Id`='28433');
UPDATE `quest_template` SET `NextQuestIdChain`='28436' WHERE (`Id`='28434');
UPDATE `quest_template` SET `NextQuestIdChain`='28436' WHERE (`Id`='28435');
UPDATE `quest_template` SET `NextQuestIdChain`='28437' WHERE (`Id`='28436');
UPDATE `quest_template` SET `NextQuestIdChain`='28438' WHERE (`Id`='28437');
UPDATE `quest_template` SET `NextQuestIdChain`='28439' WHERE (`Id`='28438');
UPDATE `quest_template` SET `PrevQuestId`='28432' WHERE (`Id`='28433');
UPDATE `quest_template` SET `PrevQuestId`='28433' WHERE (`Id`='28434');
UPDATE `quest_template` SET `PrevQuestId`='28433' WHERE (`Id`='28435');
UPDATE `quest_template` SET `PrevQuestId`='28434' WHERE (`Id`='28436');
UPDATE `quest_template` SET `PrevQuestId`='28436' WHERE (`Id`='28437');
UPDATE `quest_template` SET `PrevQuestId`='28437' WHERE (`Id`='28438');
UPDATE `quest_template` SET `PrevQuestId`='28438' WHERE (`Id`='28439');

-- Quest 28428 A Perfect Costume
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48001');
UPDATE `creature_template` SET `gossip_menu_id`='48001' WHERE (`entry`='48001');

delete from gossip_menu_option where menu_id = 48001;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(48001,0,"I brought you some hides, mud and thread",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (48001) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(48001,0,1,2,62,0,100,0,48001,0,0,0,33,47910,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(48001,0,2,5,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(48001,0,5,0,61,0,100,0,0,0,0,0,56,63357,1,0,0,0,0,21,2,0,0,0,0,0,0,"Add item quest");

DELETE FROM `creature` WHERE (`id`='48568');
INSERT INTO `creature` VALUES (null, 48568, 0, 1, 1, 0, 0, -7921.57, -1871.71, 132.42, 4.31312, 300, 0, 0, 122820, 0, 0, 0, 0, 0);

-- Quest 28432 Into the Black Tooth Hovel
DELETE FROM `item_template` WHERE (`entry`='63357');
INSERT INTO `item_template` VALUES (63357, 12, 0, -1, 'Blackrock Disguise', 66098, 1, 65600, 0, 1, 1, 1, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45091, 0, NULL, 1000, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `spell_linked_spell` WHERE (`spell_effect`='97097');
INSERT INTO `spell_linked_spell` VALUES (45091, 97097, 0, 'when use mask u are friendly with mobs');

-- Some wrong race required 
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28245');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28252');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28181');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28182');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28183');

-- Quest 28435 The Kodocaller's Horn
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='28435');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48111');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='48111');
INSERT INTO `smart_scripts` VALUES (48111, 0, 1, 2, 8, 0, 100, 0, 89477, 0, 0, 0, 33, 48112, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'credit quest');
INSERT INTO `smart_scripts` VALUES (48111, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');
DELETE FROM `creature_involvedrelation` WHERE (`id`='48085') AND (`quest`='28435');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('48085', '28435');

-- Quest 28434 Strategic Cuts
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='28434');

-- Quest 28266 Trial by Magma
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28266');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='48156');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='48156');

-- Quest 28278 I Am the Law and I Am the Lash
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28278');

-- Quest 28439 I Am the Law and I Am the Lash
DELETE FROM `item_template` WHERE (`entry`='633902');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `delay`, `spellid_1`, `bonding`, `Material`) VALUES ('633902', '12', 'Blackrock Cudgel of Discipline', '15473', '1', '0', '0', '0', '89568', '4', '4');
UPDATE `quest_template` SET `SourceItemId`='633902' WHERE (`Id`='28439');
DELETE FROM `conditions` WHERE (`SourceEntry`='89568');
INSERT INTO `conditions` VALUES (17, 0, 89568, 0, 0, 29, 0, 48121, 35, 0, 0, 0, 0, '', 'Spell can be used only near quest target');

-- Quest 28440 Abuse of Power CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28441' WHERE (`Id`='28440');
UPDATE `quest_template` SET `NextQuestIdChain`='28442' WHERE (`Id`='28441');
UPDATE `quest_template` SET `NextQuestIdChain`='28491' WHERE (`Id`='28442');
UPDATE `quest_template` SET `PrevQuestId`='28440' WHERE (`Id`='28441');
UPDATE `quest_template` SET `PrevQuestId`='28441' WHERE (`Id`='28442');
UPDATE `quest_template` SET `PrevQuestId`='28442' WHERE (`Id`='28491');

-- Quest 28440 Abuse of Power
UPDATE `quest_template` SET `Flags`='0', `RequiredNpcOrGo1`='48201' WHERE (`Id`='28440');

-- Quest 28491 Not Fireflies, Flameflies
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='48671');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('48671', '90672', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='48671');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='90672');
INSERT INTO `spell_linked_spell` VALUES (90672, 58178, 0, 'no comment');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='48671');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='48671');
INSERT INTO `smart_scripts` VALUES (48671, 0, 1, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Quest 27444 The False Warchief
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='10429');

-- Quest 28446 Blood Tourm
DELETE FROM `creature` WHERE (`id`='48569');
INSERT INTO `creature` VALUES (null, 48569, 0, 1, 1, 0, 0, -7502.27, -2191.93, 165.387, 2.1904, 300, 0, 0, 840, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='48565');
INSERT INTO `creature` VALUES (null, 48565, 0, 1, 1, 0, 0, -7498.05, -2189.35, 165.586, 2.29643, 300, 0, 0, 84, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='48567');
INSERT INTO `creature` VALUES (null, 48567, 0, 1, 1, 0, 0, -7630.29, -2868.3, 134.173, 3.93193, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48567, 0, 1, 1, 0, 0, -8253.28, -2509.67, 141.725, 5.93365, 300, 0, 0, 84, 0, 0, 0, 0, 0);

-- Quest 28454 Assault on Dreadmaul Rock CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28455' WHERE (`Id`='28454');
UPDATE `quest_template` SET `NextQuestIdChain`='28456' WHERE (`Id`='28455');
UPDATE `quest_template` SET `PrevQuestId`='28454' WHERE (`Id`='28455');
UPDATE `quest_template` SET `PrevQuestId`='28455' WHERE (`Id`='28456');

-- Quest 28454 Assault on Dreadmaul Rock
UPDATE creature_template SET scriptname = '', vehicleid = 156, npcflag = 16777216, `spell1`='90067', inhabittype = 5 WHERE entry IN (48434);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='48434');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('48434', '108582', '1');
UPDATE `creature_template` SET `MovementType`='199' WHERE (`entry`='48434');
update creature_template set faction_a = 14, faction_h = 14, KillCredit1 = 48432 where entry = 42937;
update creature_template set faction_a = 14, faction_h = 14, KillCredit1 = 48432 where entry = 43775;
update creature_template set faction_a = 14, faction_h = 14, KillCredit1 = 48432 where entry = 43786;
update creature_template set faction_a = 14, faction_h = 14, KillCredit1 = 48432 where entry = 48414;

DELETE FROM `creature_template_addon` WHERE (`entry`='48434');
INSERT INTO `creature_template_addon` VALUES (48434, 0, 0, 50331648, 1, 0, '53112');

DELETE FROM `creature` WHERE (`id`='42937');
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8884.96, -358.26, 73.4407, 4.68722, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8859.16, -380.26, 74.0383, 6.17528, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8919.74, -355.934, 73.4971, 5.71963, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8974.94, -329.559, 72.0654, 1.48002, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8942.75, -369.804, 72.6664, 3.19549, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8881.28, -422.945, 68.5118, 0.349533, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8922.14, -452.587, 77.6899, 0.773744, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8973.7, -357.171, 73.6971, 0.589818, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8972.41, -390.848, 72.6386, 3.59522, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8995.4, -337.834, 74.2349, 5.00453, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8994.06, -393.684, 73.2327, 3.0103, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9041.98, -447.693, 72.5868, 1.73489, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8988.65, -414.034, 74.6524, 0.906558, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -8997.06, -362.795, 74.3971, 0.755133, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9023.09, -363.379, 75.3783, 1.15438, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9031.23, -372.202, 75.5186, 2.88913, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9028.19, -394.742, 73.9478, 6.14732, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9045.35, -421.535, 71.3795, 1.97072, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9112.35, -407.603, 74.3771, 1.9838, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9088.1, -406.623, 74.3791, 3.87568, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9042.89, -350.913, 73.6644, 1.83733, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9056.6, -328.997, 73.5767, 2.60606, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9033.04, -310.81, 73.9983, 0.945009, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9036.84, -331.206, 73.5767, 4.59854, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9021.58, -311.444, 74.169, 2.13042, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9126.3, -380.331, 73.593, 3.53466, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9137.24, -354.507, 73.1659, 2.7027, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9106.95, -346.862, 73.4747, 3.54273, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9073.3, -356.706, 73.5757, 4.02177, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9088.92, -357.135, 73.5757, 3.27389, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9072.4, -373.767, 73.5047, 5.81697, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9057.45, -309.775, 73.5767, 1.04755, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9139.16, -325.578, 73.1844, 4.87692, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9118.87, -304.651, 73.6346, 1.52264, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9074.01, -321.503, 73.4716, 4.013, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9094.14, -326.895, 73.4716, 3.49341, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9079.7, -337.756, 73.5757, 4.41281, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9081.66, -309.193, 73.4716, 4.47183, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9113.01, -330.78, 73.2596, 4.28137, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9054.99, -263.118, 74.5442, 6.14082, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9116.24, -265.209, 74.3689, 4.87903, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9092.43, -243.854, 74.9618, 2.52015, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9029.03, -274.965, 74.4195, 2.45207, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9057.03, -293.515, 73.4922, 0.192016, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9077.6, -289.584, 73.6106, 1.04197, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 0, -9103.18, -219.25, 73.3668, 6.20043, 120, 0, 0, 1, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8126.42, -2640.44, 133.439, 0.498226, 300, 0, 0, 71, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8134.74, -2642.1, 133.439, 0.148719, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8142.6, -2643.74, 133.439, 0.148719, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8142.04, -2647.8, 133.439, 0.136938, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8134.59, -2646.78, 133.439, 0.136938, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8125.46, -2645.52, 133.439, 0.136938, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8124.78, -2655.51, 133.439, 0.151158, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8135.17, -2655.84, 133.439, 0.0608372, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8142.48, -2656.3, 133.439, 6.28119, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8075.75, -2542.64, 136.106, 4.98134, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8083.71, -2546.49, 135.782, 5.12271, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8089.1, -2552.49, 136.186, 4.97348, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8084.4, -2481.2, 137.388, 3.76791, 300, 0, 0, 71, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8081.58, -2479.6, 137.07, 3.548, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8086.68, -2472.86, 136.368, 3.92499, 300, 0, 0, 71, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8093.95, -2463.45, 137.864, 3.87787, 300, 0, 0, 71, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8088.11, -2462.83, 136.51, 4.14883, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8078.69, -2471.66, 135.74, 3.74436, 300, 0, 0, 86, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42937, 0, 1, 1, 0, 42937, -8078.24, -2477.49, 136.676, 3.72473, 300, 0, 0, 71, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='43775');
INSERT INTO `creature` VALUES (null, 43775, 0, 1, 1, 0, 0, -8142.73, -2652.04, 133.439, 6.26548, 300, 0, 0, 1930, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43775, 0, 1, 1, 0, 0, -8131.19, -2641.43, 133.439, 0.0647607, 300, 0, 0, 2085, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43775, 0, 1, 1, 0, 0, -8081.33, -2542.11, 135.338, 5.46043, 300, 0, 0, 2085, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43775, 0, 1, 1, 0, 0, -8088.94, -2547.03, 135.374, 5.18554, 300, 0, 0, 2085, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43775, 0, 1, 1, 0, 0, -8074.13, -2537.01, 135.617, 4.76928, 300, 0, 0, 1930, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43775, 0, 1, 1, 0, 0, -8075.61, -2556.61, 137.089, 2.15391, 300, 0, 0, 2085, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='43786');
INSERT INTO `creature` VALUES (null, 43786, 0, 1, 1, 0, 0, -8130.5, -2655.76, 133.439, 6.14373, 300, 0, 0, 210, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43786, 0, 1, 1, 0, 0, -8130.51, -2646.61, 133.439, 6.27332, 300, 0, 0, 210, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43786, 0, 1, 1, 0, 0, -8139.02, -2642.71, 133.439, 0.115793, 300, 0, 0, 210, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='48414');
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8138.69, -2647.2, 133.439, 6.23796, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8135.16, -2651.46, 133.439, 0.00582863, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8125.71, -2651.44, 133.439, 0.00190164, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8130.59, -2651.02, 133.439, 0.0215379, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8139.09, -2655.87, 133.439, 0.0215346, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8138.75, -2651.46, 133.439, 0.0804396, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8151.15, -2598.12, 136.661, 6.0534, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8158.21, -2609.15, 135.907, 3.93675, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8150.83, -2612.99, 135.213, 6.10837, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8163.68, -2593.9, 137.023, 1.44704, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8161.12, -2629.43, 133.775, 5.37404, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8118.46, -2573.51, 133.441, 1.01507, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8112.25, -2568.43, 133.391, 1.87901, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8088.25, -2557.03, 136.971, 5.51934, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8084.13, -2551.41, 136.508, 5.37797, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8078.18, -2547.22, 136.475, 5.17377, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8070.99, -2544.97, 136.833, 4.32947, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8086.79, -2541.58, 134.69, 5.09129, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8079.46, -2537.69, 134.87, 4.9028, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8092.71, -2543.9, 134.605, 5.19339, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8077.71, -2533.52, 134.704, 5.107, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8085.2, -2536.82, 134.127, 5.04024, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8090.88, -2540.77, 134.269, 5.05987, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8087.75, -2543.93, 134.987, 5.18554, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8079.97, -2544.76, 135.926, 5.37403, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8071.61, -2540.36, 136.333, 4.80462, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8116.52, -2556.28, 139.53, 5.13841, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8125.1, -2560.11, 148.251, 5.82956, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8118.9, -2570.81, 133.566, 5.03239, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8110.04, -2565.63, 134.514, 3.27701, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8089.59, -2482.91, 137.535, 3.79538, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8091.73, -2479.82, 137.158, 3.69721, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8094.24, -2476.6, 137.566, 3.76789, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8096.5, -2473.07, 137.917, 3.79931, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8099.49, -2470.49, 138.78, 4.03492, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8097.25, -2467.23, 138.538, 3.98387, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8094.83, -2469.53, 137.543, 3.92105, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8091.68, -2472.38, 136.994, 3.67757, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8088.73, -2475.19, 136.777, 3.91712, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8086.55, -2478.16, 136.738, 3.65795, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8076.25, -2475.69, 136.487, 3.45376, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8081.25, -2474.89, 136.417, 3.8661, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8084.3, -2476.59, 136.62, 3.54408, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8083.85, -2471.54, 136.026, 3.70902, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8081.82, -2469.02, 135.611, 3.76792, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8085.16, -2465.04, 135.656, 3.88966, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8087.48, -2467.01, 136.048, 3.84254, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8089.88, -2469.05, 136.438, 3.84646, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8091.89, -2466.49, 136.819, 3.77578, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8090.03, -2464.47, 136.697, 3.94071, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8091.47, -2461.93, 137.556, 3.74436, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8089.89, -2459.98, 137.156, 3.82683, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8101.71, -2482.61, 138.864, 0.700959, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8047.02, -2485.24, 133.032, 5.0717, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8041.32, -2490.2, 132.608, 2.95898, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8059.22, -2460.62, 135.854, 4.63973, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8054.26, -2469.13, 131.562, 2.08325, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7991.34, -2481.58, 134.169, 1.71804, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -7994.39, -2470.07, 133.964, 5.02849, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7997.24, -2471.17, 134.425, 5.22876, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8000.76, -2472.99, 135.032, 5.31515, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8004.32, -2475.36, 135.575, 5.37013, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8005.25, -2479.3, 135.227, 6.2105, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8005.02, -2483.66, 134.736, 0.206129, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8008.66, -2479.14, 135.343, 6.10447, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8008.32, -2483.46, 134.68, 6.23799, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8007.43, -2474.46, 135.816, 5.99451, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8011.92, -2483.93, 134.22, 6.21834, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8011.77, -2478.24, 135.158, 5.95131, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8009.83, -2473.21, 135.859, 6.00628, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8003.08, -2470.32, 135.51, 5.484, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7999.58, -2468.07, 134.765, 5.3387, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7995.54, -2467.23, 134.042, 4.89495, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7996.24, -2464.28, 133.899, 5.00491, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8001.01, -2465.39, 134.779, 5.27587, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8005.14, -2467.22, 135.596, 5.20125, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7996.1, -2474.43, 134.143, 5.16984, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8001.73, -2480.83, 134.759, 6.06519, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8039.38, -2441.29, 128.638, 5.37012, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8041.02, -2444.74, 129.059, 6.10446, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8039.33, -2450.07, 129.262, 0.744112, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8033.98, -2449.86, 128.987, 1.98111, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8032.28, -2445.35, 128.404, 3.26524, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8035.16, -2442.3, 128.372, 4.25484, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8043.14, -2447.13, 129.318, 0.0176091, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8042.68, -2443.24, 129.099, 0.0922214, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8036.74, -2451.63, 129.22, 1.52165, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8041.73, -2450.03, 129.344, 0.893327, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8034.19, -2452.15, 129.115, 1.67087, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8031.46, -2448.32, 128.628, 2.39736, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7975.36, -2423.71, 127.301, 1.55699, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7971.35, -2417.41, 126.837, 4.56507, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7975.5, -2417.32, 126.615, 4.85174, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7979.94, -2417.43, 126.495, 5.07165, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7982.51, -2418.19, 126.67, 5.05594, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7985.11, -2418.73, 126.956, 5.07557, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7971.14, -2413.71, 126.546, 4.56507, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -7975.79, -2414.03, 125.999, 4.69466, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7979.77, -2414.6, 125.712, 4.7732, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7983.17, -2415.38, 125.789, 4.89494, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7986.66, -2416.17, 125.937, 5.19732, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7971.1, -2410.54, 126.221, 4.66717, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -7975.62, -2410.62, 125.471, 4.62397, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7980.27, -2411.41, 124.876, 4.71429, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7984.03, -2412.5, 124.774, 5.00882, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7987.45, -2413.31, 124.832, 4.98132, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7971, -2407.02, 125.746, 4.34516, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7975.18, -2406.31, 124.948, 4.49438, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7980.15, -2407.6, 124.307, 4.77319, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -7985.06, -2408.56, 123.932, 4.98524, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7988.8, -2409.31, 123.865, 5.0088, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7916.53, -2428.41, 130.618, 3.49299, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7921.74, -2430.34, 131.559, 0.265, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7922.39, -2424.76, 130.478, 6.09266, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7925.67, -2427.33, 131.282, 6.22224, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7924.37, -2435.18, 132.829, 0.292485, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7919.8, -2435.83, 132.453, 0.68911, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7921.27, -2440.44, 133.292, 0.575223, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7924.77, -2438.95, 133.45, 0.535953, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7928.56, -2432.42, 132.557, 0.473121, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7928.6, -2424, 130.845, 6.08479, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7930.51, -2427.46, 131.37, 0.0568542, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7929.81, -2437.83, 133.559, 0.43384, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7927.42, -2441.32, 133.962, 0.355299, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7923.27, -2443.29, 133.839, 0.795121, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7934.23, -2431.01, 131.738, 0.0568465, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7932.97, -2423.33, 130.586, 5.95911, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7932.16, -2434.55, 132.898, 0.0961144, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7924.44, -2420.49, 129.791, 5.47217, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -7919.67, -2421.86, 129.518, 5.42505, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7928.48, -2420.23, 130.099, 5.6803, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7934.87, -2427.56, 131.002, 5.81382, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7885.76, -2483.83, 135.653, 1.34883, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7882.08, -2480.89, 134.785, 3.89352, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7890.43, -2481.54, 135.524, 5.64103, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7881.12, -2457.41, 134.408, 1.37238, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7881.87, -2454.5, 134.651, 5.03626, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7871.45, -2434.39, 137.069, 2.27951, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7874.2, -2430.34, 137.308, 5.41718, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -7875.73, -2434.3, 136.644, 0.374926, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7889.37, -2475.98, 134.533, 5.01663, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -7888.79, -2485.06, 136.219, 0.85794, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8131.25, -2498.8, 139.939, 3.87387, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8137.33, -2504.27, 139.939, 0.693009, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8135.22, -2506.46, 139.939, 0.838309, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8132.6, -2508.77, 139.943, 0.861871, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8140.36, -2501.66, 139.926, 0.555565, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8130.35, -2511.17, 139.992, 1.05036, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8143.16, -2504.6, 139.988, 0.771541, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8145.91, -2507.62, 140.068, 0.649809, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8149.05, -2510.91, 140.221, 0.838304, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8146.88, -2513.57, 139.973, 0.775473, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8143.21, -2510.01, 139.938, 0.736203, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8140.26, -2507.34, 139.938, 0.736203, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8143.61, -2517.34, 139.939, 0.787255, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8140.34, -2512.95, 139.939, 0.873649, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8137.85, -2510.17, 139.939, 0.893283, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8140.89, -2519.66, 139.945, 0.881495, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8135.23, -2512.84, 139.938, 0.869714, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8137.74, -2515.85, 139.938, 0.854004, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8138.19, -2521.88, 140.056, 1.00716, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8135.46, -2518.4, 139.938, 0.901127, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8132.99, -2515.29, 139.95, 0.901127, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8105.82, -2516.98, 143.131, 2.98636, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8107.08, -2511.85, 142.26, 4.58072, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8109.88, -2516.03, 143.13, 5.93945, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8108.9, -2520.95, 143.501, 0.940394, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8153.36, -2534.61, 140.096, 4.01523, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8162.17, -2536.73, 140.456, 0.936469, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8159.79, -2539.12, 139.753, 0.77939, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8156.37, -2542.49, 139.486, 1.16423, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8152.74, -2545.38, 139.668, 1.0582, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8150.21, -2546.81, 140.046, 0.810805, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8164.77, -2539.42, 140.017, 0.81473, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8161.96, -2542.29, 139.334, 0.826509, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8159.63, -2544.58, 139.144, 0.857924, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8155.92, -2547.06, 139.142, 1.2192, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8154.03, -2549.51, 138.999, 0.995367, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8167.01, -2541.64, 139.389, 0.751894, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8163.89, -2544.12, 138.975, 0.661569, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8160.85, -2547.24, 138.834, 0.889332, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8157.99, -2549.75, 138.766, 1.06604, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8155.21, -2552.21, 139.406, 0.85791, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8169.17, -2543.64, 138.603, 0.740101, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8166.33, -2546.51, 138.444, 0.763663, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8162.62, -2549.68, 138.447, 0.747956, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8159.9, -2552.56, 138.472, 0.755811, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8156.85, -2554.65, 140.136, 1.01499, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8141.12, -2556.53, 138.167, 4.42362, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8136.24, -2559.31, 137.407, 3.86207, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8146.55, -2561.53, 137.851, 5.97085, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8145.13, -2567.85, 136.708, 0.363109, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8140.24, -2570.5, 136.385, 0.952156, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8135.76, -2566.3, 136.482, 2.40514, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8140.26, -2563.39, 136.508, 2.60935, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8159.58, -2632.99, 133.579, 1.7454, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8157.57, -2630.01, 133.729, 2.95884, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8161.89, -2609.83, 135.817, 6.21824, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8160.03, -2613.75, 135.381, 0.75187, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8103.08, -2667.06, 133.649, 2.30695, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8108.95, -2672.23, 133.449, 0.787209, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 9710, 0, -8109.55, -2664.39, 133.442, 5.77056, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48414, 0, 1, 1, 0, 0, -8103.91, -2660.92, 133.449, 4.94983, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 28455 Glory Amidst Chaos
DELETE FROM `creature` WHERE (`id`='48314');
INSERT INTO `creature` VALUES (null, 48314, 0, 1, 1, 0, 0, -7901.55, -2644.32, 183.275, 5.53618, 300, 0, 0, 5502, 3728, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 48314, 0, 1, 1, 0, 0, -7976.09, -2673.44, 157.047, 5.41205, 300, 0, 0, 5502, 3728, 0, 0, 0, 0);

-- Quest 28456 The Spoils of War
UPDATE `gameobject_template` SET `faction`='35', `flags`='0' WHERE (`entry`='207125');

-- Quest 28443 Blackened Ashes
UPDATE `creature_template` SET `lootid`='7032' WHERE (`entry`='7032');
DELETE FROM `creature_loot_template` WHERE (`entry`='7032') AND (`item`='63421');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('7032', '63421', '-90');

-- Quest 28445 A Heap of Delicious Worg
DELETE FROM `conditions` WHERE (`SourceEntry`='89776');
INSERT INTO `conditions` VALUES (17, 0, 89776, 0, 0, 29, 0, 9697, 2, 0, 0, 0, 0, '', 'Spell can be used only near quest target');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='9697');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='9697');
INSERT INTO `smart_scripts` VALUES (9697, 0, 1, 2, 8, 0, 100, 0, 89776, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Fix gossip for some quest
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='3' WHERE (`entry`='48569');
UPDATE `creature_template` SET `gossip_menu_id`='48569' WHERE (`entry`='48569');

delete from gossip_menu_option where menu_id = 48569;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(48569,0,"I need a new Blackrock Disguise",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (48569) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(48569,0,1,2,62,0,100,0,48569,0,0,0,56,63357,1,0,0,0,0,21,2,0,0,0,0,0,0,"Add item quest"),
(48569,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip");

-- Quest 28444 Latent Demons of the Land
UPDATE `creature_template` SET `lootid`='9776' WHERE (`entry`='9776');
DELETE FROM `creature_loot_template` WHERE (`entry`='9776') AND (`item`='63423');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('9776', '63423', '-90');
UPDATE `creature_template` SET `lootid`='9778' WHERE (`entry`='9778');
DELETE FROM `creature_loot_template` WHERE (`entry`='9778') AND (`item`='63423');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('9778', '63423', '-90');
UPDATE `creature_template` SET `lootid`='9779' WHERE (`entry`='9779');
DELETE FROM `creature_loot_template` WHERE (`entry`='9779') AND (`item`='63423');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('9779', '63423', '-90');

-- Quest 28449 Placing the Pawns 
DELETE FROM `creature_questrelation` WHERE (`id`='48569') AND (`quest`='28449');
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES ('48569', '28449');

-- Quest 28225 Prove Yer Allegiance CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28227' WHERE (`Id`='28225');
UPDATE `quest_template` SET `NextQuestIdChain`='28227' WHERE (`Id`='28226');
UPDATE `quest_template` SET `PrevQuestId`='28225' WHERE (`Id`='28227');

-- Quest 28226 Scrapped Golems
UPDATE `creature_template` SET `lootid`='7039' WHERE (`entry`='7039');
DELETE FROM `creature_loot_template` WHERE (`entry`='7039') AND (`item`='63333');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('7039', '63333', '-55');
DELETE FROM `creature_loot_template` WHERE (`entry`='7039') AND (`item`='63334');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('7039', '63334', '-45');
DELETE FROM `creature_loot_template` WHERE (`entry`='7039') AND (`item`='63335');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('7039', '63335', '-55');
DELETE FROM `creature_loot_template` WHERE (`entry`='7039') AND (`item`='63336');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('7039', '63336', '-55');

-- Quest 28227 Golem Training
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='1' WHERE (`entry`='48037');
UPDATE `creature_template` SET `gossip_menu_id`='48037' WHERE (`entry`='48037');

delete from gossip_menu_option where menu_id = 48037;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(48037,0,"I'm here to help you with your combat training, golem.",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (48037) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(48037,0,1,2,62,0,100,0,48037,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Became hostile"),
(48037,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Close gossip");

DELETE FROM `conditions` WHERE (`ConditionValue1`='28227');
INSERT INTO `conditions` VALUES (15, 48037, 0, 0, 0, 9, 0, 28227, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

-- Quest 28172 Done Nothing Wrong (alliance)
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='28172');

-- Quest 28515 Mouton Flamestar CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28417' WHERE (`Id`='28515');
UPDATE `quest_template` SET `PrevQuestId`='28515' WHERE (`Id`='28417');

-- Quest 28515 Mouton Flamestar
DELETE FROM `creature` WHERE (`id`='14625');
INSERT INTO `creature` VALUES (null, 14625, 0, 1, 1, 14653, 0, -6501.13, -1173.36, 325.947, 2.30383, 500, 0, 0, 4120, 0, 0, 0, 0, 0);

-- Quest 28417 Done Nothing Wrong
-- Red Whelpling
UPDATE `creature_template` SET `equipment_id`='47820' WHERE (`entry`='47820');
UPDATE `creature_template` SET `equipment_id`='47814' WHERE (`entry`='47814');
UPDATE `creature_template` SET `equipment_id`='47821' WHERE (`entry`='47821');
UPDATE `creature_template` SET `equipment_id`='47822' WHERE (`entry`='47822');

DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='47814');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('47814', '90368', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='47814');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='90368');
INSERT INTO `spell_linked_spell` VALUES (90368, 58178, 0, 'trigger spell');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47814');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='47814');
INSERT INTO `smart_scripts` VALUES (47814, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 56,63114,1,0,0,0,0,21,2,0,0,0,0,0,0,"Add item quest");
INSERT INTO `smart_scripts` VALUES (47814, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Green Whelpling
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='47820');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('47820', '90369', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='47820');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='90369');
INSERT INTO `spell_linked_spell` VALUES (90369, 58178, 0, 'trigger spell');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47820');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='47820');
INSERT INTO `smart_scripts` VALUES (47820, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 56,63116,1,0,0,0,0,21,2,0,0,0,0,0,0,"Add item quest");
INSERT INTO `smart_scripts` VALUES (47820, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Green Whelpling
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='47821');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('47821', '90370', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='47821');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='90370');
INSERT INTO `spell_linked_spell` VALUES (90370, 58178, 0, 'trigger spell');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47821');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='47821');
INSERT INTO `smart_scripts` VALUES (47821, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 56,63117,1,0,0,0,0,21,2,0,0,0,0,0,0,"Add item quest");
INSERT INTO `smart_scripts` VALUES (47821, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Bronze Whelpling
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='47822');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('47822', '90371', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='47822');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='90371');
INSERT INTO `spell_linked_spell` VALUES (90371, 58178, 0, 'trigger spell');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='47822');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='47822');
INSERT INTO `smart_scripts` VALUES (47822, 0, 1, 2, 8, 0, 100, 0, 58178, 0, 0, 0, 56,63119,1,0,0,0,0,21,2,0,0,0,0,0,0,"Add item quest");
INSERT INTO `smart_scripts` VALUES (47822, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Fix Bunny - it was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='41200');

-- Quest 28069 Adventurers Wanted: Blackrock Depths
DELETE FROM `creature` WHERE (`id`='45823');
INSERT INTO `creature` VALUES (null, 45823, 230, 1, 1, 0, 0, 459.18, 17.897, -71.0148, 0.733167, 300, 0, 0, 3052, 0, 0, 0, 0, 0);

-- Quest 28419 Stocking Up CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28422' WHERE (`Id`='28419');
UPDATE `quest_template` SET `NextQuestIdChain`='28422' WHERE (`Id`='28420');
UPDATE `quest_template` SET `NextQuestIdChain`='28422' WHERE (`Id`='28421');
UPDATE `quest_template` SET `PrevQuestId`='28419' WHERE (`Id`='28422');

-- Quest 28419 Stocking Up
DELETE FROM `creature` WHERE (`id`='48559');
INSERT INTO `creature` VALUES (null, 48559, 0, 1, 1, 0, 0, -8067.76, -1013.41, 132.178, 2.29076, 300, 0, 0, 84, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `lootid`='9691' WHERE (`entry`='9691');
DELETE FROM `creature_loot_template` WHERE (`entry`='9691') AND (`item`='63135');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('9691', '63135', '-45');

-- Quest 28420 A Future Project
UPDATE `creature_template` SET `lootid`='9690' WHERE (`entry`='9690');
DELETE FROM `creature_loot_template` WHERE (`entry`='9690') AND (`item`='63136');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('9690', '63136', '-85');

-- Quest 28667 Warchief's Command: Burning Steppes! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28418' WHERE (`Id`='28667');
UPDATE `quest_template` SET `PrevQuestId`='28667' WHERE (`Id`='28418');

-- Quest 28423 Warlocks Have the Neatest Stuff CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28425' WHERE (`Id`='28423');
UPDATE `quest_template` SET `NextQuestIdChain`='28425' WHERE (`Id`='28424');
UPDATE `quest_template` SET `NextQuestIdChain`='28426' WHERE (`Id`='28425');
UPDATE `quest_template` SET `PrevQuestId`='28423' WHERE (`Id`='28425');
UPDATE `quest_template` SET `PrevQuestId`='28425' WHERE (`Id`='28426');

-- Quest 28423 Warlocks Have the Neatest Stuff
UPDATE `creature_template` SET `lootid`='7028' WHERE (`entry`='7028');
DELETE FROM `creature_loot_template` WHERE (`entry`='7028') AND (`item`='63134');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('7028', '63134', '-35');

-- Start with Alliance faction quest

-- Quest 28203 A Perfect Costume CHAIN TIMELINE FIX (Alliance)
UPDATE `quest_template` SET `NextQuestIdChain`='28245' WHERE (`Id`='28239');
UPDATE `quest_template` SET `NextQuestIdChain`='28246' WHERE (`Id`='28245');
UPDATE `quest_template` SET `NextQuestIdChain`='28253' WHERE (`Id`='28246');
UPDATE `quest_template` SET `NextQuestIdChain`='28253' WHERE (`Id`='28252');
UPDATE `quest_template` SET `NextQuestIdChain`='28265' WHERE (`Id`='28253');
UPDATE `quest_template` SET `NextQuestIdChain`='28266' WHERE (`Id`='28265');
UPDATE `quest_template` SET `NextQuestIdChain`='28278' WHERE (`Id`='28266');
UPDATE `quest_template` SET `PrevQuestId`='28239' WHERE (`Id`='28245');
UPDATE `quest_template` SET `PrevQuestId`='28245' WHERE (`Id`='28246');
UPDATE `quest_template` SET `PrevQuestId`='28245' WHERE (`Id`='28252');
UPDATE `quest_template` SET `PrevQuestId`='28246' WHERE (`Id`='28253');
UPDATE `quest_template` SET `PrevQuestId`='28253' WHERE (`Id`='28265');
UPDATE `quest_template` SET `PrevQuestId`='28265' WHERE (`Id`='28266');
UPDATE `quest_template` SET `PrevQuestId`='28266' WHERE (`Id`='28278');

-- Quest 28203 A Perfect Costume (alliance)
DELETE FROM `creature` WHERE (`id`='48109');
INSERT INTO `creature` VALUES (null, 48109, 0, 1, 1, 0, 0, -7954.89, -1924.88, 132.203, 6.22604, 300, 0, 0, 84, 0, 0, 0, 0, 0);

-- Quest 28252 The Kodocaller's Horn
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='28252');
DELETE FROM `creature_involvedrelation` WHERE (`id`='48085') AND (`quest`='28252');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('48085', '28252');

-- Quest 28246 Strategic Cuts
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='28246');

-- Quest 28279 Abuse of Power CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28286' WHERE (`Id`='28279');
UPDATE `quest_template` SET `NextQuestIdChain`='28310' WHERE (`Id`='28286');
UPDATE `quest_template` SET `NextQuestIdChain`='28415' WHERE (`Id`='28310');
UPDATE `quest_template` SET `PrevQuestId`='28279' WHERE (`Id`='28286');
UPDATE `quest_template` SET `PrevQuestId`='28286' WHERE (`Id`='28310');
UPDATE `quest_template` SET `PrevQuestId`='28310' WHERE (`Id`='28415');

-- Quest 28279 Abuse of Power
UPDATE `quest_template` SET `Flags`='0', `RequiredNpcOrGo1`='48201' WHERE (`Id`='28279');

-- Quest 28278 I Am the Law and I Am the Lash
UPDATE `quest_template` SET `SourceItemId`='633902' WHERE (`Id`='28278');

-- Some wrong race required 
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28570');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28446');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28447');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28448');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28454');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28443');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28444');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28445');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28449');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28450');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28451');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28452');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28419');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28420');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28421');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28423');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='28424');

-- Quest 28514 Mouton Flamestar CHAIN TIMELINE FIX (Alliance)
UPDATE `quest_template` SET `NextQuestIdChain`='28172' WHERE (`Id`='28514');
UPDATE `quest_template` SET `PrevQuestId`='28514' WHERE (`Id`='28172');

-- Quest 28177 Stocking Up
DELETE FROM `creature` WHERE (`id`='47811');
INSERT INTO `creature` VALUES (null, 47811, 0, 1, 1, 0, 0, -8077.9, -1006.47, 133.184, 5.23534, 300, 0, 0, 4906, 0, 0, 0, 0, 0);

-- Quest 28177 Stocking Up CHAIN TIMELINE FIX (Alliance)
UPDATE `quest_template` SET `NextQuestIdChain`='28180' WHERE (`Id`='28177');
UPDATE `quest_template` SET `NextQuestIdChain`='28180' WHERE (`Id`='28178');
UPDATE `quest_template` SET `NextQuestIdChain`='28180' WHERE (`Id`='28179');
UPDATE `quest_template` SET `PrevQuestId`='28177' WHERE (`Id`='28180');

-- Quest 28181 Warlocks Have the Neatest Stuff CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='28183' WHERE (`Id`='28181');
UPDATE `quest_template` SET `NextQuestIdChain`='28183' WHERE (`Id`='28182');
UPDATE `quest_template` SET `NextQuestIdChain`='28184' WHERE (`Id`='28183');
UPDATE `quest_template` SET `PrevQuestId`='28181' WHERE (`Id`='28183');
UPDATE `quest_template` SET `PrevQuestId`='28183' WHERE (`Id`='28184');

-- Quest 28666 Hero's Call: Burning Steppes! CHAIN TIMELINE FIX (Alliance)
UPDATE `quest_template` SET `NextQuestIdChain`='28174' WHERE (`Id`='28666');
UPDATE `quest_template` SET `PrevQuestId`='28666' WHERE (`Id`='28174');

-- Quest 28068 Adventurers Wanted: Blackrock Depths
DELETE FROM `creature` WHERE (`id`='45903');
INSERT INTO `creature` VALUES (null, 45903, 230, 1, 1, 0, 0, 450.677, -0.69294, -70.3808, 1.58258, 300, 0, 0, 18312, 0, 0, 0, 0, 0);

-- Fix some wrong auras
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='48307');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='48306');

-- Fix gossip for some quest
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`='3' WHERE (`entry`='48307');
UPDATE `creature_template` SET `gossip_menu_id`='48307' WHERE (`entry`='48307');

delete from gossip_menu_option where menu_id = 48307;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(48307,0,"I need a new Blackrock Disguise",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (48307) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(48307,0,1,2,62,0,100,0,48307,0,0,0,56,63357,1,0,0,0,0,21,2,0,0,0,0,0,0,"Add item quest"),
(48307,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip");

-- Quest 28320 Assault on Dreadmaul Rock CHAIN TIMELINE FIX (Alliance)
UPDATE `quest_template` SET `NextQuestIdChain`='28321' WHERE (`Id`='28320');
UPDATE `quest_template` SET `NextQuestIdChain`='28322' WHERE (`Id`='28321');
UPDATE `quest_template` SET `PrevQuestId`='28320' WHERE (`Id`='28321');
UPDATE `quest_template` SET `PrevQuestId`='28321' WHERE (`Id`='28322');

-- Quest 28314 Blood Tour
DELETE FROM `creature` WHERE (`id`='48346');
INSERT INTO `creature` VALUES (null, 48346, 0, 1, 1, 0, 0, -7560.1, -2756.53, 135.779, 3.53991, 300, 0, 0, 84, 0, 0, 0, 0, 0);
