-- Fix Rough Stone Statue AI - now heal player
UPDATE `creature_template` SET `AIName`='SmartAI', `unit_flags`='768', `speed_walk`='10', `speed_run`='10', `InhabitType`='4' WHERE (`entry`='18372');
DELETE FROM `creature_template_addon` WHERE (`entry`='18372');
INSERT INTO `creature_template_addon` VALUES (18372, 0, 0, 50331648, 1, 0, '53112');
DELETE FROM smart_scripts WHERE entryorguid IN (18372);
INSERT INTO `smart_scripts` VALUES (18372, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 75, 32253, 0, 0, 0, 0, 0, 21, 7, 0, 0, 0, 0, 0, 0, 'Heal player on summon');
INSERT INTO `smart_scripts` VALUES (18372, 0, 2, 0, 1, 0, 100, 0, 12000, 12001, 0, 0, 28, 32253, 0, 0, 0, 0, 0, 21, 7, 0, 0, 0, 0, 0, 0,'Temporized aura');

-- Fix Coarse Stone Statue AI - now heal player
UPDATE `creature_template` SET `AIName`='SmartAI', `unit_flags`='768', `speed_walk`='10', `speed_run`='10', `InhabitType`='4' WHERE (`entry`='18734');
DELETE FROM `creature_template_addon` WHERE (`entry`='18734');
INSERT INTO `creature_template_addon` VALUES (18734, 0, 0, 50331648, 1, 0, '53112');
DELETE FROM smart_scripts WHERE entryorguid IN (18734);
INSERT INTO `smart_scripts` VALUES (18734, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 75, 32787, 0, 0, 0, 0, 0, 21, 7, 0, 0, 0, 0, 0, 0, 'Heal player on summon');
INSERT INTO `smart_scripts` VALUES (18734, 0, 2, 0, 1, 0, 100, 0, 12000, 12001, 0, 0, 28, 32787, 0, 0, 0, 0, 0, 21, 7, 0, 0, 0, 0, 0, 0,'Temporized aura');

-- Fix Heavy Stone Statue AI - now heal player
UPDATE `creature_template` SET `AIName`='SmartAI', `unit_flags`='768', `speed_walk`='10', `speed_run`='10', `InhabitType`='4' WHERE (`entry`='18735');
DELETE FROM `creature_template_addon` WHERE (`entry`='18735');
INSERT INTO `creature_template_addon` VALUES (18735, 0, 0, 50331648, 1, 0, '53112');
DELETE FROM smart_scripts WHERE entryorguid IN (18735);
INSERT INTO `smart_scripts` VALUES (18735, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 75, 32788, 0, 0, 0, 0, 0, 21, 7, 0, 0, 0, 0, 0, 0, 'Heal player on summon');
INSERT INTO `smart_scripts` VALUES (18735, 0, 2, 0, 1, 0, 100, 0, 12000, 12001, 0, 0, 28, 32788, 0, 0, 0, 0, 0, 21, 7, 0, 0, 0, 0, 0, 0,'Temporized aura');

-- Fix Solid Stone Statue AI - now heal player
UPDATE `creature_template` SET `AIName`='SmartAI', `unit_flags`='768', `speed_walk`='10', `speed_run`='10', `InhabitType`='4' WHERE (`entry`='18736');
DELETE FROM `creature_template_addon` WHERE (`entry`='18736');
INSERT INTO `creature_template_addon` VALUES (18736, 0, 0, 50331648, 1, 0, '53112');
DELETE FROM smart_scripts WHERE entryorguid IN (18736);
INSERT INTO `smart_scripts` VALUES (18736, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 75, 32790, 0, 0, 0, 0, 0, 21, 7, 0, 0, 0, 0, 0, 0, 'Heal player on summon');
INSERT INTO `smart_scripts` VALUES (18736, 0, 2, 0, 1, 0, 100, 0, 12000, 12001, 0, 0, 28, 32790, 0, 0, 0, 0, 0, 21, 7, 0, 0, 0, 0, 0, 0,'Temporized aura');

-- Fix Dense Stone Statue AI - now heal player
UPDATE `creature_template` SET `AIName`='SmartAI', `unit_flags`='768', `speed_walk`='10', `speed_run`='10', `InhabitType`='4' WHERE (`entry`='18737');
DELETE FROM `creature_template_addon` WHERE (`entry`='18737');
INSERT INTO `creature_template_addon` VALUES (18737, 0, 0, 50331648, 1, 0, '53112');
DELETE FROM smart_scripts WHERE entryorguid IN (18737);
INSERT INTO `smart_scripts` VALUES (18737, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 75, 32791, 0, 0, 0, 0, 0, 21, 7, 0, 0, 0, 0, 0, 0, 'Heal player on summon');
INSERT INTO `smart_scripts` VALUES (18737, 0, 2, 0, 1, 0, 100, 0, 12000, 12001, 0, 0, 28, 32791, 0, 0, 0, 0, 0, 21, 7, 0, 0, 0, 0, 0, 0,'Temporized aura');

-- Fix Fire Prisme loot
DELETE FROM `item_loot_template` WHERE (`entry`='52304');
INSERT INTO `item_loot_template` VALUES (52304, 52190, 38, 1, 0, 1, 3);
INSERT INTO `item_loot_template` VALUES (52304, 52191, 38, 1, 0, 1, 3);
INSERT INTO `item_loot_template` VALUES (52304, 52192, 38, 1, 0, 1, 3);
INSERT INTO `item_loot_template` VALUES (52304, 52193, 38, 1, 0, 1, 3);
INSERT INTO `item_loot_template` VALUES (52304, 52194, 38, 1, 0, 1, 3);
INSERT INTO `item_loot_template` VALUES (52304, 52195, 38, 1, 0, 1, 3);
INSERT INTO `item_loot_template` VALUES (52304, 52196, 10, 1, 0, 1, 1);

-- Fix Quest Jewelcrafting Trinket
-- Fix Quest Jewelcrafting Trinket - Demon Panther
DELETE FROM `creature_involvedrelation` WHERE (`quest`='25047');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44582, 25047);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (46675, 25047);
UPDATE `quest_template` SET `Flags`='0', `SpecialFlags`='5', `RequiredItemId1`='0', `RequiredItemCount1`='0', `SourceItemId`='0', `SourceItemCount`='0', `RequiredSourceItemId1`='0', `RequiredSourceItemCount1`='0' WHERE (`Id`='25047');
UPDATE `creature_template` SET `npcflag`='83', `AIName`='SmartAI' WHERE (`entry`='46675');
UPDATE `creature_template` SET `npcflag`='83', `AIName`='SmartAI' WHERE (`entry`='44582');
DELETE FROM smart_scripts WHERE entryorguid IN (46675);
INSERT INTO `smart_scripts` VALUES (46675, 0, 1, 0, 20, 0, 100, 0, 25047, 0, 0, 0, 57, 52197, 1, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'Remove item quest on reward');
DELETE FROM smart_scripts WHERE entryorguid IN (44582);
INSERT INTO `smart_scripts` VALUES (44582, 0, 1, 0, 20, 0, 100, 0, 25047, 0, 0, 0, 57, 52197, 1, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'Remove item quest on reward');
UPDATE `quest_template` SET `Details`='Ripara la figurina rotta usando la tua professione Jewelcrafting e consegna la quest al trainer Jewelcrafting di Orgrimmar o Stormwind. ' WHERE (`Id`='25047');
UPDATE `quest_template` SET `Objectives`='Repair the broken figurine using your skill and materials and bring the complete quest to the  Jewelcrafting trainer in Orgrimmar or Stormwind.' WHERE (`Id`='25047');

-- Fix Quest Jewelcrafting Trinket - Dream Owl
DELETE FROM `creature_involvedrelation` WHERE (`quest`='28777');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44582, 28777);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (46675, 28777);
UPDATE `quest_template` SET `Flags`='0', `SpecialFlags`='5', `RequiredItemId1`='0', `RequiredItemCount1`='0', `SourceItemId`='0', `SourceItemCount`='0', `RequiredSourceItemId1`='0', `RequiredSourceItemCount1`='0' WHERE (`Id`='28777');
-- delete on previous fix
INSERT INTO `smart_scripts` VALUES (46675, 0, 2, 0, 20, 0, 100, 0, 28777, 0, 0, 0, 57, 65894, 1, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'Remove item quest on reward');
-- delete on previous fix
INSERT INTO `smart_scripts` VALUES (44582, 0, 2, 0, 20, 0, 100, 0, 28777, 0, 0, 0, 57, 65894, 1, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'Remove item quest on reward');
UPDATE `quest_template` SET `Details`='Ripara la figurina rotta usando la tua professione Jewelcrafting e consegna la quest al trainer Jewelcrafting di Orgrimmar o Stormwind. ' WHERE (`Id`='28777');
UPDATE `quest_template` SET `Objectives`='Repair the broken figurine using your skill and materials and bring the complete quest to the  Jewelcrafting trainer in Orgrimmar or Stormwind.' WHERE (`Id`='28777');

-- Fix Quest Jewelcrafting Trinket - Earthen Guardian
DELETE FROM `creature_involvedrelation` WHERE (`quest`='28776');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44582, 28776);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (46675, 28776);
UPDATE `quest_template` SET `Flags`='0', `SpecialFlags`='5', `RequiredItemId1`='0', `RequiredItemCount1`='0', `SourceItemId`='0', `SourceItemCount`='0', `RequiredSourceItemId1`='0', `RequiredSourceItemCount1`='0' WHERE (`Id`='28776');
-- delete on previous fix
INSERT INTO `smart_scripts` VALUES (46675, 0, 3, 0, 20, 0, 100, 0, 28776, 0, 0, 0, 57, 65897, 1, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'Remove item quest on reward');
-- delete on previous fix
INSERT INTO `smart_scripts` VALUES (44582, 0, 3, 0, 20, 0, 100, 0, 28776, 0, 0, 0, 57, 65897, 1, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'Remove item quest on reward');
UPDATE `quest_template` SET `Details`='Ripara la figurina rotta usando la tua professione Jewelcrafting e consegna la quest al trainer Jewelcrafting di Orgrimmar o Stormwind. ' WHERE (`Id`='28776');
UPDATE `quest_template` SET `Objectives`='Repair the broken figurine using your skill and materials and bring the complete quest to the  Jewelcrafting trainer in Orgrimmar or Stormwind.' WHERE (`Id`='28776');

-- Fix Quest Jewelcrafting Trinket - Jeweled Serpent
DELETE FROM `creature_involvedrelation` WHERE (`quest`='28775');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44582, 28775);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (46675, 28775);
UPDATE `quest_template` SET `Flags`='0', `SpecialFlags`='5', `RequiredItemId1`='0', `RequiredItemCount1`='0', `SourceItemId`='0', `SourceItemCount`='0', `RequiredSourceItemId1`='0', `RequiredSourceItemCount1`='0' WHERE (`Id`='28775');
-- delete on previous fix
INSERT INTO `smart_scripts` VALUES (46675, 0, 4, 0, 20, 0, 100, 0, 28775, 0, 0, 0, 57, 65896, 1, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'Remove item quest on reward');
-- delete on previous fix
INSERT INTO `smart_scripts` VALUES (44582, 0, 4, 0, 20, 0, 100, 0, 28775, 0, 0, 0, 57, 65896, 1, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'Remove item quest on reward');
UPDATE `quest_template` SET `Details`='Ripara la figurina rotta usando la tua professione Jewelcrafting e consegna la quest al trainer Jewelcrafting di Orgrimmar o Stormwind. ' WHERE (`Id`='28775');
UPDATE `quest_template` SET `Objectives`='Repair the broken figurine using your skill and materials and bring the complete quest to the  Jewelcrafting trainer in Orgrimmar or Stormwind.' WHERE (`Id`='28775');

-- Fix Quest Jewelcrafting Trinket - King of Boars
DELETE FROM `creature_involvedrelation` WHERE (`quest`='28778');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (44582, 28778);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (46675, 28778);
UPDATE `quest_template` SET `Flags`='0', `SpecialFlags`='5', `RequiredItemId1`='0', `RequiredItemCount1`='0', `SourceItemId`='0', `SourceItemCount`='0', `RequiredSourceItemId1`='0', `RequiredSourceItemCount1`='0',  `RequiredClasses`='0' WHERE (`Id`='28778');
-- delete on previous fix
INSERT INTO `smart_scripts` VALUES (46675, 0, 5, 0, 20, 0, 100, 0, 28778, 0, 0, 0, 57, 65895, 1, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'Remove item quest on reward');
-- delete on previous fix
INSERT INTO `smart_scripts` VALUES (44582, 0, 5, 0, 20, 0, 100, 0, 28778, 0, 0, 0, 57, 65895, 1, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'Remove item quest on reward');
UPDATE `quest_template` SET `Details`='Ripara la figurina rotta usando la tua professione Jewelcrafting e consegna la quest al trainer Jewelcrafting di Orgrimmar o Stormwind. ' WHERE (`Id`='28778');
UPDATE `quest_template` SET `Objectives`='Repair the broken figurine using your skill and materials and bring the complete quest to the  Jewelcrafting trainer in Orgrimmar or Stormwind.' WHERE (`Id`='28778');

-- FIX Daily Quest
-- FIX Daily Quest - 25155 / 25161 - Ogrezonians in the Mood
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='73274');
INSERT INTO `spell_linked_spell` VALUES (73274, 85933, 0, 'spell Jagged Jasper Cut credit');
DELETE FROM `spell_scripts` WHERE (`datalong`='39223');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '39223');

-- FIX Daily Quest - 25156 / 25162 - Elemental Goo
UPDATE `creature_template` SET `lootid`='40229' WHERE (`entry`='40229');
INSERT IGNORE INTO `creature_loot_template` VALUES (38896, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (39344, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (39370, 52506, -4, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (39373, 52506, -3, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (39414, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (39415, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (39705, 52506, -100, 1, 1, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (39844, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (39873, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (39939, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (40033, 52506, -3, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (40170, 52506, -3, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (40229, 52506, -80, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (40272, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (40273, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (40464, 52506, -7, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (40709, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (40841, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (40998, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (41396, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (42210, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (45916, 52506, 9, 0, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (45913, 52506, 5, 0, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (42475, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (42527, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (42766, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (42780, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (42810, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (42925, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (43026, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (43254, 52506, -20, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (43374, 52506, -11, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (43480, 52506, -40, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (44011, 52506, -5, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (44076, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (44220, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (44257, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (44259, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (44683, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (45084, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (45358, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (45477, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (45755, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (45912, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (45915, 52506, -3, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (46327, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (46328, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (46329, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (46838, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (46911, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (46991, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (47081, 52506, -4, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (47150, 52506, -8, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (47151, 52506, -2, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (47226, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (47728, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (48015, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (48016, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (48533, 52506, -1, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (39706, 52506, -100, 1, 1, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (42789, 52506, 7, 1, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (49642, 52506, 0, 1, 1, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (49647, 52506, 8, 0, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (49664, 52506, 12, 0, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (48676, 52506, 5, 0, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (48677, 52506, 5, 0, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (48751, 52506, 4, 0, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (48754, 52506, 4, 0, 0, 1, 1);
INSERT IGNORE INTO `creature_loot_template` VALUES (48753, 52506, 4, 0, 0, 1, 1);

-- FIX Daily Quest - 25157 / 25159 - The Latest Fashion!
DELETE FROM `spell_scripts` WHERE (`datalong`='39237');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('49133', '8', '39237');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='73667');
INSERT INTO `spell_linked_spell` VALUES (73667, 49133, 0, 'spell give credit');

-- FIX Daily Quest - 25105 / 25158 - Nibbler! No!
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='73227');
INSERT INTO `spell_linked_spell` VALUES (73227, 85933, 0, 'spell Solid Zephyrite Cut credit');
DELETE FROM `spell_scripts` WHERE (`datalong`='39221');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '39221');

-- FIX Daily Quest - 25154 / 25160 - A Present for Lila
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='73243');
INSERT INTO `spell_linked_spell` VALUES (73243, 85933, 0, 'spell Timeless Nightstone Cut credit');
DELETE FROM `spell_scripts` WHERE (`datalong`='39222');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '39222');

-- Prospecting add missing gem
-- Cata 4.0.6 - Ocean Sapphire
DELETE FROM `prospecting_loot_template` WHERE (`item`='52191');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52191, 7, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52191, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52191, 4, 1, 0, 1, 2);
-- Cata 4.0.6 - Amberjewel
DELETE FROM `prospecting_loot_template` WHERE (`item`='52195');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52195, 7, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52195, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52195, 4, 1, 0, 1, 2);
-- Cata 4.0.6 - Demonseye
DELETE FROM `prospecting_loot_template` WHERE (`item`='52194');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52194, 7, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52194, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52194, 4, 1, 0, 1, 2);
-- Cata 4.0.6 - Inferno Ruby
DELETE FROM `prospecting_loot_template` WHERE (`item`='52190');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52190, 7, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52190, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52190, 4, 1, 0, 1, 2);
-- Cata 4.0.6 - Dream Emerald
DELETE FROM `prospecting_loot_template` WHERE (`item`='52192');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52192, 7, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52192, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52192, 5, 1, 0, 1, 2);
-- Cata 4.0.6 - Ember Topaz
DELETE FROM `prospecting_loot_template` WHERE (`item`='52193');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52193, 8, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52193, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52193, 5, 1, 0, 1, 2);
-- Cata 4.0.6 - Jasper
DELETE FROM `prospecting_loot_template` WHERE (`item`='52182');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52182, 17, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52182, 24, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52182, 18, 1, 0, 1, 2);
-- Cata 4.0.6 - Hessonite
DELETE FROM `prospecting_loot_template` WHERE (`item`='52181');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52181, 17, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52181, 24, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52181, 18, 1, 0, 1, 2);
-- Cata 4.0.6 - Nightstone
DELETE FROM `prospecting_loot_template` WHERE (`item`='52180');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52180, 17, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52180, 24, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52180, 18, 1, 0, 1, 2);
-- Cata 4.0.6 - Carnelian
DELETE FROM `prospecting_loot_template` WHERE (`item`='52177');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52177, 17, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52177, 24, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52177, 18, 1, 0, 1, 2);
-- Cata 4.0.6 - Zephyrite
DELETE FROM `prospecting_loot_template` WHERE (`item`='52178');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52178, 17, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52178, 24, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52178, 18, 1, 0, 1, 2);
-- Cata 4.0.6 - Alicite
DELETE FROM `prospecting_loot_template` WHERE (`item`='52179');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52179, 17, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (53038, 52179, 24, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (52185, 52179, 18, 1, 0, 1, 2);
-- Cata 4.3.4 - Deepholm Iolite
DELETE FROM `prospecting_loot_template` WHERE (`item`='71807');
INSERT INTO `prospecting_loot_template` VALUES (52183, 71807, 7, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 71807, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 71807, 4, 1, 0, 1, 2);
-- Cata 4.3.4 - Lightstone
DELETE FROM `prospecting_loot_template` WHERE (`item`='71806');
INSERT INTO `prospecting_loot_template` VALUES (52183, 71806, 7, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 71806, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 71806, 4, 1, 0, 1, 2);
-- Cata 4.3.4 - Shadow Spinel
DELETE FROM `prospecting_loot_template` WHERE (`item`='71809');
INSERT INTO `prospecting_loot_template` VALUES (52183, 71809, 7, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 71809, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 71809, 4, 1, 0, 1, 2);
-- Cata 4.3.4 - Queen's Garnet
DELETE FROM `prospecting_loot_template` WHERE (`item`='71805');
INSERT INTO `prospecting_loot_template` VALUES (52183, 71805, 7, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 71805, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 71805, 4, 1, 0, 1, 2);
-- Cata 4.3.4 - Elven Peridot
DELETE FROM `prospecting_loot_template` WHERE (`item`='71810');
INSERT INTO `prospecting_loot_template` VALUES (52183, 71810, 7, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 71810, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 71810, 5, 1, 0, 1, 2);
-- Cata 4.3.4 - Lava Coral
DELETE FROM `prospecting_loot_template` WHERE (`item`='71808');
INSERT INTO `prospecting_loot_template` VALUES (52183, 71808, 8, 1, 0, 1, 2);
INSERT INTO `prospecting_loot_template` VALUES (53038, 71808, 2, 1, 0, 1, 1);
INSERT INTO `prospecting_loot_template` VALUES (52185, 71808, 5, 1, 0, 1, 2);
-- Cata 4.0.6 - Volatile Earth
DELETE FROM `prospecting_loot_template` WHERE (`item`='52327');
INSERT INTO `prospecting_loot_template` VALUES (52183, 52327, 100, 1, 0, 1, 3);

-- Fix vendor Orgrimmar & Stormwind
UPDATE `creature_template` SET `gossip_menu_id`='0' WHERE (`entry`='50482');
UPDATE `creature_template` SET `gossip_menu_id`='0' WHERE (`entry`='50480');