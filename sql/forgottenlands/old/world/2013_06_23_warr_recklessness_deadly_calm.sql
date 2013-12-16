DELETE FROM spell_linked_spell WHERE spell_trigger in(1719, 85730);
INSERT INTO `spell_linked_spell` VALUES (1719, -85730, 1, 'Recklessness removes Deadly Calm');
INSERT INTO `spell_linked_spell` VALUES (85730, -1719, 1, 'Deadly Calm removes Recklessness');
