DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= 81162 AND `spell_effect` = 96171;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (81162, 96171, 2, 'Will of the Necropolis');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= 48982 AND `spell_effect` = -81162;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (48982, -81162, 'Blood Tap - Will of the Necropolis');

DELETE FROM `spell_proc_event` WHERE `entry`= 52284;
DELETE FROM `spell_proc_event` WHERE `entry`= 81163;
DELETE FROM `spell_proc_event` WHERE `entry`= 81164;
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES (52284, 15);
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES (81163, 15);
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES (81164, 15);

UPDATE `spell_script_names` SET `spell_id`=96171 WHERE (`spell_id`=-52284) AND (`ScriptName`='spell_dk_will_of_the_necropolis')