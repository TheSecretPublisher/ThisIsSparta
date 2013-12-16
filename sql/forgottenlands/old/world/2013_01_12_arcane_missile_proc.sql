DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 79683 AND `spell_effect` = 79808;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 5143 AND `spell_effect` = -79808;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 5143 AND `spell_effect` = -79683;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (79683, 79808, 'Arcane missiles activation');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (5143, -79808, 'Arcane missiles deactivation');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (5143, -79683, 'on arcane missile cast remove visible buff');
