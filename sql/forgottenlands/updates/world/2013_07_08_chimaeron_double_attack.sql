DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=82882 AND `spell_effect`=-88826;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (82882, -88826, 'Double Attack');

DELETE FROM `spell_proc_event` WHERE `entry`=88826;
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `CustomChance`) VALUES (88826, 4, 100);