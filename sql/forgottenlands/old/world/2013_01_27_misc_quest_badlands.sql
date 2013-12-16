-- Quest 27765 First Sample: Wild Eggs CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27770' WHERE (`Id`='27765');
UPDATE `quest_template` SET `NextQuestIdChain`='27770' WHERE (`Id`='27766');
UPDATE `quest_template` SET `NextQuestIdChain`='27771' WHERE (`Id`='27770');
UPDATE `quest_template` SET `NextQuestIdChain`='27769' WHERE (`Id`='27771');
UPDATE `quest_template` SET `NextQuestIdChain`='27772' WHERE (`Id`='27769');
UPDATE `quest_template` SET `NextQuestIdChain`='27789' WHERE (`Id`='27772');
UPDATE `quest_template` SET `PrevQuestId`='27765' WHERE (`Id`='27770');
UPDATE `quest_template` SET `PrevQuestId`='27770' WHERE (`Id`='27771');
UPDATE `quest_template` SET `PrevQuestId`='27771' WHERE (`Id`='27769');
UPDATE `quest_template` SET `PrevQuestId`='27769' WHERE (`Id`='27772');
UPDATE `quest_template` SET `PrevQuestId`='27772' WHERE (`Id`='27789');

-- Quest 27765 First Sample: Wild Eggs 
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='46654');

-- Quest 27766 Second Sample: Whelps
DELETE FROM `creature_loot_template` WHERE (`entry`='2725') AND (`item`='62390');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('2725', '62390', '-65');

-- Quest 27770 Lifting the Veil
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46654');
DELETE FROM smart_scripts WHERE entryorguid IN (46654) AND event_param1 = 27770;
INSERT INTO `smart_scripts` VALUES (46654, 0, 1, 0, 19, 0, 100, 0, 27770, 0, 0, 0, 12, 46658, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -7012.81,-3923.84,263.9,5.8, 'Summon Nyxondra');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='46658');
DELETE FROM `creature_template_addon` WHERE (`entry`='46658');
INSERT INTO `creature_template_addon` (`entry`, `bytes1`) VALUES ('46658', '3');

-- Quest 27770 Third Sample: Implanted Eggs
DELETE FROM `gameobject_template` WHERE (`entry`='2063210');
INSERT INTO `gameobject_template` VALUES (2063210, 3, 9456, 'Nyxondra s Egg', '', 'Collecting', '', 0, 0, 0.3, 62393, 0, 0, 0, 0, 0, 1691, 35343, 1, 0, 0, 0, 0, 206321, 27771, 0, 0, 0, 0, 0, 19676, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 14545);
DELETE FROM `gameobject` WHERE (`id`='2063210');
INSERT INTO `gameobject` VALUES (null, 2063210, 0, 1, 1, -7013.24, -3930.07, 263.89, 2.79316, 0, 0, 0.984863, 0.173334, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 2063210, 0, 1, 1, -7016.2, -3930.29, 263.889, 2.78416, 0, 0, 0.984073, 0.177764, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 2063210, 0, 1, 1, -7014.83, -3928.7, 263.889, 0.463289, 0, 0, 0.229579, 0.97329, 300, 0, 1);
DELETE FROM `gameobject_loot_template` WHERE (`entry`='35343') AND (`item`='62393');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('35343', '62393', '-100');

-- Quest 27769 Rhea Revealed
DELETE FROM smart_scripts WHERE entryorguid IN (46654) AND event_param1 = 27769;
INSERT INTO `smart_scripts` VALUES (46654, 0, 2, 0, 19, 0, 100, 0, 27769, 0, 0, 0, 12, 46655, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -6988.06,-3940.86,263.9,0.326, 'Summon Rheastrasza');
INSERT INTO `smart_scripts` VALUES (46654, 0, 3, 0, 19, 0, 100, 0, 27769, 0, 0, 0, 33, 46654, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Credit');

-- Quest 27877 The Morons' League
DELETE FROM `creature_loot_template` WHERE (`item`='62650');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('2743', '62650', '-55');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('2742', '62650', '-40');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('2739', '62650', '-30');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('2740', '62650', '-30');

-- Quest 27927 Down to the Scar CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27713' WHERE (`Id`='27927');
UPDATE `quest_template` SET `PrevQuestId`='27927' WHERE (`Id`='27713');

-- Quest 27713 The Day that Deathwing Came
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='46471');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='46467');
DELETE FROM `creature` WHERE (`id`='46471');
INSERT INTO `creature` VALUES (null, 46471, 0, 1, 1, 0, 0, -6732.54, -3206.89, 223.328, 2.12508, 300, 0, 0, 420000, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='46467');
INSERT INTO `creature` VALUES (null, 46467, 0, 1, 1, 0, 0, -7095.57, -2788.26, 223.18, 2.345, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46467, 0, 1, 1, 0, 0, -7075.96, -2789.8, 210.619, 2.11723, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46467, 0, 1, 1, 0, 0, -7073.44, -2770.32, 215.915, 2.29395, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46467, 0, 1, 1, 0, 0, -7051.13, -2762.61, 219.212, 2.43532, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46467, 0, 1, 1, 0, 0, -7072.98, -2745.18, 225.891, 2.47066, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46467, 0, 1, 1, 0, 0, -7103.16, -2758.74, 228.4, 1.85805, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46467, 0, 1, 1, 0, 0, -7126.46, -2766.01, 242.851, 1.51247, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 46467, 0, 1, 1, 0, 0, -7085.61, -2718.95, 235.384, 2.61988, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 27775 When the Going Gets Tough, Cheat CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27776' WHERE (`Id`='27775');
UPDATE `quest_template` SET `PrevQuestId`='27775' WHERE (`Id`='27776');

-- Quest 27775 When the Going Gets Tough, Cheat
UPDATE `creature_template` SET `lootid`='46693' WHERE (`entry`='46693');
DELETE FROM `creature_loot_template` WHERE (`entry`='46693') AND (`item`='62396');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46693', '62396', '-80');

-- Quest 27776 It's Goat Time, Baby
DELETE FROM `conditions` WHERE (`SourceEntry`='86425');
INSERT INTO `conditions` VALUES (17, 0, 86425, 0, 0, 29, 0, 46393, 4, 0, 0, 0, 0, '', 'Spell can be used only near goat');

-- Quest 27762 Fuselight, Ho! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27763' WHERE (`Id`='27762');
UPDATE `quest_template` SET `NextQuestIdChain`='27774' WHERE (`Id`='27763');
UPDATE `quest_template` SET `NextQuestIdChain`='27764' WHERE (`Id`='27774');
UPDATE `quest_template` SET `PrevQuestId`='27762' WHERE (`Id`='27763');
UPDATE `quest_template` SET `PrevQuestId`='27763' WHERE (`Id`='27774');
UPDATE `quest_template` SET `PrevQuestId`='27774' WHERE (`Id`='27764');

-- Quest 27883 The Warden's Pawn CHAIN TIMELINE FIX - HORDE
UPDATE `quest_template` SET `NextQuestIdChain`='27885' WHERE (`Id`='27883');
UPDATE `quest_template` SET `NextQuestIdChain`='27885' WHERE (`Id`='27884');
UPDATE `quest_template` SET `NextQuestIdChain`='27887' WHERE (`Id`='27885');
UPDATE `quest_template` SET `NextQuestIdChain`='27887' WHERE (`Id`='27886');
UPDATE `quest_template` SET `NextQuestIdChain`='27913' WHERE (`Id`='27887');
UPDATE `quest_template` SET `NextQuestIdChain`='27888' WHERE (`Id`='27913');
UPDATE `quest_template` SET `PrevQuestId`='27883' WHERE (`Id`='27885');
UPDATE `quest_template` SET `PrevQuestId`='27883' WHERE (`Id`='27886');
UPDATE `quest_template` SET `PrevQuestId`='27885' WHERE (`Id`='27887');
UPDATE `quest_template` SET `PrevQuestId`='27887' WHERE (`Id`='27913');
UPDATE `quest_template` SET `PrevQuestId`='27913' WHERE (`Id`='27888');

-- Quest 27883 The Warden's Pawn CHAIN TIMELINE FIX - ALLY
UPDATE `quest_template` SET `NextQuestIdChain`='27693' WHERE (`Id`='27796');
UPDATE `quest_template` SET `NextQuestIdChain`='27693' WHERE (`Id`='27797');
UPDATE `quest_template` SET `NextQuestIdChain`='27793' WHERE (`Id`='27693');
UPDATE `quest_template` SET `NextQuestIdChain`='27793' WHERE (`Id`='27709');
UPDATE `quest_template` SET `NextQuestIdChain`='27912' WHERE (`Id`='27793');
UPDATE `quest_template` SET `NextQuestIdChain`='27794' WHERE (`Id`='27912');
UPDATE `quest_template` SET `PrevQuestId`='27796' WHERE (`Id`='27693');
UPDATE `quest_template` SET `PrevQuestId`='27796' WHERE (`Id`='27709');
UPDATE `quest_template` SET `PrevQuestId`='27693' WHERE (`Id`='27793');
UPDATE `quest_template` SET `PrevQuestId`='27793' WHERE (`Id`='27912');
UPDATE `quest_template` SET `PrevQuestId`='27912' WHERE (`Id`='27794');

-- Quest 27886 The Sentinel's Game REMOVED
DELETE FROM `creature_questrelation` WHERE (`id`='46398') AND (`quest`='27886');
DELETE FROM `gameobject_questrelation` WHERE (`id`='206336') AND (`quest`='27886');
DELETE FROM `quest_template` WHERE (`Id`='27886');
DELETE FROM `gameobject_questrelation` WHERE (`id`='206336') AND (`quest`='27709');
DELETE FROM `creature_questrelation` WHERE (`id`='46398') AND (`quest`='27709');

-- Quest 27885 / 27693 The Warden's Game REMOVED
DELETE FROM `creature_questrelation` WHERE (`id`='46339') AND (`quest`='27885');
DELETE FROM `gameobject_questrelation` WHERE (`id`='206335') AND (`quest`='27885');
DELETE FROM `creature_questrelation` WHERE (`id`='46339') AND (`quest`='27693');
DELETE FROM `gameobject_questrelation` WHERE (`id`='206335') AND (`quest`='27693');

-- Quest 27893 Gargal, the Behemoth
DELETE FROM `creature` WHERE (`id`='47013');
INSERT INTO `creature` VALUES (null, 47013, 0, 1, 1, 8352, 47013, -6730.98, -2484.46, 274.27, 1.53589, 600, 0, 0, 3980, 0, 0, 0, 0, 0);

-- Quest 27893 Gargal, the Behemoth CHAIN TIMELINE FIX - HORDE
UPDATE `quest_template` SET `NextQuestIdChain`='27894' WHERE (`Id`='27893');
UPDATE `quest_template` SET `NextQuestIdChain`='27895' WHERE (`Id`='27894');
UPDATE `quest_template` SET `NextQuestIdChain`='27896' WHERE (`Id`='27895');
UPDATE `quest_template` SET `NextQuestIdChain`='27897' WHERE (`Id`='27896');
UPDATE `quest_template` SET `NextQuestIdChain`='27898' WHERE (`Id`='27897');
UPDATE `quest_template` SET `PrevQuestId`='27893' WHERE (`Id`='27894');
UPDATE `quest_template` SET `PrevQuestId`='27894' WHERE (`Id`='27895');
UPDATE `quest_template` SET `PrevQuestId`='27895' WHERE (`Id`='27896');
UPDATE `quest_template` SET `PrevQuestId`='27896' WHERE (`Id`='27897');
UPDATE `quest_template` SET `PrevQuestId`='27897' WHERE (`Id`='27898');

-- Quest 27835 Olaf, the Big Fella CHAIN TIMELINE FIX - ALLY
UPDATE `quest_template` SET `NextQuestIdChain`='27829' WHERE (`Id`='27835');
UPDATE `quest_template` SET `NextQuestIdChain`='27830' WHERE (`Id`='27829');
UPDATE `quest_template` SET `NextQuestIdChain`='27831' WHERE (`Id`='27830');
UPDATE `quest_template` SET `NextQuestIdChain`='27832' WHERE (`Id`='27831');
UPDATE `quest_template` SET `NextQuestIdChain`='27858' WHERE (`Id`='27832');
UPDATE `quest_template` SET `PrevQuestId`='27835' WHERE (`Id`='27829');
UPDATE `quest_template` SET `PrevQuestId`='27829' WHERE (`Id`='27830');
UPDATE `quest_template` SET `PrevQuestId`='27830' WHERE (`Id`='27831');
UPDATE `quest_template` SET `PrevQuestId`='27831' WHERE (`Id`='27832');
UPDATE `quest_template` SET `PrevQuestId`='27832' WHERE (`Id`='27858');

-- Quest 27893 Gargal, the Behemoth AUTOCOMPLETE obj 46866 and 46867
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGo2`='0', `RequiredNpcOrGoCount1`='0', `RequiredNpcOrGoCount2`='0' WHERE (`Id`='27893');
DELETE FROM `creature` WHERE (`id`='47022');
INSERT INTO `creature` VALUES (null, 47022, 0, 1, 1, 0, 0, -6729.79, -2444.27, 272.777, 2.36186, 300, 0, 0, 84, 0, 0, 0, 0, 0);

-- Quest 27896 The Sorrow and the Fury
DELETE FROM `creature` WHERE (`id`='46861');
INSERT INTO `creature` VALUES (null, 46861, 0, 1, 1, 0, 0, -6650.54, -2208.16, 286.862, 0.505493, 300, 0, 0, 19900, 0, 0, 0, 0, 0);

-- Quest 27898 Rheastrasza's Gift AUTOCOMPLETE
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27898');
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='27898');
DELETE FROM `creature_involvedrelation` WHERE (`id`='46654') AND (`quest`='27898');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('46654', '27898');

-- Quest 27827 The Swift, the Fierce, and the Stout
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27827');

-- Quest 27889 New Kargath CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27890' WHERE (`Id`='27889');
UPDATE `quest_template` SET `PrevQuestId`='27889' WHERE (`Id`='27890');

-- Quest 27890 The Bad Dogs
DELETE FROM `creature` WHERE (`id`='47011');
INSERT INTO `creature` VALUES (null, 47011, 0, 1, 1, 0, 0, -6729.87, -2479.16, 274.178, 4.21018, 300, 0, 0, 1592, 1640, 0, 0, 0, 0);

-- Some missing race required
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27791');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27826');

-- Quest 27859 The Egg Lives On REMOVED
DELETE FROM `creature_questrelation` WHERE (`id`='46664') AND (`quest`='27859');

-- Quest 27881 Bloodwatcher Point CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27882' WHERE (`Id`='27881');
UPDATE `quest_template` SET `PrevQuestId`='27881' WHERE (`Id`='27882');

-- Quest 27882 It's Not About History, It's About Power
UPDATE `creature_template` SET `lootid`='46773' WHERE (`entry`='46773');
DELETE FROM `creature_loot_template` WHERE (`entry`='46773');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46773', '62594', '-25');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46773', '62595', '-25');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46773', '62596', '-25');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46773', '62597', '-25');

-- Quest 27789 Troggish Troubles
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='46707');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('46707', '87027', '1');
UPDATE `creature_template` SET `npcflag`='16777216', `spell1`='87034', `spell2`='87030', `unit_flags`='4' WHERE (`entry`='46707');
UPDATE `creature_template` SET `VehicleId`='244' WHERE (`entry`='46707');

DELETE FROM `creature_template` WHERE (`entry`='467131');
INSERT INTO `creature_template` VALUES (467131, 0, 0, 0, 46737, 0, 764, 0, 0, 0, 'Stonevault Wanderer', '', '', 0, 45, 46, 0, 0, 59, 59, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 5797, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template` WHERE (`entry`='467132');
INSERT INTO `creature_template` VALUES (467132, 0, 0, 0, 46738, 0, 764, 0, 0, 0, 'Stonevault Wanderer', '', '', 0, 45, 46, 0, 0, 59, 59, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 5797, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template` WHERE (`entry`='467133');
INSERT INTO `creature_template` VALUES (467133, 0, 0, 0, 46739, 0, 764, 0, 0, 0, 'Stonevault Wanderer', '', '', 0, 45, 46, 0, 0, 59, 59, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 5797, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);
DELETE FROM `creature_template` WHERE (`entry`='467134');
INSERT INTO `creature_template` VALUES (467134, 0, 0, 0, 46740, 0, 764, 0, 0, 0, 'Stonevault Wanderer', '', '', 0, 45, 46, 0, 0, 59, 59, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 1, 0, 5797, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 15595);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46713');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='46713');
INSERT INTO `smart_scripts` VALUES (46713, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 46, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0, 'Mob run');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46707');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='46707');
INSERT INTO `smart_scripts` VALUES (46707, 0, 1, 2, 27, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7054.18,-3447.71,244.918,6.09271, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (46707, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7035.66,-3432.57,244.783,3.98743, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (46707, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7022.63,-3456.91,242.367,2.3569, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (46707, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7054.18,-3447.71,244.918,6.09271, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (46707, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7035.66,-3432.57,244.783,3.98743, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (46707, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 467131, 7, 0, 0, 0, 0, 8, 0, 0, 0, -7022.63,-3456.91,242.367,2.3569, 'Summon mob');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='467131');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='467131');
INSERT INTO `smart_scripts` VALUES (467131, 0, 1, 2, 6, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7054.18,-3447.71,244.918,6.09271, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467131, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7035.66,-3432.57,244.783,3.98743, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467131, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7022.63,-3456.91,242.367,2.3569, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467131, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7054.18,-3447.71,244.918,6.09271, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467131, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7035.66,-3432.57,244.783,3.98743, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467131, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 467132, 7, 0, 0, 0, 0, 8, 0, 0, 0, -7022.63,-3456.91,242.367,2.3569, 'Summon mob');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='467132');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='467132');
INSERT INTO `smart_scripts` VALUES (467132, 0, 1, 2, 6, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 2, 80000, 0, 0, 0, 8, 0, 0, 0, -7054.18,-3447.71,244.918,6.09271, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467132, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 2, 80000, 0, 0, 0, 8, 0, 0, 0, -7035.66,-3432.57,244.783,3.98743, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467132, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 2, 80000, 0, 0, 0, 8, 0, 0, 0, -7022.63,-3456.91,242.367,2.3569, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467132, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7054.18,-3447.71,244.918,6.09271, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467132, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7035.66,-3432.57,244.783,3.98743, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467132, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 467133, 7, 0, 0, 0, 0, 8, 0, 0, 0, -7022.63,-3456.91,242.367,2.3569, 'Summon mob');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='467133');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='467133');
INSERT INTO `smart_scripts` VALUES (467133, 0, 1, 2, 6, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 2, 80000, 0, 0, 0, 8, 0, 0, 0, -7054.18,-3447.71,244.918,6.09271, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467133, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 2, 80000, 0, 0, 0, 8, 0, 0, 0, -7035.66,-3432.57,244.783,3.98743, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467133, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 2, 80000, 0, 0, 0, 8, 0, 0, 0, -7022.63,-3456.91,242.367,2.3569, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467133, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7054.18,-3447.71,244.918,6.09271, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467133, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 12, 46713, 6, 60, 0, 0, 0, 8, 0, 0, 0, -7035.66,-3432.57,244.783,3.98743, 'Summon mob');
INSERT INTO `smart_scripts` VALUES (467133, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 467134, 7, 60, 0, 0, 0, 8, 0, 0, 0, -7022.63,-3456.91,242.367,2.3569, 'Summon mob');

-- Quest 27715 The Day that Deathwing Came: What Really Happened AUTOCOMPETE
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGo2`='0', `RequiredNpcOrGo3`='0', `RequiredNpcOrGo4`='0', `RequiredNpcOrGoCount1`='0', `RequiredNpcOrGoCount2`='0', `RequiredNpcOrGoCount3`='0', `RequiredNpcOrGoCount4`='0' WHERE (`Id`='27715');

-- Quest 27714 The Day that Deathwing Came: The Real Story AUTOCOMPETE
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGo2`='0', `RequiredNpcOrGo3`='0', `RequiredNpcOrGoCount1`='0', `RequiredNpcOrGoCount2`='0', `RequiredNpcOrGoCount3`='0' WHERE (`Id`='27714');

-- Quest 27792 All's Fair in Love, War, and Archaeology CHAIN TIMELINE FIX - ALLY
UPDATE `quest_template` SET `NextQuestIdChain`='27792' WHERE (`Id`='27791');
UPDATE `quest_template` SET `PrevQuestId`='27791' WHERE (`Id`='27792');

-- Quest 27792 All's Fair in Love, War, and Archaeology
UPDATE `creature_template` SET `lootid`='46772' WHERE (`entry`='46772');
DELETE FROM `creature_loot_template` WHERE (`entry`='46772') AND (`item`='62485');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46772', '62485', '-25');
DELETE FROM `creature_loot_template` WHERE (`entry`='46772') AND (`item`='62486');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46772', '62486', '-25');
DELETE FROM `creature_loot_template` WHERE (`entry`='46772') AND (`item`='62487');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46772', '62487', '-25');
DELETE FROM `creature_loot_template` WHERE (`entry`='46772') AND (`item`='62488');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('46772', '62488', '-25');

-- Fix invisible creature
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='46852');
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='46853');
UPDATE `creature_template_addon` SET `auras`=NULL WHERE (`entry`='46854');

-- Quest 27826 Into the Dragon's Mouth CHAIN TIMELINE FIX - ALLY
UPDATE `quest_template` SET `NextQuestIdChain`='27827' WHERE (`Id`='27826');
UPDATE `quest_template` SET `PrevQuestId`='27826' WHERE (`Id`='27827');

-- Quest 27823 A Dwarf's Got Needs CHAIN TIMELINE FIX - ALLY
UPDATE `quest_template` SET `NextQuestIdChain`='27824' WHERE (`Id`='27823');
UPDATE `quest_template` SET `PrevQuestId`='27823' WHERE (`Id`='27824');

-- Quest 27823 All's Fair in Love, War, and Archaeology
UPDATE `creature_template` SET `lootid`='2740' WHERE (`entry`='2740');
DELETE FROM `creature_loot_template` WHERE (`entry`='2740') AND (`item`='62510');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('2740', '62510', '-55');
UPDATE `creature_template` SET `lootid`='2739' WHERE (`entry`='2739');
DELETE FROM `creature_loot_template` WHERE (`entry`='2739') AND (`item`='62510');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('2739', '62510', '-55');

-- Quest 27828 Eric, the Utility Dwarf
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46852');
DELETE FROM smart_scripts WHERE entryorguid IN (46852);
INSERT INTO `smart_scripts` VALUES (46852, 0, 1, 0, 19, 0, 100, 0, 27828, 0, 0, 0, 86, 87262, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Summon Eric Guardian');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46855');
DELETE FROM smart_scripts WHERE entryorguid IN (46855);
INSERT INTO `smart_scripts` VALUES (46855, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2500, 2510, 11, 87278, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0,0,0,0, 'On aggro cast spell');
INSERT INTO `smart_scripts` VALUES (46855, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2500, 2510, 11, 87279, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0,0,0,0, 'On aggro cast spell');
INSERT INTO `smart_scripts` VALUES (46855, 0, 3, 0, 24, 0, 100, 0, 87278, 0, 0, 0, 33, 46862, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0,0,0,0, 'credit1');
INSERT INTO `smart_scripts` VALUES (46855, 0, 4, 0, 24, 0, 100, 0, 87278, 0, 0, 0, 33, 46863, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0,0,0,0, 'credit1');
INSERT INTO `smart_scripts` VALUES (46855, 0, 5, 0, 19, 0, 100, 0, 27829, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Force Despawn');

-- Quest 27834 Baelog, the Glass Cannon
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46853');
DELETE FROM smart_scripts WHERE entryorguid IN (46853);
INSERT INTO `smart_scripts` VALUES (46853, 0, 1, 0, 19, 0, 100, 0, 27834, 0, 0, 0, 86, 87263, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Summon Eric Guardian');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46856');
DELETE FROM smart_scripts WHERE entryorguid IN (46856);
INSERT INTO `smart_scripts` VALUES (46856, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2500, 2510, 11, 87276, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0,0,0,0, 'On aggro cast spell');
INSERT INTO `smart_scripts` VALUES (46856, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2500, 2510, 11, 87277, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0,0,0,0, 'On aggro cast spell');
INSERT INTO `smart_scripts` VALUES (46856, 0, 3, 0, 24, 0, 100, 0, 87276, 0, 0, 0, 33, 46864, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0,0,0,0, 'credit1');
INSERT INTO `smart_scripts` VALUES (46856, 0, 4, 0, 24, 0, 100, 0, 87277, 0, 0, 0, 33, 46865, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0,0,0,0, 'credit1');
INSERT INTO `smart_scripts` VALUES (46856, 0, 5, 0, 19, 0, 100, 0, 27829, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Force Despawn');

-- Quest 27835 Olaf, the Big Fella'
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46854');
DELETE FROM smart_scripts WHERE entryorguid IN (46854);
INSERT INTO `smart_scripts` VALUES (46854, 0, 1, 0, 19, 0, 100, 0, 27835, 0, 0, 0, 86, 87264, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Summon Eric Guardian');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='46857');
DELETE FROM smart_scripts WHERE entryorguid IN (46857);
INSERT INTO `smart_scripts` VALUES (46857, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2500, 2510, 11, 87274, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0,0,0,0, 'On aggro cast spell');
INSERT INTO `smart_scripts` VALUES (46857, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2500, 2510, 11, 87275, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0,0,0,0, 'On aggro cast spell');
INSERT INTO `smart_scripts` VALUES (46857, 0, 3, 0, 24, 0, 100, 0, 87274, 0, 0, 0, 33, 46866, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0,0,0,0, 'credit1');
INSERT INTO `smart_scripts` VALUES (46857, 0, 4, 0, 24, 0, 100, 0, 87275, 0, 0, 0, 33, 46867, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0,0,0,0, 'credit1');
INSERT INTO `smart_scripts` VALUES (46857, 0, 5, 0, 19, 0, 100, 0, 27829, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Force Despawn');

-- Quest 27858 Rheastrasza's Gift AUTOCOMPLETE
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27858');
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='27858');
DELETE FROM `creature_involvedrelation` WHERE (`id`='46654') AND (`quest`='27858');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('46654', '27858');
