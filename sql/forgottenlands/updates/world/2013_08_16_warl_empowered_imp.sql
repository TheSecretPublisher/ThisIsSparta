DELETE FROM spell_proc_event WHERE entry=54278;

DELETE FROM spell_linked_spell WHERE spell_trigger=6353 AND spell_effect=-47283;
INSERT INTO `spell_linked_spell` VALUES (6353, -47283, 0, 'Warlock: Soul Fire consumes Empowered Imp buff');
