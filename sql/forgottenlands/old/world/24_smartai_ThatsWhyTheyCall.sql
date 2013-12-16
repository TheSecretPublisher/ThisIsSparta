UPDATE `creature_template` SET `gossip_menu_id`=7176, `npcflag`=1, `AIName`='SmartAI' WHERE (`entry`=41989);
DELETE FROM `smart_scripts` WHERE `entryorguid`=41989;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`action_type`,`action_param1`,`comment`) VALUES (41989,0,0,2,62,7176,41,2000,'Frightened Peon - On gossip - Force Despawn');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`action_type`,`action_param1`,`comment`) VALUES (41989,0,3,0,61,46,20,'Frightened Peon - On set run - Move Forward');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`action_type`,`action_param1`,`comment`) VALUES (41989,0,1,3,62,7176,59,1,'Frightened Peon - On gossip - Set Run');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES (41989,0,2,0,61,104,33,41989,7,'Frightened Peon - On Despawn - Quest credit');
UPDATE `creature_template` SET `npcflag`=1 WHERE (`entry`=41989);