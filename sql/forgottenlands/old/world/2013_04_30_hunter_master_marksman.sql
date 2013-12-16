DELETE FROM spell_proc_event WHERE entry IN (34485, 34486, 34487);
INSERT INTO `spell_proc_event` VALUES (34485, 0, 9, 0, 1, 0, 256, 0, 0, 20, 0);
INSERT INTO `spell_proc_event` VALUES (34486, 0, 9, 0, 1, 0, 256, 0, 0, 40, 0);
INSERT INTO `spell_proc_event` VALUES (34487, 0, 9, 0, 1, 0, 256, 0, 0, 60, 0);

DELETE FROM spell_linked_spell WHERE spell_trigger=82928;
INSERT INTO `spell_linked_spell` VALUES (82928, -82926, 0, 'Aimed removes Master Marksman');
