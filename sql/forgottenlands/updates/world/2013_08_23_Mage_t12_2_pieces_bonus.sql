DELETE FROM `spell_proc_event` WHERE entry in (99063);
INSERT INTO `spell_proc_event` VALUES ('99063', '0', '0', '0', '0', '0', '0', '0', '0', '20', '40'); 
UPDATE `creature_template` SET `ScriptName`= 'npc_t12_mirror_image' WHERE `entry` = 53438;

