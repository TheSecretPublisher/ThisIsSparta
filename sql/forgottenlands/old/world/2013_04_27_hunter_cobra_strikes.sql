DELETE FROM spell_proc_event WHERE entry IN (53256, 53259, 53260);
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyMask0`, `procEx`, `CustomChance`) VALUES (53256, 2048, 3, 5);
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyMask0`, `procEx`, `CustomChance`) VALUES (53259, 2048, 3, 10);
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyMask0`, `procEx`, `CustomChance`) VALUES (53260, 2048, 3, 15);

DELETE FROM spell_script_names WHERE spell_id IN (16827, 17253, 49966);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (16827, 'spell_hun_basic_attack');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (17253, 'spell_hun_basic_attack');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (49966, 'spell_hun_basic_attack');

DELETE FROM spell_script_names WHERE spell_id = 53257;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (53257, 'spell_hun_cobra_strikes');