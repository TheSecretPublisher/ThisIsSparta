UPDATE `creature_template` SET `ScriptName`='boss_echo_of_jaina' WHERE (`entry`=54445);

UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0, `minlevel`=87, `maxlevel`=87, `faction_A`=14, `faction_H`=14 WHERE (`entry`=54494);
UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `faction_A`=14, `faction_H`=14, `unit_flags`=33554432, `ScriptName`='npc_flarecore' WHERE (`entry`=54446);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (101616, 101588);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (101616, 'spell_flarecore');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (101588, 'spell_flarecore_periodic');
