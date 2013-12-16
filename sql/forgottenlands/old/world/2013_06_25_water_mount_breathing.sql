DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (98718, 75207, 64731) AND `spell_effect`=11789;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (98718, 11789, 2, 'Subdued Seahorse applies Water Breathing');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (75207, 11789, 2, 'Abyssal Seahorse applies Water Breathing');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (64731, 11789, 2, 'Sea Turtle applies Water Breathing');
