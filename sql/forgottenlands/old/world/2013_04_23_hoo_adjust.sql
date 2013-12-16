UPDATE `creature_template` SET `modelid2`=11686, `modelid1`=11686, `minlevel`=85, `maxlevel`=85, `faction_A`=14, `faction_H`=14, `speed_walk`=0, `speed_run`=0, `mindmg`=0, `maxdmg`=0, 
`attackpower`=0, `dmg_multiplier`=1, `baseattacktime`=100000, `unit_flags`=33554432, `minrangedmg`=0, `maxrangedmg`=0, `flags_extra`=2, `ScriptName`='npc_earth_spike' WHERE  `entry`=44765;

UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `speed_walk`=0, `speed_run`=0, `flags_extra`=2 WHERE  `entry`=40503 LIMIT 1;

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (74137, 'spell_isiset_supernova');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (76670, 'spell_isiset_supernova');

UPDATE `creature_template` SET `minlevel`=84, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry` IN (39720, 39721, 39722);

UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=40620 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=4.878, `exp`=3 WHERE  `entry`=40620 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85 WHERE  `entry`=40620 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=14, `faction_H`=14 WHERE  `entry`=51329 LIMIT 1;
UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=51329 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=0.3 WHERE  `entry`=51329 LIMIT 1;

UPDATE `creature_template` SET `minlevel`=85, `Health_mod`=2.43, `maxlevel`=85, `exp`=3, `faction_A`=14, `faction_H`=14 WHERE  `entry`=41055 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=14, `faction_H`=14, `Health_mod`=5.98 WHERE  `entry`=41208 LIMIT 1;
UPDATE `creature_template` SET `modelid2`=16925, `minlevel`=85, `maxlevel`=85, `faction_A`=14, `faction_H`=14, `flags_extra`=2 WHERE  `entry`=41126 LIMIT 1;

UPDATE `creature_template` SET `ScriptName`='mob_seed_of_chaos' WHERE  `entry`=41126 LIMIT 1;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16, `mechanic_immune_mask`=613097436, `ScriptName`='mob_choas_portal' WHERE  `entry`=41055 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='mob_void_sentinel' WHERE  `entry`=41208 LIMIT 1;

DELETE FROM `creature_onkill_currency` WHERE `creature_id` IN (48776, 48902, 48715, 48710, 48714, 49262, 48815);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyId2`, `CurrencyId3`, `CurrencyCount1`, `CurrencyCount2`, `CurrencyCount3`) VALUES 
(48815, 395, 0, 0, 70, 0, 0),
(49262, 395, 0, 0, 70, 0, 0),
(48714, 395, 0, 0, 70, 0, 0),
(48710, 395, 0, 0, 70, 0, 0),
(48715, 395, 0, 0, 70, 0, 0),
(48902, 395, 0, 0, 70, 0, 0),
(48776, 395, 0, 0, 70, 0, 0);