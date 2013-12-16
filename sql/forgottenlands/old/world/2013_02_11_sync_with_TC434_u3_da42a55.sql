DELETE FROM `spell_target_position` WHERE `id`=92247;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(92247, 1, 5380.82, -2744.06, 1517.74, 0.06237039); -- Finkle's Mole Machine Ride
UPDATE `areatrigger_teleport` SET `name`='Gnomeregan Exit Target', `target_position_x`=-5145.15, `target_position_y`=897.054, `target_position_z`=287.396, `target_orientation`=5.41052 WHERE `id`=322;
DELETE FROM `areatrigger_teleport` WHERE `id` IN (6322, 6210, 6211);
INSERT INTO `areatrigger_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `name`) VALUES
(6322, 0, -6519.82, -4608.52, 28.4842, 4.36332, 'Badlands 4.x - Dock Teleport Target'),
(6210, 0, 3392.41, -3406.85, 142.246, 4.71239, 'Stratholme - Front Right Exit Target'),
(6211, 0, 3393.17, -3352.15, 142.246, 1.5708, 'Stratholme - Front Left Exit Target');

UPDATE `areatrigger_teleport` SET `name`='Blackrock Depths Entrance Target', `target_position_x`=456.929, `target_position_y`=34.0923, `target_position_z`=-68.0896, `target_orientation`=4.71239 WHERE `id`=1466; -- WSL 3643
UPDATE `areatrigger_teleport` SET `name`='Blackrock Spire Entrance Target', `target_position_x`=78.3534, `target_position_y`=-226.841, `target_position_z`=49.7662, `target_orientation`=4.71239 WHERE `id`=1468; -- WSL 3644
UPDATE `areatrigger_teleport` SET `name`='Blackrock Spire Exit Target', `target_position_x`=-7524.65, `target_position_y`=-1229.13, `target_position_z`=285.731, `target_orientation`=2.0944 WHERE `id`=1470; -- WSL 3645
UPDATE `areatrigger_teleport` SET `name`='Blackrock Depths Exit Target', `target_position_x`=-7178.41, `target_position_y`=-922.152, `target_position_z`=166.092, `target_orientation`=2.00713 WHERE `id`=1472; -- WSL 3646
UPDATE `areatrigger_teleport` SET `name`='Stormwind - Tram Entrance Target 001', `target_position_x`=67.7607, `target_position_y`=2490.98, `target_position_z`=-4.29649, `target_orientation`=3.14159 WHERE `id`=2173; -- WSL 3650
UPDATE `areatrigger_teleport` SET `name`='Ironforge - Tram Entrance Target 001', `target_position_x`=69.2277, `target_position_y`=10.3932, `target_position_z`=-4.29665, `target_orientation`=3.14159 WHERE `id`=2175; -- WSL 3651
UPDATE `areatrigger_teleport` SET `name`='Ironforge - Tram Exit Target 001', `target_position_x`=-4839.51, `target_position_y`=-1317.74, `target_position_z`=501.868, `target_orientation`=1.48353 WHERE `id`=2166; -- WSL 3648
UPDATE `areatrigger_teleport` SET `name`='Stormwind - Tram Exit Target 001', `target_position_x`=-8359.27, `target_position_y`=517.585, `target_position_z`=84.4087, `target_orientation`=2.35619 WHERE `id`=2171; -- WSL 3649
UPDATE `areatrigger_teleport` SET `name`='Deadmines Entrance Target' WHERE `id`=78; -- WSL 3598
UPDATE `areatrigger_teleport` SET `name`='Deadmines Exit Front Target', `target_position_x`=-11208, `target_position_y`=1676.41, `target_position_z`=24.5716, `target_orientation`=4.71239 WHERE `id`=119; -- WSL 3601
UPDATE `areatrigger_teleport` SET `name`='Deadmines Rear Exit Target', `target_position_x`=-11341, `target_position_y`=1576.55, `target_position_z`=93.7284, `target_orientation`=3.03687 WHERE `id`=121; -- WSL 4292
UPDATE `areatrigger_teleport` SET `name`='Badlands 4.x - Cliff Teleport Target' WHERE `id`=6321; -- WSL 3964
UPDATE `areatrigger_teleport` SET `name`='Vashj''ir - Throne of Tides Exit Target', `target_position_x`=-5592.83, `target_position_y`=5408.36, `target_position_z`=-1798.57, `target_orientation`=2.44346 WHERE `id`=6197; -- WSL 3960
UPDATE `areatrigger_teleport` SET `name`='Throne of Tides - Entrance Target' WHERE `id`=6201; -- WSL 3961
UPDATE `areatrigger_teleport` SET `name`='Blackrock Caverns - Exit Target (in Eastern Kingdoms)', `target_position_x`=-7571.14, `target_position_y`=-1324.96, `target_position_z`=245.538, `target_orientation`=1.67552 WHERE `id`=6011; -- WSL 3953
UPDATE `areatrigger_teleport` SET `name`='Blackrock Caverns - Entrance Target' WHERE `id`=6108; -- WSL 3955
UPDATE `areatrigger_teleport` SET `name`='Deepholm - Stonecore Exit Target', `target_position_x`=1023.72, `target_position_y`=644.747, `target_position_z`=156.672, `target_orientation`=1.74533 WHERE `id`=6194; -- WSL 3958
UPDATE `areatrigger_teleport` SET `name`='Stonecore - Entrance Target' WHERE `id`=6196; -- WSL 3959
UPDATE `areatrigger_teleport` SET `name`='Stratholme - Back Entrance Target 001', `target_position_x`=3590.87, `target_position_y`=-3643.22, `target_position_z`=138.491, `target_orientation`=5.49779 WHERE `id`=2214; -- WSL 3652
UPDATE `areatrigger_teleport` SET `name`='Stratholme - Front Right Entrance Target 001', `target_position_x`=3393.27, `target_position_y`=-3392, `target_position_z`=143.151, `target_orientation`=1.5708 WHERE `id`=2216; -- WSL 3653
UPDATE `areatrigger_teleport` SET `name`='Stratholme - Front Left Entrance Target 001', `target_position_x`=3393, `target_position_y`=-3366.9, `target_position_z`=142.836, `target_orientation`=4.71239 WHERE `id`=2217; -- WSL 3654
UPDATE `areatrigger_teleport` SET `name`='Stratholme - Back Exit Target 001', `target_position_x`=3233.06, `target_position_y`=-4048.3, `target_position_z`=108.442, `target_orientation`=2.00713 WHERE `id`=2221; -- WSL 3655
-- Quest #26707 A Deadly Vine - fix: Adding the Corpseweed
-- http://eu.battle.net/wow/en/item/60204 Drop Chance: Guaranteed
DELETE FROM `creature_loot_template` WHERE `entry` IN (43732, 45785) AND `item` = 60204;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(43732, 60204, -100, 1, 0, 1, 1), -- Corpseweed
(45785, 60204, -100, 1, 0, 1, 1); -- Carved One
UPDATE `creature_template` SET `lootid` = 43732 WHERE `entry` = 43732;
UPDATE `creature_template` SET `lootid` = 45785 WHERE `entry` = 45785;

-- Quest #26677 Ghoulish Effigy - fix: Adding the Ghoul Rib
-- http://eu.battle.net/wow/en/item/884 Drop Chances are High
DELETE FROM `creature_loot_template` WHERE `entry` IN (570, 1270) AND `item` = 884;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(570, 884, -75, 1, 0, 1, 1),  -- Brain Eater
(1270, 884, -90, 1, 0, 1, 1); -- Fetid Corpse
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-75 WHERE `entry` IN (3, 210, 604, 948) and `item`=884;

-- Quest #26620 Seasoned Wolf Kabobs - fix: Adding the Wolf Skirt Steak
-- http://eu.battle.net/wow/en/item/60989 Drop Chance: Guaranteed
DELETE FROM `creature_loot_template` WHERE `entry` IN (521, 43704) AND `item` = 60989;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(521, 60989, -100, 1, 0, 1, 1),   -- Lupos
(43704, 60989, -100, 1, 0, 1, 1); -- Dire Wolf
UPDATE `creature_template` SET `lootid` = 43704 WHERE `entry` = 43704;

-- Quest #26623 Dusky Crab Cakes - fix: Adding the Dusky Lump
-- http://eu.battle.net/wow/en/item/60988 Drop Chance: High
DELETE FROM `creature_loot_template` WHERE `entry` = 217 AND `item` = 60988;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(217, 60988, -75, 1, 0, 1, 1); -- Venom Web Spider

-- Quest #26230 Feast or Famine - fix: Adding the Coyote Tail
-- http://eu.battle.net/wow/en/item/57787 Drop Chance: Guaranteed
DELETE FROM `creature_loot_template` WHERE `entry` IN (833, 834) AND `item` = 57787;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(833, 57787, -100, 1, 0, 1, 1), -- Coyote Packleader
(834, 57787, -100, 1, 0, 1, 1); -- Coyote

-- Quest #26347 Keeper of the Flame - fix: Adding the Chasm Ooze
-- http://eu.battle.net/wow/en/item/58204 Drop Chance: Guaranteed
DELETE FROM `creature_loot_template` WHERE `entry` = 42669 AND `item` = 58204;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(42669, 58204, -100, 1, 0, 1, 1); -- Chasm Slime
UPDATE `creature_template` SET `lootid` = 42669 WHERE `entry` = 42669;

-- Quest #26286 In Defense of Westfall - fix: Adding the Gnoll Attack Orders
-- http://eu.battle.net/wow/en/item/58111 Drop Chance: Medium
DELETE FROM `creature_loot_template` WHERE `entry` IN (124, 452, 501, 54371, 54372, 54373) AND `item` = 58111;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(124, 58111, -50, 1, 0, 1, 1),   -- Riverpaw Brute
(452, 58111, -50, 1, 0, 1, 1),   -- Riverpaw Bandit
(501, 58111, -50, 1, 0, 1, 1),   -- Riverpaw Herbalist
(54371, 58111, -50, 1, 0, 1, 1), -- Riverpaw Bandit
(54372, 58111, -50, 1, 0, 1, 1), -- Riverpaw Brute
(54373, 58111, -50, 1, 0, 1, 1); -- Riverpaw Herbalist
UPDATE `creature_template` SET `lootid` = 54371 WHERE `entry` = 54371;
UPDATE `creature_template` SET `lootid` = 54372 WHERE `entry` = 54372;
UPDATE `creature_template` SET `lootid` = 54373 WHERE `entry` = 54373;

-- Quest #26241 Westfall Stew - fix: Adding the Goretusk Flank
-- http://eu.battle.net/wow/en/item/57788 Drop Chance: Guaranteed
DELETE FROM `creature_loot_template` WHERE `entry` IN (157, 454, 42357) AND `item` = 57788;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(157, 57788, -100, 1, 0, 1, 1),   -- Goretusk
(454, 57788, -100, 1, 0, 1, 1),   -- Young Goretusk
(42357, 57788, -100, 1, 0, 1, 1); -- Hulking Goretusk
UPDATE `creature_template` SET `lootid`=42357 WHERE `entry`=42357;

-- Quest #26241 Westfall Stew - fix: Adding the Stringy Fleshripper Meat
-- http://eu.battle.net/wow/en/item/57786 Drop Chance: Guaranteed
DELETE FROM `creature_loot_template` WHERE `entry` IN (154, 199, 1109) AND `item` = 57786;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(154, 57786, -100, 1, 0, 1, 1),  -- Greater Fleshripper
(199, 57786, -100, 1, 0, 1, 1),  -- Young Fleshripper
(1109, 57786, -100, 1, 0, 1, 1); -- Fleshripper

-- Quest #25725 Fenbush Berries - fix: Adding the Handful of Fenberries
DELETE FROM `gameobject_loot_template` WHERE `entry` = 29571 AND `item` = 55233;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(29571, 55233, -100, 1, 0, 1, 1);

-- Quest #412 Operation Recombobulation - fix: Adding the Gyromechanic Gear
-- http://eu.battle.net/wow/en/item/3084 Drop Chance: Guaranteed / High
DELETE FROM `creature_loot_template` WHERE `entry` IN (8503, 41146) AND `item` = 3084;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(8503, 3084, -75, 1, 0, 1, 1),   -- Gibblewilt
(41146, 3084, -100, 1, 0, 1, 1); -- Frostmane Scavenger
UPDATE `creature_template` SET `lootid` = 41146 WHERE `entry` = 41146;
-- Fix the quest chain for quests 25723, 25725 & 25735 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 25723 WHERE `Id` = 25725;
UPDATE `quest_template` SET `PrevQuestId` = 25725 WHERE `Id` = 25735;

-- Fix the quest chain for quests 25997, 25998, 26078, 26085, 26094, 26102 & 26112 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 25997 WHERE `Id` = 25998;
UPDATE `quest_template` SET `PrevQuestId` = 25998 WHERE `Id` = 26078;
UPDATE `quest_template` SET `PrevQuestId` = 26078 WHERE `Id` = 26085;
UPDATE `quest_template` SET `PrevQuestId` = 26085 WHERE `Id` = 26094;
UPDATE `quest_template` SET `PrevQuestId` = 26094 WHERE `Id` = 26102;
UPDATE `quest_template` SET `PrevQuestId` = 26102 WHERE `Id` = 26112;

-- Fix the quest chain for quests 13636, 26843 & 26844 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 13636 WHERE `Id` = 26843;
UPDATE `quest_template` SET `PrevQuestId` = 26843 WHERE `Id` = 26844;

-- Fix the quest chain for quests 26393, 26394, 26395 & 26396 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26393 WHERE `Id` = 26394;
UPDATE `quest_template` SET `PrevQuestId` = 26394 WHERE `Id` = 26395;
UPDATE `quest_template` SET `PrevQuestId` = 26395 WHERE `Id` = 26396;

-- Fix the quest chain for quests 26688, 26689, 26690 & 26691 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26688 WHERE `Id` = 26689;
UPDATE `quest_template` SET `PrevQuestId` = 26689 WHERE `Id` = 26690;
UPDATE `quest_template` SET `PrevQuestId` = 26690 WHERE `Id` = 26691;

-- Fix the quest chain for quests 26653, 26652, 26654, 26655, 26660, 26661, 26676, 26680, 26677, 26681 & 26727 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26653 WHERE `Id` = 26652;
UPDATE `quest_template` SET `PrevQuestId` = 26652 WHERE `Id` = 26654;
UPDATE `quest_template` SET `PrevQuestId` = 26654 WHERE `Id` = 26655;
UPDATE `quest_template` SET `PrevQuestId` = 26655 WHERE `Id` = 26660;
UPDATE `quest_template` SET `PrevQuestId` = 26660 WHERE `Id` = 26661;
UPDATE `quest_template` SET `PrevQuestId` = 26661 WHERE `Id` = 26676;
UPDATE `quest_template` SET `PrevQuestId` = 26676 WHERE `Id` = 26680;
UPDATE `quest_template` SET `PrevQuestId` = 26680 WHERE `Id` = 26677;
UPDATE `quest_template` SET `PrevQuestId` = 26677 WHERE `Id` = 26681;
UPDATE `quest_template` SET `PrevQuestId` = 26681 WHERE `Id` = 26727;

-- Fix the quest chain for quests 26683, 26684 & 26685 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26683 WHERE `Id` = 26684;
UPDATE `quest_template` SET `PrevQuestId` = 26684 WHERE `Id` = 26685;

-- Fix the quest chain for quests 26666, 26667, 26669. 26670, 26671, 26672 & 26674 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26666 WHERE `Id` = 26667;
UPDATE `quest_template` SET `PrevQuestId` = 26667 WHERE `Id` = 26669;
UPDATE `quest_template` SET `PrevQuestId` = 26669 WHERE `Id` = 26670;
UPDATE `quest_template` SET `PrevQuestId` = 26670 WHERE `Id` = 26671;
UPDATE `quest_template` SET `PrevQuestId` = 26671 WHERE `Id` = 26672;
UPDATE `quest_template` SET `PrevQuestId` = 26672 WHERE `Id` = 26674;
-- Currently the alliance version of Portal: Tol Barad (88345) spell requires level 96 to learn should be level 85 like the horde counter part.
UPDATE `npc_trainer` SET `reqlevel`=85 WHERE `entry`=200200 AND `spell`=88345;
-- Abyssion should have the fragment in his loot template. He currently has no loot at all.
UPDATE `creature_template` SET `lootid`=44289 WHERE `entry`=44289;
DELETE FROM `creature_loot_template` WHERE `entry`=44289 and`item`=60574;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(44289,60574,-100,1,0,1,1);
DELETE FROM `spell_target_position` WHERE `id`=53822; -- Death Gate
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(53822, 0, 2359.64, -5662.41, 382.28, 0.596899);
DELETE FROM `command` WHERE `name`='mmap' OR `name` LIKE 'mmap%';
DELETE FROM `command` WHERE `name` LIKE 'disable add mmap' OR `name` LIKE 'disable remove mmap';
INSERT INTO `command` (`name`, `security`, `help`) VALUES 
('mmap', 3, 'Syntax: Syntax: .mmaps $subcommand Type .mmaps to see the list of possible subcommands or .help mmaps $subcommand to see info on subcommands'),
('mmap path', 3, 'Syntax: .mmap path to calculate and show a path to current select unit'),
('mmap loc', 3, 'Syntax: .mmap loc to print on which tile one is'),
('mmap loadedtiles', 3, 'Syntax: .mmap loadedtiles to show which tiles are currently loaded'),
('mmap stats', 3, 'Syntax: .mmap stats to show information about current state of mmaps'),
('mmap testarea', 3, 'Syntax: .mmap testarea to calculate paths for all nearby npcs to player'),
('disable add mmap', '3', 'Syntax: .disable add mmap $entry $flag $comment'),
('disable remove mmap', '3', 'Syntax: .disable remove mmap $entry');
UPDATE `smart_scripts` SET `event_flags`=1 WHERE `entryorguid`=20882 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid`=20896 AND `source_type`=0 AND `id`=3;
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid`=20900 AND `source_type`=0 AND `id`=3;
UPDATE `smart_scripts` SET `link`=0,`event_type`=61 WHERE `entryorguid`=4063 AND `source_type`=0 AND `id`=3;
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid`=2245 AND `source_type`=0 AND `id`=8;
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid`=7038 AND `source_type`=0 AND `id`=17;
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid`=2345 AND `source_type`=0 AND `id`=11;

DELETE FROM `smart_scripts` WHERE `entryorguid`=314 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(314, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 0 - On spawn - Prevent combat movement'),
(314, 0, 2, 3, 4, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 0 - On aggro - Say'),
(314, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 0 - On aggro - Set phase 1'),
(314, 0, 4, 0, 9, 1, 100, 0, 0, 40, 0, 0, 11, 20819, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 1 - In combat - Cast Frostbolt'),
(314, 0, 5, 0, 9, 1, 100, 0, 0, 5, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 1 - 0 to 5 yards - Activate combat movement'),
(314, 0, 6, 0, 9, 1, 100, 0, 5, 35, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 1 - 5 to 35 yards - Deactivate combat movement'),
(314, 0, 7, 0, 9, 1, 100, 0, 35, 80, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 1 - 35 to 80 yards - Activate combat movement'),
(314, 0, 8, 0, 0, 1, 100, 0, 4100, 6400, 72300, 72300, 11, 3107, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 1 - In combat - Summon Elizas Guard'),
(314, 0, 9, 0, 0, 1, 100, 0, 2100, 2900, 12500, 36300, 11, 11831, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 1 - In combat - Cast Frost Nova'),
(314, 0, 10, 12, 3, 1, 100, 0, 0, 7, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 1 - At 7% mana - Start combat movement'),
(314, 0, 11, 0, 61, 1, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 1 - At 7% mana - Set phase 2'),
(314, 0, 12, 0, 3, 2, 100, 0, 15, 100, 100, 100, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Eliza - Phase 2 - At 15% mana - Set phase 1');
-- 85256 - Templar's Verdict
DELETE FROM `spell_script_names` WHERE `spell_id`=85256;
INSERT INTO `spell_script_names` VALUES
(85256,'spell_pal_templar_s_verdict');
-- readd flight aura on Wyrmrest Defender npcs
UPDATE `creature_template_addon` SET `auras`='50069' WHERE `entry`=27629;

-- correct SAI on Nerub'ar Broodkeeper
UPDATE `smart_scripts` SET `event_param1`=0 WHERE `entryorguid`=36725 AND `source_type`=0 AND `id`=1;
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 1145 AND 1148;
INSERT INTO `trinity_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES
(1145,'%s is already in a group!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1146,'%s joined %s''s group.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1147,'%s is not in a group!',NULL, NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1148,'Group is full!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

DELETE FROM `command` WHERE `name`='group join';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('group join',3,'Syntax: .group join $AnyCharacterNameFromGroup [$CharacterName] \r\nAdds to group of player $AnyCharacterNameFromGroup player $CharacterName (or selected).');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (
70871,  -- spell_blood_queen_essence_of_the_blood_queen
69383,  -- spell_the_lich_king_dark_hunger
50453,  -- spell_dk_blood_gorged
-48496, -- spell_dru_living_seed
48504,  -- spell_dru_living_seed_proc
28764,  -- spell_gen_adaptive_warding
27539,  -- spell_gen_obsidian_armor
34074,  -- spell_hun_ascpect_of_the_viper
64411,  -- spell_item_blessing_of_ancient_kings
71875,  -- spell_item_necrotic_touch
71877,  -- spell_item_necrotic_touch
71169,  -- spell_item_shadows_fate
71903,  -- spell_item_shadowmourne
71905,  -- spell_item_shadowmourne_soul_fragment
-44449, -- spell_mage_burnout
54646,  -- spell_mage_focus_magic
-11119, -- spell_mage_ignite
-29074, -- spell_mage_master_of_elements
-9799,  -- spell_pal_eye_for_an_eye
20154,  -- spell_pal_seal_of_righteousness
21084,   -- spell_pal_seal_of_righteousness
-47509, -- spell_pri_divine_aegis
55680,  -- spell_pri_glyph_of_prayer_of_healing
28305,  -- spell_pri_mana_leech
13877,  -- spell_rog_blade_flurry
33735,  -- spell_rog_blade_flurry
51211,  -- spell_rog_blade_flurry
65956,  -- spell_rog_blade_flurry
57934,  -- spell_rog_tricks_of_the_trade
59628,  -- spell_rog_tricks_of_the_trade_proc
-974,   -- spell_sha_earth_shield
-47230, -- spell_warl_fel_synergy
63108,  -- spell_warl_siphon_life
-58872, -- spell_warr_damage_shield
12328,  -- spell_warr_sweeping_strikes
18765,  -- spell_warr_sweeping_strikes
35429   -- spell_warr_sweeping_strikes
);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70871,  'spell_blood_queen_essence_of_the_blood_queen'),
(69383,  'spell_the_lich_king_dark_hunger'),
(50453,  'spell_dk_blood_gorged'),
(-48496, 'spell_dru_living_seed'),
(48504,  'spell_dru_living_seed_proc'),
(28764,  'spell_gen_adaptive_warding'),
(27539,  'spell_gen_obsidian_armor'),
(34074,  'spell_hun_ascpect_of_the_viper'),
(64411,  'spell_item_blessing_of_ancient_kings'),
(71875,  'spell_item_necrotic_touch'),
(71877,  'spell_item_necrotic_touch'),
(71169,  'spell_item_shadows_fate'),
(71903,  'spell_item_shadowmourne'),
(71905,  'spell_item_shadowmourne_soul_fragment'),
(-44449, 'spell_mage_burnout'),
(54646,  'spell_mage_focus_magic'),
(-11119, 'spell_mage_ignite'),
(-29074, 'spell_mage_master_of_elements'),
(-9799,  'spell_pal_eye_for_an_eye'),
(20154,  'spell_pal_seal_of_righteousness'),
(21084,  'spell_pal_seal_of_righteousness'),
(-47509, 'spell_pri_divine_aegis'),
(55680,  'spell_pri_glyph_of_prayer_of_healing'),
(28305,  'spell_pri_mana_leech'),
(13877,  'spell_rog_blade_flurry'),
(33735,  'spell_rog_blade_flurry'),
(51211,  'spell_rog_blade_flurry'),
(65956,  'spell_rog_blade_flurry'),
(57934,  'spell_rog_tricks_of_the_trade'),
(59628,  'spell_rog_tricks_of_the_trade_proc'),
(-974,   'spell_sha_earth_shield'),
(-47230, 'spell_warl_fel_synergy'),
(63108,  'spell_warl_siphon_life'),
(-58872, 'spell_warr_damage_shield'),
(12328,  'spell_warr_sweeping_strikes'),
(18765,  'spell_warr_sweeping_strikes'),
(35429,  'spell_warr_sweeping_strikes');
UPDATE `instance_template` SET `script`='instance_baradin_hold' WHERE `map`=757;
SET @AETHER_RAY          := 22181;
SET @WRANGLED_RAY        := 23343;
SET @WRANGLE_SPELL       := 40856;
SET @WRANGLED_FORCE_CAST := 40917;
SET @WRANGLED_AURA       := 40926;
SET @QUEST_GIVER         := 23335;

DELETE FROM `creature_text` WHERE `entry`=@AETHER_RAY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@AETHER_RAY,1,0,'The Aether Ray appears ready to be wrangled.',16,0,100,0,0,0,'Aether Ray');

-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@AETHER_RAY; 4.x removed
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@AETHER_RAY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@AETHER_RAY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@AETHER_RAY, 0, 0, 0, 0, 0, 100, 0, 5000, 6000, 8000, 9000, 11, 35333, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Aether Ray - IC - Cast Tail Swipe'),
(@AETHER_RAY, 0, 1, 0, 2, 0, 100, 1, 0, 40, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Aether Ray - On 40 % HP - Say emote'),
(@AETHER_RAY, 0, 2, 3, 8, 0, 100, 0, @WRANGLE_SPELL, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Aether Ray - On spellcast - Despawn'),
(@AETHER_RAY, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, @WRANGLED_FORCE_CAST, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Aether Ray - Link with 2 - Summon Wrangled Aether Ray');

-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@WRANGLED_RAY; 4.x removed
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@WRANGLED_RAY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@WRANGLED_RAY;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@WRANGLED_RAY, 0, 0, 1, 54, 0, 100, 1, 0, 0, 0, 0, 85, @WRANGLED_AURA, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On spawn - Cast Wrangled Aura - Action Invoker'),
(@WRANGLED_RAY, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 29, 0, 0, @QUEST_GIVER, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Wrangled Ray - Link with 0 - Follow Player'),
(@WRANGLED_RAY, 0, 2, 0, 65, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Wrangled Ray - On follow complete - Despawn');

DELETE FROM `conditions` WHERE `SourceEntry`=@WRANGLE_SPELL;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, @WRANGLE_SPELL, 0, 0, 31, 1, 3, 22181, 0, 0, 0, 0, '', 'Spell only hits Aether Rey'),
(17, 0, @WRANGLE_SPELL, 0, 0, 38, 1, 40, 4, 0, 0, 0, 0, '', 'Spell only hits if at or below 40%');
-- Update text's with creature_text.type old format values - some missing texts should be fixed.
-- based on http://collab.kpsn.org/display/tc/Creature+text+tc2#Creaturetexttc2-type
UPDATE `creature_text` SET `type`=12 WHERE `type`=0; -- Say
UPDATE `creature_text` SET `type`=14 WHERE `type`=1; -- Yell
UPDATE `creature_text` SET `type`=16 WHERE `type`=2; -- Emote
UPDATE `creature_text` SET `type`=41 WHERE `type`=3; -- Boss Emote
UPDATE `creature_text` SET `type`=15 WHERE `type`=4; -- Whisper
UPDATE `creature_text` SET `type`=42 WHERE `type`=5; -- Boss Whisper
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (77769, -77769);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(77769, 82946, 2, 'Trap Launcher - Add/Remove');
UPDATE `creature_classlevelstats` SET `basehp1`=9741 WHERE `level`=82 AND `class`=1;
UPDATE `creature_classlevelstats` SET `basehp0`=5971, `basehp1`=10300 WHERE `level`=84 AND `class`=1;
UPDATE `creature_classlevelstats` SET `basehp0`=6141 WHERE `level`=85 AND `class`=1;

UPDATE `creature_classlevelstats` SET `basehp1`=1006 WHERE `level`=31 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basemana`=4081 WHERE `level`=81 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basemana`=4363 WHERE `level`=84 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basehp2`=15498, `basemana`=4454 WHERE `level`=85 AND `class`=2;
UPDATE `creature_classlevelstats` SET `basehp2`=16515, `basemana`=4735 WHERE `level`=88 AND `class`=2;

UPDATE `creature_classlevelstats` SET `basemana`=9328 WHERE `level`=83 AND `class`=8;
UPDATE `creature_classlevelstats` SET `basemana`=9512 WHERE `level`=84 AND `class`=8;
UPDATE `creature_classlevelstats` SET `basehp0`=4299, `basemana`=9697 WHERE `level`=85 AND `class`=8;
UPDATE `creature_classlevelstats` SET `basemana`=10232 WHERE `level`=88 AND `class`=8;
-- Kalaran Windblade: SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=8479 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`link`,`event_type`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES 
(8479,0,1,62,1321,0,26,3441,7,'Kalaran Windblade - On gossip select - Quest credit'),
(8479,1,0,61,0,0,72,0,7,'Kalaran Windblade - On gossip select - Close gossip'),
(8479,2,3,62,1323,2,11,19797,7,'Kalaran Windblade - On gossip select - Cast 19797'),
(8479,3,0,61,0,0,72,0,7,'Kalaran Windblade - On gossip select - Close gossip'),
(8479,4,0,62,1323,3,80,847900,1,'Kalaran Windblade - On gossip select - Run script');

-- Kalaran Windblade: SAI action list
DELETE FROM `smart_scripts` WHERE `entryorguid`=847900 AND `source_type`=9;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES
(847900,9,0,0,0,72,0,7,'Kalaran Windblade - Action 0 - Close gossip'),
(847900,9,1,0,0,83,3,1,'Kalaran Windblade - Action 1 - Remove NPC flags'),
(847900,9,2,1000,1000,1,0,1,'Kalaran Windblade - Action 2 - Say 0'),
(847900,9,3,1000,1000,17,69,1,'Kalaran Windblade - Action 3 - Emote state use standing'),
(847900,9,4,60000,60000,17,0,1,'Kalaran Windblade - Action 4 - Emote state none'),
(847900,9,5,1000,1000,15,3453,7,'Kalaran Windblade - Action 5 - Give quest credit'),
(847900,9,6,1000,1000,82,3,1,'Kalaran Windblade - Action 6 - Add NPC flags');

-- Kalaran Windblade: Creature text
DELETE FROM `creature_text` WHERE `entry`=8479;
INSERT INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`probability`,`comment`) VALUE 
(8479,0,0,'Be patient, $N. The torch is almost complete.',12,100,'Kalaran Windblade - Smart AI');

-- Captured Mountaineer: SAI 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=2211;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2211 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`event_type`,`event_param1`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUE
(2211,0,20,492,80,221100,2,1,'Captured Mountaineer - On quest reward - Start timed action list');

-- Captured Mountaineer: SAI action list
DELETE FROM `smart_scripts` WHERE `entryorguid`=221100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES
(221100,9,0,1000,1000,1,0,1,'Captured Mountaineer - Action 0 - Say 0'),
(221100,9,1,4000,4000,37,0,1,'Captured Mountaineer - Action 2 - Suicide');

-- Captured Mountaineer: Creature text
DELETE FROM `creature_text` WHERE `entry`=2211;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`probability`,`emote`,`comment`) VALUE
(2211,0,0,'I raise my brew and hope to be rid of the likes of you! Cheers, you no good scoundrel, $N!',12,100,7,'Captured Mountaineer - Reward quest 492');
DELETE FROM `trinity_string` WHERE `entry` IN (1149,1150);
INSERT INTO `trinity_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES
(1149,'Group type: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1150,'Name: %s (%s), GUID: %u, Flags: %s, Roles: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

DELETE FROM `command` WHERE `name`='group list';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('group list',3,'Syntax: .group list [$CharacterName] \r\nLists all the members of the group/party the player is in.');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_running_wild';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_two_forms';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_darkflight';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(87840,'spell_gen_running_wild'),
(68996,'spell_gen_two_forms'),
(68992,'spell_gen_darkflight');
-- Coren Direbrew ( http://old.wowhead.com/npc=23872 ) loot fix by dele
DELETE FROM `creature_loot_template` WHERE `entry`=23872 AND `item` IN (38280,38281);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(23872,38280,100,1,0,1,1), -- Direbrew's Dire Brew Alliance version
(23872,38281,100,1,0,1,1); -- Direbrew's Dire Brew Horde version 
-- Add reference for Zone Drop Netherstorm Blues
DELETE FROM `reference_loot_template` WHERE `entry`=14501;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(14501,31940,0,1,1,1,1), -- Ethereum Torque
(14501,31936,0,1,1,1,1), -- Fiery Cloak
(14501,31565,0,1,1,1,1), -- Skystalker's Boots
(14501,31573,0,1,1,1,1), -- Mistshroud Boots
(14501,31557,0,1,1,1,1), -- Windchanneller's Boots
(14501,31937,0,1,1,1,1), -- Living Cloak
(14501,31928,0,1,1,1,1), -- Dark Band
(14501,31581,0,1,1,1,1), -- Slatesteel Boots
(14501,31929,0,1,1,1,1), -- Enigmatic Band
(14501,31938,0,1,1,1,1), -- Enigmatic Cloak
(14501,31943,0,1,1,1,1), -- Ethereum Band
(14501,31939,0,1,1,1,1), -- Dark Cloak
(14501,31925,0,1,1,1,1), -- Fiery Band
(14501,31926,0,1,1,1,1), -- Frigid Band
(14501,31927,0,1,1,1,1), -- Living Band
(14501,32520,0,1,1,1,1), -- Manaforged Sphere
(14501,31935,0,1,1,1,1); -- Frigid Cloak
-- Add loot for Protectorate Treasure Cache 4.x change to item_template_addon and insert
DELETE FROM `item_template_addon` WHERE `Id`=32064;
INSERT INTO `item_template_addon` (`Id`, `FlagsCu`, `FoodType`, `MinMoneyLoot`, `MaxMoneyLoot`, `SpellPPMChance`) VALUES 
(32064, 0, 0, 10000, 10000, 0);

DELETE FROM `item_loot_template` WHERE `entry`=32064;
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(32064,1,80,1,1,-24013,1), -- one from greens
(32064,2,20,1,1,-14501,1); -- one from blue items
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (18431,17731);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
-- Bellowing Roar
(13, 2, 18431, 0, 0, 31, 0, 5, 176838, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176837, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176835, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176834, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176832, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176831, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176833, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176825, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176824, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176823, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176819, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176813, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176812, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176809, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176515, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176514, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176513, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176911, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176910, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176909, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176908, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176842, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176841, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176840, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176839, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176836, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176826, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176811, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176810, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176922, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176921, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176920, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176919, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176915, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176914, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176913, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176912, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176830, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176829, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176828, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176827, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176822, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176821, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176820, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176818, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176817, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176816, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176815, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176814, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176918, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176917, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
(13, 2, 18431, 0, 0, 31, 0, 5, 176916, 0, 0, 0, 0, '', 'Bellowing Roar - Lava Fissure'),
-- Eruption
(13, 2, 17731, 0, 0, 31, 0, 5, 176838, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176837, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176835, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176834, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176832, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176831, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176833, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176825, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176824, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176823, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176819, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176813, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176812, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176809, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176515, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176514, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176513, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176911, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176910, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176909, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176908, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176842, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176841, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176840, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176839, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176836, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176826, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176811, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176810, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176922, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176921, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176920, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176919, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176915, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176914, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176913, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176912, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176830, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176829, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176828, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176827, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176822, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176821, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176820, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176818, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176817, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176816, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176815, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176814, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176918, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176917, 0, 0, 0, 0, '', 'Eruption - Lava Fissure'),
(13, 2, 17731, 0, 0, 31, 0, 5, 176916, 0, 0, 0, 0, '', 'Eruption - Lava Fissure');
-- Change loot in Mithril Bound Trunk to always give an item
DELETE FROM `item_loot_template` WHERE `entry`=21228;
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Group1: Leather @ 70%
(21228,4304,40,1,1,2,4), -- Thick Leather
(21228,8170,30,1,1,1,2), -- Rugged Leather
-- Group2: Cloth @ 70%
(21228, 4339,40,1,2,1,3), -- Bolt of Mageweave
(21228,14048,30,1,2,1,2), -- Bolt of Runecloth
-- Ungrouped:
(21228,6149,20,1,0,1,2), -- Greater Mana Potion
(21228,3928,20,1,0,1,2), -- Superior Healing Potion
(21228,34109,50,1,0,1,1), -- Weather-Beaten Journal
(21228, 3914, 1,1,0,1,1), -- Journeyman's Backpack
(21228,7976,0.05,1,0,1,1), -- Plans: Mithril Shield Spike
(21228,7909,0.4,1,0,1,1), -- Aquamarine
(21228,7910,0.3,1,0,1,1), -- Star Ruby
(21228,1613,0.3,1,0,1,1), -- Spiritchaser Staff
(21228,9295,0.3,1,0,1,1), -- Recipe: Invisibility Potion
(21228,7468,0.2,1,0,1,1), -- Regal Robe
(21228,9291,0.2,1,0,1,1), -- Field Plate Leggings
(21228,9910,0.2,1,0,1,1), -- Royal Gloves
(21228,10320,0.2,1,0,1,1), -- Pattern: Red Mageweave Headband
(21228,15245,0.2,1,0,1,1), -- Vorpal Dagger
(21228,8281,0.2,1,0,1,1), -- Valorous Pauldrons
(21228,1685,0.2,1,0,1,1), -- Troll-hide Bag
(21228,8163,0.2,1,0,1,1), -- Jouster's Pauldrons
(21228,8141,0.2,1,0,1,1), -- Chromite Greaves
(21228,8121,0.2,1,0,1,1); -- Heraldic Gloves
-- Issue 5882: Dire Maul Arena Rare Bosses
-- Spawnlocations are from YTDB need to be checked!
/*
SET @GUID := 45758; -- set the guid for spawning 4.x verified
SET @POOL := 372; -- set the poolid for the spawn 4.x verified
DELETE FROM `creature` WHERE `id` IN (11447,11497,11498);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID  ,11447,1,1,1,0,0,-3799.62,1063.83,132.806,1.20424,21600,0,0,60000,    0,0,0,0,0),
(@GUID+1,11497,1,1,1,0,0,-3731.22,1061.32,132.345,1.78150,21600,0,0,73000,24340,0,0,0,0),
(@GUID+2,11498,1,1,1,0,0,-3690.96,1077.14,131.969,2.65172,21600,0,0,57000,    0,0,0,0,0);
DELETE FROM `pool_template` WHERE `entry`=@POOL;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@POOL,1,'Max 1 Rare in Dire Maul Arena');
DELETE FROM `pool_creature` WHERE `pool_entry`=@POOL;
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES
(@GUID  ,@POOL,0, 'Rare Spawn Dire Maul Arena'),
(@GUID+1,@POOL,0, 'Rare Spawn Dire Maul Arena'),
(@GUID+2,@POOL,0, 'Rare Spawn Dire Maul Arena');
*/
-- Issue 5925: Missing Sand Shark from Durotar
-- Thx Mogale for sniffing
DELETE FROM `creature` WHERE `id`=5435;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(43494,5435,1,1,1,0,0,-1144.251,-4336.333,-8.457234,4.602825,900,4,0,741,0,1,0,0,0);  -- 4.x verified
-- Issue 8498: Fix 2 centaurs stuck in the ground (by Baric)
-- UPDATE creature SET position_z=93.67 WHERE guid IN (14007, 20588); 4.x verified
-- Issue 568: No Mercy for the Captured
-- Gossip Menu Options
DELETE FROM `gossip_menu_option` WHERE  `menu_id` IN (9510,9509,9508,9507);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES
-- Chancellor
(9510,0,0, 'No, chancellor.. I wouldn''t say that I''m here to ''rescue'' you, per se.',1,1,0,0,0,0,NULL),
(9510,1,0, 'Where is Senior Scrivener Barriga being held?'         ,1,1,50424,0,0,0,NULL),
(9510,2,0, 'Did you see where they took Sanitation Engineer Burke?',1,1,50426,0,0,0,NULL),
(9510,3,0, 'Any idea where they''re keeping Deathguard Schneider?' ,1,1,50425,0,0,0,NULL),
-- Engineer
(9509,0,0, 'Affraid not. Your days as a sanitation engineer are coming to an end',  1,1,    0,0,0,0,NULL),
(9509,1,0, 'Can you tell me where they have Chancellor Amai caged?',1,1,50423,0,0,0,NULL),
(9509,2,0, 'Where is Senior Scrivener Barriga being held?'         ,1,1,50424,0,0,0,NULL),
(9509,3,0, 'Any idea where they''re keeping Deathguard Schneider?' ,1,1,50425,0,0,0,NULL),
-- Scrivener
(9508,0,0, 'Not today, senior scrivener!'                          ,1,1,    0,0,0,0,NULL),
(9508,1,0, 'Can you tell me where they have Chancellor Amai caged?',1,1,50423,0,0,0,NULL),
(9508,2,0, 'Did you see where they took Sanitation Engineer Burke?',1,1,50426,0,0,0,NULL),
(9508,3,0, 'Any idea where they''re keeping Deathguard Schneider?' ,1,1,50425,0,0,0,NULL),
-- Schneider
(9507,0,0, 'I''m affraid not. Schneider. Your time has come!'       ,1,1,    0,0,0,0,NULL),
(9507,1,0, 'Can you tell me where they have Chancellor Amai caged?',1,1,50423,0,0,0,NULL),
(9507,2,0, 'Where is Senior Scrivener Barriga being held?'         ,1,1,50424,0,0,0,NULL),
(9507,3,0, 'Did you see where they took Sanitation Engineer Burke?',1,1,50426,0,0,0,NULL);
-- Gossip Menu
DELETE FROM `gossip_menu` WHERE `entry` IN (50423,50424,50425,50426);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(50423,12833), -- I think I saw them take him over by the north side of the abbey, near the archery targets.
(50424,12827), -- I think they put him in a cage over near the lumbermill.
(50425,12832), -- I think they have her down near the gallows.
(50426,12830); -- I think he's on the south side of the abbey.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (27376,27378,27379,27381) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2737600,2737800,2737900,2738100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- Deathguard Schneider
(27376  ,0,0,0,62,0,100,0,9507,0,0,0,80,2737600,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0, "Deathguard Schneider - On Gossip Option Select - Start Script"),
(27376  ,0,1,0,10,0,100,0,0,10,180000,300000,1,1,0,0,0,0,0,17,0,10,0,0.0,0.0,0.0,0.0,"Deathguard Schneider - On LoS with Player Near - Say Line 1"),
(2737600,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0, "Deathguard Schneider - Script - Close Gossip"),
(2737600,9,1,0,0,0,100,0,200,200,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0, "Deathguard Schneider - Script - Say line 0"),
(2737600,9,2,0,0,0,100,0,5000,5000,0,0,2,14,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0, "Deathguard Schneider - Script - Set facton 14 (Hostile)"),
(2737600,9,3,0,0,0,100,0,2500,2500,0,0,46,1,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0, "Deathguard Schneider - Script - Move"),
-- Senior Scrivener Barriga
(27378  ,0,0,0,62,0,100,0,9508,0,0,0,80,2737800,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Senior Scrivener Barriga - On Gossip Option Select - Start Script"),
(27378  ,0,1,0,10,0,100,0,0,10,180000,300000,1,1,0,0,0,0,0,17,0,10,0,0.0,0.0,0.0,0.0,"Senior Scrivener Barriga - On LoS with Player Near - Say Line 1"),
(2737800,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0, "Deathguard Schneider - Script - Close Gossip"),
(2737800,9,1,0,0,0,100,0,200,200,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Senior Scrivener Barriga - Say line 0"),
(2737800,9,2,0,0,0,100,0,5000,5000,0,0,2,14,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Senior Scrivener Barriga - Set facton 14"),
(2737800,9,3,0,0,0,100,0,2500,2500,0,0,46,1,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"Senior Scrivener Barriga - Move"),
-- Engineer Burke
(27379  ,0,0,0,62,0,100,0,9509,0,0,0,80,2737900,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Engineer Burke - On Gossip Option Select - Start Script"),
(27379  ,0,1,0,10,0,100,0,0,10,180000,300000,1,1,0,0,0,0,0,17,0,10,0,0.0,0.0,0.0,0.0,"Engineer Burke - On LoS with Player Near - Say Line 1"),
(2737900,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0, "Deathguard Schneider - Script - Close Gossip"),
(2737900,9,1,0,0,0,100,0,200,200,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Engineer Burke - Script - Say line 0"),
(2737900,9,2,0,0,0,100,0,5000,5000,0,0,2,14,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Engineer Burke - Script - Set facton 14"),
(2737900,9,3,0,0,0,100,0,2500,2500,0,0,46,1,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"Engineer Burke - Script - Move"),
-- Chancellor Amai
(27381  ,0,0,0,62,0,100,0,9510,0,0,0,80,2738100,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Chancellor Amai - On Gossip Option Select - Start Script"),
(27381  ,0,1,0,10,0,100,0,0,10,180000,300000,1,1,0,0,0,0,0,17,0,10,0,0.0,0.0,0.0,0.0,"Chancellor Amai - On LoS with Player Near - Say Line 1"),
(2738100,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0, "Deathguard Schneider - Script - Close Gossip"),
(2738100,9,1,0,0,0,100,0,200,200,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Chancellor Amai - Script - Say line 0"),
(2738100,9,2,0,0,0,100,0,5000,5000,0,0,2,14,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Chancellor Amai - Script - Set facton 14"),
(2738100,9,3,0,0,0,100,0,2500,2500,0,0,46,1,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"Chancellor Amai - Script - Move");
-- Creature Texts
DELETE FROM `creature_text` WHERE `entry` IN (27376,27378,27379,27381);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(27376,0,0, 'What do you mean my time has come? I''ll kill you where you stand!',12,0,100,0,0,0, 'Deathguard Schneider before going hostile'),
(27376,1,0, 'Hey, over here!',12,0,100,0,0,0, 'Deathguard Schneider upon LoS'),
(27378,0,0, 'You can''t possibly mean to.... I''ll write you up for this, $C!',12,0,100,0,0,0, 'Senior Scrivener Barriga before going hostile'),
(27378,1,0, 'If you''d be so kind, please let me out of here!',12,0,100,0,0,0, 'Senior Scrivener Barriga upon LoS'),
(27379,0,0, 'No! I beg you! Please don''t kill me!',12,0,100,0,0,0, 'Engineer Burke before going hostile'),
(27379,1,0, 'Can Someone let me out of here? I need to get back to Venomspite and finish my shift.',12,0,100,0,0,0, 'Engineer Burke upon LoS'),
(27381,0,0, 'What is the meaning of this? Stop! I''ll double whatever they''re paying you!',12,0,100,0,0,0, 'Chancellor Amai before going hostile'),
(27381,1,0, 'I just arrived in Venomspite. How could i have possibly wronged you?',12,0,100,0,0,0, 'Chancellor Amai upon Los');
-- Conditions
DELETE FROM `conditions` WHERE  `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (9507,9508,9509,9510);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,9507,0,0,9,12245,0,0,0, '', 'Deathguard Schneider: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9507,1,0,9,12245,0,0,0, '', 'Deathguard Schneider: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9507,2,0,9,12245,0,0,0, '', 'Deathguard Schneider: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9507,3,0,9,12245,0,0,0, '', 'Deathguard Schneider: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9508,0,0,9,12245,0,0,0, '', 'Senior Scivener Barriga: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9508,1,0,9,12245,0,0,0, '', 'Senior Scivener Barriga: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9508,2,0,9,12245,0,0,0, '', 'Senior Scivener Barriga: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9508,3,0,9,12245,0,0,0, '', 'Senior Scivener Barriga: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9509,0,0,9,12245,0,0,0, '', 'Engineer Burke: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9509,1,0,9,12245,0,0,0, '', 'Engineer Burke: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9509,2,0,9,12245,0,0,0, '', 'Engineer Burke: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9509,3,0,9,12245,0,0,0, '', 'Engineer Burke: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9510,0,0,9,12245,0,0,0, '', 'Chancellor Amai: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9510,1,0,9,12245,0,0,0, '', 'Chancellor Amai: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9510,2,0,9,12245,0,0,0, '', 'Chancellor Amai: Show Gossip only if on quest "No Mercy for the Captured" '),
(15,9510,3,0,9,12245,0,0,0, '', 'Chancellor Amai: Show Gossip only if on quest "No Mercy for the Captured" ');
DELETE FROM `trinity_string` WHERE `entry`=749;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(749, 'Guild: %s (%u) Rank: %s Note: %s OffNote: %s');

UPDATE `command` SET `help`='Syntax: .pinfo [$player_name/#GUID]\r\n\r\nOutput account information and guild information for selected player or player find by $player_name or #GUID.' WHERE `name`='pinfo';
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry`=1019;
DELETE FROM `gameobject_template` WHERE `entry`=175984;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `WDBVerified`) VALUES
(175984, 8, 216, 'Cauldron', '', '', '', 4, 10, 2061, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 15354);
DELETE FROM `smart_scripts` WHERE `entryorguid`=3094 AND source_type=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(3094,0,0,0,11,0,100,0,0,0,0,0,11,4986,2,0,0,0,0,1,0,0,0,0,0,0,0,'Unseen - On Respawn - Cast Unseen'); 
-- Spawns for Unseen from Sniffs
/*
SET @GUID:=100173; -- 4.x verified
DELETE FROM `creature` WHERE `id`=3094;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID   ,3094,0,1,1,0,0,-10694.8,345.662,44.4895,2.09338,300,0,0,2215,0,0,0,0,0),
(@GUID+01,3094,0,1,1,0,0,-10702.9,360.152,39.7227,4.04982,300,0,0,2215,0,0,0,0,0),
(@GUID+02,3094,0,1,1,0,0,-10707.4,314.112,40.1481,4.46221,300,0,0,2215,0,0,0,0,0),
(@GUID+03,3094,0,1,1,0,0,-11096.8,-960.518,65.3837,0.650136,300,0,0,2292,0,0,0,0,0),
(@GUID+04,3094,0,1,1,0,0,-10800.4,-655.44,41.3178,0.206699,300,0,0,2292,0,0,0,0,0),
(@GUID+05,3094,0,1,1,0,0,-10782.8,-635.116,42.1594,2.53933,300,0,0,2138,0,0,0,0,0),
(@GUID+06,3094,0,1,1,0,0,-10806.6,-616.345,40.0752,4.601,300,0,0,2138,0,0,0,0,0),
(@GUID+07,3094,0,1,1,0,0,-10837.1,-573.623,36.5976,6.13188,300,0,0,2292,0,0,0,0,0),
(@GUID+08,3094,0,1,1,0,0,-10823,-564.998,37.4107,1.71623,300,0,0,2138,0,0,0,0,0),
(@GUID+10,3094,0,1,1,0,0,-10924,446.213,46.2609,5.96992,300,0,0,2138,0,0,0,0,0),
(@GUID+11,3094,0,1,1,0,0,-10747.1,257.103,42.0292,1.18606,300,0,0,2215,0,0,0,0,0),
(@GUID+12,3094,0,1,1,0,0,-10759.6,343.884,38.3282,5.24523,300,0,0,2138,0,0,0,0,0),
(@GUID+13,3094,0,1,1,0,0,-10731.5,364.135,37.2459,4.06321,300,0,0,2138,0,0,0,0,0),
(@GUID+14,3094,0,1,1,0,0,-10701.5,347.995,39.7227,3.22043,300,0,0,2215,0,0,0,0,0),
(@GUID+15,3094,0,1,1,0,0,-10694.8,344.219,39.7097,2.706,300,0,0,2292,0,0,0,0,0),
(@GUID+16,3094,0,1,1,0,0,-10715.6,263.155,43.9056,2.1562,300,0,0,2292,0,0,0,0,0),
(@GUID+17,3094,0,1,1,0,0,-11091.8,-954.163,65.348,1.59261,300,0,0,2215,0,0,0,0,0),
(@GUID+18,3094,0,1,1,0,0,-10937.8,-936.044,76.878,1.18113,300,0,0,2292,0,0,0,0,0),
(@GUID+19,3094,0,1,1,0,0,-10964.1,-949.174,71.1917,2.08064,300,0,0,2292,0,0,0,0,0),
(@GUID+20,3094,0,1,1,0,0,-10934.9,-928.656,72.1262,3.08437,300,0,0,2215,0,0,0,0,0),
(@GUID+21,3094,0,1,1,0,0,-10929.6,-936.748,72.126,2.29741,300,0,0,2292,0,0,0,0,0),
(@GUID+22,3094,0,1,1,0,0,-10798.5,-635.655,41.1281,1.31804,300,0,0,2292,0,0,0,0,0),
(@GUID+23,3094,0,1,1,0,0,-10830.1,-616.585,38.7076,3.76848,300,0,0,2292,0,0,0,0,0),
(@GUID+24,3094,0,1,1,0,0,-10677.6,314.27,33.6022,1.28606,300,0,0,2292,0,0,0,0,0),
(@GUID+25,3094,0,1,1,0,0,-10684.3,314.55,40.7586,3.14353,300,0,0,2138,0,0,0,0,0),
(@GUID+26,3094,0,1,1,0,0,-10368.7,-1258.33,35.9096,0.448286,300,0,0,2138,0,0,0,0,0),
(@GUID+27,3094,0,1,1,0,0,-10347.4,-1287.13,35.3003,1.44967,300,0,0,2138,0,0,0,0,0),
(@GUID+28,3094,0,1,1,0,0,-10368.6,-1290.02,35.303,0.263719,300,0,0,2292,0,0,0,0,0);
*/
DELETE FROM `gameobject_template` WHERE `entry`=181073;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `WDBVerified`) VALUES
(181073, 2, 216, 'Fragrant Cauldron', '', '', '', 93, 7244, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 15211);
-- Doors should be closed
UPDATE `gameobject` SET `state`=1 WHERE `guid` IN (150074, 150073, 150077);

-- Duplicated Gameobject
DELETE FROM `gameobject` WHERE `guid`=150081;

-- Fix loots
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry` IN (27310, 27239);
ALTER TABLE `creature_template` DROP `trainer_spell`;
DELETE FROM `gameobject_loot_template` WHERE `entry`=24524 AND `item`=52676;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(24524,52676,100,1,0,1,1);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=4 AND `SourceGroup`=24524 AND `SourceEntry`=52676;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(4,24524,52676,0,0,1,0,72221,0,0,0,0,0,'','Loot Cache of the Ley-Guardian only when aura Luck of the Draw applied');
UPDATE `achievement_criteria_data` SET `value1`=2 WHERE `criteria_id`=12979 AND `type`=12;
UPDATE `achievement_criteria_data` SET `value1`=1 WHERE `criteria_id`=12971 AND `type`=12;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=27310 AND `item`=47035;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=27239 AND `item`=46364;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=24589 AND `item`=43697;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=26666 AND `item`=44319;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=26667 AND `item`=44320;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=26668 AND `item`=44321;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=26878 AND `item`=45062;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=27725 AND `item`=49648;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=27723 AND `item`=49678;
DELETE FROM `spell_script_names` WHERE `ScriptName` IN ('spell_warl_demon_soul', 'spell_warl_conflagrate', 'spell_warl_fel_flame');
DELETE FROM `spell_script_names` WHERE  `spell_id` IN (17962, 77799, 77801);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(17962, 'spell_warl_conflagrate'),
(77799, 'spell_warl_fel_flame'),
(77801, 'spell_warl_demon_soul');
-- DELETE FROM `gameobject` WHERE `id`=180184; 4.x verified
-- loot for Prismatic Black Diamond
DELETE FROM `spell_loot_template` WHERE `entry`=62941;
INSERT INTO `spell_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(62941, 23094, 0, 1, 1, 1, 1),
(62941, 23095, 0, 1, 1, 1, 1),
(62941, 28595, 0, 1, 1, 1, 1),
(62941, 23116, 0, 1, 1, 1, 1),
(62941, 23118, 0, 1, 1, 1, 1),
(62941, 23119, 0, 1, 1, 1, 1),
(62941, 23120, 0, 1, 1, 1, 1),
(62941, 23114, 0, 1, 1, 1, 1),
(62941, 23115, 0, 1, 1, 1, 1);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_marrowgar_bone_slice';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69055,'spell_marrowgar_bone_slice'),
(70814,'spell_marrowgar_bone_slice');
UPDATE `npc_text` SET `WDBVerified`=1 WHERE `ID` IN (16777215, 31023);
UPDATE `gameobject_template` SET `WDBVerified`=1 WHERE `entry` IN (401003, 300238, 300212, 300209, 300208, 300207, 300204, 300203, 300200, 300199, 300190, 300188, 300187, 300185, 300182, 300175, 300170, 300033);
ALTER TABLE `lfg_entrances` CHARACTER SET utf8 COLLATE utf8_general_ci, ENGINE MyISAM;
DROP TABLE IF EXISTS `graveyard_orientation`;
CREATE TABLE IF NOT EXISTS `graveyard_orientation` (
  `Id` int(10) unsigned NOT NULL DEFAULT '0',
  `Orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Orientations used by graveyards';


INSERT INTO `graveyard_orientation` (`Id`, `Orientation`) VALUES
(1, 0),
(2, 0.898845),
(3, 3.84632),
(4, 4.016),
(5, 0),
(6, 4.77915),
(7, 2.52685),
(8, 2.79253),
(10, 1.22702),
(31, 3.00197),
(32, 0.212689),
(33, 0),
(34, 1.88888),
(35, 4.86949),
(36, 3.15402),
(39, 4.74773),
(49, 0),
(70, 0.212059),
(89, 1.86139),
(90, 2.41417),
(91, 2.71748),
(92, 1.83612),
(93, 1.11527),
(94, 4.63856),
(96, 0),
(97, 3.14552),
(98, 1.68075),
(99, 2.25147),
(100, 2.05774),
(101, 2.54862),
(102, 0),
(103, 1.5708),
(104, 1.01969),
(105, 2.79406),
(106, 4.4964),
(107, 0),
(108, 3.12588),
(109, 1.31467),
(129, 3.31613),
(149, 0.212058),
(169, 4.4855),
(189, 3.00807),
(209, 1.57738),
(229, 1.3409),
(249, 0.0921225),
(269, 0),
(289, 4.8891),
(309, 6.0672),
(310, 3.10232),
(329, 0.0100359),
(349, 2.58867),
(369, 2.25408),
(370, 5.99322),
(389, 3.07483),
(409, 0.180635),
(429, 0.911064),
(449, 0.746765),
(450, 5.81195),
(469, 5.80018),
(489, 4.93017),
(509, 4.98335),
(510, 3.6137),
(511, 0.0353394),
(512, 0.0454096),
(529, 0),
(549, 0),
(569, 3.38114),
(609, 3.58927),
(610, 0.898759),
(611, 3.92699),
(629, 0),
(630, 0.153151),
(631, 5.67057),
(633, 3.8059),
(634, 6.24615),
(635, 0.195065),
(636, 6.22035),
(649, 4.91659),
(669, 0),
(670, 0),
(671, 0),
(689, 2.00713),
(690, 4.71239),
(709, 4.27606),
(729, 1.53589),
(749, 2.35619),
(750, 0.261799),
(751, 4.79878),
(769, 3.14159),
(770, 0),
(771, 3.5541),
(772, 5.88176),
(789, 5.55591),
(809, 1.5708),
(810, 0.261799),
(829, 4.7822),
(830, 3.35103),
(849, 0),
(850, 0.915903),
(851, 6.28305),
(852, 0.78761),
(853, 0),
(854, 1.76699),
(869, 2.43866),
(889, 0.805031),
(890, 3.8406),
(891, 2.91208),
(892, 3.11803),
(893, 1.70431),
(894, 1.68861),
(895, 1.86139),
(896, 2.53684),
(897, 5.05011),
(898, 2.74104),
(899, 1.72003),
(909, 6.05544),
(910, 2.89725),
(911, 0),
(912, 5.49779),
(913, 0),
(914, 5.49779),
(915, 0),
(916, 4.71239),
(917, 1.5708),
(918, 5.49779),
(919, 0.785398),
(920, 2.44346),
(921, 5.70723),
(922, 3.14159),
(923, 3.66519),
(924, 4.71239),
(925, 4.88692),
(926, 2.35619),
(927, 4.35582),
(928, 0.174533),
(929, 5.23599),
(930, 4.45059),
(931, 0),
(932, 0),
(933, 3.05433),
(934, 2.96706),
(935, 5.03124),
(936, 2.0944),
(937, 0.118475),
(938, 4.7822),
(939, 3.92699),
(940, 0.785398),
(941, 5.03124),
(942, 5.03124),
(943, 5.03124),
(944, 5.03124),
(945, 5.03124),
(946, 5.03124),
(947, 5.03124),
(948, 5.03124),
(949, 5.03124),
(950, 5.03124),
(951, 5.03124),
(952, 5.03124),
(953, 5.03124),
(954, 5.03124),
(955, 5.03124),
(956, 5.03124),
(957, 5.03124),
(958, 5.03124),
(959, 5.03124),
(960, 5.03124),
(961, 5.03124),
(962, 5.03124),
(963, 5.03124),
(964, 5.03124),
(965, 5.03124),
(966, 5.03124),
(967, 5.03124),
(968, 5.03124),
(969, 3.14159),
(970, 0),
(971, 0),
(972, 0),
(973, 1.5708),
(974, 0),
(975, 0),
(976, 0),
(977, 0),
(978, 0),
(979, 0),
(980, 0),
(981, 0),
(982, 0),
(983, 0),
(984, 0),
(985, 0),
(986, 0),
(987, 0),
(988, 0),
(989, 0),
(990, 0),
(991, 0),
(992, 3.14159),
(993, 3.31613),
(994, 0.261799),
(995, 0),
(996, 5.03124),
(997, 0.493387),
(998, 0),
(999, 0),
(1000, 0),
(1001, 0),
(1002, 0),
(1003, 0),
(1004, 0),
(1005, 0),
(1006, 0),
(1007, 0),
(1008, 0),
(1009, 0),
(1010, 0),
(1011, 0),
(1012, 0),
(1013, 0),
(1014, 0),
(1015, 0),
(1016, 0),
(1017, 0),
(1018, 0),
(1019, 0),
(1020, 0),
(1021, 0),
(1022, 0),
(1023, 0),
(1024, 0),
(1025, 0),
(1026, 0),
(1027, 0),
(1028, 0),
(1029, 0),
(1030, 0),
(1031, 0),
(1032, 0),
(1033, 0),
(1034, 0),
(1035, 0),
(1036, 0),
(1037, 0.523599),
(1038, 2.35619),
(1039, 0.785398),
(1040, 2.0944),
(1041, 4.71239),
(1042, 1.48353),
(1043, 0),
(1044, 3.14159),
(1045, 0.785398),
(1046, 3.05433),
(1047, 1.5708),
(1048, 0.523599),
(1049, 4.36332),
(1050, 2.61799),
(1051, 0),
(1052, 0),
(1053, 0),
(1054, 0),
(1055, 0),
(1056, 0),
(1057, 0),
(1058, 0),
(1059, 0),
(1060, 0),
(1061, 0),
(1062, 0),
(1063, 0),
(1064, 0),
(1065, 0),
(1066, 0),
(1067, 0),
(1068, 0),
(1069, 0),
(1070, 0),
(1071, 0),
(1072, 0),
(1073, 0),
(1074, 0),
(1075, 0),
(1076, 0),
(1077, 0),
(1078, 0),
(1079, 0),
(1080, 0),
(1081, 0),
(1082, 0),
(1083, 0),
(1084, 0),
(1085, 0),
(1086, 0),
(1087, 0),
(1088, 0),
(1089, 0),
(1090, 0),
(1091, 0),
(1092, 0),
(1093, 0),
(1094, 0),
(1095, 0),
(1096, 0),
(1097, 0),
(1098, 0),
(1099, 0),
(1100, 0),
(1101, 0),
(1102, 0),
(1103, 3.14159),
(1104, 0),
(1105, 5.93412),
(1106, 1.13446),
(1107, 4.71239),
(1108, 3.92699),
(1109, 3.14159),
(1110, 3.14159),
(1111, 3.14159),
(1112, 3.14159),
(1113, 3.14159),
(1114, 3.14159),
(1115, 3.14159),
(1116, 3.14159),
(1117, 3.14159),
(1118, 3.14159),
(1119, 3.14159),
(1120, 3.14159),
(1121, 3.14159),
(1122, 3.14159),
(1123, 3.14159),
(1124, 3.14159),
(1125, 3.14159),
(1126, 3.14159),
(1127, 3.14159),
(1128, 3.14159),
(1129, 3.14159),
(1130, 3.14159),
(1131, 3.14159),
(1132, 3.14159),
(1133, 3.14159),
(1134, 0),
(1135, 0),
(1136, 0),
(1137, 0),
(1138, 0),
(1139, 0),
(1140, 0),
(1141, 0),
(1142, 0),
(1143, 0),
(1144, 0),
(1145, 0),
(1146, 0),
(1147, 0),
(1148, 0),
(1149, 0),
(1150, 0),
(1151, 0),
(1152, 0),
(1153, 0),
(1154, 0),
(1155, 0),
(1156, 0),
(1157, 0),
(1158, 0),
(1159, 0),
(1160, 0),
(1161, 0),
(1162, 0),
(1163, 0),
(1164, 0),
(1165, 0),
(1166, 0),
(1167, 0),
(1168, 0),
(1169, 0),
(1170, 0),
(1171, 0),
(1172, 0),
(1173, 0),
(1174, 0),
(1175, 0),
(1176, 0),
(1177, 0),
(1178, 0),
(1179, 0),
(1180, 0),
(1181, 0),
(1182, 0),
(1183, 0),
(1184, 0),
(1185, 0),
(1186, 0),
(1187, 0),
(1188, 0),
(1189, 0),
(1190, 0),
(1191, 0),
(1192, 0),
(1193, 0),
(1194, 0),
(1195, 0),
(1196, 0),
(1197, 0),
(1198, 0),
(1199, 0),
(1200, 0),
(1201, 0),
(1202, 0),
(1203, 0),
(1204, 0),
(1205, 0),
(1206, 0),
(1207, 0),
(1208, 0),
(1209, 0),
(1210, 0),
(1211, 0),
(1212, 0),
(1213, 0),
(1214, 0),
(1215, 0),
(1216, 0),
(1217, 0),
(1218, 0),
(1219, 0),
(1220, 0),
(1221, 0),
(1222, 0),
(1223, 0),
(1224, 0),
(1225, 0),
(1226, 0),
(1227, 0),
(1228, 0),
(1229, 0),
(1230, 0),
(1231, 0),
(1232, 0),
(1233, 0),
(1234, 0),
(1235, 0),
(1236, 0),
(1237, 0),
(1238, 0),
(1239, 0),
(1240, 3.28122),
(1241, 2.35619),
(1242, 0),
(1243, 3.92699),
(1244, 3.14159),
(1245, 3.14159),
(1246, 4.7822),
(1247, 5.49779),
(1248, 0.785398),
(1249, 0.804483),
(1250, 1.0472),
(1251, 2.61799),
(1252, 2.70526),
(1253, 4.71239),
(1254, 1.91986),
(1255, 3.92699),
(1256, 1.74533),
(1257, 0),
(1258, 4.88692),
(1259, 1.74533),
(1260, 0),
(1261, 3.14159),
(1262, 0),
(1263, 0),
(1264, 4.71239),
(1265, 4.71239),
(1266, 0),
(1267, 0.785398),
(1268, 3.14159),
(1269, 0),
(1270, 3.14159),
(1271, 1.5708),
(1272, 1.309),
(1273, 0),
(1274, 0),
(1275, 3.92699),
(1276, 5.23599),
(1277, 3.14159),
(1278, 0),
(1279, 2.87979),
(1280, 0.785398),
(1281, 1.5708),
(1282, 5.06145),
(1283, 1.5708),
(1284, 1.5708),
(1285, 0.785398),
(1286, 4.71239),
(1287, 6.10865),
(1288, 3.14159),
(1289, 0.785398),
(1290, 0),
(1291, 5.13127),
(1292, 2.7057),
(1293, 2.7057),
(1294, 2.7057),
(1295, 0.785398),
(1296, 0.785398),
(1297, 0.785398),
(1298, 0.785398),
(1299, 0),
(1300, 0.785398),
(1301, 0.785398),
(1302, 0.785398),
(1303, 0.785398),
(1304, 0.785398),
(1305, 0.785398),
(1306, 0.785398),
(1307, 0.785398),
(1308, 0.785398),
(1309, 0.785398),
(1310, 0.785398),
(1311, 0.785398),
(1312, 0.785398),
(1313, 0.785398),
(1314, 0.785398),
(1315, 0.785398),
(1316, 0.785398),
(1317, 3.33358),
(1318, 2.79253),
(1319, 2.93215),
(1320, 2.3911),
(1321, 2.70526),
(1322, 3.15905),
(1323, 1.50098),
(1324, 0.785398),
(1325, 1.5708),
(1326, 6.16101),
(1327, 0.785398),
(1328, 0.785398),
(1329, 0.785398),
(1330, 3.94444),
(1331, 3.57792),
(1332, 1.5708),
(1333, 0.785398),
(1334, 0.785398),
(1336, 3.17063),
(1337, 0),
(1341, 0.95581),
(1342, 0.515984),
(1343, 1.76085),
(1344, 4.79639),
(1345, 4.61184),
(1346, 0.785398),
(1347, 0.785398),
(1348, 0.785398),
(1349, 0.785398),
(1350, 0),
(1351, 0.785398),
(1352, 6.27788),
(1353, 1.78305),
(1354, 3.29495),
(1355, 0.958894),
(1356, 3.83293),
(1357, 3.37739),
(1358, 4.07248),
(1359, 1.59829),
(1360, 0.785398),
(1361, 4.86949),
(1362, 0.17455),
(1363, 3.31614),
(1364, 2.63545),
(1365, 5.81195),
(1366, 0.785398),
(1367, 0.785398),
(1368, 0.785398),
(1369, 0.785398),
(1370, 1.62316),
(1371, 0),
(1372, 0.785398),
(1373, 4.7822),
(1375, 4.7822),
(1376, 0),
(1377, 0.785398),
(1378, 4.7822),
(1379, 3.17063),
(1380, 1.59829),
(1381, 0.212059),
(1383, 0.212059),
(1384, 0.212059),
(1385, 0.212059),
(1387, 0.212059),
(1388, 0.212059),
(1391, 1.59829),
(1392, 1.59829),
(1393, 0.785398),
(1394, 0.785398),
(1395, 0.491507),
(1396, 2.33719),
(1397, 1.16937),
(1398, 0.785398),
(1399, 0.785398),
(1400, 0.212059),
(1401, 0.212059),
(1402, 0.212059),
(1403, 0.212059),
(1404, 3.17063),
(1405, 0.551332),
(1407, 2.33719),
(1408, 0.212059),
(1409, 0.785398),
(1410, 0.785398),
(1411, 2.35619),
(1416, 3.71755),
(1417, 3.97935),
(1418, 1.81514),
(1419, 6.23212),
(1420, 1.62577),
(1421, 0.283921),
(1422, 6.02139),
(1423, 1.72788),
(1424, 2.90967),
(1425, 0.699179),
(1426, 3.09276),
(1427, 0.0733387),
(1428, 0),
(1429, 2.0944),
(1430, 4.31096),
(1431, 0.162371),
(1432, 4.06662),
(1433, 3.12414),
(1434, 5.93412),
(1435, 3.15905),
(1436, 4.5204),
(1437, 1.18682),
(1438, 4.71239),
(1439, 3.92699),
(1440, 5.53269),
(1441, 2.19911),
(1442, 3.71755),
(1443, 1.43117),
(1444, 2.51327),
(1445, 3.57792),
(1446, 2.94961),
(1447, 4.17134),
(1448, 0.80333),
(1449, 0.349066),
(1450, 5.74213),
(1451, 2.96706),
(1452, 5.75959),
(1453, 3.05433),
(1454, 3.10669),
(1455, 1.72788),
(1456, 5.69962),
(1457, 1.88496),
(1458, 1.5708),
(1459, 0.436332),
(1460, 0.174533),
(1461, 4.86947),
(1462, 4.67748),
(1463, 6.16101),
(1464, 2.37365),
(1465, 1.74533),
(1466, 6.16101),
(1467, 3.31613),
(1468, 0.837758),
(1469, 6.24828),
(1470, 1.69297),
(1471, 0.785398),
(1472, 1.11701),
(1473, 0.15708),
(1474, 0),
(1475, 5.80018),
(1476, 2.87979),
(1477, 0.785398),
(1478, 0.212059),
(1480, 4.71239),
(1481, 1.5708),
(1482, 4.57276),
(1483, 5.23599),
(1484, 1.88496),
(1485, 0),
(1486, 3.14159),
(1488, 5.33195),
(1489, 0.139626),
(1491, 3.22886),
(1492, 3.22624),
(1493, 1.3409),
(1494, 0.785398),
(1495, 0.785398),
(1496, 1.13446),
(1497, 4.24115),
(1681, 0.688792),
(1682, 6.28163),
(1683, 3.14159),
(1689, 2.7646),
(1690, 0.125664),
(1691, 0.139626),
(1692, 0),
(1693, 2.61799),
(1694, 0),
(1695, 3.49066),
(1696, 3.14159),
(1697, 1.91986),
(1698, 3.49066),
(1699, 3.83972),
(1700, 0),
(1701, 0),
(1702, 0.872665),
(1703, 2.87979),
(1704, 3.71755),
(1705, 0.174533),
(1706, 0),
(1707, 0.872665),
(1708, 3.26377),
(1709, 3.83972),
(1710, 4.45059),
(1711, 5.75959),
(1712, 1.51844),
(1713, 0.453786),
(1714, 5.41052),
(1715, 1.0472),
(1716, 0.715585),
(1720, 0.698132),
(1721, 4.66528),
(1722, 1.23702),
(1723, 5.57242),
(1724, 1.0446),
(1725, 6.21056),
(1726, 2.61799),
(1727, 0),
(1728, 0),
(1729, 3.14159),
(1730, 5.15089),
(1731, 2.6396),
(1732, 4.07465),
(1733, 5.67134),
(1734, 0.16178),
(1735, 1.5708),
(1736, 4.53786),
(1738, 0.523599),
(1739, 3.14159),
(1740, 5.93412),
(1741, 3.93223),
(1742, 3.66519),
(1743, 0.698132),
(1744, 3.50811),
(1745, 3.07092),
(1746, 5.52924),
(1747, 0.718672),
(1748, 2.21657),
(1749, 4.18879),
(1750, 1.0472),
(1751, 6.26552),
(1752, 5.48208),
(1753, 0),
(1754, 1.01316),
(1755, 2.0944),
(1756, 5.41052),
(1757, 2.44346),
(1758, 4.71239),
(1759, 2.00713),
(1761, 3.93052),
(1762, 1.76952),
(1763, 3.78736),
(1764, 0.872665),
(1765, 1.39626),
(1766, 5.58505),
(1767, 4.53786),
(1768, 2.61799),
(1769, 5.75959),
(1770, 1.71042),
(1771, 0),
(1772, 1.0472),
(1773, 0),
(1774, 0.261799),
(1775, 2.37365),
(1777, 5.44675),
(1778, 4.69494),
(1779, 0),
(1780, 0),
(1781, 0),
(1782, 0),
(1783, 2.79253),
(1784, 1.5708),
(1785, 3.14159),
(1786, 3.92699),
(1787, 5.06145),
(1788, 5.58505),
(1789, 3.14159),
(1790, 1.57864),
(1791, 1.55116),
(1792, 6.10008),
(1793, 2.60113),
(1794, 0.735801),
(1795, 5.10263),
(1796, 4.10519),
(1797, 0.785398),
(1798, 5.93412),
(1799, 1.5708),
(1800, 5.51597),
(1801, 1.65965),
(1802, 5.55915),
(1803, 2.28795),
(1804, 6.23062),
(1805, 0.819221),
(1806, 0),
(1807, 0.959931),
(1808, 0),
(1809, 0.0872665),
(1810, 5.58505),
(1811, 3.90954),
(1812, 4.71239),
(1813, 3.40339),
(1814, 2.44346),
(1815, 3.40339),
(1816, 0.715585),
(1817, 6.10865),
(1818, 0),
(1819, 0),
(1820, 0),
(1821, 0),
(1822, 1.02974),
(1823, 1.55334),
(1824, 3.12414),
(1825, 0),
(1826, 0),
(1827, 5.23599),
(1828, 5.41052),
(1829, 4.18879),
(1830, 4.18879),
(1831, 2.79253),
(1832, 2.0944),
(1833, 2.44346),
(1834, 2.26893),
(1835, 5.49779),
(1836, 0),
(1837, 5.23599),
(1838, 0),
(1839, 2.61799),
(1840, 1.91986),
(1841, 0.523599),
(1842, 3.14159),
(1843, 3.14159),
(1844, 1.69297),
(1845, 4.36332),
(1846, 2.40855),
(1847, 4.18879),
(1848, 2.44346),
(1849, 4.06662),
(1850, 4.71239),
(1851, 2.18166),
(1852, 1.0472),
(1853, 2.23402),
(1854, 3.80482),
(1855, 0),
(1856, 4.53786),
(1857, 2.74017),
(1858, 1.0472),
(1859, 1.51844),
(1860, 1.5708),
(1861, 5.23599),
(1862, 2.59225),
(1863, 5.31016),
(1866, 0),
(1868, 1.39626),
(1869, 3.4383),
(1870, 1.3439),
(1871, 3.26377),
(1872, 6.10865),
(1873, 3.87463),
(1874, 2.00713),
(1875, 0.0698132),
(1876, 4.53786),
(1877, 4.88692),
(1878, 0.261799),
(1880, 2.0944),
(1881, 2.26893),
(1886, 1.9166),
(1889, 2.44346),
(1961, 0.610865),
(1962, 4.10152),
(1966, 0),
(1967, 0),
(1969, 2.32129),
(2807, 2.53073),
(2808, 3.9619),
(2809, 5.49779),
(2815, 5.74213),
(2816, 1.65806),
(2841, 0),
(2843, 3.14159),
(2847, 1.13446),
(2849, 4.71239),
(2851, 5.93412),
(2853, 3.92699),
(2855, 3.14159),
(2857, 3.14159),
(2859, 3.14159),
(2861, 3.14159),
(2863, 3.14159),
(2865, 3.14159),
(2867, 3.14159),
(2869, 3.14159),
(2871, 3.14159),
(2873, 3.14159),
(2875, 3.14159),
(2877, 3.14159),
(2879, 3.14159),
(2881, 3.14159),
(2883, 3.14159),
(2885, 3.14159),
(2887, 3.14159),
(2889, 3.14159),
(2891, 3.14159),
(2893, 3.14159),
(2895, 3.14159),
(2897, 3.14159),
(2899, 3.14159),
(2901, 3.14159),
(2903, 3.14159),
(2906, 0),
(2908, 0),
(2910, 0),
(2912, 0),
(2914, 0),
(2916, 0),
(2918, 0),
(2920, 0),
(2922, 0),
(2924, 0),
(2926, 0),
(2928, 0),
(2930, 0),
(2932, 0),
(2934, 0),
(2936, 0),
(2938, 0),
(2940, 0),
(2942, 0),
(2944, 0),
(2946, 0),
(2948, 0),
(2950, 0),
(2952, 0),
(2956, 0),
(2958, 0),
(2960, 0),
(2962, 0),
(2964, 0),
(2966, 0),
(2968, 0),
(2970, 0),
(2972, 0),
(2974, 0),
(2976, 0),
(2978, 0),
(3026, 0),
(3028, 0),
(3030, 0),
(3032, 0),
(3034, 0),
(3036, 0),
(3038, 0),
(3040, 0),
(3042, 0),
(3044, 0),
(3046, 0),
(3048, 0),
(3050, 0),
(3052, 0),
(3054, 0),
(3056, 0),
(3058, 0),
(3060, 0),
(3062, 0),
(3064, 0),
(3066, 0),
(3068, 0),
(3070, 0),
(3072, 0),
(3074, 0),
(3076, 0),
(3078, 0),
(3080, 0),
(3082, 0),
(3084, 0),
(3086, 0),
(3088, 0),
(3090, 0),
(3092, 0),
(3094, 0),
(3096, 0),
(3098, 0),
(3100, 0),
(3102, 0),
(3104, 0),
(3106, 0),
(3108, 0),
(3110, 0),
(3112, 0),
(3114, 0),
(3116, 0),
(3118, 0),
(3120, 0),
(3122, 0),
(3124, 0),
(3126, 0),
(3128, 0),
(3130, 0),
(3132, 0),
(3134, 0),
(3136, 0),
(3138, 0),
(3212, 1.65806),
(3236, 6.26367),
(3238, 3.14159),
(3240, 1.51844),
(3244, 3.86386),
(3403, 0),
(3404, 0);
-- Something Stinks (A:24655 H:24536)
-- SET @GUID           := 85637; -- set by TDB (need 10)(85637,85638,85639,85640,85641,85642,85643,85644,85645,85646,43498,43502,45075,45099) 4.x verified
SET @EVENT          := 8; -- Love is in the Air

SET @BUNNY          := 38288; -- Love Guard Perfume Bunny
SET @GUARD_SW       := 68; -- Stormwind City Guard
SET @PATROOLER_SW   := 1976; -- Stormwind City Patroller
SET @GUARD_ORG      := 3296; -- Orgrimmar Grunt
SET @ELITE_ORG      := 14304; -- Kor'kron Elite

SET @SPELL_PULSE    := 71520; -- Heavily Perfumed Pulse
SET @SPELL_BUFF     := 71507; -- Heavily Perfumed
SET @SPELL_ANALYSIS := 70192; -- Fragrant Air Analysis

/* 4.x removed
DELETE FROM `creature` WHERE `id`=@BUNNY;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+0,@BUNNY,0,1,1,0,0,-8825.604,629.3108,94.1137,0,300,0,0,1,0,0,0,0,0), -- sw trade district
(@GUID+1,@BUNNY,0,1,1,0,0,-8988.889,849.4149,105.9425,0,300,0,0,1,0,0,0,0,0), -- sw mage quarter
(@GUID+2,@BUNNY,0,1,1,0,0,-8737.654,1051.887,90.8816,0,300,0,0,1,0,0,0,0,0), -- sw the park
(@GUID+3,@BUNNY,0,1,1,0,0,-8625.038,780.0799,96.73399,0,300,0,0,1,0,0,0,0,0), -- sw cathedral square
(@GUID+4,@BUNNY,0,1,1,0,0,-8433.189,607.2205,95.13025,0,300,0,0,1,0,0,0,0,0), -- sw dwarven district
(@GUID+5,@BUNNY,0,1,1,0,0,-8486.955,390.5139,108.4689,0,300,0,0,1,0,0,0,0,0), -- sw stormwind keep
(@GUID+6,@BUNNY,0,1,1,0,0,-8676.724,444.5052,99.73087,0,300,0,0,1,0,0,0,0,0), -- sw old town
--
(@GUID+7,@BUNNY,1,1,1,0,0,1573.92,-4397.11,16.00813,0,300,0,0,1,0,0,0,0,0), -- org valley of strength
(@GUID+8,@BUNNY,1,1,1,0,0,1893.24,-4507.31,24.94853,0,300,0,0,1,0,0,0,0,0), -- org the drag
(@GUID+9,@BUNNY,1,1,1,0,0,2015.27,-4687.4,28.61023,0,300,0,0,1,0,0,0,0,0); -- org valley of honor
*/

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SPELL_PULSE;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=@SPELL_BUFF;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_PULSE,0,0,31,0,3,@GUARD_SW,0,0,0,0,'',"Heavily Perfumed Pulse target Stormwind City Guard"),
(13,1,@SPELL_PULSE,0,1,31,0,3,@PATROOLER_SW,0,0,0,0,'',"Heavily Perfumed Pulse target Stormwind City Patroller"),
(13,1,@SPELL_PULSE,0,2,31,0,3,@GUARD_ORG,0,0,0,0,'',"Heavily Perfumed Pulse target Orgrimmar Grunt"),
(13,1,@SPELL_PULSE,0,3,31,0,3,@ELITE_ORG,0,0,0,0,'',"Heavily Perfumed Pulse target Kor'kron Elite"),
(17,0,@SPELL_BUFF,0,0,1,0,@SPELL_BUFF,0,0,1,0,0,'',"Apply Heavily Perfumed only when missing");

UPDATE `creature_template` SET `AIName`='SmartAI',`InhabitType`=4,`flags_extra`=`flags_extra`|128 WHERE `entry`=@BUNNY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@BUNNY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@BUNNY,0,0,0,60,0,100,0,0,0,600000,600000,11,@SPELL_PULSE,0,0,0,0,0,1,0,0,0,0,0,0,0,"On update(each 10 min) - Cast - Self");

-- ussing this because dummy effect #1 of spell 70192 is to remove the buff
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=@SPELL_ANALYSIS;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@SPELL_ANALYSIS,-@SPELL_BUFF,1,'Remove Heavily Perfumed on Fragrant Air Analysis hit');

/* 4.x removed
DELETE FROM `game_event_creature` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @GUID+0 AND @GUID+9;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(@EVENT,@GUID+0),
(@EVENT,@GUID+1),
(@EVENT,@GUID+2),
(@EVENT,@GUID+3),
(@EVENT,@GUID+4),
(@EVENT,@GUID+5),
(@EVENT,@GUID+6),
(@EVENT,@GUID+7),
(@EVENT,@GUID+8),
(@EVENT,@GUID+9);
*/
-- Ragnaros
UPDATE `creature_text` SET `text`='TOO SOON! YOU HAVE AWAKENED ME TOO SOON, EXECUTUS! WHAT IS THE MEANING OF THIS INTRUSION???' WHERE `entry`=11502 AND `groupid`=1;
UPDATE `creature_text` SET `text`='FOOL! YOU ALLOWED THESE INSECTS TO RUN RAMPANT THROUGH THE HALLOWED CORE? AND NOW YOU LEAD THEM TO MY VERY LAIR? YOU HAVE FAILED ME, EXECUTUS! JUSTICE SHALL BE MET, INDEED!' WHERE `entry`=11502 AND `groupid`=3;
UPDATE `creature_text` SET `text`='NOW FOR YOU, INSECTS! BOLDLY, YOU SOUGHT THE POWER OF RAGNAROS. NOW YOU SHALL SEE IT FIRSTHAND!' WHERE `entry`=11502 AND `groupid`=4;
UPDATE `creature_text` SET `text`='DIE, INSECT!' WHERE `entry`=11502 AND `groupid`=9;

-- Core Rager
UPDATE `creature_text` SET `text`='%s refuses to die while its master is endangered!' WHERE `entry`=11672 AND `groupid`=0;

-- Morridune
UPDATE `creature_text` SET `text`='Aku''mai is dead! At last, I can leave this wretched place.' WHERE `entry`=6729 AND `groupid`=0;
UPDATE `creature_text` SET `text`='Speak with me to hear my tale.' WHERE `entry`=6729 AND `groupid`=1;

-- Amnennar the Coldbringer
UPDATE `creature_text` SET `text`='You''ll never leave this place alive.' WHERE `entry`=7358 AND `groupid`=0;
UPDATE `creature_text` SET `text`='Come, spirits - attend your master!' WHERE `entry`=7358 AND `groupid`=2;
UPDATE `creature_text` SET `text`='Too easy.', `type`=12 WHERE `entry`=7358 AND `groupid`=4;

-- Weegli Blastfuse
UPDATE `creature_text` SET `text`='Oh no!  Here they come!' WHERE `entry`=7607 AND `groupid`=0;
UPDATE `creature_text` SET `text`='Ok, here I go!' WHERE `entry`=7607 AND `groupid`=1;

-- The Prophet Skeram
UPDATE `creature_text` SET `text`='Are you so eager to die? I will be happy to accommodate you...' WHERE `entry`=15263 AND `groupid`=0 AND `id`=0;
UPDATE `creature_text` SET `text`='You only delay the inevitable!' WHERE `entry`=15263 AND `groupid`=3;

-- Ossirian the Unscarred
UPDATE `creature_text` SET `text`='Sands of the desert, rise and block out the sun!' WHERE `entry`=15339 AND `groupid`=2;

-- General Rajaxx
UPDATE `creature_text` SET `text`='Warriors, Captains, continue the fight! ' WHERE `entry`=15341 AND `groupid`=9;
UPDATE `creature_text` SET `text`='Breathe your last!' WHERE `entry`=15341 AND `groupid`=11;

-- Buru the Gorger
UPDATE `creature_text` SET `text`='%s sets eyes on $n!' WHERE `entry`=15370 AND `groupid`=0;

-- Spectral Stable Hand
UPDATE `creature_text` SET `type`=12 WHERE `entry`=15551 AND `groupid`=0 AND `id`=0;
UPDATE `creature_text` SET `text`='What will become of--' WHERE `entry`=15551 AND `groupid`=0 AND `id`=1;

-- Medivh
UPDATE `creature_text` SET `text`='The time has come! Gul''dan, order your warlocks to double their efforts! Moments from now the gateway will open and your Horde will be released upon this ripe, unsuspecting world!' WHERE `entry`=15608 AND `groupid`=0;
UPDATE `creature_text` SET `text`='Champions! My shield grows weak!' WHERE `entry`=15608 AND `groupid`=2;
UPDATE `creature_text` SET `text`='No! Damn this feeble, mortal coil!' WHERE `entry`=15608 AND `groupid`=5;
UPDATE `creature_text` SET `text`='I am grateful for your aid, champions. Now, Gul''dan''s Horde will sweep across this world like a locust swarm, and all my designs, all my carefully-laid plans will at last fall into place.' WHERE `entry`=15608 AND `groupid`=6;
UPDATE `creature_text` SET `text`='Orcs of the Horde! This portal is the gateway to your new destiny! Azeroth lies before you, ripe for the taking!' WHERE `entry`=15608 AND `groupid`=7;

-- Moroes <Tower Steward>
UPDATE `creature_text` SET `text`='Hm, unannounced visitors. Preparations must be made...' WHERE `entry`=15687 AND `groupid`=0;
UPDATE `creature_text` SET `text`='How terribly clumsy of me.' WHERE `entry`=15687 AND `groupid`=3;

-- Terestian Illhoof
UPDATE `creature_text` SET `text`='Your blood will anoint my circle!' WHERE `entry`=15688 AND `groupid`=0 AND `id`=0;
UPDATE `creature_text` SET `text`='My life is yours, oh great one...' WHERE `entry`=15688 AND `groupid`=1;
UPDATE `creature_text` SET `text`='Ah, you''re just in time. The rituals are about to begin!' WHERE `entry`=15688 AND `groupid`=2;
UPDATE `creature_text` SET `text`='Please accept this humble offering, oh great one...' WHERE `entry`=15688 AND `groupid`=3 AND `id`=0;
UPDATE `creature_text` SET `text`='Let this sacrifice serve as testament to my fealty.' WHERE `entry`=15688 AND `groupid`=3 AND `id`=1;
UPDATE `creature_text` SET `text`='Come, you dwellers in the dark! Rally to my call!' WHERE `entry`=15688 AND `groupid`=4 AND `id`=0;
UPDATE `creature_text` SET `text`='Gather, my pets... there is plenty for all!' WHERE `entry`=15688 AND `groupid`=4 AND `id`=1;

-- Prince Malchezaar
UPDATE `creature_text` SET `text`='How can you hope to stand against such overwhelming power?' WHERE `entry`=15690 AND `groupid`=5;
UPDATE `creature_text` SET `text`='I refuse to concede defeat! I am a prince of the Eredar! I... am...' WHERE `entry`=15690 AND `groupid`=8;

-- The Curator
UPDATE `creature_text` SET `text`='This Curator is equipped for gallery protection.' WHERE `entry`=15691 AND `groupid`=1 AND `id`=1;
UPDATE `creature_text` SET `text`='Curator is no longer operation-a-l.' WHERE `entry`=15691 AND `groupid`=5;

-- Thaddius
UPDATE `creature_text` SET `text`='You are too late!! I... must... obey!!' WHERE `entry`=15928 AND `groupid`=0;
UPDATE `creature_text` SET `text`='Kill...' WHERE `entry`=15928 AND `groupid`=1 AND `id`=0;
UPDATE `creature_text` SET `text`='Eat... your... bones...' WHERE `entry`=15928 AND `groupid`=1 AND `id`=1;
UPDATE `creature_text` SET `text`='Break... you!!' WHERE `entry`=15928 AND `groupid`=1 AND `id`=2;
UPDATE `creature_text` SET `text`='You... die now!!' WHERE `entry`=15928 AND `groupid`=2;
UPDATE `creature_text` SET `text`='Now you feel pain...' WHERE `entry`=15928 AND `groupid`=3;

-- Feugen 
UPDATE `creature_text` SET `text`='Feugen make master happy.' WHERE `entry`=15930 AND `groupid`=1;

-- Grand Widow Faerlina
UPDATE `creature_text` SET `text`='Your old lives, your mortal desires mean nothing... you are acolytes of the master now, and you will serve the cause without question! The greatest glory is to die in the master''s service!' WHERE `entry`=15953 AND `groupid`=0;
UPDATE `creature_text` SET `text`='The master will avenge me!!' WHERE `entry`=15953 AND `groupid`=3;

-- Anub'Rekhan
UPDATE `creature_text` SET `text`='Yes, run! It makes the blood pump faster!' WHERE `entry`=15956 AND `groupid`=0 AND `id`=2;
UPDATE `creature_text` SET `text`='I hear little hearts beating. Yes... beating faster now... soon the beating will stop.' WHERE `entry`=15956 AND `groupid`=1 AND `id`=1;
UPDATE `creature_text` SET `text`='Which one shall I eat first? So difficult to choose. They all smell so delicious...' WHERE `entry`=15956 AND `groupid`=1 AND `id`=3;
UPDATE `creature_text` SET `text`='Closer now. Tasty morsels. I''ve been too long without food, without blood to drink.' WHERE `entry`=15956 AND `groupid`=1 AND `id`=4;
UPDATE `creature_text` SET `text`='Shhh... it will all be over soon.' WHERE `entry`=15956 AND `groupid`=2;

-- Kel'Thuzad
UPDATE `creature_text` SET `text`='Your forces are nearly marshaled to strike back against your enemies, my liege.' WHERE `entry`=15990 AND `groupid`=0;
UPDATE `creature_text` SET `text`='Yes, master. The time of their ultimate demise draws close.... What is this?' WHERE `entry`=15990 AND `groupid`=2;
UPDATE `creature_text` SET `text`='As you command, master!' WHERE `entry`=15990 AND `groupid`=4;
UPDATE `creature_text` SET `text`='Fools! You think yourselves triumphant? You have only taken one step closer to the abyss!' WHERE `entry`=15990 AND `groupid`=6 AND `id`=1;
UPDATE `creature_text` SET `text`='%s cackles maniacally.', `type`=16 WHERE `entry`=15990 AND `groupid`=8 AND `id`=1;
UPDATE `creature_text` SET `text`='Agghhhh! Do... not... rejoice! Your victory is a hollow one, for I shall return with powers beyond your imagining!' WHERE `entry`=15990 AND `groupid`=9;
UPDATE `creature_text` SET `text`='Your soul is bound to me, now!' WHERE `entry`=15990 AND `groupid`=10 AND `id`=0;
UPDATE `creature_text` SET `text`='Master, I require aid!' WHERE `entry`=15990 AND `groupid`=12;
UPDATE `creature_text` SET `text`='Minions, servants, soldiers of the cold dark! Obey the call of Kel''Thuzad!' WHERE `entry`=15990 AND `groupid`=14;

-- Patchwerk
UPDATE `creature_text` SET `text`='Kel''thuzad make Patchwerk his avatar of war!' WHERE `entry`=16028 AND `groupid`=0 AND `id`=1;
UPDATE `creature_text` SET `text`='What... happen to-' WHERE `entry`=16028 AND `groupid`=2;
UPDATE `creature_text` SET `text`='%s goes into a frenzy!', `type`=41 WHERE `entry`=16028 AND `groupid`=4;

-- Spectral Servant
UPDATE `creature_text` SET `type`=12 WHERE `entry`=16407 AND `groupid`=0 AND `id`=0;

-- Maiden of Virtue
UPDATE `creature_text` SET `text`='Your behavior will not be tolerated.' WHERE `entry`=16457 AND `groupid`=0;

-- Shade of Aran
UPDATE `creature_text` SET `text`='Please, no more! My son... he''s gone mad!' WHERE `entry`=16524 AND `groupid`=0 AND `id`=0;
UPDATE `creature_text` SET `text`='I''ll show you: this beaten dog still has some teeth!' WHERE `entry`=16524 AND `groupid`=1 AND `id`=0;
UPDATE `creature_text` SET `text`='Burn, you hellish fiends!' WHERE `entry`=16524 AND `groupid`=1 AND `id`=1;
UPDATE `creature_text` SET `text`='Yes, yes my son is quite powerful... but I have powers of my own!' WHERE `entry`=16524 AND `groupid`=3 AND `id`=0;
UPDATE `creature_text` SET `text`='I''m not finished yet! No, I have a few more tricks up my sleeve...', `type`=12 WHERE `entry`=16524 AND `groupid`=5;
UPDATE `creature_text` SET `text`='At last the nightmare is over...' WHERE `entry`=16524 AND `groupid`=8;

-- Martik Tor'seldori
UPDATE `creature_text` SET `text`='Brothers and sisters, I have been to the promised land. I have tasted in the sublime energy. I have felt bliss - bliss so engrossing and all encompassing that I was left wondering if I had stumbled upon the dreams of gods.' WHERE `entry`=16577 AND `groupid`=0;

-- Grand Warlock Nethekurse
UPDATE `creature_text` SET `text`='You can have that one, I no longer need him!' WHERE `entry`=16807 AND `groupid`=1 AND `id`=0;
UPDATE `creature_text` SET `text`='Yes, beat him mercilessly! His skull is as thick as an ogre''s!' WHERE `entry`=16807 AND `groupid`=1 AND `id`=1;
UPDATE `creature_text` SET `text`='Don''t waste your time on that one, he''s weak!' WHERE `entry`=16807 AND `groupid`=1 AND `id`=2;
UPDATE `creature_text` SET `text`='One pitiful wretch down. Go on, take another one!' WHERE `entry`=16807 AND `groupid`=2 AND `id`=0;
UPDATE `creature_text` SET `text`='Ah, what a waste... next!' WHERE `entry`=16807 AND `groupid`=2 AND `id`=1;
UPDATE `creature_text` SET `text`='Thank you for saving me the trouble. Now it''s my turn to have some fun!' WHERE `entry`=16807 AND `groupid`=2 AND `id`=3;
UPDATE `creature_text` SET `text`='Beg for your pitiful life!' WHERE `entry`=16807 AND `groupid`=3 AND `id`=0;
UPDATE `creature_text` SET `text`='Run, coward, run!   ' WHERE `entry`=16807 AND `groupid`=3 AND `id`=1; -- Blizz fail.
UPDATE `creature_text` SET `text`='Your pain amuses me!' WHERE `entry`=16807 AND `groupid`=3 AND `id`=2;
UPDATE `creature_text` SET `text`='I''m already bored!' WHERE `entry`=16807 AND `groupid`=4 AND `id`=0;
UPDATE `creature_text` SET `text`='Come on, show me a real fight!' WHERE `entry`=16807 AND `groupid`=4 AND `id`=1;
UPDATE `creature_text` SET `text`='I had more fun torturing the peons!' WHERE `entry`=16807 AND `groupid`=4 AND `id`=2;
UPDATE `creature_text` SET `text`='You lose.' WHERE `entry`=16807 AND `groupid`=5 AND `id`=0;
UPDATE `creature_text` SET `text`='Oh, just die!' WHERE `entry`=16807 AND `groupid`=5 AND `id`=1;
UPDATE `creature_text` SET `text`='What... a shame.' WHERE `entry`=16807 AND `groupid`=6;

-- Warchief Kargath Bladefist
UPDATE `creature_text` SET `text`='Ours is the TRUE Horde! The only Horde!' WHERE `entry`=16808 AND `groupid`=0 AND `id`=0;
UPDATE `creature_text` SET `text`='I am called Bladefist for a reason. As you will see.' WHERE `entry`=16808 AND `groupid`=0 AND `id`=2;
UPDATE `creature_text` SET `text`='I am the ONLY warchief!' WHERE `entry`=16808 AND `groupid`=1 AND `id`=1;
UPDATE `creature_text` SET `text`='The true Horde... will prevail.' WHERE `entry`=16808 AND `groupid`=2;

-- Barnes <The Stage Manager>
UPDATE `creature_text` SET `text`='Welcome ladies and gentlemen, to this evening''s presentation!' WHERE `entry`=16812 AND `groupid`=0;
UPDATE `creature_text` SET `text`='Tonight we plumb the depths of the human soul as we join a lost, lonely girl trying desperately--with the help of her loyal companions--to find her way home!' WHERE `entry`=16812 AND `groupid`=1;
UPDATE `creature_text` SET `text`='But she is pursued... by a wicked, malevolent crone!' WHERE `entry`=16812 AND `groupid`=2;
UPDATE `creature_text` SET `text`='Will she survive? Will she prevail? Only time will tell. And now... on with the show!' WHERE `entry`=16812 AND `groupid`=3;
UPDATE `creature_text` SET `text`='Good evening ladies and gentlemen, welcome to this evening''s presentation!' WHERE `entry`=16812 AND `groupid`=4;
UPDATE `creature_text` SET `text`='Tonight, things are not what they seem... for tonight your eyes may not be trusted!' WHERE `entry`=16812 AND `groupid`=5;
UPDATE `creature_text` SET `text`='Take for instance this quiet elderly woman waiting for a visit from her granddaughter... surely there is nothing to fear from this sweet, gray-haired old lady!' WHERE `entry`=16812 AND `groupid`=6;
UPDATE `creature_text` SET `text`='But don''t let me pull the wool over your eyes! See for yourself what lies beneath those covers! And now... on with the show!' WHERE `entry`=16812 AND `groupid`=7;
UPDATE `creature_text` SET `text`='Welcome ladies and gentlemen, to this evening''s presentation!' WHERE `entry`=16812 AND `groupid`=8;
UPDATE `creature_text` SET `text`='Tonight... we explore a tale of forbidden love!' WHERE `entry`=16812 AND `groupid`=9;
UPDATE `creature_text` SET `text`='But beware, for not all love stories end happily, as you may find out. Sometimes, love pricks like a thorn!' WHERE `entry`=16812 AND `groupid`=10;
UPDATE `creature_text` SET `text`='But don''t take it from me; see for yourself what tragedy lies ahead when the paths of star crossed lovers meet! And now... on with the show!' WHERE `entry`=16812 AND `groupid`=11;

-- Shadow Council Enforcer
UPDATE `creature_text` SET `text`='Gul''dan speaks the truth! We should return at once to tell our brothers of the news! Retreat back through the portal!', `type`=14 WHERE `entry`=17023 AND `groupid`=0;

-- Nightbane
UPDATE `creature_text` SET `text`='%s takes a deep breath.', `type`=41 WHERE `entry`=17225 AND `groupid`=4;
-- Pilfering Perfume (A:24656 H:24541)

SET @QUEST_A           := 24656;
SET @QUEST_H           := 24541;

SET @SNIP              := 38066; -- Inspector Snip Snagglebolt
SET @SNAP              := 37172; -- Detective Snap Snagglebolt
SET @MENUID            := 10976;

SET @TRIGGER_SW_OUT    := 5703; -- outside
SET @TRIGGER_SW_IN     := 5704; -- inside
SET @TRIGGER_ORG_OUT   := 5705; -- outside
SET @TRIGGER_ORG_IN    := 5706; -- inside

SET @SPELL_UNIFORM     := 71450; -- Crown Parcel Service Uniform
SET @SPELL_CONTRABAND  := 71459; -- Crown Chemical Co. Contraband

SET @SPELL_CREDIT_A    := 71522; -- Crown Chemical Co. Supplies
SET @SPELL_CREDIT_H    := 71539; -- Crown Chemical Co. Supplies

-- SET @GUID              := 48571; -- set by TDB,need 3 (48571,48572,48573)
SET @EVENT             := 8; -- Love is in the Air
SET @NPC_GUARD         := 37671; -- Crown Supply Guard

/* 4,x removed
-- missing npcs on horde side
DELETE FROM `creature` WHERE `id`=@NPC_GUARD;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+0,@NPC_GUARD,1,1,1,0,0,1391.2,-4486.23,31.4544,3.3355,300,0,0,42,0,0,0,0,0),
(@GUID+1,@NPC_GUARD,1,1,1,0,0,1392.66,-4481.87,31.3782,1.97284,300,0,0,42,0,0,0,0,0),
(@GUID+2,@NPC_GUARD,1,1,1,0,0,1393.92,-4489.57,31.4737,4.93701,300,0,0,42,0,0,0,0,0);


DELETE FROM `game_event_creature` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @GUID+0 AND @GUID+2;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES
(@EVENT,@GUID+0),
(@EVENT,@GUID+1),
(@EVENT,@GUID+2);

-- removing a wrong spawn
DELETE FROM `creature` WHERE `guid`=40507;
DELETE FROM `game_event_creature` WHERE `guid`=40507;

-- deleting wrong previous spawns and reusing some guids to spawn proper ones
DELETE FROM `gameobject` WHERE `guid` IN (24416,24417,24418,24419,24420,24421,24422,24423,24433,24434,24435,24436,24437,24438,24439,24440,24441);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(24416,181015,1,1,1,1392.938,-4485.202,31.41421,0,0,0,0,1,120,255,1),
(24417,201778,1,1,1,1393.677,-4486.033,32.67227,0,0,0,0,1,120,255,1),
(24418,201752,1,1,1,1394.184,-4484.108,31.24833,4.32842,0,0,0,1,120,255,1),
(24419,201778,1,1,1,1394.26,-4484.368,32.50796,5.148723,0,0,0,1,120,255,1),
(24420,201752,1,1,1,1393.319,-4486.797,31.42903,4.101525,0,0,0,1,120,255,1),
(24421,201752,1,1,1,1394.401,-4485.688,31.35416,5.916668,0,0,0,1,120,255,1),
(24422,201752,1,1,1,1394.042,-4488.397,31.4775,4.32842,0,0,0,1,120,255,1),
(24423,201752,1,1,1,1396.476,-4482.715,32.14788,4.32842,0,0,0,1,120,255,1),
(24433,181015,1,1,1,1395.002,-4487.113,31.37537,3.874631,0,0,0,1,120,255,1),
(24434,181015,1,1,1,1396.632,-4482.505,30.87226,5.166176,0,0,0,1,120,255,1),
(24435,201752,1,1,1,1395.813,-4486.439,32.56021,1.710422,0,0,0,1,120,255,1),
(24436,201752,1,1,1,1396.595,-4486.056,31.15484,4.32842,0,0,0,1,120,255,1),
(24437,201752,1,1,1,1397.377,-4488.021,33.71862,0.157079,0,0,0,1,120,255,1),
(24438,181015,1,1,1,1397.51,-4487.901,32.46279,3.68265,0,0,0,1,120,255,1),
(24439,201752,1,1,1,1397.571,-4487.939,31.21067,3.33359,0,0,0,1,120,255,1);
-- these guids will remain free
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@EVENT AND `guid` IN (24440,24441);
*/


-- Snip & Snap sai
UPDATE `creature_template` SET `npcflag`=`npcflag`|1|2,`gossip_menu_id`=@MENUID,`AIName`='SmartAI' WHERE `entry` IN (@SNIP,@SNAP);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@SNIP,@SNAP) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SNIP,0,0,0,19,0,100,0,@QUEST_A,0,0,0,11,@SPELL_UNIFORM,0,0,0,0,0,7,0,0,0,0,0,0,0,'Snip - On quest accept - Spellcast'),
(@SNIP,0,1,2,62,0,100,0,@MENUID,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Snip - On gossip option select - Close gossip'),
(@SNIP,0,2,0,61,0,100,0,0,0,0,0,11,@SPELL_UNIFORM,0,0,0,0,0,7,0,0,0,0,0,0,0,'Snip - On gossip option accept - Spellcast'),
--
(@SNAP,0,0,0,19,0,100,0,@QUEST_H,0,0,0,11,@SPELL_UNIFORM,0,0,0,0,0,7,0,0,0,0,0,0,0,'Snap - On quest accept - Spellcast'),
(@SNAP,0,1,2,62,0,100,0,@MENUID,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Snap - On gossip option select - Close gossip'),
(@SNAP,0,2,0,61,0,100,0,0,0,0,0,11,@SPELL_UNIFORM,0,0,0,0,0,7,0,0,0,0,0,0,0,'Snap - On gossip option accept - Spellcast');

DELETE FROM `areatrigger_involvedrelation` WHERE `id` IN (@TRIGGER_SW_OUT,@TRIGGER_SW_IN,@TRIGGER_ORG_OUT,@TRIGGER_ORG_IN);
INSERT INTO `areatrigger_involvedrelation` (`id`,`quest`) VALUES
(@TRIGGER_SW_OUT,@QUEST_A),
(@TRIGGER_SW_IN,@QUEST_A),
--
(@TRIGGER_ORG_OUT,@QUEST_H),
(@TRIGGER_ORG_IN,@QUEST_H);

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (@TRIGGER_SW_OUT,@TRIGGER_SW_IN,@TRIGGER_ORG_OUT,@TRIGGER_ORG_IN);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(@TRIGGER_SW_OUT,'SmartTrigger'),
(@TRIGGER_SW_IN,'SmartTrigger'),
--
(@TRIGGER_ORG_OUT,'SmartTrigger'),
(@TRIGGER_ORG_IN,'SmartTrigger');

-- usig invoker cast because normal cast doesn't want to work(LoS issue,i think)
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@TRIGGER_SW_OUT,@TRIGGER_SW_IN,@TRIGGER_ORG_OUT,@TRIGGER_ORG_IN) AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@TRIGGER_SW_OUT,2,0,0,46,0,100,0,@TRIGGER_SW_OUT,0,0,0,85,@SPELL_CONTRABAND,0,0,0,0,0,7,0,0,0,0,0,0,0,"On Trigger - Cast - Invoker"),
(@TRIGGER_SW_IN,2,0,0,46,0,100,0,@TRIGGER_SW_IN,0,0,0,85,@SPELL_CREDIT_A,0,0,0,0,0,7,0,0,0,0,0,0,0,"On Trigger - Cast - Invoker"),
--
(@TRIGGER_ORG_OUT,2,0,0,46,0,100,0,@TRIGGER_ORG_OUT,0,0,0,85,@SPELL_CONTRABAND,0,0,0,0,0,7,0,0,0,0,0,0,0,"On Trigger - Cast - Invoker"),
(@TRIGGER_ORG_IN,2,0,0,46,0,100,0,@TRIGGER_ORG_IN,0,0,0,85,@SPELL_CREDIT_H,0,0,0,0,0,7,0,0,0,0,0,0,0,"On Trigger - Cast - Invoker");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` IN (@TRIGGER_SW_OUT,@TRIGGER_SW_IN,@TRIGGER_ORG_OUT,@TRIGGER_ORG_IN);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@MENUID;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,@TRIGGER_SW_OUT,2,0,1,0,@SPELL_UNIFORM,0,0,0,0,0,'','execute sai only if player has aura'),
(22,1,@TRIGGER_SW_IN,2,0,1,0,@SPELL_CONTRABAND,0,0,0,0,0,'','execute sai only if player has aura'),
(15,@MENUID,0,0,0,9,0,@QUEST_A,0,0,0,0,0,'','show gossip option only if player has quest taken'),
--
(22,1,@TRIGGER_ORG_OUT,2,0,1,0,@SPELL_UNIFORM,0,0,0,0,0,'','execute sai only if player has aura'),
(22,1,@TRIGGER_ORG_IN,2,0,1,0,@SPELL_CONTRABAND,0,0,0,0,0,'','execute sai only if player has aura'),
(15,@MENUID,0,0,1,9,0,@QUEST_H,0,0,0,0,0,'','show gossip option only if player has quest taken');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (@SPELL_CREDIT_A,@SPELL_CREDIT_H,-@SPELL_UNIFORM);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@SPELL_CREDIT_A,-@SPELL_UNIFORM,1,'Remove Crown Parcel Service Uniform on Crown Chemical Co. Supplies hit'),
(@SPELL_CREDIT_H,-@SPELL_UNIFORM,1,'Remove Crown Parcel Service Uniform on Crown Chemical Co. Supplies hit'),
(-@SPELL_UNIFORM,-@SPELL_CONTRABAND,0,'Remove Crown Chemical Co. Contraband when Crown Parcel Service Uniform is removed');

DELETE FROM `spell_script_names` WHERE `spell_id`=@SPELL_UNIFORM;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(@SPELL_UNIFORM,'spell_gen_aura_service_uniform');
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 63 AND 95;
INSERT INTO trinity_string (entry, content_default) VALUES
(63, "Wrong parameter id: %u, does not exist"),
(64, "Wrong parameter realmId: %d"),
(65, "Couldn't add group %u (%s) realmId %d. Account %u (%s) already has that group"),
(66, "Couldn't remove group %u (%s) realmId %d. Account %u (%s) does not have that group"),
(67, "Added group %u (%s) realmId %d to account %u (%s)"),
(68, "Removed group %u (%s) realmId %d from account %u (%s)"),
(69, "Account %u (%s) groups:"),
(70, "Empty List"),
(71, "- %u (%s)"),
(72, "Couldn't grant role %u (%s) realmId %d. Account %u (%s) already has that role"),
(73, "Couldn't grant role %u (%s) realmId %d. Account %u (%s) has that role in deny list"),
(74, "Granted role %u (%s) realmId %d to account %u (%s)"),
(75, "Couldn't deny role %u (%s) realmId %d. Account %u (%s) already has that role"),
(76, "Couldn't deny role %u (%s) realmId %d. Account %u (%s) has that role in deny list"),
(77, "Denied role %u (%s) realmId %d to account %u (%s)"),
(78, "Denied role %u (%s) realmId %d to account %u (%s)"),
(79, "Couldn't revoke role %u (%s) realmId %d. Account %u (%s) does not have that role"),
(80, "Account %u (%s) granted roles:"),
(81, "Account %u (%s) denied roles:"),
(82, "Couldn't grant permission %u (%s) realmId %d. Account %u (%s) already has that permission"),
(83, "Couldn't grant permission %u (%s) realmId %d. Account %u (%s) has that permission in deny list"),
(84, "Granted permission %u (%s) realmId %d to account %u (%s)"),
(85, "Couldn't deny permission %u (%s) realmId %d. Account %u (%s) already has that permission"),
(86, "Couldn't deny permission %u (%s) realmId %d. Account %u (%s) has that permission in deny list"),
(87, "Denied permission %u (%s) realmId %d to account %u (%s)"),
(88, "Revoked permission %u (%s) realmId %d to account %u (%s)"),
(89, "Couldn't revoke permission %u (%s) realmId %d. Account %u (%s) does not have that permission"),
(90, "Account %u (%s) granted permissions:"),
(91, "Account %u (%s) denied permissions:"),
(92, "Account %u (%s) global permissions:"),
(93, "Groups:"),
(94, "Roles:"),
(95, "Permissions:");

DELETE FROM `command` WHERE `name` LIKE '.rbac%';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('.rbac account',                   3, 'Syntax: .rbac account [$account]\n\nView permissions of selected player or given account\nNote: Only those that affect current realm\n\nNote: Shows real permissions after checking group and roles'),
('.rbac account group',             3, 'Syntax: .rbac account group [$account]\n\nView groups of selected player or given account\nNote: Only those that affect current realm'),
('.rbac account group add',         3, 'Syntax: .rbac account group add [$account] #id [#realmId]\n\nAdd a group to selected player or given account.\n\n#reamID may be -1 for all realms.'),
('.rbac account group remove',      3, 'Syntax: .rbac account group remove [$account] #id\n\nRemove a group from selected player or given account.'),
('.rbac account role',              3, 'Syntax: .rbac account role [$account]\n\nView roles of selected player or given account\nNote: Only those that affect current realm\nNote: Only those directly granted or denied, does not include inherited roles from groups'),
('.rbac account role grant',        3, 'Syntax: .rbac account role grant [$account] #id [#realmId]\n\nGrant a role to selected player or given account.\n\n#reamID may be -1 for all realms.'),
('.rbac account role deny',         3, 'Syntax: .rbac account role deny [$account] #id [#realmId]\n\nDeny a role to selected player or given account.\n\n#reamID may be -1 for all realms.'),
('.rbac account role revoke',       3, 'Syntax: .rbac account role revoke [$account] #id\n\nRemove a role from an account\n\nNote: Removes the role from granted or denied roles'),
('.rbac account permission',        3, 'Syntax: .rbac account permission [$account]\n\nView permissions of selected player or given account\nNote: Only those that affect current realm\nNote: Only those directly granted or denied, does not include inherited permissions from roles'),
('.rbac account permission grant',  3, 'Syntax: .rbac account permission grant [$account] #id [#realmId]\n\nGrant a permission to selected player or given account.\n\n#reamID may be -1 for all realms.'),
('.rbac account permission deny',   3, 'Syntax: .rbac account permission deny [$account] #id [#realmId]\n\nDeny a permission to selected player or given account.\n\n#reamID may be -1 for all realms.'),
('.rbac account permission revoke', 3, 'Syntax: .rbac account permission revoke [$account] #id\n\nRemove a permission from an account\n\nNote: Removes the permission from granted or denied permissions'),
('.rbac list groups',               3, 'Syntax: .rbac list groups [$id]\n\nView list of all groups. If $id is given will show group info and his inherited roles.'),
('.rbac list roles',                3, 'Syntax: .rbac list roles [$id]\n\nView list of all roles. If $id is given will show role info and his inherited permissions.'),
('.rbac list permissions',          3, 'Syntax: .rbac list permissions [$id]\n\nView list of all permissions. If $id is given will show only info for that permission.');
DELETE FROM `trinity_string` WHERE entry IN (300,550);
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('300','Your chat has been disabled for %u minutes. By: %s ,Reason: %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('550','Mute time remaining: %s, By: %s, Reason: %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_gen_luck_of_the_draw';
UPDATE `command` SET `name` = 'rbac account'                   WHERE `name` LIKE '.rbac account';
UPDATE `command` SET `name` = 'rbac account group'             WHERE `name` LIKE '.rbac account group';
UPDATE `command` SET `name` = 'rbac account group add'         WHERE `name` LIKE '.rbac account group add';
UPDATE `command` SET `name` = 'rbac account group remove'      WHERE `name` LIKE '.rbac account group remove';
UPDATE `command` SET `name` = 'rbac account permission'        WHERE `name` LIKE '.rbac account permission';
UPDATE `command` SET `name` = 'rbac account permission deny'   WHERE `name` LIKE '.rbac account permission deny';
UPDATE `command` SET `name` = 'rbac account permission grant'  WHERE `name` LIKE '.rbac account permission grant';
UPDATE `command` SET `name` = 'rbac account permission revoke' WHERE `name` LIKE '.rbac account permission revoke';
UPDATE `command` SET `name` = 'rbac account role'              WHERE `name` LIKE '.rbac account role';
UPDATE `command` SET `name` = 'rbac account role deny'         WHERE `name` LIKE '.rbac account role deny';
UPDATE `command` SET `name` = 'rbac account role grant'        WHERE `name` LIKE '.rbac account role grant';
UPDATE `command` SET `name` = 'rbac account role revoke'       WHERE `name` LIKE '.rbac account role revoke';
UPDATE `command` SET `name` = 'rbac list groups'               WHERE `name` LIKE '.rbac list groups';
UPDATE `command` SET `name` = 'rbac list permissions'          WHERE `name` LIKE '.rbac list permissions';
UPDATE `command` SET `name` = 'rbac list roles'                WHERE `name` LIKE '.rbac list roles';
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (3931,12859,4227,3929);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
-- aliance
-- Kissed Sraaz
(3931,1,9099,0,''),
(3931,11,0,0,'achievement_flirt_with_disaster_perf_check'),
(3931,15,3,0,''),
-- Handful of Rose Petals on Sraaz
(12859,1,9099,0,''),
(12859,11,0,0,'achievement_flirt_with_disaster_perf_check'),
(12859,15,3,0,''),
-- horde
-- Kissed Jeremiah Payson
(3929,1,8403,0,''),
(3929,11,0,0,'achievement_flirt_with_disaster_perf_check'),
(3929,15,3,0,''),
-- Handful of Rose Petals on Jeremiah Payson
(4227,1,8403,0,''),
(4227,11,0,0,'achievement_flirt_with_disaster_perf_check'),
(4227,15,3,0,'');
UPDATE `creature_template` SET `faction_A`=15, `faction_H`=15, `speed_walk`=1.111112, `baseattacktime`=2000, `rangeattacktime`=2000, `dynamicflags`=0 WHERE `entry`=3094; -- Unseen
DELETE FROM `disables` WHERE `sourceType`=0 AND `entry`=16378;
INSERT INTO `disables`(`sourceType`,`entry`,`flags`) VALUE
(0,16378,64);
/* 4.x removed
DELETE FROM `item_template` WHERE `entry` IN (54516, 54537);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `WDBVerified`) VALUES
(54516, 15, 0, -1, 'Loot-Filled Pumpkin', 67153, 3, 4, 8192, 1, 0, 0, 0, -1, -1, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 324, '', 0, 0, 0, 0, 0, 15595), 
(54537, 15, 0, -1, 'Heart-Shaped Box', 40293, 3, 4, 8192, 1, 0, 0, 0, -1, -1, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 423, '', 0, 0, 0, 0, 0, 15595);
*/
UPDATE `disables` SET `comment`='Ignore LOS for Krakles Thermometer' WHERE `sourceType`=0 AND `entry`=16378;
-- Molten core
DELETE FROM `spell_proc_event` WHERE `entry` IN (47245, 47246, 47247);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(47245, 0, 5, 4, 0, 0, 0, 1, 0, 0, 0),
(47246, 0, 5, 4, 0, 0, 0, 1, 0, 0, 0),
(47247, 0, 5, 4, 0, 0, 0, 1, 0, 0, 0);
DELETE FROM `areatrigger_involvedrelation` WHERE `id` IN (5710,5711,5712,5714,5715,5716);

DELETE FROM `smart_scripts` WHERE `entryorguid`=5710 AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(5710,2,0,1,46,0,100,0,5710,0,0,0,86,71713,0,10,208836,38340,0,7,0,0,0,0,0,0,0,"On Trigger - Crosscast - Invoker"),
(5710,2,1,0,61,0,100,0,0,0,0,0,51,0,0,0,0,0,0,10,208836,38340,0,0,0,0,0,"Link - Kill - Bunny");

UPDATE `quest_template` SET `SpecialFlags`=0 WHERE `Id` IN (24849,24851);
DELETE FROM `areatrigger_teleport` WHERE `id` IN (2406, 2407, 2408, 2409, 2410, 2411);
INSERT INTO `areatrigger_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `name`) VALUES
(2406, 0, -276.241, 1652.68, 77.5589, 3.14159, 'Shadowfang - South Fall Target'),
(2407, 0, -276.241, 1652.68, 77.5589, 3.14159, 'Shadowfang - South Fall Target'),
(2408, 0, -225.34, 1556.53, 93.0454, 4.71239, 'Shadowfang Front Fall Exit Target'),
(2409, 0, -225.34, 1556.53, 93.0454, 4.71239, 'Shadowfang Front Fall Exit Target'),
(2410, 0, -181.26, 1580.65, 97.4466, 6.28319, 'Shadowfang - North Fall Target'),
(2411, 0, -181.26, 1580.65, 97.4466, 6.28319, 'Shadowfang - North Fall Target');
SET @GUID = 4522; -- 4.x removed
SET @SINK = 300177;

-- spawn TEMP South Sinkhole
DELETE FROM `gameobject` WHERE `guid`=@GUID AND `id`=@SINK;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID, @SINK, 571, 1, 1, 3488.48, 4515.98, -20.7394, 5.34436, 0, 0, 0.452361, -0.891835, 300, 0, 1);

-- increase TEMP South Sinkhole spellfocus radius
UPDATE `gameobject_template` SET `data1`=20 WHERE `entry`=@SINK;
-- Stormwind Vault Entrance & Zul'Gurub Exit 
DELETE FROM `areatrigger_teleport` WHERE `id` IN (107, 3930);
UPDATE `areatrigger_teleport` SET `name`='Naxxramas - Entrance Teleport Target', `target_position_x`=3005.67, `target_position_y`=-3454.14, `target_position_z`=297.125, `target_orientation`=4.71239 WHERE `id` IN (5191, 5192, 5193, 5194); -- WSL 3857, 3858, 3859, 3860 - Now all the same position
UPDATE `areatrigger_teleport` SET `name`='Naxxramas - Exit Teleport Target', `target_position_x`=3672.85, `target_position_y`=-1272.37, `target_position_z`=243.509, `target_orientation`=2.35619 WHERE `id` IN (5196, 5197, 5198, 5199); -- WSL 3861, 3862, 3863, 3864 - Now all the same position
UPDATE `areatrigger_teleport` SET `name`='Gundrak - Entrance Target A (Mammoth)', `target_position_x`=1880.74, `target_position_y`=853.76, `target_position_z`=176.696, `target_orientation`=3.14159 WHERE `id`=5205; -- WSL 3865
UPDATE `areatrigger_teleport` SET `name`='Gundrak - Entrance Target B (Snake)', `target_position_x`=1882.32, `target_position_y`=631.027, `target_position_z`=176.696, `target_orientation`=3.14159 WHERE `id`=5206; -- WSL 3866
UPDATE `areatrigger_teleport` SET `name`='Naxxramas - Frostwyrm Entry Teleport Target', `target_position_x`=3498.13, `target_position_y`=-5349.6, `target_position_z`=144.967, `target_orientation`=1.48353 WHERE `id`=4156; -- WSL 3721
UPDATE `areatrigger_teleport` SET `name`='Violet Hold - Entrance Target', `target_position_x`=1806.37, `target_position_y`=803.374, `target_position_z`=44.3647, `target_orientation`=0 WHERE `id`=5209; -- WSL 3867
UPDATE `areatrigger_teleport` SET `name`='Violet Hold - Exit Target', `target_position_x`=5682.51, `target_position_y`=489.276, `target_position_z`=652.299, `target_orientation`=0.890118 WHERE `id`=5211; -- WSL 3868
UPDATE `areatrigger_teleport` SET `name`='Lower City - Exit Target', `target_position_x`=3641.17, `target_position_y`=2031.15, `target_position_z`=2.59325, `target_orientation`=1.22173 WHERE `id`=5213; -- WSL 3869
UPDATE `areatrigger_teleport` SET `name`='Lower City - Entrance Target', `target_position_x`=335.736, `target_position_y`=-1108.36, `target_position_z`=68.5133, `target_orientation`=0.645772 WHERE `id`=5215; -- WSL 3870
UPDATE `areatrigger_teleport` SET `name`='Gundrak - Exit Target A (Mammoth)', `target_position_x`=6717.32, `target_position_y`=-4645.55, `target_position_z`=450.017, `target_orientation`=0.785398 WHERE `id` IN (5231, 5276); -- WSL 3871, 3880
UPDATE `areatrigger_teleport` SET `name`='Gundrak - Exit Target B (Snake)', `target_position_x`=6955.24, `target_position_y`=-4416.92, `target_position_z`=450.447, `target_orientation`=3.92699 WHERE `id` IN (5233, 5277); -- WSL 3872, 3881
UPDATE `areatrigger_teleport` SET `name`='CoA Black - Exit Target', `target_position_x`=3457.61, `target_position_y`=262.714, `target_position_z`=-114.047, `target_orientation`=0.122173 WHERE `id`=5241; -- WSL 3874
UPDATE `areatrigger_teleport` SET `name`='CoA Black - Entrance Target', `target_position_x`=3228.34, `target_position_y`=394.577, `target_position_z`=62.1694, `target_orientation`=1.53589 WHERE `id`=5243; -- WSL 3875
UPDATE `areatrigger_teleport` SET `name`='Nexus 80 - Entrance Target', `target_position_x`=1056.96, `target_position_y`=986.421, `target_position_z`=361.07, `target_orientation`=5.89921 WHERE `id`=5246; -- WSL 3876
UPDATE `areatrigger_teleport` SET `name`='Wintergrasp Raid - Teleport Target', `target_position_x`=-507.946, `target_position_y`=-103.067, `target_position_z`=157, `target_orientation`=0 WHERE `id`=5258; -- WSL 3878
UPDATE `areatrigger_teleport` SET `name`='Wintergrasp Raid - Teleport Target - Exit', `target_position_x`=5485.52, `target_position_y`=2840.14, `target_position_z`=420.037, `target_orientation`=3.14159 WHERE `id`=5262; -- WSL 3879
UPDATE `areatrigger_teleport` SET `name`='Eye of Eternity - Port In Loc', `target_position_x`=728.055, `target_position_y`=1329.03, `target_position_z`=275, `target_orientation`=5.51524 WHERE `id`=5290; -- WSL 3882
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - East Entrance Target 01', `target_position_x`=47.4501, `target_position_y`=-153.665, `target_position_z`=-2.71439, `target_orientation`=5.49779 WHERE `id`=3183; -- WSL 3682
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - East Entrance Target 02', `target_position_x`=-203.166, `target_position_y`=-322.997, `target_position_z`=-2.72467, `target_orientation`=4.71239 WHERE `id`=3184; -- WSL 3683
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - East Entrance Target 03', `target_position_x`=10.5786, `target_position_y`=-836.991, `target_position_z`=-32.3988, `target_orientation`=6.28319 WHERE `id`=3185; -- WSL 3684
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - West Entrance Target 01', `target_position_x`=-65.6559, `target_position_y`=159.561, `target_position_z`=-3.4647, `target_orientation`=2.35619 WHERE `id`=3186; -- WSL 3685
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - West Entrance Target 02', `target_position_x`=33.1083, `target_position_y`=158.977, `target_position_z`=-3.47126, `target_orientation`=0.785398 WHERE `id`=3187; -- WSL 3686
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - North Entrance Target 02', `target_position_x`=254.92, `target_position_y`=-19.463, `target_position_z`=-2.5596, `target_orientation`=5.49779 WHERE `id`=3189; -- WSL 3687
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - West Exit Target 01', `target_position_x`=-3812.76, `target_position_y`=1250.33, `target_position_z`=160.273, `target_orientation`=6.28319 WHERE `id`=3190; -- WSL 3688
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - West Exit Target 02', `target_position_x`=-3766.57, `target_position_y`=1249.48, `target_position_z`=160.273, `target_orientation`=3.14159 WHERE `id`=3191; -- WSL 3689
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - North Exit Target 02', `target_position_x`=-3520.07, `target_position_y`=1100.1, `target_position_z`=161.027, `target_orientation`=1.5708 WHERE `id`=3193; -- WSL 3690
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - East Exit Target 01', `target_position_x`=-3768.78, `target_position_y`=935.179, `target_position_z`=161.027, `target_orientation`=3.14159 WHERE `id`=3194; -- WSL 3691
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - East Exit Target 02', `target_position_x`=-3980.81, `target_position_y`=801.198, `target_position_z`=161.012, `target_orientation`=1.5708 WHERE `id`=3195; -- WSL 3692
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - East Exit Target 03', `target_position_x`=-4031.25, `target_position_y`=129.345, `target_position_z`=26.4744, `target_orientation`=2.70526 WHERE `id`=3196; -- WSL 3693
UPDATE `areatrigger_teleport` SET `name`='Dire Maul - East Exit Target 04', `target_position_x`=-3585.84, `target_position_y`=847.367, `target_position_z`=138.641, `target_orientation`=2.35619 WHERE `id`=3197; -- WSL 3694
UPDATE `areatrigger_teleport` SET `name`='Maraudon - Purple Exit Target', `target_position_x`=-1183.87, `target_position_y`=2876.53, `target_position_z`=85.8458, `target_orientation`=1.65806 WHERE `id`=3126; -- WSL 3678
UPDATE `areatrigger_teleport` SET `name`='Maraudon - Orange Exit Target', `target_position_x`=-1471.77, `target_position_y`=2616.09, `target_position_z`=76.301, `target_orientation`=6.10865 WHERE `id`=3131; -- WSL 3679
UPDATE `areatrigger_teleport` SET `name`='Maraudon - Orange Entrance Target', `target_position_x`=1016.83, `target_position_y`=-458.52, `target_position_z`=-43.4737, `target_orientation`=6.28319 WHERE `id`=3133; -- WSL 3680
UPDATE `areatrigger_teleport` SET `name`='Maraudon - Purple Entrance Target', `target_position_x`=755.078, `target_position_y`=-617.696, `target_position_z`=-32.9222, `target_orientation`=1.5708 WHERE `id`=3134; -- WSL 3681
UPDATE `areatrigger_teleport` SET `name`='Molten Core Entrance Target', `target_position_x`=1091.89, `target_position_y`=-466.985, `target_position_z`=-105.084, `target_orientation`=3.14159 WHERE `id` IN (2886, 3528, 3529); -- WSL 3676, 3695, 3696
UPDATE `areatrigger_teleport` SET `name`='Molten Core Exit Target', `target_map`=0, `target_position_x`=-7508.32, `target_position_y`=-1039.74, `target_position_z`=180.912, `target_orientation`=3.83972 WHERE `id`=2890; -- WSL 3677
UPDATE `areatrigger_teleport` SET `name`='Onyxia''s Lair Entrance Target', `target_position_x`=30.8916, `target_position_y`=-54.079, `target_position_z`=-5.02784, `target_orientation`=4.71239 WHERE `id`=2848; -- WSL 3675
UPDATE `areatrigger_teleport` SET `name`='Alterac Valley - Horde Exit Target', `target_position_x`=536.495, `target_position_y`=-1085.72, `target_position_z`=106.27, `target_orientation`=3.66519 WHERE `id`=2606; -- WSL 3673
UPDATE `areatrigger_teleport` SET `name`='Alterac Valley - Alliance Exit Target', `target_position_x`=101.144, `target_position_y`=-184.934, `target_position_z`=127.344, `target_orientation`=4.88692 WHERE `id`=2608; -- WSL 3674
UPDATE `areatrigger_teleport` SET `name`='Orgrimmar - Barracks Exit Target 001', `target_position_x`=1637.91, `target_position_y`=-4240.25, `target_position_z`=56.1744, `target_orientation`=3.92699 WHERE `id`=2530; -- WSL 3666
UPDATE `areatrigger_teleport` SET `name`='Stormwind - Barracks Exit Target 001', `target_position_x`=-8762.82, `target_position_y`=402.434, `target_position_z`=103.901, `target_orientation`=5.49779 WHERE `id`=2534; -- WSL 3667
UPDATE `areatrigger_teleport` SET `name`='OrgrimmarInstance Exit Target 001', `target_position_x`=1813.15, `target_position_y`=-4415.75, `target_position_z`=-18.2856, `target_orientation`=2.00713 WHERE `id`=2226; -- WSL 3656
UPDATE `areatrigger_teleport` SET `name`='OrgrimmarInstance Entrance Target 001', `target_position_x`=0.797643, `target_position_y`=-8.23429, `target_position_z`=-15.5288, `target_orientation`=4.71239 WHERE `id`=2230; -- WSL 3657
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monastery Entrance Target 01', `target_position_x`=1687.27, `target_position_y`=1050.09, `target_position_z`=18.6773, `target_orientation`=1.5708 WHERE `id`=45; -- WSL 3597
UPDATE `areatrigger_teleport` SET `name`='Stormwind Jail Entrance Target', `target_position_x`=48.9849, `target_position_y`=0.483882, `target_position_z`=-16.3942, `target_orientation`=6.28319 WHERE `id`=101; -- WSL 3599
UPDATE `areatrigger_teleport` SET `name`='Stormwind High Prison Exit Target', `target_position_x`=-8661.57, `target_position_y`=616.574, `target_position_z`=86.1877, `target_orientation`=5.49779 WHERE `id`=109; -- WSL 3600
UPDATE `areatrigger_teleport` SET `name`='Shadowfang Entrance Target' WHERE `id`=145; -- WSL 3602
UPDATE `areatrigger_teleport` SET `name`='Shadowfang Bridge Exit Target', `target_position_x`=-232.594, `target_position_y`=1567.67, `target_position_z`=76.8845, `target_orientation`=4.36332 WHERE `id`=194; -- WSL 3603
UPDATE `areatrigger_teleport` SET `name`='Wailing Caverns Exit Target', `target_position_x`=-738.462, `target_position_y`=-2217.8, `target_position_z`=16.919, `target_orientation`=6.02139 WHERE `id`=226; -- WSL 3604
UPDATE `areatrigger_teleport` SET `name`='Wailing Cavern Entrance Target' WHERE `id`=228; -- WSL 3605
UPDATE `areatrigger_teleport` SET `name`='Razorfen Exit Target', `target_position_x`=-4462, `target_position_y`=-1663.06, `target_position_z`=81.8912, `target_orientation`=3.92699 WHERE `id`=242; -- WSL 3606
UPDATE `areatrigger_teleport` SET `name`='Razorfen Entrance Target', `target_position_x`=1942.27, `target_position_y`=1544.23, `target_position_z`=83.3055, `target_orientation`=1.309 WHERE `id`=244; -- WSL 3607
UPDATE `areatrigger_teleport` SET `name`='Blackfathom Entrance Target' WHERE `id`=257; -- WSL 3608
UPDATE `areatrigger_teleport` SET `name`='Blackfathom Exit Target', `target_position_x`=4248.14, `target_position_y`=745.047, `target_position_z`=-24.4963, `target_orientation`=4.36332 WHERE `id`=259; -- WSL 3609
UPDATE `areatrigger_teleport` SET `name`='Uldaman Entrance Target', `target_position_x`=-228.859, `target_position_y`=46.1018, `target_position_z`=-46.0186, `target_orientation`=1.5708 WHERE `id`=286; -- WSL 3610
UPDATE `areatrigger_teleport` SET `name`='Uldaman Exit Target', `target_position_x`=-6066.36, `target_position_y`=-2954.85, `target_position_z`=209.772, `target_orientation`=3.1765 WHERE `id`=288; -- WSL 3611
UPDATE `areatrigger_teleport` SET `name`='Gnomeregan Entrance Target' WHERE `id`=324; -- WSL 3613
UPDATE `areatrigger_teleport` SET `name`='Razorfen Downs Entrance Target' WHERE `id`=442; -- WSL 3614
UPDATE `areatrigger_teleport` SET `name`='Razorfen Downs Exit Target', `target_position_x`=-4659.44, `target_position_y`=-2527.94, `target_position_z`=81.6564, `target_orientation`=1.0472 WHERE `id`=444; -- WSL 3615
UPDATE `areatrigger_teleport` SET `name`='Sunken Temple Entrance Target', `target_position_x`=-328.474, `target_position_y`=95.3291, `target_position_z`=-91.0008, `target_orientation`=3.14159 WHERE `id`=446; -- WSL 3616
UPDATE `areatrigger_teleport` SET `name`='Sunken Temple Exit Target', `target_position_x`=-10291.1, `target_position_y`=-3984.65, `target_position_z`=-70.4401, `target_orientation`=1.29154 WHERE `id`=448; -- WSL 3617
UPDATE `areatrigger_teleport` SET `name`='Stormwind Low Prison Exit Target', `target_position_x`=-8766.11, `target_position_y`=845.499, `target_position_z`=87.9952, `target_orientation`=3.83972 WHERE `id`=503; -- WSL 3618
UPDATE `areatrigger_teleport` SET `name`='Gnomeregan Entrance 02 Target', `target_position_x`=-733.636, `target_position_y`=1.86838, `target_position_z`=-249.09, `target_orientation`=3.14159 WHERE `id`=523; -- WSL 3619
UPDATE `areatrigger_teleport` SET `name`='Gnomeregan Exit 02 Target', `target_position_x`=-4915.38, `target_position_y`=811.773, `target_position_z`=268.77, `target_orientation`=4.71239 WHERE `id`=525; -- WSL 3620
UPDATE `areatrigger_teleport` SET `name`='Darnassus Exit Target' WHERE `id`=527; -- WSL 3621
UPDATE `areatrigger_teleport` SET `name`='Darnassus Entrance Target', `target_position_x`=9946.25, `target_position_y`=2612.97, `target_position_z`=1316.49, `target_orientation`=4.71239 WHERE `id`=542; -- WSL 3622
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monastery Exit Target 01', `target_position_x`=2915.34, `target_position_y`=-801.58, `target_position_z`=160.333, `target_orientation`=3.49066 WHERE `id`=602; -- WSL 3623
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monastery Exit Target 02', `target_position_x`=2915.13, `target_position_y`=-823.637, `target_position_z`=160.327, `target_orientation`=3.49066 WHERE `id`=604; -- WSL 3624
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monastery Exit Target 03', `target_position_x`=2885.96, `target_position_y`=-835.802, `target_position_z`=160.327, `target_orientation`=0.349066 WHERE `id`=606; -- WSL 3625
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monastery Exit Target 04', `target_position_x`=2869.32, `target_position_y`=-820.818, `target_position_z`=160.333, `target_orientation`=0.349066 WHERE `id`=608; -- WSL 3626
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monastery Entrance Target 02', `target_position_x`=853.179, `target_position_y`=1319.18, `target_position_z`=18.6714, `target_orientation`=1.5708 WHERE `id`=610; -- WSL 3627
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monastery Entrance Target 03', `target_position_x`=1608.1, `target_position_y`=-318.919, `target_position_z`=18.6714, `target_orientation`=4.71239 WHERE `id`=612; -- WSL 3628
UPDATE `areatrigger_teleport` SET `name`='Scarlet Monastery Entrance Target 04', `target_position_x`=253.672, `target_position_y`=-206.624, `target_position_z`=18.6773, `target_orientation`=4.71239 WHERE `id`=614; -- WSL 3629
UPDATE `areatrigger_teleport` SET `name`='Stormwind - Mage Exit Target', `target_position_x`=-9014.94, `target_position_y`=873.326, `target_position_z`=148.616, `target_orientation`=5.23599 WHERE `id`=702; -- WSL 3630
UPDATE `areatrigger_teleport` SET `name`='Stormwind - Mage Entrance Target', `target_position_x`=-9016.97, `target_position_y`=885.436, `target_position_z`=29.6207, `target_orientation`=5.41052 WHERE `id`=704; -- WSL 3631
UPDATE `areatrigger_teleport` SET `name`='Uldaman Exit Target Rear', `target_position_x`=-6619.97, `target_position_y`=-3765.74, `target_position_z`=266.309, `target_orientation`=3.40339 WHERE `id`=882; -- WSL 3632
UPDATE `areatrigger_teleport` SET `name`='Uldaman Entrance Target Rear', `target_position_x`=-212.95, `target_position_y`=382.427, `target_position_z`=-38.7486, `target_orientation`=1.39626 WHERE `id`=902; -- WSL 3633
UPDATE `areatrigger_teleport` SET `name`='Zul''Farrak Exit Target', `target_position_x`=-6795.56, `target_position_y`=-2890.72, `target_position_z`=8.88742, `target_orientation`=3.14159 WHERE `id`=922; -- WSL 3634
UPDATE `areatrigger_teleport` SET `name`='Zul''Farrak Entrance Target', `target_position_x`=1212.67, `target_position_y`=842.04, `target_position_z`=8.93346, `target_orientation`=6.28319 WHERE `id`=924; -- WSL 3635
UPDATE `areatrigger_teleport` SET `name`='Thousand Needles - Test of Faith (Target)', `target_position_x`=-5191.27, `target_position_y`=-2802.59, `target_position_z`=-7.21111, `target_orientation`=5.67232 WHERE `id`=943; -- WSL 3636, 3637, 3638
UPDATE `areatrigger_teleport` SET `name`='Onyxia''s Lair Exit Target', `target_position_x`=-4750.38, `target_position_y`=-3754.44, `target_position_z`=49.0485, `target_orientation`=0.785398 WHERE `id`=1064; -- WSL 3639
UPDATE `areatrigger_teleport` SET `name`='Blackwing Lair - Entrance Target', `target_position_x`=-7672.32, `target_position_y`=-1107.05, `target_position_z`=396.651, `target_orientation`=0.785398 WHERE `id`=3726; -- WSL 3700, 3702
UPDATE `areatrigger_teleport` SET `name`='Blackrock Spire Exit Target', `target_map`=0, `target_position_x`=-7524.65, `target_position_y`=-1229.13, `target_position_z`=285.731, `target_orientation`=2.0944 WHERE `id`=3728; -- WSL 3701
UPDATE `areatrigger_teleport` SET `name`='Arathi Highlands - Arathi Basin Exit Target - Alliance', `target_position_x`=-1215.59, `target_position_y`=-2531.75, `target_position_z`=21.6734, `target_orientation`=3.1765 WHERE `id`=3948; -- WSL 3703
UPDATE `areatrigger_teleport` SET `name`='Arathi Highlands - Arathi Basin Exit Target - Horde', `target_position_x`=-831.881, `target_position_y`=-3518.52, `target_position_z`=72.4831, `target_orientation`=3.36849 WHERE `id`=3949; -- WSL 3704
UPDATE `areatrigger_teleport` SET `name`='Ahn''Qiraj Ruins - Outbound Teleport Target', `target_position_x`=-8415.7, `target_position_y`=1502.44, `target_position_z`=30.6862, `target_orientation`=5.49779 WHERE `id`=4006; -- WSL 3707
UPDATE `areatrigger_teleport` SET `name`='Ahn''Qiraj Ruins - Inbound Teleport Target', `target_position_x`=-8436.53, `target_position_y`=1519.17, `target_position_z`=31.907, `target_orientation`=2.61799 WHERE `id`=4008; -- WSL 3708
UPDATE `areatrigger_teleport` SET `name`='Ahn''Qiraj Temple - Inbound Teleport Target', `target_position_x`=-8221.35, `target_position_y`=2014.34, `target_position_z`=129.071, `target_orientation`=0.872665 WHERE `id`=4010; -- WSL 3709
UPDATE `areatrigger_teleport` SET `name`='Ahn''Qiraj Temple - Outbound Target', `target_position_x`=-8239.01, `target_position_y`=1993.25, `target_position_z`=129.071, `target_orientation`=4.01426 WHERE `id`=4012; -- WSL 3710
UPDATE `areatrigger_teleport` SET `name`='Karazhan - Front Entrance Target', `target_position_x`=-11102, `target_position_y`=-1998.2, `target_position_z`=49.8921, `target_orientation`=6.28319 WHERE `id`=4131; -- WSL 3712
UPDATE `areatrigger_teleport` SET `name`='Karazhan - Upper Entrance Target', `target_position_x`=-11041.8, `target_position_y`=-1995.14, `target_position_z`=96.2004, `target_orientation`=2.18166 WHERE `id`=4135; -- WSL 3713
UPDATE `areatrigger_teleport` SET `name`='Hellfire Military - Exit Target', `target_position_x`=-310.515, `target_position_y`=3084.06, `target_position_z`=-3.7682, `target_orientation`=4.71239 WHERE `id`=4145; -- WSL 3714
UPDATE `areatrigger_teleport` SET `name`='Hellfire Demon - Exit Target', `target_position_x`=-302.408, `target_position_y`=3162.92, `target_position_z`=31.7273, `target_orientation`=5.32325 WHERE `id`=4147; -- WSL 3715
UPDATE `areatrigger_teleport` SET `name`='Hellfire Raid - Exit Target', `target_position_x`=-312.27, `target_position_y`=3086.53, `target_position_z`=-116.53, `target_orientation`=2.02458 WHERE `id`=4149; -- WSL 3716
UPDATE `areatrigger_teleport` SET `name`='Hellfire Ramparts - Entrance Target', `target_position_x`=-1355.28, `target_position_y`=1641.57, `target_position_z`=68.274, `target_orientation`=1.0472 WHERE `id`=4150; -- WSL 3717
UPDATE `areatrigger_teleport` SET `name`='Hellfire Military - Entrance Target', `target_position_x`=-40.7388, `target_position_y`=-19.2881, `target_position_z`=-13.8417, `target_orientation`=1.13446 WHERE `id`=4151; -- WSL 3718
UPDATE `areatrigger_teleport` SET `name`='Hellfire Demon - Entrance Target', `target_position_x`=-2.73782, `target_position_y`=19.8424, `target_position_z`=-44.7973, `target_orientation`=4.36332 WHERE `id`=4152; -- WSL 3719
UPDATE `areatrigger_teleport` SET `name`='Hellfire Raid - Entrance Target', `target_position_x`=188.452, `target_position_y`=36.776, `target_position_z`=67.931, `target_orientation`=4.71239 WHERE `id`=4153; -- WSL 3720
UPDATE `areatrigger_teleport` SET `name`='Hellfire Ramparts - Exit Target', `target_position_x`=-363.436, `target_position_y`=3078.43, `target_position_z`=-15.0013, `target_orientation`=4.88692 WHERE `id`=4297; -- WSL 3725
UPDATE `areatrigger_teleport` SET `name`='CoT - Hyjal - Human Base - Teleport Target', `target_position_x`=5066.79, `target_position_y`=-1791.9, `target_position_z`=1321.65, `target_orientation`=2.35619 WHERE `id`=4311; -- WSL 3727
UPDATE `areatrigger_teleport` SET `name`='CoT - Hyjal - Orc Base - Teleport Target', `target_position_x`=5499.96, `target_position_y`=-2756.8, `target_position_z`=1488.96, `target_orientation`=1.39626 WHERE `id`=4312; -- WSL 3728
UPDATE `areatrigger_teleport` SET `name`='CoT - Hyjal - Night Elf Base - Teleport Target', `target_position_x`=5163.02, `target_position_y`=-3428.31, `target_position_z`=1627.61, `target_orientation`=0.785398 WHERE `id`=4313; -- WSL 3729
UPDATE `areatrigger_teleport` SET `name`='CoT - Hyjal - Entrance - Teleport Target', `target_position_x`=4252.72, `target_position_y`=-4226.16, `target_position_z`=868.222, `target_orientation`=2.35619 WHERE `id`=4319; -- WSL 3730
UPDATE `areatrigger_teleport` SET `name`='CoT - Black Morass - Entrance - Teleport Target', `target_position_x`=-1491.61, `target_position_y`=7056.51, `target_position_z`=32.1011, `target_orientation`=1.74533 WHERE `id`=4320; -- WSL 3731
UPDATE `areatrigger_teleport` SET `name`='CoT - Hillsbrad - Entrance - Teleport Target', `target_position_x`=2741.68, `target_position_y`=1312.64, `target_position_z`=14.0413, `target_orientation`=2.79253 WHERE `id`=4321; -- WSL 3732
UPDATE `areatrigger_teleport` SET `name`='CoT - Black Morass - Exit - Teleport Target', `target_position_x`=-8759.51, `target_position_y`=-4192.27, `target_position_z`=-209.501, `target_orientation`=5.49779 WHERE `id`=4322; -- WSL 3733
UPDATE `areatrigger_teleport` SET `name`='CoT - Hyjal - Exit - Teleport Target', `target_position_x`=-8176.99, `target_position_y`=-4176.92, `target_position_z`=-166.463, `target_orientation`=3.92699 WHERE `id`=4323; -- WSL 3734
UPDATE `areatrigger_teleport` SET `name`='CoT - Hillsbrad - Exit - Teleport Target', `target_position_x`=-8359.11, `target_position_y`=-4058.83, `target_position_z`=-208.186, `target_orientation`=3.49066 WHERE `id`=4324; -- WSL 3735
UPDATE `areatrigger_teleport` SET `name`='Dark Portal - E. Kingdoms Target', `target_position_x`=-11896.8, `target_position_y`=-3206.77, `target_position_z`=-14.6724, `target_orientation`=0.174533 WHERE `id`=4352; -- WSL 3736
UPDATE `areatrigger_teleport` SET `name`='Dark Portal - Outland Target', `target_position_x`=-248.113, `target_position_y`=922.9, `target_position_z`=84.3497, `target_orientation`=1.5708 WHERE `id`=4354; -- WSL 3737
UPDATE `areatrigger_teleport` SET `name`='Coilfang Marsh - Entrance Target', `target_position_x`=18.7435, `target_position_y`=-24.597, `target_position_z`=-2.75368, `target_orientation`=5.49779 WHERE `id`=4363; -- WSL 3738
UPDATE `areatrigger_teleport` SET `name`='Coilfang Pumping - Entrance Target', `target_position_x`=-15.3686, `target_position_y`=5.78336, `target_position_z`=-4.32129, `target_orientation`=6.28319 WHERE `id`=4364; -- WSL 3739
UPDATE `areatrigger_teleport` SET `name`='Coilfang Draenei - Entrance Target', `target_position_x`=122.376, `target_position_y`=-123.644, `target_position_z`=-0.33828, `target_orientation`=1.5708 WHERE `id`=4365; -- WSL 3740
UPDATE `areatrigger_teleport` SET `name`='Coilfang Pumping - Exit Target', `target_position_x`=817.924, `target_position_y`=6937.56, `target_position_z`=-80.6139, `target_orientation`=4.71239 WHERE `id`=4366; -- WSL 3741
UPDATE `areatrigger_teleport` SET `name`='Coilfang Marsh - Exit Target', `target_position_x`=781.377, `target_position_y`=6754.61, `target_position_z`=-72.5371, `target_orientation`=1.5708 WHERE `id`=4367; -- WSL 3742
UPDATE `areatrigger_teleport` SET `name`='Coilfang Draenei - Exit Target', `target_position_x`=731.021, `target_position_y`=7013.75, `target_position_z`=-71.919, `target_orientation`=3.14159 WHERE `id`=4379; -- WSL 3743
UPDATE `areatrigger_teleport` SET `name`='Eastern Plaguelands - From Ghostlands Target', `target_position_x`=3468.42, `target_position_y`=-4479.6, `target_position_z`=137.329, `target_orientation`=2.18166 WHERE `id`=4386; -- WSL 3744
UPDATE `areatrigger_teleport` SET `name`='Auchindoun Shadow - Exit Target', `target_position_x`=-3635.39, `target_position_y`=4942.94, `target_position_z`=-101.048, `target_orientation`=6.28319 WHERE `id`=4397; -- WSL 3745
UPDATE `areatrigger_teleport` SET `name`='Auchindoun Arakkoa - Exit Target', `target_position_x`=-3362.1, `target_position_y`=4668.9, `target_position_z`=-101.048, `target_orientation`=1.5708 WHERE `id`=4399; -- WSL 3746
UPDATE `areatrigger_teleport` SET `name`='Auchindoun Etherial - Exit Target', `target_position_x`=-3086.51, `target_position_y`=4942.43, `target_position_z`=-101.047, `target_orientation`=3.14159 WHERE `id`=4401; -- WSL 3747
UPDATE `areatrigger_teleport` SET `name`='Auchindoun Draenei - Exit Target', `target_position_x`=-3361.8, `target_position_y`=5209.2, `target_position_z`=-101.049, `target_orientation`=4.71239 WHERE `id`=4403; -- WSL 3748
UPDATE `areatrigger_teleport` SET `name`='Auchindoun Draenei - Entrance Target', `target_position_x`=-16.7899, `target_position_y`=-0.071496, `target_position_z`=-0.120559, `target_orientation`=6.28319 WHERE `id`=4404; -- WSL 3749
UPDATE `areatrigger_teleport` SET `name`='Auchindoun Etherial - Entrance Target', `target_position_x`=-4.81115, `target_position_y`=1.00236, `target_position_z`=-0.954329, `target_orientation`=3.14159 WHERE `id`=4405; -- WSL 3750
UPDATE `areatrigger_teleport` SET `name`='Auchindoun Arakkoa - Entrance Target', `target_position_x`=2.63209, `target_position_y`=-0.209401, `target_position_z`=0.005755, `target_orientation`=6.28319 WHERE `id`=4406; -- WSL 3751
UPDATE `areatrigger_teleport` SET `name`='Auchindoun Shadow - Entrance Target', `target_position_x`=-7.06027, `target_position_y`=-0.107037, `target_position_z`=-1.12795, `target_orientation`=3.14159 WHERE `id`=4407; -- WSL 3752
UPDATE `areatrigger_teleport` SET `name`='Ghostlands - EPL Return Target', `target_position_x`=6123.23, `target_position_y`=-7006.57, `target_position_z`=138.508, `target_orientation`=5.75959 WHERE `id`=4409; -- WSL 3753
UPDATE `areatrigger_teleport` SET `name`='Coilfang Raid - Entrance Target', `target_position_x`=7.95838, `target_position_y`=0.067823, `target_position_z`=821.727, `target_orientation`=6.28319 WHERE `id`=4416; -- WSL 3754
UPDATE `areatrigger_teleport` SET `name`='Coilfang Raid - Exit Target', `target_position_x`=828.235, `target_position_y`=6865.8, `target_position_z`= -63.7858, `target_orientation`=3.14159 WHERE `id`=4418; -- WSL 3755
UPDATE `areatrigger_teleport` SET `name`='Karazhan - Front Exit Target', `target_position_x`=-11113.5, `target_position_y`=-2006.63, `target_position_z`=49.3307, `target_orientation`=3.75246 WHERE `id`=4436; -- WSL 3756
UPDATE `areatrigger_teleport` SET `name`='Tempest Keep - Arcane Exit Target', `target_position_x`=3310.32, `target_position_y`=1336.59, `target_position_z`=505.56, `target_orientation`=1.95477 WHERE `id`=4455; -- WSL 3761
UPDATE `areatrigger_teleport` SET `name`='Tempest Keep - Raid Exit Target', `target_position_x`=3088.15, `target_position_y`=1382.22, `target_position_z`=184.848, `target_orientation`=1.5708 WHERE `id`=4457; -- WSL 3762
UPDATE `areatrigger_teleport` SET `name`='Tempest Keep - Atrium Exit Target', `target_position_x`=3409.85, `target_position_y`=1486.26, `target_position_z`=182.837, `target_orientation`=2.53073 WHERE `id` IN (4459, 4612); -- WSL 3763, 3781
UPDATE `areatrigger_teleport` SET `name`='Tempest Keep - Factory Exit Target', `target_position_x`=2867.93, `target_position_y`=1550.95, `target_position_z`=252.159, `target_orientation`=0.785398 WHERE `id` IN (4461, 4614); -- WSL 3764, 3782
UPDATE `areatrigger_teleport` SET `name`='Tempest Keep - Atrium Entrance Target', `target_position_x`=40.5531, `target_position_y`=-28.7947, `target_position_z`=-1.11728, `target_orientation`=2.35619 WHERE `id`=4467; -- WSL 3765
UPDATE `areatrigger_teleport` SET `name`='Tempest Keep - Arcane Entrance Target', `target_position_x`=8.73761, `target_position_y`=0.008027, `target_position_z`=-0.205496, `target_orientation`=6.28319 WHERE `id`=4468; -- WSL 3766
UPDATE `areatrigger_teleport` SET `name`='Tempest Keep - Factory Entrance Target', `target_position_x`=-26.4934, `target_position_y`=0.315267, `target_position_z`=-1.8124, `target_orientation`=6.28319 WHERE `id`=4469; -- WSL 3767
UPDATE `areatrigger_teleport` SET `name`='Tempest Keep - Raid Entrance Target', `target_position_x`=-0.9436, `target_position_y`=-0.817774, `target_position_z`=-2.42833, `target_orientation`=6.28319 WHERE `id`=4470; -- WSL 3768
UPDATE `areatrigger_teleport` SET `name`='CoT - Hyjal - Exit - Teleport Target', `target_position_x`=-8176.99, `target_position_y`=-4176.92, `target_position_z`=-166.463, `target_orientation`=3.92699 WHERE `id`=4487; -- WSL 3770
UPDATE `areatrigger_teleport` SET `name`='Karazhan - Upper Exit Target', `target_position_x`=-11036.7, `target_position_y`=-2001.6, `target_position_z`=92.971, `target_orientation`=5.41052 WHERE `id`=4520; -- WSL 3771
UPDATE `areatrigger_teleport` SET `name`='Gruul''s Lair - Exit Target', `target_position_x`=3540.17, `target_position_y`=5092.14, `target_position_z`=3.73097, `target_orientation`=2.35619 WHERE `id`=4534; -- WSL 3774
UPDATE `areatrigger_teleport` SET `name`='Gruul''s Lair - Entrance Target', `target_position_x`=64.063, `target_position_y`=45.1714, `target_position_z`=-4.86252, `target_orientation`=1.5708 WHERE `id`=4535; -- WSL 3775
UPDATE `areatrigger_teleport` SET `name`='Black Temple - Entrance Target', `target_orientation`=6.28319 WHERE `id`=4598; -- WSL 3780
UPDATE `areatrigger_teleport` SET `name`='Black Temple - Exit Target', `target_position_x`=-3650.9, `target_position_y`=316.897, `target_position_z`=35.8528, `target_orientation`=6.28319 WHERE `id`=4619; -- WSL 3783
UPDATE `areatrigger_teleport` SET `name`='Zul''Aman - Entrance Target', `target_position_x`=120.706, `target_position_y`=1759.19, `target_position_z`=42.7443, `target_orientation`=4.71239 WHERE `id`=4738; -- WSL 3786
UPDATE `areatrigger_teleport` SET `name`='Zul''Aman - Exit Target', `target_position_x`=6851.11, `target_position_y`=-7985.05, `target_position_z`=186.421, `target_orientation`=1.5708 WHERE `id`=4739; -- WSL 3787
UPDATE `areatrigger_teleport` SET `name`='Utgarde Keep - Exit Target', `target_position_x`=1221.63, `target_position_y`=-4864.75, `target_position_z`=41.2481, `target_orientation`=2.35619 WHERE `id`=4741; -- WSL 3788
UPDATE `areatrigger_teleport` SET `name`='Utgarde Pinnacle - Exit Target', `target_position_x`=1242.55, `target_position_y`=-4857.47, `target_position_z`=217.783, `target_orientation`=0.314159 WHERE `id`=4743; -- WSL 3789
UPDATE `areatrigger_teleport` SET `name`='Utgarde Keep - Entrance Target', `target_position_x`=157.878, `target_position_y`=-84.7025, `target_position_z`=12.5537, `target_orientation`=6.28319 WHERE `id`=4745; -- WSL 3790
UPDATE `areatrigger_teleport` SET `name`='Utgarde Pinnacle - Entrance Target', `target_position_x`=580.698, `target_position_y`=-327.796, `target_position_z`=110.141, `target_orientation`=3.14159 WHERE `id`=4747; -- WSL 3791
UPDATE `areatrigger_teleport` SET `name`='Magisters'' Terrace - Exit Target', `target_position_x`=12885.3, `target_position_y`=-7336.42, `target_position_z`=65.4882, `target_orientation`=1.0472 WHERE `id`=4885; -- WSL 3793
UPDATE `areatrigger_teleport` SET `name`='Magisters'' Terrace - Entrance Target', `target_position_x`=7.52409, `target_position_y`=0.545139, `target_position_z`=-2.79914, `target_orientation`=0 WHERE `id`=4887; -- WSL 3794
UPDATE `areatrigger_teleport` SET `name`='Sunwell Raid - Entrance Target', `target_position_x`=1792.53, `target_position_y`=925.929, `target_position_z`=15.076, `target_orientation`=3.14159 WHERE `id`=4889; -- WSL 3795
UPDATE `areatrigger_teleport` SET `name`='Sunwell Raid - Exit Target', `target_position_x`=12556.5, `target_position_y`=-6774.95, `target_position_z`=15.0719, `target_orientation`=0 WHERE `id`=4891; -- WSL 3796
UPDATE `areatrigger_teleport` SET `name`='The Nexus - Exit Target', `target_position_x`=3896.74, `target_position_y`=6985.4, `target_position_z`=69.4879, `target_orientation`=3.15905 WHERE `id`=4981; -- WSL 3819
UPDATE `areatrigger_teleport` SET `name`='The Nexus - Entrance Target', `target_position_x`=152.213, `target_position_y`=-5.50178, `target_position_z`=-16.6367, `target_orientation`=0 WHERE `id`=4983; -- WSL 3820
UPDATE `areatrigger_teleport` SET `name`='Drak''Tharon - Entrance Target', `target_position_x`=-517.15, `target_position_y`=-489.201, `target_position_z`=11.0179, `target_orientation`=4.7822 WHERE `id`=4998; -- WSL 3821
UPDATE `areatrigger_teleport` SET `name`='Drak''Tharon - Exit Target', `target_position_x`=4774.44, `target_position_y`=-2030.03, `target_position_z`=229.38, `target_orientation`=4.71239 WHERE `id`=5000; -- WSL 3822
UPDATE `areatrigger_teleport` SET `name`='Halls of Stone - Entrance Target', `target_position_x`=1153.95, `target_position_y`=809.891, `target_position_z`=195.835, `target_orientation`=4.71239 WHERE `id`=5010; -- WSL 3825
UPDATE `areatrigger_teleport` SET `name`='Halls of Stone - Exit Target', `target_position_x`=8921.17, `target_position_y`=-979.096, `target_position_z`=1039.16, `target_orientation`=4.71239 WHERE `id`=5012; -- WSL 3826
UPDATE `areatrigger_teleport` SET `name`='Ulduar 80 - Exit Target', `target_position_x`=9175.68, `target_position_y`=-1378.8, `target_position_z`=1103.57, `target_orientation`=2.35619 WHERE `id`=5091; -- WSL 3835
UPDATE `areatrigger_teleport` SET `name`='Ulduar 80 - Entrance Target', `target_position_x`=1331.41, `target_position_y`=241.904, `target_position_z`=52.5046, `target_orientation`=4.71239 WHERE `id`=5093; -- WSL 3836
UPDATE `areatrigger_teleport` SET `name`='Azjol-Nerub Back Exit Target', `target_position_x`=3817.4, `target_position_y`=2032.82, `target_position_z`=11.0133, `target_orientation`=3.61283 WHERE `id`=5113; -- WSL 3837
UPDATE `areatrigger_teleport` SET `name`='Azjol-Nerub Front Exit Target', `target_position_x`=3674.13, `target_position_y`=2168.61, `target_position_z`=35.8741, `target_orientation`=5.49779 WHERE `id`=5115; -- WSL 3838
UPDATE `areatrigger_teleport` SET `name`='Azjol-Nerub Front Entrance Target', `target_position_x`=411.37, `target_position_y`=794.947, `target_position_z`=831.323, `target_orientation`=5.49779 WHERE `id`=5117; -- WSL 3839
UPDATE `areatrigger_teleport` SET `name`='CoT Stratholme - Entrance Target', `target_position_x`=1431.47, `target_position_y`=555.038, `target_position_z`=36.2723, `target_orientation`=5.06145 WHERE `id`=5150; -- WSL 3853
UPDATE `areatrigger_teleport` SET `name`='CoT Stratholme - Exit Target', `target_position_x`=-8756.6, `target_position_y`=-4457.02, `target_position_z`=-200.481, `target_orientation`=1.39626 WHERE `id`=5181; -- WSL 3854
UPDATE `areatrigger_teleport` SET `name`='Ulduar Raid - Entrance Target', `target_position_x`=-879.548, `target_position_y`=-148.966, `target_position_z`=458.884, `target_orientation`=0 WHERE `id`=5379; -- WSL 3903
UPDATE `areatrigger_teleport` SET `name`='Ulduar Raid - Exit Target', `target_position_x`=9338.31, `target_position_y`=-1114.16, `target_position_z`=1245.15, `target_orientation`=3.14159 WHERE `id`=5381; -- WSL 3904
UPDATE `areatrigger_teleport` SET `name`='Argent Raid - Entrance Target', `target_position_x`=563.646, `target_position_y`=92.1233, `target_position_z`=395.208, `target_orientation`=1.5708 WHERE `id`=5503; -- WSL 3914
UPDATE `areatrigger_teleport` SET `name`='Argent Dungeon - Entrance Target', `target_position_x`=801.505, `target_position_y`=618.052, `target_position_z`=412.393, `target_orientation`=3.14159 WHERE `id`=5505; -- WSL 3915
UPDATE `areatrigger_teleport` SET `name`='Argent Raid - Exit Target', `target_position_x`=8515.35, `target_position_y`=730.17, `target_position_z`=558.594, `target_orientation`=4.71239 WHERE `id`=5508; -- WSL 3916
UPDATE `areatrigger_teleport` SET `name`='Argent Dungeon - Exit Target', `target_position_x`=8577.85, `target_position_y`=792.042, `target_position_z`=558.581, `target_orientation`=0 WHERE `id`=5510; -- WSL 3917
UPDATE `areatrigger_teleport` SET `name`='Icecrown Dungeon - Forge of Souls - Entrance Target', `target_position_x`=4921.31, `target_position_y`=2177.36, `target_position_z`=638.733, `target_orientation`=2.05949 WHERE `id`=5635; -- WSL 3920
UPDATE `areatrigger_teleport` SET `name`='Icecrown Dungeon - Halls of Reflection - Entrance Target', `target_position_x`=5239.46, `target_position_y`=1932.99, `target_position_z`=707.695, `target_orientation`=0.785398 WHERE `id`=5636; -- WSL 3921
UPDATE `areatrigger_teleport` SET `name`='Icecrown Dungeon - Pit of Saron - Entrance Target', `target_position_x`=432.568, `target_position_y`=212.344, `target_position_z`=528.709, `target_orientation`=0 WHERE `id` IN (5637, 5683); -- WSL 3922, 3933
UPDATE `areatrigger_teleport` SET `name`='Icecrown Dungeon - Forge of Souls - Exit Target', `target_position_x`=5667.65, `target_position_y`=2007.45, `target_position_z`=798.041, `target_orientation`=2.35619 WHERE `id`=5642; -- WSL 3923
UPDATE `areatrigger_teleport` SET `name`='Icecrown Dungeon - Pit of Saron - Exit Target', `target_position_x`=5595.78, `target_position_y`=2013.27, `target_position_z`=798.041, `target_orientation`=0.785398 WHERE `id`=5643; -- WSL 3924
UPDATE `areatrigger_teleport` SET `name`='Icecrown Dungeon - Halls of Reflection - Exit Target', `target_position_x`=5629.14, `target_position_y`=1976.46, `target_position_z`=802.642, `target_orientation`=1.46608 WHERE `id`=5646; -- WSL 3925
UPDATE `areatrigger_teleport` SET `name`='Icecrown Raid - Exit Target', `target_position_x`=5788.36, `target_position_y`=2070.69, `target_position_z`=636.064, `target_orientation`=0.383972 WHERE `id`=5668; -- WSL 3928
UPDATE `areatrigger_teleport` SET `name`='Icecrown Raid - Entrance Target', `target_position_x`=73.0174, `target_position_y`=2211.49, `target_position_z`=30.1157, `target_orientation`=3.14159 WHERE `id`=5670; -- WSL 3929
UPDATE `areatrigger_teleport` SET `name`='Ruby Sanctum - Entrance Target', `target_position_x`=3273.88, `target_position_y`=533.497, `target_position_z`=87.6648, `target_orientation`=3.14159 WHERE `id`=5869; -- WSL 3940
UPDATE `areatrigger_teleport` SET `name`='Ruby Sanctum - Exit Target', `target_position_x`=3603.89, `target_position_y`=192.448, `target_position_z`=-109.762, `target_orientation`=2.26893 WHERE `id`=5872; -- WSL 3941
UPDATE `areatrigger_teleport` SET `name`='Grim Batol Dungeon - Exit Target', `target_position_x`=-4058.4, `target_position_y`=-3450.03, `target_position_z`=281.387, `target_orientation`=3.40339 WHERE `id`=6177; -- WSL 3956
UPDATE `areatrigger_teleport` SET `name`='Grim Batol Dungeon - Entrance Target', `target_position_x`=-624.155, `target_position_y`=-189.365, `target_position_z`=272.04, `target_orientation`=4.954 WHERE `id`=6179; -- WSL 3957
UPDATE `areatrigger_teleport` SET `name`='Twilight Bastion - Exit Target', `target_position_x`=-4892.19, `target_position_y`=-4235.68, `target_position_z`=827.759, `target_orientation`=5.23599 WHERE `id`=6341; -- WSL 3966
UPDATE `areatrigger_teleport` SET `name`='Twilight Bastion - Entrance Target', `target_position_x`=-561.35, `target_position_y`=-531.174, `target_position_z`=890.593, `target_orientation`=0 WHERE `id`=6354; -- WSL 3967
UPDATE `areatrigger_teleport` SET `name`='Halls of Origination - Entrance Target' WHERE `id`=6485; -- WSL 3970
UPDATE `areatrigger_teleport` SET `name`='Halls of Origination - Exit Target' WHERE `id`=6487; -- WSL 3971
UPDATE `areatrigger_teleport` SET `name`='Lost City of the Tol''vir - Exit Target' WHERE `id`=6488; -- WSL 3972
UPDATE `areatrigger_teleport` SET `name`='Blackwing Descent - Exit Target (in Eastern Kingdoms)', `target_position_x`=-7538.8, `target_position_y`=-1196.29, `target_position_z`=477.76, `target_orientation`=5.06145 WHERE `id`=6580; -- WSL 3973
UPDATE `areatrigger_teleport` SET `name`='Blackwing Descent - Entrance Target', `target_position_x`=-345.872, `target_position_y`=-224.344, `target_position_z`=193.127, `target_orientation`=0 WHERE `id`=6581; -- WSL 3974
UPDATE `areatrigger_teleport` SET `name`='The Vortex Pinnacle - Exit Target (in Kalimdor)' WHERE `id`=6610; -- WSL 3975
UPDATE `areatrigger_teleport` SET `name`='The Vortex Pinnacle - Entrance Target', `target_orientation`=3.89208 WHERE `id`=6612; -- WSL 3976
UPDATE `areatrigger_teleport` SET `name`='Baradin Hold - Exit Teleport Target', `target_position_x`=-1268.03, `target_position_y`=1049.9, `target_position_z`=106.995, `target_orientation`=0 WHERE `id`=6618; -- WSL 3977
UPDATE `areatrigger_teleport` SET `name`='Lost City of Tol''vir - Entrance Target' WHERE `id`=6620; -- WSL 3978
UPDATE `areatrigger_teleport` SET `name`='Baradin Hold - Entrance Teleport Target', `target_position_x`=158.236, `target_position_y`=1337.12, `target_position_z`=170.192, `target_orientation`=0 WHERE `id`=6664; -- WSL 3979
UPDATE `areatrigger_teleport` SET `name`='Skywall Raid - Entrance Target', `target_position_x`=-305.42, `target_position_y`=816.58, `target_position_z`=199.489, `target_orientation`=0 WHERE `id`=6672; -- WSL 3990
UPDATE `areatrigger_teleport` SET `name`='Uldum - Skywall Raid Exit Target', `target_position_x`=-11351.5, `target_position_y`=48.4549, `target_position_z`=723.883, `target_orientation`=5.16617 WHERE `id`=6673; -- WSL 3991
UPDATE `areatrigger_teleport` SET `name`='Zul''Gurub 4.1 - Exit Target' WHERE `id`=6769; -- WSL 3995
UPDATE `areatrigger_teleport` SET `name`='Zul''Gurub 4.1 - Entrance Target' WHERE `id`=6775; -- WSL 3996
UPDATE `areatrigger_teleport` SET `name`='Firelands - Entrance Teleport Target', `target_position_x`=-547.313, `target_position_y`=318.42, `target_position_z`=115.473, `target_orientation`=5.91667 WHERE `id`=6864; -- WSL 3998
UPDATE `areatrigger_teleport` SET `name`='Firelands - Exit Teleport Target', `target_position_x`=3994.61, `target_position_y`=-2959.75, `target_position_z`=1002.55, `target_orientation`=5.18363 WHERE `id`=6866; -- WSL 3999
UPDATE `areatrigger_teleport` SET `name`='CoT 4.3 - Well of Eternity - Entrance Target', `target_position_x`=3238.55, `target_position_y`=-4998.39, `target_position_z`=194.093, `target_orientation`=2.35619 WHERE `id`=7151; -- WSL 4003
UPDATE `areatrigger_teleport` SET `name`='CoT 4.3 - End Time - Entrance Target', `target_position_x`=3726.54, `target_position_y`=-400.181, `target_position_z`=110.834, `target_orientation`=1.85005 WHERE `id`=7152; -- WSL 4004
UPDATE `areatrigger_teleport` SET `name`='CoT 4.3 - Hour of Twilight - Entrance Target', `target_position_x`=4927.03, `target_position_y`=315.03, `target_position_z`=100.157, `target_orientation`=4.71239 WHERE `id`=7154; -- WSL 4005
UPDATE `areatrigger_teleport` SET `name`='CoT 4.3 - Dragon Soul - Entrance Target', `target_position_x`=-2298.73, `target_position_y`=-2392.64, `target_position_z`=87.4725, `target_orientation`=6.26573 WHERE `id`=7155; -- WSL 4006
UPDATE `areatrigger_teleport` SET `name`='CoT 4.3 - Well of Eternity - Exit Target (In Kalimdor)', `target_position_x`=-8599.41, `target_position_y`=-4015.61, `target_position_z`=-205.547, `target_orientation`=4.59022 WHERE `id`=7161; -- WSL 4007
UPDATE `areatrigger_teleport` SET `name`='CoT 4.3 - End Time - Exit Target (In Kalimdor)', `target_position_x`=-8304.37, `target_position_y`=-4461.43, `target_position_z`=-208.077, `target_orientation`=3.59538 WHERE `id`=7162; -- WSL 4008
UPDATE `areatrigger_teleport` SET `name`='CoT 4.3 - Hour of Twilight - Exit Target (In Kalimdor)', `target_position_x`=-8291.52, `target_position_y`=-4561.34, `target_position_z`=-223.312, `target_orientation`=1.48353 WHERE `id`=7163; -- WSL 4009
UPDATE `areatrigger_teleport` SET `name`='CoT 4.3 - Dragon Soul - Exit Target (In Kalimdor)', `target_position_x`=-8280.75, `target_position_y`=-4521.05, `target_position_z`=-219.09, `target_orientation`=3.63028 WHERE `id`=7164; -- WSL 4010
-- Lordaeron Footman Specimen mounts (Swift Brown Steed)
DELETE FROM `creature_addon` WHERE `guid` IN (175259, 175263, 175225);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`) VALUES
(175263, 0, 14561),
(175259, 0, 14561),
(175225, 0, 14561);
-- The Oculus (exit) & Socrethar's Seat To Mainland
DELETE FROM `areatrigger_teleport` WHERE `id` IN (5001, 4523);

-- Fixed two swapped triggers & corrected small error in "x" position (was -561.35)
UPDATE `areatrigger_teleport` SET `target_position_x`=-561.351 WHERE `id`=6354; -- Twilight Bastion - Entrance Target
UPDATE `areatrigger_teleport` SET `name`='Icecrown Dungeon - Halls of Reflection - Entrance Target', `target_map`=668, `target_position_x`=5239.46, `target_position_y`=1932.99, `target_position_z`=707.695, `target_orientation`=0.785398 WHERE `id`=5683; -- WSL 3932
UPDATE `areatrigger_teleport` SET `name`='Icecrown Dungeon - Pit of Saron - Entrance Target', `target_map`=658, `target_position_x`=432.568, `target_position_y`=212.344, `target_position_z`=528.709, `target_orientation`=0 WHERE `id`=5688; -- WSL 3933
