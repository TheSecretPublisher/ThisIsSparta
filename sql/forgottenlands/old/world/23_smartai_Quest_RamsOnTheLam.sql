DELETE FROM `smart_scripts` WHERE `entryorguid`=41539;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`action_type`,`action_param1`,`comment`) VALUES (41539,0,0,0,22,104,41,2000,'Stolen Ram - On /whistle - Force Despawn');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`action_type`,`action_param1`,`comment`) VALUES (41539,0,3,0,61,46,20,'Stolen Ram - On set run - Move Forward');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`action_type`,`action_param1`,`comment`) VALUES (41539,0,1,3,22,104,59,1,'Stolen Ram - On /whistle - Set Run');
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_param1`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES (41539,0,2,0,22,104,33,41539,7,'Stolen Ram - On Despawn - Quest credit');
UPDATE `quest_template` SET `RequiredNpcOrGo1`=41539 WHERE (`Id`=25905);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=41539);
