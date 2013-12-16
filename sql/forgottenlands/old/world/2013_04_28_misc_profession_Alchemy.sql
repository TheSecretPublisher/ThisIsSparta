-- Fix Potion of Deepholm
DELETE FROM `spell_target_position` WHERE (`id`='80256');
INSERT INTO `spell_target_position` VALUES (80256, 646, 1085.41, 539.94, -44.247597, 3.32);

-- Fix Potion of of Illusion
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='80265') AND (`spell_effect`='8213') AND (`type`='0');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('80265', '8213', 'Potion of Illusion');

-- Fix Big Cauldron of Battle / Cauldron of Battle
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='92679');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('92679', '90065', 'spell with condition sta');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('92679', '51596', 'spell with condition int');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('92679', '83990', 'spell with condition spi');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('92679', '87456', 'spell with condition agi');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('92679', '43288', 'spell with condition str');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='90065');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('90065', '79469', 'spell give stamina');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='51596');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('51596', '79470', 'spell give intellect');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='83990');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('83990', '94160', 'spell give spirit');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='87456');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('87456', '79471', 'spell give agility');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='43288');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('43288', '79472', 'spell give strength');

DELETE FROM `conditions` WHERE (`SourceEntry`='90065');
INSERT INTO `conditions` VALUES (17, 0, 90065, 0, 1, 1, 0, 29144, 0, 0, 0, 0, 0, '', 'Spell Stam for Protection Warrior');
INSERT INTO `conditions` VALUES (17, 0, 90065, 0, 2, 1, 0, 84735, 0, 0, 0, 0, 0, '', 'Spell Stam for Druid Feral Bear Form');
INSERT INTO `conditions` VALUES (17, 0, 90065, 0, 2, 1, 0, 5487, 0, 0, 0, 0, 0, '', 'Spell Stam for Druid Feral Bear Form');
INSERT INTO `conditions` VALUES (17, 0, 90065, 0, 3, 1, 0, 50029, 0, 0, 0, 0, 0, '', 'Spell Stam for DK Blood');
INSERT INTO `conditions` VALUES (17, 0, 90065, 0, 4, 1, 0, 53592, 0, 0, 0, 0, 0, '', 'Spell Stam for Paladin Protection');
DELETE FROM `conditions` WHERE (`SourceEntry`='51596');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 1, 1, 0, 16913, 0, 0, 0, 0, 0, '', 'Spell Intellect for Druid Balance');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 2, 1, 0, 87327, 0, 0, 0, 0, 0, '', 'Spell Intellect for Priest Shadow');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 3, 1, 0, 84732, 0, 0, 0, 0, 0, '', 'Spell Intellect for Priest Discipline');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 4, 1, 0, 85102, 0, 0, 0, 0, 0, '', 'Spell Intellect for Paladin Holy');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 5, 1, 0, 62099, 0, 0, 0, 0, 0, '', 'Spell Intellect for Shaman Elemental');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 6, 1, 0, 84669, 0, 0, 0, 0, 0, '', 'Spell Intellect for Mage Frost');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 7, 1, 0, 84668, 0, 0, 0, 0, 0, '', 'Spell Intellect for Mage Fire');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 8, 1, 0, 84671, 0, 0, 0, 0, 0, '', 'Spell Intellect for Mage Arcane');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 9, 1, 0, 84739, 0, 0, 0, 0, 0, '', 'Spell Intellect for Warlock Destruction');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 10, 1, 0, 84740, 0, 0, 0, 0, 0, '', 'Spell Intellect for Warlock Demonology');
INSERT INTO `conditions` VALUES (17, 0, 51596, 0, 11, 1, 0, 87339, 0, 0, 0, 0, 0, '', 'Spell Intellect for Warlock Affliction');
DELETE FROM `conditions` WHERE (`SourceEntry`='83990');
INSERT INTO `conditions` VALUES (17, 0, 83990, 0, 1, 1, 0, 85101, 0, 0, 0, 0, 0, '', 'Spell Spirit for Druid Resto');
INSERT INTO `conditions` VALUES (17, 0, 83990, 0, 2, 1, 0, 87336, 0, 0, 0, 0, 0, '', 'Spell Spirit for Priest Holy');
INSERT INTO `conditions` VALUES (17, 0, 83990, 0, 3, 1, 0, 16213, 0, 0, 0, 0, 0, '', 'Spell Spirit for Shaman Restoration');
DELETE FROM `conditions` WHERE (`SourceEntry`='87456');
INSERT INTO `conditions` VALUES (17, 0, 87456, 0, 1, 1, 0, 84735, 0, 0, 0, 0, 0, '', 'Spell Agility for Druid Feral');
INSERT INTO `conditions` VALUES (17, 0, 87456, 0, 2, 1, 0, 30814, 0, 0, 0, 0, 0, '', 'Spell Agility for Shaman Ehnancement');
INSERT INTO `conditions` VALUES (17, 0, 87456, 0, 3, 1, 0, 31223, 0, 0, 0, 0, 0, '', 'Spell Agility for Rogue Subtley');
INSERT INTO `conditions` VALUES (17, 0, 87456, 0, 4, 1, 0, 13852, 0, 0, 0, 0, 0, '', 'Spell Agility for Rogue Combat');
INSERT INTO `conditions` VALUES (17, 0, 87456, 0, 5, 1, 0, 84601, 0, 0, 0, 0, 0, '', 'Spell Agility for Rogue Assassination');
INSERT INTO `conditions` VALUES (17, 0, 87456, 0, 6, 1, 0, 84729, 0, 0, 0, 0, 0, '', 'Spell Agility for Hunter Survival');
INSERT INTO `conditions` VALUES (17, 0, 87456, 0, 7, 1, 0, 87326, 0, 0, 0, 0, 0, '', 'Spell Agility for Hunter Markshamanship');
INSERT INTO `conditions` VALUES (17, 0, 87456, 0, 8, 1, 0, 87325, 0, 0, 0, 0, 0, '', 'Spell Agility for Hunter Beast Mastery');
DELETE FROM `conditions` WHERE (`SourceEntry`='43288');
INSERT INTO `conditions` VALUES (17, 0, 43288, 0, 1, 1, 0, 29592, 0, 0, 0, 0, 0, '', 'Spell strength for Fury warrior');
INSERT INTO `conditions` VALUES (17, 0, 43288, 0, 2, 1, 0, 12296, 0, 0, 0, 0, 0, '', 'Spell strength for Arms warrior');
INSERT INTO `conditions` VALUES (17, 0, 43288, 0, 3, 1, 0, 52143, 0, 0, 0, 0, 0, '', 'Spell strength for DK Unholy');
INSERT INTO `conditions` VALUES (17, 0, 43288, 0, 4, 1, 0, 50887, 0, 0, 0, 0, 0, '', 'Spell strength for DK Frost');
INSERT INTO `conditions` VALUES (17, 0, 43288, 0, 5, 1, 0, 20113, 0, 0, 0, 0, 0, '', 'Spell strength for Paladin Retribution');

DELETE FROM `creature_template` WHERE (`entry`='391235');
INSERT INTO `creature_template` VALUES (391235, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Alchemy Big Cauldron Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);
DELETE FROM `creature_template` WHERE (`entry`='391236');
INSERT INTO `creature_template` VALUES (391236, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Alchemy Big Cauldron Bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);
DELETE FROM `creature_template_addon` WHERE (`entry`='391235');
INSERT INTO `creature_template_addon` VALUES (391235, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `creature_template_addon` WHERE (`entry`='391236');
INSERT INTO `creature_template_addon` VALUES (391236, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='92712');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('92712', '99292', 'spell script summon bunny');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='92649');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('92649', '69197', 'spell script summon bunny');

DELETE FROM `spell_scripts` WHERE (`id`='99292');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `datalong2`) VALUES ('99292', '10', '391235', '120000');
DELETE FROM `spell_scripts` WHERE (`id`='69197');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `datalong2`) VALUES ('69197', '10', '391236', '120000');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='391235');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='391235');
INSERT INTO `smart_scripts` VALUES (391235, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 50, 207364, 120000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On bunny summon spawn object');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='391236');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='391236');
INSERT INTO `smart_scripts` VALUES (391236, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 50, 207362, 120000, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'On bunny summon spawn object');

UPDATE `gameobject_template` SET `faction`='35', `data2`='0' WHERE (`entry`='207364');
UPDATE `gameobject_template` SET `faction`='35', `data2`='0' WHERE (`entry`='207362');

-- Fix Flask - exclusive use by type
DELETE FROM `spell_group_stack_rules` WHERE (`group_id`='5003');

DELETE FROM `spell_group` WHERE (`spell_id`='79469');
DELETE FROM `spell_group` WHERE (`spell_id`='79470');
DELETE FROM `spell_group` WHERE (`spell_id`='94160');
DELETE FROM `spell_group` WHERE (`spell_id`='79471');
DELETE FROM `spell_group` WHERE (`spell_id`='79472');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('1', '79469');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('1', '79470');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('1', '94160');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('1', '79471');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('1', '79472');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2', '79469');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2', '79470');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2', '94160');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2', '79471');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2', '79472');

-- Fix loot Recipe: Vial of the Sands
DELETE FROM `item_loot_template` WHERE (`entry`='64657');
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('64657', '67540', '100');
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('64657', '67538', '5');

-- Fix Mixology: work around - trainer learn the spell as in the patch wotlk
DELETE FROM `npc_trainer` WHERE (`entry`='200400') AND (`spell`='53042');
INSERT INTO `npc_trainer` VALUES (200400, 53042, 1000, 171, 1, 0);

-- Fix only one specialization can be done - note change 725 in 525 when bug specialization will be resolved
UPDATE `quest_template` SET `RequiredSkillPoints`='725', `ExclusiveGroup`='5252' WHERE (`Id`='29067');
UPDATE `quest_template` SET `RequiredSkillPoints`='725', `ExclusiveGroup`='5252' WHERE (`Id`='29481');
UPDATE `quest_template` SET `RequiredSkillPoints`='725', `ExclusiveGroup`='5252' WHERE (`Id`='29482');

-- Fix mount: Vial of the Sands
UPDATE creature_template SET vehicleid = 156, npcflag = 16777216 WHERE entry IN (50269);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='50269');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('50269', '80343', '1'); 