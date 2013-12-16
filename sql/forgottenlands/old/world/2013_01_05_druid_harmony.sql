DELETE FROM `spell_script_names` WHERE `spell_id` = 100977;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(100977, 'spell_dru_harmony_periodic');
DELETE FROM `spell_proc_event` WHERE `entry` = 77495;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
(77495, 8, 7, 0, 0, 0, 16384, 0, 0, 100, 0);
