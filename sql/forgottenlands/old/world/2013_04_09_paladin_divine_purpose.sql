-- Limits the proc to specified spells
DELETE FROM spell_proc_event WHERE entry in(85117, 86172);
INSERT INTO `spell_proc_event` VALUES (85117, 0, 10, 8388608, 2228354, 40960, 536936464, 65536, 0, 7, 0);
INSERT INTO `spell_proc_event` VALUES (86172, 0, 10, 8388608, 2228354, 40960, 536936464, 65536, 0, 15, 0);

-- Buff is removed when casting holy power spells
DELETE FROM spell_linked_spell WHERE spell_trigger in(85696, 85673);
INSERT INTO `spell_linked_spell` VALUES (85696, -90174, 0, 'Zealotry spells removes Divine Purpose');
INSERT INTO `spell_linked_spell` VALUES (85673, -90174, 1, 'Divine Storm spells removes Divine Purpose');

-- Script for removing Divine Purpose with Inquisition
DELETE FROM spell_script_names WHERE spell_id=84963;
INSERT INTO `spell_script_names` VALUES (84963, 'spell_pal_inquisition');

-- Script for activating Divine Purpose buff only if Divine Storm hits at least one target
DELETE FROM spell_script_names WHERE spell_id in(85117, 86172);
INSERT INTO `spell_script_names` VALUES (85117, 'spell_pal_divine_purpose');
INSERT INTO `spell_script_names` VALUES (86172, 'spell_pal_divine_purpose');
