-- Quest 26657 Hard Falls CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26658' WHERE (`Id`='26657');
UPDATE `quest_template` SET `NextQuestIdChain`='26584' WHERE (`Id`='26658');
UPDATE `quest_template` SET `NextQuestIdChain`='26659' WHERE (`Id`='26584');
UPDATE `quest_template` SET `NextQuestIdChain`='26750' WHERE (`Id`='26659');
UPDATE `quest_template` SET `NextQuestIdChain`='26752' WHERE (`Id`='26750');
UPDATE `quest_template` SET `NextQuestIdChain`='26827' WHERE (`Id`='26752');
UPDATE `quest_template` SET `NextQuestIdChain`='26828' WHERE (`Id`='26827');
UPDATE `quest_template` SET `PrevQuestId`='26657' WHERE (`Id`='26658');
UPDATE `quest_template` SET `PrevQuestId`='26658' WHERE (`Id`='26584');
UPDATE `quest_template` SET `PrevQuestId`='26584' WHERE (`Id`='26659');
UPDATE `quest_template` SET `PrevQuestId`='26659' WHERE (`Id`='26750');
UPDATE `quest_template` SET `PrevQuestId`='26750' WHERE (`Id`='26752');
UPDATE `quest_template` SET `PrevQuestId`='26752' WHERE (`Id`='26827');
UPDATE `quest_template` SET `PrevQuestId`='26827' WHERE (`Id`='26828');

-- Quest 26658 Fragile Values
UPDATE `creature_template` SET `lootid`='43598' WHERE (`entry`='43598');
DELETE FROM `creature_loot_template` WHERE (`entry`='43598') AND (`item`='59323');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43598', '59323', '-95');

-- Quest 26313 Core of Our Troubles
UPDATE `creature_template` SET `lootid`='42527' WHERE (`entry`='42527');
DELETE FROM `creature_loot_template` WHERE (`entry`='42527') AND (`item`='58168');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('42527', '58168', '-90');
UPDATE `creature_template` SET `lootid`='42780' WHERE (`entry`='42780');
DELETE FROM `creature_loot_template` WHERE (`entry`='42780') AND (`item`='58168');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('42780', '58168', '-70');
UPDATE `creature_template` SET `unit_flags2`='0' WHERE (`entry`='42527');

-- Quest 26315 Imposing Confrontation CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26328' WHERE (`Id`='26315');
UPDATE `quest_template` SET `PrevQuestId`='26315' WHERE (`Id`='26328');

-- Quest 26315 Imposing Confrontation
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42471');
DELETE FROM smart_scripts WHERE entryorguid IN (42471);
INSERT INTO `smart_scripts` VALUES (42471, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 84, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42471, 0, 2, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42471, 0, 3, 0, 1, 1, 100, 1, 8500, 9500, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42471, 0, 4, 0, 1, 1, 100, 1, 11500, 12500, 0, 0, 11, 79843, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'Kick and credit');

DELETE FROM `creature_text` WHERE (`entry`='42471') AND (`groupid`='1') AND (`id`='0');
DELETE FROM `creature_text` WHERE (`entry`='42471') AND (`groupid`='2') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42471','1','0','Hah! Did you mistake me for Diamant, $race ? Or perhaps some other wimpering, compliant stone trogg who cares? ','12','0','100','0','0','0','Life party'),
('42471','2','0','Borden the Imposing, I come on behalf of the Earthen Ring. We wish your kind no harm. We seek to repair the rift between our worlds. Why do you attack us? ','12','0','100','0','0','0','Life party');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='79715');
INSERT INTO `spell_linked_spell` VALUES (79715, 62464, 0, 'spell hit bunny');

-- Quest 26376 Hatred Runs Deep CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26426' WHERE (`Id`='26376');
UPDATE `quest_template` SET `NextQuestIdChain`='26426' WHERE (`Id`='26377');
UPDATE `quest_template` SET `NextQuestIdChain`='26869' WHERE (`Id`='26426');
UPDATE `quest_template` SET `NextQuestIdChain`='26871' WHERE (`Id`='26869');
UPDATE `quest_template` SET `PrevQuestId`='26376' WHERE (`Id`='26426');
UPDATE `quest_template` SET `PrevQuestId`='26426' WHERE (`Id`='26869');
UPDATE `quest_template` SET `PrevQuestId`='26869' WHERE (`Id`='26871');

-- Quest 26377 Unsolid Ground
UPDATE `creature_template` SET `modelid1`='33760' WHERE (`entry`='43031');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='80524') AND (`spell_effect`='80389');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('80524', '80389', 'shattered ground');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='43031');

-- Quest 26426 Violent Gale
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26426');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42468');
DELETE FROM smart_scripts WHERE entryorguid IN (42468) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (42468, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 44281, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (42468, 0, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, 44281, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'credit');

DELETE FROM `creature_template` WHERE (`entry`='341746');
INSERT INTO `creature_template` VALUES (341746, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Entrance bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341746');
INSERT INTO `creature_template_addon` VALUES (341746, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341746');
INSERT INTO `creature` VALUES (null, 341746, 646, 1, 1, 0, 0, 1922.09, 65.3932, -154.59, 1.086, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM smart_scripts WHERE entryorguid IN (341746) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341746, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 44282, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 26869 Depth of the Depths
UPDATE `gameobject_template` SET `faction`='35', `flags`='0' WHERE (`entry`='204959');

-- Quest 26375 Loose Stones
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42900');
DELETE FROM smart_scripts WHERE entryorguid IN (42900);
INSERT INTO `smart_scripts` VALUES (42900, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 42900, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0,'Credit');
INSERT INTO `smart_scripts` VALUES (42900, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='80351');
INSERT INTO `spell_linked_spell` VALUES (80351, 62464, 0, 'spell despawn');

-- Quest 26437 Making Things Crystal Clear
UPDATE `creature_template` SET `lootid`='42524' WHERE (`entry`='42524');
DELETE FROM `creature_loot_template` WHERE (`entry`='42524') AND (`item`='58845');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('42524', '58845', '-20');

-- Quest 26507 Petrified Delicacies - removed crash server
DELETE FROM `creature_questrelation` WHERE (`id`='42469') AND (`quest`='26507');

-- Quest 26576 Steady Hand CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26656' WHERE (`Id`='26576');
UPDATE `quest_template` SET `PrevQuestId`='26576' WHERE (`Id`='26656');

-- Quest 26656 Don't. Stop. Moving.
UPDATE `creature_template` SET `modelid2`='0', `modelid3`='0' WHERE (`entry`='43591');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42466');
DELETE FROM smart_scripts WHERE entryorguid IN (42466);
INSERT INTO `smart_scripts` VALUES (42466, 0, 1, 2, 62, 0, 100, 0, 42466,0,0,0,86, 81535, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 1 guardian');
INSERT INTO `smart_scripts` VALUES (42466, 0, 2, 3, 61, 0, 100, 0, 0,0,0,0,86, 81535, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 2 guardian');
INSERT INTO `smart_scripts` VALUES (42466, 0, 3, 4, 61, 0, 100, 0, 0,0,0,0,86, 81535, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 3 guardian');
INSERT INTO `smart_scripts` VALUES (42466, 0, 4, 5, 61, 0, 100, 0, 0,0,0,0,86, 81535, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 4 guardian');
INSERT INTO `smart_scripts` VALUES (42466, 0, 5, 6, 61, 0, 100, 0, 0,0,0,0,86, 81535, 0, 0, 0, 0, 0, 21, 2, 0, 0, 0, 0, 0, 0, 'summon 5 guardian');
INSERT INTO `smart_scripts` VALUES (42466, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (42466, 0, 7, 0, 61, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42466, 0, 8, 0, 62, 0, 100, 0, 42466,0,0,0,12, 43181, 6, 60, 0, 0, 0, 8, 0, 0, 0, 2139.40, 1018.56, 132.00, 1, 'summon mob aggro activator');

UPDATE `creature_template` SET `gossip_menu_id`='42466' WHERE (`entry`='42466');

delete from gossip_menu_option where menu_id = 42466;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(42466,0,"I am ready to escort a group of elementals across the open",1,1);

DELETE FROM `creature_text` WHERE (`entry`='42466') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42466','1','0','Be Swift. The stone dragons will not give up easily ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='26656');
INSERT INTO `conditions` VALUES (15, 42466, 0, 0, 0, 9, 0, 26656, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');

UPDATE `creature_template` SET `dynamicflags`='0' WHERE (`entry`='44124');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44124');
DELETE FROM smart_scripts WHERE entryorguid IN (44124);
INSERT INTO `smart_scripts` VALUES (44124, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 43597, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'credit');
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0', `dynamicflags`='0' WHERE (`entry`='44124');
UPDATE `creature_template` SET `Health_mod`='13.54', `minlevel`='84', `maxlevel`='84' WHERE (`entry`='43591');

DELETE FROM `creature` WHERE (`id`='44124');
INSERT INTO `creature` VALUES (null, 44124, 646, 1, 1, 0, 0, 2308.68, 469.198, 165.235, 0.259987, 300, 0, 0, 58080, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44124, 646, 1, 1, 0, 0, 2316.97, 456.589, 166.563, 0.927579, 300, 0, 0, 58080, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44124, 646, 1, 1, 0, 0, 2330.79, 458.033, 166.33, 1.86613, 300, 0, 0, 58080, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44124, 646, 1, 1, 0, 0, 2343.9, 465.362, 165.722, 2.03108, 300, 0, 0, 58080, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44124, 646, 1, 1, 0, 0, 2327.22, 483.104, 163.066, 4.70536, 300, 0, 0, 58080, 0, 0, 0, 0, 0);

-- Quest 26659 Resonating Blow
DELETE FROM `creature` WHERE (`id`='42466');
DELETE FROM `creature` WHERE (`id`='43641');
INSERT INTO `creature` VALUES (null, 42466, 646, 1, 1, 0, 0, 2150.81, 1021.44, 133.62, 4.21351, 300, 0, 0, 697250, 0, 0, 0, 0, 0);
UPDATE `gameobject_template` SET `faction`='35', `flags`='0' WHERE (`entry`='204837');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='82260') AND (`spell_effect`='45320');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('82260', '45320', 'summon creature');
DELETE FROM `spell_scripts` WHERE (`datalong`='43641');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('45320', '10', '43641', '120000', '1952.63', '1397.09', '182', '5.64');
UPDATE `creature_template` SET `unit_flags`='0', `type_flags`='0' WHERE (`entry`='44124');

-- Quest 26752 Audience with the Stonemother
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42465');
DELETE FROM smart_scripts WHERE entryorguid IN (42465);
INSERT INTO `smart_scripts` VALUES (42465, 0, 1, 0, 19, 0, 100, 0, 26752, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42465, 0, 2, 0, 19, 0, 100, 0, 26752, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42465, 0, 3, 0, 1, 1, 100, 1, 8500, 9500, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42465, 0, 4, 0, 1, 1, 100, 1, 11500, 12500, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42465, 0, 5, 0, 1, 1, 100, 1, 14500, 15500, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42465, 0, 6, 7, 1, 1, 100, 1, 17500, 18500, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42465, 0, 7, 0, 61, 1, 100, 1, 0, 0, 0, 0, 33, 44051, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'Frase');

DELETE FROM `creature_text` WHERE (`entry`='42465') AND (`groupid`='1') AND (`id`='0');
DELETE FROM `creature_text` WHERE (`entry`='42465') AND (`groupid`='2') AND (`id`='0');
DELETE FROM `creature_text` WHERE (`entry`='42465') AND (`groupid`='3') AND (`id`='0');
DELETE FROM `creature_text` WHERE (`entry`='42465') AND (`groupid`='4') AND (`id`='0');
DELETE FROM `creature_text` WHERE (`entry`='42465') AND (`groupid`='5') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42465','1','0','And so the "champion" arrives. ','12','0','100','0','0','0','Life party'),
('42465','2','0','So small. So soft. It s a wonder you ve even lasted this long down here, fleshling. ','12','0','100','0','0','0','Life party'),
('42465','3','0','Or perhaps a testament to your abilities. ','12','0','100','0','0','0','Life party'),
('42465','4','0','And what then? Will you leave Deepholm to its denizens? ','12','0','100','0','0','0','Life party'),
('42465','5','0','Save your thanks. We march upon the Twilight Precipice as soon as our forces are gathered. I expect to see you on the battlefield. ','12','0','100','0','0','0','Life party');

-- Quest 26827 Rallying the Earthen Ring
DELETE FROM `creature` WHERE (`id`='44674');
INSERT INTO `creature` VALUES (null, 44674, 646, 1, 1, 0, 0, 1077.07, 427.823, -45.0541, 1.39795, 300, 0, 0, 464940, 26724, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='44671');
INSERT INTO `creature` VALUES (null, 44671, 646, 1, 1, 0, 0, 1091.63, 577.813, -45.1132, 1.83013, 300, 0, 0, 29478, 26724, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='44371');
INSERT INTO `creature` VALUES (null, 44371, 646, 1, 1, 0, 0, 1076.3, 574.629, -44.433, 0.915078, 300, 0, 0, 29478, 26724, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='42732');
INSERT INTO `creature` VALUES (null, 42732, 646, 1, 1, 0, 0, 979.691, 626.832, -38.633, 5.49003, 300, 0, 0, 46460, 21290, 0, 0, 0, 0);
-- mob1
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44646');
DELETE FROM smart_scripts WHERE entryorguid IN (44646);
INSERT INTO `smart_scripts` VALUES (44646, 0, 1, 2, 62, 0, 100, 0, 44646, 0, 0, 0, 33, 44133, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (44646, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (44646, 0, 5, 8, 61, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (44646, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

UPDATE `creature_template` SET `gossip_menu_id`='44646' WHERE (`entry`='44646');

delete from gossip_menu_option where menu_id = 44646;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(44646,0,"We are joining an assault on Lorthuna s Gate. You are needed.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='44646') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('44646','1','0','Some action. Glad to hear it. ','12','0','100','0','0','0','Life party');
-- mob2
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44674');
DELETE FROM smart_scripts WHERE entryorguid IN (44674);
INSERT INTO `smart_scripts` VALUES (44674, 0, 1, 2, 62, 0, 100, 0, 44674, 0, 0, 0, 33, 44133, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (44674, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (44674, 0, 5, 8, 61, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (44674, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

UPDATE `creature_template` SET `gossip_menu_id`='44674' WHERE (`entry`='44674');

delete from gossip_menu_option where menu_id = 44674;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(44674,0,"We are joining an assault on Lorthuna s Gate. You are needed.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='44674') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('44674','1','0','Understood. I ll there right away. ','12','0','100','0','0','0','Life party');
-- mob3
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44671');
DELETE FROM smart_scripts WHERE entryorguid IN (44671);
INSERT INTO `smart_scripts` VALUES (44671, 0, 1, 2, 62, 0, 100, 0, 44671, 0, 0, 0, 33, 44133, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (44671, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (44671, 0, 5, 8, 61, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (44671, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

UPDATE `creature_template` SET `gossip_menu_id`='44671' WHERE (`entry`='44671');

delete from gossip_menu_option where menu_id = 44671;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(44671,0,"We are joining an assault on Lorthuna s Gate. You are needed.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='44671') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('44671','1','0','Understood. I ll there right away. ','12','0','100','0','0','0','Life party');
-- mob4
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44371');
DELETE FROM smart_scripts WHERE entryorguid IN (44371);
INSERT INTO `smart_scripts` VALUES (44371, 0, 1, 2, 62, 0, 100, 0, 44371, 0, 0, 0, 33, 44133, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (44371, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (44371, 0, 5, 8, 61, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (44371, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

UPDATE `creature_template` SET `gossip_menu_id`='44371' WHERE (`entry`='44371');

delete from gossip_menu_option where menu_id = 44371;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(44371,0,"We are joining an assault on Lorthuna s Gate. You are needed.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='44371') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('44371','1','0','I am on my way. ','12','0','100','0','0','0','Life party');
-- mob5
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42732');
DELETE FROM smart_scripts WHERE entryorguid IN (42732);
INSERT INTO `smart_scripts` VALUES (42732, 0, 1, 2, 62, 0, 100, 0, 42732, 0, 0, 0, 33, 44133, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (42732, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (42732, 0, 5, 8, 61, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (42732, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

UPDATE `creature_template` SET `gossip_menu_id`='42732' WHERE (`entry`='42732');

delete from gossip_menu_option where menu_id = 42732;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(42732,0,"We are joining an assault on Lorthuna s Gate. You are needed.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='42732') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('42732','1','0','Understood. I ll there right away. ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='26827');
INSERT INTO `conditions` VALUES (15, 44674, 0, 0, 0, 9, 0, 26827, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
INSERT INTO `conditions` VALUES (15, 44671, 0, 0, 0, 9, 0, 26827, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
INSERT INTO `conditions` VALUES (15, 44371, 0, 0, 0, 9, 0, 26827, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
INSERT INTO `conditions` VALUES (15, 42732, 0, 0, 0, 9, 0, 26827, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
INSERT INTO `conditions` VALUES (15, 44646, 0, 0, 0, 9, 0, 26827, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
UPDATE `creature_template` SET `npcflag`='3' WHERE (`entry`='44674');
UPDATE `creature_template` SET `npcflag`='3' WHERE (`entry`='44671');
UPDATE `creature_template` SET `npcflag`='3' WHERE (`entry`='44371');
UPDATE `creature_template` SET `npcflag`='3' WHERE (`entry`='42732');

-- Quest 26829 The Stone March CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26833' WHERE (`Id`='26829');
UPDATE `quest_template` SET `NextQuestIdChain`='26833' WHERE (`Id`='26832');
UPDATE `quest_template` SET `NextQuestIdChain`='26875' WHERE (`Id`='26833');
UPDATE `quest_template` SET `NextQuestIdChain`='26971' WHERE (`Id`='26875');
UPDATE `quest_template` SET `PrevQuestId`='26829' WHERE (`Id`='26833');
UPDATE `quest_template` SET `PrevQuestId`='26833' WHERE (`Id`='26875');
UPDATE `quest_template` SET `PrevQuestId`='26875' WHERE (`Id`='26971');

-- Quest 26829 The Stone March
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0', `dynamicflags`='0' WHERE (`entry`='42916');

-- Quest 26833 Word In Stone
DELETE FROM `creature` WHERE (`id`='43818');
INSERT INTO `creature` VALUES (null, 43818, 646, 1, 1, 0, 0, 989.811, 533.989, -49.3147, 4.53426, 300, 0, 0, 15, 4363, 0, 0, 0, 0);

-- Fix some Wrong Flags
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26971');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26875');

-- Quest 26971 The Binding 
DELETE FROM `creature` WHERE (`id`='43837');
INSERT INTO `creature` VALUES (null, 43837, 646, 1, 1, 0, 0, 994.933, 488.297, -49.2857, 1.06083, 300, 10, 0, 46460, 42580, 1, 0, 0, 0);

-- Quest 26580 Familiar Intruders CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26581' WHERE (`Id`='26580');
UPDATE `quest_template` SET `NextQuestIdChain`='26582' WHERE (`Id`='26581');
UPDATE `quest_template` SET `PrevQuestId`='26580' WHERE (`Id`='26581');
UPDATE `quest_template` SET `PrevQuestId`='26581' WHERE (`Id`='26582');

-- Quest 26581 A Head Full of Wind 
DELETE FROM `creature_template_addon` WHERE (`entry`='43370');
INSERT INTO `creature_template_addon` VALUES (43370, 0, 0, 7, 0, 0, '81096');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43370');
DELETE FROM smart_scripts WHERE entryorguid IN (43370) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (43370, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 43370, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 26583 Wrath of the Fungalmancer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43503');
DELETE FROM smart_scripts WHERE entryorguid IN (43503);
INSERT INTO `smart_scripts` VALUES (43503, 0, 1, 2, 62, 0, 100, 0, 43503, 0, 0, 0, 33, 43503, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');
INSERT INTO `smart_scripts` VALUES (43503, 0, 2, 5, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (43503, 0, 5, 8, 61, 0, 100, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Frase');
INSERT INTO `smart_scripts` VALUES (43503, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 43372, 6, 60, 0, 0, 0, 8, 0, 0, 0, 1669.90, -494.84, 151.78, 0.38, 'summon mob');

UPDATE `creature_template` SET `gossip_menu_id`='43503' WHERE (`entry`='43503');

delete from gossip_menu_option where menu_id = 43503;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(43503,0,"I m ready when you are. Norsala.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='43503') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('43503','1','0','Let s finish with this quickly. ','12','0','100','0','0','0','Life party');

-- Quest 28869 Pebble CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26440' WHERE (`Id`='28869');
UPDATE `quest_template` SET `NextQuestIdChain`='26441' WHERE (`Id`='26440');
UPDATE `quest_template` SET `PrevQuestId`='28869' WHERE (`Id`='26440');
UPDATE `quest_template` SET `PrevQuestId`='26440' WHERE (`Id`='26441');

-- Quest 26440 Clingy
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43116');
DELETE FROM smart_scripts WHERE entryorguid IN (43116);
INSERT INTO `smart_scripts` VALUES (43116, 0, 1, 2, 19, 0, 100, 0, 26440, 0, 0, 0, 86, 80608, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'summon pebble');

DELETE FROM `creature_template` WHERE (`entry`='341747');
INSERT INTO `creature_template` VALUES (341747, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'pebble bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341747');
INSERT INTO `creature_template_addon` VALUES (341747, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341747');
INSERT INTO `creature` VALUES (null, 341747, 646, 1, 1, 0, 0, 1181.98, 1500.86, 36, 2.458, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM smart_scripts WHERE entryorguid IN (341747) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341747, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 43172, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 26439 Putting the Pieces Together
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43115');
DELETE FROM smart_scripts WHERE entryorguid IN (43115) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (43115, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 43115, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 26791 Sprout No More CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26835' WHERE (`Id`='26791');
UPDATE `quest_template` SET `NextQuestIdChain`='26835' WHERE (`Id`='26792');
UPDATE `quest_template` SET `NextQuestIdChain`='26836' WHERE (`Id`='26835');
UPDATE `quest_template` SET `NextQuestIdChain`='27937' WHERE (`Id`='26836');
UPDATE `quest_template` SET `NextQuestIdChain`='27938' WHERE (`Id`='27937');
UPDATE `quest_template` SET `PrevQuestId`='26791' WHERE (`Id`='26835');
UPDATE `quest_template` SET `PrevQuestId`='26835' WHERE (`Id`='26836');
UPDATE `quest_template` SET `PrevQuestId`='26836' WHERE (`Id`='27937');
UPDATE `quest_template` SET `PrevQuestId`='27937' WHERE (`Id`='27938');

-- Quest 26791 Sprout No More 
DELETE FROM `creature` WHERE (`id`='44118');
INSERT INTO `creature` VALUES (null, 44118, 646, 1, 1, 0, 0, 1271.92, 1649.53, 175.258, 5.52608, 300, 0, 0, 84, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44118, 646, 1, 1, 0, 0, 1268.35, 1636.96, 174.76, 6.20151, 300, 0, 0, 84, 0, 0, 0, 0, 0);
UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (44118);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='44118');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('44118', '82535', '3');

UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='44049');

-- Quest 27938 The Middle Fragment
DELETE FROM `gameobject` WHERE (`id`='206562');
INSERT INTO `gameobject` VALUES (null, 206562, 646, 1, 1, 459.741, 1621.42, 355.885, 1.50443, 0, 0, 0.683257, 0.730178, 300, 0, 1);

-- Quest 26770 Mystic Masters
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0', `dynamicflags`='0' WHERE (`entry`='43995');

-- Quest 27126 Rush Delivery CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26632' WHERE (`Id`='27126');
UPDATE `quest_template` SET `NextQuestIdChain`='26755' WHERE (`Id`='26632');
UPDATE `quest_template` SET `NextQuestIdChain`='26762' WHERE (`Id`='26755');
UPDATE `quest_template` SET `NextQuestIdChain`='26834' WHERE (`Id`='26762');
UPDATE `quest_template` SET `PrevQuestId`='27126' WHERE (`Id`='26632');
UPDATE `quest_template` SET `PrevQuestId`='26632' WHERE (`Id`='26755');
UPDATE `quest_template` SET `PrevQuestId`='26755' WHERE (`Id`='26762');
UPDATE `quest_template` SET `PrevQuestId`='26762' WHERE (`Id`='26834');

-- Quest 26632 Close Escort
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45043');
DELETE FROM smart_scripts WHERE entryorguid IN (45043) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (45043, 0, 1, 0, 19, 0, 100, 0, 26632, 0, 0, 0, 86, 81622, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'summon catapult');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43897');
DELETE FROM smart_scripts WHERE entryorguid IN (43897) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (43897, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 43649, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');
UPDATE `creature_template` SET `Health_mod`='13.54', `minlevel`='81', `maxlevel`='81' WHERE (`entry`='43509');

-- Quest 26755 Keep Them off the Front
UPDATE `creature_template` SET `KillCredit1`='43978' WHERE (`entry`='43954');
UPDATE `creature_template` SET `KillCredit1`='43978' WHERE (`entry`='43960');

UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (43952);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='43952');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('43952', '47961', '1');
DELETE FROM `creature` WHERE (`id`='43960');
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1083.39, 1827.95, 305.479, 4.80219, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1113.75, 1834.27, 301.827, 0.140852, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1060.21, 1853.49, 303.695, 5.23024, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1008.21, 1957.53, 308.564, 4.9632, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1025, 1980.23, 306.605, 2.33998, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1080.93, 1888.48, 308.044, 2.80336, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1124.66, 1889.29, 312.616, 3.0272, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1189.37, 1894.21, 302.455, 2.88976, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1197.78, 1906.47, 306.406, 1.69595, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1131.51, 1935.57, 303.943, 0.873054, 300, 0, 0, 5808, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1162.65, 1947, 304.011, 0.417523, 300, 0, 0, 5647, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1206.07, 1965.58, 304.572, 0.126925, 300, 0, 0, 5647, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1243.46, 1956.78, 304.366, 5.27129, 300, 0, 0, 5808, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1271.72, 1924.23, 303.508, 5.29877, 300, 0, 0, 5647, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1297.99, 1872.05, 303.131, 2.32997, 300, 0, 0, 5647, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1292.09, 1863.36, 304.507, 4.14031, 300, 0, 0, 5808, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1257.18, 1796.28, 304.783, 3.68871, 300, 0, 0, 5647, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1220.88, 1793.1, 306.083, 3.11144, 300, 0, 0, 5647, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1158.61, 1816.2, 302.849, 2.82084, 300, 0, 0, 5647, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43960, 646, 1, 1, 0, 0, 1100.34, 1821.06, 305.698, 3.37847, 300, 0, 0, 5647, 0, 0, 0, 0, 0);

-- Quest 26762 Reactivate the Constructs
UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (43984);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='43984');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('43984', '63850', '3');

DELETE FROM `spell_scripts` WHERE (`datalong`='43984');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('63850', '8', '43984');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='63850');
INSERT INTO `spell_linked_spell` VALUES (63850, 62464, 0, 'spell hit bunny');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43984');
DELETE FROM smart_scripts WHERE entryorguid IN (43984);
INSERT INTO `smart_scripts` VALUES (43984, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Despawn');

-- Quest 26500 We're Surrounded CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26502' WHERE (`Id`='26500');
UPDATE `quest_template` SET `NextQuestIdChain`='26564' WHERE (`Id`='26502');
UPDATE `quest_template` SET `PrevQuestId`='26500' WHERE (`Id`='26502');
UPDATE `quest_template` SET `PrevQuestId`='26502' WHERE (`Id`='26564');

-- Quest 26591 Battlefront Triage
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43229');
DELETE FROM smart_scripts WHERE entryorguid IN (43229);
INSERT INTO `smart_scripts` VALUES (43229, 0, 1, 2, 8, 0, 100, 0, 80987, 0, 0, 0, 33, 43229, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0,'Credit');
INSERT INTO `smart_scripts` VALUES (43229, 0, 2, 0, 61, 0, 0, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Despawn');
UPDATE `creature_template` SET `modelid1`='26091', `modelid2`='0' WHERE (`entry`='43229');

-- Quest 27932 The Axe of Earthly Sundering CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27934' WHERE (`Id`='27932');
UPDATE `quest_template` SET `NextQuestIdChain`='27934' WHERE (`Id`='27933');
UPDATE `quest_template` SET `NextQuestIdChain`='27936' WHERE (`Id`='27934');
UPDATE `quest_template` SET `NextQuestIdChain`='26499' WHERE (`Id`='27936');
UPDATE `quest_template` SET `NextQuestIdChain`='26501' WHERE (`Id`='26499');
UPDATE `quest_template` SET `NextQuestIdChain`='26537' WHERE (`Id`='26501');
UPDATE `quest_template` SET `NextQuestIdChain`='26625' WHERE (`Id`='26537');
UPDATE `quest_template` SET `PrevQuestId`='27932' WHERE (`Id`='27934');
UPDATE `quest_template` SET `PrevQuestId`='27934' WHERE (`Id`='27936');
UPDATE `quest_template` SET `PrevQuestId`='27936' WHERE (`Id`='26499');
UPDATE `quest_template` SET `PrevQuestId`='26499' WHERE (`Id`='26501');
UPDATE `quest_template` SET `PrevQuestId`='26501' WHERE (`Id`='26537');
UPDATE `quest_template` SET `PrevQuestId`='26537' WHERE (`Id`='26625');

UPDATE `quest_template` SET `NextQuestIdChain`='0' WHERE (`Id`='27935');
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE (`Id`='27935');

-- Quest 27933 Elemental Ore
UPDATE `creature_template` SET `lootid`='44220' WHERE (`entry`='44220');
DELETE FROM `creature_loot_template` WHERE (`entry`='44220') AND (`item`='60487');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44220', '60487', '-95');

-- Quest 27932 The Axe of Earthly Sundering
UPDATE `creature_template` SET `Health_mod`='13.54', `minlevel`='81', `maxlevel`='81' WHERE (`entry`='44229');
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='44229');
DELETE FROM `creature` WHERE (`id`='44229');
INSERT INTO `creature` VALUES (null, 44229, 646, 1, 1, 0, 0, -153.386, 815.523, 213.888, 1.98149, 300, 0, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44229, 646, 1, 1, 0, 0, -120.402, 974.182, 211.116, 0.964401, 300, 0, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44229, 646, 1, 1, 0, 0, -145.924, 1077.46, 223.339, 6.24228, 300, 0, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44229, 646, 1, 1, 0, 0, -0.349731, 1133.84, 218.954, 0.410698, 300, 0, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44229, 646, 1, 1, 0, 0, -11.4992, 1290.54, 219.746, 1.18039, 300, 0, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44229, 646, 1, 1, 0, 0, 12.312, 1416.26, 217.026, 5.86529, 300, 0, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44229, 646, 1, 1, 0, 0, 140.87, 1308.43, 230.306, 5.07597, 300, 0, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44229, 646, 1, 1, 0, 0, 265.893, 1272.03, 244.443, 3.04964, 300, 0, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44229, 646, 1, 1, 0, 0, 78.445, 1145.99, 217.981, 5.02885, 300, 0, 0, 42, 0, 1, 0, 0, 0);

-- Quest 27934 One With the Ground
DELETE FROM `creature_involvedrelation` WHERE (`id`='47195') AND (`quest`='27934');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('47195', '27934');

DELETE FROM `creature_template` WHERE (`entry`='341748');
INSERT INTO `creature_template` VALUES (341748, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Ground bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341748');
INSERT INTO `creature_template_addon` VALUES (341748, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341748');
INSERT INTO `creature` VALUES (null, 341748, 646, 1, 1, 0, 0, -269.60, 649.84, 140.80, 2.458, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM smart_scripts WHERE entryorguid IN (341748) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341748, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 44290, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');
DELETE FROM `creature` WHERE (`id`='47195');
INSERT INTO `creature` VALUES (null, 47195, 646, 1, 1, 0, 0, 149.429, 1489.87, 226.582, 3.37166, 600, 0, 0, 126, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 47195, 646, 1, 1, 0, 1, -234.091, 656.718, 141.865, 3.01307, 300, 0, 0, 13938, 4258, 0, 0, 0, 0);

-- Quest 26499 Stonefather's Boon
DELETE FROM `spell_scripts` WHERE (`datalong`='43163');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`) VALUES ('80670', '10', '43163', '120000', '0', '0', '0', '0');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='80670');
INSERT INTO `spell_linked_spell` VALUES (80670, 62464, 0, 'spell hit bunny');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43138');
DELETE FROM smart_scripts WHERE entryorguid IN (43138);
INSERT INTO `smart_scripts` VALUES (43138, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 43138, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0,'Credit');
INSERT INTO `smart_scripts` VALUES (43138, 0, 2, 0, 61, 0, 0, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Despawn');

DELETE FROM `conditions` WHERE (`SourceEntry`='80670');
INSERT INTO `conditions` VALUES (17, 0, 80670, 0, 0, 29, 0, 43138, 5, 0, 0, 0, 0, '', 'Spell can be used only near mob');
UPDATE `creature_template` SET `modelid1`='22548' WHERE (`entry`='43163');

-- Quest 26501 Sealing the Way
-- Location 1
DELETE FROM `creature_template` WHERE (`entry`='341749');
INSERT INTO `creature_template` VALUES (341749, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Ground bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341749');
INSERT INTO `creature_template_addon` VALUES (341749, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='80675');
INSERT INTO `spell_linked_spell` VALUES (80675, 62464, 0, 'spell hit bunny');

DELETE FROM `creature` WHERE (`id`='341749');
INSERT INTO `creature` VALUES (null, 341749, 646, 1, 1, 0, 0, 413.99, 1658.52, 348.54, 2.458, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM smart_scripts WHERE entryorguid IN (341749) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341749, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 43164, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0,'Credit');

-- Location 2
DELETE FROM `creature_template` WHERE (`entry`='341750');
INSERT INTO `creature_template` VALUES (341750, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Ground bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341750');
INSERT INTO `creature_template_addon` VALUES (341750, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341750');
INSERT INTO `creature` VALUES (null, 341750, 646, 1, 1, 0, 0, 421.76, 1715.53, 349.1, 2.458, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM smart_scripts WHERE entryorguid IN (341750) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341750, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 43165, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0,'Credit');

-- Location 3
DELETE FROM `creature_template` WHERE (`entry`='341751');
INSERT INTO `creature_template` VALUES (341751, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Ground bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341751');
INSERT INTO `creature_template_addon` VALUES (341751, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341751');
INSERT INTO `creature` VALUES (null, 341751, 646, 1, 1, 0, 0, 456.45, 1731.49, 349.21, 2.458, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM smart_scripts WHERE entryorguid IN (341751) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341751, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 43166, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0,'Credit');

-- Location 4
DELETE FROM `creature_template` WHERE (`entry`='341752');
INSERT INTO `creature_template` VALUES (341752, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Ground bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341752');
INSERT INTO `creature_template_addon` VALUES (341752, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341752');
INSERT INTO `creature` VALUES (null, 341752, 646, 1, 1, 0, 0, 493.93, 1658.07, 348.75, 2.458, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM smart_scripts WHERE entryorguid IN (341752) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341752, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 43167, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0,'Credit');

-- Quest 26625 Troggzor the Earthinator
UPDATE `creature_template` SET `lootid`='43456' WHERE (`entry`='43456');
DELETE FROM `creature_loot_template` WHERE (`entry`='43456') AND (`item`='59144');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43456', '59144', '-100');

-- Quest 26410 Explosive Bonding Compound CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26411' WHERE (`Id`='26410');
UPDATE `quest_template` SET `NextQuestIdChain`='26411' WHERE (`Id`='27135');
UPDATE `quest_template` SET `NextQuestIdChain`='26413' WHERE (`Id`='26411');
UPDATE `quest_template` SET `NextQuestIdChain`='26484' WHERE (`Id`='26413');
UPDATE `quest_template` SET `NextQuestIdChain`='27931' WHERE (`Id`='26484');
UPDATE `quest_template` SET `PrevQuestId`='26410' WHERE (`Id`='26411');
UPDATE `quest_template` SET `PrevQuestId`='26411' WHERE (`Id`='26413');
UPDATE `quest_template` SET `PrevQuestId`='26413' WHERE (`Id`='26484');
UPDATE `quest_template` SET `PrevQuestId`='26484' WHERE (`Id`='27931');

-- Quest 26410 Explosive Bonding Compound
UPDATE `creature_template` SET `lootid`='42606' WHERE (`entry`='42606');
DELETE FROM `creature_loot_template` WHERE (`entry`='42606') AND (`item`='58501');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('42606', '58501', '-45');

UPDATE `creature_template` SET `lootid`='42607' WHERE (`entry`='42607');
DELETE FROM `creature_loot_template` WHERE (`entry`='42607') AND (`item`='58501');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('42607', '58501', '-45');

-- Quest 27135 Something that Burns
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='45099');

DELETE FROM `creature_template` WHERE (`entry`='341753');
INSERT INTO `creature_template` VALUES (341753, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Fire bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341753');
INSERT INTO `creature_template_addon` VALUES (341753, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `item_template` WHERE (`entry`='60834');
INSERT INTO `item_template` VALUES (60834, 12, 0, -1, 'Goldmine Fire Totem', 71182, 1, 64, 0, 1, 1, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62464, 0, NULL, 5000, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

DELETE FROM `creature` WHERE (`id`='341753');
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 773.968, 290.587, -69.6798, 0.871088, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 757.023, 272.168, -61.6891, 3.83989, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 787.663, 243.943, -60.0101, 2.78746, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 810.955, 227.091, -60.2928, 5.63845, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 808.614, 193.934, -61.2309, 4.3779, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 773.458, 323.403, -70.227, 3.21552, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 787.668, 346.346, -74.2959, 0.737584, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 776.814, 378.387, -70.4275, 2.06883, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 805.112, 395.22, -73.9301, 0.388082, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 809.158, 424.23, -68.1004, 4.03233, 300, 0, 0, 42, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 341753, 646, 1, 1, 0, 0, 819.1, 458.338, -68.2627, 1.24024, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341753) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341753, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 45099, 7, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 'summon mob');
INSERT INTO `smart_scripts` VALUES (341753, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 12, 45100, 6, 60, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'summon mob');

DELETE FROM `conditions` WHERE (`SourceEntry`='82044');
INSERT INTO `conditions` VALUES (17, 0, 82044, 0, 0, 29, 0, 341753, 20, 0, 0, 0, 0, '', 'Spell can be used only near mob');
DELETE FROM `creature` WHERE (`id`='45099');

UPDATE `creature_template` SET `lootid`='45099' WHERE (`entry`='45099');
DELETE FROM `creature_loot_template` WHERE (`entry`='45099') AND (`item`='60837');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('45099', '60837', '-100');

-- Quest 26411 Apply and Flash Dry
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43036');
DELETE FROM smart_scripts WHERE entryorguid IN (43036) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (43036, 0, 1, 0, 8, 0, 100, 0, 80413, 0, 0, 0, 33, 43036, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0,'Credit');

-- Quest 26413 Take Him to the Earthcaller
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42574');
DELETE FROM smart_scripts WHERE entryorguid IN (42574) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (42574, 0, 1, 0, 19, 0, 100, 0, 26413, 0, 0, 0, 86, 80441, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0,'summon mob');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42573');
DELETE FROM smart_scripts WHERE entryorguid IN (42573) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (42573, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 44207, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0,'Credit');

-- Quest 26312 Crumbling Defenses
UPDATE `creature_template` SET `faction_A`='14', `faction_H`='14' WHERE (`entry`='42527');
DELETE FROM `creature` WHERE (`id`='44352');
INSERT INTO `creature` VALUES (null, 44352, 646, 1, 1, 0, 0, 1374.18, 782.415, -58.6531, 4.47976, 300, 0, 0, 29478, 26724, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='42527');
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1371.36, 784.234, -59.3148, 4.46013, 300, 0, 0, 5808, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1359.11, 699.489, -66.7632, 1.76298, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1318.19, 760.383, -69.7907, 0.875478, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1348.65, 794.396, -66.0204, 1.26425, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1338.77, 811.243, -61.5692, 2.04179, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1235.85, 753.126, -69.2662, 5.89417, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1275.83, 780.304, -71.6371, 0.561315, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1299.72, 769.775, -68.2691, 5.64677, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1323.36, 725.068, -72.803, 4.61005, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1315.92, 699.688, -69.3176, 4.44119, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1312.35, 651.282, -64.3804, 4.85745, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1346.12, 621.753, -65.8303, 5.90595, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1387, 637.661, -64.9849, 0.321773, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1412.07, 611.514, -66.5331, 5.37188, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1369.65, 585.323, -69.1354, 3.56154, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1328.26, 556.534, -70.3326, 2.50911, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 42527, 646, 1, 1, 0, 0, 1378.36, 777.182, -58.0261, 2.26493, 300, 0, 0, 5808, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44352');
DELETE FROM smart_scripts WHERE entryorguid IN (44352) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (44352, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 44352, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0,'Credit');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44353');
DELETE FROM smart_scripts WHERE entryorguid IN (44353) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (44353, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 44353, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0,'Credit');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42788');
DELETE FROM smart_scripts WHERE entryorguid IN (42788) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (42788, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 42788, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0,'Credit');

-- Quest 26314 On Even Ground
DELETE FROM `creature` WHERE (`id`='44131');
INSERT INTO `creature` VALUES (null, 44131, 646, 1, 1, 0, 0, 1450.3, 780.025, -62.0383, 3.85929, 300, 0, 0, 58080, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44131, 646, 1, 1, 0, 0, 1370.78, 652.071, -68.635, 2.72437, 300, 0, 0, 58080, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44131, 646, 1, 1, 0, 0, 1261.63, 777.493, -71.4549, 4.64466, 300, 0, 0, 58080, 0, 0, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 44131, 646, 1, 1, 0, 0, 1387.17, 827.812, -55.0887, 4.31873, 300, 0, 0, 58080, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='44131');
DELETE FROM smart_scripts WHERE entryorguid IN (44131) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (44131, 0, 1, 0, 8, 0, 100, 0, 79688, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'Hit by spell');
INSERT INTO `smart_scripts` VALUES (44131, 0, 2, 0, 1, 1, 100, 1, 4000, 4100, 0, 0, 11, 42695, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'knockback');
INSERT INTO `smart_scripts` VALUES (44131, 0, 3, 0, 1, 1, 100, 1, 4000, 4100, 0, 0, 33, 45083, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0,'credit');

-- Quest 26710 Lost In The Deeps
DELETE FROM `creature` WHERE (`id`='49956');
INSERT INTO `creature` VALUES (null, 49956, 646, 1, 1, 0, 0, 2046.06, -131.211, -152.315, 1.87766, 300, 0, 0, 153395, 0, 0, 0, 0, 0);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='49956');
DELETE FROM smart_scripts WHERE entryorguid IN (49956);
INSERT INTO `smart_scripts` VALUES (49956, 0, 1, 2, 62, 0, 100, 0, 49956,0,0,0,86, 80608, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'Summon Pebble');
INSERT INTO `smart_scripts` VALUES (49956, 0, 2, 7, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chiude gossip');
INSERT INTO `smart_scripts` VALUES (49956, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 33, 49956, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0,'Frase');

UPDATE `creature_template` SET `gossip_menu_id`='49956' WHERE (`entry`='49956');

delete from gossip_menu_option where menu_id = 49956;
insert into gossip_menu_option (menu_id,id,option_text,option_id,npc_option_npcflag) values
(49956,0,"Come little guy. Let's get out of here.",1,1);

DELETE FROM `creature_text` WHERE (`entry`='49956') AND (`groupid`='1') AND (`id`='0');
insert into `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) values
('49956','1','0','Thank you! ','12','0','100','0','0','0','Life party');

DELETE FROM `conditions` WHERE (`ConditionValue1`='26710');
INSERT INTO `conditions` VALUES (15, 49956, 0, 0, 0, 9, 0, 26710, 0, 0, 0, 0, 0, '', 'Gossip is showed only when quest is active ');
UPDATE `creature_template` SET `npcflag`='1' WHERE (`entry`='49956');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='42766');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='44257');

-- Quest 28488 Beneath the Surface
UPDATE `creature_template` SET `lootid`='48533' WHERE (`entry`='48533');
DELETE FROM `creature_loot_template` WHERE (`entry`='48533') AND (`item`='64404');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('48533', '64404', '-100');
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0', `faction_A`='14', `faction_H`='14' WHERE (`entry`='48533');

-- Quest 27051 Through Persistence
UPDATE `creature_template` SET `lootid`='43368' WHERE (`entry`='43368');
DELETE FROM `creature_loot_template` WHERE (`entry`='43368') AND (`item`='60767');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43368', '60767', '-40');

UPDATE `creature_template` SET `lootid`='42711' WHERE (`entry`='42711');
DELETE FROM `creature_loot_template` WHERE (`entry`='42711') AND (`item`='60767');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('42711', '60767', '-15');

UPDATE `creature_template` SET `lootid`='43367' WHERE (`entry`='43367');
DELETE FROM `creature_loot_template` WHERE (`entry`='43367') AND (`item`='60767');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43367', '60767', '-12');

-- Quest 27049 Soft Rock
DELETE FROM `creature` WHERE (`id`='43804');
INSERT INTO `creature` VALUES (null, 43804, 646, 1, 1, 0, 0, 2326.26, 49.8024, 172.996, 1.57493, 300, 0, 0, 2684050, 0, 0, 0, 0, 0);

-- Quest 27048 Underground Economy
UPDATE `gameobject_template` SET `data7`='207381', `data8`='27048' WHERE (`entry`='207381');
UPDATE `gameobject_template` SET `data7`='207383', `data8`='27048' WHERE (`entry`='207383');
UPDATE `gameobject_template` SET `data7`='207384', `data8`='27048' WHERE (`entry`='207384');

DELETE FROM `gameobject` WHERE (`id`='207381');
INSERT INTO `gameobject` VALUES (null, 207381, 646, 1, 1, 1989.26, -181.202, -177.249, 1.27076, 0, 0, 0.593484, 0.804846, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207381, 646, 1, 1, 1987.49, -215.55, -175.754, 3.52878, 0, 0, 0.981319, -0.192387, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207381, 646, 1, 1, 2015.85, -203.431, -175.725, 5.19775, 0, 0, 0.516465, -0.856309, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207381, 646, 1, 1, 1974.38, -161.899, -174.543, 3.1675, 0, 0, 0.999916, -0.012953, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207381, 646, 1, 1, 2036.67, -143.779, -175.253, 1.71331, 0, 0, 0.755656, 0.654969, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207381, 646, 1, 1, 2055.3, -153.569, -176.316, 0.22498, 0, 0, 0.112253, 0.99368, 300, 0, 1);
DELETE FROM `gameobject` WHERE (`id`='207382');
INSERT INTO `gameobject` VALUES (null, 207382, 646, 1, 1, 2145.54, -130.292, -189.73, 3.46475, 0, 0, 0.986975, -0.160875, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207382, 646, 1, 1, 2117.64, -115.684, -190.404, 3.42548, 0, 0, 0.989943, -0.141467, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207382, 646, 1, 1, 2147.79, -75.2122, -190.41, 0.707999, 0, 0, 0.346652, 0.937994, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207382, 646, 1, 1, 2174.19, -92.3616, -189.082, 1.92929, 0, 0, 0.821848, 0.569707, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207382, 646, 1, 1, 2148.05, -107.634, -191.462, 3.82603, 0, 0, 0.942012, -0.335579, 300, 0, 1);
DELETE FROM `gameobject` WHERE (`id`='207383');
INSERT INTO `gameobject` VALUES (null, 207383, 646, 1, 1, 2145.92, -257.047, -166.429, 4.36404, 0, 0, 0.818947, -0.57387, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207383, 646, 1, 1, 2132.33, -258.631, -164.04, 4.16376, 0, 0, 0.872214, -0.489124, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207383, 646, 1, 1, 2177.16, -251.166, -166.169, 6.16652, 0, 0, 0.0582979, -0.998299, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207383, 646, 1, 1, 2185.83, -243.391, -164.224, 5.5814, 0, 0, 0.343735, -0.939067, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207383, 646, 1, 1, 2176.48, -216.68, -164.817, 1.67012, 0, 0, 0.741337, 0.671133, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207383, 646, 1, 1, 2159.63, -210.991, -166.597, 0.448825, 0, 0, 0.222534, 0.974925, 300, 0, 1);
DELETE FROM `gameobject` WHERE (`id`='207384');
INSERT INTO `gameobject` VALUES (null, 207384, 646, 1, 1, 2080.11, -322.196, -159.633, 1.90967, 0, 0, 0.81622, 0.577742, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207384, 646, 1, 1, 2099.44, -313.586, -159.18, 1.12035, 0, 0, 0.531334, 0.847163, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207384, 646, 1, 1, 2074.48, -360.067, -159.073, 4.13235, 0, 0, 0.879789, -0.475365, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207384, 646, 1, 1, 2061.91, -362.625, -156.382, 4.13235, 0, 0, 0.879789, -0.475365, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 207384, 646, 1, 1, 2113.43, -351.325, -158.726, 6.25293, 0, 0, 0.015127, -0.999886, 300, 0, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`='36112') AND (`item`='65504');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36112', '65504', '-100');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='36114') AND (`item`='65508');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36114', '65508', '-100');
DELETE FROM `gameobject_loot_template` WHERE (`entry`='36115') AND (`item`='65510');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('36115', '65510', '-100');

-- Quest 26831 The Twilight Flight
UPDATE `creature_template` SET `Health_mod`='41.5915' WHERE (`entry`='42918');
DELETE FROM `creature` WHERE (`id`='44135');
DELETE FROM `creature` WHERE (`id`='42918');
INSERT INTO `creature` VALUES (null, 42918, 646, 1, 1, 0, 0, 1510.81, -169.211, 54.6265, 5.6218, 300, 0, 0, 26136, 0, 0, 0, 0, 0);

-- Quest 26250 On Second Thought, Take One Prisoner CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26254' WHERE (`Id`='26250');
UPDATE `quest_template` SET `NextQuestIdChain`='26255' WHERE (`Id`='26254');
UPDATE `quest_template` SET `NextQuestIdChain`='26258' WHERE (`Id`='26255');
UPDATE `quest_template` SET `NextQuestIdChain`='26256' WHERE (`Id`='26258');
UPDATE `quest_template` SET `NextQuestIdChain`='26261' WHERE (`Id`='26256');
UPDATE `quest_template` SET `NextQuestIdChain`='26260' WHERE (`Id`='26261');
UPDATE `quest_template` SET `NextQuestIdChain`='27007' WHERE (`Id`='26260');
UPDATE `quest_template` SET `NextQuestIdChain`='27010' WHERE (`Id`='27007');
UPDATE `quest_template` SET `NextQuestIdChain`='27061' WHERE (`Id`='27010');
UPDATE `quest_template` SET `PrevQuestId`='26250' WHERE (`Id`='26254');
UPDATE `quest_template` SET `PrevQuestId`='26254' WHERE (`Id`='26255');
UPDATE `quest_template` SET `PrevQuestId`='26255' WHERE (`Id`='26258');
UPDATE `quest_template` SET `PrevQuestId`='26258' WHERE (`Id`='26256');
UPDATE `quest_template` SET `PrevQuestId`='26256' WHERE (`Id`='26261');
UPDATE `quest_template` SET `PrevQuestId`='26261' WHERE (`Id`='26260');
UPDATE `quest_template` SET `PrevQuestId`='26260' WHERE (`Id`='27007');
UPDATE `quest_template` SET `PrevQuestId`='27007' WHERE (`Id`='27010');
UPDATE `quest_template` SET `PrevQuestId`='27010' WHERE (`Id`='27061');

DELETE FROM `creature` WHERE (`id`='42684');

-- Quest 26254 Some Spraining to Do - AUTOCOMPLETE - animation missing
UPDATE `quest_template` SET `RequiredNpcOrGo1`='0', `RequiredNpcOrGoCount1`='0' WHERE (`Id`='26254');

-- Quest 26256 Bleed the Bloodshaper
UPDATE `creature_template` SET `lootid`='43218' WHERE (`entry`='43218');
DELETE FROM `creature_loot_template` WHERE (`entry`='43218') AND (`item`='60264');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43218', '60264', '-90');

-- Quest 26261 Question the Slaves
DELETE FROM `gameobject` WHERE (`id`='205097');
INSERT INTO `gameobject` VALUES (null, 205097, 646, 1, 1, 773.445, -150.496, -40.9959, 3.31451, 0, 0, 0.996265, -0.0863502, 300, 0, 1);
DELETE FROM `gameobject` WHERE (`id`='205098');
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 881.881, -269.875, 5.707210, 1.09953, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 880.761, -240.370, -3.83203, 5.56452, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 856.832, -242.418, -8.49880, 5.65484, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 797.433, -279.164, -21.0596, 4.81053, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 784.029, -282.575, -20.4685, 5.47812, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 761.417, -283.223, -21.1680, 5.21894, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 755.775, -286.522, -21.4982, 5.00688, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 746.934, -290.738, -21.4253, 5.86296, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 742.273, -304.114, -21.9754, 5.73337, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 739.691, -312.095, -21.6785, 0.61257, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 741.910, -320.464, -20.2865, 0.25914, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 686.899, -275.767, -24.1691, 2.98840, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 680.021, -286.886, -23.9079, 1.37834, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 667.427, -287.946, -21.5336, 0.89924, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 650.993, -330.515, -19.9570, 4.74770, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 637.523, -332.810, -17.1666, 5.18359, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 631.433, -338.957, -17.4832, 6.14177, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 625.748, -346.620, -16.4392, 5.30140, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 618.128, -347.446, -14.6704, 5.26213, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 610.553, -351.850, -12.9049, 5.58414, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 590.239, -333.296, -12.7745, 3.59316, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 579.290, -329.046, -12.7884, 4.37855, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 578.080, -321.623, -12.7947, 2.96877, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 583.705, -309.622, -12.9613, 4.02905, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 577.135, -283.813, -10.6362, 2.04984, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 579.552, -272.469, -14.8578, 4.63773, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 539.540, -281.451, -6.02063, 3.76594, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 537.107, -274.594, -9.40076, 3.70311, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 527.238, -148.733, -17.4551, 4.87726, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 521.339, -158.752, -16.8817, 5.88256, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 487.605, -153.254, -13.3424, 2.65064, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 485.736, -143.184, -13.3426, 3.62061, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 475.296, -134.205, -12.8677, 3.87587, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 478.490, -165.589, -13.0765, 2.91376, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 483.644, -208.607, -13.3850, 4.50419, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 487.907, -219.632, -13.1023, 3.38108, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 487.015, -227.540, -13.1023, 2.70171, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 493.158, -240.686, -13.1027, 3.58136, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 505.457, -245.646, -13.1039, 4.20968, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 510.327, -257.214, -13.1049, 3.11405, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 520.935, -265.009, -11.5568, 4.91654, 0, 0, 0.552628, -0.833428, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205098, 646, 1, 1, 528.953, -267.227, -12.1403, 4.97152, 0, 0, 0.552628, -0.833428, 300, 0, 1);

DELETE FROM `spell_scripts` WHERE (`datalong`='44772');
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('63850', '8', '44772');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='70354');
INSERT INTO `spell_linked_spell` VALUES (70354, 63850, 1, 'credit');

-- Quest 26260 The Forgemaster's Log
DELETE FROM `gameobject` WHERE (`id`='205134');
INSERT INTO `gameobject` VALUES (null, 205134, 646, 1, 1, 913.162, -197.794, 10.0517, 2.24814, 0, 0, 0.901866, 0.432016, 300, 0, 1);

-- Quest 27010 Quicksilver Submersion
DELETE FROM `gameobject` WHERE (`id`='205197');
INSERT INTO `gameobject` VALUES (null, 205197, 646, 1, 1, 610.247, -607.202, 148.478, 1.20745, 0, 0, 0.567715, 0.823225, 300, 0, 1);

DELETE FROM `gameobject_loot_template` WHERE (`entry`='32451') AND (`item`='60809');
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('32451', '60809', '-100');
UPDATE `gameobject_template` SET `data7`='205197', `data8`='27010' WHERE (`entry`='205197');

DELETE FROM `creature_template` WHERE (`entry`='341754');
INSERT INTO `creature_template` VALUES (341754, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Credit bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341754');
INSERT INTO `creature_template_addon` VALUES (341754, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341754');
INSERT INTO `creature` VALUES (null, 341754, 646, 1, 1, 0, 0, 572.307, -765.371, 146.8, 0.871088, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341754) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341754, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 44938, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 26861 Block the Gates
-- Bunny1
DELETE FROM `creature_template` WHERE (`entry`='341755');
INSERT INTO `creature_template` VALUES (341755, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Credit bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341755');
INSERT INTO `creature_template_addon` VALUES (341755, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341755');
INSERT INTO `creature` VALUES (null, 341755, 646, 1, 1, 0, 0, 245.415, -449.396, 179, 0.871088, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341755) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341755, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 44930, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');
-- Bunny2
DELETE FROM `creature_template` WHERE (`entry`='341756');
INSERT INTO `creature_template` VALUES (341756, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Credit bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341756');
INSERT INTO `creature_template_addon` VALUES (341756, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341756');
INSERT INTO `creature` VALUES (null, 341756, 646, 1, 1, 0, 0, 246.904, -583.050, 174.8, 0.871088, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341756) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341756, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 44931, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0, 'credit');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='83883');
INSERT INTO `spell_linked_spell` VALUES (83883, 62464, 0, 'spell hit bunny');

-- Quest 26766 Big Game, Big Bait CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26771' WHERE (`Id`='26766');
UPDATE `quest_template` SET `NextQuestIdChain`='26771' WHERE (`Id`='26768');
UPDATE `quest_template` SET `NextQuestIdChain`='26857' WHERE (`Id`='26771');
UPDATE `quest_template` SET `NextQuestIdChain`='26876' WHERE (`Id`='26857');
UPDATE `quest_template` SET `PrevQuestId`='26766' WHERE (`Id`='26771');
UPDATE `quest_template` SET `PrevQuestId`='26771' WHERE (`Id`='26857');
UPDATE `quest_template` SET `PrevQuestId`='26857' WHERE (`Id`='26876');

-- Quest 26768 To Catch a Dragon
UPDATE `creature_template` SET `lootid`='43992' WHERE (`entry`='43992');
DELETE FROM `creature_loot_template` WHERE (`entry`='43992') AND (`item`='60383');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43992', '60383', '-60');

UPDATE `creature_template` SET `lootid`='44221' WHERE (`entry`='44221');
DELETE FROM `creature_loot_template` WHERE (`entry`='44221') AND (`item`='60383');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44221', '60383', '-25');

-- Quest 26766 Big Game, Big Bait
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='43981');
DELETE FROM smart_scripts WHERE entryorguid IN (43981) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (43981, 0, 1, 2, 8, 0, 100, 0, 82563, 0, 0, 0, 11, 106020, 0, 0, 0, 0, 0, 21, 15, 0, 0, 0, 0, 0, 0,'Credit');
INSERT INTO `smart_scripts` VALUES (43981, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');

-- Quest 26876 The World Pillar Fragment
DELETE FROM `creature_template` WHERE (`entry`='341757');
INSERT INTO `creature_template` VALUES (341757, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Credit bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341757');
INSERT INTO `creature_template_addon` VALUES (341757, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341757');
INSERT INTO `creature` VALUES (null, 341757, 646, 1, 1, 0, 0, 185.501, -505.614, 171.790, 0.871088, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341757) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341757, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 12, 44289, 7, 0, 0, 0, 0, 8, 0, 0, 0, 185.501, -505.614, 171.790, 1, 'summon mob');

DELETE FROM `item_template` WHERE (`entry`='60810');
INSERT INTO `item_template` VALUES (60810, 12, 0, -1, 'Earthen Ring Banner', 19562, 1, 64, 0, 1, 1, 1, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62464, 0, NULL, 5000, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 0, 0, NULL, -1, 0, -1, 4, '', 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

UPDATE `creature_template` SET `lootid`='44289' WHERE (`entry`='44289');
DELETE FROM `creature_loot_template` WHERE (`entry`='44289') AND (`item`='60574');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44289', '60574', '-100');
UPDATE `creature_template` SET `unit_flags`='0', `unit_flags2`='0', `dynamicflags`='0' WHERE (`entry`='44289');

DELETE FROM `creature` WHERE (`id`='44289');

-- Quest 26246 Captain's Log
UPDATE `gameobject` SET `phaseMask`='1' WHERE (`id`='204274');
UPDATE `gameobject_template` SET `faction`='35', `flags`='0' WHERE (`entry`='204274');

-- Quest 27203 The Maelstrom CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27123' WHERE (`Id`='27203');
UPDATE `quest_template` SET `NextQuestIdChain`='26245' WHERE (`Id`='27123');
UPDATE `quest_template` SET `NextQuestIdChain`='26247' WHERE (`Id`='26245');
UPDATE `quest_template` SET `NextQuestIdChain`='26247' WHERE (`Id`='26246');
UPDATE `quest_template` SET `PrevQuestId`='27203' WHERE (`Id`='27123');
UPDATE `quest_template` SET `PrevQuestId`='27123' WHERE (`Id`='26245');
UPDATE `quest_template` SET `PrevQuestId`='27123' WHERE (`Id`='26246');
UPDATE `quest_template` SET `PrevQuestId`='26245' WHERE (`Id`='26247');

-- Quest 27203 The Maelstrom
-- Set Orgrimmar Portal/Stormwind
DELETE FROM `gameobject` WHERE (`id`='205268');
INSERT INTO `gameobject` VALUES (null, 205268, 1, 1, 1, 2048.57, -4377.86, 98.9703, 2.00594, 0, 0, 0.843071, 0.537802, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205268, 0, 1, 1, -8209.47, 428.053, 118.06, 1.48606, 0, 0, 0.676524, 0.736421, 300, 0, 1);
DELETE FROM `spell_target_position` WHERE (`id`='84464');
INSERT INTO `spell_target_position` VALUES (84464, 730, 851.307, 1067.76, -9.99, 4.47);

DELETE FROM `creature` WHERE (`id`='45042');
INSERT INTO `creature` VALUES (null, 45042, 730, 1, 1, 0, 0, 852.239, 1041.75, -5.99281, 4.85214, 300, 0, 0, 103070400, 1183750, 0, 0, 0, 0);

-- Star object - cinematic 
DELETE FROM `gameobject` WHERE (`id`='207735');
INSERT INTO `gameobject` VALUES (null, 207735, 730, 1, 1, 849.714, 1041.48, -5.9505, 4.7304, 0, 0, 0.700711, -0.713445, 300, 0, 1);

DELETE FROM `creature` WHERE (`id`='53536');
INSERT INTO `creature` VALUES (null, 53536, 730, 1, 1, 0, 0, 839.565, 1064.04, -9.0476, 5.76319, 300, 0, 0, 77490, 4454, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='43713');
INSERT INTO `creature` VALUES (null, 43713, 730, 1, 1, 0, 0, 837.73, 1061.18, -8.72865, 5.82995, 300, 0, 0, 42, 0, 0, 0, 0, 0);
UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (43713);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='43713');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('43713', '84513', '3');

-- Quest 26245 Gunship Down
UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (43048);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='43048');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('43048', '80446', '3');

UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (43032);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='43032');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('43032', '80393', '3');

DELETE FROM `creature` WHERE (`id`='43032');
INSERT INTO `creature` VALUES (null, 43032, 646, 1, 1, 0, 0, 272.843, 183.795, 46.1908, 5.37479, 300, 0, 0, 5342, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`='43044');
INSERT INTO `creature` VALUES (null, 43044, 646, 1, 1, 0, 0, 194.005, 161.424, 42.4811, 3.76473, 300, 0, 0, 42, 0, 0, 0, 0, 0);

UPDATE creature_template SET npcflag = 16777216 WHERE entry IN (43044);
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='43044');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('43044', '80436', '3');

-- Quest 26248 All Our Friends Are Dead CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26251' WHERE (`Id`='26248');
UPDATE `quest_template` SET `PrevQuestId`='26248' WHERE (`Id`='26251');

-- Quest 26248 All Our Friends Are Dead
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='42682');
DELETE FROM smart_scripts WHERE entryorguid IN (42682);
INSERT INTO `smart_scripts` VALUES (42682, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 42758, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0,'credit');
INSERT INTO `smart_scripts` VALUES (42682, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,'despawn');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='79614');
INSERT INTO `spell_linked_spell` VALUES (79614, 62464, 0, 'spell hit bunny');

-- Quest 26249 The Admiral's Cabin Dead CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='26427' WHERE (`Id`='26249');
UPDATE `quest_template` SET `PrevQuestId`='26249' WHERE (`Id`='26427');

-- Quest 26249 The Admiral's Cabin Dead 
DELETE FROM `creature` WHERE (`id`='43082');
INSERT INTO `creature` VALUES (null, 43082, 646, 1, 1, 0, 0, 1465.58, -23.5095, -82.8991, 5.87114, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43082, 646, 1, 1, 0, 0, 1382.59, 55.4244, -88.112, 2.17662, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43082, 646, 1, 1, 0, 0, 1389.66, -16.4553, -89.5977, 5.20355, 600, 10, 0, 42, 0, 1, 0, 0, 0);
INSERT INTO `creature` VALUES (null, 43082, 646, 1, 1, 0, 0, 1252.49, -1.19831, -65.5511, 0.83673, 600, 10, 0, 42, 0, 1, 0, 0, 0);

-- Quest 26427 Without a Captain or Crew - AUTOCOMPLETE - The ship doesn't keep up the gameobject, they fall off
UPDATE `quest_template` SET `RequiredItemId1`='0', `RequiredItemId2`='0', `RequiredItemCount1`='0', `RequiredItemCount2`='0' WHERE (`Id`='26427');

-- Quest 27100 Twilight Research CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27101' WHERE (`Id`='27100');
UPDATE `quest_template` SET `NextQuestIdChain`='27102' WHERE (`Id`='27101');
UPDATE `quest_template` SET `PrevQuestId`='27100' WHERE (`Id`='27101');
UPDATE `quest_template` SET `PrevQuestId`='27101' WHERE (`Id`='27102');

-- Quest 27101 Maziel's Revelation
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27101');

-- Quest 27102 Maziel's Ascendancy
UPDATE `gameobject_template` SET `faction`='35', `flags`='0' WHERE (`entry`='205207');
UPDATE `gameobject` SET `phaseMask`='1' WHERE (`id`='205207');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27102');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='27136');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26259');
UPDATE `quest_template` SET `Flags`='0' WHERE (`Id`='26244');
UPDATE `quest_template` SET `Flags`='524288' WHERE (`Id`='27100');

-- Quest 27100 Twilight Research
UPDATE `creature_template` SET `lootid`='44936' WHERE (`entry`='44936');
DELETE FROM `creature_loot_template` WHERE (`entry`='44936') AND (`item`='60816');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44936', '60816', '50');

UPDATE `creature_template` SET `lootid`='43158' WHERE (`entry`='43158');
DELETE FROM `creature_loot_template` WHERE (`entry`='43158') AND (`item`='60816');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43158', '60816', '5');
DELETE FROM `creature_loot_template` WHERE (`entry`='43158') AND (`item`='60814');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43158', '60814', '40');

-- Quest 26259 Blood of the Earthwarder
UPDATE `creature_template` SET `lootid`='43123' WHERE (`entry`='43123');
DELETE FROM `creature_loot_template` WHERE (`entry`='43123') AND (`item`='59062');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('43123', '59062', '-80');

-- Quest 27136 Elemental Energy
UPDATE `creature_template` SET `KillCredit1`='45091' WHERE (`entry`='43258');
UPDATE `creature_template` SET `KillCredit1`='45091' WHERE (`entry`='43254');

-- Quest 27953 The Reliquary CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27005' WHERE (`Id`='27953');
UPDATE `quest_template` SET `NextQuestIdChain`='27041' WHERE (`Id`='27005');
UPDATE `quest_template` SET `NextQuestIdChain`='27059' WHERE (`Id`='27041');
UPDATE `quest_template` SET `NextQuestIdChain`='28293' WHERE (`Id`='27059');
UPDATE `quest_template` SET `NextQuestIdChain`='28296' WHERE (`Id`='28293');
UPDATE `quest_template` SET `PrevQuestId`='27953' WHERE (`Id`='27005');
UPDATE `quest_template` SET `PrevQuestId`='27005' WHERE (`Id`='27041');
UPDATE `quest_template` SET `PrevQuestId`='27041' WHERE (`Id`='27059');
UPDATE `quest_template` SET `PrevQuestId`='27059' WHERE (`Id`='28293');
UPDATE `quest_template` SET `PrevQuestId`='28293' WHERE (`Id`='28296');

UPDATE `quest_template` SET `RequiredRaces`='2098253' WHERE (`Id`='27952');
UPDATE `quest_template` SET `RequiredRaces`='946' WHERE (`Id`='27953');

-- Quest 27952 The Explorers CHAIN TIMELINE FIX
UPDATE `quest_template` SET `NextQuestIdChain`='27004' WHERE (`Id`='27952');
UPDATE `quest_template` SET `NextQuestIdChain`='27040' WHERE (`Id`='27004');
UPDATE `quest_template` SET `NextQuestIdChain`='27058' WHERE (`Id`='27040');
UPDATE `quest_template` SET `NextQuestIdChain`='28292' WHERE (`Id`='27058');
UPDATE `quest_template` SET `NextQuestIdChain`='28295' WHERE (`Id`='28292');
UPDATE `quest_template` SET `PrevQuestId`='27952' WHERE (`Id`='27004');
UPDATE `quest_template` SET `PrevQuestId`='27004' WHERE (`Id`='27040');
UPDATE `quest_template` SET `PrevQuestId`='27040' WHERE (`Id`='27058');
UPDATE `quest_template` SET `PrevQuestId`='27058' WHERE (`Id`='28292');
UPDATE `quest_template` SET `PrevQuestId`='28292' WHERE (`Id`='28295');

-- Quest 27005 The Twilight Plot
UPDATE `creature_template` SET `lootid`='44847' WHERE (`entry`='44847');
DELETE FROM `creature_loot_template` WHERE (`entry`='44847') AND (`item`='60745');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44847', '60745', '-30');

UPDATE `creature_template` SET `lootid`='44849' WHERE (`entry`='44849');
DELETE FROM `creature_loot_template` WHERE (`entry`='44849') AND (`item`='60745');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44849', '60745', '-28');

UPDATE `creature_template` SET `lootid`='44855' WHERE (`entry`='44855');
DELETE FROM `creature_loot_template` WHERE (`entry`='44855') AND (`item`='60745');
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES ('44855', '60745', '-20');

-- Quest 27041/27040 Decryption Made Easy 
DELETE FROM `gameobject` WHERE (`id`='205145');
INSERT INTO `gameobject` VALUES (null, 205145, 646, 1, 1, 542.283, 1000.94, 78.058, 6.2772, 0, 0, 0.00299278, -0.999996, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205145, 646, 1, 1, 579.3, 1041.58, 76.5125, 4.80066, 0, 0, 0.675222, -0.737615, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205145, 646, 1, 1, 531.739, 1085.28, 72.8318, 0.0215022, 0, 0, 0.0107509, 0.999942, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205145, 646, 1, 1, 507.218, 1122.37, 68.1623, 0.304245, 0, 0, 0.151537, 0.988452, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205145, 646, 1, 1, 453.528, 1145, 61.5178, 1.99285, 0, 0, 0.839535, 0.543306, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205145, 646, 1, 1, 269.176, 972.3, 60.1532, 1.86719, 0, 0, 0.803763, 0.59495, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205145, 646, 1, 1, 243.951, 909.559, 57.2207, 2.0007, 0, 0, 0.841661, 0.540006, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205145, 646, 1, 1, 286.043, 893.024, 54.9995, 4.60824, 0, 0, 0.742954, -0.669342, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205145, 646, 1, 1, 358.798, 960.053, 57.2521, 5.39756, 0, 0, 0.428482, -0.90355, 300, 0, 1);
INSERT INTO `gameobject` VALUES (null, 205145, 646, 1, 1, 415.004, 922.822, 72.1533, 2.31488, 0, 0, 0.915777, 0.401686, 300, 0, 1);
DELETE FROM `creature_involvedrelation` WHERE (`id`='44676') AND (`quest`='27041');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('44676', '27041');
UPDATE `creature_template` SET `npcflag`='3' WHERE (`entry`='44676');
DELETE FROM `creature_involvedrelation` WHERE (`id`='45294') AND (`quest`='27040');
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES ('45294', '27040');
UPDATE `creature_template` SET `npcflag`='3' WHERE (`entry`='45294');

-- Quest 27059 The Wrong Sequence
DELETE FROM `gameobject` WHERE (`id`='205161');
INSERT INTO `gameobject` VALUES (null, 205161, 646, 1, 1, 286.206, 1055.55, 56.36, 2.38664, 0, 0, 0.929598, 0.368575, 300, 0, 1);

-- Quest 27008 Fly Over CHAIN TIMELINE FIX HORDE
UPDATE `quest_template` SET `NextQuestIdChain`='27043' WHERE (`Id`='27008');
UPDATE `quest_template` SET `PrevQuestId`='27008' WHERE (`Id`='27043');

-- Quest 27006 Fly Over CHAIN TIMELINE FIX ALLIANCE
UPDATE `quest_template` SET `NextQuestIdChain`='27042' WHERE (`Id`='27006');
UPDATE `quest_template` SET `PrevQuestId`='27006' WHERE (`Id`='27042');

-- Quest 27008 Fly Over
DELETE FROM `creature_template` WHERE (`entry`='341758');
INSERT INTO `creature_template` VALUES (341758, 0, 0, 0, 0, 0, 1126, 15880, 0, 0, 'Credit bunny', '', '', 0, 1, 1, 0, 0, 35, 35, 0, 1, 1.14286, 1, 0, 0, 0, 0, 0, 1, 2000, 2000, 1, 33555200, 2048, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 0, 3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 15595);

DELETE FROM `creature_template_addon` WHERE (`entry`='341758');
INSERT INTO `creature_template_addon` VALUES (341758, 0, 0, 65536, 1, 0, '64573 52855');

DELETE FROM `creature` WHERE (`id`='341758');
INSERT INTO `creature` VALUES (null, 341758, 646, 1, 1, 0, 0, 267.151, 1073.410, 60.6, 0.871088, 300, 0, 0, 42, 0, 0, 0, 0, 0);

DELETE FROM smart_scripts WHERE entryorguid IN (341758) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (341758, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 33, 44839, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'credit');

-- Quest 27043 Fight Fire and Water and Air With... 
UPDATE `creature_template` SET `KillCredit1`='44889' WHERE (`entry`='44887');
UPDATE `creature_template` SET `KillCredit1`='44888' WHERE (`entry`='44886');
UPDATE `creature_template` SET `KillCredit1`='44890' WHERE (`entry`='44885');