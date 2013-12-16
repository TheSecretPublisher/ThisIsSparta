-- Spell Scripts Inserts
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (82860, 92523, 92524, 92525, 82817, 82813, 83500, 83581, 84948);
INSERT INTO `spell_linked_spell` VALUES (82860, -82762, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (92523, -82762, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (92524, -82762, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (92525, -82762, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (82817,  82666, 1, 'ascendantCouncil'); 
INSERT INTO `spell_linked_spell` VALUES (82813,  82663, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (83500, -83581, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (83581, -83500, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (84948,  39432, 2, 'ascendantCouncil');