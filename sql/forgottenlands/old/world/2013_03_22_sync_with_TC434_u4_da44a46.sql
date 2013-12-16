-- Correct HP & Mana
UPDATE `creature_template` SET `exp`=3 WHERE `entry` IN (45439, 45979, 53488, 54123, 54431, 54432, 54433, 54445, 54474, 54476, 54486, 54488, 54489, 54496, 54507, 54508, 54511, 54512, 54517, 54542, 54543, 54544, 54550, 54552, 54553, 54556, 54639, 54687, 54688, 54690, 54691, 54693, 54699, 54700, 54701, 54751, 54867, 54920, 54923, 54928, 54945, 55091, 57864);

-- Set "Trigger" flag to few creatures
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry` IN (54496, 54550, 54751, 54867, 54945, 55091);

-- Set "Flying" mode to few creatures
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (54432, 54517, 54945, 57864);

-- End Time - Heroic only
UPDATE `creature` SET `spawnMask`=2 WHERE `map`=938;
UPDATE `gameobject` SET `spawnMask`=2 WHERE `map`=938;

-- Deleted some duplicated spawns in End time, Kezan, Zul'Aman & Stonecore
DELETE FROM `creature` WHERE `guid` IN (138249, 221133, 221136, 221139, 221141, 221145, 221734, 221899, 222001, 222091, 222092, 222094, 222115, 222159, 222413, 222414, 222834, 222835, 222850, 222865, 222867, 222868, 222869, 222872, 222884, 223227, 223228, 223229, 223230, 223494, 223497, 223498, 223500, 223501, 223503, 223504, 223505, 223506, 223507, 223508, 223509, 223510, 223511, 223512, 223513, 223514, 223515, 223516, 223517, 223518, 223519, 223520, 223521, 223522, 223523, 223524, 223525, 223526, 223527, 223528, 223529, 223530, 223531, 223532, 223533, 223534, 223535, 223536, 223537, 223538, 223539, 223540, 223559, 223579, 223645, 223647, 223653, 223674, 223675, 223689, 223692, 223693, 223710, 223711, 223742, 223743); 
-- Delete wrongly inserted spell linked spell of Scion of Eternity - "Arcane Barrage".
-- It should be handled in the original caster spell with spellscript effect.
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=56397 AND `spell_effect`=63934 AND`type`=1;

-- Update flags in creature for Malygos since differ from these in creature_template
UPDATE `creature` SET `unit_flags`=320,`dynamicflags`=8 WHERE `id`=28859;
-- Issue 9311
-- Add Missing Sunreaver Guardian Mage inside Sunreaver Tavern (Thx Aokromes) 
SET @CGUID := 128; -- 4.x
DELETE FROM `creature` WHERE `guid`=@CGUID;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(@CGUID,29255,571,1,1,5900.299,505.75,641.6531,4.171337,120,0,0);

-- Issue 9322: 
-- fix SAI to make the quest Mission: The Abyssal Shelf (10162) Horde completable (thx Kirkhammett) 
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=19273;
DELETE FROM `smart_scripts` WHERE `entryorguid`=19273;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(19273,0,0,0,19, 0,100,0,10162,0,0,0,15,10162,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Commander To''arch - On Quest Accept - Call Areaexplored');
-- Issue 9250
-- A Worthy Weapon (thx Durotar)
UPDATE `creature_template` SET `InhabitType`=4, `hoverheight`=1065353216, `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=33273;
-- Set visual effect: sitting
DELETE FROM `creature_template_addon` WHERE `entry`=33273;
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`,`emote`) VALUES (33273,1,1,0);
-- Winter Hyacinth (item 45000) Send Script Event (20990) by right-click
DELETE FROM `event_scripts` WHERE `id`=20990;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES
(20990, 0, 10, 33273, 42000, 4602.977, -1600.141, 156.7834, 0.7504916);
-- TEMP Drak'Mar Offering Ring
SET @ObjectGuid := 547; -- 4.x
DELETE FROM `gameobject` WHERE `id`=300009;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@ObjectGuid+0,300009,571,1,1, 4606.72, -1606.91, 156.659, 1.62734,0.0,0.0, 0.726811, 0.686837,300,0,1),
(@ObjectGuid+1,300009,571,1,1, 4596.78, -1606.69, 156.659, 1.5488,0.0,0.0, 0.699286, 0.714842,300,0,1),
(@ObjectGuid+2,300009,571,1,1, 4597.1, -1594.08, 156.658, 1.53702,0.0,0.0, 0.695063, 0.718949,300,0,1),
(@ObjectGuid+3,300009,571,1,1, 4608.33, -1592.98, 156.658, 0.162569,0.0,0.0, 0.0811951, 0.996698,300,0,1),
(@ObjectGuid+4,300009,571,1,1, 4602.78, -1600.05, 156.658, 4.08564,0.0,0.0, 0.890651, -0.454688,300,0,1);
-- creature_text
DELETE FROM `creature_text` WHERE `entry`=33273 AND `groupid` BETWEEN 0 AND 3;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(33273,0,0, 'Are those winter hyacinths? For me?',12,0,100,6,0,0, 'Maiden of Drak''Mar'),
(33273,1,0, 'It''s been so long since a traveler has come here bearing flowers.',12,0,100,1,0,0, 'Maiden of Drak''Mar'),
(33273,2,0, 'The lake has been too lonely these past years. The travelers stopped coming and evil came to these waters.',12,0,100,1,0,0, 'Maiden of Drak''Mar'),
(33273,3,0, 'Your gift is a rare kindness, traveler. Please take this blade with my gratitude. Long ago, another traveler left it here, but I have little use for it.',12,0,100,1,0,0, 'Maiden of Drak''Mar');
-- SAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=33273 AND `source_type`=0 AND `id`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33273*100 AND `source_type`=9 AND `id` BETWEEN 0 AND 6;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33273,0,0,0,54,0,100,0,0,0,0,0,80,33273*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Maiden of DrakMar - On spawn - Run script'),
(33273*100,9,0,0,0,0,100,0,0,0,0,0,50,194239,42000,0,0,0,0,8,0,0,0,4602.977,-1600.141,156.7834,0, 'Maiden of DrakMar - On script - Summon GO DrakMar Lily Pad'),
(33273*100,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Maiden of DrakMar - On script - Say 0'),
(33273*100,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Maiden of DrakMar - On script - Say 1'),
(33273*100,9,3,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Maiden of DrakMar - On script - Say 2'),
(33273*100,9,4,0,0,0,100,0,7000,7000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Maiden of DrakMar - On script - Say 3'),
(33273*100,9,5,0,0,0,100,0,0,0,0,0,50,194238,20000,0,0,0,0,8,0,0,0,4603.351,-1599.288,156.8822,2.234018, 'Maiden of DrakMar - On script - Summon GO Blade of DrakMar');
SET @GUID := 129; -- 4.x
SET @PATH := @GUID*10;
DELETE FROM `creature` where `id`=18686;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES 
(@GUID,18686,530,1,1,0,0,-2847.327,3195.10722,7.4167,.0910940,300,0,0,9144,13525,2,0,0,0);
-- Pathing Data
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`) VALUES 
(@PATH,1,-2843.86,3205.97,5.45323,0,0,0,0,100),
(@PATH,2,-2829.24,3218.81,9.59048,0,0,0,0,100),
(@PATH,3,-2814.12,3235.72,10.1736,0,0,0,0,100),
(@PATH,4,-2792.54,3259.91,5.91885,0,0,0,0,100),
(@PATH,5,-2774.46,3280.17,2.8828,0,0,0,0,100),
(@PATH,6,-2751.21,3306.24,0.199384,0,0,0,0,100),
(@PATH,7,-2728.55,3318.21,-0.833018,0,0,0,0,100),
(@PATH,8,-2719.59,3331.35,-1.04936,0,0,0,0,100),
(@PATH,9,-2708.94,3349.74,-0.819842,0,0,0,0,100),
(@PATH,10,-2694.72,3374.29,-0.156626,0,0,0,0,100),
(@PATH,11,-2685.08,3390.93,0.328583,0,0,0,0,100),
(@PATH,12,-2675.69,3407.16,0.474826,0,0,0,0,100),
(@PATH,13,-2669.68,3416.29,0.743526,0,0,0,0,100),
(@PATH,14,-2660.96,3425.20,0.805554,0,0,0,0,100),
(@PATH,15,-2654.25,3430.82,0.77502,0,0,0,0,100),
(@PATH,16,-2645.46,3437.83,1.28666,0,0,0,0,100),
(@PATH,17,-2639.59,3442.50,3.25542,0,0,0,0,100),
(@PATH,18,-2630.71,3449.41,1.86245,0,0,0,0,100),
(@PATH,19,-2621.54,3456.21,0.653284,0,0,0,0,100),
(@PATH,20,-2617.41,3460.51,0.593326,0,0,0,0,100),
(@PATH,21,-2611.50,3471.52,0.520041,0,0,0,0,100),
(@PATH,22,-2610.04,3475.69,0.53993,0,0,0,0,100),
(@PATH,23,-2606.90,3480.85,0.492544,0,0,0,0,100),
(@PATH,24,-2590.41,3502.84,0.225892,0,0,0,0,100),
(@PATH,25,-2582.03,3512.00,0.101641,0,0,0,0,100),
(@PATH,26,-2566.36,3522.06,0.189451,0,0,0,0,100),
(@PATH,27,-2534.38,3523.07,1.3404,0,0,0,0,100),
(@PATH,28,-2523.33,3527.83,1.66667,0,0,0,0,100),
(@PATH,29,-2516.31,3533.95,1.65006,0,0,0,0,100),
(@PATH,30,-2507.47,3544.67,1.56155,0,0,0,0,100),
(@PATH,31,-2491.83,3549.68,1.43199,0,0,0,0,100),
(@PATH,32,-2471.56,3551.98,1.23732,0,0,0,0,100),
(@PATH,33,-2463.14,3555.66,1.03546,0,0,0,0,100),
(@PATH,34,-2456.30,3555.25,0.942503,0,0,0,0,100),
(@PATH,35,-2452.53,3537.02,0.402467,0,0,0,0,100),
(@PATH,36,-2446.32,3528.59,-0.236494,0,0,0,0,100),
(@PATH,37,-2462.93,3549.41,1.08819,0,0,0,0,100),
(@PATH,38,-2460.92,3557.50,1.00403,0,0,0,0,100),
(@PATH,39,-2425.49,3596.20,0.274173,0,0,0,0,100),
(@PATH,40,-2405.20,3613.88,0.217946,0,0,0,0,100),
(@PATH,41,-2391.31,3632.83,0.792431,0,0,0,0,100),
(@PATH,42,-2383.97,3658.54,0.99065,0,0,0,0,100),
(@PATH,43,-2351.54,3700.72,0.420721,0,0,0,0,100),
(@PATH,44,-2314.59,3729.83,0.0297019,0,0,0,0,100),
(@PATH,45,-2296.57,3749.89,0.363868,0,0,0,0,100),
(@PATH,46,-2285.44,3767.70,0.291327,0,0,0,0,100),
(@PATH,47,-2279.30,3787.95,0.314858,0,0,0,0,100),
(@PATH,48,-2276.30,3799.32,0.521091,0,0,0,0,100),
(@PATH,49,-2254.61,3831.13,2.70024,0,0,0,0,100),
(@PATH,50,-2251.75,3848.92,5.15061,0,0,0,0,100),
(@PATH,51,-2249.52,3869.55,2.39354,0,0,0,0,100),
(@PATH,52,-2244.66,3893.46,1.58335,0,0,0,0,100),
(@PATH,53,-2239.88,3904.19,1.10899,0,0,0,0,100),
(@PATH,54,-2224.28,3927.45,0.706091,0,0,0,0,100),
(@PATH,55,-2187.45,3958.22,0.921813,0,0,0,0,100),
(@PATH,56,-2175.09,3978.98,0.929392,0,0,0,0,100),
(@PATH,57,-2171.14,4011.04,0.450247,0,0,0,0,100),
(@PATH,58,-2175.93,4027.88,0.519539,0,0,0,0,100),
(@PATH,59,-2187.96,4064.43,1.42810,0,0,0,0,100),
(@PATH,60,-2166.44,4102.49,4.27243,0,0,0,0,100), -- Had guid as action_id
(@PATH,61,-1700.15,3993.57,55.6859,0,0,0,0,100),
(@PATH,62,-1710.59,4034.97,60.6101,0,0,0,0,100),
(@PATH,63,-1719.95,4059.83,62.7452,0,0,0,0,100),
(@PATH,64,-1718.67,4104.32,64.3796,0,0,0,0,100),
(@PATH,65,-1743.77,4151.60,62.3929,0,0,0,0,100),
(@PATH,66,-1754.61,4173.29,58.3691,0,0,0,0,100),
(@PATH,67,-1788.41,4206.51,44.1839,0,0,0,0,100),
(@PATH,68,-1818.93,4214.12,33.1137,0,0,0,0,100),
(@PATH,69,-1841.51,4228.10,22.0741,0,0,0,0,100),
(@PATH,70,-1871.54,4263.50,8.22153,0,0,0,0,100),
(@PATH,71,-1891.00,4295.91,3.23019,0,0,0,0,100),
(@PATH,72,-1911.96,4351.49,1.66825,0,0,0,0,100),
(@PATH,73,-1910.12,4389.42,1.77078,0,0,0,0,100),
(@PATH,74,-1907.67,4417.31,2.99456,0,0,0,0,100),
(@PATH,75,-1917.63,4452.07,6.27493,0,0,0,0,100),
(@PATH,76,-1929.40,4473.47,8.90937,0,0,0,0,100),
(@PATH,77,-1942.74,4489.67,11.1029,0,0,0,0,100),
(@PATH,78,-1958.47,4508.45,12.7432,0,0,0,0,100),
(@PATH,79,-1975.36,4519.94,13.1616,0,0,0,0,100),
(@PATH,80,-1982.19,4524.49,13.0993,0,0,0,0,100),
(@PATH,81,-1983.38,4507.03,12.7591,0,0,0,0,100),
(@PATH,82,-1984.02,4496.55,11.9535,0,0,0,0,100),
(@PATH,83,-1984.87,4482.57,11.1499,0,0,0,0,100),
(@PATH,84,-1978.92,4509.87,12.6695,0,0,0,0,100),
(@PATH,85,-1978.12,4527.35,13.36,0,0,0,0,100),
(@PATH,86,-1967.33,4546.79,12.8741,0,0,0,0,100),
(@PATH,87,-1953.04,4566.47,10.1123,0,0,0,0,100),
(@PATH,88,-1946.50,4582.91,7.44598,0,0,0,0,100),
(@PATH,89,-1948.30,4599.58,4.61956,0,0,0,0,100),
(@PATH,90,-1955.08,4637.48,-0.0588505,0,0,0,0,100),
(@PATH,91,-1943.63,4685.04,-2.18987,0,0,0,0,100),
(@PATH,92,-1941.99,4705.25,-2.67768,0,0,0,0,100),
(@PATH,93,-1945.22,4727.47,-3.22917,0,0,0,0,100),
(@PATH,94,-1951.89,4748.79,-2.9388,0,0,0,0,100),
(@PATH,95,-1957.77,4773.70,-1.42409,0,0,0,0,100),
(@PATH,96,-1957.36,4798.11,-0.0807409,0,0,0,0,100),
(@PATH,97,-1944.66,4829.17,0.67,0,0,0,0,100),
(@PATH,98,-1929.68,4851.09,1.64973,0,0,0,0,100),
(@PATH,99,-1918.23,4883.89,2.11937,0,0,0,0,100),
(@PATH,100,-1901.18,4906.49,-1.12705,0,0,0,0,100),
(@PATH,101,-1881.87,4926.69,-9.60835,0,0,0,0,100),
(@PATH,102,-1870.05,4946.21,-17.0149,0,0,0,0,100),
(@PATH,103,-1866.49,4960.25,-20.2899,0,0,0,0,100),
(@PATH,104,-1860.94,5033.3,-26.0991,0,0,0,0,100),
(@PATH,105,-1869.80,4962.46,-20.3781,0,0,0,0,100),
(@PATH,106,-1884.86,4924.67,-8.30171,0,0,0,0,100),
(@PATH,107,-1904.83,4905.16,-0.202733,0,0,0,0,100),
(@PATH,108,-1922.67,4912.5,6.06643,0,0,0,0,100),
(@PATH,109,-1937.46,4934.99,14.8054,0,0,0,0,100),
(@PATH,110,-1953.22,4961.69,24.7149,0,0,0,0,100),
(@PATH,111,-1958.07,4992.99,30.1767,0,0,0,0,100),
(@PATH,112,-1958.74,5013.42,32.4293,0,0,0,0,100),
(@PATH,113,-1947.03,5042.52,25.2899,0,0,0,0,100),
(@PATH,114,-1942.58,5058.03,19.5292,0,0,0,0,100),
(@PATH,115,-1963.32,5083.08,11.1075,0,0,0,0,100),
(@PATH,116,-1984.50,5100.08,7.82778,0,0,0,0,100),
(@PATH,117,-2004.59,5114.07,8.26657,0,0,0,0,100),
(@PATH,118,-2029.48,5123.26,8.48839,0,0,0,0,100),
(@PATH,119,-2055.94,5125.38,7.48301,0,0,0,0,100),
(@PATH,120,-2089.33,5115.44,3.14184,0,0,0,0,100),
(@PATH,121,-2112.53,5107.32,-2.40737,0,0,0,0,100),
(@PATH,122,-2137.40,5108.51,-11.5709,0,0,0,0,100),
(@PATH,123,-2155.69,5115.97,-18.1534,0,0,0,0,100),
(@PATH,124,-2170.60,5125.13,-21.2824,0,0,0,0,100),
(@PATH,125,-2182.81,5131.87,-21.667,0,0,0,0,100),
(@PATH,126,-2198.88,5138.77,-21.2323,0,0,0,0,100),
(@PATH,127,-2219.62,5144.57,-19.6848,0,0,0,0,100),
(@PATH,128,-2238.57,5146.29,-17.4706,0,0,0,0,100),
(@PATH,129,-2266.45,5144.26,-13.0598,0,0,0,0,100),
(@PATH,130,-2290.86,5142.23,-9.17377,0,0,0,0,100),
(@PATH,131,-2308.35,5142.09,-7.11532,0,0,0,0,100),
(@PATH,132,-2333.72,5149.44,-5.0165,0,0,0,0,100),
(@PATH,133,-2365.45,5157.88,-2.8501,0,0,0,0,100),
(@PATH,134,-2390.26,5158.22,-1.19618,0,0,0,0,100),
(@PATH,135,-2417.84,5153.35,0.775549,0,0,0,0,100),
(@PATH,136,-2442.28,5142.04,3.53141,0,0,0,0,100),
(@PATH,137,-2469.81,5120.56,6.76948,0,0,0,0,100),
(@PATH,138,-2498.06,5115.06,7.87731,0,0,0,0,100),
(@PATH,139,-2532.85,5118.89,7.54034,0,0,0,0,100),
(@PATH,140,-2555.60,5120.59,7.69492,0,0,0,0,100), -- GUID+1 as action_id
(@PATH,141,-2843.86,3205.97,5.45323,0,0,0,0,100);
-- Assign Path
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`) VALUES 
(@GUID,@PATH);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `Id`=8345;
UPDATE `quest_template` SET `NextQuestId`=0 WHERE `Id`=8330;
-- The Admiral Revealed (12852) - http://www.wowhead.com/quest=12852
-- http://www.youtube.com/watch?v=I9doc1BVmA8
SET @WHIRLWIND       := 49807; -- Admiral's Whirlwind, AoE, used in phase 1
SET @STRIKE          := 57846; -- Admiral's Heroic Strike, cast on tank, used in phase 1
SET @CLEAVE          := 15284; -- Admiral's Cleave, cast in cone, used in phase 1
SET @TOUCH           := 60501; -- Selfcast on Mal'Ganis, heals him, used in phase 2
SET @SLEEP           := 53045; -- Mal'Ganis Sleep,Cast on random group member, used in phase 2
SET @BLAST           := 60500; -- Mal'Ganis Mind Blast, Cast on random group member, used in phase 2
SET @CARRION         := 60502; -- Mal'Ganis Carrion Swarm, Cast in cone, used in phase 2
SET @SHIELD          := 50161; -- Cast when Admiral on 50 %
SET @ITEMSPELL       := 31699; -- Spell to disable shield
SET @ADMIRAL         := 29621; -- Grand Admiral Westwind
SET @MALGANIS        := 29620; -- Dreadlord Mal'Ganis
SET @PORTAL          := 27731; -- Portal visual
SET @LEGION_TELEPORT := 35502; -- Mal'Ganis Legion Portal visual
SET @CREDIT_BUNNY    := 29627; -- Cute little flaming bunny
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (@CREDIT_BUNNY);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@CREDIT_BUNNY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`, `target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@CREDIT_BUNNY, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 75, @PORTAL, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Credit Bunny - Just Summoned - Cast Portal');
-- SAI for Grand Admiral Westwind
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry` IN (@ADMIRAL,@MALGANIS,@ADMIRAL*100);
DELETE FROM `smart_scripts` WHERE `entryorguid`IN (@ADMIRAL,@ADMIRAL*100) AND `source_type` IN (0,9);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MALGANIS AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`, `target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ADMIRAL, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 42, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On aggro - Set invicibility at 1 HP'),
(@ADMIRAL, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Link - Say line 0'),
(@ADMIRAL, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Link - Set phase 1'),
(@ADMIRAL, 0, 3, 4, 2, 0, 100, 1, 0, 50, 0, 0, 11, @SHIELD, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - At 50% HP - Cast Protection Sphere'),
(@ADMIRAL, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - Link - Say line 1'),
(@ADMIRAL, 0, 5, 6, 8, 0, 100, 0, @ITEMSPELL, 0, 0, 0, 28, @SHIELD, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On spell hit - Remove aura'),
(@ADMIRAL, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - Link - Say line 2'),
(@ADMIRAL, 0, 7, 8, 2, 0, 100, 1, 0, 30, 0, 0, 3, @MALGANIS, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - At 30% HP - Morph to Dreadlord Mal''Ganis'),
(@ADMIRAL, 0, 8, 9, 61, 0, 100, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Link - Set phase 2'),
(@ADMIRAL, 0, 9,10, 61, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - Link - Say line 3'),
(@ADMIRAL, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Grand Admiral Westwind - Link - Sheath'),
(@ADMIRAL, 0, 11, 0, 2, 0, 100, 1, 0, 15, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - At 15% HP - Say line 4'),
(@ADMIRAL, 0, 12, 0, 1, 0, 100, 0, 0, 0, 0, 0, 3, @ADMIRAL, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On evade - Restore model'),
(@ADMIRAL, 0, 13, 14, 2, 0, 100, 1, 1, 1, 0, 0, 18, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On 1 hp - Set unit_flags'),
(@ADMIRAL, 0, 14, 15, 61, 0, 100, 1, 0, 0, 0, 0, 12, @CREDIT_BUNNY, 1, 19000, 0, 0, 0, 8, 0, 0, 0, 7494.893066, 4871.533203, -12.655286, 1.376, 'Grand Admiral Westwind - On Link - Summon Npc'),
(@ADMIRAL, 0, 15, 16, 61, 0, 100, 1, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Link - Stop Combat/Attack Attack State'),
(@ADMIRAL, 0, 16, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, @ADMIRAL*100, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Link - Start timed script'),
(@ADMIRAL*100, 9, 0, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 22, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On script - Set phase 3'),
(@ADMIRAL*100, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 7494.788, 4872.567, -12.72154, 0, 'Grand Admiral Westwind - On Script - Move to Pos'),
(@ADMIRAL*100, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Script - Say line 6'),
(@ADMIRAL*100, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, @LEGION_TELEPORT, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Script - Cast spell on self'),
(@ADMIRAL*100, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 33, @CREDIT_BUNNY, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Script - Give quest credit'),
(@ADMIRAL*100, 9, 5, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 41, 3500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Script - Despawn'),
(@ADMIRAL, 0, 17, 0, 11, 0, 100, 0, 0, 0, 0, 0, 19, 33554434, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Respawn - Unset unit_flags'),
(@ADMIRAL, 0, 18, 0, 0, 1, 100, 0, 15000, 16000, 16000, 16000, 11, @WHIRLWIND, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 1 - Cast Whirlwind'),
(@ADMIRAL, 0, 19, 0, 0, 1, 100, 0, 6000, 7000, 6000, 7000, 11, @STRIKE, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 1 - Cast Heroic Strike'),
(@ADMIRAL, 0, 20, 0, 0, 2, 100, 0, 15000, 16000, 15000, 16000, 11, @SLEEP, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 2 - Cast Sleep'),
(@ADMIRAL, 0, 21, 0, 0, 2, 100, 0, 6000, 7000, 6000, 7000, 11, @TOUCH, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 2- Cast Vampiric Touch'),
(@ADMIRAL, 0, 22, 0, 0, 1, 100, 0, 13000, 13500, 13000, 13500, 11, @CLEAVE, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 1 - Cast Cleave'),
(@ADMIRAL, 0, 23, 0, 0, 2, 100, 0, 8000, 9000, 8000, 9000, 11, @CARRION, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 2 - Cast Carrion Swarm'),
(@ADMIRAL, 0, 24, 0, 0, 2, 100, 0, 18000, 19000, 18000, 19000, 11, @BLAST, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - In combat Phase 2 - Cast Mind Blast'),
(@ADMIRAL, 0, 25, 0, 25, 0, 100, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Grand Admiral Westwind - On Reset - Allow Attack State');
/*
Sound ID's
14429 Final speech - When he uses portal
14428 2% HP - When he becomes immune
14427 15 % - When he rages
14426 30% HP - When he morphs
14207 Sphere removed - When Item spell is used on him
14205 Sphere cast - When he casts sphere on self
14201 Beginning of combat - When he aggros
*/
-- Sniffed text with sounds
DELETE FROM `creature_text` WHERE `entry` IN (@ADMIRAL,@MALGANIS);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ADMIRAL,0,0, 'How did you find me? Did Landgren tell?',12,0,100,0,0,14201, 'Grand Admiral Westwind'),
(@ADMIRAL,1,0, 'You thought I would just let you kill me?',12,0,100,0,0,14205, 'Grand Admiral Westwind'),
(@ADMIRAL,2,0, 'WHAT?! No matter. Even without my sphere, I will crush you! Behold my true identity and despair!',14,0,100,0,0,14207, 'Grand Admiral Westwind'),
(@ADMIRAL,3,0, 'Gah! I spent too much time in that weak little shell.',14,0,100,0,0,14426, 'Grand Admiral Westwind'),
(@ADMIRAL,4,0, 'Kirel narak! I am Mal''Ganis. I AM ETERNAL!',14,0,100,0,0,14427, 'Grand Admiral Westwind'),
(@ADMIRAL,5,0, 'ENOUGH! I waste my time here. I must gather my strength on the homeworld.',14,0,100,0,0,14428, 'Grand Admiral Westwind'),
(@ADMIRAL,6,0, 'You''ll never defeat the Lich King without my forces. I''ll have my revenge... on him AND you!',14,0,100,0,0,14429, 'Grand Admiral Westwind');
-- ----------------------------
-- Table structure for `player_factionchange_quests`
-- ----------------------------
DROP TABLE IF EXISTS `player_factionchange_quests`;
CREATE TABLE `player_factionchange_quests` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`),
  UNIQUE INDEX `alliance_uniq` (`alliance_id`),
  UNIQUE INDEX `horde_uniq` (`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DELETE FROM `player_factionchange_quests` WHERE `alliance_id` IN (9524, 8114, 7168, 7169, 7170, 7171, 7172, 8115, 8311, 8960, 8860, 8997, 9520, 9522, 9587, 9869, 9933, 9938, 9940, 9982, 9994, 9996, 10005, 10014, 10033, 10035, 10038, 10040, 10042, 10048, 10051, 10053, 10054, 10055, 10056, 10057, 10076, 10078, 10080, 10083, 10084, 10115, 10116, 10140, 10141, 10122, 10142, 10126, 10145, 10128, 10146, 10130, 10131, 10147, 10148, 10137, 10138, 10139, 10163, 10394, 10397, 10395, 10443, 10444, 10476, 10562, 10563, 10564, 10572, 10582, 10583, 10585, 10586, 10589, 10606, 10612, 10621, 10626, 10662, 10680, 10744, 10772, 10773, 10754, 10762, 10763, 10764, 10759, 10774, 10766, 10775, 10776, 10863, 10869, 10962, 11002, 11117, 11122, 11123, 11150, 11185, 11242, 11302, 11346, 11348, 11349, 11355, 11358, 11359, 11321, 11131, 12135, 11400, 11486, 11502, 11657, 11713, 11704, 11731, 11882, 11921, 11924, 11986, 11993, 12022, 12105, 12129, 12130, 12131, 12133, 12138, 12142, 12143, 12146, 12153, 12161, 12183, 12184, 12185, 12219, 12220, 12222, 12223, 12246, 12247, 12249, 12248, 12250, 12255, 12278, 12464, 12323, 12416, 12417, 12418, 12460, 12479, 12491, 12854, 12858, 12860, 12862, 12870, 12872, 12885, 13186, 13222, 13188, 13226, 13395, 13387, 13388, 13389, 13390, 13391, 13392, 13284, 13393, 13394, 13332, 13334, 13309, 13337, 13338, 13339, 13335, 13336, 13341, 13396, 13397, 13398, 13399, 13400, 13401, 13402, 13403, 13380, 13381, 13382, 13383, 13408, 13410, 13415, 13418, 13480, 13484, 13633, 13625, 13671, 13672, 13679, 13686, 13828, 13835, 13837, 14022, 14023, 14024, 14028, 14030, 14033, 14035, 14048, 14051, 14053, 14054, 14055, 14096, 14111, 20438, 20439, 24498, 24499, 24500, 24510, 24535, 24656, 24657, 24683, 24710, 24711, 24655, 24804, 24848, 25055, 25180, 25253, 25282, 25290, 25414);
INSERT INTO `player_factionchange_quests` (`alliance_id`, `horde_id`) VALUES
(9524, 9525),
(8114, 8121),
(7168, 7163),
(7169, 7164),
(7170, 7165),
(7171, 7166),
(7172, 7167),
(8115, 8122),
(8311, 8312),
(8960, 9032),
(8860, 8861),
(8997, 8998),
(9520, 9535),
(9522, 9536),
(9587, 9588),
(9869, 9870),
(9933, 9934),
(9938, 9937),
(9940, 9939),
(9982, 9983),
(9994, 9995),
(9996, 9997),
(10005, 10006),
(10014, 10015),
(10033, 10034),
(10035, 10036),
(10038, 10039),
(10040, 10041),
(10042, 10043),
(10048, 10049),
(10051, 10052),
(10053, 10059),
(10054, 10060),
(10055, 10086),
(10056, 10158),
(10057, 10062),
(10076, 10074),
(10078, 10087),
(10080, 10089),
(10083, 10090),
(10084, 10092),
(10115, 10118),
(10116, 10117),
(10140, 10120),
(10141, 10121),
(10122, 10150),
(10142, 10123),
(10126, 10151),
(10145, 10127),
(10128, 10153),
(10146, 10129),
(10130, 10152),
(10131, 10154),
(10147, 10133),
(10148, 10135),
(10137, 10155),
(10138, 10156),
(10139, 10157),
(10163, 10162),
(10394, 10390),
(10397, 10392),
(10395, 10393),
(10443, 10442),
(10444, 10448),
(10476, 10479),
(10562, 10595),
(10563, 10596),
(10564, 10598),
(10572, 10597),
(10582, 10600),
(10583, 10601),
(10585, 10602),
(10586, 10603),
(10589, 10604),
(10606, 10611),
(10612, 10613),
(10621, 10623),
(10626, 10627),
(10662, 10663),
(10680, 10681),
(10744, 10745),
(10772, 10750),
(10773, 10751),
(10754, 10755),
(10762, 10756),
(10763, 10757),
(10764, 10758),
(10759, 10761),
(10774, 10765),
(10766, 10767),
(10775, 10768),
(10776, 10769),
(10863, 10862),
(10869, 10868),
(10962, 10963),
(11002, 11003),
(11117, 11431),
(11122, 11412),
(11123, 11124),
(11150, 11205),
(11185, 11186),
(11242, 11403),
(11302, 11312),
(11346, 11350),
(11348, 11352),
(11349, 11351),
(11355, 11365),
(11358, 11366),
(11359, 11367),
(11321, 11413),
(11131, 11219),
(12135, 12139),
(11400, 11419),
(11486, 11487),
(11502, 11503),
(11657, 11923),
(11713, 11684),
(11704, 11702),
(11731, 11922),
(11882, 11915),
(11921, 11926),
(11924, 11925),
(11986, 12026),
(11993, 12058),
(12022, 12191),
(12105, 12423),
(12129, 12165),
(12130, 12196),
(12131, 12197),
(12133, 12155),
(12138, 12198),
(12142, 12144),
(12143, 12145),
(12146, 12147),
(12153, 12199),
(12161, 12425),
(12183, 12201),
(12184, 12202),
(12185, 12203),
(12219, 12207),
(12220, 12213),
(12222, 12256),
(12223, 12257),
(12246, 12229),
(12247, 12231),
(12249, 12236),
(12248, 12241),
(12250, 12242),
(12255, 12259),
(12278, 12306),
(12464, 12285),
(12323, 12324),
(12416, 12448),
(12417, 12449),
(12418, 12450),
(12460, 12461),
(12479, 12480),
(12491, 12492),
(12854, 12895),
(12858, 12926),
(12860, 12927),
(12862, 13060),
(12870, 12882),
(12872, 12928),
(12885, 12929),
(13186, 13185),
(13222, 13223),
(13188, 13189),
(13226, 13227),
(13395, 13236),
(13387, 13259),
(13388, 13262),
(13389, 13263),
(13390, 13271),
(13391, 13275),
(13392, 13282),
(13284, 13301),
(13393, 13304),
(13394, 13305),
(13332, 13306),
(13334, 13307),
(13309, 13310),
(13337, 13312),
(13338, 13316),
(13339, 13328),
(13335, 13329),
(13336, 13330),
(13341, 13340),
(13396, 13348),
(13397, 13349),
(13398, 13359),
(13399, 13360),
(13400, 13361),
(13401, 13362),
(13402, 13363),
(13403, 13364),
(13380, 13373),
(13381, 13374),
(13382, 13376),
(13383, 13379),
(13408, 13409),
(13410, 13411),
(13415, 13416),
(13418, 13419),
(13480, 13479),
(13484, 13483),
(13633, 13634),
(13625, 13677),
(13671, 13676),
(13672, 13678),
(13679, 13680),
(13686, 13687),
(13828, 13829),
(13835, 13838),
(13837, 13839),
(14022, 14036),
(14023, 14037),
(14024, 14040),
(14028, 14041),
(14030, 14044),
(14033, 14043),
(14035, 14047),
(14048, 14061),
(14051, 14062),
(14053, 14059),
(14054, 14060),
(14055, 14058),
(14096, 14142),
(14111, 14100),
(20438, 24556),
(20439, 24451),
(24498, 24507),
(24499, 24511),
(24500, 24802),
(24510, 24506),
(24535, 24563),
(24656, 24541),
(24657, 24576),
(24683, 24682),
(24710, 24712),
(24711, 24713),
(24655, 24536),
(24804, 24805),
(24848, 24850),
(25055, 25092),
(25180, 25181),
(25253, 25228),
(25282, 25254),
(25290, 25288),
(25414, 25293);
-- Delete condition that can cause some damage reduction "spikes" leading to leaking damage,
-- or in simple language some delay can cause not applying.
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56438;
-- Delete condition that is already covered by spell attribute
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=58846;
SET @CGUID := 536; -- 4.x
SET @OGUID := 1769; -- 4.x

UPDATE `gameobject` SET `spawntimesecs`=120, `animprogress`=255 WHERE `id`=188464;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+21;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+00, 188464, 571, 1, 1, 4781.308, -4865.809, 26.53011, 0.8377575, 0, 0, 0.4067364, 0.9135455, 120, 255, 1),
(@OGUID+01, 188464, 571, 1, 1, 4753.355, -4830.314, 26.04058, 5.532695, 0, 0, -0.3665009, 0.9304177, 120, 255, 1),
(@OGUID+02, 188464, 571, 1, 1, 4758.613, -4824.151, 25.96103, 5.550147, 0, 0, -0.3583679, 0.9335805, 120, 255, 1),
(@OGUID+03, 188464, 571, 1, 1, 4764.173, -4818.161, 25.88273, 5.550147, 0, 0, -0.3583679, 0.9335805, 120, 255, 1),
(@OGUID+04, 188464, 571, 1, 1, 4785.614, -4793.256, 26.12138, 5.550147, 0, 0, -0.3583679, 0.9335805, 120, 255, 1),
(@OGUID+05, 188464, 571, 1, 1, 4848.127, -4827.709, 25.96146, 2.408554, 0, 0, 0.9335804, 0.358368, 120, 255, 1),
(@OGUID+06, 188464, 571, 1, 1, 4790.917, -4787.033, 26.19655, 5.550147, 0, 0, -0.3583679, 0.9335805, 120, 255, 1),
(@OGUID+07, 188464, 571, 1, 1, 4796.205, -4780.994, 26.19833, 5.567601, 0, 0, -0.3502073, 0.9366722, 120, 255, 1),
(@OGUID+08, 188464, 571, 1, 1, 4829.167, -4799.646, 25.96292, 3.961899, 0, 0, -0.9170599, 0.3987495, 120, 255, 1),
(@OGUID+09, 188464, 571, 1, 1, 4775.307, -4860.43, 26.52502, 0.8377575, 0, 0,  0.4067364, 0.9135455, 120, 255, 1),
(@OGUID+10, 188499, 571, 1, 1, 4783.06, -4870.042, 26.63436, 5.567601, 0, 0, -0.3502073, 0.9366722, 300, 255, 1),
(@OGUID+11, 188499, 571, 1, 1, 4776.997, -4864.7, 26.76528, 5.67232, 0, 0, -0.3007059, 0.9537169, 300, 255, 1),
(@OGUID+12, 188499, 571, 1, 1, 4804.492, -4880.459, 25.95016, 0.9250238, 0, 0, 0.4461975, 0.8949345, 300, 255, 1),
(@OGUID+13, 188499, 571, 1, 1, 4754.443, -4825.909, 26.1786, 4.01426, 0, 0, -0.9063072, 0.4226195, 300, 255, 1),
(@OGUID+14, 188499, 571, 1, 1, 4797.431, -4776.76, 26.2836, 3.979355, 0, 0, -0.9135447, 0.4067384, 300, 255, 1),
(@OGUID+15, 188499, 571, 1, 1, 4792.048, -4782.723, 26.41635, 4.049168, 0, 0, -0.8987932, 0.4383728, 300, 255, 1),
(@OGUID+16, 188499, 571, 1, 1, 4806.47, -4775.945, 26.30708, 2.373644, 0, 0,  0.9271832, 0.3746083, 300, 255, 1),
(@OGUID+17, 188499, 571, 1, 1, 4809.335, -4874.765, 26.06562, 0.8377575, 0, 0, 0.4067364, 0.9135455, 300, 255, 1),
(@OGUID+18, 188499, 571, 1, 1, 4819.935, -4862.525, 26.05573, 0.8203033, 0, 0,  0.3987484, 0.9170604, 300, 255, 1),
(@OGUID+19, 188499, 571, 1, 1, 4786.889, -4788.973, 26.3336, 4.049168, 0, 0, -0.8987932, 0.4383728, 300, 255, 1),
(@OGUID+20, 188499, 571, 1, 1, 4852.343, -4826.055, 26.06636, 0.8552105, 0, 0, 0.4146929, 0.9099615, 300, 255, 1),
(@OGUID+21, 188499, 571, 1, 1, 4845.617, -4811.589, 26.17898, 2.391098, 0, 0, 0.9304171, 0.3665025, 300, 255, 1);

DELETE FROM `creature` WHERE `id` IN (26811,26812);
DELETE FROM `creature` WHERE `guid` IN (113208,113209);
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+00 AND @CGUID+14;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+00, 26811, 571, 1, 1, 4733.245, -4857.637, 26.4931, 2.617994, 300, 5, 1),
(@CGUID+01, 26812, 571, 1, 1, 4796.549, -4846.317, 25.50747, 4.249843, 300, 5, 1),
(@CGUID+02, 26811, 571, 1, 1, 4766.232, -4820.333, 25.69218, 2.329675, 300, 5, 1),
(@CGUID+03, 26811, 571, 1, 1, 4823.353, -4839.751, 25.7641, 1.145746, 300, 5, 1),
(@CGUID+04, 26812, 571, 1, 1, 4797.967, -4783.413, 25.99624, 4.269053, 300, 5, 1),
(@CGUID+05, 26812, 571, 1, 1, 4759.746, -4835.385, 25.90628, 3.535823, 300, 5, 1),
(@CGUID+06, 26812, 571, 1, 1, 4782.295, -4858.29, 26.10907, 4.433136, 300, 5, 1),
(@CGUID+07, 26811, 571, 1, 1, 4795.084, -4869.773, 25.85341, 3.63068, 300, 5, 1),
(@CGUID+08, 26812, 571, 1, 1, 4758.876, -4857.517, 25.89942, 3.830702, 300, 5, 1),
(@CGUID+09, 26811, 571, 1, 1, 4809.717, -4858.999, 25.77467, 4.760717, 300, 5, 1),
(@CGUID+10, 26811, 571, 1, 1, 4801.294, -4802.357, 25.66738, 5.655887, 300, 5, 1),
(@CGUID+11, 26812, 571, 1, 1, 4831.968, -4810.053, 25.6752, 4.12599, 300, 5, 1),
(@CGUID+12, 26811, 571, 1, 1, 4845.415, -4821.253, 25.65237, 4.234284, 300, 5, 1),
(@CGUID+13, 26806, 571, 1, 1, 4668.349, -4849.098, 35.56351, 3.106686, 300, 0, 0),
(@CGUID+14, 26806, 571, 1, 1, 4669.264, -4869.123, 35.5635, 3.263766, 300, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (26591,26811,26812);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=188464;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26591,26811,26812) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=188464 AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=26812*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26591,0,0,0,38,0,100,0,0,1,0,0,11,47798,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Pacer Bunny - Drak Theron Exterior - On data set 0 1 - Spellcast Summon Mummy Remnants'),
(26811,0,0,1,8,0,100,0,47778,0,0,0,11,47795,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellhit Blow Snow - Spellcast Cold Cleanse'),
(26811,0,1,2,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellhit Blow Snow - Set event phase 1'),
(26811,0,2,3,61,0,100,0,0,0,0,0,18,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellhit Blow Snow - Set unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC, NOT_SELECTABLE'),
(26811,0,3,4,61,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellhit Blow Snow - Set run'),
(26811,0,4,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellhit Blow Snow - Stop combat movement'),
(26811,0,5,6,23,1,100,1,47795,0,0,0,69,1,0,0,0,0,0,20,188464,40,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellfade Cold Cleanse - Move to position Ancient Troll Mummy'),
(26811,0,6,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spellfade Cold Cleanse - Say line'),
(26811,0,7,0,34,0,100,0,0,1,0,0,80,26812*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On movement inform - Run script'),
(26811,0,8,0,11,0,100,0,0,0,0,0,91,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On spawn - Remove unit_field_bytes1 (sleep)'),
(26812,0,0,1,8,0,100,0,47778,0,0,0,11,47795,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellhit Blow Snow - Spellcast Cold Cleanse'),
(26812,0,1,2,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellhit Blow Snow - Set event phase 1'),
(26812,0,2,3,61,0,100,0,0,0,0,0,18,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellhit Blow Snow - Set unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC, NOT_SELECTABLE'),
(26812,0,3,4,61,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellhit Blow Snow - Set run'),
(26812,0,4,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellhit Blow Snow - Stop combat movement'),
(26812,0,5,6,23,1,100,1,47795,0,0,0,69,1,0,0,0,0,0,20,188464,40,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellfade Cold Cleanse - Move to position Ancient Troll Mummy'),
(26812,0,6,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spellfade Cold Cleanse - Say line'),
(26812,0,7,0,34,0,100,0,0,1,0,0,80,26812*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On movement inform - Run script'),
(26812,0,8,0,11,0,100,0,0,0,0,0,91,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On spawn - Remove unit_field_bytes1 (sleep)'),

(188464,1,0,0,38,0,100,0,0,1,0,0,99,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Troll Mummy - On data set 0 1 - Change state (deactivated)'),
(188464,1,1,0,70,0,100,0,2,0,0,0,70,120,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Troll Mummy - On state changed - Despawn'),

(26812*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,26591,5,0,0,0,0,0, 'Ancient Drakkari script - Turn to Pacer Bunny - Drak Theron Exterior'),
(26812*100,9,1,0,0,0,100,0,50,50,0,0,90,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari script - Set unit_field_bytes1 (sleep)'),
(26812*100,9,2,0,0,0,100,0,2000,2000,0,0,19,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari script - Remove unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC, NOT_SELECTABLE'),
(26812*100,9,3,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,26591,5,0,0,0,0,0, 'Ancient Drakkari script - Set data 0 1 Pacer Bunny - Drak Theron Exterior'),
(26812*100,9,4,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,20,188464,5,0,0,0,0,0, 'Ancient Drakkari script - Set data 0 1 Ancient Troll Mummy'),
(26812*100,9,5,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari script - Despawn');

DELETE FROM `creature_text` WHERE `entry` IN (26811,26812);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26811,0,0,'I could sleep forever, mon....',12,0,100,0,0,0,'Ancient Drakkari Warmonger'),
(26811,0,1,'Finally, I can be restin''...',12,0,100,0,0,0,'Ancient Drakkari Warmonger'),
(26811,0,2,'Free at last, mon.',12,0,100,0,0,0,'Ancient Drakkari Warmonger'),
(26811,0,3,'Where''s mah mummy?',12,0,100,0,0,0,'Ancient Drakkari Warmonger'),
(26812,0,0,'I could sleep forever, mon....',12,0,100,0,0,0,'Ancient Drakkari Soothsayer'),
(26812,0,1,'Finally, I can be restin''...',12,0,100,0,0,0,'Ancient Drakkari Soothsayer'),
(26812,0,2,'Free at last, mon.',12,0,100,0,0,0,'Ancient Drakkari Soothsayer'),
(26812,0,3,'Where''s mah mummy?',12,0,100,0,0,0,'Ancient Drakkari Soothsayer');
-- Fix quests Borrowed Technology, The Solution Solution /Daily/, Volatility, Volatility /Daily/
-- thanks to genjush for corrections on wrong quest ids
SET @Skytalon := 31583; -- Frostbrood Skytalon
SET @Decoy := 31578; -- Armored Decoy
SET @QuestCredit := 59329; -- Fake Soldier Kill Credit
SET @Stun := 59292; -- Freeze animation to look like Decoy
SET @Explosion := 59335; -- The spell that should kill Skytalon and Decoy
SET @Summon := 59303; -- Summon Skyatalon
SET @Immolation := 54690; -- Skytalon burning animation spell
SET @Grab := 59318;
SET @Bunny := 31630;
SET @PingBunny := 59375; -- Skytalon cast on accessory bunny to tell it to explode after 6 seconds
SET @Script := @Bunny * 100; -- Explosion bunny timed action list

-- Set inhabit type only 4 to Explosion Bunny that is a vehicle accessory of the Skytalon, otherwise it falls and add "Smart_AI"
UPDATE `creature_template` SET `InhabitType`=4,`AIName`='SmartAI',`flags_extra`=flags_extra|128 WHERE `entry`=@Bunny;
UPDATE `creature_template` SET `unit_flags`=unit_flags|0x00000100|0x00008000,`faction_A`=974,`faction_H`=974,`vehicleId`=279,`InhabitType`=4,`AIName`='',`ScriptName`='npc_frostbrood_skytalon',`HoverHeight`=5 WHERE `entry`=@Skytalon;
UPDATE `creature_template` SET `unit_flags`=unit_flags|0x00000100|0x00008000,`faction_A`=190,`faction_H`=190,`AIName`='SmartAI' WHERE `entry`=@Decoy;

-- Add missing equipment
DELETE FROM `creature_equip_template` WHERE `entry`=@Decoy;
INSERT INTO `creature_equip_template` (`entry`,`id`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(@Decoy,1,21573,0,0); -- Armored Decoy -> Monster - Sword, 1H Alliance PvP

-- Add creature_addon data
DELETE FROM `creature_template_addon` WHERE `entry`=@Skytalon;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(@Skytalon,0,0,50331648,1,0, '60534');

-- Insert spell_script names
DELETE FROM `spell_script_names` WHERE `spell_id` IN (@Grab,@Summon);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(@Grab, 'spell_q13291_q13292_q13239_q13261_frostbrood_skytalon_grab_decoy'),
(@Summon, 'spell_q13291_q13292_q13239_q13261_armored_decoy_summon_skytalon');

-- Quests relations
UPDATE `quest_template` SET `PrevQuestId`=13290,`NextQuestId`=13383 WHERE `id`=13291; -- Borrowed Technology
UPDATE `quest_template` SET `PrevQuestId`=13291,`NextQuestId`=0 WHERE `id`=13292; -- The Solution Solution /Daily/
UPDATE `quest_template` SET `PrevQuestId`=13238,`NextQuestId`=13379 WHERE `id`=13239; -- Volatility
UPDATE `quest_template` SET `PrevQuestId`=13329,`NextQuestId`=0 WHERE `id`=13261; -- Volatiliy /Daily/

-- Add SAI support for Explosion bunny and Decoy
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@Bunny,@Decoy);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@Script;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Bunny,0,0,0,8,0,100,0,@PingBunny,0,0,0,80,@Script,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Explosion Bunny - On hit by ping bunny - Start timed action list'),
(@Script,9,0,0,0,0,100,0,6000,6000,0,0,11,@Explosion,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Explosion Bunny - Action 0 - Cast explosion on self'),
(@Decoy,0,0,1,54,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Armored Decoy - On just summoned - Store invoker /since target summoner fails/'),
(@Decoy,0,1,2,61,0,100,0,0,0,0,0,11,@Stun,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Armored Decoy - Linked - Cast Freeze animation on self'),
(@Decoy,0,2,0,61,0,100,0,0,0,0,0,11,@Summon,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Armored Decoy - Linked - Cast summon Skytalon behind'),
(@Decoy,0,3,0,8,0,100,0,@Explosion,0,0,0,11,@QuestCredit,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Armored Decoy - On hit by explosion - Cast kill credit to stored target');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@Explosion,@PingBunny);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@Explosion,0,0,31,0,3,@Decoy,0,0,0,0,'', 'Explosion Bunny can hit Armored Decoy'),
(13,1,@Explosion,0,1,31,0,3,@Skytalon,0,0,0,0,'', 'Explosion Bunny can hit Skytalon'),
(13,1,@PingBunny,0,0,31,0,3,@Bunny,0,0,0,0,'', 'Ping Bunny can hit only Explosion Bunny');
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (26811,26812); 4.x
DELETE FROM `pool_creature` WHERE `pool_entry`=1077;
DELETE FROM `pool_template` WHERE `entry`=1077;
-- 4.x - 15595 wdbverified
-- Update some gameobject data that is correct in WDB, but parsed wrong for some reason
-- UPDATE `gameobject_template` SET `faction`=35,`data17`=1,`data18`=0 WHERE `entry`=193908;
DELETE FROM `command` WHERE `name` IN
("deserter instance add",
"deserter instance remove",
"deserter bg add",
"deserter bg remove");

INSERT INTO `command` (`name`, `security`, `help`) VALUES
("deserter instance add", 3, "Syntax: .deserter instance add $time \n\n Adds the instance deserter debuff to your target with $time duration."),
("deserter instance remove", 3, "Syntax: .deserter instance remove \n\n Removes the instance deserter debuff from your target."),
("deserter bg add", 3, "Syntax: .deserter bg add $time \n\n Adds the bg deserter debuff to your target with $time duration."),
("deserter bg remove", 3, "Syntax: .deserter bg remove \n\n Removes the bg deserter debuff from your target.");
UPDATE `trinity_string` SET `content_default`='Map: %u (%s) Zone: %u (%s) Area: %u (%s) Phase: %u
X: %f Y: %f Z: %f Orientation: %f
grid[%u,%u]cell[%u,%u] InstanceID: %u
 ZoneX: %f ZoneY: %f
GroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u MMap: %u)' WHERE `entry`=101;
UPDATE `trinity_string` SET `content_default`='Unit Flags: %u.
Unit Flags 2: %u.
Dynamic Flags: %u.
Faction Template: %u.' WHERE `entry`=542;
SET @ADARRAH := 24405;
SET @WARMONGER := 26811;
SET @SOOTHSAYER := 26812;
SET @HARRISON := 26814;
SET @TECAHUNA := 26865;
SET @MUMMY_BUNNY := 26867;
SET @CGUID := 77; -- 4.x

-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@TECAHUNA; 4.x
DELETE FROM `creature_equip_template` WHERE `entry`=@HARRISON;

UPDATE `gameobject` SET `state`=1 WHERE `id`=188465;
UPDATE `gameobject` SET `state`=0 WHERE `id`=188480;

UPDATE `creature` SET `equipment_id`=0 WHERE `id`=@HARRISON;
DELETE FROM `creature` WHERE `guid`=@CGUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID, @ADARRAH, 571, 1, 1, 4912.768, -4797.917, 32.68771, 3.595378, 300, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@WARMONGER,@SOOTHSAYER,@MUMMY_BUNNY);
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES
(@WARMONGER,'17327'),
(@SOOTHSAYER,'17327'),
(@MUMMY_BUNNY,'48150');

UPDATE `creature_template` SET `unit_flags`=768 WHERE `entry`=@ADARRAH;
UPDATE `creature_template` SET `dmg_multiplier`=5 WHERE `entry`=@HARRISON;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `unit_flags`=768, `dmg_multiplier`=6, `AIName`='SmartAI' WHERE `entry`=@TECAHUNA;
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE `entry`=26871;
UPDATE `creature_template` SET `unit_flags`=33554688, `flags_extra`=128 WHERE `entry`=@MUMMY_BUNNY;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@ADARRAH,@HARRISON,@MUMMY_BUNNY);
UPDATE `gameobject_template` SET `flags`=2 WHERE `entry` IN (188472,188487);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ADARRAH,@HARRISON,@TECAHUNA,@MUMMY_BUNNY) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@WARMONGER AND `source_type`=0 AND `id`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SOOTHSAYER AND `source_type`=0 AND `id` BETWEEN 9 AND 18;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ADARRAH*100,@HARRISON*100,@HARRISON*100+1,@HARRISON*100+2,@HARRISON*100+3,@HARRISON*100+4,@TECAHUNA*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ADARRAH,0,0,0,38,0,100,0,0,1,0,0,80,@ADARRAH*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Adarrah - On data set 0 1 - Run script'),
(@ADARRAH,0,1,0,40,0,100,0,6,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Adarrah - On WP reached - Despawn'),

(@WARMONGER,0,9,0,0,0,100,0,5000,7000,8000,12000,11,50370,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Ancient Drakkari Warmonger - On update IC - Spellcast Sunder Armor'),
(@SOOTHSAYER,0,9,10,4,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On aggro - Set event phase 2'),
(@SOOTHSAYER,0,10,0,61,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On aggro - Stop combat movement'),
(@SOOTHSAYER,0,11,0,0,2,100,0,0,0,3400,4800,11,9734,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On update IC (phase 2) - Spellcast Holy Smite'),
(@SOOTHSAYER,0,12,13,9,2,100,0,35,80,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On target range 35y and more - Set event phase 3'),
(@SOOTHSAYER,0,13,0,61,0,100,0,0,0,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On target range 40y and more - Start combat movement'),
(@SOOTHSAYER,0,14,10,9,0,100,0,5,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On target range below 15y - Set event phase 2'),
(@SOOTHSAYER,0,15,13,9,0,100,0,0,5,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On target range below 15y - Set event phase 2'),
(@SOOTHSAYER,0,16,13,3,0,100,0,0,7,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On mana below 7% - Set event phase 4'),
(@SOOTHSAYER,0,17,13,3,8,100,0,15,100,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On mana over 15% (phase 4) - Set event phase 2'),
(@SOOTHSAYER,0,18,0,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ancient Drakkari Soothsayer - On evade - Set event phase 0'),

(@HARRISON,0,0,1,11,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On spawn - Reset faction'),
(@HARRISON,0,1,2,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On spawn - Set invincibility 1HP'),
(@HARRISON,0,2,0,61,0,100,0,0,0,0,0,71,0,3,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On spawn - Remove equip'),
(@HARRISON,0,3,4,19,0,100,0,12082,0,0,0,80,@HARRISON*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On quest accept - Run script 0'),
(@HARRISON,0,4,0,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,16,0,0,0,0,0,0,0, 'Harrison Jones - On quest accept - Store target list'),
(@HARRISON,0,5,6,40,0,100,0,7,@HARRISON,0,0,54,8500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 7 reached - Pause WP movement 8.5 seconds'),
(@HARRISON,0,6,0,61,0,100,0,0,0,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 7 reached - Say line'),
(@HARRISON,0,7,0,52,0,100,0,1,@HARRISON,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On text over - Say line'),
(@HARRISON,0,8,9,40,0,100,0,9,@HARRISON,0,0,54,12000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 9 reached - Pause WP movement 12 seconds'),
(@HARRISON,0,9,0,61,0,100,0,0,0,0,0,80,@HARRISON*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 9 reached - Run script 1'),
(@HARRISON,0,10,11,40,0,100,0,11,@HARRISON,0,0,54,18000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 11 reached - Pause WP movement 18 seconds'),
(@HARRISON,0,11,0,61,0,100,0,0,0,0,0,80,@HARRISON*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 11 reached - Run script 2'),
(@HARRISON,0,12,13,40,0,100,0,13,@HARRISON,0,0,54,4600,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 13 reached - Pause WP movement 4.5 seconds'),
(@HARRISON,0,13,0,61,0,100,0,0,0,0,0,1,4,4600,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 13 reached - Say line'),
(@HARRISON,0,14,0,52,0,100,0,4,@HARRISON,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On text over - Say line'),
(@HARRISON,0,15,0,40,0,100,0,16,@HARRISON,0,0,9,0,0,0,0,0,0,20,188480,50,0,0,0,0,0, 'Harrison Jones - On WP 16 reached - Activate Grizzly Hills - FireDoor01'),
(@HARRISON,0,16,17,40,0,100,0,17,@HARRISON,0,0,54,500,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 17 reached - Say line'),
(@HARRISON,0,17,0,61,0,100,0,0,0,0,0,12,@TECAHUNA,2,300000,0,0,0,8,0,0,0,4906.587,-4818.92,32.63929,2.530727, 'Harrison Jones - On WP 17 reached - Summon Tecahuna'),
(@HARRISON,0,18,0,40,0,100,0,18,@HARRISON,0,0,80,@HARRISON*100+3,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 18 reached - Run script'),
(@HARRISON,0,19,20,2,0,100,1,0,0.0014,0,0,32,0,0,0,0,0,0,20,188480,50,0,0,0,0,0, 'Harrison Jones - On health below 0.0014% - Activate Grizzly Hills - FireDoor01'),
(@HARRISON,0,20,21,61,0,100,0,0,0,0,0,6,12082,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Harrison Jones - On health below 0.0014% - Fail quest'),
(@HARRISON,0,21,0,61,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On health below 0.0014% - Die'),
(@HARRISON,0,22,23,56,0,100,0,17,@HARRISON,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 17 resumed - Say line'),
(@HARRISON,0,23,0,61,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 17 resumed - Set run'),
(@HARRISON,0,24,0,38,0,100,0,0,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On data set 0 1 - Set event phase 1'),
(@HARRISON,0,25,0,7,1,100,0,0,0,0,0,80,@HARRISON*100+4,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On homeposition (phase 1) - Run script'),
(@HARRISON,0,26,27,40,0,100,0,21,@HARRISON*10,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 21 reached - Pause WP movement 6 seconds'),
(@HARRISON,0,27,0,61,0,100,0,0,0,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 21 reached - Say line'),
(@HARRISON,0,28,29,56,0,100,0,21,@HARRISON*10,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 21 resumed - Set run'),
(@HARRISON,0,29,0,61,0,100,0,0,0,0,0,15,12082,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Harrison Jones - On WP 21 resumed - Quest credit'),
(@HARRISON,0,30,0,40,0,100,0,25,@HARRISON*10,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On WP 25 reached - Despawn'),
(@HARRISON,0,31,0,4,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones - On aggro - Set reaction hostile'),

(@TECAHUNA,0,0,1,54,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Just summoned - Set invincibility 1HP'),
(@TECAHUNA,0,1,2,61,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Just summoned - Root'),
(@TECAHUNA,0,2,3,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Just summoned - Set event phase 1'),
(@TECAHUNA,0,3,0,61,0,100,0,0,0,0,0,80,@TECAHUNA*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Just summoned - Run script'),
(@TECAHUNA,0,4,5,0,0,100,0,20000,25000,20000,30000,11,47601,0,0,0,0,0,19,@MUMMY_BUNNY,60,0,0,0,0,0, 'Tecahuna - On update IC - Spellcast Cosmetic - Tecahuna Spirit Beam'),
(@TECAHUNA,0,5,0,61,0,100,0,0,0,0,0,11,47601,0,0,0,0,0,19,@MUMMY_BUNNY,60,0,0,0,0,0, 'Tecahuna - On update IC - Spellcast Cosmetic - Tecahuna Spirit Beam'),
(@TECAHUNA,0,6,7,2,0,100,1,0,0.002,0,0,9,0,0,0,0,0,0,20,188480,50,0,0,0,0,0, 'Tecahuna - On health below 0.002% - Activate Grizzly Hills - FireDoor01'),
(@TECAHUNA,0,7,8,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@HARRISON,50,0,0,0,0,0, 'Tecahuna - On health below 0.002% - Set data 0 1 Harrison Jones'),
(@TECAHUNA,0,8,9,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,11,@MUMMY_BUNNY,50,0,0,0,0,0, 'Tecahuna - On health below 0.002% - Set data 0 1 Mummy Effect Bunny'),
(@TECAHUNA,0,9,0,61,0,100,0,0,0,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On health below 0.002% - Die'),
(@TECAHUNA,0,10,0,7,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On evade - Set event phase 1'),
(@TECAHUNA,0,11,0,0,3,100,0,0,0,8000,9000,11,47629,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Tecahuna - On update IC (phase 1+2) - Spellcast Tecahuna Venom Spit'),
(@TECAHUNA,0,12,14,9,1,100,0,40,80,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On target range more than 40y (phase 1) - Unroot'),
(@TECAHUNA,0,13,14,9,0,100,0,0,5,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On target range below 5y - Unroot'),
(@TECAHUNA,0,14,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Linked - Set event phase 2'),
(@TECAHUNA,0,15,16,3,0,100,0,0,7,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On mana below 7% (phase 1) - Unroot'),
(@TECAHUNA,0,16,0,61,0,100,0,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Linked - Set event phase 3'),
(@TECAHUNA,0,17,19,9,0,100,0,5,15,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On target range below 15y - Root'),
(@TECAHUNA,0,18,19,3,4,100,0,15,100,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - On mana 15% (phase 3) - Unroot'),
(@TECAHUNA,0,19,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna - Linked - Set event phase 1'),

(@MUMMY_BUNNY,0,0,0,8,0,100,0,47601,0,0,0,11,47602,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mummy Effect Bunny - On spellhit Cosmetic - Tecahuna Spirit Beam - Spellcast Summon Ancient Drakkari King'),
(@MUMMY_BUNNY,0,1,0,38,0,100,0,0,1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mummy Effect Bunny - On spellhit Cosmetic - On data set 0 1 - Despawn'),

(@ADARRAH*100,9,0,0,0,0,100,0,2000,2000,0,0,5,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Adarrah script - Play emote'),
(@ADARRAH*100,9,1,0,0,0,100,0,1900,1900,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Adarrah script - Say line'),
(@ADARRAH*100,9,2,0,0,0,100,0,1000,1000,0,0,53,1,@ADARRAH,0,0,0,0,1,0,0,0,0,0,0,0, 'Adarrah script - Start WP movement'),

(@HARRISON*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 0 - Say line'),
(@HARRISON*100,9,1,0,0,0,100,0,500,500,0,0,9,0,0,0,0,0,0,20,188465,5,0,0,0,0,0, 'Harrison Jones script 0 - Activate Harrison''s Cage'),
(@HARRISON*100,9,2,0,0,0,100,0,0,0,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 0 - Set faction'),
(@HARRISON*100,9,3,0,0,0,100,0,0,0,0,0,71,0,2,0,2081,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 0 - Equip'),
(@HARRISON*100,9,4,0,0,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 0 - Remove npcflag gossip'),
(@HARRISON*100,9,5,0,0,0,100,0,2500,2500,0,0,53,0,@HARRISON,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 0 - Start WP movement'),
(@HARRISON*100,9,6,0,0,0,100,0,7000,7000,0,0,9,0,0,0,0,0,0,20,188465,50,0,0,0,0,0, 'Harrison Jones script 0 - Activate Harrison''s Cage'),

(@HARRISON*100+1,9,0,0,0,0,100,0,0,0,0,0,17,133,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 1 - Play emote'),
(@HARRISON*100+1,9,1,0,0,0,100,0,2500,2500,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 1 - Stop emote'),
(@HARRISON*100+1,9,2,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 1 - Say line'),
(@HARRISON*100+1,9,3,0,0,0,100,0,0,0,0,0,9,0,0,0,0,0,0,20,188487,5,0,0,0,0,0, 'Harrison Jones script 1 - Activate Adarra''s Cage'),
(@HARRISON*100+1,9,4,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@ADARRAH,5,0,0,0,0,0, 'Harrison Jones script 1 - Set data 0 1 Adarra''s Cage'),
(@HARRISON*100+1,9,5,0,0,0,100,0,10000,10000,0,0,9,0,0,0,0,0,0,20,188487,5,0,0,0,0,0, 'Harrison Jones script 1 - Activate Adarra''s Cage'),

(@HARRISON*100+2,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,6.143559, 'Harrison Jones script 2 - Set orientation'),
(@HARRISON*100+2,9,1,0,0,0,100,0,0,0,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Set unit_field_bytes1 (kneel)'),
(@HARRISON*100+2,9,2,0,0,0,100,0,2400,2400,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.677482, 'Harrison Jones script 2 - Set orientation'),
(@HARRISON*100+2,9,3,0,0,0,100,0,0,0,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Remove unit_field_bytes1 (kneel)'),
(@HARRISON*100+2,9,4,0,0,0,100,0,0,0,0,0,71,0,1,32246,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Equip'),
(@HARRISON*100+2,9,5,0,0,0,100,0,2500,2500,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play emote'),
(@HARRISON*100+2,9,6,0,0,0,100,0,0,0,0,0,4,12827,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play sound'),
(@HARRISON*100+2,9,7,0,0,0,100,0,0,0,0,0,11,47533,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Spellcast Camera Shake'),
(@HARRISON*100+2,9,8,0,0,0,100,0,2500,2500,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play emote'),
(@HARRISON*100+2,9,9,0,0,0,100,0,0,0,0,0,4,12827,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play sound'),
(@HARRISON*100+2,9,10,0,0,0,100,0,0,0,0,0,11,47533,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Spellcast Camera Shake'),
(@HARRISON*100+2,9,11,0,0,0,100,0,2500,2500,0,0,5,36,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play emote'),
(@HARRISON*100+2,9,12,0,0,0,100,0,0,0,0,0,4,12827,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Play sound'),
(@HARRISON*100+2,9,13,0,0,0,100,0,0,0,0,0,11,47533,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 2 - Spellcast Camera Shake'),
(@HARRISON*100+2,9,14,0,0,0,100,0,2000,2000,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4902.228,-4827.556,32.61251,2.443461, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,15,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4876.608,-4805.581,32.58254,6.178465, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,16,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4877.39,-4815.752,32.58345,0.1570796, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,17,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4883.104,-4823.975,32.58836,0.8726646, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,18,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4892.313,-4828.58,32.59582,1.570796, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,19,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4908.681,-4794.352,32.67061,3.979351, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,20,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4899.539,-4789.862,32.59812,4.764749, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,21,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4889.959,-4790.646,32.59848,5.201081, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,22,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4914.76,-4813.242,32.58661,3.01942, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),
(@HARRISON*100+2,9,23,0,0,0,100,0,0,0,0,0,12,@MUMMY_BUNNY,2,300000,0,0,0,8,0,0,0,4914.13,-4802.799,32.66964,3.420845, 'Harrison Jones script 2 - Summon Mummy Effect Bunny'),

(@HARRISON*100+3,9,0,0,0,0,100,0,0,0,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 3 - Say line'),
(@HARRISON*100+3,9,1,0,0,0,100,0,0,0,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 3 - Set homeposition'),
(@HARRISON*100+3,9,2,0,0,0,100,0,7200,7200,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 3 - Say line'),
(@HARRISON*100+3,9,3,0,0,0,100,0,6000,6000,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 3 - Start attack'),

(@HARRISON*100+4,9,0,0,0,0,100,0,1000,1000,0,0,53,1,@HARRISON*10,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 4 - Start WP movement'),
(@HARRISON*100+4,9,1,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Harrison Jones script 4 - Set event phase 0'),

(@TECAHUNA*100,9,0,0,0,0,100,0,15300,15300,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Tecahuna script - Remove unit_flags IMMUNE_TO_PC, IMMUNE_TO_NPC'),
(@TECAHUNA*100,9,1,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,19,@HARRISON,30,0,0,0,0,0, 'Tecahuna script - Start attack');

DELETE FROM `creature_text` WHERE `entry` IN (@ADARRAH,@HARRISON);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ADARRAH,0,0,'Thank you!',12,0,100,17,0,0,'Adarrah'),
(@HARRISON,0,0,'Alright, kid. Stay behind me and you''ll be fine.',12,0,100,60,0,0,'Harrison Jones'),
(@HARRISON,1,0,'Their ceremonial chamber, where I was to be sacrificed...',12,0,100,396,0,0,'Harrison Jones'),
(@HARRISON,2,0,'Time to put an end to all this!',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,3,0,'You''re free to go, miss.',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,4,0,'Odd. That usually does it.',12,0,100,396,0,0,'Harrison Jones'),
(@HARRISON,5,0,'Just as well, I''ve had enough of this place.',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,6,0,'What''s this?',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,7,0,'Aww, not a snake!',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,8,0,'Listen, kid. I can handle this thing. You just watch my back!',12,0,100,0,0,0,'Harrison Jones'),
(@HARRISON,9,0,'See ya ''round, kid!',12,0,100,0,0,0,'Harrison Jones');

DELETE FROM `waypoints` WHERE `entry` IN (@ADARRAH,@HARRISON,@HARRISON*10);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ADARRAH, 1,4902.543, -4798.52, 31.8586,'Adarrah'),
(@ADARRAH, 2,4893.144, -4795.715, 32.28691,'Adarrah'),
(@ADARRAH, 3,4887.894, -4793.465, 32.53691,'Adarrah'),
(@ADARRAH, 4,4878.785, -4793.664, 32.5359,'Adarrah'),
(@ADARRAH, 5,4863.294, -4785.226, 32.60138,'Adarrah'),
(@ADARRAH, 6,4839.031, -4774.794, 32.58206,'Adarrah'),

(@HARRISON, 1,4904.213, -4758.285, 27.27473,'Harrison Jones'),
(@HARRISON, 2,4896.463, -4755.535, 27.27473,'Harrison Jones'),
(@HARRISON, 3,4893.663, -4754.357, 27.23306,'Harrison Jones'),
(@HARRISON, 4,4886.543, -4762.921, 27.57825,'Harrison Jones'),
(@HARRISON, 5,4880.44, -4770.725, 30.70074,'Harrison Jones'),
(@HARRISON, 6,4876.696, -4790.863, 32.32729,'Harrison Jones'),
(@HARRISON, 7,4878.253, -4793.774, 32.53423,'Harrison Jones'),
(@HARRISON, 8,4882.602, -4795.872, 32.30199,'Harrison Jones'),
(@HARRISON, 9,4909.493, -4798.01, 32.54974,'Harrison Jones'),
(@HARRISON,10,4907.815, -4804.193, 31.78963,'Harrison Jones'),
(@HARRISON,11,4914.756, -4823.07, 32.66446,'Harrison Jones'),
(@HARRISON,12,4913.032, -4822.288, 32.63041,'Harrison Jones'),
(@HARRISON,13,4909.308, -4821.506, 32.59636,'Harrison Jones'),
(@HARRISON,14,4893.949, -4813.76, 31.7795,'Harrison Jones'),
(@HARRISON,15,4887.193, -4808.022, 32.0295,'Harrison Jones'),
(@HARRISON,16,4886.381, -4806.938, 32.29276,'Harrison Jones'),
(@HARRISON,17,4883.646, -4798.885, 32.57867,'Harrison Jones'),
(@HARRISON,18,4899.398, -4806.076, 32.02951,'Harrison Jones'),

(@HARRISON*10, 1,4893.088, -4802.876, 32.0295,'Harrison Jones'),
(@HARRISON*10, 2,4881.008, -4795.617, 32.50804,'Harrison Jones'),
(@HARRISON*10, 3,4857.754, -4778.792, 32.6265,'Harrison Jones'),
(@HARRISON*10, 4,4837.625, -4774.61, 32.5914,'Harrison Jones'),
(@HARRISON*10, 5,4817.824, -4790.486, 25.46436,'Harrison Jones'),
(@HARRISON*10, 6,4826.314, -4827.564, 25.48946,'Harrison Jones'),
(@HARRISON*10, 7,4826.336, -4841.321, 25.48413,'Harrison Jones'),
(@HARRISON*10, 8,4809.195, -4851.308, 25.52775,'Harrison Jones'),
(@HARRISON*10, 9,4781.125, -4849.693, 25.44121,'Harrison Jones'),
(@HARRISON*10,10,4761.496, -4853.984, 25.00991,'Harrison Jones'),
(@HARRISON*10,11,4719.89, -4857.747, 26.13666,'Harrison Jones'),
(@HARRISON*10,12,4693.853, -4858.84, 32.49986,'Harrison Jones'),
(@HARRISON*10,13,4680.416, -4861.247, 35.56741,'Harrison Jones'),
(@HARRISON*10,14,4673.966, -4864.334, 35.56741,'Harrison Jones'),
(@HARRISON*10,15,4662.382, -4882.535, 35.58759,'Harrison Jones'),
(@HARRISON*10,16,4658.195, -4895.924, 36.19548,'Harrison Jones'),
(@HARRISON*10,17,4656.812, -4915.515, 43.78271,'Harrison Jones'),
(@HARRISON*10,18,4659.832, -4928.781, 47.82988,'Harrison Jones'),
(@HARRISON*10,19,4664.121, -4942.443, 48.00279,'Harrison Jones'),
(@HARRISON*10,20,4666.967, -4951.508, 48.10587,'Harrison Jones'),
(@HARRISON*10,21,4675.692, -4970.227, 47.64427,'Harrison Jones'),
(@HARRISON*10,22,4681.637, -4973.975, 46.74993,'Harrison Jones'),
(@HARRISON*10,23,4707.978, -4997.285, 40.70398,'Harrison Jones'),
(@HARRISON*10,24,4712.889, -5002.176, 39.12014,'Harrison Jones'),
(@HARRISON*10,25,4739.859, -5031.481, 31.18226,'Harrison Jones');
SET @SWIFTSPEAR := 30395;
SET @GOSSIP :=9906;

DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(@GOSSIP,0,0,'I am sorry to disturb your rest, chieftain, but your brother''s spirit may be in danger. Would you tell me what you remember of him?',1,1,0,0,0,0,'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP,0,0,0,9,0,13037,0,0,0,0,'','Show gossip option only if player has quest Memories of Stormhoof');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@SWIFTSPEAR;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SWIFTSPEAR AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SWIFTSPEAR*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@SWIFTSPEAR,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,56760,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Chieftain Swiftspear - On gossip select - Spellcast Trigger Swiftspear Signal'),
(@SWIFTSPEAR,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Chieftain Swiftspear - On gossip select - Close gossip'),
(@SWIFTSPEAR,0,2,0,61,0,100,0,0,0,0,0,80,@SWIFTSPEAR*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear - On gossip select - Run script'),

(@SWIFTSPEAR*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,1,0,0,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Remove npcflag gossip'),
(@SWIFTSPEAR*100,9,2,0,0,0,100,0,6800,6800,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,3,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,4,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,5,0,0,0,100,0,6100,6100,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,6,0,0,0,100,0,7200,7200,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,7,0,0,0,100,0,6000,6000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Say line'),
(@SWIFTSPEAR*100,9,8,0,0,0,100,0,3600,3600,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Play emote'),
(@SWIFTSPEAR*100,9,9,0,0,0,100,0,2700,2700,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Add npcflag gossip'),
(@SWIFTSPEAR*100,9,10,0,0,0,100,0,0,0,0,0,33,30381,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Chieftain Swiftspear script - Quest credit');

DELETE FROM `creature_text` WHERE `entry`=@SWIFTSPEAR;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@SWIFTSPEAR,0,0,'My brother, Stormhoof, was a far greater warrior than I. While I trained to be the chieftain of our clan, he prepared for a larger quest.',12,0,100,1,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,1,0,'How could he be in danger? All he wanted was to give us power over the elements that made life harsh for us here.',12,0,100,1,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,2,0,'He sought an artifact... a horn, I think. He left the village on a long journey in search of it.',12,0,100,6,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,3,0,'I know that a terrible enemy pursued him after he won the horn, but I... I don''t recall... what happened... next.',12,0,100,5,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,4,0,'It is as though my memories are shrouded in mist. I cannot even recall what became of my brother. Is this how you mean that he is in danger?',12,0,100,274,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,5,0,'The disturbances in the tomb, they must be involved. Look around you, $N. Do you see them?',12,0,100,25,0,0,'Chieftain Swiftspear'),
(@SWIFTSPEAR,6,0,'Yes, they are at fault, but I am powerless to stop them. Will you warn the people of Tunka''lo, stranger, that their past and their ancestors are in danger?',12,0,100,1,0,0,'Chieftain Swiftspear');
SET @BAT := 23959;
SET @BUNNY := 24230;

UPDATE `creature_template` SET `AIName`='SmartAI', `flags_extra`=`flags_extra`|128 WHERE `entry`=@BUNNY;
UPDATE `creature_template` SET `inhabitType`=4, `AIName`='SmartAI' WHERE `entry`=@BAT;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@BAT,@BUNNY) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@BAT,0,0,0,38,0,100,0,0,1,0,0,69,1,0,0,0,0,0,19,@BUNNY,50,0,0,0,0,0,'Darkclaw Bat - On data set 0 1 - Move to position'),
(@BAT,0,1,0,34,0,100,0,0,1,0,0,45,0,1,0,0,0,0,19,@BUNNY,5,0,0,0,0,0,'Darkclaw Bat - On movement inform - Spellcast Scare the Guano Out of Them!: Cast Spell 1 On Target''s Master'),
(@BUNNY,0,0,1,54,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Firecracker Bunny - Just summoned - Root'),
(@BUNNY,0,1,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@BAT,50,0,0,0,0,0,'Firecracker Bunny - Just summoned - Set data 0 1 Darkclaw Bat'),
(@BUNNY,0,2,0,38,0,100,0,0,1,0,0,11,62068,0,0,0,0,0,1,0,0,0,0,0,0,0,'Firecracker Bunny - On spellhit Scare the Guano Out of Them!: Cast Spell 1 On Target''s Master - Crosscast owner Scare the Guano Out of Them!: Cast Spell 1 On Target''s Master'),
(@BUNNY,0,3,0,8,0,100,0,62068,0,0,0,86,43307,0,23,0,0,0,0,0,0,0,0,0,0,0,'Firecracker Bunny - On spellhit Scare the Guano Out of Them!: Cast Spell 1 On Target''s Master - Crosscast owner Scare the Guano Out of Them!: Cast Spell 1 On Target''s Master');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=43307;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,43307,0,0,31,0,3,@BUNNY,0,0,0,'','Spell Scare the Guano Out of Them!: Summon Darkclaw Guano targets Firecracker Bunny');
SET @CGUID := 620; -- 4.x
SET @OGUID := 552; -- 4.x
SET @SERINAR := 26593;
SET @NECROLYTE := 27356;
SET @BUNNY := 27369;
SET @RUNE := 188695;

UPDATE `creature` SET `MovementType`=0, `spawndist`=0, `unit_flags`=33024 WHERE `guid`=116960;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+13;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, @BUNNY, 571, 1, 1, 13069, 4495.499, 1747.361, 175.1579, 0.6806784, 300, 0, 0),
(@CGUID+1, @BUNNY, 571, 1, 1, 13069, 4544.45, 1739.195, 167.6779, 0.9075712, 300, 0, 0),
(@CGUID+2, @BUNNY, 571, 1, 1, 13069, 4573.836, 1708.501, 171.742, 1.466077, 300, 0, 0),
(@CGUID+3, @BUNNY, 571, 1, 1, 13069, 4604.599, 1727.422, 170.6874, 4.921828, 300, 0, 0),
(@CGUID+4, @BUNNY, 571, 1, 1, 13069, 4601.996, 1700.385, 171.9938, 1.37881, 300, 0, 0),
(@CGUID+5, @BUNNY, 571, 1, 1, 13069, 4576.454, 1755.058, 167.8554, 2.164208, 300, 0, 0),
(@CGUID+6, @BUNNY, 571, 1, 1, 13069, 4625.904, 1754.476, 182.3284, 6.038839, 300, 0, 0),
(@CGUID+7, @BUNNY, 571, 1, 1, 13069, 4561.219, 1731.186, 166.7194, 3.926991, 300, 0, 0),
(@CGUID+8, @BUNNY, 571, 1, 1, 13069, 4497.56, 1880.672, 164.3632, 5.61996, 300, 0, 0),
(@CGUID+9, 27362, 571, 1, 1, 0, 4567.375, 1724.495, 168.1724, 0.6806784, 300, 5, 1),
(@CGUID+10, 27362, 571, 1, 1, 0, 4608.474, 1721.618, 170.9504, 3.124139, 300, 5, 1),
(@CGUID+11, 27358, 571, 1, 1, 0, 4576.38, 1711.559, 171.3237, 4.018391, 300, 5, 1),
(@CGUID+12, 27358, 571, 1, 1, 0, 4574.408, 1751.613, 167.8838, 1.03504, 300, 5, 1),
(@CGUID+13, 27363, 571, 1, 1, 0, 4570.443, 1678.617, 170.5762, 0.002298846, 300, 5, 1);

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+8;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`, `orientation`, `rotation0`, `rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID+0,@RUNE,571,1,1,4495.527,1747.337,175.0751,0.7330382,0,0,0.3583679,0.9335805,300,100,1),
(@OGUID+1,@RUNE,571,1,1,4544.453,1739.186,167.594,-1.151916,0,0,-0.5446386,0.8386708,300,100,1),
(@OGUID+2,@RUNE,571,1,1,4573.879,1708.473,171.6586,-2.268925,0,0,-0.9063072,0.4226195,300,100,1),
(@OGUID+3,@RUNE,571,1,1,4604.577,1727.41,170.6038,-0.1919852,0,0,-0.09584522,0.9953963,300,100,1),
(@OGUID+4,@RUNE,571,1,1,4601.975,1700.365,171.9105,-0.4014249,0,0,-0.1993675,0.9799248,300,100,1),
(@OGUID+5,@RUNE,571,1,1,4576.479,1755.036,167.7747,-0.2792516,0,0,-0.1391726,0.9902682,300,100,1),
(@OGUID+6,@RUNE,571,1,1,4625.864,1754.506,182.2451,-0.7330382,0,0,-0.3583679,0.9335805,300,100,1),
(@OGUID+7,@RUNE,571,1,1,4561.233,1731.201,166.6359,-0.6108635,0,0,-0.300705,0.9537172,300,100,1),
(@OGUID+8,@RUNE,571,1,1,4497.559,1880.615,164.2788,0.8377574,0,0,0.4067364,0.9135455,300,100,1);

DELETE FROM `creature_addon` WHERE `guid`=116960;
INSERT INTO `creature_addon` (`guid`,`auras`) VALUES
(116960,'29266');

DELETE FROM `creature_text` WHERE `entry`=@SERINAR;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@SERINAR,0,0, 'Perfect.  As long as you don''t go hacking and slashing your way through, they''ll never know the difference.',12,0,100,0,0,0, 'Serinar');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48750;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(48750,48770,2,'Serinar''s Vision is applied while aura Burning Depths Necrolyte Image is active');

UPDATE `quest_template` SET `PrevQuestId`=12447 WHERE `Id` IN (12261,12262);
UPDATE `quest_template` SET `PrevQuestId`=12263 WHERE `Id` IN (12264,12265);

UPDATE `gameobject_template` SET `flags`=4 WHERE `entry`=188695;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@SERINAR;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SERINAR AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@SERINAR*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@SERINAR, 0, 0, 1, 19, 0, 100, 0, 12263, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, @NECROLYTE, 20, 0, 0, 0, 0, 0, 'Serinar - On quest accept - Turn to'),
(@SERINAR, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 48748, 0, 0, 0, 0, 0, 19, @NECROLYTE, 20, 0, 0, 0, 0, 0, 'Serinar - On quest accept - Spellcast Absorb Image'),
(@SERINAR, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, @SERINAR*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Serinar - On quest accept - Run script'),
(@SERINAR, 0, 3, 4, 62, 0, 100, 0, 9537, 0, 0, 0, 11, 48750, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Serinar - On gossip select - Spellcast Burning Depths Necrolyte Image'),
(@SERINAR, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Serinar - On gossip select - Say line'),
(@SERINAR, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Serinar - On gossip select - Close gossip'),

(@SERINAR*100, 9, 0, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Serinar script - Turn to'),
(@SERINAR*100, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 48750, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Serinar script - Spellcast Burning Depths Necrolyte Image'),
(@SERINAR*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Serinar script - Say line'),
(@SERINAR*100, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Serinar script - Turn to');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (48738,48748);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9537 AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 48738, 0, 0, 31, 0, 4, 0, 0, 0, 0, '', 'Spell Stamp Out Necromantic Rune effect0 targets player'),
(13, 2, 48738, 0, 0, 31, 0, 3, @BUNNY, 0, 0, 0, '', 'Spell Stamp Out Necromantic Rune effect1 targets Necromantic Rune Bunny'),
(13, 1, 48748, 0, 0, 31, 0, 3, @NECROLYTE, 0, 0, 0, '', 'Spell Absorb Image targets Burning Depths Necrolyte'),
(15, 9537, 0, 0, 0, 9, 0, 12263, 0, 0, 0, 0, '', 'Show gossip option only if player has taken quest The Best of Intentions'),
(15, 9537, 0, 0, 0, 1, 0, 48750, 0, 0, 1, 0, '', 'Show gossip option only if player doesn''t have aura Burning Depths Necrolyte Image');
-- wrong lootmode
UPDATE `creature_loot_template` SET `lootmode`=1 WHERE `item` IN(46367,46381,46380);
-- Darkwraith
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=15657 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Plaguehound
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=8598 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Amani Berserker
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=15643 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Enraged Wraith
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=17086 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Anok'suten
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=16357 AND `source_type`=0 AND `id`=3 AND `link`=0;
-- Bloodscalp Warrior
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=587 AND `source_type`=0 AND `id`=2 AND `link`=3;
-- Bloodscalp Berserker
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=597 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Commander Aggro'gosh
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=2464 AND `source_type`=0 AND `id`=3 AND `link`=4;
-- Vilebranch Berserker 
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=2643 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Hungering Wraith
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=1802 AND `source_type`=0 AND `id`=1 AND `link`=2;
-- Dark Strand Enforcer
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=3727 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Scarlet Myrmidon
UPDATE `smart_scripts` SET `event_flags`=1 WHERE  `entryorguid`=4295 AND `source_type`=0 AND `id`=0 AND `link`=1;
-- Ymirjar Flesh Hunter
UPDATE `smart_scripts` SET `event_flags`=7 WHERE  `entryorguid`=26670 AND `source_type`=0 AND `id`=27 AND `link`=28;
-- Startup Errors
UPDATE `smart_scripts` SET `event_flags`=0 WHERE  `entryorguid`=22895 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=1487 AND `source_type`=0 AND `id`=8 AND `link`=9;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=2245 AND `source_type`=0 AND `id`=14 AND `link`=15;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=2375 AND `source_type`=0 AND `id`=8 AND `link`=9;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=16344 AND `source_type`=0 AND `id`=8 AND `link`=9;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=29174 AND `source_type`=0 AND `id`=2 AND `link`=3;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=29174 AND `source_type`=0 AND `id`=3 AND `link`=4;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=29174 AND `source_type`=0 AND `id`=4 AND `link`=5;
-- Timed action scripts aren't supposed to have links set on them
UPDATE `smart_scripts` SET `link`=0, `event_type`=0 WHERE  `entryorguid`=83600 AND `source_type`=9 AND `id`=1 AND `link`=2;
UPDATE `smart_scripts` SET `link`=0, `event_type`=0 WHERE  `entryorguid`=83600 AND `source_type`=9 AND `id`=2 AND `link`=3;
UPDATE `smart_scripts` SET `event_type`=0 WHERE  `entryorguid`=83600 AND `source_type`=9 AND `id`=3 AND `link`=0;
-- Aforementioned issue about links on timed scripts
UPDATE `smart_scripts` SET `event_type`=0 WHERE  `entryorguid`=83600 AND `source_type`=9 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `link`=0, `event_type`=0 WHERE  `entryorguid`=305400 AND `source_type`=9 AND `id`=1 AND `link`=2;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=15938 AND `source_type`=0 AND `id`=7 AND `link`=8;
-- This one had messed up ID's too
UPDATE `smart_scripts` SET `id`=5, `link`=6 WHERE  `entryorguid`=19456 AND `source_type`=0 AND `id`=6 AND `link`=7;
UPDATE `smart_scripts` SET `id`=6 WHERE  `entryorguid`=19456 AND `source_type`=0 AND `id`=7 AND `link`=0;
UPDATE `smart_scripts` SET `id`=7 WHERE  `entryorguid`=19456 AND `source_type`=0 AND `id`=8 AND `link`=0;
UPDATE `smart_scripts` SET `id`=8 WHERE  `entryorguid`=19456 AND `source_type`=0 AND `id`=9 AND `link`=0;
UPDATE `smart_scripts` SET `id`=9 WHERE  `entryorguid`=19456 AND `source_type`=0 AND `id`=10 AND `link`=0;
DROP TABLE IF EXISTS `keychain_db2`;
CREATE TABLE `keychain_db2` (
  `keyId` INT UNSIGNED NOT NULL DEFAULT '0',
  `k1` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k2` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k3` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k4` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k5` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k6` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k7` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k8` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k9` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k10` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k11` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k12` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k13` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k14` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k15` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k16` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k17` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k18` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k19` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k20` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k21` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k22` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k23` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k24` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k25` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k26` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k27` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k28` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k29` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k30` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k31` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  `k32` TINYINT UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `keychain_db2` VALUES
(33, 53, 6, 164, 135, 117, 210, 209, 135, 247, 162, 85, 200, 76, 220, 107, 56, 80, 214, 44, 121, 29, 66, 81, 25, 41, 38, 208, 8, 235, 154, 58, 139),
(35, 16, 209, 60, 47, 154, 100, 204, 97, 125, 161, 79, 126, 191, 163, 7, 45, 64, 188, 199, 88, 141, 46, 153, 90, 143, 40, 6, 80, 29, 133, 217, 135),
(36, 3, 169, 217, 5, 156, 76, 33, 82, 75, 181, 233, 203, 230, 52, 67, 197, 57, 99, 27, 108, 100, 197, 93, 156, 174, 2, 248, 216, 244, 115, 164, 210),
(37, 119, 7, 189, 206, 199, 253, 234, 73, 232, 17, 162, 79, 0, 35, 222, 224, 7, 98, 132, 147, 229, 36, 19, 253, 79, 59, 198, 59, 48, 121, 97, 215);
DELETE FROM `smart_scripts` WHERE `entryorguid`=30407 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`link`,`event_type`,`event_flags`,`event_phase_mask`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(30407,0,1,11,0,0,0,0,0,0,11,56726,0,1,'Captured Crusader - On Respawn - Apply Nerubian Webs (56726)'),
(30407,1,0,61,0,0,0,0,0,0,22,1,0,1,'Captured Crusader - Linked to id 0 - Set event phase to 1'),
(30407,2,0, 1,0,1,4000,4000,4000,4000,10,70,22,1,'Captured Crusader - Out of combat - Random emote'),
(30407,3,4, 8,0,1,56683,0,0,0,11,56687,0,7,'Captured Crusader - Spell hit of Grab Captured Crusader (56683) - Cast Ride Vehicle (56687)'),
(30407,4,5,61,0,1,0,0,0,0,1,0,0,1,'Captured Crusader - Linked to id 3 - Talk'),
(30407,5,0,61,0,1,0,0,0,0,22,2,0,1,'Captured Crusader - Linked to id 3 - Set event phase to 2'),
(30407,6,0, 1,0,2,8000,8000,8000,8000,1,1,0,1,'Captured Crusader - Out of combat - Talk'),
(30407,7,8,23,1,2,56687,0,0,0,1,2,0,1,'Captured Crusader - Aura Ride Vehicle (56687) removed - Talk'),
(30407,8,9,61,0,2,0,0,0,0,41,5000,0,1,'Captured Crusader - Linked to id 7 - Despawn'),
(30407,9,0,61,0,2,0,0,0,0,22,0,0,1,'Captured Crusader - Linked to id 7 - Set event phase to 0');
DELETE FROM `trinity_string` WHERE `entry`=363;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(363, 'Player %s cannot whisper you any longer.');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (48619,48620,52812);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=48738;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,48619,0,0,31,0,3,27377,0,0,'','Spell Flame Breath effect0 targets Thane Torvald Eriksson'),
(13,2,48619,0,0,31,0,3,27377,0,0,'','Spell Flame Breath effect1 targets Thane Torvald Eriksson'),
(13,1,48620,0,0,31,0,3,27377,0,0,'','Spell Wing Buffet targets Thane Torvald Eriksson'),
(13,1,52812,0,0,31,0,3,27377,0,0,'','Spell Molten Fury effect0 targets Thane Torvald Eriksson'),
(13,2,52812,0,0,31,0,3,27377,0,0,'','Spell Molten Fury effect1 targets Thane Torvald Eriksson');

UPDATE `smart_scripts` SET `event_type`=1, `event_flags`=1 WHERE `entryorguid`=21633 AND `source_type`=0 AND `id`=0;
SET @HARPOON := 30066;
SET @HAYSTACK := 30096;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (55896,55934);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=@HAYSTACK;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,4,55896,0,0,31,0,3,@HAYSTACK,0,0,0,'','Spell Explosion effect2 targets Dry Haystack'),
(13,2,55934,0,0,31,0,3,30103,0,0,0,'','Spell Valkyrion Fire effect1 targets Valkyrion Fire Bunny'),
(22,1,@HAYSTACK,0,0,1,1,55934,0,0,1,0,'','SAI Dry Haystack triggers only if Dry Haystack has no aura of spell Valkyrion Fire');

UPDATE `creature_template` SET `npcflag`=16777216, `ScriptName`='' WHERE `entry`=@HARPOON;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@HARPOON,@HAYSTACK);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@HARPOON,@HAYSTACK) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@HARPOON,0,0,0,11,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Valkyrion Harpoon Gun - On spawn - Root'),

(@HAYSTACK,0,0,1,8,0,100,0,55896,0,0,0,11,55934,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Dry Haystack - On spellhit Explosion - Spellcast Valkyrion Fire'),
(@HAYSTACK,0,1,2,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dry Haystack - Linked - Set event phase 1'),
(@HAYSTACK,0,2,0,61,0,100,0,0,0,0,0,33,@HAYSTACK,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Dry Haystack - Linked - Quest credit'),
(@HAYSTACK,0,3,4,23,1,100,0,55934,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dry Haystack - On spellfade Valkyrion Fire (phase 1) - Set event phase 0'),
(@HAYSTACK,0,4,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Dry Haystack - Linked - Despawn');
DELETE FROM `creature_template_addon` WHERE `entry`=29570;
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`) VALUES
(29570,50331648,1);
SET @MULE := 23977;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@MULE;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MULE AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@MULE*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@MULE,0,0,0,22,0,100,0,125,0,0,0,11,43572,0,0,0,0,0,7,0,0,0,0,0,0,0,'Abandoned Pack Mule - On emote receive - Spellcast Send Them Packing: On /Raise Emote Dummy to Player'),
(@MULE,0,1,2,31,0,100,0,43572,0,0,0,11,42721,0,0,0,0,0,7,0,0,0,0,0,0,0,'Abandoned Pack Mule - On target spellhit Send Them Packing: On /Raise Emote Dummy to Player - Spellcast Send Them Packing: On Successful Dummy Spell Kill Credit'),
(@MULE,0,2,0,61,0,100,0,0,0,0,0,80,@MULE*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule - On target spellhit Send Them Packing: On /Raise Emote Dummy to Player - Run script'),

(@MULE*100,9,0,0,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule script - Stop movement'),
(@MULE*100,9,1,0,0,0,100,0,500,500,0,0,5,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule script - Play emote'),
(@MULE*100,9,2,0,0,0,100,0,0,0,0,0,4,727,0,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule script - Play sound'),
(@MULE*100,9,3,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule script - Set run'),
(@MULE*100,9,4,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,1561.824,-3709.441,147.7268,0,'Abandoned Pack Mule script - Move to position'),
(@MULE*100,9,5,0,0,0,100,0,15000,15000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Abandoned Pack Mule script - Despawn');
DELETE FROM `trinity_string` WHERE `entry` IN (1151, 1152, 1153, 1154, 1155, 1156);
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(1151, 'Mail List Info: # of mails: %u, Player: %s(%u)'),
(1152, 'Mail Id: %u Title: \"%s\" Money: %ug%us%uc'),
(1153, 'Sender: %s(%u), Receiver: %s(%u)'),
(1154, 'Time deliver: %s, Time expire: %s'),
(1155, 'Item: %s[Entry:%u Guid:%u Count:%u]'),
(1156, 'Mail List Info: No mail found for this character.');

DELETE FROM `command` WHERE `name` = 'list mail';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('list mail', 3, 'Syntax: .list mail $character\nList of mails the character received.');
DELETE FROM `creature_addon` WHERE `guid` IN (223343, 223369, 223370, 223387, 223388, 223389);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(223343, 0, 0x0, 0x1, 0, '108781 101864 29266'), -- Time-Twisted Scourge Beast - Time-Twisted, Diseased, Permanent Feign Death
(223369, 0, 0x0, 0x1, 0, '101878'), -- Time-Twisted Shadowtalon - Shred
(223370, 0, 0x0, 0x1, 438, ''), -- Time-Twisted Shadowtalon
(223387, 0, 0x0, 0x1, 0, '101862'), -- Time-Twisted Geist - Cannibalize
(223388, 0, 0x0, 0x1, 0, '101862'), -- Time-Twisted Geist - Cannibalize
(223389, 0, 0x0, 0x1, 0, '101862'); -- Time-Twisted Geist - Cannibalize
