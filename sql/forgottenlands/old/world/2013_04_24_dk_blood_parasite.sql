DELETE FROM creature_template WHERE entry=28017;
INSERT INTO `creature_template` VALUES (28017, 0, 0, 0, 0, 0, 15983, 0, 0, 0, 'Bloodworm', '', '', 0, 84, 84, 0, 0, 3, 3, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 2660, 0, 2, 0, 2048, 8, 0, 0, 0, 0, 1, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.819, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'npc_blood_parasite', 15595);

DELETE FROM spell_proc_event WHERE entry in(49027, 49542);
INSERT INTO `spell_proc_event` VALUES (49027, 0, 0, 0, 0, 0, 20, 0, 0, 5, 20);
INSERT INTO `spell_proc_event` VALUES (49542, 0, 0, 0, 0, 0, 20, 0, 0, 10, 20);
