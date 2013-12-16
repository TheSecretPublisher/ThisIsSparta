-- Fix some wrong auras
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='382');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='648');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='651');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='652');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='650');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='649');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='653');

-- Quest 26569 Surveying Equipment
DELETE FROM `creature` WHERE (`id`='43194');
INSERT INTO `creature` VALUES (null, 43194, 0, 1, 1, 0, 0, -9280.85, -2268.9, 67.5828, 5.7651, 600, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`='615') AND (`item`='58952');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('615', '58952', '-60');

-- Fix some wrong flags
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26544');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26514');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26512');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26571');

-- Quest 26365 Hero's Call: Redridge Mountains! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26505' WHERE (`Id`='26503');
UPDATE `quest_template` SET `NextQuestIdChain`='26510' WHERE (`Id`='26505');
UPDATE `quest_template` SET `NextQuestIdChain`='26512' WHERE (`Id`='26510');
UPDATE `quest_template` SET `NextQuestIdChain`='26514' WHERE (`Id`='26512');
UPDATE `quest_template` SET `NextQuestIdChain`='26544' WHERE (`Id`='26514');
UPDATE `quest_template` SET `NextQuestIdChain`='26545' WHERE (`Id`='26544');
UPDATE `quest_template` SET `PrevQuestId`='26503' WHERE (`Id`='26505');
UPDATE `quest_template` SET `PrevQuestId`='26505' WHERE (`Id`='26510');
UPDATE `quest_template` SET `PrevQuestId`='26510' WHERE (`Id`='26512');
UPDATE `quest_template` SET `PrevQuestId`='26512' WHERE (`Id`='26514');
UPDATE `quest_template` SET `PrevQuestId`='26514' WHERE (`Id`='26544');
UPDATE `quest_template` SET `PrevQuestId`='26544' WHERE (`Id`='26545');

-- Quest 26503 Still Assessing the Threat
UPDATE `gameobject_template` SET `data7`='204346', `data8`='26503', `faction`='35' WHERE (`entry`='204346');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='30882') AND (`item`='58888');
INSERT INTO `gameobject_loot_template` (`entry`, `item`) VALUES ('30882', '58888');

-- Quest 26514 Canyon Romp 
DELETE FROM `creature_loot_template` WHERE (`entry`='430') AND (`item`='58897');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('430', '58897', '-70');
DELETE FROM `creature_loot_template` WHERE (`entry`='446') AND (`item`='58897');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('446', '58897', '-70');
DELETE FROM `creature_loot_template` WHERE (`entry`='445') AND (`item`='58897');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('445', '58897', '-70');
DELETE FROM `creature_loot_template` WHERE (`entry`='580') AND (`item`='58897');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('580', '58897', '-20');

-- Quest 26544 They've Wised Up...
UPDATE `creature_template` SET `lootid`='43185' WHERE (`entry`='43185');
DELETE FROM `creature_loot_template` WHERE (`entry`='43185') AND (`item`='58936');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43185', '58936', '-40');

-- Quest 26545 Yowler Must Die!
DELETE FROM `creature_loot_template` WHERE (`entry`='518') AND (`item`='58937');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('518', '58937', '-100');

-- Quest 26567 John J. Keeshan CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26568' WHERE (`Id`='26567');
UPDATE `quest_template` SET `PrevQuestId`='26567' WHERE (`Id`='26568');

-- Fix some wrong auras
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='43247');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='43222');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='43249');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='43248');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='43270');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='43272');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='43274');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='43275');

-- Quest 26567 John J. Keeshan
DELETE FROM `creature` WHERE (`id`='43184');
INSERT INTO `creature` VALUES (null, 43184, 0, 1, 1, 0, 0, -9204.83, -2156.33, 57.1871, 0.05002, 300, 0, 0, 3495, 0, 0, 0, 0, 0);

-- Quest 26571 Weapons of War CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26563' WHERE (`Id`='26571');
UPDATE `quest_template` SET `NextQuestIdChain`='26607' WHERE (`Id`='26563');
UPDATE `quest_template` SET `NextQuestIdChain`='26607' WHERE (`Id`='26573');
UPDATE `quest_template` SET `PrevQuestId`='26571' WHERE (`Id`='26563');
UPDATE `quest_template` SET `PrevQuestId`='26571' WHERE (`Id`='26573');
UPDATE `quest_template` SET `PrevQuestId`='26563' WHERE (`Id`='26607');

-- Quest 26571 Weapons of War
UPDATE `creature_template` SET `lootid`='43327' WHERE (`entry`='43327');
DELETE FROM `creature_loot_template` WHERE (`entry`='43327') AND (`item`='58953');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43327', '58953', '-100');
UPDATE `creature_template` SET `lootid`='43329' WHERE (`entry`='43329');
DELETE FROM `creature_loot_template` WHERE (`entry`='43329') AND (`item`='58954');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43329', '58954', '-100');

-- Quest 26563 Return of the Bravo Company
DELETE FROM `creature` WHERE (`id`='43302');
INSERT INTO `creature` VALUES (null, 43302, 0, 1, 1, 0, 0, -8817.2, -2214.78, 143.3, 1.53175, 600, 0, 0, 210, 0, 0, 0, 0, 0);

-- Quest 26586 In Search of Bravo Company CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26587' WHERE (`Id`='26586');
UPDATE `quest_template` SET `PrevQuestId`='26586' WHERE (`Id`='26587');

-- Quest 26560 Jorgensen
DELETE FROM `creature` WHERE (`id`='43300');
INSERT INTO `creature` VALUES (null, 43300, 0, 1, 1, 0, 0, -9637.46, -3488.4, 121.956, 4.91551, 600, 0, 0, 210, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `lootid`='43350' WHERE (`entry`='43350');
DELETE FROM `creature_loot_template` WHERE (`entry`='43350') AND (`item`='58969');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43350', '58969', '-100');

-- Quest 26561 Krakauer
DELETE FROM `creature` WHERE (`id`='43305');
INSERT INTO `creature` VALUES (null, 43305, 0, 1, 1, 0, 0, -8715.4, -2322.69, 157.436, 5.2351, 300, 0, 0, 1625, 357, 0, 0, 0, 0);

-- Quest 26562 And Last But Not Least... Danforth
DELETE FROM `creature` WHERE (`id`='43303');
INSERT INTO `creature` VALUES (null, 43303, 0, 1, 1, 0, 0, -8699.93, -2139.39, 158.601, 5.13955, 300, 0, 0, 1930, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `lootid`='43369' WHERE (`entry`='43369');
DELETE FROM `creature_loot_template` WHERE (`entry`='43369') AND (`item`='59033');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43369', '59033', '-100');
DELETE FROM `creature` WHERE (`id`='43302');
DELETE FROM `creature` WHERE (`id`='43275');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='80887') AND (`spell_effect`='45320');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('80887', '45320', 'summon creature');
DELETE FROM `spell_scripts` WHERE (`datalong`='43275');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('45320', '10', '43275', '120000',  '-8815.2', '-2197.78', '137.5', '2.53175');

-- Quest 26506 Franks and Beans
UPDATE `creature_template` SET `lootid`='442' WHERE (`entry`='442');
DELETE FROM `creature_loot_template` WHERE (`entry`='442') AND (`item`='58891');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('442', '58891', '-80');
UPDATE `creature_template` SET `lootid`='428' WHERE (`entry`='428');
DELETE FROM `creature_loot_template` WHERE (`entry`='428') AND (`item`='58892');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('428', '58892', '-90');
UPDATE `creature_template` SET `lootid`='547' WHERE (`entry`='547');
DELETE FROM `creature_loot_template` WHERE (`entry`='547') AND (`item`='58893');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('547', '58893', '-55');

-- Quest 26504 Wanted: Redridge Gnolls
UPDATE `gameobject_template` SET `faction`='35', `flags`='0' WHERE (`entry`='204344');

-- Quest 26692 Shadowhide Extinction
DELETE FROM `creature` WHERE (`id`='43607');
INSERT INTO `creature` VALUES (null, 43607, 0, 1, 1, 0, 0, -9639.26, -3474.67, 121.956, 5.91435, 600, 0, 0, 210, 0, 0, 0, 0, 0);

-- Quest 26708 AHHHHHHHHHHHH! AHHHHHHHHH!!! REMOVED
DELETE FROM `creature` WHERE (`id`='43733');
INSERT INTO `creature` VALUES (null, 43733, 0, 1, 1, 0, 0, -9649.82, -3464.61, 120.077, 4.43036, 600, 0, 0, 46, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE (`id`='43733') AND (`quest`='26708');

-- Quest 26708 AHHHHHHHHHHHH! AHHHHHHHHH!!! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26714' WHERE (`Id`='26713');
UPDATE `quest_template` SET `NextQuestIdChain`='26726' WHERE (`Id`='26714');
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='26713');
UPDATE `quest_template` SET `PrevQuestId`='26713' WHERE (`Id`='26714');
UPDATE `quest_template` SET `PrevQuestId`='26714' WHERE (`Id`='26726');

-- Quest 26668 Detonation REMOVED
DELETE FROM `creature` WHERE (`id`='43611');
INSERT INTO `creature` VALUES (null, 43611, 0, 1, 1, 0, 0, -9638.71, -3461.92, 119.412, 4.98576, 600, 0, 0, 210, 0, 0, 0, 0, 0);
DELETE FROM `creature_questrelation` WHERE (`id`='43611') AND (`quest`='26668');

-- Fix some wrong flags
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26693');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26713');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26692');

-- Quest 26693 The Dark Tower CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26694' WHERE (`Id`='26693');
UPDATE `quest_template` SET `PrevQuestId`='26693' WHERE (`Id`='26694');

-- Quest 26693 The Dark Tower
UPDATE `creature_template` SET `lootid`='703' WHERE (`entry`='703');
DELETE FROM `creature_loot_template` WHERE (`entry`='703') AND (`item`='59522');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('703', '59522', '-90');

-- Quest 26694 The Grand Magus Doane
DELETE FROM `gameobject` WHERE (`id`='204582');
INSERT INTO `gameobject` VALUES (null, 204582, 0, 1, 1, -9282.32, -3327.47, 112.287, 6.19592, 0, 0, 0, 1, 120, 255, 1);

-- Quest 26637 Bravo Company Field Kit: Chloroform
UPDATE `creature_template` SET `lootid`='43532' WHERE (`entry`='43532');
DELETE FROM `creature_loot_template` WHERE (`entry`='43532') AND (`item`='59156');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43532', '59156', '-100');
DELETE FROM `creature` WHERE (`id`='43459');
INSERT INTO `creature` VALUES (null, 43459, 0, 1, 1, 0, 0, -9471.45, -2829.83, 65.277, 5.27391, 600, 0, 0, 210, 0, 0, 0, 0, 0);

-- Quest 26616 It's Never Over REMOVED
DELETE FROM `creature_questrelation` WHERE (`id`='43184') AND (`quest`='26616');

-- Quest 26616 It's Never Over CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='0' WHERE (`Id`='26616');
UPDATE `quest_template` SET `NextQuestIdChain`='26640' WHERE (`Id`='26639');
UPDATE `quest_template` SET `NextQuestIdChain`='26646' WHERE (`Id`='26640');
UPDATE `quest_template` SET `NextQuestIdChain`='26651' WHERE (`Id`='26646');
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='26639');
UPDATE `quest_template` SET `PrevQuestId`='26639' WHERE (`Id`='26640');
UPDATE `quest_template` SET `PrevQuestId`='26640' WHERE (`Id`='26646');
UPDATE `quest_template` SET `PrevQuestId`='26646' WHERE (`Id`='26651');

-- Quest 26639 Point of Contact: Brubaker
DELETE FROM `creature` WHERE (`id`='43458');
INSERT INTO `creature` VALUES (null, 43458, 0, 1, 1, 0, 0, -9427.96, -2812.43, 59.458, 0.659703, 300, 0, 0, 3495, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='43508');
INSERT INTO `creature` VALUES (null, 43508, 0, 1, 1, 0, 0, -9676.01, -2841.95, 51.9126, 0.20024, 300, 0, 0, 2085, 0, 0, 0, 0, 0);

-- Quest 26646 Prisoners of War
DELETE FROM `gameobject_loot_template` WHERE (`entry`='30936') AND (`item`='59261');
INSERT INTO `gameobject_loot_template` (`entry`, `item`) VALUES ('30936', '59261');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='81515');
INSERT INTO `spell_linked_spell` VALUES (81515, 85933, 0, 'spell credit');

DELETE FROM `spell_scripts` WHERE (`datalong`='43574');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '43574');

-- Quest 26651 To Win a War, You Gotta Become War
DELETE FROM `creature` WHERE (`id`='43590');
INSERT INTO `creature` VALUES (null, 43590, 0, 1, 1, 0, 0, -9738.53, -3184.96, 82.1493, 0, 120, 0, 0, 1, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43589');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='43589');
INSERT INTO `smart_scripts` VALUES (43589, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 43589, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'despawn');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43590');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='43590');
INSERT INTO `smart_scripts` VALUES (43590, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 43590, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'despawn');

-- Fix Bunny - it was visible
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='43589');
UPDATE `creature_template_addon` SET `auras`='64573 52855' WHERE (`entry`='43590');

-- Quest 26713 Showdown at Stonewatch
DELETE FROM `creature` WHERE (`id`='334');
INSERT INTO `creature` VALUES (null, 334, 0, 1, 1, 6050, 0, -9382.84, -3082.02, 158.155, 1.8326, 600, 0, 0, 2250, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='486');
INSERT INTO `creature` VALUES (null, 486, 0, 1, 1, 6043, 0, -9442.19, -3074.29, 136.676, 0.690293, 600, 0, 0, 1713, 618, 0, 0, 0, 0);

-- Quest 26714 Darkblaze, Brood of the Worldbreaker
DELETE FROM `creature` WHERE (`id`='43863');
INSERT INTO `creature` VALUES (null, 43863, 0, 1, 1, 0, 0, -9462.66, -2991.25, 132.319, 1.72308, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='43863');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('43863', '81953', '1');
UPDATE `creature_template` SET `npcflag`='16777216' WHERE (`entry`='43863');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='43496');

-- Quest 26520 Saving Foreman Oslow
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43094');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='43094');
INSERT INTO `smart_scripts` VALUES (43094, 0, 1, 0, 8, 0, 100, 0, 80702, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

DELETE FROM `item_template` WHERE (`entry`='58895');
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Flags`, `ItemLevel`, `RequiredLevel`, `delay`, `bonding`, `Material`) VALUES ('58895', '12', 'Ettin Control Orb', '65439', '65600', '1', '1', '0', '4', '4');
UPDATE `item_template` SET `spellid_1`='80702' WHERE (`entry`='58895');
UPDATE `creature_template` SET `unit_flags`='768' WHERE (`entry`='43197');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43196');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='43196');
INSERT INTO `smart_scripts` VALUES (43196, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 11, 62464, 0, 0, 0, 0, 0, 19, 43197, 4, 0, 0, 0, 0, 0, 'Hit Guardian');
INSERT INTO `smart_scripts` VALUES (43196, 0, 2, 0, 8, 0, 100, 0, 58178, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43197');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='43197');
INSERT INTO `smart_scripts` VALUES (43197, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 341, 0, 0, 0, 0, 0, 21, 6, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (43197, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 11, 58178, 0, 0, 0, 0, 0, 19, 43196, 4, 0, 0, 0, 0, 0, 'despawn');
INSERT INTO `smart_scripts` VALUES (43197, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Quest 26638 Hunting the Hunters
DELETE FROM `creature` WHERE (`id`='43462');
INSERT INTO `creature` VALUES (null, 43462, 0, 1, 1, 0, 0, -9460.71, -2833.69, 65.277, 1.94853, 600, 0, 0, 210, 0, 0, 0, 0, 0);

-- Quest 26636 Bravo Company Field Kit: Camouflage
DELETE FROM `creature` WHERE (`id`='43461');
INSERT INTO `creature` VALUES (null, 43461, 0, 1, 1, 0, 0, -9472.54, -2835.76, 65.2782, 0.525797, 600, 0, 0, 210, 0, 0, 2, 0, 0);