UPDATE `creature_template` SET `exp`=3, `faction_A`=16, `faction_H`=16, `ScriptName`='npc_sinestra_twilight_whelp' WHERE  `entry`=48050 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=86, `maxlevel`=86, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry`=48018 LIMIT 1;

DELETE FROM `creature_template_addon` WHERE `entry` = 48018;
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (48018, '89284');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 88146;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
(88146, 89288, 'Test trigger');