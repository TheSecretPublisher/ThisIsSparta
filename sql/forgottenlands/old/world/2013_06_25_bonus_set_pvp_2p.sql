DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= 92254 AND `spell_effect`=-92254;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (92254, -92254, 2, 'Bonus Resilience 2P don\'t stack');
