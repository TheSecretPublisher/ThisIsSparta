-- Arcane missiles! proc at 100% and only spell id 5143
DELETE FROM `spell_proc_event` WHERE `entry`=79683;
INSERT INTO `spell_proc_event` VALUES
(79683,0,3,2048,0,0,65536,0,0,100,0);
