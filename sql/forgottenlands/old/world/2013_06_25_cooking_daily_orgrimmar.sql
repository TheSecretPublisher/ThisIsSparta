-- Quest 26226 Crawfish Creole
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='42548');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('42548', '79277', '2');
UPDATE `creature_template` SET `npcflag`='16777216', `AIName`='SmartAI' WHERE (`entry`='42548');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='79277');
INSERT INTO `spell_linked_spell` VALUES (79277, 62464, 0, 'no comment');

DELETE FROM smart_scripts WHERE entryorguid IN (42548) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (42548, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

-- Quest 26235 Even Thieves Get Hungry
DELETE FROM `creature` WHERE (`id`='42594');
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 1697.77, -4360.04, 21.1443, 3.85431, 300, 0, 0, 244, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 1739.18, -4527.26, 30.1473, 3.42628, 300, 0, 0, 244, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 1948.09, -4403.37, 24.2676, 0.367144, 300, 0, 0, 244, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 1947.08, -4415.25, 24.3664, 0.528153, 300, 0, 0, 218, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 1953.17, -4209.5, 37.1845, 0.732361, 300, 0, 0, 244, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 1492.39, -4391.14, 24.5962, 2.64874, 300, 0, 0, 244, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 1903.21, -4691.85, 36.4411, 2.25998, 300, 0, 0, 244, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 2028.06, -4649.39, 28.6456, 1.93796, 300, 0, 0, 244, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 2065.03, -4816.54, 27.7097, 5.77069, 300, 0, 0, 218, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 2235.46, -4617.17, 91.7737, 0.979766, 300, 0, 0, 244, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (NULL, 42594, 1, 1, 3969, 0, 1, 2320.72, -4768.06, 123.545, 5.16202, 300, 0, 0, 218, 0, 0, 0, 0, 0);