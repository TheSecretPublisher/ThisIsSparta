DELETE FROM spell_linked_spell WHERE spell_trigger in(31821, -31821);
INSERT INTO `spell_linked_spell` VALUES (31821, 64364, 0, 'Paladin: Aura Mastery aura apply');
INSERT INTO `spell_linked_spell` VALUES (-31821, -64364, 0, 'Paladin: Aura Mastery aura remove');

DELETE FROM spell_script_names WHERE spell_id=31821;
INSERT INTO `spell_script_names` VALUES (31821, 'spell_pal_aura_mastery');
