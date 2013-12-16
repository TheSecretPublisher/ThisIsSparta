-- Quest 25513 / 25591 Thunderdrome: Grudge Match!
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='25591');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='25513');

UPDATE `quest_template` SET `NextQuestIdChain`='25094' WHERE (`Id`='25067');
UPDATE `quest_template` SET `NextQuestIdChain`='25095' WHERE (`Id`='25094');
UPDATE `quest_template` SET `PrevQuestId`='25067' WHERE (`Id`='25094');
UPDATE `quest_template` SET `PrevQuestId`='25094' WHERE (`Id`='25095');
UPDATE `quest_template` SET `PrevQuestId`='25095' WHERE (`Id`='25591');
UPDATE `quest_template` SET `PrevQuestId`='25095' WHERE (`Id`='25513');

-- Quest 25591 Thunderdrome: Grudge Match! HORDE
UPDATE `creature_template` SET `faction_H`='14', `faction_A`='14', `baseattacktime`='2000', `rangeattacktime`='2000', `unit_class`='1', `unit_flags`='576', `minlevel`='50', `maxlevel`='50' WHERE (`entry`='40547');

-- Quest 25513 Thunderdrome: Grudge Match! ALLIANCE
UPDATE `creature_template` SET `faction_H`='14', `faction_A`='14', `baseattacktime`='2000', `rangeattacktime`='2000', `unit_class`='1', `unit_flags`='576', `minlevel`='50', `maxlevel`='50' WHERE (`entry`='40547');

-- Quest 25112 Butcherbot CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25111' WHERE (`Id`='25112');
UPDATE `quest_template` SET `NextQuestIdChain`='25115' WHERE (`Id`='25111');
UPDATE `quest_template` SET `NextQuestIdChain`='25091' WHERE (`Id`='25115');
UPDATE `quest_template` SET `PrevQuestId`='25112' WHERE (`Id`='25111');
UPDATE `quest_template` SET `PrevQuestId`='25111' WHERE (`Id`='25115');
UPDATE `quest_template` SET `PrevQuestId`='25115' WHERE (`Id`='25091');

-- Quest 25112 Butcherbot
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='5419');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='5419');
INSERT INTO `smart_scripts` VALUES (5419, 0, 0, 0, 8, 0, 100, 0, 74175, 0, 0, 0, 33, 39702, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `smart_scripts` VALUES (5419, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Quest 25111 Scavengers Scavenged
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='5429');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='5429');
INSERT INTO `smart_scripts` VALUES (5429, 0, 1, 2, 8, 0, 100, 0, 74175, 0, 0, 0, 33, 40507, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `smart_scripts` VALUES (5429, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Quest 25115 Blisterpaw Butchery
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='5426');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='5426');
INSERT INTO `smart_scripts` VALUES (5426, 0, 1, 2, 8, 0, 100, 0, 74175, 0, 0, 0, 33, 40509, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `smart_scripts` VALUES (5426, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '');

-- Quest 25021 Blood to Thrive CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25025' WHERE (`Id`='25021');
UPDATE `quest_template` SET `NextQuestIdChain`='25026' WHERE (`Id`='25025');
UPDATE `quest_template` SET `NextQuestIdChain`='25032' WHERE (`Id`='25026');
UPDATE `quest_template` SET `NextQuestIdChain`='25556' WHERE (`Id`='25032');
UPDATE `quest_template` SET `NextQuestIdChain`='27068' WHERE (`Id`='25556');
UPDATE `quest_template` SET `PrevQuestId`='25021' WHERE (`Id`='25025');
UPDATE `quest_template` SET `PrevQuestId`='25025' WHERE (`Id`='25026');
UPDATE `quest_template` SET `PrevQuestId`='25026' WHERE (`Id`='25032');
UPDATE `quest_template` SET `PrevQuestId`='25032' WHERE (`Id`='25556');
UPDATE `quest_template` SET `PrevQuestId`='25556' WHERE (`Id`='27068');

UPDATE `creature_template_addon` SET `auras`='0' WHERE (`entry`='38927');
DELETE FROM `creature_loot_template` WHERE (`entry`='5647') AND (`item`='52064');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('5647', '52064', '-56');
DELETE FROM `creature_loot_template` WHERE (`entry`='5646') AND (`item`='52064');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('5646', '52064', '-54');
DELETE FROM `creature_loot_template` WHERE (`entry`='5645') AND (`item`='52064');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('5645', '52064', '-53');

-- Quest 25025 Sang'thraze the Deflector
DELETE FROM `creature_loot_template` WHERE (`entry`='40648') AND (`item`='52069');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('40648', '52069', '-72');
UPDATE `creature_template` SET `lootid`='40648' WHERE (`entry`='40648');

-- Quest 25026 Darkest Mojo
DELETE FROM `creature_loot_template` WHERE (`entry`='38909') AND (`item`='52072');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('38909', '52072', '-61');
UPDATE `creature_template` SET `lootid`='38909' WHERE (`entry`='38909');
DELETE FROM `creature_loot_template` WHERE (`entry`='44557') AND (`item`='52072');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44557', '52072', '-63');
UPDATE `creature_template` SET `lootid`='44557' WHERE (`entry`='44557');
UPDATE `creature_template` SET `faction_H`='14', `faction_A`='14' WHERE (`entry`='44557');

-- Quest 25032 Secrets in the Oasis
UPDATE `creature_template` SET `faction_H`='14', `faction_A`='14', `KillCredit1`='39159' WHERE (`entry`='38968');
DELETE FROM `spell_scripts` WHERE (`datalong`='38968');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('45320', '10', '38968', '120000', '-7440.62', '-2876.61', '8.17937', '3.3892');
DELETE FROM `gameobject_template` WHERE (`entry`='2032480');
INSERT INTO `gameobject_template` VALUES (2032480, 10, 768, 'Jang thraze the Protector', '', 'Blowing', '', 0, 32, 0.5, 0, 0, 0, 0, 0, 0, 1690, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 45320, 0, 0, 1, 41278, 0, 0, 0, 0, 0, 0, 0, 9692, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
UPDATE `gameobject` SET `id`='2032480' WHERE (`id`='202441');
DELETE FROM `creature` WHERE (`id`='39159');

-- Quest 25556 Into Zul'Farrak
DELETE FROM `creature` WHERE (`id`='40712');
INSERT INTO `creature` VALUES (null, 40712, 209, 1, 1, 0, 0, 1226.29, 848.524, 9.91962, 4.30165, 300, 0, 0, 1294, 1, 0, 0, 0, 0);

-- Quest 25521 I'm With Scorpid
DELETE FROM `creature_loot_template` WHERE (`entry`='40717') AND (`item`='54856');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('40717', '54856', '-48');
UPDATE `creature_template` SET `lootid`='40717' WHERE (`entry`='40717');
DELETE FROM `creature_loot_template` WHERE (`entry`='40656') AND (`item`='54856');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('40656', '54856', '-50');
UPDATE `creature_template` SET `lootid`='40656' WHERE (`entry`='40656');

-- Quest 25522 Gargantapid
DELETE FROM `creature_loot_template` WHERE (`entry`='40581') AND (`item`='54855');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('40581', '54855', '-92');
UPDATE `creature_template` SET `lootid`='40581' WHERE (`entry`='40581');

-- Quest 24905 Returning a Favor CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24955' WHERE (`Id`='24905');
UPDATE `quest_template` SET `PrevQuestId`='24905' WHERE (`Id`='24955');
-- Horde Chain
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='24905');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='24955');

-- Quest 24957 Get The Centipaarty Started CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24963' WHERE (`Id`='24957');
UPDATE `quest_template` SET `NextQuestIdChain`='25001' WHERE (`Id`='24963');
UPDATE `quest_template` SET `PrevQuestId`='24957' WHERE (`Id`='24963');
UPDATE `quest_template` SET `PrevQuestId`='24963' WHERE (`Id`='25001');
-- Horde Chain
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='24957');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='24963');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='25001');

-- Quest 25014 Sandscraper's Treasure CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25018' WHERE (`Id`='25014');
UPDATE `quest_template` SET `PrevQuestId`='25014' WHERE (`Id`='25018');
-- Horde Chain
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='25014');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='25018');

-- Quest 24957 Get The Centipaarty Started
DELETE FROM `creature_loot_template` WHERE (`entry`='5455') AND (`item`='52041');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('5455', '52041', '-87');
DELETE FROM `creature_loot_template` WHERE (`entry`='5458') AND (`item`='52041');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('5458', '52041', '-81');
DELETE FROM `creature_loot_template` WHERE (`entry`='5460') AND (`item`='52041');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('5460', '52041', '-77');
DELETE FROM `creature_loot_template` WHERE (`entry`='5459') AND (`item`='52041');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('5459', '52041', '-39');

-- Quest 24963 Maul 'Em With Kindness
DELETE FROM `smart_scripts` WHERE `entryorguid` IN(5471, 5472, 5473, 5474, 5475);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='5471');
INSERT INTO `smart_scripts` VALUES (5471, 0, 0, 0, 8, 0, 100, 0, 73068, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''); -- change faction when spell casted
INSERT INTO `smart_scripts` VALUES (5471, 0, 1, 1, 8, 0, 100, 0, 73068, 0, 0, 0, 33, 39073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- give credit
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='5472');
INSERT INTO `smart_scripts` VALUES (5472, 0, 0, 0, 8, 0, 100, 0, 73068, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''); -- change faction when spell casted
INSERT INTO `smart_scripts` VALUES (5472, 0, 1, 1, 8, 0, 100, 0, 73068, 0, 0, 0, 33, 39073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- give credit
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='5473');
INSERT INTO `smart_scripts` VALUES (5473, 0, 0, 0, 8, 0, 100, 0, 73068, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''); -- change faction when spell casted
INSERT INTO `smart_scripts` VALUES (5473, 0, 1, 1, 8, 0, 100, 0, 73068, 0, 0, 0, 33, 39073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- give credit
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='5474');
INSERT INTO `smart_scripts` VALUES (5474, 0, 0, 0, 8, 0, 100, 0, 73068, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''); -- change faction when spell casted
INSERT INTO `smart_scripts` VALUES (5474, 0, 1, 1, 8, 0, 100, 0, 73068, 0, 0, 0, 33, 39073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- give credit
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='5475');
INSERT INTO `smart_scripts` VALUES (5475, 0, 0, 0, 8, 0, 100, 0, 73068, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, ''); -- change faction when spell casted
INSERT INTO `smart_scripts` VALUES (5475, 0, 1, 1, 8, 0, 100, 0, 73068, 0, 0, 0, 33, 39073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''); -- give credit

-- Quest 25014 Sandscraper's Treasure
UPDATE `gameobject_template` SET `faction`='35', `flags`='0' WHERE (`entry`='202407');

-- Quest 25069 The Secrets of Uldum CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25070' WHERE (`Id`='25069');
UPDATE `quest_template` SET `NextQuestIdChain`='25070' WHERE (`Id`='25566');

-- Quest 25421 / 25107 The Grand Tablet
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='25107');
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='25421');

-- Quest 25019 Laying Claim CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='25017' WHERE (`Id`='25019');
UPDATE `quest_template` SET `NextQuestIdChain`='25017' WHERE (`Id`='25020');
UPDATE `quest_template` SET `PrevQuestId`='25019' WHERE (`Id`='25017');

-- Quest 25068 The Crumbling Past
DELETE FROM `creature_loot_template` WHERE (`entry`='38916') AND (`item`='52284');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('38916', '52284', '-82');
UPDATE `creature_template` SET `lootid`='38916' WHERE (`entry`='38916');

-- Quest 24955 Un-Chartered
UPDATE `creature_template` SET `gossip_menu_id`='5472' WHERE (`entry`='5472');
UPDATE `creature_template` SET `gossip_menu_id`='5471' WHERE (`entry`='5471');
UPDATE `creature_template` SET `gossip_menu_id`='5473' WHERE (`entry`='5473');
UPDATE `creature_template` SET `gossip_menu_id`='5474' WHERE (`entry`='5474');
UPDATE `creature_template` SET `gossip_menu_id`='5475' WHERE (`entry`='5475');
delete from gossip_menu_option where menu_id = 5472;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(5472,0," You sign charter! Is good!",1,1);
delete from gossip_menu_option where menu_id = 5471;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(5471,0," You sign charter! Is good!",1,1);
delete from gossip_menu_option where menu_id = 5473;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(5473,0," You sign charter! Is good!",1,1);
delete from gossip_menu_option where menu_id = 5474;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(5474,0," You sign charter! Is good!",1,1);
delete from gossip_menu_option where menu_id = 5475;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(5475,0," You sign charter! Is good!",1,1);
DELETE FROM smart_scripts WHERE event_param1 IN (5471) AND source_type = 0;
DELETE FROM smart_scripts WHERE entryorguid IN (5471) AND comment = "Chiude gossip";
DELETE FROM smart_scripts WHERE entryorguid IN (5471) AND comment = "Frase";
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(5471,0,2,3,62,0,100,1,5471,0,0,0,33,38848,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(5471,0,3,6,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(5471,0,6,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='5471');

DELETE FROM smart_scripts WHERE event_param1 IN (5472) AND source_type = 0;
DELETE FROM smart_scripts WHERE entryorguid IN (5472) AND comment = "Chiude gossip";
DELETE FROM smart_scripts WHERE entryorguid IN (5472) AND comment = "Frase";
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(5472,0,2,3,62,0,100,1,5472,0,0,0,33,38848,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(5472,0,3,6,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(5472,0,6,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='5472');

DELETE FROM smart_scripts WHERE event_param1 IN (5473) AND source_type = 0;
DELETE FROM smart_scripts WHERE entryorguid IN (5473) AND comment = "Chiude gossip";
DELETE FROM smart_scripts WHERE entryorguid IN (5473) AND comment = "Frase";
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(5473,0,2,3,62,0,100,1,5473,0,0,0,33,38848,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(5473,0,3,6,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(5473,0,6,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='5473');

DELETE FROM smart_scripts WHERE event_param1 IN (5474) AND source_type = 0;
DELETE FROM smart_scripts WHERE entryorguid IN (5474) AND comment = "Chiude gossip";
DELETE FROM smart_scripts WHERE entryorguid IN (5474) AND comment = "Frase";
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(5474,0,2,3,62,0,100,1,5474,0,0,0,33,38848,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(5474,0,3,6,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(5474,0,6,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='5474');

DELETE FROM smart_scripts WHERE event_param1 IN (5475) AND source_type = 0;
DELETE FROM smart_scripts WHERE entryorguid IN (5475) AND comment = "Chiude gossip";
DELETE FROM smart_scripts WHERE entryorguid IN (5475) AND comment = "Frase";
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, COMMENT) VALUES
(5475,0,2,3,62,0,100,1,5475,0,0,0,33,38848,0,0,0,0,0,7,0,0,0,0,0,0,0,"Party credit"),
(5475,0,3,6,61,0,100,1,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Chiude gossip"),
(5475,0,6,0,61,0,100,1,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frase");
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='5475');

-- Quest 25061 Land's End
UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='25061');

-- Quest 24931 Gazer Tag
DELETE FROM `creature_loot_template` WHERE (`entry`='5420') AND (`item`='51793');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('5420', '51793', '-40');
UPDATE `creature_template` SET `lootid`='5420' WHERE (`entry`='5420');

-- Quest 24932 Cutting Losses CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='24933' WHERE (`Id`='24932');
UPDATE `quest_template` SET `NextQuestIdChain`='24951' WHERE (`Id`='24933');
UPDATE `quest_template` SET `NextQuestIdChain`='24953' WHERE (`Id`='24951');
UPDATE `quest_template` SET `PrevQuestId`='24932' WHERE (`Id`='24933');
UPDATE `quest_template` SET `PrevQuestId`='24933' WHERE (`Id`='24951');
UPDATE `quest_template` SET `PrevQuestId`='24951' WHERE (`Id`='24953');

-- Quest 25072 A Few Good Goblins
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='39081');
DELETE FROM `smart_scripts` WHERE (`EntryorGuid`='39081');
INSERT INTO `smart_scripts` VALUES (39081, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 12, 39082, 6, 60000, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast Summon Freed Goblin on Death');

-- Quest 24933 Chicken of the Desert
DELETE FROM `creature_loot_template` WHERE (`entry`='5427') AND (`item`='51778');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('5427', '51778', '-41');
UPDATE `creature_template` SET `lootid`='5427' WHERE (`entry`='5427');

-- Quest 24951 A Great Idea
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='72659');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('72659', '72976', 'AGreatIdea1');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='72976');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('72976', '85933', 'AGreatIdea2');
DELETE FROM `spell_scripts` WHERE (`datalong`='38742');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('85933', '8', '38742');
DELETE FROM `conditions` WHERE (`SourceEntry`='72659');
INSERT INTO `conditions` VALUES (17, 0, 72659, 0, 0, 29, 0, 5451, 15, 0, 0, 0, 0, '', 'Spell can be used only near mob');

-- Quest 24953 Just Trying to Kill Some Bugs AUTOCOMPLETE
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='24953');

-- Quest 24927 Dead Man's Chest CHAIN TIMELINE FIX HORDE
UPDATE `quest_template` SET `NextQuestIdChain`='24928' WHERE (`Id`='24927');
UPDATE `quest_template` SET `NextQuestIdChain`='24928' WHERE (`Id`='24949');
UPDATE `quest_template` SET `NextQuestIdChain`='24950' WHERE (`Id`='24928');
UPDATE `quest_template` SET `NextQuestIdChain`='24950' WHERE (`Id`='25534');
UPDATE `quest_template` SET `NextQuestIdChain`='24950' WHERE (`Id`='25541');
UPDATE `quest_template` SET `NextQuestIdChain`='25103' WHERE (`Id`='24950');
UPDATE `quest_template` SET `PrevQuestId`='24927' WHERE (`Id`='24928');
UPDATE `quest_template` SET `PrevQuestId`='24927' WHERE (`Id`='25534');
UPDATE `quest_template` SET `PrevQuestId`='24927' WHERE (`Id`='25541');
UPDATE `quest_template` SET `PrevQuestId`='24928' WHERE (`Id`='24950');
UPDATE `quest_template` SET `PrevQuestId`='24950' WHERE (`Id`='25103');
DELETE FROM `creature` WHERE (`id`='38703');
INSERT INTO `creature` VALUES (null, 38703, 1, 1, 1, 0, 0, -7956.64, -5242.72, 1.42216, 5.53626, 300, 0, 0, 126, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `faction_A`='14' WHERE (`entry`='38703');

-- Quest 25541 Filling Our Pockets
DELETE FROM `creature_loot_template` WHERE (`entry`='40632') AND (`item`='54829');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('40632', '54829', '-38');
UPDATE `creature_template` SET `lootid`='40632' WHERE (`entry`='40632');
DELETE FROM `creature_loot_template` WHERE (`entry`='40635') AND (`item`='54829');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('40635', '54829', '-38');
UPDATE `creature_template` SET `lootid`='40635' WHERE (`entry`='40635');
UPDATE `creature_loot_template` SET `maxcount`='3' WHERE (`entry`='40632') AND (`item`='54829');
UPDATE `creature_loot_template` SET `maxcount`='3' WHERE (`entry`='40635') AND (`item`='54829');

-- Quest 24928 To The Ground!
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='38660');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='38660');
INSERT INTO `smart_scripts` VALUES (38660, 0, 1, 2, 8, 0, 100, 0, 72520, 0, 0, 0, 33, 38660, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='38662');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='38662');
INSERT INTO `smart_scripts` VALUES (38662, 0, 1, 2, 8, 0, 100, 0, 72520, 0, 0, 0, 33, 38662, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='38665');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='38665');
INSERT INTO `smart_scripts` VALUES (38665, 0, 1, 2, 8, 0, 100, 0, 72520, 0, 0, 0, 33, 38665, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `creature` WHERE (`id`='38662');
INSERT INTO `creature` VALUES (null, 38662, 1, 1, 1, 0, 0, -8069.89, -5249.73, 1.79446, 3.41613, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='38660');
INSERT INTO `creature` VALUES (null, 38660, 1, 1, 1, 0, 0, -8013.95, -5229.82, 2.21005, 1.9278, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='38665');
INSERT INTO `creature` VALUES (null, 38665, 1, 1, 1, 0, 0, -7989.42, -5325.74, 1.57805, 6.2082, 300, 0, 0, 42, 0, 0, 0, 0, 0);

-- Quest 27003 Easy Money REMOVED CINEMATIC AND INTERACTION
DELETE FROM `creature_questrelation` WHERE (`id`='44833') AND (`quest`='27003');

-- Quest 10279 To The Master's Lair CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='10277' WHERE (`Id`='10279');
UPDATE `quest_template` SET `PrevQuestId`='10279' WHERE (`Id`='10277');

-- Quest 10282 Old Hillsbrad CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='29598' WHERE (`Id`='10282');
UPDATE `quest_template` SET `NextQuestIdChain`='29599' WHERE (`Id`='29598');
UPDATE `quest_template` SET `PrevQuestId`='10282' WHERE (`Id`='29598');
UPDATE `quest_template` SET `PrevQuestId`='29598' WHERE (`Id`='29599');

-- Quest 10296 The Black Morass CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='10297' WHERE (`Id`='10296');
UPDATE `quest_template` SET `PrevQuestId`='10296' WHERE (`Id`='10297');

-- Quest 24910 Rocket Rescue REMOVED VEHICLE INTERACTION HORDE
DELETE FROM `creature_questrelation` WHERE (`id`='38534') AND (`quest`='24910');

-- Quest 25050 Rocket Rescue REMOVED VEHICLE INTERACTION ALLIANCE
DELETE FROM `creature_questrelation` WHERE (`id`='38535') AND (`quest`='25050');

-- Quest 25052 Dead Man's Chest CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='25053' WHERE (`Id`='25052');
UPDATE `quest_template` SET `NextQuestIdChain`='25053' WHERE (`Id`='25054');
UPDATE `quest_template` SET `NextQuestIdChain`='25166' WHERE (`Id`='25053');
UPDATE `quest_template` SET `NextQuestIdChain`='25166' WHERE (`Id`='26886');
UPDATE `quest_template` SET `NextQuestIdChain`='25166' WHERE (`Id`='26887');
UPDATE `quest_template` SET `NextQuestIdChain`='26889' WHERE (`Id`='25166');
UPDATE `quest_template` SET `PrevQuestId`='25052' WHERE (`Id`='25053');
UPDATE `quest_template` SET `PrevQuestId`='25052' WHERE (`Id`='26886');
UPDATE `quest_template` SET `PrevQuestId`='25052' WHERE (`Id`='26887');
UPDATE `quest_template` SET `PrevQuestId`='25053' WHERE (`Id`='25166');
UPDATE `quest_template` SET `PrevQuestId`='25166' WHERE (`Id`='26889');
UPDATE `creature_template` SET `faction_H`='14' WHERE (`entry`='38704');
DELETE FROM `creature` WHERE (`id`='38704');
INSERT INTO `creature` VALUES (null, 38704, 1, 1, 1, 0, 0, -7943.73, -5267.78, 0.759031, 1.85919, 300, 0, 0, 126, 0, 0, 0, 0, 0);


-- Quest 25061 Land's End
DELETE FROM `creature` WHERE (`id`='39059');
INSERT INTO `creature` VALUES (null, 39059, 1, 1, 1, 0, 0, -9757.18, -3665.77, 10.8996, 1.38911, 300, 0, 0, 126, 0, 0, 0, 0, 0);

-- Quest 25063 Terrapination CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='25065' WHERE (`Id`='25063');
UPDATE `quest_template` SET `NextQuestIdChain`='28881' WHERE (`Id`='25065');
UPDATE `quest_template` SET `NextQuestIdChain`='25420' WHERE (`Id`='28881');
UPDATE `quest_template` SET `PrevQuestId`='25063' WHERE (`Id`='25065');
UPDATE `quest_template` SET `PrevQuestId`='25065' WHERE (`Id`='28881');
UPDATE `quest_template` SET `PrevQuestId`='28881' WHERE (`Id`='25420');

-- Quest 25063 Terrapination
DELETE FROM `creature_loot_template` WHERE (`entry`='5431') AND (`item`='52282');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('5431', '52282', '-16');

-- Quest 25065 You Too, Brute?
DELETE FROM `creature_loot_template` WHERE (`entry`='39061') AND (`item`='52281');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('39061', '52281', '-83');
UPDATE `creature_template` SET `lootid`='39061' WHERE (`entry`='39061');