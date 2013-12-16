DELETE FROM `creature` WHERE `id` = 43296;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`,  `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(43296, 669, 15, 1, 0, 0, -106.354, 24.9035, 72.0573, 4.5743, 86400, 0, 0, 12684, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `difficulty_entry_1`=47774, `difficulty_entry_2`=47775, `difficulty_entry_3`=47776, `mechanic_immune_mask`=650854369, `ScriptName`='boss_chimaeron' WHERE  `entry`=43296 LIMIT 1;
UPDATE `creature_template` SET `exp`=3 WHERE  `entry`=43296 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `baseattacktime`=4000, `rangeattacktime`=2000, `unit_flags`=64, `unit_flags2`=134219776, `mechanic_immune_mask`=650854369, `WDBVerified`=15595 WHERE  `entry`=47774 LIMIT 1;
UPDATE `creature_template` SET `exp`=3, `faction_A`=16, `faction_H`=16, `dmg_multiplier`=45, `baseattacktime`=4000, `rangeattacktime`=2000, `unit_flags`=64, `unit_flags2`=134219776, `mechanic_immune_mask`=650854369, `flags_extra`=1 WHERE  `entry`=47775 LIMIT 1;
UPDATE `creature_template` SET `exp`=3, `faction_A`=16, `faction_H`=16, `dmg_multiplier`=78, `baseattacktime`=4000, `rangeattacktime`=2000, `unit_flags`=64, `unit_flags2`=134219776, `mechanic_immune_mask`=650854369, `flags_extra`=1 WHERE  `entry`=47776 LIMIT 1;

DELETE FROM `spell_script_names` WHERE `spell_id` = 82705;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(82705, 'spell_finkles_mixture');

UPDATE `creature_model_info` SET `combat_reach`=10 WHERE  `modelid`=33308 LIMIT 1;
DELETE FROM `creature_loot_template` WHERE `entry`  IN (43296, 47774, 47775, 47776);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(43296, 0, 100, 1, 0, -43296, 3),
(47774, 0, 100, 1, 0, -43296, 6),
(47775, 0, 100, 1, 0, -47775, 3),
(47776, 0, 100, 1, 0, -47776, 6);