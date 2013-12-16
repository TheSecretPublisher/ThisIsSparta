UPDATE `creature_template` SET `gossip_menu_id`=34523,`AIName`='SmartAI' WHERE (`entry`=34523);

DELETE FROM `creature_text` WHERE `entry`=34523;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`probability`) VALUES (34523,0,0,'<Snort>',12,100);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`probability`) VALUES (34523,0,1,'I say nothing.',12,100);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`probability`) VALUES (34523,1,0,'You waste your strength! Tortusk train us warriors never to talk.$BOh - I\'ve said too much!',12,100);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`probability`) VALUES (34523,2,0,'Mnn, <snort> why you cook this meat? Tortusk tells us meat taste best when stolen and raw.$BOh - I\'ve said too much!',12,100);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`probability`) VALUES (34523,3,0,'Haha - <snort> ha - heee! <snort> Haha no stop haha <SNORT> <wheeze> Hee hee! Battlemaster Tortusk never prepared us for this!$BOh - I\'ve said too much!',12,100);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=34523;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_text`,`option_id`,`npc_option_npcflag`) VALUES (34523,0,'Who sent you!?',1,1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_text`,`option_id`,`npc_option_npcflag`) VALUES (34523,1,'<Punch him in the mouth.>',1,1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_text`,`option_id`,`npc_option_npcflag`) VALUES (34523,2,'<Kick him in his big fat face.>',1,1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_text`,`option_id`,`npc_option_npcflag`) VALUES (34523,3,'<Offer food.>',1,1);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_text`,`option_id`,`npc_option_npcflag`) VALUES (34523,4,'<Tickle Time!>',1,1);

DELETE FROM `smart_scripts` WHERE `entryorguid`=34523;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`action_type`,`comment`) VALUES (34523,0,0,1,62,34523,72,'Captured Razormane - On gossip 1 - Close gossip');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`action_type`,`comment`) VALUES (34523,0,1,0,61,1,'Captured Razormane - On close gossip 1 - Say text');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`event_param2`,`action_type`,`comment`) VALUES (34523,0,2,3,62,34523,1,72,'Captured Razormane - On gossip 2 - Close gossip');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`action_type`,`action_param1`,`comment`) VALUES (34523,0,3,10,61,1,1,'Captured Razormane - On close gossip 2 - Say text');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`event_param2`,`action_type`,`comment`) VALUES (34523,0,4,5,62,34523,2,72,'Captured Razormane - On gossip 3 - Close gossip');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`action_type`,`action_param1`,`comment`) VALUES (34523,0,5,10,61,1,1,'Captured Razormane - On close gossip 3 - Say text');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`event_param2`,`action_type`,`comment`) VALUES (34523,0,6,7,62,34523,3,72,'Captured Razormane - On gossip 4 - Close gossip');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`action_type`,`action_param1`,`comment`) VALUES (34523,0,7,10,61,1,2,'Captured Razormane - On close gossip 4 - Say text');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`event_param2`,`action_type`,`comment`) VALUES (34523,0,8,9,62,34523,4,72,'Captured Razormane - On gossip 5 - Close gossip');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`action_type`,`action_param1`,`comment`) VALUES (34523,0,9,10,61,1,3,'Captured Razormane - On close gossip 5 - Say text');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`action_type`,`action_param1`,`comment`) VALUES (34523,0,10,0,61,33,34529,'Captured Razormane - On say text - Credit');