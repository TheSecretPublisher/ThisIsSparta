-- Quest 27408 Banner of the Stonemaul CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27411' WHERE (`Id`='27408');
UPDATE `quest_template` SET `NextQuestIdChain`='27411' WHERE (`Id`='27409');
UPDATE `quest_template` SET `PrevQuestId`='27408' WHERE (`Id`='27411');

-- Quest 27428 Tabetha's Assistance CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27430' WHERE (`Id`='27428');
UPDATE `quest_template` SET `NextQuestIdChain`='27291' WHERE (`Id`='27430');
UPDATE `quest_template` SET `PrevQuestId`='27428' WHERE (`Id`='27430');
UPDATE `quest_template` SET `PrevQuestId`='27430' WHERE (`Id`='27291');

-- Quest 27291 Peace at Last
DELETE FROM `item_template` WHERE (`entry`='33082');
INSERT INTO `item_template` VALUES (33082, 12, 0, -1, 'Wreath', 18168, 1, 64, 8192, 1, 1, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 52354, 0, 0, 1500, 0, 1500, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13329);
DELETE FROM `conditions` WHERE (`SourceEntry`='52354'); 
INSERT INTO `conditions` VALUES (17, 0, 52354, 0, 0, 30, 0, 186322, 2, 0, 0, 0, 0, '', NULL);
DELETE FROM `spell_scripts` WHERE (`datalong`='23768'); 
DELETE FROM `spell_scripts` WHERE (`datalong`='23769');
INSERT INTO `spell_scripts` VALUES (52354, 0, 0, 10, 23768, 120000, 0, -3532.4, -4316.63, 7.04762, 2.60968);
INSERT INTO `spell_scripts` VALUES (52354, 0, 0, 10, 23769, 120000, 0, -3533.11, -4318.63, 7.05794, 2.49187);

-- Quest 27263 Lieutenant Paval Reethe CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27264' WHERE (`Id`='27263');
UPDATE `quest_template` SET `NextQuestIdChain`='27286' WHERE (`Id`='27264');
UPDATE `quest_template` SET `NextQuestIdChain`='27287' WHERE (`Id`='27286');
UPDATE `quest_template` SET `NextQuestIdChain`='27288' WHERE (`Id`='27287');
UPDATE `quest_template` SET `PrevQuestId`='27263' WHERE (`Id`='27264');
UPDATE `quest_template` SET `PrevQuestId`='27264' WHERE (`Id`='27286');
UPDATE `quest_template` SET `PrevQuestId`='27286' WHERE (`Id`='27287');
UPDATE `quest_template` SET `PrevQuestId`='27287' WHERE (`Id`='27288');

-- Quest 27284 The Black Shield CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27285' WHERE (`Id`='27284');
UPDATE `quest_template` SET `PrevQuestId`='27284' WHERE (`Id`='27285');

-- Quest 27287 The Deserters
UPDATE `creature_template` SET `faction_A`='35' WHERE (`entry`='5089');

-- Quest 27262 / 27259 Suspicious Hoofprints
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27262');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='27259');

-- Quest 27216 This Old Lighthouse CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27217' WHERE (`Id`='27216');
UPDATE `quest_template` SET `NextQuestIdChain`='27218' WHERE (`Id`='27217');
UPDATE `quest_template` SET `NextQuestIdChain`='27219' WHERE (`Id`='27218');
UPDATE `quest_template` SET `NextQuestIdChain`='27220' WHERE (`Id`='27219');
UPDATE `quest_template` SET `NextQuestIdChain`='27221' WHERE (`Id`='27220');
UPDATE `quest_template` SET `NextQuestIdChain`='27222' WHERE (`Id`='27221');
UPDATE `quest_template` SET `PrevQuestId`='27216' WHERE (`Id`='27217');
UPDATE `quest_template` SET `PrevQuestId`='27217' WHERE (`Id`='27218');
UPDATE `quest_template` SET `PrevQuestId`='27218' WHERE (`Id`='27219');
UPDATE `quest_template` SET `PrevQuestId`='27219' WHERE (`Id`='27220');
UPDATE `quest_template` SET `PrevQuestId`='27220' WHERE (`Id`='27221');
UPDATE `quest_template` SET `PrevQuestId`='27221' WHERE (`Id`='27222');

-- Quest 27348 Secure the Cargo!CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='11208' WHERE (`Id`='27348');
UPDATE `quest_template` SET `PrevQuestId`='27348' WHERE (`Id`='11208');

-- Quest 27242 Raptor Captor
DELETE FROM `item_template` WHERE (`entry`='330691');
INSERT INTO `item_template` VALUES (330691, 12, 0, -1, 'Sturdy Rope', 43599, 1, 64, 8192, 1, 1, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 96276, 0, 0, 1500, 0, 1500, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 4, 'A strong, braided leather rope suitable for capturing large creatures.', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13329);
UPDATE `quest_template` SET `SourceItemId`='330691' WHERE (`Id`='27242');
UPDATE `quest_template` SET `RequiredItemId2`='330691' WHERE (`Id`='27242');
UPDATE `smart_scripts` SET `event_param1`='96276' WHERE (`entryorguid`='4351') AND (`source_type`='0') AND (`id`='0') AND (`link`='0');
UPDATE `smart_scripts` SET `event_param1`='96276' WHERE (`entryorguid`='4352') AND (`source_type`='0') AND (`id`='0') AND (`link`='0');

-- Quest 27245 Prisoners of the Grimtotems
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='42323');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('42323', '78967', 'Prisoners of the Grimtotems');
DELETE FROM `spell_scripts` WHERE (`datalong`='23720');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('78967', '8', '23720');

-- Quest 27214 A Disturbing Development CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27234' WHERE (`Id`='27214');
UPDATE `quest_template` SET `NextQuestIdChain`='27235' WHERE (`Id`='27234');
UPDATE `quest_template` SET `NextQuestIdChain`='27236' WHERE (`Id`='27235');
UPDATE `quest_template` SET `NextQuestIdChain`='27237' WHERE (`Id`='27236');
UPDATE `quest_template` SET `PrevQuestId`='27214' WHERE (`Id`='27234');
UPDATE `quest_template` SET `PrevQuestId`='27234' WHERE (`Id`='27235');
UPDATE `quest_template` SET `PrevQuestId`='27235' WHERE (`Id`='27236');
UPDATE `quest_template` SET `PrevQuestId`='27236' WHERE (`Id`='27237');

-- Quest 27235 Renn McGill
DELETE FROM `creature` WHERE (`id`='23569');
INSERT INTO `creature` VALUES (null, 23569, 1, 1, 1, 0, 0, -2623.3, -4322.57, -4.08849, 3.47417, 300, 0, 0, 1093, 1, 0, 0, 0, 0);
DELETE FROM `gameobject` WHERE (`id`='186272');
INSERT INTO `gameobject` VALUES (null, 186272, 1, 1, 1, -2680.96, -4275.51, 3.67788, 1.91121, 0, 0, 0.816663, 0.577115, 300, 0, 1);
DELETE FROM `gameobject` WHERE (`id`='186273');
INSERT INTO `gameobject` VALUES (null, 186273, 1, 1, 1, -2694.25, -4246.75, 4.61097, 6.13665, 0, 0, 0.0732004, -0.997317, 300, 0, 1);

-- Quest 27238 Jaina Must Know CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27239' WHERE (`Id`='27238');
UPDATE `quest_template` SET `PrevQuestId`='27238' WHERE (`Id`='27239');

-- Quest 27239 Survey Alcaz Island  REMOVED PATH FLIGHT MISSING
DELETE FROM `creature_questrelation` WHERE (`id`='4968') AND (`quest`='27239');

-- Quest 27240 Proof of Treachery CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27241' WHERE (`Id`='27240');
UPDATE `quest_template` SET `PrevQuestId`='27240' WHERE (`Id`='27241');

-- Quest 27184 Jarl Needs Eyes CHAIN TIMELINE FIX
UPDATE `quest_template` SET `PrevQuestId`='27183' WHERE (`Id`='27184');

-- Quest 27246 The Orc Report / Quest 27244 The Lost Report
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27246');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='27244');
UPDATE `gameobject_template` SET `flags`='0' WHERE (`entry`='20985');

-- Quest 27188 What's Haunting Witch Hill? CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27189' WHERE (`Id`='27188');
UPDATE `quest_template` SET `NextQuestIdChain`='27190' WHERE (`Id`='27189');
UPDATE `quest_template` SET `PrevQuestId`='27188' WHERE (`Id`='27189');
UPDATE `quest_template` SET `PrevQuestId`='27189' WHERE (`Id`='27190');

-- Fix some undisplayed quests
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='11212');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='1204');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='1258');
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='1204');
UPDATE `quest_template` SET `NextQuestId`='0', `ExclusiveGroup`='0' WHERE (`Id`='1258');

-- Quest 1258 ... and Bugs
DELETE FROM `creature_loot_template` WHERE (`item`='5938');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44390', '5938', '-94');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('1088', '5938', '-2');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('922', '5938', '-0.3');
UPDATE `creature_template` SET `lootid`='44390' WHERE (`entry`='44390');
UPDATE `creature_template` SET `lootid`='1088' WHERE (`entry`='1088');
UPDATE `creature_template` SET `lootid`='922' WHERE (`entry`='922');

-- Quest 27212 Discrediting the Deserters CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27213' WHERE (`Id`='27212');
UPDATE `quest_template` SET `PrevQuestId`='27212' WHERE (`Id`='27213');

-- Quest 27212 Discrediting the Deserters
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='4979');
UPDATE `creature_template` SET `gossip_menu_id`='4979' WHERE (`entry`='4979');

delete from gossip_menu_option where menu_id = 4979;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(4979,0,"You look like an intelligent person. Why don't you read one of these leaflets and give it some thought?",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (4979) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(4979,0,1,2,62,0,100,1,4979,0,0,0,33,4979,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(4979,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(4979,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");

update smart_scripts set event_flags = 0 WHERE entryorguid IN (4979) AND source_type = 0;

-- Quest 27212 Discrediting the Deserters
DELETE FROM `creature` WHERE (`id`='23941');
INSERT INTO `creature` VALUES (null, 23941, 1, 1, 1, 4839, 0, -4026.57, -4975.82, 8.21533, 5.14872, 600, 10, 0, 1305, 1186, 0, 1, 0, 0);

-- Quest 26596 The Call of Kalimdor CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26702' WHERE (`Id`='26596');
UPDATE `quest_template` SET `NextQuestIdChain`='27210' WHERE (`Id`='26702');
UPDATE `quest_template` SET `NextQuestIdChain`='27210' WHERE (`Id`='28552');
UPDATE `quest_template` SET `NextQuestIdChain`='27211' WHERE (`Id`='27210');
UPDATE `quest_template` SET `PrevQuestId`='26596' WHERE (`Id`='26702');
UPDATE `quest_template` SET `PrevQuestId`='26596' WHERE (`Id`='28552');
UPDATE `quest_template` SET `PrevQuestId`='26702' WHERE (`Id`='27210');
UPDATE `quest_template` SET `PrevQuestId`='27210' WHERE (`Id`='27211');

-- Quest 27210 Traitors Among Us
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='23602');
UPDATE `creature_template` SET `gossip_menu_id`='23602' WHERE (`entry`='23602');

delete from gossip_menu_option where menu_id = 23602;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(23602,0,"Your propaganda won't work on me. Spout your treasonous filth elsewhere, traitor!",1,1);

DELETE FROM smart_scripts WHERE entryorguid IN (23602) AND source_type = 0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(23602,0,1,2,62,0,100,1,23602,0,0,0,33,23602,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(23602,0,2,5,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(23602,0,5,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");

update smart_scripts set event_flags = 0 WHERE entryorguid IN (23602) AND source_type = 0;

-- Quest 6625 Alliance Trauma
UPDATE `quest_template` SET `NextQuestIdChain`='6624' WHERE (`Id`='6625');
UPDATE `quest_template` SET `PrevQuestId`='6625' WHERE (`Id`='6624');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='6625');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='6624');









