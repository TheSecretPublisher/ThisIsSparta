DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (23333, 23335) AND `spell_effect`= -11327;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('23335', '-11327', '1', 'Taking flag removes Vanish');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('23333', '-11327', '1', 'Taking flag removes Vanish');