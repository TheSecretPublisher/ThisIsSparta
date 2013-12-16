-- Surge Of Light
DELETE FROM `spell_proc_event` WHERE `entry` IN (88687, 88690);
INSERT INTO `spell_proc_event` VALUES 
(88687, 0, 0, 0x00001C80, 0x00000004, 0x00000000, 0x00014000, 0x00000000, 0, 3, 0),
(88690, 0, 0, 0x00001C80, 0x00000004, 0x00000000, 0x00014000, 0x00000000, 0, 6, 0);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (101062);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
(101062, -88688, 'Flash Heal (istant) remove Surge of Light');