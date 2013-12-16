DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_whorshipping', 'spell_depravity', 'spell_sprayed_corruption', 'spell_spilled_blood_of_the_old_god', 'spell_corrupting_crash', 
'spell_corruption_of_the_old_god', 'spell_debilitating_beam', 'spell_corruption_accelerated', 'spell_corruption_sickness');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(91317, 'spell_whorshipping'),
(93365, 'spell_whorshipping'),
(93366, 'spell_whorshipping'),
(93367, 'spell_whorshipping'),
(81713, 'spell_depravity'),
(93175, 'spell_depravity'),
(93176, 'spell_depravity'),
(93177, 'spell_depravity'),
(82919, 'spell_sprayed_corruption'),
(93108, 'spell_sprayed_corruption'),
(93109, 'spell_sprayed_corruption'),
(93110, 'spell_sprayed_corruption'),
(81761, 'spell_spilled_blood_of_the_old_god'),
(93172, 'spell_spilled_blood_of_the_old_god'),
(93173, 'spell_spilled_blood_of_the_old_god'),
(93174, 'spell_spilled_blood_of_the_old_god'),
(81689, 'spell_corrupting_crash'),
(93184, 'spell_corrupting_crash'),
(93185, 'spell_corrupting_crash'),
(93186, 'spell_corrupting_crash'),
(82363, 'spell_corruption_of_the_old_god'),
(93169, 'spell_corruption_of_the_old_god'),
(93170, 'spell_corruption_of_the_old_god'),
(93171, 'spell_corruption_of_the_old_god'),
(82411, 'spell_debilitating_beam'),
(93132, 'spell_debilitating_beam'),
(93133, 'spell_debilitating_beam'),
(93134, 'spell_debilitating_beam'),
(81836, 'spell_corruption_accelerated'),
(81831, 'spell_corruption_sickness'),
(93200, 'spell_corruption_sickness'),
(93201, 'spell_corruption_sickness'),
(93202, 'spell_corruption_sickness');

DELETE FROM `spell_target_position` WHERE `id` IN (81611, 81618, 82713, 82712);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(81611, 671, -1226.9, -799.124, 835.843, 0.03),
(82712 , 671, -1226.9, -799.124, 835.843, 0.03),
(81618, 671, -1094.39, -799.225, 835.843, 3.09),
(82713, 671, -1094.39, -799.225, 835.843, 3.09);

UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0, `minlevel`=87, `maxlevel`=87, `exp`=3, `faction_A`=14, `faction_H`=14, `speed_walk`=0, `speed_run`=0, `flags_extra`=2 WHERE  `entry`=43585 LIMIT 1;
UPDATE `creature_template` SET `flags_extra`=0 WHERE  `entry`=43585 LIMIT 1;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE  `entry`=43707 LIMIT 1;
UPDATE `creature_template` SET `ScriptName`='npc_spilled_blood' WHERE  `entry`=5043585 LIMIT 1;
UPDATE `creature_template` SET `modelid1`=15788, `modelid2`=0, `faction_A`=14, `faction_H`=14 WHERE  `entry`=44045 LIMIT 1;
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_darkened_creation' WHERE  `entry`=44045 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=1020 WHERE  `entry`=50131 LIMIT 1;
UPDATE `creature_template` SET `Health_mod`=330 WHERE  `entry`=43324 LIMIT 1;
UPDATE `creature_template` SET `InhabitType`=3 WHERE  `entry`=43324 LIMIT 1;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `ScriptName`='npc_spiked_tentacle' WHERE  `entry`=50264 LIMIT 1;
UPDATE `creature_template` SET `flags_extra`=1 WHERE  `entry`=50131 LIMIT 1;
UPDATE `creature_template` SET `flags_extra`=1 WHERE  `entry`=50132 LIMIT 1;
UPDATE `creature_template` SET `flags_extra`=1 WHERE  `entry`=50133 LIMIT 1;
UPDATE `creature_template` SET `flags_extra`=1 WHERE  `entry`=43324 LIMIT 1;

-- Drops Normal
DELETE FROM `reference_loot_template` WHERE `entry` IN (43324, 43325);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(43324, 59330, 0, 1, 1, 1, 1),
(43324, 59485, 0, 1, 1, 1, 1),
(43324, 59486, 0, 1, 1, 1, 1),
(43324, 59487, 0, 1, 1, 1, 1),
(43324, 59490, 0, 1, 1, 1, 1),
(43324, 59494, 0, 1, 1, 1, 1),
(43324, 59495, 0, 1, 1, 1, 1),
(43324, 59497, 0, 1, 1, 1, 1),
(43324, 59498, 0, 1, 1, 1, 1),
(43324, 59499, 0, 1, 1, 1, 1),
(43324, 59500, 0, 1, 1, 1, 1),
(43324, 59501, 0, 1, 1, 1, 1),
(43324, 63680, 0, 1, 1, 1, 1),
(43325, 64314, 0, 1, 1, 1, 1),
(43325, 64315, 0, 1, 1, 1, 1),
(43325, 64316, 0, 1, 1, 1, 1);

-- drops Hero
DELETE FROM `reference_loot_template` WHERE `entry` IN (50133, 50132);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(50133, 65087, 0, 1, 1, 1, 1),
(50133, 65088, 0, 1, 1, 1, 1),
(50133, 65089, 0, 1, 1, 1, 1),
(50132, 65090, 0, 1, 1, 1, 1),
(50132, 65123, 0, 1, 1, 1, 1),
(50132, 65124, 0, 1, 1, 1, 1),
(50132, 65125, 0, 1, 1, 1, 1),
(50132, 65126, 0, 1, 1, 1, 1),
(50132, 65127, 0, 1, 1, 1, 1),
(50132, 65128, 0, 1, 1, 1, 1),
(50132, 65129, 0, 1, 1, 1, 1),
(50132, 65130, 0, 1, 1, 1, 1),
(50132, 65131, 0, 1, 1, 1, 1),
(50132, 65132, 0, 1, 1, 1, 1),
(50132, 65145, 0, 1, 1, 1, 1),
(50132, 68600, 0, 1, 1, 1, 1);

DELETE FROM `creature_loot_template` WHERE `entry` IN (43324, 50131, 50132, 50133);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(43324, 0, 100, 1, 0, -43324, 2),
(43324, 1, 100, 1, 0, -43325, 1),
(50131, 0, 100, 1, 0, -43324, 4),
(50131, 1, 100, 1, 0, -43325, 2),
(50132, 0, 100, 1, 0, -50133, 1),
(50132, 1, 100, 1, 0, -50132, 2),
(50133, 0, 100, 1, 0, -50133, 2),
(50133, 1, 100, 1, 0, -50132, 4);

UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `mechanic_immune_mask`=613097436 WHERE  `entry`=50264 LIMIT 1;
UPDATE `creature_template` SET `minlevel`=87, `maxlevel`=87, `exp`=3, `mindmg`=1111.5, `maxdmg`=1430.7, `attackpower`=1613 WHERE  `entry`=44045 LIMIT 1;

DELETE FROM creature_template WHERE entry = 341781;
insert into creature_template (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`, `modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`, `faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`, `baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_class`, `trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`, `resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`, `spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`Health_mod`,`Mana_mod`,`Armor_mod`, `RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`, `mechanic_immune_mask`,`flags_extra`,`ScriptName`,`WDBVerified`) values 
('341781','0','0','0','0','0','11686','0','0','0','Spilled Blood of the old god','','','0','85','85','0','14','14','0','0','0','1','0','3.8','3.8','0','46','1','0','0','1','0','0','0','0','0','0','1.9','1.9','0','10','1024','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','2','1','1','0','0','0','0','0','0','0','94','1','0','2','npc_spilled_blood','1');

DELETE FROM `creature_equip_template` WHERE `entry` = 43324;
INSERT INTO `creature_equip_template` (`entry`, `ItemEntry1`, `ItemEntry2`, `ItemEntry3`) VALUES
(43324, 63680, 0, 0);

UPDATE `creature_equip_template` SET `id`=1 WHERE  `entry`=43324 AND `id`=0 LIMIT 1;

DELETE FROM creature_template WHERE entry = 43622;
insert into creature_template (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`, `modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`, `faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`, `baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_class`, `trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`, `resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`, `spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`Health_mod`,`Mana_mod`,`Armor_mod`, `RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`, `mechanic_immune_mask`,`flags_extra`,`ScriptName`,`WDBVerified`) values 
('43622','0','0','0','0','0','33432','0','0','0','Corrupting Adherent','','','0','85','85','3','14','14','0','1','1.14286','1','1','1007','1354.7','0','1571','7.5','2500','0','1','0','0','0','0','0','0','758.1','1062.1','220','10','76','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','SmartAI','0','3','13','1','1','0','0','0','0','0','0','0','156','1','613097436','0','','14480');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 43622;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(43622, 0, 0, 0, 6, 0, 100, 31, 0, 0, 0, 0, 11, 81757, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Spilled Blood of the Old God on Death'),
(43622, 0, 1, 0, 0, 0, 100, 2, 5500, 6500, 20200, 21200, 11, 81685, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cast Corrupting Crash'),
(43622, 0, 2, 0, 9, 0, 100, 2, 0, 10, 15800, 17600, 11, 81713, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Depravity on Close'),
(43622, 0, 3, 0, 0, 0, 100, 8, 5500, 6500, 20200, 21200, 11, 93179, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cast Corrupting Crash'),
(43622, 0, 4, 0, 9, 0, 100, 8, 0, 10, 15800, 17600, 11, 93176, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Depravity on Close'),
(43622, 0, 5, 0, 0, 0, 100, 4, 5500, 6500, 20200, 21200, 11, 93178, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cast Corrupting Crash'),
(43622, 0, 6, 0, 9, 0, 100, 4, 0, 10, 15800, 17600, 11, 93175, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Depravity on Close'),
(43622, 0, 7, 0, 0, 0, 100, 16, 5500, 6500, 20200, 21200, 11, 93180, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cast Corrupting Crash'),
(43622, 0, 8, 0, 9, 0, 100, 16, 0, 10, 15800, 17600, 11, 93177, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Depravity on Close');
