UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=14, `faction_H`=14 WHERE  `entry`=50376 LIMIT 1;
UPDATE `creature_template` SET `modelid1`=33553, `modelid2`=0, `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=14, `faction_H`=14 WHERE  `entry`=40447 LIMIT 1;

DELETE FROM `spell_script_names` WHERE `spell_id` = 75441;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(75441, 'spell_chains_of_woe');

UPDATE `creature_template` SET `InhabitType`=5, `ScriptName`='mob_corla_netheressence_trigger' WHERE  `entry`=49526 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='mob_twilight_zealot' WHERE  `entry`=50284 LIMIT 1;
UPDATE `instance_template` SET `script`='instance_blackrock_caverns' WHERE  `map`=645 LIMIT 1;
UPDATE `creature_template` SET `exp`=3, `mechanic_immune_mask`=613097436, `ScriptName`='npc_shadow_obsidius' WHERE  `entry`=40817 LIMIT 1;

DELETE FROM `creature_onkill_currency` WHERE `creature_id` IN (39680, 39699, 39701, 39706);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyId2`, `CurrencyId3`, `CurrencyCount1`, `CurrencyCount2`, `CurrencyCount3`) VALUES 
(39680, 395, 0, 0, 70, 0, 0),
(39699, 395, 0, 0, 70, 0, 0),
(39701, 395, 0, 0, 70, 0, 0),
(39706, 395, 0, 0, 70, 0, 0);