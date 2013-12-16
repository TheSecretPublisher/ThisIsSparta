-- Quest 11165 A Troll Among Trolls
UPDATE `creature_template` SET `npcflag`=3 WHERE  `entry`=23761;
UPDATE `quest_template` SET `PrevQuestId`=0, `NextQuestIdChain`=0 WHERE  `Id`=11165;

-- Quest 29217 The Captive Scouts
-- 1 obj
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='52939');
UPDATE `creature_template` SET `gossip_menu_id`='52939' WHERE (`entry`='52939');

delete from gossip_menu_option where menu_id = 52939;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(52939,0,"Please save me!",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (52939) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(52939,0,1,2,62,0,100,0,52939,0,0,0,33,52939,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(52939,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip");
-- 2 obj
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='52941');
UPDATE `creature_template` SET `gossip_menu_id`='52941' WHERE (`entry`='52941');

delete from gossip_menu_option where menu_id = 52941;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(52941,0,"Please save me!",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (52941) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(52941,0,1,2,62,0,100,0,52941,0,0,0,33,52941,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(52941,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip");

-- 3 obj
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='52943');
UPDATE `creature_template` SET `gossip_menu_id`='52943' WHERE (`entry`='52943');

delete from gossip_menu_option where menu_id = 52943;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(52943,0,"Please save me!",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (52943) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(52943,0,1,2,62,0,100,0,52943,0,0,0,33,52943,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(52943,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip");

-- 4 obj
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='52945');
UPDATE `creature_template` SET `gossip_menu_id`='52945' WHERE (`entry`='52945');

delete from gossip_menu_option where menu_id = 52945;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(52945,0,"Please save me!",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (52945) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(52945,0,1,2,62,0,100,0,52945,0,0,0,33,52945,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(52945,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip");

DELETE FROM `creature` WHERE  `id`=52943;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (NULL, 52943, 568, 2, 1, 0, 0, -71.6824, 1162.39, 5.16279, 4.02867, 300, 0, 0, 4944, 0, 0, 0, 0, 0);
UPDATE `creature_template_addon` SET `bytes1`=0, `auras`='' WHERE  `entry`=52943;
DELETE FROM `creature` WHERE  `id`=52944;
DELETE FROM `creature` WHERE  `id`=52946;
UPDATE `creature_template` SET `npcflag`=1 WHERE  `entry`=52943;
UPDATE `creature_template` SET `npcflag`=1 WHERE  `entry`=52945;
UPDATE `creature_template_addon` SET `bytes1`=0, `auras`='' WHERE  `entry`=52945;
DELETE FROM `creature` WHERE  `id`=52945;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (NULL, 52945, 568, 2, 1, 0, 0, 383.45, 1085.37, 5.97912, 1.56156, 300, 0, 0, 4944, 0, 0, 0, 0, 0);
