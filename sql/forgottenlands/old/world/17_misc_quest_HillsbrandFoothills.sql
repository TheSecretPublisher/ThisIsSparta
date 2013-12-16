-- fix chain npc http://www.wowhead.com/npc=48545
UPDATE `quest_template` SET `NextQuestId`=28600 WHERE (`Id`=28587);
UPDATE `quest_template` SET `PrevQuestId`=28600, `NextQuestId`=28506 WHERE (`Id`=28506);
UPDATE `quest_template` SET `PrevQuestId`=28506, `NextQuestId`=28556 WHERE (`Id`=28556);

-- quest http://www.wowhead.com/quest=28616/stormpike-apocalypse autocompletante. non fixabile
UPDATE `quest_template` SET `Method`=0 WHERE (`Id`=28616); 

-- http://www.wowhead.com/quest=28489
DELETE FROM `creature_loot_template` WHERE `entry`=48184 AND item=64410;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (48184, 64410, -100);
UPDATE `creature_template` SET `lootid`=48184 WHERE (`entry`=48184);

-- Yetimus the Yeti Lord
DELETE FROM `creature_loot_template` WHERE `entry`=47484 AND item=64386; 
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (47484, 64386, -100);
UPDATE `creature_template` SET `lootid`=47484 WHERE (`entry`=47484);

-- The Heart of the Matter
DELETE FROM `creature_loot_template` WHERE `entry`=48628 AND item=64380;
DELETE FROM `creature_loot_template` WHERE `entry`=2248 AND item=64380;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2248, 64380, -100);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (48628, 64380, -100);
UPDATE `creature_template` SET `lootid`=2248 WHERE (`entry`=2248);
UPDATE `creature_template` SET `lootid`=48628 WHERE (`entry`=48628);

-- arena http://www.wowhead.com/quest=28643
UPDATE `quest_template` SET `PrevQuestId`=28643, `NextQuestId`=28645, `Flags`=131 WHERE (`Id`=28644);
UPDATE `quest_template` SET `PrevQuestId`=28644, `NextQuestId`=28646, `Flags`=131 WHERE (`Id`=28645);
UPDATE `quest_template` SET `PrevQuestId`=28645, `NextQuestId`=28647, `Flags`=131 WHERE (`Id`=28646);
UPDATE `quest_template` SET `PrevQuestId`=28646, `Flags`=131 WHERE (`Id`=28647);
UPDATE `quest_template` SET `Flags`=131 WHERE (`Id`=28643);

UPDATE `gameobject_template` SET `faction`=2, `flags`=0 WHERE (`entry`=207279);

--
DELETE FROM `creature_loot_template` WHERE `entry`=47859 AND item=63254; 
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (47859, 63254, -100);
UPDATE `creature_template` SET `lootid`=47859 WHERE (`entry`=47859);

DELETE FROM `creature_loot_template` WHERE `entry`=47861 AND item=63254; 
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (47861, 63254, -100);
UPDATE `creature_template` SET `lootid`=47861 WHERE (`entry`=47861);



-- fix orsi
UPDATE `creature_template` SET `mindmg`='37', `maxdmg`='49', `attackpower`='90', `unit_flags2`='2048', `minrangedmg`='25', `maxrangedmg`='37', `lootid`='47204', `skinloot`='47204', `VehicleId`='0', `MovementType`='1', `InhabitType`='1' WHERE (`entry`=47204);

-- 28334 rimossa
DELETE FROM `creature_questrelation` WHERE (`id`=48129) AND (`quest`=28344);

-- No One Here Gets Out Alive auto.
UPDATE `quest_template` SET `Method`=0 WHERE (`Id`=28192); 
UPDATE `quest_template` SET `MinLevel`=20, `RequiredRaces`=0  WHERE (`Id`=28169);

-- fix ragni
UPDATE `creature_template` SET `faction_A`=22, `faction_H`=22 WHERE (`entry`=2349);

-- fix creeper egg
DELETE FROM `creature_loot_template` WHERE `entry`=47203 AND item=63029; 
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `maxcount`) VALUES (47203, 63029, -100, 5);
UPDATE `creature_template` SET `lootid`=47203 WHERE (`entry`=47203);

-- Human Infestation
DELETE FROM `item_template` WHERE (`entry`=630790);
DELETE FROM `item_template` WHERE (`entry`=63079);
INSERT INTO `item_template` VALUES (630790, 12, 0, -1, 'Titanium Shackles', 73232, 1, 65600, 8192, 1, 1, 1, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 88797, 0, 0, -1, 0, 1500, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `spell_scripts` WHERE (`datalong`=47697);
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES (88797, 8, 47697);
UPDATE `quest_template` SET `SourceItemId`=630790 WHERE (`Id`=28138);
UPDATE `item_template` SET `entry`='630790' WHERE (`entry`=63079);
UPDATE `quest_template` SET `SourceItemId`=630790, `RequiredSourceItemId4`=630790 WHERE (`Id`=28138); 

-- delete Helcular's Rod Giveth... item cura 100 al secondo ( lvl 20) e Welcome to the Machine

DELETE FROM `creature_questrelation` WHERE (`id`=48129) AND (`quest`=28331);
DELETE FROM `creature_questrelation` WHERE (`id`=2215) AND (`quest`=28096);

-- A Fighting Chance rimossa 
DELETE FROM `creature_questrelation` WHERE (`id`=17092) AND (`quest`=28495);

-- fix flag npc=2278/melisara
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28538);
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28566);
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28603);
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28605);
UPDATE `quest_template` SET `PrevQuestId`=28538 WHERE (`Id`=28566);
UPDATE `quest_template` SET `PrevQuestId`=28566 WHERE (`Id`=28603);
UPDATE `quest_template` SET `PrevQuestId`=28603 WHERE (`Id`=28605);
UPDATE `quest_template` SET `PrevQuestId`=28566 WHERE (`Id`=28604);

-- fix flag 48545
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=28616);


-- fix cry of the banshees

DELETE FROM `item_template` WHERE (`entry`=64445);
DELETE FROM `item_template` WHERE (`entry`=644450);
INSERT INTO `item_template` VALUES (644450, 12, 0, -1, 'Banshee Mirror', 74768, 1, 65600, 8192, 1, 1, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 90976, 0, NULL, -1, 1149, 5000, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `spell_scripts` WHERE (`datalong`=48752); 

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`=90976);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (90976, 85933, 'prova');

INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES (85933, 8, 48752);
UPDATE `quest_template` SET `SourceItemId`=644450 WHERE (`Id`=28538);
UPDATE `quest_template` SET `SourceItemId`=644450, `RequiredSourceItemId4`=644450 WHERE (`Id`=28538);


-- studies in lethality rimossa
DELETE FROM `creature_questrelation` WHERE (`id`=2391) AND (`quest`=28324);

-- fix prevquest
UPDATE `quest_template` SET `PrevQuestId`=28332 WHERE (`Id`=28344);

