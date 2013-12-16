DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (192651,192706, 192871, 192905, 192885, 192870, 192868, 192874, 192883, 1192651, 192888, 192889, 192890, 192894,192884, 192895, 192886,192869, 192880, 192652,192887, 192653, 192882,192707, 192896, 191684, 192891, 192872, 192881);
DELETE FROM `gameobject` WHERE `id` IN (192651, 192706, 192871, 192905, 192885, 192870, 192868, 192874, 192883, 1192651, 192888, 192889, 192890, 192894,192884, 192895, 192886,192869, 192880, 192652,192887, 192653, 192882,192707, 192896, 191684, 192891, 192872, 192881);
DELETE FROM `pool_gameobject` WHERE `pool_entry` IN (192708, 192865, 192709, 192713, 192710, 192711, 192867, 192866);

DELETE FROM smart_scripts WHERE entryorguid IN (19481);
INSERT INTO `smart_scripts` VALUES (19481, 0, 1, 5, 62, 0, 100, 0, 19481, 0, 0, 0, 56, 44738, 1, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 'add item');
INSERT INTO `smart_scripts` VALUES (19481, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (19481, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');


UPDATE `creature_template` SET `gossip_menu_id`='19481' WHERE (`entry`='19481');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='19481');

delete from gossip_menu_option where menu_id = 19481;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(19481,0,"Thank you! I will be sure to notify you if I find anything else",1,1);

DELETE FROM `creature_text` WHERE (`entry`='19481') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('19481','1','0','Have a good day!  ','12','0','100','0','0','0','Life party');

DELETE FROM `creature` WHERE  `id`=19481;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (NULL, 19481, 571, 1, 1, 0, 0, 5773.29, 866.047, 865.811, 3.61301, 300, 0, 0, 6986, 0, 0, 0, 0, 0);


