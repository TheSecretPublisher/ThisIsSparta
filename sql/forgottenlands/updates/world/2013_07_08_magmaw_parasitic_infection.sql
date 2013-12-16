DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (78941, 91913, 94678, 94679) AND `spell_effect`=78097;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (78941, 78097, 1, 'Parasitic Infection');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (91913, 78097, 1, 'Parasitic Infection');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (94678, 78097, 1, 'Parasitic Infection');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (94679, 78097, 1, 'Parasitic Infection');