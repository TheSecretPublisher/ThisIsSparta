DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (79683, 5143, 79808);
INSERT INTO `spell_linked_spell` VALUES (79683, 79808, 2, 'Arcane missiles activation');
INSERT INTO `spell_linked_spell` VALUES (5143, -79683, 0, 'Arcane missiles consumption');
INSERT INTO `spell_linked_spell` VALUES (5143, -79808, 0, 'Arcane missiles consumption');
DELETE FROM `spell_proc_event` WHERE `entry` = 79684;
INSERT INTO `spell_proc_event` VALUES (79684, 0, 0, 0, 0, 0, 0, 0, 0, 40, 3);
