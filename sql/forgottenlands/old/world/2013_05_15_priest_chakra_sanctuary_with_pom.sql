DELETE FROM spell_script_names WHERE spell_id=41635;
INSERT INTO `spell_script_names` VALUES (41635, 'spell_pri_prayer_of_mending');

DELETE FROM spell_group WHERE id=1122;
INSERT INTO `spell_group` VALUES (1122, 81206);
INSERT INTO `spell_group` VALUES (1122, 81208);
INSERT INTO `spell_group` VALUES (1122, 81209);

DELETE FROM spell_group_stack_rules WHERE group_id=1122;
INSERT INTO `spell_group_stack_rules` VALUES (1122, 1);

DELETE FROM spell_proc_event WHERE entry=14751;
INSERT INTO `spell_proc_event` VALUES (14751, 0, 0, 7808, 4, 65536, 87376, 0, 0, 100, 0);

DELETE FROM spell_linked_spell WHERE spell_trigger in(81206, 81208, 81209);
