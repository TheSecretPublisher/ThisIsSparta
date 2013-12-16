-- FIX GOBLIN QUEST ENDING
DELETE FROM `creature` WHERE `id` = 35222 AND `phaseMask` = 4;
DELETE FROM `creature` WHERE `id` = 35222 AND `phaseMask` = 65535;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('35222','648','1','65535','0','35222','-7881.89','1836.87','4.18856','3.31935','300','0','0','774900','44120','0','0','134250496','0');

DELETE FROM smart_scripts WHERE entryorguid = 35222;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(35222,0,1,0,20,0,100,0,14126,0,0,0,68,22,0,0,0,0,0,21,10,0,0,0,0,0,0,"Filmato"),
(35222,0, 3, 0,20,0,100,0,14126,0,0,0,62,1,0,0,0,0,0,21,10,0,0,1581,-4396,16,0.17,"Teleport to Org"),
(35222, 0, 2, 3, 20, 0, 100, 0, 14126, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, "Leva aura phase 4");