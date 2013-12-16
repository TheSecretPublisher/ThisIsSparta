DELETE FROM `spell_proc_event` WHERE `entry` in (98956, 99134, 99190, 99189, 99013);
-- dk blood
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `CustomChance`) VALUES ('98956', '20', '100');
-- priest healer
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES ('99134', '5');
-- shaman resto
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`) VALUES ('99190', '11', '16', '262144', '40'); 
-- Druid resto
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`) VALUES ('99013', '7', '16', '262144', '40'); 