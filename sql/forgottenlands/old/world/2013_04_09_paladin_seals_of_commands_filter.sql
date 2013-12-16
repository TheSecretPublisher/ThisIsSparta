-- Limits the Seal of Righteousness aoe from Seals of Command
DELETE FROM spell_proc_event WHERE entry=20154;
INSERT INTO `spell_proc_event` VALUES (20154, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0);

-- Limits the spells that can proc Seals of Command damage
DELETE FROM spell_proc_event WHERE entry=85126;
INSERT INTO `spell_proc_event` VALUES (85126, 0, 10, 512, 536872960, 65536, 16, 0, 0, 0, 0);
