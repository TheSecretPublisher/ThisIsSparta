DELETE FROM `smart_scripts` WHERE `entryorguid`=52958;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(52958,0,0,0,2,0,100,5,0,50,0,0,11,97977,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"zandalari hierophant - health percent- cast blessing of zandalar"),
(52958,0,1,0,0,0,100,4,1000,6000,3000,10000,11,96332,0,0,0,0,0,6,0,0,0,0.0,0.0,0.0,0.0,"zandalari hierophant - in combat- cast hypotermia"),
(52958,0,2,0,0,0,100,4,1000,5000,6000,12000,11,23979,0,0,0,0,0,11,0,25,0,0.0,0.0,0.0,0.0,"zandalari hierophant - in combat- cast ancient power"),
(52958,0,3,0,0,0,100,4,3000,10000,15000,15000,11,97973,0,0,0,0,0,11,0,25,0,0.0,0.0,0.0,0.0,"zandalari hierophant - in combat- cast sanctify"),
(52958,0,4,5,2,0,100,5,0,50,0,0,11,97969,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"zandalari hierophant - health percent - cast glory of the zandalari"),
(52958,0,5,0,2,0,90,4,0,50,6000,30000,11,97978,0,0,0,0,0,11,0,25,0,0.0,0.0,0.0,0.0,"zandalari hierophant - health percent - cast ancient guardian");
DELETE FROM `smart_scripts` WHERE `entryorguid`=52956;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(52956,0,0,0,2,0,100,5,0,50,0,0,11,97977,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"zandalari juggernaut - health percent- cast blessing of zandalar"),
(52956,0,1,0,2,0,100,5,0,50,0,0,11,97970,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"zandalari juggernaut - health percent- cast glory of the zandalari"),
(52956,0,2,0,0,0,100,4,1000,6000,3000,10000,11,96332,0,0,0,0,0,6,0,0,0,0.0,0.0,0.0,0.0,"zandalari juggernaut - in combat - cast hypotermia"),
(52956,0,3,0,0,0,100,4,1000,3000,15000,30000,11,98018,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"zandalari juggernaut - in combat- cast tectonic plating"),
(52956,0,4,0,2,0,100,4,0,50,10000,10000,11,98000,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"zandalari juggernaut - health percent- cast ancestral call");
