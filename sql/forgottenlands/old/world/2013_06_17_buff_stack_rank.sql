DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=53137 AND `spell_effect`=-53138;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53137, -53138, 2, 'Abomination\'s Might (rank 1) immune to Abomination\'s Might (rank 2)');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=53138 AND `spell_effect`=-53137;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53138, -53137, 2, 'Abomination\'s Might (rank 2) immune to Abomination\'s Might (rank 1)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=30802 AND `spell_effect`=-30808;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (30802, -30808, 2, 'Unleashed Rage (rank 1) immune to Unleashed Rage (rank 2)');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=30808 AND `spell_effect`=-30802;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (30808, -30802, 2, 'Unleashed Rage (rank 2) immune to Unleashed Rage (rank 1)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51698 AND `spell_effect` IN (-51700, -51701);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51698, -51700, 2, 'Honor Among Thieves (rank 1) immune to Honor Among Thieves (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51698, -51701, 2, 'Honor Among Thieves (rank 1) immune to Honor Among Thieves (rank 3)');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51700 AND `spell_effect` IN (-51698, -51701);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51700, -51698, 2, 'Honor Among Thieves (rank 2) immune to Honor Among Thieves (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51700, -51701, 2, 'Honor Among Thieves (rank 2) immune to Honor Among Thieves (rank 3)');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51701 AND `spell_effect` IN (-51698, -51700);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51701, -51698, 2, 'Honor Among Thieves (rank 3) immune to Honor Among Thieves (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51701, -51700, 2, 'Honor Among Thieves (rank 3) immune to Honor Among Thieves (rank 2)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51466 AND `spell_effect`=-51470;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51466, -51470, 2, 'Elemental Oath (rank 1) immune to Elemental Oath (rank 2)');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51470 AND `spell_effect`=-51466;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51470, -51466, 2, 'Elemental Oath (rank 2) immune to Elemental Oath (rank 1)');
