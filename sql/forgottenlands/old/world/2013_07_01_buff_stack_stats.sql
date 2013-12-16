DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`=90363) AND `spell_effect`IN (-79060,-79061, -79062, -79063, -1126, -20217) AND (`type`=1);

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger` IN (79060, 79061, 79062, 79063, 1126, 20217)) AND `spell_effect`=-90363 AND (`type`=2);
INSERT INTO `spell_linked_spell` VALUES (79063, -90363, 2, 'Blessing of Kings (raid) immune to Embrace of the Shale Spider');
INSERT INTO `spell_linked_spell` VALUES (20217, -90363, 2, 'Blessing of Kings immune to Embrace of the Shale Spider');
INSERT INTO `spell_linked_spell` VALUES (79062, -90363, 2, 'Blessing of Kings (single) immune to Embrace of the Shale Spider');
INSERT INTO `spell_linked_spell` VALUES (1126, -90363, 2, 'Mark of the Wild immune to Embrace of the Shale Spider');
INSERT INTO `spell_linked_spell` VALUES (79060, -90363, 2, 'Mark of the Wild (single) immune to Embrace of the Shale Spider');
INSERT INTO `spell_linked_spell` VALUES (79061, -90363, 2, 'Mark of the Wild (raid) immune to Embrace of the Shale Spider');
