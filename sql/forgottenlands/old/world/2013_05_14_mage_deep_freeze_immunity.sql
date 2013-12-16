-- Fix Deep Freeze Immunity State proc event
DELETE FROM `spell_proc_event` WHERE `entry`=71761;
INSERT INTO `spell_proc_event` VALUES
(71761,0,3,0,1048576,0,65536,0,0,0,0);
