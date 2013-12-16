-- Quest 27030 Foxtails By The Handful
UPDATE `creature_template` SET `lootid`='44635' WHERE (`entry`='44635');
DELETE FROM `creature_loot_template` WHERE (`entry`='44635') AND (`item`='60755');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44635', '60755', '-85');
UPDATE `creature_template` SET `lootid`='45380' WHERE (`entry`='45380');
DELETE FROM `creature_loot_template` WHERE (`entry`='45380') AND (`item`='60755');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45380', '60755', '-55');

-- Quest 27028 Hornet Hunting
UPDATE `creature_template` SET `lootid`='44620' WHERE (`entry`='44620');
DELETE FROM `creature_loot_template` WHERE (`entry`='44620') AND (`item`='60754');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44620', '60754', '-45');
UPDATE `creature_template` SET `lootid`='45402' WHERE (`entry`='45402');
DELETE FROM `creature_loot_template` WHERE (`entry`='45402') AND (`item`='60754');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45402', '60754', '-35');

-- Quest 27025 Thistle While You Work CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27026' WHERE (`Id`='27025');
UPDATE `quest_template` SET `PrevQuestId`='27025' WHERE (`Id`='27026');

-- Quest 27036 Thistle While You Work CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27037' WHERE (`Id`='27036');
UPDATE `quest_template` SET `PrevQuestId`='27036' WHERE (`Id`='27037');

-- Quest 27031 Wing Nut CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27032' WHERE (`Id`='27031');
UPDATE `quest_template` SET `NextQuestIdChain`='27033' WHERE (`Id`='27032');
UPDATE `quest_template` SET `NextQuestIdChain`='27034' WHERE (`Id`='27033');
UPDATE `quest_template` SET `NextQuestIdChain`='27035' WHERE (`Id`='27034');
UPDATE `quest_template` SET `NextQuestIdChain`='27074' WHERE (`Id`='27035');
UPDATE `quest_template` SET `PrevQuestId`='27031' WHERE (`Id`='27032');
UPDATE `quest_template` SET `PrevQuestId`='27032' WHERE (`Id`='27033');
UPDATE `quest_template` SET `PrevQuestId`='27033' WHERE (`Id`='27034');
UPDATE `quest_template` SET `PrevQuestId`='27034' WHERE (`Id`='27035');
UPDATE `quest_template` SET `PrevQuestId`='27035' WHERE (`Id`='27074');

-- Quest 27075 Servants of Cho'gall CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27078' WHERE (`Id`='27075');
UPDATE `quest_template` SET `NextQuestIdChain`='27078' WHERE (`Id`='27077');
UPDATE `quest_template` SET `NextQuestIdChain`='27115' WHERE (`Id`='27078');
UPDATE `quest_template` SET `NextQuestIdChain`='27116' WHERE (`Id`='27115');
UPDATE `quest_template` SET `PrevQuestId`='27075' WHERE (`Id`='27078');
UPDATE `quest_template` SET `PrevQuestId`='27078' WHERE (`Id`='27115');
UPDATE `quest_template` SET `PrevQuestId`='27115' WHERE (`Id`='27116');

-- Quest 13636 Stormpike's Orders CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26843' WHERE (`Id`='13636');
UPDATE `quest_template` SET `NextQuestIdChain`='26844' WHERE (`Id`='26843');
UPDATE `quest_template` SET `PrevQuestId`='13636' WHERE (`Id`='26843');
UPDATE `quest_template` SET `PrevQuestId`='26843' WHERE (`Id`='26844');

-- Quest 26845 Wing Nut CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26864' WHERE (`Id`='26845');
UPDATE `quest_template` SET `NextQuestIdChain`='26927' WHERE (`Id`='26864');
UPDATE `quest_template` SET `NextQuestIdChain`='26928' WHERE (`Id`='26927');
UPDATE `quest_template` SET `NextQuestIdChain`='26868' WHERE (`Id`='26928');
UPDATE `quest_template` SET `PrevQuestId`='26845' WHERE (`Id`='26864');
UPDATE `quest_template` SET `PrevQuestId`='26864' WHERE (`Id`='26927');
UPDATE `quest_template` SET `PrevQuestId`='26927' WHERE (`Id`='26928');
UPDATE `quest_template` SET `PrevQuestId`='26928' WHERE (`Id`='26868');

-- Quest 26868 Axis of Awful
DELETE FROM `item_loot_template` WHERE (`entry`='60681');
INSERT INTO `item_loot_template` VALUES (60681, 2596, 100, 0, 0, 1, 1);
INSERT INTO `item_loot_template` VALUES (60681, 60502, 100, 0, 0, 1, 1);
INSERT INTO `item_loot_template` VALUES (60681, 60503, 100, 0, 0, 1, 1);

-- Quest 26868 Explorers' League Document (1 of 6)
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='13655');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='13656');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='13657');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='13658');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='13659');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='13660');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='13661');
UPDATE `quest_template` SET `Method`='2' WHERE (`Id`='13661');

-- Quest 28567 Hero's Call: Loch Modan! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26854' WHERE (`Id`='28567');
UPDATE `quest_template` SET `NextQuestIdChain`='26855' WHERE (`Id`='26854');
UPDATE `quest_template` SET `NextQuestIdChain`='13635' WHERE (`Id`='26855');
UPDATE `quest_template` SET `NextQuestIdChain`='26146' WHERE (`Id`='13635');
UPDATE `quest_template` SET `NextQuestIdChain`='26148' WHERE (`Id`='26146');
UPDATE `quest_template` SET `NextQuestIdChain`='26176' WHERE (`Id`='26148');
UPDATE `quest_template` SET `NextQuestIdChain`='26842' WHERE (`Id`='26176');
UPDATE `quest_template` SET `PrevQuestId`='28567' WHERE (`Id`='26854');
UPDATE `quest_template` SET `PrevQuestId`='26854' WHERE (`Id`='26855');
UPDATE `quest_template` SET `PrevQuestId`='26855' WHERE (`Id`='13635');
UPDATE `quest_template` SET `PrevQuestId`='13635' WHERE (`Id`='26146');
UPDATE `quest_template` SET `PrevQuestId`='26146' WHERE (`Id`='26148');
UPDATE `quest_template` SET `PrevQuestId`='26148' WHERE (`Id`='26176');
UPDATE `quest_template` SET `PrevQuestId`='26176' WHERE (`Id`='26842');

-- Quest 13639 Resupplying the Excavation CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13650' WHERE (`Id`='13639');
UPDATE `quest_template` SET `PrevQuestId`='13639' WHERE (`Id`='13650');

-- Quest 309 Protecting the Shipment REMOVED
DELETE FROM `creature_questrelation` WHERE (`id`='2057') AND (`quest`='309');
UPDATE `quest_template` SET `Method`='2' WHERE (`Id`='309');

-- Quest 26961 Gathering Idols CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='13647' WHERE (`Id`='26961');
UPDATE `quest_template` SET `PrevQuestId`='26961' WHERE (`Id`='13647');

-- Quest 13650 Keep Your Hands Off The Goods!
-- Fix Bunny - it was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='33485');
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='33486');
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='33487');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='33485');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='33485');
INSERT INTO `smart_scripts` VALUES (33485, 0, 1, 0, 1, 0, 100, 0, 5, 15, 1500, 2000, 33, 33485, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit quest');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='33486');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='33486');
INSERT INTO `smart_scripts` VALUES (33486, 0, 1, 0, 1, 0, 100, 0, 5, 15, 1500, 2000, 33, 33486, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit quest');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='33487');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='33487');
INSERT INTO `smart_scripts` VALUES (33487, 0, 1, 0, 1, 0, 100, 0, 5, 15, 1500, 2000, 33, 33487, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit quest');

-- Quest 26868 Axis of Awful
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44262');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='82799');
INSERT INTO `spell_linked_spell` VALUES (82799, 58178, 0, 'spell trigger for AI mob');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='44262');
INSERT INTO `smart_scripts` VALUES (44262, 0, 1, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 75, 82799, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'add aura on the mob');
INSERT INTO `smart_scripts` VALUES (44262, 0, 4, 0, 6, 0, 100, 0, 0, 0, 0, 0, 33, 44266, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit when mob die');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44263');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='44263');
INSERT INTO `smart_scripts` VALUES (44263, 0, 1, 0, 23, 0, 100, 0, 82799, 0, 0, 0, 28, 82799, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'remove aura from player');
INSERT INTO `smart_scripts` VALUES (44263, 0, 2, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 11, 67301, 0, 0, 0, 0, 0, 11, 44262, 12, 0, 0, 0, 0, 0, 'move forward to get aggro');
INSERT INTO `smart_scripts` VALUES (44263, 0, 3, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 11, 67301, 0, 0, 0, 0, 0, 11, 44262, 12, 0, 0, 0, 0, 0, 'move forward to get aggro');
INSERT INTO `smart_scripts` VALUES (44263, 0, 4, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 11, 67301, 0, 0, 0, 0, 0, 11, 44262, 12, 0, 0, 0, 0, 0, 'move forward to get aggro');
INSERT INTO `smart_scripts` VALUES (44263, 0, 5, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 11, 67301, 0, 0, 0, 0, 0, 11, 44262, 12, 0, 0, 0, 0, 0, 'move forward to get aggro');
INSERT INTO `smart_scripts` VALUES (44263, 0, 6, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 11, 67301, 0, 0, 0, 0, 0, 11, 44262, 12, 0, 0, 0, 0, 0, 'move forward to get aggro');
INSERT INTO `smart_scripts` VALUES (44263, 0, 7, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 11, 67301, 0, 0, 0, 0, 0, 11, 44262, 12, 0, 0, 0, 0, 0, 'move forward to get aggro');
