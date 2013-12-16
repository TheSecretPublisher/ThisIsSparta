-- WORGEN

-- i player venivano spawnati nella mappa sbagliata(map 654)
UPDATE `playercreateinfo` SET `map`=638 WHERE (`race`=22) AND (`class`=1);
UPDATE `playercreateinfo` SET `map`=638 WHERE (`race`=22) AND (`class`=3);
UPDATE `playercreateinfo` SET `map`=638 WHERE (`race`=22) AND (`class`=4);
UPDATE `playercreateinfo` SET `map`=638 WHERE (`race`=22) AND (`class`=5);
UPDATE `playercreateinfo` SET `map`=638 WHERE (`race`=22) AND (`class`=8);
UPDATE `playercreateinfo` SET `map`=638 WHERE (`race`=22) AND (`class`=9);
UPDATE `playercreateinfo` SET `map`=638 WHERE (`race`=22) AND (`class`=11);

-- Lockdown 14078
UPDATE `quest_template` SET `RequiredRaces`=0, `NextQuestId`=14091, `RewardSpell`=59073 WHERE (`Id`=14078);

-- Something's Amiss 14091
UPDATE `quest_template` SET `NextQuestIdChain`=14093 WHERE (`Id`=14091);

-- All Hell Breaks Loose 14093
UPDATE `creature_template` SET `mingold`=5, `maxgold`=30, `maxlevel`=2, `faction_A`=7, `faction_H`=7, `mindmg`=3.8, `maxdmg`=3.8, `attackpower`=49, `lootid`=35660, `AIName`='SmartAI' WHERE (`entry`=35660);

DELETE FROM `smart_scripts` WHERE entryorguid = 35660 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35660, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0, 2000, 5, 36, 0, 0, 0, 0, 0, 11, 34916, 5, 0, 0, 0, 0, 0, 'Emote fight');
DELETE FROM `creature_loot_template` WHERE `entry` = 35660;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35660, 117, 19.647, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35660, 159, 9.5608, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35660, 805, 1.5549, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35660, 5571, 1.2818, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35660, 4496, 1.2818, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35660, 5572, 1.0296, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES (35660, 828, 0.9246, 1, 0, 1, 1);

DELETE FROM `creature_template` WHERE entry = 34916;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `exp_unk`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `type_flags2`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Mana_mod_extra`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES 
(34916, 0, 0, 0, 0, 0, 29466, 29467, 0, 0, 'Gilneas City Guard', '', '', 0, 1, 5, 0, 0, 2173, 2173, 0, 1, 1.14286, 1, 0, 9.5, 13.3, 0, 61, 1, 2000, 2000, 1, 33024, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 15595);
DELETE FROM `smart_scripts` WHERE entryorguid = 34916 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(34916, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0, 2000, 5, 36, 0, 0, 0, 0, 0, 11, 35660, 5, 0, 0, 0, 0, 0, 'Emote fight vs 35660'),
(34916, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 2000, 5, 36, 0, 0, 0, 0, 0, 11, 35118, 5, 0, 0, 0, 0, 0, 'Emote fight vs 35118');

-- Salvage the Supplies 14094
-- quest OK

-- Evacuate the Merchant Square GOOBER NON FUNZIONANTE
-- UPDATE `gameobject_template` SET `castBarCaption`='Knocking', `data0`=0, `data3`=15000, `data10`=66639 WHERE (`entry`=195327);
-- DELETE FROM `creature_template` WHERE (`entry`=351772);
-- INSERT INTO `creature_template` VALUES (351772, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Chain bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);
-- DELETE FROM `creature_template_addon` WHERE (`entry`=351772);
-- INSERT INTO `creature_template_addon` VALUES (351772, 0, 0, 65536, 1, 0, '64573 52855');
-- DELETE FROM `creature` WHERE (`id`=351772);
-- INSERT INTO `creature` VALUES (null, 351772, 638, 1, 2, 0, 0, -1428.91, 1436.28, 35.80, 3.14, 300, 0, 0, 42, 0, 0, 0, 0, 0);
-- DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`=66639);
-- INSERT INTO `spell_linked_spell` VALUES (66639, 62464, 0, 'spell trigger');
-- DELETE FROM smart_scripts WHERE entryorguid IN (351772) AND source_type = 0;
-- INSERT INTO `smart_scripts` VALUES 
-- (351772, 0, 0, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 44086, 5, 30000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'summon citizen'),
-- (351772, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 35830, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');

-- Correzione chain quest All Hell Breaks Loose (14093), Evacuate the Merchant Square (14098 RIMOSSA) e Salvage the Supplies (14094)

DELETE FROM `creature_involvedrelation` WHERE `quest`=14098;
DELETE FROM `creature_questrelation` WHERE `quest`=14098;
UPDATE `quest_template` SET `PrevQuestId`=14093 WHERE `Id`=14094;
UPDATE `quest_template` SET `PrevQuestId`=14091 WHERE `Id`=14093;
UPDATE `quest_template` SET `PrevQuestId`=14091 WHERE `Id`=14098;
UPDATE `quest_template` SET `PrevQuestId`=14094 WHERE Id = 14099;

-- Royal Orders
UPDATE `quest_template` SET `RewardSpell`=59074 WHERE (`Id`=14099);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=35840);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35840 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35840, 0, 0, 0, 20, 0, 100, 0, 14099, 0, 0, 0, 28, 59073, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'Remove 1stPhase Worgen');

-- BloodFang Worgen
UPDATE `creature_template` SET `KillCredit1`=44175, `npcflag`=0, `mindmg`=5.7, `maxdmg`=7.9, `attackpower`=53, `lootid`=35118, `mingold`=10, `maxgold`=40, `AIName`='SmartAI' WHERE (`entry`=35118);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35118 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35118, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0, 2000, 5, 36, 0, 0, 0, 0, 0, 11, 35839, 5, 0, 0, 0, 0, 0, 'Emote fight vs 35839'),
(35118, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 2000, 5, 36, 0, 0, 0, 0, 0, 11, 34916, 5, 0, 0, 0, 0, 0, 'Emote fight vs 34916');
DELETE FROM `creature_loot_template` WHERE `entry` = 35118;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(35118, 117, 32.4177, 1, 0, 1, 1),
(35118, 159, 16.2613, 1, 0, 1, 1),
(35118, 805, 4.8752, 1, 0, 1, 1),
(35118, 828, 3.5018, 1, 0, 1, 1),
(35118, 2589, 0.1468, 1, 0, 1, 1),
(35118, 4496, 3.3235, 1, 0, 1, 1),
(35118, 5571, 3.5752, 1, 0, 1, 1),
(35118, 5572, 3.7534, 1, 0, 1, 1);

-- Warrior Trainer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=35839);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35839 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35839, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0, 2000, 5, 36, 0, 0, 0, 0, 0, 11, 35118, 5, 0, 0, 0, 0, 0, 'Emote fight');

-- Charge (Worgen Warrior)
UPDATE `quest_template` SET `RequiredNpcOrGo1`=35118, `RequiredNpcOrGoCount1`=2, `RequiredSpellCast1`=56641 WHERE `Id`=14276;

-- Eviscerate (Worgen Rogue)
UPDATE `quest_template` SET `RequestItemsText`="Don't get ahead of yourself now. Just remember who taught you everything you know.$N$NAnd now let's see if we can get out of this city with our skins attached." WHERE `Id`=14272; -- Not exactly sure about this, but still better than nothing.

-- Steady Shot (Worgen Hunter)
UPDATE `quest_template` SET `RequiredNpcOrGo1`=35118, `RequiredNpcOrGoCount1`=2, `RequiredSpellCast1`=56641 WHERE `Id`=14276;

-- Arcane Missiles (Worgen Mage)
UPDATE `quest_template` SET `RequiredNpcOrGo1`=35118, `RequiredNpcOrGoCount1`=1, `RequiredSpellCast1`=5143 WHERE `Id`=14281;

-- Flash Heal (Worgen Priest)
UPDATE `quest_template` SET `RequiredNpcOrGo1`=47091, `RequiredNpcOrGoCount1`=2, `RequiredSpellCast1`=2061 WHERE `Id`=14279;

-- Immolate (Worgen Warlock)
UPDATE `quest_template` SET `RequiredNpcOrGo1`=35118, `RequiredNpcOrGoCount1`=1, `RequiredSpellCast1`=348 WHERE `Id`=14274;

-- While you are at it OK
-- Old Division OK
-- The Prison Rooftop OK

-- Worgen runt
UPDATE `creature_template` SET `mindmg`=7.6, `maxdmg`=9.5, `attackpower`=57, `AIName`='AggressorAI' WHERE (`entry`=35456);

-- quest flow
UPDATE `quest_template` SET `PrevQuestId`=14154 WHERE (`Id`=26129);

-- By the skin of his teeth AUTOCOMPLETE
UPDATE `quest_template` SET `Method`=0, `Objectives`='Talk again with Lord Darius Crowley.' WHERE (`Id`=14154); -- Hold back the worgen atop the Gilneas City Prison for 2 minutes

-- The rebel lord Arsenal
UPDATE `quest_template` SET `RewardSpellCast`=72872, `RewardHonor`=72872 WHERE (`Id`=14159);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=35369);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35369 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35369, 0, 0, 0, 20, 0, 100, 0, 14159, 0, 0, 0, 28, 59074, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'Remove 2ndPhase Worgen');

-- Josiah Avery Worgen Form
UPDATE `creature_template` SET `minlevel`=3, `maxlevel`=3, `faction_A`=14, `faction_H`=14, `mindmg`=5.7, `maxdmg`=7.6, `attackpower`=57 WHERE (`entry`=35370);

-- Save Krennan Arenas
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=35550); -- KING
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35550 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35550, 0, 0, 0, 19, 0, 100, 0, 14293, 0, 0, 0, 11, 68232, 2, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'King Genn Greymane - Cast spell');
UPDATE `creature_template` SET `IconName`='vehicleCursor', `minlevel`=4, `maxlevel`=10, `faction_A`=2203, `faction_H`=2203, `speed_run`=2, `VehicleId`=494, `spell1`=62464, `MovementType`=2, `flags_extra`=2 WHERE (`entry`=35905); -- Cavallo
UPDATE `creature_template` SET `unit_flags`=512 WHERE (`entry`=35905); -- immunità cavallo
UPDATE `creature_template` SET `unit_flags`=512, `dynamicflags`=2048, `flags_extra`=2, `AIName`='SmartAI' WHERE (`entry`=35753); -- Krennan Arenas
DELETE FROM smart_scripts WHERE entryorguid = 35753 AND source_type = 0;
INSERT INTO `smart_scripts` VALUES 
(35753, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 35753, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'credit');
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE (`Id`=14294);

-- TELEPORT AFTER Time to Regroup
DELETE FROM `creature_questrelation` WHERE (`id`=35552) AND (`quest`=14212);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=35911); -- KING
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35911 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35911, 0, 0, 0, 20, 0, 100, 0, 14294, 0, 0, 0, 62, 638, 0, 0, 0, 0, 0, 21, 10, 0, 0, -1542.5, 1576.6, 29.3, 5.3, 'King Genn Greymane - Teleport');

-- Cannoni
UPDATE `creature_template` SET `unit_class`=1, `Health_mod`=1020, `Mana_mod`=15 WHERE (`entry`=35317);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = 35317;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES (35317, 46598, 1);

-- Never surrender, Sometimes Retreat
UPDATE `quest_template` SET `PrevQuestId`=14218, `RewardSpell`= 0 WHERE (`Id`=14221);

-- Last stand
UPDATE `quest_template` SET `Flags`=0 WHERE (`Id`=14222);
UPDATE `creature` SET `spawntimesecs`=120 WHERE (`id`=35627);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=35566);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 35566 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(35566, 0, 1, 0, 19, 0, 100, 0, 14222, 0, 0, 0, 75, 59073, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'Add 1stPhase Worgen'),
(35566, 0, 2, 0, 20, 0, 100, 0, 14222, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'Remove Auras'),
(35566, 0, 3, 0, 20, 0, 100, 0, 14222, 0, 0, 0, 62, 0, 0, 0, 0, 0, 0, 21, 15, 0, 0, -8829, 626.3, 94.5, 3.95, 'Teleport to SW - Worgen');
