-- Quest 26572 A Golden Opportunity (daily fishing)
DELETE FROM `item_template` WHERE (`entry`='58958');
INSERT INTO `item_template` VALUES (58958, 12, 0, -1, 'Drowned Thunder Lizard Tail', 3915, 1, 64, 8192, 1, 1, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39838, 0, NULL, 1000, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `conditions` WHERE (`SourceEntry`='39838');
INSERT INTO `conditions` VALUES (17, 0, 39838, 0, 0, 31, 1, 3, 43331, 0, 0, 0, 0, '', 'Spell can be used only on quest mob');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='39838');
INSERT INTO `spell_linked_spell` VALUES (39838, 80468, 0, 'spell 1');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='80468');
INSERT INTO `spell_linked_spell` VALUES (80468, 35319, 0, 'spell 2');

-- Teleport Thunderbluff for Mage
DELETE FROM `spell_target_position` WHERE (`id`='3566');
INSERT INTO `spell_target_position` VALUES (3566, 1, -964.98, 283.433, 111.187, 3.02);

-- Unlock Heroic Magister
UPDATE `access_requirement` SET `quest_done_A`='0', `quest_done_H`='0' WHERE (`mapId`='585') AND (`difficulty`='1');

