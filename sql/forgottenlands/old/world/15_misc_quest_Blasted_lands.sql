-- Blasted Lands

-- A bloodmage's gotta eat too ID 25690
DELETE FROM `creature_loot_template` WHERE `entry` = 5992 AND `item` = 55828; 
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5992, 55828, -29);

-- The first step ID 25685
DELETE FROM `creature_loot_template` WHERE `entry` IN (5985, 5990)  AND `item` IN (55826, 55827);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5985, 55826, -69);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (5990, 55827, -64);

-- Imperfect Draenethyst Fragment ID 25771
DELETE FROM `smart_scripts` WHERE `entryorguid` = 10593;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `action_param2`, `comment`) VALUES (10593, 0, 19, 25771, 1, 56, 10593, 1, 'Imperfect Draenethyst Fragment- On quest - add item');

-- Not just any body 
UPDATE `gameobject_template` SET `flags`=32 WHERE (`entry`=203205);
UPDATE `gameobject_template` SET `data1`=20325 WHERE (`entry`=203205);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 203205 AND  `item` = 55836;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (203205, 55836, -100);
UPDATE `gameobject_template` SET `flags`=32 WHERE (`entry`=203206);
UPDATE `gameobject_template` SET `data1`=20325 WHERE (`entry`=203206);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 203206 AND  `item` = 55829;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (203206, 55829, -100);
UPDATE `gameobject_template` SET `flags`=32 WHERE (`entry`=203204);
UPDATE `gameobject_template` SET `data1`=20325 WHERE (`entry`=203204);
DELETE FROM `gameobject_loot_template` WHERE `entry` = 203204 AND  `item` = 55837;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (203204, 55837, -100);

-- The Vile Blood of Demons ID 25692
UPDATE `creature_template` SET `lootid`=41253 WHERE (`entry`=41253);
UPDATE `creature_template` SET `lootid`=41163 WHERE (`entry`=41163);
UPDATE `creature_template` SET `lootid`=41165 WHERE (`entry`=41165);
DELETE FROM `creature_loot_template` WHERE `item` = 55991;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (6011, 55991, -35);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (41253, 55991, -33);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7010, 55991, -32);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (41165, 55991, -16);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (41166, 55991, -15);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (41164, 55991, -11);

-- Some people just need killing ID 25681
DELETE FROM `creature` WHERE `id` = 41173;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (null, 41173, 0, 1, 1, 0, 0, -10641, -3105.27, 24.3003, 3.69872, 300, 0, 0, 5398, 0, 0, 0, 0, 0);

-- Loramus Thalipedes awaits ID 25700
DELETE FROM `creature` WHERE `id`=7783;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (null, 7783, 0, 1, 1, 0, 1260, -11458.7, -2633.59, 3.61687, 2.93338, 300, 0, 0, 3758, 0, 0, 0, 0, 0);

-- Attune the bloodstone ID 25684
UPDATE `gameobject_template` SET `faction`=5 WHERE (`entry`=203752);

-- Watching our back ID 25695
UPDATE `gameobject_template` SET `flags`=0 WHERE (`entry`=203226);

-- Watch our back ID 25695
DELETE FROM `smart_scripts` WHERE `entryorguid` = 203226;
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `action_param2`, `comment`) VALUES (203226, 0, 19, 25771, 1, 56, 10593, 1, 'Alliance document - On quest - add item');

-- You Are Rakh'likh, Demon ID 3628
DELETE FROM `creature` WHERE `id` = 41280;
UPDATE `creature_template` SET `faction_A`=13, `faction_H`=13  WHERE (`entry`=41280);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (null, 41280, 0, 1, 65535, 0, 0, -11234.2, -2842.38, 157.924, 1.61749, 300, 0, 0, 336, 0, 0, 0, 0, 0);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 41280;
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `action_type`, `action_param1`, `comment`) VALUES (41280, 6, 33, 41292, 'reklikh - On die - credit');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=41280);

-- Amulet of sevine ID 25698
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50020;
DELETE FROM `creature_text` WHERE `entry` = 41265;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 41265;
UPDATE `creature_template` SET `gossip_menu_id`=50020 WHERE (`entry`=41265);
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `npc_option_npcflag`) VALUES (50020, 'Murloc, I know that you hold the Amulet of Sevine. Ineed it', 1);
UPDATE `gossip_menu_option` SET `option_id`= 1 WHERE (`menu_id`=50020);
UPDATE `gossip_menu_option` SET `id`=1  WHERE (`menu_id`=50020);
INSERT INTO `creature_text` (`entry`, `text`, `type`, `probability`, `comment`) VALUES (41265, 'Fine, Amulet take, but draenei help Roockpool', 12, 100, 'Salt-Flop - Say');
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param1`, `event_param2`, `action_type`, `comment`) VALUES (41265, 62, 50020, 1, 1, 'Salt-Flop - On Gossip - Say');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=41265);
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `action_param2`, `comment`) VALUES (41265, 1, 62, 50020, 1, 56, 10754, 1, 'Salt-Flop - On Gossip - Add item');

-- The amulet of grol ID 25699
DELETE FROM `gameobject_loot_template` WHERE `entry` = 203230;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (203230, 10753, -100);
UPDATE `gameobject_template` SET `data7`=203230, `data8`=25699, `data1`=203230 WHERE (`entry`=203230);

-- risistemo le quest di fazione
UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE (`Id`=26169);
UPDATE `quest_template` SET `RequiredRaces`=946 WHERE (`Id`=25699);
UPDATE `quest_template` SET `RequiredRaces`=946 WHERE (`Id`=25701);
UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE (`Id`=26171);
UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE (`Id`=26163);

-- Quest bugghe rimosse
DELETE FROM creature_questrelation WHERE quest = 25720;




