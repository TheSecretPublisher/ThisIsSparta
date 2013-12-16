-- Perk Mobile Bank
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='83958');
INSERT INTO `spell_linked_spell` VALUES (83958, 88306, 0, 'summon chest');

-- Fix boot with tele for bootybay
DELETE FROM `spell_target_position` WHERE  `id`=71436;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (71436, 0, -14447.2, 470.499, 15.2666, 2.31887);
