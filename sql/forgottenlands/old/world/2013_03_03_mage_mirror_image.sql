DELETE FROM spell_linked_spell WHERE spell_trigger=55342 AND spell_effect=58832;
INSERT INTO `spell_linked_spell` VALUES (55342, 58832, 0, 'Mage: Mirror Images');

DELETE FROM creature_template WHERE entry=31216;
INSERT INTO `creature_template` VALUES (31216, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Mirror Image', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 0.5, 1, 1, 0, 2, 2, 0, 24, 1, 2000, 0, 8, 0, 2048, 8, 0, 0, 0, 0, 1, 1, 0, 7, 16777216, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59638, 59637, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 0.3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1965, 0, 0, 'npc_mirror_image', 15595);
