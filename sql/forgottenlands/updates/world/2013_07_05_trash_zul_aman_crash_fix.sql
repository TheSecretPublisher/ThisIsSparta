DELETE FROM `smart_scripts` WHERE `entryorguid`=23580;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=23580;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(23580,0,0,1,2,0,100,5,0,19,0,0,11,43274,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Amani'shi Warbringer - At 19% HP - Cast Dismount Bear"),
(23580,0,1,2,2,0,100,5,0,0,0,0,90,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Amani'shi Warbringer - At 19% HP - Set Bytes1 0"),
(23580,0,2,0,61,0,100,5,0,0,0,0,19,134217728,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Amani'shi Warbringer - At 19% HP - Remove unit_flag 134217728"),
(23580,0,3,0,0,0,100,4,0,0,12000,12000,11,43273,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Amani'shi Warbringer - In Combat - Cast Cleave"),
(23580,0,4,0,0,0,100,4,5000,5000,20000,20000,11,42496,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Amani'shi Warbringer - In Combat - Cast Furious Roar"),
(23580,0,5,0,2,0,100,5,0,30,0,0,11,40743,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Amani'shi Warbringer - At 30% HP - Cast Frenzy");