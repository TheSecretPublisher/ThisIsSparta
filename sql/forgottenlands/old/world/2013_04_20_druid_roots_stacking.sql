DELETE FROM spell_linked_spell WHERE spell_trigger in(19975, 339);
INSERT INTO `spell_linked_spell` VALUES (19975, -339, 1, 'Druid: Nature\'s Grasp removes Entangling Roots');
INSERT INTO `spell_linked_spell` VALUES (339, -19975, 1, 'Druid: Entangling Roots remvoes Nature\'s Grasp');
