-- Quest 26353 Captain Sanders' Hidden Treasure CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26354' WHERE (`Id`='26353');
UPDATE `quest_template` SET `NextQuestIdChain`='26355' WHERE (`Id`='26354');
UPDATE `quest_template` SET `NextQuestIdChain`='26356' WHERE (`Id`='26355');
UPDATE `quest_template` SET `PrevQuestId`='26353' WHERE (`Id`='26354');
UPDATE `quest_template` SET `PrevQuestId`='26354' WHERE (`Id`='26355');
UPDATE `quest_template` SET `PrevQuestId`='26355' WHERE (`Id`='26356');

-- Quest 26353 Captain Sanders' Hidden Treasure
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='126') AND (`item`='1357');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5' WHERE (`entry`='127') AND (`item`='1357');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='20' WHERE (`entry`='515') AND (`item`='1357');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='15' WHERE (`entry`='456') AND (`item`='1357');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='10' WHERE (`entry`='391') AND (`item`='1357');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`='5' WHERE (`entry`='517') AND (`item`='1357');

-- Quest 26236 Surveying Equipment
DELETE FROM `creature` WHERE (`id`='42558');
INSERT INTO `creature` VALUES (null, 42558, 0, 1, 1, 0, 0, -9855.33, 1276.8, 40.8915, 3.74936, 300, 0, 0, 2865, 0, 0, 0, 0, 0);

-- Fix some wrong auras
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='42405');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='42311');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='42308');
UPDATE `creature_template_addon` SET `auras`='29266' WHERE (`entry`='237');
UPDATE `creature_template_addon` SET `auras`='29266' WHERE (`entry`='238');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='42309');
UPDATE `creature_template_addon` SET `auras`='29266' WHERE (`entry`='582');

-- Quest 26353 Captain Sanders' Hidden Treasure CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26215' WHERE (`Id`='26213');
UPDATE `quest_template` SET `NextQuestIdChain`='26215' WHERE (`Id`='26214');
UPDATE `quest_template` SET `NextQuestIdChain`='26232' WHERE (`Id`='26215');
UPDATE `quest_template` SET `PrevQuestId`='26213' WHERE (`Id`='26215');
UPDATE `quest_template` SET `PrevQuestId`='26215' WHERE (`Id`='26232');

-- Quest 26213 Hot On the Trail: The Riverpaw Clan
DELETE FROM `creature_loot_template` WHERE (`entry`='500') AND (`item`='57755');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('500', '57755', '-30');
DELETE FROM `creature_loot_template` WHERE (`entry`='117') AND (`item`='57755');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('117', '57755', '-30');

-- Quest 26214 Hot On the Trail: Murlocs
DELETE FROM `creature_loot_template` WHERE (`entry`='515') AND (`item`='57756');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('515', '57756', '-25');
DELETE FROM `creature_loot_template` WHERE (`entry`='126') AND (`item`='57756');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('126', '57756', '-20');

-- Quest 26228 Livin' the Life - core bug impossible to assign credit
DELETE FROM `creature_questrelation` WHERE (`id`='42405') AND (`quest`='26228');

-- Quest 26232 Lou's Parting Thoughts
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42387');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='42387');
INSERT INTO `smart_scripts` VALUES (42387, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33,42417,0,0,0,0,0,21,2,0,0,0,0,0,0,"Credit when in area");

-- Quest 26378 Hero's Call: Westfall! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26209' WHERE (`Id`='26378');
UPDATE `quest_template` SET `PrevQuestId`='26378' WHERE (`Id`='26209');

-- Quest 26252 Heart of the Watcher CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26257' WHERE (`Id`='26252');
UPDATE `quest_template` SET `PrevQuestId`='26252' WHERE (`Id`='26257');

-- Quest 26209 Murder Was The Case That They Gave Me 
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42384');
UPDATE `creature_template` SET `gossip_menu_id`='42384' WHERE (`entry`='42384');
DELETE FROM `conditions` WHERE (`ConditionValue1`='26209');
INSERT INTO `conditions` VALUES (15, 42384, 1, 0, 0, 9, 0, 26209, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
INSERT INTO `conditions` VALUES (15, 42384, 2, 0, 0, 9, 0, 26209, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
INSERT INTO `conditions` VALUES (15, 42384, 3, 0, 0, 9, 0, 26209, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
INSERT INTO `conditions` VALUES (15, 42384, 4, 0, 0, 9, 0, 26209, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`='42384');
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag,action_menu_id) values
(42384,1,"Did you see who killed the Furlbrows? ",1,1,0),
(42384,2,"Tell me everything about who killed the Furlbrows!",1,1,0),
(42384,3,"Did you see Furlbrows today?.",1,1,0),
(42384,4,"Did you kill the Furlbrows? ",1,1,0);

DELETE FROM smart_scripts WHERE entryorguid IN (42384);
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(42384, 0, 22, 23, 62, 0, 100, 0, 42384, 1, 0, 0, 33, 42414, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'gossip - credit'),
(42384, 0, 23, 24, 61, 0, 100, 0, 0, 0, 0, 0, 1, 8, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42384, 0, 24, 25, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(42384, 0, 25, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn'),
(42384, 0, 26, 27, 62, 0, 100, 0, 42384, 2, 0, 0, 33, 42415, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'gossip - credit'),
(42384, 0, 27, 28, 61, 0, 100, 0, 0, 0, 0, 0, 1, 9, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42384, 0, 28, 29, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(42384, 0, 29, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn'),
(42384, 0, 30, 31, 62, 0, 100, 0, 42384, 3, 0, 0, 33, 42416, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'gossip - credit'),
(42384, 0, 31, 32, 61, 0, 100, 0, 0, 0, 0, 0, 1, 10, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42384, 0, 32, 33, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(42384, 0, 33, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn'),
(42384, 0, 34, 35, 62, 0, 100, 0, 42384, 4, 0, 0, 33, 42417, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'gossip - credit'),
(42384, 0, 35, 36, 61, 0, 100, 0, 0, 0, 0, 0, 1, 11, 0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42384, 0, 36, 37, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,"Chiude gossip"),
(42384, 0, 37, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

DELETE FROM `creature_text` WHERE (`entry`='42384') AND (`groupid`='8');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42384','8','0','Listen, pal. I don t want any trouble, ok? I didn t see who murdered  em, but I sure heard it! Lots of yelling. Human voices... you dig? Now get out of here before I change my mind about beating you up and takin  your shoes.','12','0','100','0','0','0','Life party');
DELETE FROM `creature_text` WHERE (`entry`='42384') AND (`groupid`='9');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42384','9','0','I didn t see who killed m, but I got a whiff. Smelled rich, kinda like you. Damn shame too. Furlbrows were a fixture around here. Nice people, always willin  to share a meal or a patch of dirt. ','12','0','100','0','0','0','Life party');
DELETE FROM `creature_text` WHERE (`entry`='42384') AND (`groupid`='10');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42384','10','0','Who killed the Furlbrows? I ll tell you who killed the Furlbrows: KING VARIAN WRYNN. THAT S WHO! And he s killin  the rest of us too. Once bum at a time. The only thing I can tell you is that I saw some gnolls leavin  the place a few hours before the law arrived. ','12','0','100','0','0','0','Life party');
DELETE FROM `creature_text` WHERE (`entry`='42384') AND (`groupid`='11');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42384','11','0','Between you, mea, and the tree, murlocs killed the Furlbrows. Yep, saw  em with my own two eyes. Think they d been casin  the joint for days, maybe months. They left in a hurry once they got wind of "Johnny Law" and the idiot brigade over there... ','12','0','100','0','0','0','Life party');

-- Quest 26266 Hope for the People CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26271' WHERE (`Id`='26266');
UPDATE `quest_template` SET `PrevQuestId`='26266' WHERE (`Id`='26271');

-- Quest 26271 Feeding the Hungry and the Hopeless
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='79450');
INSERT INTO `spell_linked_spell` VALUES (79450, 62464, 0, 'spell credit');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42384');
-- DELETE FROM `smart_scripts` WHERE (`entryorguid`='42384');   already done by quest 26209 above
INSERT INTO `smart_scripts` VALUES (42384, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 42617, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (42384, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42386');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='42386');   
INSERT INTO `smart_scripts` VALUES (42386, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 42617, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (42386, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Quest 26252 Heart of the Watcher
UPDATE `creature_template` SET `lootid`='114' WHERE (`entry`='114');
DELETE FROM `creature_loot_template` WHERE (`entry`='114') AND (`item`='57935');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('114', '57935', '15');

-- Quest 26271 Feeding the Hungry and the Hopeless
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='79436');
INSERT INTO `spell_linked_spell` VALUES (79436, 62464, 0, 'spell credit');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42381');
DELETE FROM smart_scripts WHERE entryorguid IN (42381);
INSERT INTO `smart_scripts` VALUES (42381, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 86, 57954, 0, 0, 0, 0, 0, 21, 4, 0, 0, 0,0,0,0, 'Summon Guardian');
INSERT INTO `smart_scripts` VALUES (42381, 0, 2, 3, 61 , 0, 100, 0, 0, 0, 0, 0, 33, 42601, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (42381, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'despawn');

-- Quest 26289 Find Agent Kearnen CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26291' WHERE (`Id`='26289');
UPDATE `quest_template` SET `PrevQuestId`='26289' WHERE (`Id`='26291');

-- Quest 26290 Secrets of the Tower REMOVED MISSING CREDIT
DELETE FROM `creature_questrelation` WHERE (`id`='7024') AND (`quest`='26290');

-- Quest 26322 Rise of the Brotherhood REMOVED MISSING CREDIT
DELETE FROM `creature_questrelation` WHERE (`id`='234') AND (`quest`='26322');

-- Quest 26292 To Moonbrook! CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26295' WHERE (`Id`='26292');
UPDATE `quest_template` SET `NextQuestIdChain`='26297' WHERE (`Id`='26295');
UPDATE `quest_template` SET `NextQuestIdChain`='26319' WHERE (`Id`='26297');
UPDATE `quest_template` SET `NextQuestIdChain`='26370' WHERE (`Id`='26319');
UPDATE `quest_template` SET `NextQuestIdChain`='26761' WHERE (`Id`='26370');
UPDATE `quest_template` SET `PrevQuestId`='26292' WHERE (`Id`='26295');
UPDATE `quest_template` SET `PrevQuestId`='26295' WHERE (`Id`='26297');
UPDATE `quest_template` SET `PrevQuestId`='26297' WHERE (`Id`='26319');
UPDATE `quest_template` SET `PrevQuestId`='26319' WHERE (`Id`='26370');
UPDATE `quest_template` SET `PrevQuestId`='26370' WHERE (`Id`='26761');

-- Quest 26297 The Dawning of a New Day
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42425');
DELETE FROM smart_scripts WHERE entryorguid IN (42425);
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(42425, 0, 1, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42680, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11016.2, 1479.46, 47.7925, 1.57624, 'Summon mob'),
(42425, 0, 2, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42383, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11020.5, 1489.41, 43.1954, 5.03462, 'Summon mob'),
(42425, 0, 3, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42383, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11015.1, 1489.24, 43.2898, 4.46913, 'Summon mob'),
(42425, 0, 4, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42383, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11013.8, 1485.64, 43.7345, 4.48877, 'Summon mob'),
(42425, 0, 5, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42383, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11009.1, 1488.10, 43.7879, 4.04894, 'Summon mob'),
(42425, 0, 6, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42383, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11023.6, 1483.70, 43.1172, 6.01636, 'Summon mob'),
(42425, 0, 7, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42386, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11024.6, 1487.40, 43.1781, 5.80038, 'Summon mob'),
(42425, 0, 8, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42386, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11011.3, 1491.67, 43.4357, 4.39453, 'Summon mob'),
(42425, 0, 9, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42386, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11010.5, 1484.33, 44.1074, 3.68768, 'Summon mob'),
(42425, 0, 10, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42386, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11018.2, 1492.78, 43.2003, 4.81864, 'Summon mob'),
(42425, 0, 11, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42386, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11020.1, 1484.73, 43.1826, 5.47837, 'Summon mob'),
(42425, 0, 12, 0, 19, 0, 100, 0, 26297, 0, 0, 0, 12, 42386, 7, 80000, 0, 0, 0, 8, 0, 0, 0, -11022.2, 1479.98, 43.0295, 6.14989, 'Summon mob');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42680');
UPDATE `creature_template` SET `gossip_menu_id`='42680' WHERE (`entry`='42680');
DELETE FROM `creature_template_addon` WHERE (`entry`='42680');
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES ('42680', '15473');

DELETE FROM smart_scripts WHERE entryorguid IN (42680);
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(42680, 0, 23, 0, 1, 0, 100, 1, 18000, 19000, 0, 0, 1, 8, 3000,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42680, 0, 24, 0, 1, 0, 100, 1, 23000, 23500, 0, 0, 1, 9, 6000,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42680, 0, 25, 0, 1, 0, 100, 1, 33000, 33500, 0, 0, 1, 10, 9000,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42680, 0, 26, 0, 1, 0, 100, 1, 43000, 43500, 0, 0, 1, 11, 12000,0,0,0,0,1,0,0,0,0,0,0,0,"Frase"),
(42680, 0, 27, 0, 1, 0, 100, 0, 53000, 53500, 0, 0, 33, 42680, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'credit');

DELETE FROM `creature_text` WHERE (`entry`='42680') AND (`groupid`='8');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42680','8','0','Gather, brothers and sisters! Come, all, and listen!','12','0','100','0','0','0','Life party');
DELETE FROM `creature_text` WHERE (`entry`='42680') AND (`groupid`='9');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42680','9','0','Brothers. Sisters. We are ABANDONED - the orphaned children of Stormwind. ','12','0','100','0','0','0','Life party');
DELETE FROM `creature_text` WHERE (`entry`='42680') AND (`groupid`='10');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42680','10','0','Meanwhile, our children die of starvation on these very streets! ','12','0','100','0','0','0','Life party');
DELETE FROM `creature_text` WHERE (`entry`='42680') AND (`groupid`='11');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42680','11','0','Today, we are reborn! Today we take a stand as men and women, not nameless, faceless numbers! ','12','0','100','0','0','0','Life party');

-- Quest 26320 A Vision of the Past REMOVED MISSING CREDIT
DELETE FROM `creature_questrelation` WHERE (`id`='42651') AND (`quest`='26320');

-- Quest 26287 The Westfall Brigade CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26288' WHERE (`Id`='26287');
UPDATE `quest_template` SET `PrevQuestId`='26287' WHERE (`Id`='26288');

-- Quest 26371 The Legend of Captain Grayson CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26348' WHERE (`Id`='26371');
UPDATE `quest_template` SET `PrevQuestId`='26371' WHERE (`Id`='26348');


