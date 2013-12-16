-- Fix Talent Reckoning (rank 1 & rank 2)
DELETE FROM `spell_proc_event` WHERE `entry` IN(20177,20179);
INSERT INTO `spell_proc_event` VALUES
(20177,1,10,0,0,0,139944,40,0,10,8),
(20179,1,10,0,0,0,139944,40,0,20,8);