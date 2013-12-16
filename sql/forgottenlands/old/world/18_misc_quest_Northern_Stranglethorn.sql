-- Skullsplitter Mojo ID 26332
DELETE FROM `creature_loot_template` WHERE `entry` = 696 AND `item` = 58201;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (696, 58201, -28);
DELETE FROM `creature_loot_template` WHERE `entry` = 667 AND `item` = 58201;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (667, 58201, -28);
DELETE FROM `creature_loot_template` WHERE `entry` = 780 AND `item` = 58201;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (780, 58201, -28);

-- I Think She's Hungry ID 26321
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4457;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=4457);
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `comment`) VALUES (4457, 0, 6, 33, 42742, 'orgus - On Gossip - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `comment`) VALUES (4457, 1, 6, 33, 42742, 'orgus - On Gossip - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `comment`) VALUES (4457, 2, 6, 33, 42742, 'orgus - On Gossip - Credit');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4458;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=4458);
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `comment`) VALUES (4458, 0, 6, 33, 42742, 'orgus - On Gossip - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `comment`) VALUES (4458, 1, 6, 33, 42742, 'orgus - On Gossip - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `comment`) VALUES (4458, 2, 6, 33, 42742, 'orgus - On Gossip - Credit');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4461;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=4461);
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `comment`) VALUES (4461, 0, 6, 33, 42742, 'orgus - On Gossip - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `comment`) VALUES (4461, 1, 6, 33, 42742, 'orgus - On Gossip - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `action_type`, `action_param1`, `comment`) VALUES (4461, 2, 6, 33, 42742, 'orgus - On Gossip - Credit');

-- Favored Skull ID 26745 - 26323 distinzione tra orda e ally
UPDATE `quest_template` SET `RequiredRaces`=946 WHERE (`Id`=26323);
UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE (`Id`=26745);

-- Venture Company Mining ID 26403 - 26763
DELETE FROM `creature_loot_template` WHERE `entry` = 4260 AND `item` = 4106;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (4260, 4106, -32);

-- The Universal Key ID 26400
UPDATE `creature_template` SET `npcflag`=1 WHERE (`entry`=43003);
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 50011;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 43003;
DELETE FROM `conditions` WHERE `SourceGroup`  = 50011;
UPDATE `creature_template` SET `gossip_menu_id`=50011 WHERE (`entry`=43003);
UPDATE `creature_template` SET `AIName`='SmartAI ' WHERE (`entry`=43003);
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `npc_option_npcflag`) VALUES (50011, 'Activate the saw.', 1);
UPDATE `gossip_menu_option` SET `option_id`= 1 WHERE (`menu_id`=50011);
UPDATE `gossip_menu_option` SET `id`=1  WHERE (`menu_id`=50011);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `Comment`) VALUES (15, 50011, 1, 9, 26400, 'vnture co. saw - On quest - Gossip');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `action_param2`, `comment`) VALUES (43003, 1, 62, 50011, 1, 57, 58205, 1, 'venture co. saw - On Gossip - remove item');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `action_param2`, `comment`) VALUES (43003, 2, 62, 50011, 1, 56, 58490, 1, 'venture co. saw - On Gossip - add item');

-- Mind Control ID 26360
DELETE FROM `creature_loot_template` WHERE `entry` = 42858 AND `item` = 58225;
UPDATE `creature_template` SET `lootid`=42858 WHERE (`entry`=42858);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42858, 58225, -79);


-- The green hills of stranglethorn ID 26269
DELETE FROM `creature_loot_template` WHERE `entry` = 681 AND `item` = 57990;
UPDATE `creature_template` SET `lootid`=681 WHERE (`entry`=681);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (681, 57990, -3);
DELETE FROM `creature_loot_template` WHERE `entry` = 905 AND `item` = 57990;
UPDATE `creature_template` SET `lootid`=905 WHERE (`entry`=905);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (905, 57990, -3);
DELETE FROM `creature_loot_template` WHERE `entry` = 1150 AND `item` = 57990;
UPDATE `creature_template` SET `lootid`=1150 WHERE (`entry`=1150);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (1150, 57990, -3);


-- A Nose for This Sort of Thing ID 26325   [[risistemata non offylike, dinamica sconosciuta]]
DELETE FROM `creature_loot_template` WHERE `entry` IN (671, 660, 597) AND `item` = 58171;
UPDATE `creature_template` SET `questItem6`=58171 WHERE (`entry`=660);
UPDATE `creature_template` SET `questItem6`=58171 WHERE (`entry`=671);
UPDATE `creature_template` SET `questItem6`=58171 WHERE (`entry`=597);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (671, 58171, -30);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (660, 58171, -30);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (597, 58171, -30);

-- Cozzle's Plan
DELETE FROM `gameobject` WHERE `id`=20691;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (null, 20691, 0, 1, 1, -12033.8, -544.323, 14.472, 3.82886, 0, 0, 0.941536, -0.336913, 300, 0, 1);

-- Return to corporal Kaleb ID 26765
UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE (`Id`=26765);

-- Watch our backs ID 25695


-- NPC unfriendly
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE (`entry`=42814);