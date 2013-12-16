DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 8092 AND `spell_effect` IN (-87160, -81292);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
(8092, -87160, 'Mind Blast Remove Mind Melt'),
(8092, -81292, 'Mind Blast Remove Mind Melt');