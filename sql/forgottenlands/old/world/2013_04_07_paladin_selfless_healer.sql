DELETE FROM spell_proc_event WHERE entry in(85803, 85804);
INSERT INTO `spell_proc_event` VALUES (85804, 0, 10, 0, 0, 16384, 16384, 0, 0, 100, 0);

DELETE FROM spell_script_names WHERE spell_id in(85673, 90811);
INSERT INTO `spell_script_names` VALUES (85673, 'spell_paladin_word_of_glory');
INSERT INTO `spell_script_names` VALUES (90811, 'spell_pal_selfless');
