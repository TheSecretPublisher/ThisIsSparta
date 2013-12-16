-- Removed inexistent spells in Minor/Northrend Inscription Research
-- Minor Research - spell 61288
DELETE FROM `skill_discovery_template` WHERE (`spellId`='58305') AND (`reqSpell`='61288');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='58300') AND (`reqSpell`='61288');

-- Northrend Research - spell 61177 - (61756 is a not valid research spell)
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57166') AND (`reqSpell`='61177');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57166') AND (`reqSpell`='61756');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57169') AND (`reqSpell`='61177');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57169') AND (`reqSpell`='61756');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57218') AND (`reqSpell`='61177');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57218') AND (`reqSpell`='61756');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57273') AND (`reqSpell`='61177');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57273') AND (`reqSpell`='61756');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57719') AND (`reqSpell`='61177');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57719') AND (`reqSpell`='61756');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57013') AND (`reqSpell`='61177');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57013') AND (`reqSpell`='61756');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57212') AND (`reqSpell`='61177');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57212') AND (`reqSpell`='61756');

-- Book of Glyph Mastery - spell 64323
DELETE FROM `skill_discovery_template` WHERE (`spellId`='64299') AND (`reqSpell`='64323');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='65245') AND (`reqSpell`='64323');

-- Missing Spell
-- Book of Glyph Mastery - missing spell
DELETE FROM `skill_discovery_template` WHERE (`spellId`='107907') AND (`reqSpell`='64323');
INSERT INTO `skill_discovery_template` (`spellId`, `reqSpell`, `chance`) VALUES ('107907', '64323', '100');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='94711') AND (`reqSpell`='64323');
INSERT INTO `skill_discovery_template` (`spellId`, `reqSpell`, `chance`) VALUES ('94711', '64323', '100');

-- Minor Research - missing spell
DELETE FROM `skill_discovery_template` WHERE (`spellId`='95215') AND (`reqSpell`='61288');
INSERT INTO `skill_discovery_template` (`spellId`, `reqSpell`, `chance`) VALUES ('95215', '61288', '100');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='57032') AND (`reqSpell`='61288');
INSERT INTO `skill_discovery_template` (`spellId`, `reqSpell`, `chance`) VALUES ('57032', '61288', '100');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='95710') AND (`reqSpell`='61288');
INSERT INTO `skill_discovery_template` (`spellId`, `reqSpell`, `chance`) VALUES ('95710', '61288', '100');

-- Northrend Research - missing spell
DELETE FROM `skill_discovery_template` WHERE (`spellId`='98398') AND (`reqSpell`='61177');
INSERT INTO `skill_discovery_template` (`spellId`, `reqSpell`, `chance`) VALUES ('98398', '61177', '100');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='94000') AND (`reqSpell`='61177');
INSERT INTO `skill_discovery_template` (`spellId`, `reqSpell`, `chance`) VALUES ('94000', '61177', '100');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='101057') AND (`reqSpell`='61177');
INSERT INTO `skill_discovery_template` (`spellId`, `reqSpell`, `chance`) VALUES ('101057', '61177', '100');
DELETE FROM `skill_discovery_template` WHERE (`spellId`='95825') AND (`reqSpell`='61177');
INSERT INTO `skill_discovery_template` (`spellId`, `reqSpell`, `chance`) VALUES ('95825', '61177', '100');

-- Removed Spell Item 377 from Trainer
-- Vicious Charm of Triumph - IT_LEV 377
DELETE FROM `npc_trainer` WHERE (`entry`='200405') AND (`spell`='99547');

-- Vicious Eyeball of dominance - IT_LEV 377
DELETE FROM `npc_trainer` WHERE (`entry`='200405') AND (`spell`='99548');

-- Vicious Jawbone of Conquest - IT_LEV 377
DELETE FROM `npc_trainer` WHERE (`entry`='200405') AND (`spell`='99549');

-- Add Spell to the trainer - forged document 
DELETE FROM `npc_trainer` WHERE (`entry`='200405') AND (`spell`='86654');
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`) VALUES ('200405', '86654', '88888', '773', '500');

-- Quest 27675/27686 Forged Documents
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE (`Id`='27686');
UPDATE `quest_template` SET `SpecialFlags`='1' WHERE (`Id`='27675');
DELETE FROM `item_loot_template` WHERE (`entry`='62062') AND (`item`='45978');
INSERT INTO `item_loot_template` (`entry`, `item`, `maxcount`) VALUES ('62062', '45978', '30');

-- Fix Runescroll Stamina II
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='86507') AND (`spell_effect`='96175') AND (`type`='1');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('86507', '96175', '1', 'runescroll stamina II add buff');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='96175') AND (`spell_effect`='-72590') AND (`type`='1');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('96175', '-72590', '1', 'runescroll stamina II remove I');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='72590') AND (`spell_effect`='-96175') AND (`type`='1');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('72590', '-96175', '1', 'runescroll stamina I remove II');

-- Fix Scroll of Stamina exclusive use by rank
DELETE FROM `spell_group_stack_rules` WHERE (`group_id`='2005');
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('2005', '1');
DELETE FROM `spell_group` WHERE (`id`='2005');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2005', '8099');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2005', '8100');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2005', '8101');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2005', '12178');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2005', '33081');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2005', '43198');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2005', '48101');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2005', '48102');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('2005', '89345');

-- Fix Scroll of Agility exclusive use by rank
DELETE FROM `spell_group_stack_rules` WHERE (`group_id`='4000');
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('4000', '1');
DELETE FROM `spell_group` WHERE (`id`='4000');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4000', '8115');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4000', '8116');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4000', '8117');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4000', '12174');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4000', '33077');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4000', '43194');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4000', '58450');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4000', '58451');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4000', '89343');

-- Fix Scroll of Strength exclusive use by rank
DELETE FROM `spell_group_stack_rules` WHERE (`group_id`='4001');
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('4001', '1');
DELETE FROM `spell_group` WHERE (`id`='4001');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4001', '8118');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4001', '8119');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4001', '8120');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4001', '12179');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4001', '33082');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4001', '43199');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4001', '58448');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4001', '58449');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4001', '89346');

-- Fix Scroll of Spirit exclusive use by rank
DELETE FROM `spell_group_stack_rules` WHERE (`group_id`='4002');
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('4002', '1');
DELETE FROM `spell_group` WHERE (`id`='4002');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4002', '8112');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4002', '8113');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4002', '8114');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4002', '12177');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4002', '33080');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4002', '43197');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4002', '48103');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4002', '48104');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4002', '89342');

-- Fix Scroll of Intellect exclusive use by rank
DELETE FROM `spell_group_stack_rules` WHERE (`group_id`='4003');
INSERT INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('4003', '1');
DELETE FROM `spell_group` WHERE (`id`='4003');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4003', '8096');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4003', '8097');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4003', '8098');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4003', '12176');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4003', '33078');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4003', '43195');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4003', '48099');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4003', '48100');
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES ('4003', '89347');

-- Fix milling doesn't work with Cata herbs
DELETE FROM `milling_loot_template` WHERE (`entry`='52988');
DELETE FROM `milling_loot_template` WHERE (`entry`='52987');
DELETE FROM `milling_loot_template` WHERE (`entry`='52986');
DELETE FROM `milling_loot_template` WHERE (`entry`='52985');
DELETE FROM `milling_loot_template` WHERE (`entry`='52984');
DELETE FROM `milling_loot_template` WHERE (`entry`='52983');
INSERT INTO `milling_loot_template` VALUES (52983, 61980, 25, 0, 0, 1, 3);
INSERT INTO `milling_loot_template` VALUES (52983, 61979, 100, 0, 0, 2, 4);
INSERT INTO `milling_loot_template` VALUES (52984, 61980, 25, 0, 0, 1, 3);
INSERT INTO `milling_loot_template` VALUES (52984, 61979, 100, 0, 0, 2, 4);
INSERT INTO `milling_loot_template` VALUES (52985, 61980, 25, 0, 0, 1, 3);
INSERT INTO `milling_loot_template` VALUES (52985, 61979, 100, 0, 0, 2, 3);
INSERT INTO `milling_loot_template` VALUES (52986, 61979, 100, 0, 0, 2, 4);
INSERT INTO `milling_loot_template` VALUES (52986, 61980, 25, 0, 0, 1, 3);
INSERT INTO `milling_loot_template` VALUES (52987, 61979, 100, 1, 0, 2, 4);
INSERT INTO `milling_loot_template` VALUES (52987, 61980, 50, 1, 0, 1, 3);
INSERT INTO `milling_loot_template` VALUES (52988, 61980, 50, 0, 0, 1, 3);
INSERT INTO `milling_loot_template` VALUES (52988, 61979, 100, 0, 0, 2, 4);

-- Fix add Book of glyph to vendor (workaround)
DELETE FROM `npc_vendor` WHERE (`entry`='46718') AND (`slot`='9572');
INSERT INTO `npc_vendor` VALUES (46718, 9572, 45912, 0, 0, 0, 1);
DELETE FROM `npc_vendor` WHERE (`entry`='52031') AND (`slot`='12');
INSERT INTO `npc_vendor` VALUES (52031, 12, 45912, 0, 0, 0, 1);
DELETE FROM `item_template` WHERE (`entry`='45912');
INSERT INTO `item_template` VALUES (45912, 9, 0, -1, 'Book of Glyph Mastery', 1103, 2, 64, 8192, 1, 1, 1, 500000, 150000, 0, -1, -1, 80, 0, 773, 425, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64323, 0, -1, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, '', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13329);