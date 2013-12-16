DELETE FROM `creature_template` WHERE `entry` = 363353;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(363353, 0, 0, 0, 0, 0, 11686, 0, 0, 0, 'Aberration spawn point', '', '', 0, 85, 85, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 2, 2, 0, 24, 1, 0, 0, 1, 33554432, 0, 8, 0, 0, 0, 0, 1, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 12340);

DELETE FROM  `creature` WHERE `id` = 363353;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(363353, 669, 15, 1, 0, 0, -78.3997, -429.149, 73.2345, 3.9145, 300, 0, 0, 6141, 0, 0, 0, 0, 0),
(363353, 669, 15, 1, 0, 0, -140.852, -434.315, 73.3064, 0.0705352, 300, 0, 0, 6141, 0, 0, 0, 0, 0);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (77569, 77991, 77615, 77948);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(77569, 'spell_release_abberations'),
(77991, 'spell_release_all_abberations'),
(77615, 'spell_debilitating_slime'),
(77948, 'spell_debilitating_slime');

UPDATE `creature_template` SET `difficulty_entry_1`=49971, `difficulty_entry_2`=49977, `difficulty_entry_3`=49983, `exp`=3, `faction_A`=16, `faction_H`=16, `unit_flags`=0 WHERE  `entry`=41440 LIMIT 1;

UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3, `faction_A`=16, `faction_H`=16, `mindmg`=1225.5, `maxdmg`=1544.7, `attackpower`=1651, `baseattacktime`=2000, `rangeattacktime`=2000, `minrangedmg`=1160.9, `maxrangedmg`=1328.1, `rangedattackpower`=225 WHERE  `entry` IN (49971, 49977, 49983);
UPDATE `creature_template` SET `dmg_multiplier`=2 WHERE  `entry`=49971 LIMIT 1;
UPDATE `creature_template` SET `dmg_multiplier`=2 WHERE  `entry`=49977 LIMIT 1;
UPDATE `creature_template` SET `dmg_multiplier`=2 WHERE  `entry`=49983 LIMIT 1;

UPDATE `creature_template` SET `difficulty_entry_1`=49975, `difficulty_entry_2`=49981, `difficulty_entry_3`=49987, `exp`=3, `faction_A`=16, `faction_H`=16, `unit_flags`=0 WHERE  `entry`=41841 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3, `faction_A`=16, `faction_H`=16, `mindmg`=1225.5, `maxdmg`=1544.7, `attackpower`=1651, `dmg_multiplier`=3, `baseattacktime`=2000, `rangeattacktime`=2000, `minrangedmg`=1160.9, `maxrangedmg`=1328.1, `rangedattackpower`=225 WHERE  `entry` IN (49975, 49981, 49987);

DELETE FROM `creature` WHERE `id` IN (41377);
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(41377, 669, 15, 1, 0, 0, -105.836, -485.849, 81.8197, 2.16662, 300, 0, 0, 5808, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `exp`=3, `faction_A`=16, `faction_H`=16, `Health_mod`=10000, `flags_extra`=2 WHERE  `entry`=41377 LIMIT 1;
UPDATE `creature_template` SET `InhabitType`=5 WHERE  `entry`=41377 LIMIT 1;

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 77615 AND `spell_effect` = -77987;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (77615, -77987, 1, 'Debilitating slime');

UPDATE `creature_template` SET `difficulty_entry_1`=49973, `difficulty_entry_2`=49979, `difficulty_entry_3`=49985, `exp`=3, `faction_A`=16, `faction_H`=16, `ScriptName`='mob_flash_freeze_maloriak' WHERE  `entry`=41576 LIMIT 1;

UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry` IN (49973, 49979, 49985);
UPDATE `creature_template` SET `modelid1`=39808, `modelid2`=0 WHERE  `entry`=41576 LIMIT 1;
UPDATE `creature_template` SET `modelid1`=39808 WHERE  `entry`=49973 LIMIT 1;
UPDATE `creature_template` SET `modelid1`=39808 WHERE  `entry`=49979 LIMIT 1;
UPDATE `creature_template` SET `modelid1`=39808 WHERE  `entry`=49985 LIMIT 1;
UPDATE `creature_template` SET `modelid2`=0 WHERE  `entry`=49973 LIMIT 1;
UPDATE `creature_template` SET `modelid2`=0 WHERE  `entry`=49979 LIMIT 1;
UPDATE `creature_template` SET `modelid2`=0 WHERE  `entry`=49985 LIMIT 1;

UPDATE `creature_template` SET `ScriptName`='npc_flame_jet' WHERE  `entry`=50030 LIMIT 1;

UPDATE `creature_template` SET `modelid1`=11686 WHERE  `entry`=41901 LIMIT 1;
UPDATE `creature_template` SET `modelid1`=11686 WHERE  `entry`=50030 LIMIT 1;
UPDATE `creature_template` SET `modelid2`=0 WHERE  `entry`=41901 LIMIT 1;
UPDATE `creature_template` SET `modelid2`=0 WHERE  `entry`=50030 LIMIT 1;

UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry`=41901 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16 WHERE  `entry`=50030 LIMIT 1;

DELETE FROM `creature_template_addon` WHERE `entry` IN (41901, 50030, 41961);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (41901, '78095');
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (50030, '78095');
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES (41961, '78201');

UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `exp`=3, `faction_A`=16, `faction_H`=16, `ScriptName`='npc_absolute_zero' WHERE  `entry`=41961 LIMIT 1;
