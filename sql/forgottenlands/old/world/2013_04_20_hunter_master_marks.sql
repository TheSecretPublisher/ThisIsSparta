DELETE FROM `spell_proc_event` WHERE `entry` IN (34485, 34486, 34487);
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyMask1`) VALUES 
(34485, 1),
(34486, 1), 
(34487, 1);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 82928;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (82928, -82926, 'Aimed Shot! Remove Fire!');