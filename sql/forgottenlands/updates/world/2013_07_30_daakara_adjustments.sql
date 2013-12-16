DELETE FROM `spell_script_names` WHERE `spell_id`=97639;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (97639, 'spell_grievous_throw');

DELETE FROM spell_proc_event WHERE entry = 98279;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (98279, 0, 0, 0, 0, 0, 267604, 0, 1, 50, 80);
