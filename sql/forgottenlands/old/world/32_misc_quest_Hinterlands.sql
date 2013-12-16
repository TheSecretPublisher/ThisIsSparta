UPDATE `quest_template` SET `NextQuestId`=26224, `NextQuestIdChain`=0 WHERE (`Id`=26223);

-- fix chain http://www.wowhead.com/npc=43108

UPDATE `quest_template` SET `NextQuestId`=26432, `NextQuestIdChain`=0 WHERE (`Id`=26267);
UPDATE `quest_template` SET `NextQuestId`=26496, `NextQuestIdChain`=0 WHERE (`Id`=26491);
UPDATE `quest_template` SET `NextQuestId`=26307, `NextQuestIdChain`=0 WHERE (`Id`=26306);
UPDATE `quest_template` SET `NextQuestId`=26308, `NextQuestIdChain`=0 WHERE (`Id`=26307);
UPDATE `quest_template` SET `NextQuestId`=26306, `NextQuestIdChain`=0 WHERE (`Id`=26432);
UPDATE `quest_template` SET `NextQuestId`=26497, `NextQuestIdChain`=0 WHERE (`Id`=26496);
UPDATE `quest_template` SET `NextQuestId`=26307, `NextQuestIdChain`=0 WHERE (`Id`=26497);

-- fix gammerita, Mon!

DELETE FROM `creature_loot_template` WHERE `entry`=7977 AND item=19023;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (7977, 19023, -100);
UPDATE `creature_template` SET `lootid`=7977 WHERE (`entry`=7977);

-- fix Vilebranch Kidnapper

DELETE FROM `creature_loot_template` WHERE `entry`=14748 AND item=19034;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (14748, 19034, -100);
UPDATE `creature_template` SET `lootid`=14748 WHERE (`entry`=14748);

--
DELETE FROM `item_template` WHERE (`entry`=630790);
INSERT INTO `item_template` VALUES (630790, 12, 0, -1, 'Titanium Shackles', 73232, 1, 65600, 8192, 1, 1, 1, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 88797, 0, 0, -1, 0, 1500, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 0, 0, 0, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `spell_scripts` WHERE (`datalong`=42597); 
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES (79402, 8, 42597);
UPDATE `quest_template` SET `SourceItemId`=579200 WHERE (`Id`=26240); 
UPDATE `item_template` SET `entry`=579200 WHERE (`entry`=57920);
UPDATE `quest_template` SET `SourceItemId`=579200, `RequiredSourceItemId4`=579200 WHERE (`Id`=26240);
UPDATE `creature_template` SET `mindmg`=33, `maxdmg`=50 WHERE (`entry`=42554);
-- faces of evil/http://www.wowhead.com/quest=26363
-- fix 42592

DELETE FROM `creature_loot_template` WHERE `entry`=42592 AND item=58082;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42592, 58082, -100);
UPDATE `creature_template` SET `lootid`=42592 WHERE (`entry`=42592);
-- fix size gob 203989

UPDATE `gameobject_template` SET `size`=1 WHERE (`entry`=203989);

UPDATE `quest_template` SET `NextQuestId`=26369, `NextQuestIdChain`=0 WHERE (`Id`=26363);
UPDATE `quest_template` SET `NextQuestId`=26363, `NextQuestIdChain`=0 WHERE (`Id`=26367); 
UPDATE `quest_template` SET `NextQuestId`=26309, `NextQuestIdChain`=0 WHERE (`Id`=26310);
UPDATE `quest_template` SET `NextQuestId`=26524, `NextQuestIdChain`=0 WHERE (`Id`=26523);
UPDATE `quest_template` SET `NextQuestId`=26368, `NextQuestIdChain`=0 WHERE (`Id`=26524);

-- fix http://www.wowhead.com/quest=26310
DELETE FROM `creature_loot_template` WHERE `entry`=42689 AND item=58120;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42689, 58120, -100);
UPDATE `creature_template` SET `lootid`=42689 WHERE (`entry`=42689);

DELETE FROM `creature_loot_template` WHERE `entry`=42724 AND item=58236;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42724, 58236, -100);
UPDATE `creature_template` SET `lootid`=42724 WHERE (`entry`=42724);

DELETE FROM `creature_loot_template` WHERE `entry`=42857 AND item=58228;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42857, 58228, -100);
UPDATE `creature_template` SET `lootid`=42857 WHERE (`entry`=42857);

UPDATE `quest_template` SET `NextQuestId`=26406, `NextQuestIdChain`=0 WHERE (`Id`=26381);
UPDATE `quest_template` SET `NextQuestId`=26418, `NextQuestIdChain`=0 WHERE (`Id`=26406);
UPDATE `quest_template` SET `NextQuestId`=26558, `NextQuestIdChain`=0 WHERE (`Id`=26418);
UPDATE `quest_template` SET `NextQuestId`=26419, `NextQuestIdChain`=0 WHERE (`Id`=26558);
UPDATE `quest_template` SET `NextQuestId`=26387, `NextQuestIdChain`=0 WHERE (`Id`=26382);
UPDATE `quest_template` SET `NextQuestId`=26643, `NextQuestIdChain`=0 WHERE (`Id`=26641);
UPDATE `quest_template` SET `NextQuestId`=26529, `NextQuestIdChain`=0 WHERE (`Id`=26528);
UPDATE `quest_template` SET `NextQuestId`=26530, `NextQuestIdChain`=0 WHERE (`Id`=26529);
UPDATE `quest_template` SET `NextQuestId`=26531, `NextQuestIdChain`=0 WHERE (`Id`=26530);
UPDATE `quest_template` SET `NextQuestId`=26532, `NextQuestIdChain`=0 WHERE (`Id`=26531);

-- fix eye of shadra
DELETE FROM `gameobject_loot_template` WHERE `entry`=204120 AND item=58282;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (204120, 58282, -100);
UPDATE `gameobject_template` SET `data7`=204120 AND `data8`=26528 WHERE (`entry`=204120);

DELETE FROM `gameobject_loot_template` WHERE `entry`=204120 AND item=58282;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (204120, 58282, -100);
UPDATE `gameobject_template` SET `data7`=204120 AND `data8`=26381 WHERE (`entry`=204120);

DELETE FROM `gameobject_loot_template` WHERE `entry`=204133 AND item=58282;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (204133, 58282, -100);
UPDATE `gameobject_template` SET `data7`=204133 AND `data8`=26528 WHERE (`entry`=204133);

DELETE FROM `gameobject_loot_template` WHERE `entry`=204133 AND item=58282;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (204133, 58282, -100);
UPDATE `gameobject_template` SET `data7`=204133 AND `data8`=26381 WHERE (`entry`=204133);
UPDATE `gameobject_template` SET `flags`=4 WHERE (`entry`=204133);

UPDATE `creature_template` SET `mindmg`=60, `maxdmg`=120 WHERE (`entry`=42919);

DELETE FROM `creature_loot_template` WHERE `entry`=42919 AND item=58779;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42919, 58779, -100);
UPDATE `creature_template` SET `lootid`=42919 WHERE (`entry`=42919);

-- autocompletante summoning shadra (messo autocompletante perchè la quest si accetta da un npc e si completa da un altro e se rimossa il player non trova npc per la quest successiva)

UPDATE `quest_template` SET `Method`=0 WHERE (`Id`=26531);
UPDATE `quest_template` SET `Method`=0 WHERE (`Id`=26558); 

-- fix shadra
UPDATE `creature_template` SET `minlevel`=35, `maxlevel`=35, `faction_A`=575, `faction_H`=35, `mindmg`=93, `maxdmg`=121, `attackpower`=224, `dmg_multiplier`=1, `minrangedmg`=62, `maxrangedmg`=93, `rangedattackpower`=0 WHERE (`entry`=43007);

-- rimossa Faces of Evil ally e orda.
DELETE FROM `creature_questrelation` WHERE (`id`=42624) AND (`quest`=26357);
DELETE FROM `creature_questrelation` WHERE (`id`=43156) AND (`quest`=26521);

-- fix chain gryphon master talonaxe
UPDATE `quest_template` SET `NextQuestId`=26547, `NextQuestIdChain`=0 WHERE (`Id`=26546);
UPDATE `quest_template` SET `NextQuestId`=26548, `NextQuestIdChain`=0 WHERE (`Id`=26547);

-- razorbreak friends 
DELETE FROM `item_template` WHERE (`entry`=589350); 
INSERT INTO `item_template` VALUES (589350, 12, 0, -1, 'Gryphon Chow', 67224, 1, 65600, 8192, 1, 1, 1, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 80782, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
DELETE FROM `spell_scripts` WHERE (`datalong`=43236); 
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES (80782, 8, 43236);
UPDATE `quest_template` SET `SourceItemId`=589350, `RequiredSourceItemId4`=589350 WHERE (`Id`=26546);

-- fix chain
UPDATE `quest_template` SET `NextQuestId`=26432, `NextQuestIdChain`=0 WHERE (`Id`=26268);
UPDATE `quest_template` SET `NextQuestId`=26496, `NextQuestIdChain`=0 WHERE (`Id`=26492);

-- fix 2505

DELETE FROM `creature_loot_template` WHERE `entry`=2505 AND item=58867;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (2505, 58867, -27);
UPDATE `creature_template` SET `lootid`=2505 WHERE (`entry`=2505);

-- fix chain 
UPDATE `quest_template` SET `NextQuestId`=26516, `NextQuestIdChain`=0 WHERE (`Id`=26498);
UPDATE `quest_template` SET `NextQuestId`=26515, `NextQuestIdChain`=0 WHERE (`Id`=26518);

-- fix npc 42877
DELETE FROM `creature` WHERE `id`=42877;
INSERT INTO `creature` VALUES (1024915, 42877, 0, 1, 65535, 0, 0, -747.532, -3781.88, 231.613, 0.520111, 300, 0, 0, 1856, 1, 0, 0, 0, 0);
UPDATE `creature_template` SET `mindmg`=70, `maxdmg`=140, `attackpower`=200 WHERE (`entry`=42877);

-- add loot 42877
DELETE FROM `creature_loot_template` WHERE `entry`=42877 AND item=58241;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (42877, 58241, -100);
UPDATE `creature_template` SET `lootid`=42877 WHERE (`entry`=42877);
UPDATE `creature_template` SET `mindmg`=70, `maxdmg`=140, `attackpower`=200 WHERE (`entry`=42724);

-- summit of fate RIMOSSA
DELETE FROM `creature_questrelation` WHERE (`id`=42642) AND (`quest`=26363);
DELETE FROM `creature_questrelation` WHERE (`id`=43156) AND (`quest`=26517);

-- the highvale document RIMOSSA
DELETE FROM `creature_questrelation` WHERE (`id`=46475) AND (`quest`=27626);
