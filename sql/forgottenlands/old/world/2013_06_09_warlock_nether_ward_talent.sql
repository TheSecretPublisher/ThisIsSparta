DELETE FROM spell_linked_spell WHERE (spell_trigger=91713 OR spell_trigger=-91713) AND (spell_effect=-687 OR spell_effect=-28176);
INSERT INTO `spell_linked_spell` VALUES (91713, -687, 0, 'Warlock - Adding Nether Ward talent removes Demon Armor');
INSERT INTO `spell_linked_spell` VALUES (91713, -28176, 0, 'Warlock - Adding Nether Ward talent removes Fel Armor');
INSERT INTO `spell_linked_spell` VALUES (-91713, -687, 0, 'Warlock - Removing Nether Ward talent removes Demon Armor');
INSERT INTO `spell_linked_spell` VALUES (-91713, -28176, 0, 'Warlock - Removing Nether Ward talent removes Fel Armor');
