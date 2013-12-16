DELETE FROM `creature_template` WHERE (`entry`='341779');
INSERT INTO `creature_template` VALUES (341779, 0, 0, 0, 0, 0, 23702, 0, 0, 0, 'Caronte il traghettatore', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);
-- Posizionamento Orgrimmar & Stormwind
DELETE FROM `creature` WHERE (`id`='341779');
INSERT INTO `creature` VALUES (null, 341779, 1, 1, 1, 0, 0, 1596.72, -4360.41, 21.2, 3.649, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341779, 0, 1, 1, 0, 0, -8827.49, 634.53, 94.4, 4.25, 300, 0, 0, 42, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='341779');
DELETE FROM smart_scripts WHERE entryorguid IN (341779);
INSERT INTO `smart_scripts` VALUES (341779, 0, 1, 2, 62, 0, 100, 0, 34177, 0, 0, 0, 62, 643, 0, 0, 0, 0, 0, 7, 0, 0, 0, -630.38, 807.50, 247.99, 6.19, 'Teleport to Throne of the Tides');
INSERT INTO `smart_scripts` VALUES (341779, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (341779, 0, 3, 4, 62, 0, 100, 0, 34177, 1, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -7570.89, -1321.18, 245.55, 4.71, 'Teleport to Blackrock Caverns');
INSERT INTO `smart_scripts` VALUES (341779, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (341779, 0, 5, 6, 62, 0, 100, 0, 34177, 2, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -4061.15, -3450.65, 280.70, 0.325, 'Teleport to Grim Batol');
INSERT INTO `smart_scripts` VALUES (341779, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (341779, 0, 7, 8, 62, 0, 100, 0, 34177, 3, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -10202.89, -1838.05, 20.14, 3.189, 'Teleport to Halls of Origination');
INSERT INTO `smart_scripts` VALUES (341779, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (341779, 0, 9, 10, 62, 0, 100, 0, 34177, 4, 0, 0, 62, 646, 0, 0, 0, 0, 0, 7, 0, 0, 0, 1020.28, 653.18, 156.8, 4.92, 'Teleport to The Stonecore');
INSERT INTO `smart_scripts` VALUES (341779, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (341779, 0, 11, 12, 62, 0, 100, 0, 34177, 5, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -10668.42, -1304.26, 15.5, 3.41, 'Teleport to Lost City of the Tol vir');
INSERT INTO `smart_scripts` VALUES (341779, 0, 12, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (341779, 0, 13, 14, 62, 0, 100, 0, 34177, 6, 0, 0, 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -11504.21, -2303.61, 608.5, 3.71, 'Teleport to The Vortex Pinnacle');
INSERT INTO `smart_scripts` VALUES (341779, 0, 14, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (341779, 0, 15, 16, 62, 0, 100, 0, 34177, 7, 0, 0, 62, 530, 0, 0, 0, 0, 0, 7, 0, 0, 0, 6833.82, -7949.49, 170.2, 5.38, 'Teleport to Zul Aman');
INSERT INTO `smart_scripts` VALUES (341779, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (341779, 0, 17, 18, 62, 0, 100, 0, 34177, 8, 0, 0, 62, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, -11916.38, -1208.09, 92.3, 4.74, 'Teleport to Zul Gurub');
INSERT INTO `smart_scripts` VALUES (341779, 0, 18, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');

UPDATE `creature_template` SET `gossip_menu_id`='34177' WHERE (`entry`='341779');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='341779');

DELETE FROM `gossip_menu_option` WHERE (`menu_id`='34177');
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(34177,0,"Portami a Throne of the Tides",1,1);
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(34177,1,"Portami a Blackrock Caverns",1,1);
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(34177,2,"Portami a Grim Batol",1,1);
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(34177,3,"Portami a Halls of Origination",1,1);
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(34177,4,"Portami a The Stonecore",1,1);
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(34177,5,"Portami a Lost City of the Tol'vir",1,1);
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(34177,6,"Portami a The Vortex Pinnacle",1,1);
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(34177,7,"Portami a Zul'Aman",1,1);
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(34177,8,"Portami a Zul'Gurub",1,1);