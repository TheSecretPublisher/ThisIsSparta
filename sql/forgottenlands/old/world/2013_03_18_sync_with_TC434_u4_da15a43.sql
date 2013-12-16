UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190378; -- Wintergrasp Fortress Tower
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191799; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191809; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191808; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191807; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191798; -- Wintergrasp Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190377; -- Wintergrasp Fortress Tower
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190370; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191801; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191810; -- Wintergrasp Fortress Door
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190372; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191806; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191805; -- Wintergrasp Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190376; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191804; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191795; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191797; -- Wintergrasp Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190375; -- Wintergrasp Fortress Gate
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191800; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190373; -- Wintergrasp Fortress Tower
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190369; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191803; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190371; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190221; -- Wintergrasp Fortress Tower
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=191802; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190219; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190220; -- Wintergrasp Fortress Wall
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=192030; -- Goblin Workshop
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190358; -- Flamewatch Tower
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190357; -- Winter's Edge Tower
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=190356; -- Shadowsight Tower
SET @NPC_DRAKE  := 29709;

DELETE FROM `waypoint_data` WHERE `id`=@NPC_DRAKE;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@NPC_DRAKE,1,7294.96,-2418.733,823.869,0,0,0,0,100,0),
(@NPC_DRAKE,2,7315.984,-2331.46,826.3972,0,0,0,0,100,0),
(@NPC_DRAKE,3,7271.826,-2271.479,833.5917,0,0,0,0,100,0),
(@NPC_DRAKE,4,7186.253,-2218.475,847.5632,0,0,0,0,100,0),
(@NPC_DRAKE,5,7113.195,-2164.288,850.2301,0,0,0,0,100,0),
(@NPC_DRAKE,6,7078.018,-2063.106,854.7581,0,0,0,0,100,0),
(@NPC_DRAKE,7,7073.221,-1983.382,861.9246,0,0,0,0,100,0),
(@NPC_DRAKE,8,7061.455,-1885.899,865.119,0,0,0,0,100,0),
(@NPC_DRAKE,9,7033.32,-1826.775,876.2578,0,0,0,0,100,0),
(@NPC_DRAKE,10,6999.902,-1784.012,897.4521,0,0,0,0,100,0),
(@NPC_DRAKE,11,6954.913,-1747.043,897.4521,0,0,0,0,100,0),
(@NPC_DRAKE,12,6933.856,-1720.698,882.2022,0,0,0,0,100,0),
(@NPC_DRAKE,13,6932.729,-1687.306,866.1189,0,0,0,0,100,0),
(@NPC_DRAKE,14,6952.458,-1663.802,849.8133,0,0,0,0,100,0),
(@NPC_DRAKE,15,7002.819,-1651.681,831.397,0,0,0,0,100,0),
(@NPC_DRAKE,16,7026.531,-1649.239,828.8406,0,0,0,0,100,0);
UPDATE `creature_template` SET `Armor_mod`=0 WHERE `entry`=29747;
DELETE FROM `spell_target_position` WHERE `id` IN (64014,64024,64025,64028,64029,64030,64031,64032,65042);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(64014, 603, -705.9705, -92.55729, 430.8192, 0),
(64024, 603, 2086.224, -24.05382, 422.2889, 0),
(64025, 603, 2518.131, 2569.342, 412.6822, 0),
(64028, 603, 553.243, -12.30903, 410.5428, 0),
(64029, 603, 1859.563, -24.83773, 449.1945, 6.230825),
(64030, 603, 1497.989, -24.16162, 421.6254, 0.03490658),
(64031, 603, 926.2917, -11.44444, 418.9779, 0.01745329),
(64032, 603, 131.1389, -35.36806, 410.187, 0),
(65042, 603, 1855.073, -11.48785, 334.559, 5.532694);
-- Lurgglbr
DELETE FROM `creature_text` WHERE `entry`=25208;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(25208,0,0, 'You can''t hold me against my will! You''ve all been brainwashed!', 12,0,100,0,0,0, 'Lurgglbr'),
(25208,1,0, 'Together we will fight our way out of here. Are you ready?', 12,0,100,0,0,0, 'Lurgglbr'),
(25208,2,0, 'This is far enough. I can make it on my own from here.', 12,0,100,0,0,0, 'Lurgglbr'),
(25208,3,0, 'Thank you for rescuing me, $r. Please tell the king that I am back.', 12,0,100,0,0,0, 'Lurgglbr');
-- quest fix cuergo's gold (q2882)
SET @ENTRY :=7898;
UPDATE `creature_template` SET `AIName`= 'SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND`entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND`entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,63,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Trigger - on respawn - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,300000,300000,11,11463,0,0,0,0,0,1,0,0,0,0,0,0,0,'Timed Actionscript - spawn pirate1'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,300000,300000,11,11463,0,0,0,0,0,1,0,0,0,0,0,0,0,'Timed Actionscript - spawn pirate2'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,300000,300000,11,11485,0,0,0,0,0,1,0,0,0,0,0,0,0,'Timed Actionscript - spawn buccaneer1'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,300000,300000,11,11485,0,0,0,0,0,1,0,0,0,0,0,0,0,'Timed Actionscript - spawn buccaneer2'),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,300000,300000,11,11487,0,0,0,0,0,1,0,0,0,0,0,0,0,'Timed Actionscript - spawn swashbuckler'),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Timed Actionscript - despawn trigger');
-- Remove Zulian Mudskunk from Zulian Crocolisk's loot template
DELETE FROM `creature_loot_template` WHERE `entry`=15043 and `item`=19975;
-- Add Vicious Oil (Item) into loot template of Vicious Oil (NPC)
DELETE FROM `creature_loot_template` WHERE `entry`=30325 and `item`=42640;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
(30325,42640,-100,1,0,1,1);
-- Previous quest should be The Defense of Warsong Hold not To Conquest Hold, But Be Careful!
UPDATE `quest_template` SET `PrevQuestId`=11596 WHERE  `Id`=12486;
-- Change grouping so Alliance and Horde quests are no longer in 1 group
UPDATE `quest_template` SET `ExclusiveGroup`=-12222 WHERE  `Id` IN(12222,12223);
-- Hellscreams Champion requires some conditions to start the quest
UPDATE `quest_template` SET `ExclusiveGroup`=0,`NextQuestId`=0 WHERE  `Id` IN(11652,11705,11722);
UPDATE `quest_template` SET `NextQuestId`=11709 WHERE `Id`=11705;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry`=11916;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(20,0,11916,0,0,8,0,11652,0,0,0,0, '', 'Player must have completed The Plains of Nasam before been able to accept Hellscream''s Champion'),
(19,0,11916,0,0,8,0,11652,0,0,0,0, '', 'Player must have completed The Plains of Nasam before been able to accept Hellscream''s Champion'),
(20,0,11916,0,0,8,0,11705,0,0,0,0, '', 'Player must have completed The Foolish Endeavors before been able to accept Hellscream''s Champion'),
(19,0,11916,0,0,8,0,11705,0,0,0,0, '', 'Player must have completed The Foolish Endeavors before been able to accept Hellscream''s Champion'),
(20,0,11916,0,0,8,0,11722,0,0,0,0, '', 'Player must have completed The Trophies of Gammoth before been able to accept Hellscream''s Champion'),
(19,0,11916,0,0,8,0,11722,0,0,0,0, '', 'Player must have completed The Trophies of Gammoth before been able to accept Hellscream''s Champion');
-- Fix SAI issue for Hugh Glass (wrong npcflag was set)
UPDATE `smart_scripts` SET `action_param1`=643 WHERE  `entryorguid`=2648400 AND `source_type`=9 AND `id`=6;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_frost_breath';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_item_unsated_craving';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69649,'spell_sindragosa_frost_breath'),
(71056,'spell_sindragosa_frost_breath'),
(71057,'spell_sindragosa_frost_breath'),
(71058,'spell_sindragosa_frost_breath'),
(73061,'spell_sindragosa_frost_breath'),
(73062,'spell_sindragosa_frost_breath'),
(73063,'spell_sindragosa_frost_breath'),
(73064,'spell_sindragosa_frost_breath'),
(71168,'spell_item_unsated_craving');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=71952;
-- creature_template.equipment_id deleted
-- creature_equip_template.entry == creature_template.entry
-- id field added to creature_equip_template -> PK(entry, id)
-- id field in creature_equip_template starts at 1
-- creature.equipment_id references id of creature_equip_template
-- creature.equipment_id = 0 means no equipment at all (default 1)
-- creature.equipment_id = -1 means pick a random equipment from creature_equip_template

-- Diff_entries should use the same template of the normal entry
UPDATE `creature_template` SET `equipment_id` = 0 WHERE `name` LIKE '%(1)' OR `name` LIKE '%(2)' OR `name` LIKE '%(3)' OR `name` LIKE '%(4)';

-- Delete unused templates
DROP TABLE IF EXISTS `temp_c_e`;
CREATE TABLE IF NOT EXISTS `temp_c_e` (`entry` mediumint(8));
ALTER TABLE `temp_c_e` ADD INDEX `ind` (`entry`);
INSERT INTO `temp_c_e` SELECT `equipment_id` FROM `creature_template` WHERE `equipment_id` != 0 UNION
                       SELECT `equipment_id` FROM `creature` WHERE `equipment_id` != 0 UNION
                       SELECT `equipment_id` FROM `game_event_model_equip` WHERE `equipment_id` != 0;
DELETE FROM `creature_equip_template` WHERE `entry` NOT IN (SELECT `entry` FROM `temp_c_e`);
DROP TABLE `temp_c_e`;

-- Create temporary table to hold the values of creature_equip_template with converted entry
DROP TABLE IF EXISTS `creature_equip_template2`;
CREATE TABLE IF NOT EXISTS `creature_equip_template2` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `itemEntry1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itemEntry2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itemEntry3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`, `id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `creature_equip_template2` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`)
    SELECT `creature_template`.`entry`, 1, `itemEntry1`, `itemEntry2`, `itemEntry3`
    FROM `creature_template`
    JOIN `creature_equip_template` ON `creature_equip_template`.`entry` = `equipment_id`
    WHERE `equipment_id` != 0;

INSERT IGNORE INTO `creature_equip_template2` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`)
    SELECT `id`, 2, `itemEntry1`, `itemEntry2`, `itemEntry3`
    FROM `creature`
    JOIN `creature_equip_template` ON `creature_equip_template`.`entry` = `equipment_id`
    WHERE `equipment_id` != 0;

DROP TABLE `creature_equip_template`;
RENAME TABLE `creature_equip_template2` TO `creature_equip_template`;

UPDATE `creature` SET `equipment_id` = 2 WHERE `equipment_id` != 0;
UPDATE `creature` SET `equipment_id` = 1 WHERE `equipment_id` = 0;

-- From game_event_model_equip
UPDATE `creature` SET `equipment_id` = 1 WHERE `guid` IN (12088, 12093, 12095, 79670, 79675, 79676, 79690, 79792, 79807, 79814);
UPDATE `game_event_model_equip` SET `equipment_id` = 2 WHERE `guid` IN (12088, 12093, 12095, 79670, 79675, 79676, 79690, 79792, 79807, 79814);
DELETE FROM `creature_equip_template` WHERE `entry` IN (1976, 23585, 424) AND `id`=2;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(1976, 2, 2715, 143, 0),
(23585, 2, 2715, 143, 0),
(424, 2, 2715, 143, 0);

-- ALTER TABLE `creature_equip_template` CHANGE `entry` `entry` mediumint(8) unsigned NOT NULL;
-- ALTER TABLE `creature_equip_template` ADD `id` tinyint(3) unsigned NOT NULL DEFAULT '1' AFTER `entry`;
-- ALTER TABLE `creature_equip_template` DROP INDEX `PRIMARY`, ADD PRIMARY KEY (`entry`, `id`);
ALTER TABLE `creature_template` DROP `equipment_id`;
ALTER TABLE `creature` CHANGE `equipment_id` `equipment_id` tinyint(3) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `game_event_model_equip` CHANGE `equipment_id` `equipment_id` tinyint(3) unsigned NOT NULL DEFAULT '1';

-- Conversion from SAI
UPDATE `smart_scripts` SET `action_param1` = 1 WHERE `entryorguid` = 2523901 AND `source_type` = 9 AND `id` = 3;
UPDATE `smart_scripts` SET `action_param1` = 0 WHERE `entryorguid` = 2523900 AND `source_type` = 9 AND `id` = 2;
UPDATE `smart_scripts` SET `action_param1` = 2 WHERE `entryorguid` = 32720   AND `source_type` = 0 AND `id` = 0;
DELETE FROM `creature_equip_template` WHERE `entry` = 25239 AND `id`=1;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES 
(25239, 1, 6829, 0, 0);
DELETE FROM `trinity_string` WHERE `entry` = 5036;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES 
(5036, 'EquipmentId: %u (Original: %u).');
-- Creature Gossip_menu_option Update from sniff
UPDATE `gossip_menu_option` SET `menu_id`=9528 WHERE `menu_id`=21250;
UPDATE `gossip_menu_option` SET `action_menu_id`=9527 WHERE `action_menu_id`=50423;
UPDATE `gossip_menu_option` SET `action_menu_id`=9521 WHERE `action_menu_id`=50424;
UPDATE `gossip_menu_option` SET `action_menu_id`=9526 WHERE `action_menu_id`=50425;
UPDATE `gossip_menu_option` SET `action_menu_id`=9525 WHERE `action_menu_id`=50426;
UPDATE `gossip_menu_option` SET `action_menu_id`=9681 WHERE `menu_id`=9680;
UPDATE `gossip_menu_option` SET `action_menu_id`=9696 WHERE `menu_id`=9695;
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9302,9303,9304,9305,9422,9461,9462,9474,9501,9532,9536,9568,9586,9594,9595,9610,9611,9612,9653,9696) AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(9302,0,0, 'Worry no more, taunka. The Horde will save and protect you and your people, but first you must swear allegiance to the Warchief by taking the blood oath of the Horde.',1,1,9305,0,0,0, ''),
(9303,0,0, 'For the Horde!\r\n\r\nArm yourself from the crates that surround us and report to Agmar''s Hammer, east of here. Your first trial as a member of the Horde is to survive the journey.\r\n\r\nLok''tar ogar!',1,1,0,0,0,0, ''),
(9304,0,0, 'Then repeat after me: "Lok''tar ogar! Victory or death - it is these words that bind me to the Horde. For they are the most sacred and fundamental of truths to any warrior of the Horde.\r\n\r\nI give my flesh and blood freely to the Warchief. I am the instrument of my Warchief''s desire. I am a weapon of my Warchief''s command.\r\n\r\nFrom this moment until the end of days I live and die - For the Horde!"',1,1,9303,0,0,0, ''),
(9305,0,0, 'Yes, taunka. Retribution is a given right of all members of the Horde.',1,1,9304,0,0,0, ''),
(9422,0,0, 'I seem to have misplaced your Shredder Control Device... might you have another?',1,1,0,0,0,0, ''),
(9461,0,0, 'Greetings High Chief. Would you do me the honor of accepting my invitation to join the Horde as an official member and leader of the Taunka?',1,1,9462,0,0,0, ''),
(9462,0,0, 'It is you who honor me, High Chief. Please read from this scroll. It is the oath of allegiance.',1,1,0,0,0,0, ''),
(9474,0,1, 'Let me browse your goods.',3,128,0,0,0,0, ''),
(9501,0,0, 'Agent Skully, I need you to use the banshee''s magic mirror on me again!',1,1,9538,0,0,0, ''),
(9532,0,0, 'Your eminence, may I have a word in private?',1,1,9536,0,0,0, ''),
(9536,0,0, 'I am ready, your grace. <kiss the ring>',1,1,9535,0,0,0, ''),
(9568,0,0, 'We need to get into the fight. Are you ready?',1,1,9569,0,0,0, ''),
(9586,0,0, 'Why have I been sent back to this particular place and time?',1,1,9594,0,0,0, ''),
(9594,0,0, 'What was this decision?',1,1,9595,0,0,0, ''),
(9595,0,0, 'So how does the Infinite Dragonflight plan to interfere?',1,1,9596,0,0,0, ''),
(9610,0,0, 'What do you think they''re up to?',1,1,9611,0,0,0, ''),
(9611,0,0, 'You want me to do what?',1,1,9612,0,0,0, ''),
(9612,0,0, 'Very well, Chromie.',1,1,9613,0,0,0, ''),
(9653,0,0, 'Yes, my Prince. We are ready.',1,1,0,0,0,0, ''),
(9696,0,0, 'For Lordaeron!',1,1,0,0,0,0, '');

UPDATE `gossip_menu` SET `entry`=9350 WHERE `entry`=21238;
UPDATE `gossip_menu` SET `entry`=9136 WHERE `entry`=21243;
UPDATE `gossip_menu` SET `entry`=9151 WHERE `entry`=21244;
UPDATE `gossip_menu` SET `entry`=9474 WHERE `entry`=21245;
UPDATE `gossip_menu` SET `entry`=9528 WHERE `entry`=21250;
UPDATE `gossip_menu` SET `entry`=9527 WHERE `entry`=50423;
UPDATE `gossip_menu` SET `entry`=9521 WHERE `entry`=50424;
UPDATE `gossip_menu` SET `entry`=9526 WHERE `entry`=50425;
UPDATE `gossip_menu` SET `entry`=9525 WHERE `entry`=50426;
-- Gossip Menu insert from sniff
DELETE FROM `gossip_menu` WHERE `entry`=9302 AND `text_id`=12611;
DELETE FROM `gossip_menu` WHERE `entry`=9303 AND `text_id`=12620;
DELETE FROM `gossip_menu` WHERE `entry`=9304 AND `text_id`=12619;
DELETE FROM `gossip_menu` WHERE `entry`=9305 AND `text_id`=12618;
DELETE FROM `gossip_menu` WHERE `entry`=9461 AND `text_id`=12721;
DELETE FROM `gossip_menu` WHERE `entry`=9462 AND `text_id`=12722;
DELETE FROM `gossip_menu` WHERE `entry`=9532 AND `text_id`=12846;
DELETE FROM `gossip_menu` WHERE `entry`=9535 AND `text_id`=12849;
DELETE FROM `gossip_menu` WHERE `entry`=9536 AND `text_id`=12848;
DELETE FROM `gossip_menu` WHERE `entry`=9538 AND `text_id`=12851;
DELETE FROM `gossip_menu` WHERE `entry`=9568 AND `text_id`=12899;
DELETE FROM `gossip_menu` WHERE `entry`=9569 AND `text_id`=12900;
DELETE FROM `gossip_menu` WHERE `entry`=9586 AND `text_id`=13471;
DELETE FROM `gossip_menu` WHERE `entry`=9653 AND `text_id`=13076;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9302,12611),
(9303,12620),
(9304,12619),
(9305,12618),
(9461,12721),
(9462,12722),
(9532,12846),
(9535,12849),
(9536,12848),
(9538,12851),
(9568,12899),
(9569,12900),
(9586,13471),
(9653,13076);

-- Creature Gossip_menu_id Update from sniff
UPDATE `creature_template` SET `gossip_menu_id`=9136 WHERE `entry`=25197; -- King Mrgl-Mrgl <D.E.H.T.A.>
UPDATE `creature_template` SET `gossip_menu_id`=9151 WHERE `entry`=25326; -- Overlord Bor'gorok
UPDATE `creature_template` SET `gossip_menu_id`=9474 WHERE `entry`=25736; -- Supply Master Taz'ishi <Poison & Reagents>
UPDATE `creature_template` SET `gossip_menu_id`=9302, `npcflag`=`npcflag`|1, `AIName`='SmartAI' WHERE `entry`=26179; -- Taunka''le Refugee
UPDATE `creature_template` SET `gossip_menu_id`=9302, `npcflag`=`npcflag`|1, `AIName`='SmartAI' WHERE `entry`=26184; -- Taunka''le Refugee
UPDATE `creature_template` SET `gossip_menu_id`=9350 WHERE `entry`=26538; -- Nargo Screwbore <Durotar Zeppelin Master>
UPDATE `creature_template` SET `gossip_menu_id`=9461 WHERE `entry`=26810; -- Roanauk Icemist
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=27056; -- Sentinel Sweetspring <Stable Master>
UPDATE `creature_template` SET `gossip_menu_id`=9532 WHERE `entry`=27245; -- High Abbot Landgren
UPDATE `creature_template` SET `gossip_menu_id`=9528 WHERE `entry`=27425; -- Darrok
UPDATE `creature_template` SET `gossip_menu_id`=9610 WHERE `entry`=27915; -- Chromie
UPDATE `creature_template` SET `gossip_menu_id`=9656 WHERE `entry`=28126; -- Don Carlos

DELETE FROM `creature_text` WHERE `entry` IN (26179,26184);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(26179,0,0,'Victory or death! For the Horde!',14,1,100,15,0,0,'Taunka''le Refugee'),
(26184,0,0,'Victory or death! For the Horde!',14,1,100,15,0,0,'Taunka''le Refugee');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=9568 AND `SourceEntry`=12899;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=9586 AND `SourceEntry`=13471;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9302 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9422 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9461 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9501 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9568 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9586 AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,9568,12899,0,0,9,0,12372,0,0,0,0,'','Wyrmrest Defender - Show different gossip if player has taken quest Defending Wyrmrest Temple'),
(14,9586,13471,0,0,2,0,37888,1,0,0,0,'','Chromie - Show different gossip if player has item Arcane Disruptor'),
(15,9302,0,0,0,9,0,11983,0,0,0,0,'','Taunka''le Refugee - Show gossip option only if player has taken quest Blood Oath of the Horde'),
(15,9422,0,0,0,9,0,12050,0,0,0,0,'','Xink - Show gossip option only if player has taken quest Lumber Hack'),
(15,9422,0,0,0,2,0,36734,1,0,1,0,'','Xink - Show gossip option only if player has no item Xink''s Shredder Control Device'),
(15,9422,0,0,1,9,0,12052,0,0,0,0,'','Xink - Show gossip option only if player has taken quest Harp on This!'),
(15,9422,0,0,1,2,0,36734,1,0,1,0,'','Xink - Show gossip option only if player has no item Xink''s Shredder Control Device'),
(15,9461,0,0,0,9,0,12140,0,0,0,0,'','Roanauk Icemist - Show gossip option only if player has taken quest All Hail Roanauk!'),
(15,9501,0,0,0,9,0,12274,0,0,0,0,'','Agent Skully - Show gossip option only if player has taken quest A Fall From Grace'),
(15,9501,0,0,0,1,0,48761,0,0,1,0,'','Agent Skully - Show gossip option only if player has no aura Scarlet Raven Priest Image'),
(15,9501,0,0,0,1,0,48763,0,0,1,0,'','Agent Skully - Show gossip option only if player has no aura Scarlet Raven Priest Image'),
(15,9568,0,0,0,9,0,12372,0,0,0,0,'','Wyrmrest Defender - Show gossip option only if player has taken quest Defending Wyrmrest Temple'),
(15,9586,0,0,0,2,0,37888,1,0,1,0,'','Chromie - Show gossip option only if player has no item Arcane Disruptor');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (26660,27350);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26179,26184,26660,27350) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=26179*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(26179,0,0,1,62,0,100,0,9303,0,0,0,11,47029,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Spellcast Taunka Sworn In'),
(26179,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Close gossip'),
(26179,0,2,3,61,0,100,0,0,0,0,0,33,26179,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Quest credit'),
(26179,0,3,4,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Remove npcflag gossip'),
(26179,0,4,5,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188252,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26179,0,5,6,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188253,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26179,0,6,0,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188254,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26179,0,7,0,34,0,100,0,0,1,0,0,80,26179*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On movement inform - Run script'),
(26179,0,8,9,34,0,100,0,0,2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On movement inform - Despawn'),
(26179,0,9,0,61,0,100,0,0,0,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Add npcflag gossip'),
(26184,0,0,1,62,0,100,0,9303,0,0,0,11,47029,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Spellcast Taunka Sworn In'),
(26184,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Close gossip'),
(26184,0,2,3,61,0,100,0,0,0,0,0,33,26179,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Quest credit'),
(26184,0,3,4,61,0,100,0,0,0,0,0,83,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Remove npcflag gossip'),
(26184,0,4,5,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188252,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26184,0,5,6,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188253,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26184,0,6,0,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,20,188254,20,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Move to Recovered Horde Armaments'),
(26184,0,7,0,34,0,100,0,0,1,0,0,80,26179*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On movement inform - Run script'),
(26184,0,8,9,34,0,100,0,0,2,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On movement inform - Despawn'),
(26184,0,9,0,61,0,100,0,0,0,0,0,82,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee - On gossip option select - Add npcflag gossip'),
(26660,0,0,1,62,0,100,0,9422,0,0,0,11,52872,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Xink - On gossip option select - Spellcast Forceitem Xink''s Shredder'),
(26660,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Xink - On gossip option select - Close gossip'),
(27350,0,0,0,62,0,100,0,9501,0,0,0,11,48762,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Agent Skully - On gossip option select - Spellcast A Fall from Grace: Scarlet Raven Priest Image - Master'),

(26179*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,20,188252,20,0,0,0,0,0, 'Taunka''le Refugee script - Turn to Recovered Horde Armaments'),
(26179*100,9,1,0,0,0,100,0,1100,1100,0,0,5,381,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee script - Play emote'),
(26179*100,9,2,0,0,0,100,0,2500,2500,0,0,5,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee script - Cancel emote'),
(26179*100,9,3,0,0,0,100,0,0,0,0,0,11,47024,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee script - Spellcast Taunka Transform'),
(26179*100,9,4,0,0,0,100,0,2200,2200,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee script - Say line'),
(26179*100,9,5,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Taunka''le Refugee script - Set run'),
(26179*100,9,6,0,0,0,100,0,4700,4700,0,0,69,2,0,0,0,0,0,8,0,0,0,3680.874,2875.829,91.52616,0, 'Taunka''le Refugee script - Move to position');
DELETE FROM `spell_area` WHERE `spell`=68132 AND `area`=4741;
INSERT INTO `spell_area` (`spell`, `area`, `autocast`) VALUES
(68132, 4741, 1);
-- Issue 8590: Damage Boss ICC
-- Lord Marrowgar
UPDATE `creature_template` SET `dmg_multiplier`=55 WHERE `entry`=36612;
UPDATE `creature_template` SET `dmg_multiplier`=85 WHERE `entry`=37957;
UPDATE `creature_template` SET `dmg_multiplier`=75 WHERE `entry`=37958;
UPDATE `creature_template` SET `dmg_multiplier`=110 WHERE `entry`=37959;
-- Lady Deathwhisper
UPDATE `creature_template` SET `dmg_multiplier`=70 WHERE `entry`=36855;
UPDATE `creature_template` SET `dmg_multiplier`=100 WHERE `entry`=38106;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38296;
UPDATE `creature_template` SET `dmg_multiplier`=140 WHERE `entry`=38297;
-- Deathbringer Saurfang
UPDATE `creature_template` SET `dmg_multiplier`=60 WHERE `entry`=37813;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38402;
UPDATE `creature_template` SET `dmg_multiplier`=85 WHERE `entry`=38582;
UPDATE `creature_template` SET `dmg_multiplier`=120 WHERE `entry`=38583;
-- Festergut
UPDATE `creature_template` SET `dmg_multiplier`=75 WHERE `entry`=36626;
UPDATE `creature_template` SET `dmg_multiplier`=115 WHERE `entry`=37504;
UPDATE `creature_template` SET `dmg_multiplier`=100 WHERE `entry`=37505;
UPDATE `creature_template` SET `dmg_multiplier`=150 WHERE `entry`=37506;
-- Rotface
UPDATE `creature_template` SET `dmg_multiplier`=70 WHERE `entry`=36627;
UPDATE `creature_template` SET `dmg_multiplier`=100 WHERE `entry`=38390;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38549;
UPDATE `creature_template` SET `dmg_multiplier`=140 WHERE `entry`=38550;
-- Professor Putricide
UPDATE `creature_template` SET `dmg_multiplier`=60 WHERE `entry`=36678;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38431;
UPDATE `creature_template` SET `dmg_multiplier`=80 WHERE `entry`=38585;
UPDATE `creature_template` SET `dmg_multiplier`=120 WHERE `entry`=38586;
-- Blood Prince Council except Keleseth who is a caster
UPDATE `creature_template` SET `dmg_multiplier`=65 WHERE `entry` IN (37970,37973);
UPDATE `creature_template` SET `dmg_multiplier`=95 WHERE `entry` IN (38401,38400);
UPDATE `creature_template` SET `dmg_multiplier`=85 WHERE `entry` IN (38784,38771);
UPDATE `creature_template` SET `dmg_multiplier`=130 WHERE `entry` IN (38785,38772);
-- Blood Queen Lana'thel
UPDATE `creature_template` SET `dmg_multiplier`=60 WHERE `entry`=37955;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38434;
UPDATE `creature_template` SET `dmg_multiplier`=80 WHERE `entry`=38435;
UPDATE `creature_template` SET `dmg_multiplier`=120 WHERE `entry`=38436;
-- Sindragosa (and damage for Sindragosa 10 who hits only 1)
UPDATE `creature_template` SET `dmg_multiplier`=60, mindmg=509, maxdmg=683, attackpower=805 WHERE `entry`=36853;
UPDATE `creature_template` SET `dmg_multiplier`=90 WHERE `entry`=38265;
UPDATE `creature_template` SET `dmg_multiplier`=80 WHERE `entry`=38266;
UPDATE `creature_template` SET `dmg_multiplier`=120 WHERE `entry`=38267;
-- Flags 128+2: creature is trigger-NPC (invisible to players only) + creature does not aggro (ignore faction/reputation hostility)
UPDATE `creature_template` SET `flags_extra` = (`flags_extra`|2|128) WHERE `entry` IN (32195,32196,32197,32199);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=23 AND `SourceGroup`=12944 AND `SourceEntry` IN (20761,17051,17022,17018,17023,19444);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=23 AND `SourceGroup`=12944 AND `SourceEntry` IN (19219,17017,17025,19330,19448,17059,17060,17049,19206);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=23 AND `SourceGroup`=12944 AND `SourceEntry` IN (19220,19332,19333,19331,19449,19209,19208,19207,17053,17052);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=23 AND `SourceGroup`=12944 AND `SourceEntry` IN (19211,19210,19212,20040);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
-- Conditon rep Friendly
(23,12944,20761,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
(23,12944,17051,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
(23,12944,17022,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
(23,12944,17018,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
(23,12944,17023,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
(23,12944,19444,0,0,5,0,59,16,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Friendly with Thorium Brotherhood'),
-- Conditon rep Honored
(23,12944,19219,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,17017,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,17025,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,19330,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,19448,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,17059,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,17060,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,17049,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
(23,12944,19206,0,0,5,0,59,32,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Honored with Thorium Brotherhood'),
-- Conditon rep Revered
(23,12944,19220,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19332,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19333,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19331,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19449,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19209,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19208,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,19207,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,17053,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
(23,12944,17052,0,0,5,0,59,64,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Revered with Thorium Brotherhood'),
-- Conditon rep Exalted 
(23,12944,19211,0,0,5,0,59,128,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Exalted with Thorium Brotherhood'),
(23,12944,19210,0,0,5,0,59,128,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Exalted with Thorium Brotherhood'),
(23,12944,19212,0,0,5,0,59,128,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Exalted with Thorium Brotherhood'),
(23,12944,20040,0,0,5,0,59,128,0,0,0, '', 'Lokhtos Darkbargainer - Only sell item if Exalted with Thorium Brotherhood');
-- Fix quest: Gather the Orbs http://www.wowhead.com/quest=10859
-- ID indexes
-- Almost all is based on Untaught script, just corrected some stuff with sniff
SET @OrbCollectingTotem := 22333;
SET @LightOrb           := 20635;
SET @Script :=   @LightOrb * 100;
SET @BanishedState :=      32566;
SET @ArcaneExplosion :=    35426; -- such spells need delay to execute properly, that is why I made actionlist
-- Update templates
UPDATE `creature_template` SET `unit_flags`=unit_flags|0x02000000 WHERE `entry`=@LightOrb; -- sniff
-- Add SAI support for Light Orbs and Totem
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@LightOrb; 4.x
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@LightOrb,@OrbCollectingTotem);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@LightOrb,@OrbCollectingTotem) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Script AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@OrbCollectingTotem,0,0,1,54,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@LightOrb,20,0,0,0,0,0, 'Orb collecting totem - On spawned - Set Data 0 1'),
(@OrbCollectingTotem,0,1,2,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Orb collecting totem - Linked with previous event - Store invoker'),
(@OrbCollectingTotem,0,2,0,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,@LightOrb,20,0,0,0,0,0, 'Orb collecting totem - Linked with previous event - Send stored target list 1'),
(@LightOrb,0,0,0,25,0,100,1,0,0,0,0,11,@BanishedState,0,0,0,0,0,1,0,0,0,0,0,0,0, 'On spawn/reset - Cast Purple Banish State'),
(@LightOrb,0,1,0,38,0,100,0,0,1,30000,30000,69,1,0,0,0,0,0,19,@OrbCollectingTotem,20,0,0,0,0,0, 'Light Orb - On Data Set 0 1 - Move to totem'),
(@LightOrb,0,2,3,34,0,100,1,8,1,0,0,11,@ArcaneExplosion,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - On point 1 reached - Cast arcane explosion'),
(@LightOrb,0,3,4,61,0,100,0,0,0,0,0,33,21929,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Light Orb - Linkedw with previous event - Call kill credit'),
(@LightOrb,0,4,0,61,0,100,0,0,0,0,0,80,@Script,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - Linkedw with previous event - Start action list to display arcase explosion'),
(@Script,9,0,0,0,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - Action 0 - Set unseen'),
(@Script,9,1,0,0,0,100,0,0,0,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Light Orb - Action 1 - Despawn in 100 ms');
-- Remove deprecated required spell cast that was blocking the credit, on top of that it had some nosense spell that has nothing to do with quest?!
-- UPDATE `quest_template` SET `requiredspellcast1`=0 WHERE `id`=10859; 4.x
ALTER TABLE `creature` CHANGE `equipment_id` `equipment_id` tinyint(3) signed NOT NULL DEFAULT '0';
ALTER TABLE `creature_equip_template` CHANGE `id` `id` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `game_event_model_equip` CHANGE `equipment_id` `equipment_id` tinyint(3) unsigned NOT NULL DEFAULT '0';

UPDATE `creature` SET `equipment_id`=0 WHERE `id` NOT IN (SELECT `entry` FROM `creature_equip_template`);

-- content
DELETE FROM `creature_equip_template` WHERE `entry` IN (25317, 2110, 26797, 25239) AND `id`=1;
DELETE FROM `creature_equip_template` WHERE `entry` IN (32720) AND `id`=2;
INSERT INTO `creature_equip_template` (`entry`, `id`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(25317, 1, 2178, 143, 0),
(2110, 1, 24324, 24324, 24319),
(26797, 1, 19970, 0, 0),
(25239, 1, 6829, 0, 0),
(32720, 2, 31308, 0, 0);

UPDATE `creature` SET `equipment_id`=0 WHERE `guid` IN (200908,200918,200968,200971,200980,200998,201004,201035,201050,201052,201068,201094,201103,201112,201113,201135,201149,201150,201192,201203,201206,201363,201438,201449,201486,201685,201710,201722,201740,201752,201756,201773,201782,201788,201814,201864,201908,201916,202023,202043,202146,202164,39317,39318,39319,39320,39321,39322,39323,39324,39325,39326,39327,39328,39329,39330,39331,39332,39333,40170,40171,40227,40563,40564,41319,41322,41323,41324,41325,41326,41327,41328,41669,41726,42616,42641,42668,42669,42680,42686,44193,44194,46975,47413,47414,47415,47416,47417,47418,47419,47420,47421,47422,47423,47424,47425,47426,47427,47428,47429,47430,47431,47445,47632,48383,49987,51458,51751,51982,51983,52926,52927,52928,52929,53166,53651,53844,53845,53846,53847,53848,53849,53850,53851,53951,57315,68749,68750,68751,68752,68753,76521,79676,79725,79758,79759,79760,79761,79762,79763,79764,117784,117785,117788,117789,117790,117796,117797,117798,117799,117800,117801,117802,112352,112353,112354,112355,112356,112357,112358,112359,112360,112361,112362,112363,112364,112365,112366,112367,112368,112371,112372) AND `map` NOT IN (0, 1);

-- 25317
UPDATE `creature` SET `equipment_id`=1 WHERE `guid` IN (117794) AND `map` NOT IN (0, 1);

-- 2110
UPDATE `creature` SET `equipment_id`=1 WHERE `guid` IN (102345,102347,102348,125999,126000,126001,126002,126003,126004,126005,126006,126007,126008,126009,126010,126011,126012,126013,126014,126015,126016,126095,126096,126097,126098,126099,126100,126101,126724,126725,126726,126727,126729,126730,126731,127489,127490,127491,127492,131859,131860,131861,131862,131863,13354,13355,13356,13357,16230,16231,16232,16233,16234,16235,16236,18316,18392,28779,28781,28782,31778,31779,31965,31973,32010,32011,4212,4214,4215,4227,42676,42683,42708,42714,42726,4274,42793,4286,4310,4313,4352,4358,4408,45397,45398,45399,45403,46795,46796,46799,46810,46860,46861,47175,47182,47184,47980,47981,47988,48220,48263,48265,48909,4939,5031,5191,52670,53043,53116,53119,53181,6007,6049,6050,6051,6056,6057,6058,6076,86393,86394,87158,87161,87163,87164,87165,87168,87225,87234,87236,87252) AND `map` NOT IN (0, 1);

-- 26797
UPDATE `creature` SET `equipment_id`=1 WHERE `guid` IN (112351, 112369, 112370) AND `map` NOT IN (0, 1);

UPDATE `smart_scripts` SET `action_param1` = 1 WHERE `entryorguid` = 2523900 AND `source_type` = 9 AND `id` = 2;
UPDATE `smart_scripts` SET `action_param1` = 0 WHERE `entryorguid` = 2523901 AND `source_type` = 9 AND `id` = 3;
UPDATE `smart_scripts` SET `action_param1` = 2 WHERE `entryorguid` = 32720   AND `source_type` = 0 AND `id` = 0;
DELETE FROM `gameobject` WHERE `guid`=61090;
DELETE FROM `areatrigger_teleport` WHERE `id`=5148;
INSERT INTO `areatrigger_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `name`) VALUES
(5148, 1, -8756.6, -4457.02, -200.481, 1.39626, 'CoT Stratholme - Exit Target');
DROP TABLE IF EXISTS `creature_summon_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_summon_groups` (
  `summonerId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `summonerType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `summonType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `summonTime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DELETE FROM `areatrigger_scripts` WHERE `entry`=5173;
INSERT INTO `areatrigger_scripts`(`entry`,`ScriptName`) VALUE
(5173,'at_frostgrips_hollow');
DELETE FROM `smart_scripts` WHERE `entryorguid`=29861 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`event_type`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(29861,0,54,80,2986100,2,1,'Stormforged Eradictor - Just summoned - Call timed actionlist 2986100');

DELETE FROM `smart_scripts` WHERE `entryorguid`=2986100 AND `source_type`=9;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_param1`,`event_param2`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`target_type`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUE
(2986100,9,0,10000,10000,12,29729,4,10000,8,6972.13,14.24,805.79,3.349,'Stormforged Eradictor - Timed actionlist - Summon Frostborn Axemaster');
DELETE FROM `waypoint_data` WHERE `id`=2986200;
INSERT INTO `waypoint_data`(`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(2986200,0,6963.95,45.65,818.71),
(2986200,1,6965.09,39.67,820.15),
(2986200,2,6963.56,21.14,805.79);

DELETE FROM `waypoint_data` WHERE `id`=2986100;
INSERT INTO `waypoint_data`(`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(2986100,0,6983.18,7.150,806.33),
(2986100,1,6975.37,16.73,804.98),
(2986100,2,6967.15,13.27,806.56);
UPDATE `creature_template` SET `faction_A`=1954,`faction_H`=1954,`AIName`='SmartAI' WHERE `entry`=29861;
UPDATE `creature_template` SET `faction_A`=1954,`faction_H`=1954 WHERE `entry`=29862;
DELETE FROM `command` WHERE `name` = 'reload creature_summon_groups';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload creature_summon_groups',3,'Syntax: .reload creature_summon_groups
Reload creature_summon_groups table.');
DELETE FROM `smart_scripts` WHERE `entryorguid`=29861 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`event_type`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(29861,0,0,54,0,0,0,0,80,2986100,2,1,'Stormforged Eradictor - Just summoned - Call timed actionlist 2986100'),
(29861,0,1,0,3000,7000,14000,18000,11,56352,0,2,'Stormforged Eradictor - Cast Storm Punch'),
(29861,0,2,0,9000,12000,13000,18000,11,15588,0,0,'Stormforged Eradictor - Cast Thunderclap');
-- Same values - 4.x
-- UPDATE `areatrigger_teleport` SET `target_position_x`=728.055,`target_position_y`= 1329.03,`target_position_z`=275,`target_orientation`=5.51524 WHERE `id`=5290; -- The Eye of Eternity (entrance)
SET @OGUID := 306;

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+7;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 194497, 530, 1, 1, -3864.427, -11652.23, -137.6314, 2.268925, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: Ammen Vale)
(@OGUID+1, 194497, 530, 1, 1, -3855.075, -11644.35, -137.5878, 2.286379, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: Ammen Vale)
(@OGUID+2, 202585, 530, 1, 1, -4048.451, -13777.89, 74.94419, 4.34587, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: Ammen Vale)
(@OGUID+3, 207322, 530, 1, 1, -3942.478, -11651.42, -138.8192, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+4, 204879, 530, 1, 1, -3860.474, -11642.74, -137.6218, 2.565632, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+5, 204879, 530, 1, 1, -3865.031, -11646.55, -137.6409, 2.059488, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+6, 209124, 530, 1, 1, -3902.32, -11608.98, -135.3673, 3.455756, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+7, 209114, 530, 1, 1, -3905.078, -11606.61, -135.3963, 4.485497, 0, 0, 0, 1, 120, 255, 1); -- -Unknown- (Area: 0)


SET @CGUID := 519;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+16;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 37543, 530, 1, 1, -3920.7, -11597.19, -121.3342, 4.13643, 120, 0, 0), -- [DND] Shaker (Area: 0)
(@CGUID+1, 37543, 530, 1, 1, -3979.332, -11710.33, -121.2485, 4.13643, 120, 0, 0), -- [DND] Shaker (Area: Ammen Vale)
(@CGUID+2, 37543, 530, 1, 1, -3990.776, -11852.97, 20.50383, 4.13643, 120, 0, 0), -- [DND] Shaker (Area: Ammen Vale)
(@CGUID+3, 37574, 530, 1, 1, -3784.118, -11696.58, -93.25943, 0, 120, 0, 0), -- [DND] Shaker - Small (Area: Ammen Vale)
(@CGUID+4, 37574, 530, 1, 1, -3919.821, -11548.49, -137.8076, 4.764749, 120, 0, 0), -- [DND] Shaker - Small (Area: 0)
(@CGUID+5, 37574, 530, 1, 1, -4019.266, -11729.28, -143.7658, 4.764749, 120, 0, 0), -- [DND] Shaker - Small (Area: Ammen Vale)
(@CGUID+6, 37574, 530, 1, 1, -4023.071, -11734.74, -141.3466, 0.7679449, 120, 0, 0), -- [DND] Shaker - Small (Area: Ammen Vale)
(@CGUID+7, 43991, 530, 1, 1, -4126.64, -12523.8, 44.22773, 2.268928, 120, 0, 0), -- Zaldaan (Area: Ammen Vale)
(@CGUID+8, 44703, 530, 1, 1, -4038.92, -13762.1, 75.98483, 0.7853982, 120, 0, 0), -- Training Dummy (Area: Ammen Vale)
(@CGUID+9, 44703, 530, 1, 1, -4044.67, -13756.8, 76.21204, 0.8901179, 120, 0, 0), -- Training Dummy (Area: Ammen Vale)
(@CGUID+10, 44703, 530, 1, 1, -4051.55, -13755.2, 76.09234, 0.7504916, 120, 0, 0), -- Training Dummy (Area: Ammen Vale)
(@CGUID+11, 44703, 530, 1, 1, -4054.03, -13742.9, 77.65353, 6.091199, 120, 0, 0), -- Training Dummy (Area: Ammen Vale)
(@CGUID+12, 44703, 530, 1, 1, -4054.62, -13749.8, 76.99693, 0.3490658, 120, 0, 0), -- Training Dummy (Area: Ammen Vale)
(@CGUID+13, 47431, 530, 1, 1, -4216.73, -12481.6, 45.32543, 6.056293, 120, 0, 0), -- Valn (Area: Ammen Vale)
(@CGUID+14, 49748, 530, 1, 1, -3942.293, -11648.16, -138.4517, 2.513274, 120, 0, 0), -- Hero's Herald (Area: 0)
(@CGUID+15, 50306, 530, 1, 1, -3869.003, -11645.96, -137.5808, 1.762783, 120, 0, 0), -- Kadu (Area: 0)
(@CGUID+16, 54334, 530, 1, 1, -3905.795, -11608.79, -137.9796, 4.328416, 120, 0, 0); -- Darkmoon Faire Mystic Mage (Area: 0)

UPDATE `creature_template` SET `minlevel`=3, `maxlevel`=3, `faction_A`=7, `faction_H`=7, `speed_run`=1, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=131072, `unit_flags2`=32 WHERE `entry`=44703; -- Training Dummy
/* Quests */

-- Fix the quest chain for quests 26845, 26864, 26927, 26928 & 26868 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26845 WHERE `Id` = 26864;
UPDATE `quest_template` SET `PrevQuestId` = 26864 WHERE `Id` = 26927;
UPDATE `quest_template` SET `PrevQuestId` = 26927 WHERE `Id` = 26928;
UPDATE `quest_template` SET `PrevQuestId` = 26928 WHERE `Id` = 26868;
-- Fix the quest chain for quests 25722, 25726 & 25734 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 25722 WHERE `Id` = 25726;
UPDATE `quest_template` SET `PrevQuestId` = 25726 WHERE `Id` = 25734;
-- Fix the quest chain for quests 25802, 25803, 25804 & 25805 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 25802 WHERE `Id` = 25803;
UPDATE `quest_template` SET `PrevQuestId` = 25803 WHERE `Id` = 25804;
UPDATE `quest_template` SET `PrevQuestId` = 25804 WHERE `Id` = 25805;
-- Fix the quest chain for quests 26980, 25864 & 25865 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26980 WHERE `Id` = 25864;
UPDATE `quest_template` SET `PrevQuestId` = 25864 WHERE `Id` = 25865;
-- Fix the quest chain for quests 25856 & 25857 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 25856 WHERE `Id` = 25857;
-- Fix the quest chain for quests 25854 & 25855 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 25854 WHERE `Id` = 25855;
-- Fix the quest chain for quests 25939 & 26196 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 25939 WHERE `Id` = 26196;
-- Fix the quest chain for quests 25926 & 25927 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 25926 WHERE `Id` = 25927;
-- Fix the quest chain for quests 26327, 26127, 26128 & 26139 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26327 WHERE `Id` = 26127;
UPDATE `quest_template` SET `PrevQuestId` = 26127 WHERE `Id` = 26128;
UPDATE `quest_template` SET `PrevQuestId` = 26128 WHERE `Id` = 26139;
-- Fix the quest chain for quests 13639, 309 & 13650 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 13639 WHERE `Id` = 309;
UPDATE `quest_template` SET `PrevQuestId` = 309 WHERE `Id` = 13650;
-- Fix the quest chain for quests 26981, 25849, 26189 & 26195 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26981 WHERE `Id` = 25849;
UPDATE `quest_template` SET `PrevQuestId` = 25849 WHERE `Id` = 26189;
UPDATE `quest_template` SET `PrevQuestId` = 26189 WHERE `Id` = 26195;
-- Fix the quest chain for quests 26035, 26036, 26037 & 26038 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26035 WHERE `Id` = 26036;
UPDATE `quest_template` SET `PrevQuestId` = 26036 WHERE `Id` = 26037;
UPDATE `quest_template` SET `PrevQuestId` = 26037 WHERE `Id` = 26038;
-- Fix the quest chain for quests 26113, 26110 & 26114 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26113 WHERE `Id` = 26110;
UPDATE `quest_template` SET `PrevQuestId` = 26110 WHERE `Id` = 26114;
-- Fix the quest chain for quests 26528, 26529, 26530, 26531 & 26532 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26528 WHERE `Id` = 26529;
UPDATE `quest_template` SET `PrevQuestId` = 26529 WHERE `Id` = 26530;
UPDATE `quest_template` SET `PrevQuestId` = 26530 WHERE `Id` = 26531;
UPDATE `quest_template` SET `PrevQuestId` = 26531 WHERE `Id` = 26532;
-- Fix the quest chain for quests 26641 & 26643 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26641 WHERE `Id` = 26643;
-- Fix the quest chain for quests 27775 & 27776 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 27775 WHERE `Id` = 27776;
-- Fix the quest chain for quests 27823 & 27824 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 27823 WHERE `Id` = 27824;
-- Fix the quest chain for quests 26961 & 13647 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 26961 WHERE `Id` = 13647;
-- Fix the quest chain for quests 27031, 27032, 27033, 27034, 27035 & 27074 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 27031 WHERE `Id` = 27032;
UPDATE `quest_template` SET `PrevQuestId` = 27032 WHERE `Id` = 27033;
UPDATE `quest_template` SET `PrevQuestId` = 27033 WHERE `Id` = 27034;
UPDATE `quest_template` SET `PrevQuestId` = 27034 WHERE `Id` = 27035;
UPDATE `quest_template` SET `PrevQuestId` = 27035 WHERE `Id` = 27074;
-- Fix the quest chain for quests 27036 & 27037 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 27036 WHERE `Id` = 27037;
-- Fix the quest chain for quests 27025 & 27026 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 27025 WHERE `Id` = 27026;
-- Fix the quest chain for quests 25841 & 25882 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 25841 WHERE `Id` = 25882;
-- Fix the quest chain for quests 27078, 27115 & 27116 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 27078 WHERE `Id` = 27115;
UPDATE `quest_template` SET `PrevQuestId` = 27115 WHERE `Id` = 27116;
-- Fix the quest chain for quests 24469 & 24470 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 24469 WHERE `Id` = 24470;
-- Fix the quest chain for quests 24474 & 24475 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 24474 WHERE `Id` = 24475;
-- Fix the quest chain for quests 24487 & 182 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 24487 WHERE `Id` = 182;
-- Fix the quest chain for quests 24477 & 24486 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 24477 WHERE `Id` = 24486;
-- Fix the quest chain for quests 218 & 24490 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 218 WHERE `Id` = 24490;
-- Fix the quest chain for quests 24491 & 24492 so they follow the chain correctly
UPDATE `quest_template` SET `PrevQuestId` = 24491 WHERE `Id` = 24492;

/* Loot */

-- Quest #25865 The Mosshide Job - fix: Adding the Ironforge Ingot
DELETE FROM `creature_loot_template` WHERE `entry` IN (41390, 41391) AND `item` = 56088;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(41390, 56088, -90, 1, 0, 1, 1),
(41391, 56088, -90, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid` = 41390 WHERE `entry` = 41390; 
UPDATE `creature_template` SET `lootid` = 41391 WHERE `entry` = 41391; 
-- Quest #25867 Gnoll Escape - fix: Adding the Trapper's Key
DELETE FROM `creature_loot_template` WHERE `entry` IN (41409, 44225) AND `item` = 56081;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(41409, 56081, -100, 1, 0, 1, 1),
(44225, 56081, -100, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid` = 41409 WHERE `entry` = 41409; 
UPDATE `creature_template` SET `lootid` = 44225 WHERE `entry` = 44225; 
-- Quest #25856 Crocolisk Hides - fix: Adding the Marshy Crocolisk Hide
DELETE FROM `creature_loot_template` WHERE `entry` = 41419 AND `item` = 56087;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(41419, 56087, -100, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid` = 41419 WHERE `entry` = 41419; 
-- Quest #25857 Hunting Horrorjaw - fix: Adding the Horrorjaw's Hide
DELETE FROM `creature_loot_template` WHERE `entry` = 41420 AND `item` = 56089;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(41420, 56089, -100, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid` = 41420 WHERE `entry` = 41420; 
-- Quest #26528 The Eye of Shadra - fix: Adding the Eye of Shadra
DELETE FROM `gameobject_loot_template` WHERE `entry` = 30439 AND `item` = 58282;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(30439, 58282, -100, 1, 0, 1, 1);
-- Quest #26530 The Shell of Shadra - fix: Adding the Shell of Shadra
DELETE FROM `creature_loot_template` WHERE `entry` = 42919 AND `item` = 58779;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(42919, 58779, -100, 1, 0, 1, 1);
UPDATE `creature_template` SET `lootid` = 42919 WHERE `entry` = 42919; 
-- Quest #27823 A Dwarf's Got Needs - fix: Adding the Shadowstout
DELETE FROM `creature_loot_template` WHERE `entry` IN (2739, 2740) AND `item` = 62510;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(2739, 62510, -90, 1, 0, 1, 2),
(2740, 62510, -90, 1, 0, 1, 2);
-- Chill of the Throne removal
DELETE FROM `spell_area` WHERE `spell`=69127;
-- Gameobjects loot drop updates
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=27848 AND `item`=50443;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=39770 AND `item`=69907;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=40281 AND `item`=72160;
DELETE FROM `spell_target_position` WHERE `id` IN (110966, 109977, 109976, 109972, 109984, 108449);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(110966, 974, -4008.5, 6270.1, 11.68, 0.746128), -- Stay Out!
(109977, 974, -4008.5, 6270.1, 11.68, 0.746128), -- Stay Out!
(109976, 974, -4122.7, 6338.68, 10.64, 4.35512), -- Stay Out!
(109972, 974, -4285.47, 6319, 12.95, 4.31184), -- Stay Out!
(109984, 967, -13855, -13655.7, 265.754, 1.5708), -- Anti-Exploit LOS Check
(108449, 967, -12094.6, 12164.3, -2.7352, 5.75959); -- Teleport Single - To Maelstrom
DELETE FROM `command` WHERE `name` = 'reload rbac';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('reload rbac',3,'Syntax: .reload rbac\nReload rbac system.');
DELETE FROM `creature_summon_groups` WHERE `summonerId`=52151 AND `groupId`=0;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES
(52151, 0, 0, 52156, -12330.3, -1878.41, 127.32, 3.89208, 8, 0),
(52151, 0, 0, 52156, -12351.94, -1861.51,  127.4807, 4.677482, 8, 0),
(52151, 0, 0, 52156, -12326.71, -1904.328, 127.4111, 2.75762, 8, 0),
(52151, 0, 0, 52156, -12347.41, -1917.535, 127.3196, 1.553343, 8, 0),
(52151, 0, 0, 52156, -12378.57, -1861.222, 127.5416, 5.340707, 8, 0),
(52151, 0, 0, 52156, -12397.79, -1887.731, 127.5453, 0.03490658, 8, 0),
(52151, 0, 0, 52156, -12372.36, -1918.844, 127.343,  1.151917, 8, 0),
(52151, 0, 0, 52156, -12391.23, -1905.273, 127.3196, 0.6108652, 8, 0);
-- Add spell script names
DELETE FROM `spell_script_names` WHERE `spell_id` IN (56046,56047,61693,61694,57459,56438,61210,56397,58842,59084,59099,56070,56072,60936,60939,61028,61023);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(56046, 'spell_malygos_portal_beam'),
(56047, 'spell_malygos_random_portal'),
(61693, 'spell_malygos_arcane_storm'), -- Phase I /10/
(61694, 'spell_malygos_arcane_storm'), -- Phase I /25/
(57459, 'spell_malygos_arcane_storm'), -- Phase III
(56438, 'spell_arcane_overload'),
(61210, 'spell_nexus_lord_align_disk_aggro'),
(56397, 'spell_scion_of_eternity_arcane_barrage'),
(58842, 'spell_malygos_destroy_platform_channel'),
(59084, 'spell_alexstrasza_bunny_destroy_platform_boom_visual'),
(59099, 'spell_alexstrasza_bunny_destroy_platform_event'),
(56070, 'spell_wyrmrest_skytalon_summon_red_dragon_buddy'),
(56072, 'spell_wyrmrest_skytalon_ride_red_dragon_buddy_trigger'),
(60936, 'spell_malygos_surge_of_power_25'),
(60939, 'spell_malygos_surge_of_power_warning_selector_25'),
(61028, 'spell_alexstrasza_gift_beam'),
(61023, 'spell_alexstrasza_gift_beam_visual');

-- Add spell difficulties
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (61693,56272,57058);
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`) VALUES
(61693,61693,61694,0,0), -- Arcane Storm - Phase I
(56272,56272,60072,0,0), -- Arcane Breath
(57058,57058,60073,0,0); -- Arcane Shock (Nexus Lord)

-- Insert missing creature template addon
DELETE FROM `creature_template_addon` WHERE `entry` IN (28859,30234,30248,32295,30592,31748,31749);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28859,0,0,0x1000000|0x2000000,0x1,0, ''), -- Malygos
(30234,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk (Nexus Lord), add aura "Flight"
(30248,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk (Scion of Eternity), add aura "Flight"
(31748,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk Difficulty (Nexus Lord), add aura "Flight"
(31749,0,0,0x1000000|0x2000000,0x1,0, '43775'), -- Hover Disk Difficulty (Scion of Eternity), add aura "Flight"
(32295,0,0,0x1000000|0x2000000,0x1,0, ''), -- Alexstrasza
(30592,0,0,0x1000000|0x2000000,0x1,0, '57428'); -- Static Field bunny

-- Add, restructure and update missing texts and sounds
DELETE FROM `creature_text` WHERE `entry` IN (28859,32295);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28859,0,0, 'Lesser beings, intruding here! A shame that your excess courage does not compensate for your stupidity!',14,0,100,0,10000,14512,'Malygos - Intro'),
(28859,0,1, 'None but the blue dragonflight are welcome here. Perhaps this is the work of Alexstrasza? Well, then, she has sent you to your deaths!',14,0,100,0,11000,14513,'Malygos - Intro'),
(28859,0,2, 'What could you hope to accomplish? To storm brazenly into my domain... to employ magic... against ME?',14,0,100,0,13000,14514,'Malygos - Intro'),
(28859,0,3, 'I am without limits here. The rules of your cherished reality do not apply. In this realm, I am in control!',14,0,100,0,10000,14515,'Malygos - Intro'),
(28859,0,4, 'I give you one chance. Pledge fealty to me, and perhaps I will not slaughter you for your insolence.',14,0,100,0,7000,14516,'Malygos - Intro'),
(28859,1,0, 'My patience has reached its limit, I will be rid of you!',14,0,100,0,4000,14517,'Malygos - Start phase 1'),
(28859,2,0, 'You will not succeed while I draw breath!',14,0,100,0,3000,14518,'Malygos - Begin to cast Deep Breath'),
(28859,3,0, 'Your stupidity has finally caught up to you!',14,0,100,0,3250,14519,'Malygos - Killed Player (Phase 1)'),
(28859,3,1, 'More artifacts to confiscate...',14,0,100,0,2800,14520,'Malygos - Killed Player (Phase 1)'),
(28859,3,2, 'How very naive.',14,0,100,0,4800,14521,'Malygos - Killed Player (Phase 1)'),
(28859,4,0, 'I had hoped to end your lives quickly, but you have proven more... resilient than I anticipated. Nonetheless, your efforts are in vain. It is you reckless, careless mortals who are to blame for this war. I do what I must, and if it means your extinction.... then SO BE IT!!',14,0,100,0,22900,14522,'Malygos - End Phase One'),
(28859,5,0, 'Few have experienced the pain I will now inflict upon you!',14,0,100,0,5500,14523,'Malygos - Start phase 2'), -- Unused by Blizzard for some reason
(28859,6,0, 'I will teach you IGNORANT children just how little you know of magic...',14,0,100,0,7000,14524,'Malygos - Anti-Magic Shell'),
(28859,7,0, 'Watch helplessly as your hopes are swept away...',14,0,100,0,4000,14525,'Malygos - Magic Blast'),
(28859,8,0, 'Your energy will be put to good use!',14,0,100,0,2000,14526,'Malygos - Killed Player (Phase 2)'),
(28859,8,1, 'I am the spell-weaver! My power is infinite!',14,0,100,0,5200,14527,'Malygos - Killed Player (Phase 2)'),
(28859,8,2, 'Your spirit will linger here forever!',14,0,100,0,3800,14528,'Malygos - Killed Player (Phase 2)'),
(28859,9,0, 'ENOUGH! If you intend to reclaim Azeroth''s magic, then you shall have it...',14,0,100,0,7000,14529,'Malygos - End Phase 2'),
(28859,10,0, 'Now your benefactors make their appearance... But they are too late. The powers contained here are sufficient to destroy the world ten times over! What do you think they will do to you?',14,0,100,0,13000,14530,'Intro Phase 3'),
(28859,11,0, 'SUBMIT!',14,0,100,0,1000,14531,'Malygos - Start phase 3'), -- Unused by Blizzard for some reason
(28859,12,0, 'Malygos takes a deep breath.',41,0,100,0,10000,0,'Malygos - Surge of Power warning (Phase 2)'),
(28859,13,0, 'The powers at work here exceed anything you could possibly imagine!',14,0,100,0,5000,14532,'Malygos - Surge of Power'),
(28859,14,0, 'I AM UNSTOPPABLE!',14,0,100,0,2000,14533,'Malygos - Buffed by a spark'),
(28859,15,0, 'Alexstrasza! Another of your brood falls!',14,0,100,0,3600,14534,'Malygos - Killed Player (Phase 3)'),
(28859,15,1, 'Little more then gnats!',14,0,100,0,2650,14535,'Malygos - Killed Player (Phase 3)'),
(28859,15,2, 'Your red allies will share your fate...',14,0,100,0,3000,14536,'Malygos - Killed Player (Phase 3)'),
(28859,16,0, 'Still standing? Not for long...',14,0,100,0,3600,14537,'Malygos - Spell Casting 1(Phase 3)'),
(28859,16,1, 'Your cause is lost!',14,0,100,0,2000,14538,'Malygos - Spell Casting 2 (Phase 3)'),
(28859,16,2, 'Your fragile mind will be shattered!',14,0,100,0,4000,14539,'Malygos - Spell Casting 3 (Phase 3)'),
(28859,17,0, 'Unthinkable! The mortals will destroy... everything! My sister, what have you...',14,0,100,0,8500,14540,'Malygos - Death'),
(28859,18,0, '%s fixes his eyes on you!',42,0,100,0,3000,0,'Malygos - Surge of Power warning (Phase 3)'),
(28859,19,0, '%s goes into a berserker rage!',41,0,100,0,10000,0,'Malygos - Hit berserk timer (Any phase)'),
(32295,0,0, 'I did what I had to, brother. You gave me no alternative.',14,0,100,0,4000,14406,'Alexstrasza - Yell text 1'),
(32295,1,0, 'And so ends the Nexus War.',14,0,100,0,4000,14407,'Alexstrasza - Yell text 2'),
(32295,2,0, 'This resolution pains me deeply, but the destruction, the monumental loss of life had to end. Regardless of Malygos''s recent transgressions, I will mourn his loss. He was once a guardian, a protector. This day, one of the world''s mightiest has fallen.',14,0,100,0,24000,14408,'Alexstrasza - Yell text 3'),
(32295,3,0, 'The red dragonflight will take on the burden of mending the devastation wrought on Azeroth. Return home to your people and rest. Tomorrow will bring you new challenges, and you must be ready to face them. Life... goes on.',14,0,100,0,22000,14409,'Alexstrasza - Yell text 4');
-- Update wrong sound and add duration for Power Sparks warning
UPDATE `creature_text` SET `duration`=10000,`sound`=0 WHERE `entry`=30084 AND `groupid`=0 AND`id`=0;

-- Add conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (56047,58846,61028,56429,56505,59099,61714,61715,57432,57429,61210,56548,56431,56438);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,56047,0,0,31,0,3,30118,0,0,0,0,'', 'Random Portal can implicitly hit only Portal (Malygos)'),
(13,1,56047,0,0,29,0,28859,30,0,1,0,0,'', 'Random Portal can implicitly hit only target that is not in 30 yards near Malygos'),
(13,1,58846,0,0,32,0,0x0010,0,0,0,0,0,'', 'Summon Red Dragon Buddy force cast can implicitly hit only players'),
(13,1,61028,0,0,31,0,3,32448,0,0,0,0,'', 'Alexstrasza''s Gift Beam can hit only Alexstrasza''s Gift'),
(13,1,56429,0,0,31,0,3,31253,0,0,0,0,'', 'Summon Arcane Bomb can hit only Alexstrasza the Life-Binder (bunny)'),
(13,1,56505,0,0,31,0,3,30334,0,0,0,0,'', 'Surge of Power (phase II) can hit only Surge of Power'),
(13,1,56548,0,0,31,0,3,30234,0,1,0,0,'', 'Surge of Power triggered damage spell (phase II) can''t hit melee Hover Disk'),
(13,3,56431,0,0,31,0,3,30234,0,1,0,0,'', 'Arcane Overload damage and knockback spell can''t hit melee Hover Disk'),
(13,1,56438,0,0,1,0,1,56438,0,1,0,0,'', 'Arcane Overload damage reduce aura can''t apply to target that already is affected by such'),
(13,6,59099,0,0,32,0,0x0010,0,0,0,0,0,'', 'Destroy Platform Event effect 1 and 2 can hit only players'),
(13,7,61714,0,0,31,0,3,30245,0,0,0,0,'', 'Berserk (spell 2) can hit Nexus Lord'),
(13,7,61714,0,1,31,0,3,30249,0,0,0,0,'', 'Berserk (spell 2) can hit Scion of Eternity'),
(13,7,61715,0,0,31,0,3,30592,0,0,0,0,'', 'Berserk (spell 3) can hit Static Field bunny'),
(13,1,57432,0,0,31,0,3,30161,0,0,0,0,'', 'Arcane Pulse can hit only drakes'),
(13,3,57429,0,0,31,0,3,30161,0,0,0,0,'', 'Static Field can hit only drakes'),
(13,1,61210,0,0,33,1,0,4,0,0,0,0,'', 'Align Disk Aggro can only hit the vehicle of the passenger caster');

-- Add missing equipment
DELETE FROM `creature_equip_template` WHERE `entry` IN (30245,31750,30249,31751);
INSERT INTO `creature_equip_template` (`entry`,`id`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(30245,1,30714,0,0), -- Nexus Lord
(31750,1,30714,0,0), -- Nexus Lord (Difficulty)
(30249,1,29107,0,0), -- Scion of Eternity
(31751,1,29107,0,0); -- Scion of Eternity (Difficulty)

-- Update accessories of hover disks to die with the vehicle and have lower despawn time. They should fall from hover disks,
-- and despawn after 5 sec, but for some reason they keep staying standing while dead. This needs to be fixed coreside.
UPDATE `vehicle_template_accessory` SET `minion`=1,`summontype`=6,`summontimer`=1000 WHERE `entry`=30234 AND `seat_id`=0;
UPDATE `vehicle_template_accessory` SET `minion`=1,`summontype`=6,`summontimer`=1000 WHERE `entry`=30248 AND `seat_id`=0;

-- Add flag GO not selectable for both and extra condition for Heart of Magic
UPDATE `gameobject_template` SET `flags`=16 WHERE `entry`=193967; -- Alexstrasza Gift
UPDATE `gameobject_template` SET `flags`=20 WHERE `entry`=194159; -- Heart of Magic

-- Add some gameobject data update
UPDATE `gameobject` SET `animprogress`=255,`spawntimesecs`=300 WHERE `guid` IN (151791,193960); -- that spawn time has no influence, but having different values doesn't look correct

-- Delete static GO spawns of Alexstrasza's Gift Boxes, they are dynamic (10/25)
DELETE FROM `gameobject` WHERE `guid` IN (151792,151793);

-- Add map difficulty checks for achievement "Denyin the Scion"
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7573,7574) AND `type`=12;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`) VALUES
(7573,12,0), -- 10 mode
(7574,12,1); -- 25 mode

-- Delete Nexus Lords SAI script, because of incapacity to handle the combat spell mechanic of Arcane Shock correctly
-- Delete Scions of Eternity SAI script, because of incapacity to handle non reactive AI when being attacked in a way it won't bug other encounter mechanics.
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (30245,30249) AND `source_type`=0;

-- Add SAI support for Alexstrasza since is only short timed event after boss mechanic ends
SET @NPC_ALEXSTRASZA  := 32295;
SET @ACTIONLIST       := @NPC_ALEXSTRASZA * 100;
SET @SPELL_GIFT_BEAM  := 61028;

UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@NPC_ALEXSTRASZA;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_ALEXSTRASZA AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ACTIONLIST AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_ALEXSTRASZA,0,0,0,54,0,100,0,0,0,0,0,69,1,0,0,0,0,0,8,0,0,0,788.07,1276.09,246.9,0,'Alexstrasza - On just summoned - Move to pos'),
(@NPC_ALEXSTRASZA,0,1,0,34,0,100,0,8,1,0,0,80,@ACTIONLIST,2,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - On point 1 reached - Start actionlist'),
(@ACTIONLIST,9,0,0,0,0,100,0,0,0,0,0,11,@SPELL_GIFT_BEAM,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 0 - Cast Gift Beam'),
(@ACTIONLIST,9,1,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 1 - Yell 0'),
(@ACTIONLIST,9,2,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 2 - Yell 1'),
(@ACTIONLIST,9,3,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 3 - Yell 2'),
(@ACTIONLIST,9,4,0,0,0,100,0,24000,24000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Alexstrasza - Action 4 - Yell 3');

-- Add areatrigger script for the improvised platform that is killing/rooting falling players
DELETE FROM `areatrigger_scripts` WHERE `entry`=5342;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5342, 'at_eye_of_eternity_improvised_floor');

-- /////////////// Various misc in creature, creature template and creature addon ///////////////
-- Update some guids spawn positions
UPDATE `creature` SET `position_x`=754.362,`position_y`=1301.61,`position_z`=266.171,`orientation`=4.24115 WHERE `guid`=132302; -- Alexstrasza the Life-Binder (Bunny)
UPDATE `creature` SET `position_x`=747.61,`position_y`=1393.43,`position_z`=295.9722,`orientation`=3.03832 WHERE `guid`=132313; -- Malygos

-- Update some creature guids to be have static MovementType and spawn dist to 0 accordingly
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 WHERE `guid` IN
(132313, -- Malygos
132314, -- Alexstrasza''s Gift Bunny
132302); -- Alexstrasza the Life-Binder (Bunny)

-- Update template to InhabitType "Air" for various creatures
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (28859,31734,30245,31750,30249,31751,32295,32448);

-- Clear scripts names for Alexstrasza the Life-Binder (Bunny)
UPDATE `creature_template` SET `AIName`='',`ScriptName`='' WHERE `entry`=31253;

--  Update Portal (Malygos) initial flags before the encounter starts
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x00000100|0x02000000,`flags_extra`=128 WHERE `entry`=30118; -- Immunity to Players + Not selectable

-- Update flags extra to trigger & civilian for Static Field and add script name
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_static_field',`flags_extra`=130 WHERE `entry`=30592;

-- Update flags extra to extra trigger & extra civilian for Alexstrasza Bunny
UPDATE `creature_template` SET `flags_extra`=130, `ScriptName`='' WHERE `entry`=31253;

-- Remove uneeded creature_addon data
DELETE FROM `creature_addon` WHERE `guid` IN
(30592, -- The spawn for Static Field is dynamique, so not fixed guid.
132313); -- Malygos is boss so is unique and needs only the template addon.

-- Update templates for both types of hover disks
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`VehicleId`=223,`InhabitType`=4 WHERE `entry` IN (30248,31749); -- Hover disk for Scions
UPDATE `creature_template` SET `ScriptName`='npc_caster_hover_disk' WHERE `entry`=30248;
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`InhabitType`=4 WHERE `entry` IN (30234,31748); -- Hover disk for Nexus Lords
UPDATE `creature_template` SET `ScriptName`='npc_melee_hover_disk' WHERE `entry`=30234;
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_nexus_lord' WHERE `entry`=30245; -- Nexus Lord
UPDATE `creature_template` SET `AIName`='',`ScriptName`='npc_scion_of_eternity' WHERE `entry`=30249; -- Scion of Eternity

-- Fix model display for Vortex Triggers (in creature handling).
-- Remove extra trigger flag because for some reason it was bugging model displaying as always visible,
-- since it has the invisible one for triggers first and other as second, this is the only nonhacky way (don't try to change it unless core side != c++ hack in instance script)
UPDATE `creature_template` SET `flags_extra`=flags_extra &~ 0x00000080 WHERE `entry`=30090;
UPDATE `creature` SET `modelid`=11686 WHERE `guid` BETWEEN 132304 AND 132308;

SET @ELM_BUNNY        :=23837;
SET @SHADOW_CULTIST   :=30835;
SET @VARDMADRA        :=30836;
SET @LK_EYE           :=192861;
SET @CREDIT           :=57884;
SET @SUMMON_CULTIST   :=57885;
SET @GOSSIP_CAST      :=57888;
SET @LK_EYE_CAST      :=57889;
SET @SUMMON_VARDMADRA :=57891;

DELETE FROM `creature_text` WHERE `entry` IN (@ELM_BUNNY,@VARDMADRA,@SHADOW_CULTIST);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ELM_BUNNY, 0, 0, 'Scrying upon many insignificant situations within Icecrown, you stumble upon something interesting...', 42, 0, 100, 0, 0, 0, 'Eye of Lich King Ambient'),
(@SHADOW_CULTIST, 0, 0, 'My lady.', 12, 0, 100, 0, 0, 0, 'Shadow Cultist'),
(@SHADOW_CULTIST, 1, 0, 'There is word from Jotunheim. The sleep-watchers there believe that they have found someone of significance.', 12, 0, 100, 0, 0, 0, 'Shadow Cultist'),
(@SHADOW_CULTIST, 2, 0, 'The cultist practically sputters.', 16, 0, 100, 0, 0, 0, 'Shadow Cultist'),
(@SHADOW_CULTIST, 3, 0, 'Look like, my lady? A vrykul, I suppose. They did not actually show him to me. Ever since The Shadow Vault....', 12, 0, 100, 0, 0, 0, 'Shadow Cultist'),
(@SHADOW_CULTIST, 4, 0, 'A name? Oh, yes, the name! I believe it was Iskalder.', 12, 0, 100, 0, 0, 0, 'Shadow Cultist'),
(@SHADOW_CULTIST, 5, 0, 'Right away, my lady.', 12, 0, 100, 2, 0, 0, 'Shadow Cultist'),
(@VARDMADRA, 0, 0, 'Report.', 12, 0, 100, 1, 0, 0, 'Vardmadra'),
(@VARDMADRA, 1, 0, 'Describe this vrykul. What does he look like?', 12, 0, 100, 1, 0, 0, 'Vardmadra'),
(@VARDMADRA, 2, 0, 'I am not interested in excuses. Perhaps they gave you a name?', 12, 0, 100, 1, 0, 0, 'Vardmadra'),
(@VARDMADRA, 3, 0, 'Iskalder?! You fool! Have you no idea who that is? He''s only the greatest vrykul warrior who ever lived!', 12, 0, 100, 1, 0, 0, 'Vardmadra'),
(@VARDMADRA, 4, 0, 'Return to Jotunheim and tell them to keep him asleep until I arrive. I will judge this vrykul with my own eyes.', 12, 0, 100, 1, 0, 0, 'Vardmadra');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=57889;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(57889,57891,0,'On spellcast Using the Eye of the Lich King cast Through the Eye: Summon Image of Vardmadra'),
(57889,57885,0,'On spellcast Using the Eye of the Lich King cast Through the Eye: Summon Image of a Shadow Cultist');

DELETE FROM `spell_scripts` WHERE `id`=57884;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(57884,1,0,14,57889,0,0,0,0,0,0);

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@LK_EYE;
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`=@LK_EYE;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@LK_EYE, 1, 0, 1, 62, 0, 100, 0, 10005, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Eye of the Lich King - On gossip select - Close gossip'),
(@LK_EYE, 1, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 85, @GOSSIP_CAST, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Eye of the Lich King - On gossip select - Invoker Spellcast Through the Eye: Eye of the Lich King Gossip Force Cast'),
(@LK_EYE, 1, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, @ELM_BUNNY, 10, 0, 0, 0, 0, 0, 'Eye of the Lich King - On gossip select - Set data 0 1 Elm General Purpose Bunny');

UPDATE `creature_template` SET `AIName`='SmartAI',`minlevel`=80,`maxlevel`=80,`exp`=2,`faction_A`=1610,`faction_H`=1610,`unit_flags`=33544, `HoverHeight`=6 WHERE `entry`=@VARDMADRA;
UPDATE `creature_template` SET `AIName`='SmartAI',`minlevel`=80,`maxlevel`=80,`exp`=2,`faction_A`=1610,`faction_H`=1610,`unit_flags`=33544 WHERE `entry`=@SHADOW_CULTIST;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-121192,@VARDMADRA,@SHADOW_CULTIST);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@SHADOW_CULTIST*100;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-121192, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 'Elm General Purpose Bunny - On data set 0 1 - Say line'),
(@SHADOW_CULTIST, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 6828.99, 3814.678, 621.0696, 0, 'Shadow Cultist - Just summoned - Move to position'),
(@SHADOW_CULTIST, 0, 1, 2, 34, 0, 100, 0, 0, 1, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist - On movement inform - Turn to Image of Vardmadra'),
(@SHADOW_CULTIST, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, @SHADOW_CULTIST*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist - On movement inform - Run script'),
(@VARDMADRA, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 19, @SHADOW_CULTIST, 30, 0, 0, 0, 0, 0, 'Image of Vardmadra - Just summoned - Turn to Shadow Cultist'),
(@VARDMADRA, 0, 1, 0, 38, 0, 100, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 1 - Say line'),
(@VARDMADRA, 0, 2, 0, 38, 0, 100, 0, 0, 2, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 2 - Say line'),
(@VARDMADRA, 0, 3, 0, 38, 0, 100, 0, 0, 3, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 3 - Say line'),
(@VARDMADRA, 0, 4, 0, 38, 0, 100, 0, 0, 4, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 4 - Say line'),
(@VARDMADRA, 0, 5, 0, 38, 0, 100, 0, 0, 5, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 5 - Say line'),
(@VARDMADRA, 0, 6, 7, 38, 0, 100, 0, 0, 6, 0, 0, 11, 57884, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 6 - Spellcast Through the Eye: Kill Credit to Master'),
(@VARDMADRA, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Image of Vardmadra - On data set 0 6 - Despawn after 1 second'),

(@SHADOW_CULTIST*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 90, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set unit_field_bytes1 (kneel)'),
(@SHADOW_CULTIST*100, 9, 1, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9, 2, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 45, 0, 1, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 1 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9, 3, 0, 0, 0, 100, 0, 1500, 1500, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9, 4, 0, 0, 0, 100, 0, 6500, 6500, 0, 0, 45, 0, 2, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 2 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9, 5, 0, 0, 0, 100, 0, 500, 500, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9, 6, 0, 0, 0, 100, 0, 3500, 3500, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9, 7, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 45, 0, 3, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 3 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9, 8, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9, 9, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 45, 0, 4, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 4 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9,10, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 45, 0, 5, 0, 0, 0, 0, 19, @VARDMADRA, 10, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 5 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9,11, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 91, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Remove unit_field_bytes1 (kneel)'),
(@SHADOW_CULTIST*100, 9,12, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Say line'),
(@SHADOW_CULTIST*100, 9,13, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 6816.328, 3801.11, 621.153, 0, 'Shadow Cultist script - Move to position'),
(@SHADOW_CULTIST*100, 9,14, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 45, 0, 6, 0, 0, 0, 0, 19, @VARDMADRA, 30, 0, 0, 0, 0, 0, 'Shadow Cultist script - Set data 0 6 Image of Vardmadra'),
(@SHADOW_CULTIST*100, 9,15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Shadow Cultist script - Despawn');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (@SUMMON_VARDMADRA,@SUMMON_CULTIST);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10005;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SUMMON_VARDMADRA,0,0,30,0,@LK_EYE,10,0,1,0,0,'','Spell Through the Eye: Summon Image of Vardmadra will be casted only if target is not within 10y of Eye of the Lichking'),
(13,1,@SUMMON_VARDMADRA,0,0,31,0,3,@ELM_BUNNY,0,0,0,0,'','Spell Through the Eye: Summon Image of Vardmadra targets Elm General Purpose Bunny'),
(13,1,@SUMMON_CULTIST,0,0,31,0,3,@ELM_BUNNY,0,0,0,0,'','Spell Through the Eye: Summon Image of a Shadow Cultist targets Elm General Purpose Bunny'),
(15,10005,0,0,0,9,0,13121,0,0,0,0,0,'','Show gossip option only if player has taken quest Through the Eye'),
(15,10005,0,0,0,1,0,@LK_EYE_CAST,0,0,1,0,0,'','Hide gossip option when aura Using the Eye of the Lich King is present');
SET @RAZUUN            := 21502; -- Image of Warbringer Razuun
SET @JOVAAN            := 21633; -- Deathbringer Jovaan
SET @TRIGGER           := 4548;  -- Smart Trigger
SET @DEVICE            := 184833;-- Legion Communication Device
SET @GO_INFERNAL       := 184834;-- Gobject that needs to be despawned during the script
SET @GO_INFERNAL2      := 184835;-- Gobject that needs to be despawned during the script

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@RAZUUN,@JOVAAN);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@JOVAAN,@RAZUUN) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@JOVAAN*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@RAZUUN,0,0,0,38,0,100,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On data 0 1 set - Say line'),
(@RAZUUN,0,1,0,38,0,100,0,0,2,0,0,1,1,2000,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On data 0 2 set - Say line'),
(@RAZUUN,0,2,0,52,0,100,0,1,@RAZUUN,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On text over - Play emote'),
(@RAZUUN,0,3,0,38,0,100,0,0,3,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On data 0 3 set - Say line'),
(@RAZUUN,0,4,0,38,0,100,0,0,4,0,0,1,3,1500,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On data 0 4 set - Say line'),
(@RAZUUN,0,5,0,52,0,100,0,3,@RAZUUN,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Warbringer Razuun - On text over - Play emote'),
(@JOVAAN,0,0,1,11,0,100,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - Just summoned - Spellcast Etheral Teleport'),
(@JOVAAN,0,1,0,61,0,100,0,0,0,0,0,53,0,@JOVAAN,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - Just summoned - Start WP movement'),
(@JOVAAN,0,2,3,40,0,100,0,4,@JOVAAN,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - On WP 4 reached - Pause 45 seconds'),
(@JOVAAN,0,3,0,61,0,100,0,0,0,0,0,80,@JOVAAN*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - On WP 4 reached - Run Script'),

(@JOVAAN*100,9,0,0,0,0,100,0,500,500,0,0,66,0,0,0,0,0,0,14,25736,@DEVICE,0,0,0,0,0,'Deathbringer Jovaan script - Turn to Legion Communication Device'),
(@JOVAAN*100,9,1,0,0,0,100,0,2500,2500,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Play emote'),
(@JOVAAN*100,9,2,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Say line'),
(@JOVAAN*100,9,3,0,0,0,100,0,100,100,0,0,90,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Set unit_field_bytes1 (kneel)'),
(@JOVAAN*100,9,4,0,0,0,100,0,100,100,0,0,12,@RAZUUN,1,37500,0,0,0,8,0,0,0,-3300.087,2927.053,173.3354,2.199115,'Deathbringer Jovaan script - Summon Image of Warbringer Razuun'),
(@JOVAAN*100,9,5,0,0,0,100,0,800,800,0,0,45,0,1,0,0,0,0,19,@RAZUUN,10,0,0,0,0,0,'Deathbringer Jovaan script - Set data 0 1 Image of Warbringer Razuun'),
(@JOVAAN*100,9,6,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Say line'),
(@JOVAAN*100,9,7,0,0,0,100,0,5000,5000,0,0,45,0,2,0,0,0,0,19,@RAZUUN,10,0,0,0,0,0,'Deathbringer Jovaan script - Set data 0 2 Image of Warbringer Razuun'),
(@JOVAAN*100,9,8,0,0,0,100,0,7000,7000,0,0,91,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Remove unit_field_bytes1 (kneel)'),
(@JOVAAN*100,9,9,0,0,0,100,0,1000,1000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Say line'),
(@JOVAAN*100,9,10,0,0,0,100,0,6000,6000,0,0,45,0,3,0,0,0,0,19,@RAZUUN,10,0,0,0,0,0,'Deathbringer Jovaan script - Set data 0 3 Image of Warbringer Razuun'),
(@JOVAAN*100,9,11,0,0,0,100,0,4000,4000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Say line'),
(@JOVAAN*100,9,12,0,0,0,100,0,4000,4000,0,0,45,0,4,0,0,0,0,19,@RAZUUN,10,0,0,0,0,0,'Deathbringer Jovaan script - Set data 0 4 Image of Warbringer Razuun'),
(@JOVAAN*100,9,13,0,0,0,100,0,3500,3500,0,0,33,@RAZUUN,0,0,0,0,0,21,20,0,0,0,0,0,0,'Deathbringer Jovaan script - Give Quest Credit'),
(@JOVAAN*100,9,14,0,0,0,100,0,0,0,0,0,5,66,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan script - Play emote');

DELETE FROM `creature_text` WHERE `entry` IN (@RAZUUN,@JOVAAN);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@RAZUUN,0,0,'Doom Lord Kazzak will be pleased. You are to increase the pace of your attacks. Destroy the orcish and dwarven strongholds with all haste.',12,0,100,1,0,0,'Razuun'),
(@RAZUUN,1,0,'Don''t worry about that. I''ve increased production at the Deathforge. You''ll have all the infernals you need to carry out your orders. Don''t fail, Jovaan.',12,0,100,1,0,0,'Razuun'),
(@RAZUUN,2,0,'Yes?',12,0,100,6,0,0,'Razuun'),
(@RAZUUN,3,0,'Crate? I didn''t send you a crate, Jovaan. Don''t you have more important things to worry about? Go see to them!',12,0,100,274,0,0,'Razuun'),
(@JOVAAN,0,0,'Everything is in readiness, warbringer.',12,0,100,0,0,0,'Jovaan'),
(@JOVAAN,1,0,'Warbringer, that will require the use of all the hold''s infernals. It may leave us vulnerable to a counterattack.',12,0,100,0,0,0,'Jovaan'),
(@JOVAAN,2,0,'It shall be as you say, warbringer. One last question, if I may...',12,0,100,6,0,0,'Jovaan'),
(@JOVAAN,3,0,'What''s in the crate?',12,0,100,6,0,0,'Jovaan');

DELETE FROM `waypoints` WHERE `entry`=@JOVAAN;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@JOVAAN, 1, -3310.995, 2951.892, 171.2171, 'Deathbrinder Jovaan'),
(@JOVAAN, 2, -3307.998, 2942.022, 171.1127, 'Deathbrinder Jovaan'),
(@JOVAAN, 3, -3306.255, 2935.729, 171.0294, 'Deathbrinder Jovaan'),
(@JOVAAN, 4, -3304.257, 2930.78, 170.9866, 'Deathbrinder Jovaan'),
(@JOVAAN, 5, -3307.609, 2936.385, 170.9919, 'Deathbrinder Jovaan'),
(@JOVAAN, 6, -3309.415, 2942.621, 171.119, 'Deathbrinder Jovaan');

DELETE FROM `areatrigger_scripts` WHERE `entry`=@TRIGGER;
INSERT INTO `areatrigger_scripts` VALUES (@TRIGGER,'SmartTrigger');

DELETE FROM `smart_scripts` WHERE `entryorguid`=@TRIGGER AND `source_type`=2;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@TRIGGER,2,0,1,46,0,100,0,@TRIGGER,0,0,0,45,0,0,0,0,0,0,14,25736,@DEVICE,0,0,0,0,0,'Smart Trigger - On Trigger - Set Data to GO'),
(@TRIGGER,2,1,2,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,14,25737,@GO_INFERNAL,0,0,0,0,0,'Smart Trigger - On Link - Set Data GO'),
(@TRIGGER,2,2,0,61,0,100,0,0,0,0,0,45,0,2,0,0,0,0,14,25738,@GO_INFERNAL2,0,0,0,0,0,'Smart Trigger - On Link - Set Data GO');

UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (@DEVICE,@GO_INFERNAL,@GO_INFERNAL2);
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid` IN (@DEVICE,@GO_INFERNAL,@GO_INFERNAL2);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@DEVICE,1,0,0,38,0,100,0,0,0,0,0,12,@JOVAAN,1,57000,0,0,0,8,0,0,0,-3310.995, 2951.892, 171.2171, 5.5355,'Legion Communicator - On Data Set - Summon Jovaan'),
(@GO_INFERNAL,1,0,0,38,0,100,0,0,1,0,0,99,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infernal  - On Data Set- Change State'),
(@GO_INFERNAL,1,1,0,70,0,100,0,2,0,0,0,70,50,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infernal - On Data Set- Despawn GO'),
(@GO_INFERNAL2,1,0,0,38,0,100,0,0,2,0,0,99,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infernal 2 - On Data Set- Change State'),
(@GO_INFERNAL2,1,1,0,70,0,100,0,2,0,0,0,70,50,0,0,0,0,0,1,0,0,0,0,0,0,0,'Infernal 2 - On Data Set - Despawn GO');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` IN (@TRIGGER,@DEVICE);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22,1,@TRIGGER,2,0,1,0,37097,0,0,0,0,'','SAI areatrigger 4548 triggers only if player has aura Crate Disguise'),
(22,1,@TRIGGER,2,0,29,0,@JOVAAN,50,0,1,0,'','SAI areatrigger 4548 triggers only if there is no Deathbringer Jovaan present'),
(22,1,@DEVICE,2,0,1,0,37097,0,0,0,0,'','SAI Legion Communication Device triggers only if player has aura Crate Disguise');
-- Add conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56438;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,56438,0,0,1,0,56438,0,0,1,0,0,'', 'Arcane Overload damage reduce aura can''t apply to target that already is affected by such');
SET @OGUID := 164457;

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+16;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 207737, 754, 1, 1, -271, 814.8698, 203.034, 3.141593, 1.317221E-43, 0, 0, 0, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+1, 207924, 754, 1, 1, -255.0611, 849.3882, 200.6729, 3.926991, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+2, 207923, 754, 1, 1, -255.054, 783.7366, 200.6729, 2.356195, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+3, 207922, 754, 1, 1, -49.5817, 815.0962, 191.0817, 3.141593, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+4, 207930, 754, 1, 1, -83.87373, 609.6168, 200.673, 5.497789, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+5, 207925, 754, 1, 1, -80.94135, 1020.569, 200.6729, 0.7853968, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+6, 206701, 754, 1, 1, -51.24957, 576.9064, 203.034, 1.570796, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+7, 206699, 754, 1, 1, -47.91377, 1053.286, 203.034, 4.71239, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+8, 207929, 754, 1, 1, -18.22198, 609.6238, 200.6729, 3.926991, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+9, 207926, 754, 1, 1, -15.28961, 1020.576, 200.6729, 2.35619, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+10, 207928, 754, 1, 1, 155.8977, 780.8041, 200.673, 0.7853968, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+11, 207927, 754, 1, 1, 155.8907, 846.4558, 200.6729, 5.497789, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+12, 206700, 754, 1, 1, 188.6082, 813.4283, 203.0285, 3.141593, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+13, 207976, 754, 1, 1, -322.2661, 816.2766, 202.1453, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+14, 207977, 754, 1, 1, -322.2661, 816.2766, 202.1453, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+15, 207979, 754, 1, 1, -322.2661, 816.2766, 202.1453, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+16, 207978, 754, 1, 1, -322.2661, 816.2766, 202.1453, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1); -- -Unknown- (Area: 0)


UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `faction_A`=16, `faction_H`=16, `speed_walk`=2.4, `speed_run`=1.428571, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_class`=2, `unit_flags2`=1075838976, `VehicleId`=1318 WHERE `entry`=45872; -- Rohash
UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `faction_A`=16, `faction_H`=16, `speed_walk`=2.4, `speed_run`=1.428571, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_class`=2, `unit_flags2`=1075838976, `VehicleId`=1321 WHERE `entry`=45870; -- Anshal
UPDATE `creature_template` SET `unit_flags2`=1075838976, `dynamicflags`=0 WHERE `entry`=45871; -- Nezir


DELETE FROM `creature_template_addon` WHERE `entry` IN (46753, 36171, 45872, 45870, 45871, 48977, 47806, 46419, 47924, 47926, 47925, 46766);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(46753, 0, 0x0, 0x1, ''), -- Al'Akir
(36171, 0, 0x0, 0x1, ''), -- World Trigger (Infinite AOI)
(45872, 0, 0x0, 0x1, ''), -- Rohash
(45870, 0, 0x0, 0x1, ''), -- Anshal
(45871, 0, 0x0, 0x1, ''), -- Nezir
(48977, 0, 0x3000000, 0x1, ''), -- Lightning Strike Trigger
(47806, 0, 0x3000000, 0x1, ''), -- Relentless Storm Initial Vehicle
(46419, 0, 0x3000000, 0x1, ''), -- Hurricane
(47924, 0, 0x0, 0x1, ''), -- East Wind
(47926, 0, 0x0, 0x1, ''), -- North Wind
(47925, 0, 0x0, 0x1, ''), -- West Wind
(46766, 0, 0x0, 0x1, ''); -- Ice Storm Trigger


SET @CGUID := 222202;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+28;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 53488, 754, 1, 1, -306.4236, 816.6371, 199.572, 0, 7200, 0, 0), -- Summon Enabler Stalker (Area: -Unknown-)
(@CGUID+1, 53488, 754, 1, 1, -284.4271, 815.6476, 199.572, 0, 7200, 0, 0), -- Summon Enabler Stalker (Area: -Unknown-)
(@CGUID+2, 53488, 754, 1, 1, -296.2552, 832.4618, 199.572, 0, 7200, 0, 0), -- Summon Enabler Stalker (Area: -Unknown-)
(@CGUID+3, 53488, 754, 1, 1, -298.184, 799.3733, 199.572, 0, 7200, 0, 0), -- Summon Enabler Stalker (Area: -Unknown-)
(@CGUID+4, 21252, 754, 1, 1, -288.87, 817.814, 199.5723, 6.161012, 7200, 0, 0), -- World Trigger (Not Immune PC) (Area: -Unknown-)
(@CGUID+5, 21252, 754, 1, 1, -287.795, 816.681, 199.5723, 6.161012, 7200, 0, 0), -- World Trigger (Not Immune PC) (Area: -Unknown-)
(@CGUID+6, 46753, 754, 1, 1, -49.64583, 815.0816, 191.1009, 3.124139, 7200, 0, 0), -- Al'Akir (Area: -Unknown-)
(@CGUID+7, 36171, 754, 1, 1, -48.5313, 814.708, 191.1013, 0, 7200, 0, 0), -- World Trigger (Infinite AOI) (Area: -Unknown-)
(@CGUID+8, 45872, 754, 1, 1, -51.4635, 576.25, 200.0943, 1.518436, 7200, 0, 0), -- Rohash (Area: -Unknown-)
(@CGUID+9, 45870, 754, 1, 1, -47.9531, 1053.44, 200.0943, 4.764749, 7200, 0, 0), -- Anshal (Area: -Unknown-)
(@CGUID+10, 45871, 754, 1, 1, 189.394, 812.569, 200.0943, 3.351032, 7200, 0, 0), -- Nezir (Area: -Unknown-)
(@CGUID+11, 48977, 754, 1, 1, -51.04167, 818.6719, 191.1009, 0, 7200, 0, 0), -- Lightning Strike Trigger (Area: -Unknown-)
(@CGUID+12, 47806, 754, 1, 1, -46.7309, 815.668, 219.3093, 2.199115, 7200, 0, 0), -- Relentless Storm Initial Vehicle (Area: -Unknown-)
(@CGUID+13, 47806, 754, 1, 1, -46.7309, 815.668, 214.7853, 0.2443461, 7200, 0, 0), -- Relentless Storm Initial Vehicle (Area: -Unknown-)
(@CGUID+14, 47806, 754, 1, 1, -46.7309, 815.668, 216.4923, 3.124139, 7200, 0, 0), -- Relentless Storm Initial Vehicle (Area: -Unknown-)
(@CGUID+15, 47806, 754, 1, 1, -46.7309, 815.668, 220.5503, 1.151917, 7200, 0, 0), -- Relentless Storm Initial Vehicle (Area: -Unknown-)
(@CGUID+16, 47806, 754, 1, 1, -46.7309, 815.668, 214.1063, 1.675516, 7200, 0, 0), -- Relentless Storm Initial Vehicle (Area: -Unknown-)
(@CGUID+17, 46419, 754, 1, 1, -51.4479, 576.844, 251.4623, 2.338741, 7200, 0, 0), -- Hurricane (Area: -Unknown-)
(@CGUID+18, 46419, 754, 1, 1, -51.4479, 576.844, 248.5193, 2.338741, 7200, 0, 0), -- Hurricane (Area: -Unknown-)
(@CGUID+19, 46419, 754, 1, 1, -51.4479, 576.844, 250.6343, 2.338741, 7200, 0, 0), -- Hurricane (Area: -Unknown-)
(@CGUID+20, 46419, 754, 1, 1, -51.4479, 576.844, 249.8813, 2.338741, 7200, 0, 0), -- Hurricane (Area: -Unknown-)
(@CGUID+21, 46419, 754, 1, 1, -51.4479, 576.844, 247.5933, 2.338741, 7200, 0, 0), -- Hurricane (Area: -Unknown-)
(@CGUID+22, 47924, 754, 1, 1, -51.0087, 577.257, 199.5723, 0, 7200, 0, 0), -- East Wind (Area: -Unknown-)
(@CGUID+23, 19871, 754, 1, 1, -49.84143, 536.6068, 206.2773, 3.171784, 7200, 0, 0), -- World Trigger (Not Immune NPC) (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+24, 47926, 754, 1, 1, 188.601, 813.483, 199.5723, 0, 7200, 0, 0), -- North Wind (Area: -Unknown-)
(@CGUID+25, 47925, 754, 1, 1, -48.0816, 1053.93, 199.5723, 0, 7200, 0, 0), -- West Wind (Area: -Unknown-)
(@CGUID+26, 46766, 754, 1, 1, -26.2274, 860.302, 191.2083, 0, 7200, 0, 0), -- Ice Storm Trigger (Area: -Unknown-)
(@CGUID+27, 46766, 754, 1, 1, -6.0625, 842.55, 191.2083, 0, 7200, 0, 0), -- Ice Storm Trigger (Area: -Unknown-)
(@CGUID+28, 46766, 754, 1, 1, 0.385417, 816.236, 191.2083, 0, 7200, 0, 0); -- Ice Storm Trigger (Area: -Unknown-)
-- Corrected HP & Mana
UPDATE `creature_template` SET `exp`=3 WHERE `entry` IN (46753, 45872, 45870, 45871);

-- Set InhabitType to fly for 2 triggers
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (19871, 46419); 

-- Throne of the Four Winds - All modes
UPDATE `creature` SET `spawnMask`=15 WHERE `map`=754;
UPDATE `gameobject` SET `spawnMask`=15 WHERE `map`=754;
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry` IN (47925, 46419, 48977, 46766, 47924, 47925, 47806);

UPDATE `creature_template_addon` SET `auras`='92039' WHERE `entry`=46753; -- Al'Akir - Fixate OnHit Passive
UPDATE `creature_template_addon` SET `auras`='85538' WHERE `entry`=45872; -- Rohash - Prefight Visual: East
UPDATE `creature_template_addon` SET `auras`='85537' WHERE `entry`=45870; -- Anshal - Prefight Visual: West
UPDATE `creature_template_addon` SET `auras`='85532' WHERE `entry`=45871; -- Nezir - Prefight Visual: North
UPDATE `creature_template_addon` SET `auras`='89428' WHERE `entry`=47806; -- Relentless Storm Initial Vehicle - Relentless Storm Initial Vehicle Visual
UPDATE `creature_template_addon` SET `auras`='55883' WHERE `entry`=46419; -- Hurricane - Vortex
SET @OGUID := 164474;

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+6;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 207898, 725, 1, 1, 822.2258, 986.4875, 324.2448, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+1, 207897, 725, 1, 1, 822.2258, 986.4875, 324.2448, 0, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+2, 207343, 725, 1, 1, 1156.704, 913.2335, 286.2855, 3.141593, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+3, 204381, 725, 1, 1, 1235.72, 1197.74, 247.605, 0.9773831, 0, 0, 0, 1, 7200, 255, 0), -- -Unknown- (Area: 0)
(@OGUID+4, 204381, 725, 1, 1, 1324.743, 1206.684, 245.7733, 2.862335, 0, 0, 0, 1, 7200, 255, 0), -- -Unknown- (Area: 0)
(@OGUID+5, 207407, 725, 1, 1, 1049.271, 908.6458, 298.8633, 5.026549, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: 0)
(@OGUID+6, 207415, 725, 1, 1, 1103.757, 864.7118, 287.9034, 0.1919852, 0, 0, 0, 1, 7200, 255, 1); -- -Unknown- (Area: 0)


DELETE FROM `creature_template_addon` WHERE `entry` IN (43391, 43537, 42696, 43662, 49859, 42808, 49929, 51396, 50048, 49857, 43430, 43438, 42333, 40350, 42810, 42845, 42188, 43357, 43214, 51397, 42428, 42695, 42691, 42789, 42692, 42189, 42201);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(43391, 0, 0x0, 0x1, ''), -- Millhouse Manastorm
-- (43537, 0, 0x0, 0x1, ''), -- Stonecore Eahshaper
-- (43430, 0, 0x0, 0x1, ''), -- Stonecore Berserker
(43662, 0, 0x0, 0x1, '81710'), -- Unbound Earth Rager - Fracture
-- (42696, 0, 0x0, 0x1, ''), -- Stonecore Warbringer
(49859, 0, 0x0, 0x1, ''), -- Topaz Shale Hatchling
(42808, 0, 0x0, 0x1, ''), -- Stonecore Flayer
(49929, 0, 0x0, 0x1, ''), -- Crimson Shale Hatchling
(51396, 0, 0x3000000, 0x1, '95299'), -- Stonecore Teleporter - Teleporter Base Visual
(50048, 0, 0x0, 0x1, ''), -- Earthwarden Yrsa
(49857, 0, 0x0, 0x1, ''), -- Emerald Shale Hatchling
(43430, 0, 0x0, 0x0, ''), -- Stonecore Berserker
(43537, 0, 0x0, 0x0, ''), -- Stonecore Earthshaper
(42696, 0, 0x0, 0x0, ''), -- Stonecore Warbringer
(43438, 0, 0x0, 0x1, '81237'), -- Corborus - Ring Wyrm Charge
(42333, 0, 0x0, 0x1, '85654'), -- High Priestess Azil - Azil Visual
(40350, 0, 0x0, 0x1, ''), -- Generic Trigger LAB
(42810, 0, 0x0, 0x1, ''), -- Crystalspawn Giant
(42845, 0, 0x0, 0x1, ''), -- Rock Borer
(42188, 0, 0x0, 0x1, ''), -- Ozruk
(43357, 0, 0x2000000, 0x1, '81027'), -- Stalactite Trigger - Trash, On Ground - Stalactite
-- (43214, 0, 0x3000000, 0x1, ''), -- Slabhide
(51397, 0, 0x3000000, 0x1, '95299'), -- Stonecore Teleporter - Teleporter Base Visual
(43214, 0, 0x0, 0x1, ''), -- Slabhide
(42428, 0, 0x0, 0x1, ''), -- Devout Follower
(42695, 0, 0x0, 0x1, ''), -- Stonecore Sentry
-- (42696, 0, 0x1, 0x1, ''), -- Stonecore Warbringer
-- (42691, 0, 0x1, 0x1, ''), -- Stonecore Rift Conjurer
-- (42789, 0, 0x1, 0x1, ''), -- Stonecore Magmalord
(42692, 0, 0x0, 0x1, '80222'), -- Stonecore Bruiser - Beat Down
-- (42691, 0, 0x0, 0x0, '80308'), -- Stonecore Rift Conjurer - Demon Portal
(42789, 0, 0x0, 0x0, ''), -- Stonecore Magmalord
(42691, 0, 0x0, 0x1, ''), -- Stonecore Rift Conjurer
-- (42691, 0, 0x0, 0x0, ''), -- Stonecore Rift Conjurer
-- (42692, 0, 0x1, 0x1, '80222'), -- Stonecore Bruiser - Beat Down
-- (42691, 0, 0x1, 0x1, '80308'), -- Stonecore Rift Conjurer - Demon Portal
-- (42692, 0, 0x3, 0x1, '80222'), -- Stonecore Bruiser - Beat Down
-- (42691, 0, 0x0, 0x1, '80308'), -- Stonecore Rift Conjurer - Demon Portal
-- (42428, 0, 0x8, 0x1, ''), -- Devout Follower
(42189, 0, 0x0, 0x1, '46598'), -- Bouncer Spike - Ride Vehicle Hardcoded
(42201, 0, 0x0, 0x1, '46598'); -- Bouncer Spike (Small) - Ride Vehicle Hardcoded


SET @CGUID := 222231;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+438;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 53488, 725, 1, 1, 841.5174, 986.6302, 317.4827, 0, 7200, 0, 0), -- Summon Enabler Stalker (Area: 0)
(@CGUID+1, 43391, 725, 1, 1, 902.09, 981.547, 316.8933, 3.01942, 7200, 0, 0), -- Millhouse Manastorm (Area: 0) (possible waypoints or random movement)
(@CGUID+2, 43537, 725, 1, 1, 902.189, 977.795, 316.9604, 2.949606, 7200, 0, 0), -- Stonecore Earthshaper (Area: 0) (possible waypoints or random movement)
(@CGUID+3, 42696, 725, 1, 1, 903.255, 985.352, 317.1983, 3.089233, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+4, 43662, 725, 1, 1, 900.03, 962.948, 319.0244, 5.136304, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+5, 42696, 725, 1, 1, 904.016, 973.24, 317.1674, 2.879793, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+6, 43430, 725, 1, 1, 906.934, 988.238, 317.5544, 3.124139, 7200, 0, 0), -- Stonecore Berserker (Area: 0) (possible waypoints or random movement)
(@CGUID+7, 43662, 725, 1, 1, 900.052, 958.769, 318.9783, 6.195945, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+8, 43662, 725, 1, 1, 899.458, 955.87, 318.9373, 6.184547, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+9, 43662, 725, 1, 1, 904.51, 958.927, 319.0403, 1.274514, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+10, 43662, 725, 1, 1, 904.229, 956.014, 319.0034, 0.5038968, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+11, 42808, 725, 1, 1, 918.4323, 944.8698, 318.5753, 5.340707, 7200, 0, 0), -- Stonecore Flayer (Area: 0) (possible waypoints or random movement)
(@CGUID+12, 42808, 725, 1, 1, 923.7396, 946.9896, 318.3094, 4.939282, 7200, 0, 0), -- Stonecore Flayer (Area: 0) (possible waypoints or random movement)
(@CGUID+13, 43662, 725, 1, 1, 934.092, 965.207, 316.1333, 0, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+14, 43662, 725, 1, 1, 935.425, 968.981, 316.4503, 0, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+15, 43662, 725, 1, 1, 960.108, 925.543, 312.6503, 0, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+16, 43662, 725, 1, 1, 963.418, 928.346, 312.8583, 0, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+17, 43662, 725, 1, 1, 1013.03, 878.892, 300.1104, 0, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+18, 43662, 725, 1, 1, 1013.37, 872.458, 299.3803, 0, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+19, 22515, 725, 1, 1, 853.125, 987.646, 317.2964, 0, 7200, 0, 0), -- World Trigger (Area: 0)
(@CGUID+20, 49929, 725, 1, 1, 928.059, 1031.129, 319.5552, 2.65893, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+21, 51396, 725, 1, 1, 853.8577, 999.7518, 317.3986, 0, 7200, 0, 0), -- Stonecore Teleporter (Area: 0)
(@CGUID+22, 50048, 725, 1, 1, 841.7222, 995.1354, 317.5072, 5.916666, 7200, 0, 0), -- Earthwarden Yrsa (Area: 0)
(@CGUID+23, 49859, 725, 1, 1, 853.9965, 1017.811, 319.7079, 1.465927, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+24, 49857, 725, 1, 1, 854.8055, 1031.469, 320.3308, 1.004863, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+25, 49859, 725, 1, 1, 847.3646, 951.2413, 318.6848, 1.023099, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+26, 49859, 725, 1, 1, 907.3108, 1032.995, 320.0582, 4.820795, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+27, 49859, 725, 1, 1, 877.9792, 950.783, 319.0897, 2.837484, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+28, 49859, 725, 1, 1, 920.7847, 944.1371, 318.5224, 0.6924191, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+29, 49857, 725, 1, 1, 845.0261, 963.1268, 317.8885, 4.845469, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+30, 49857, 725, 1, 1, 946.6371, 996.5625, 318.9726, 6.275883, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+31, 49929, 725, 1, 1, 942.9636, 1018.113, 321.2493, 4.266957, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+32, 49929, 725, 1, 1, 935.6198, 1026.816, 319.2522, 2.018167, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+33, 43662, 725, 1, 1, 991.8541, 864.424, 302.1414, 2.24769, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+34, 43662, 725, 1, 1, 998.7288, 862.3835, 301.1855, 2.664451, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+35, 43662, 725, 1, 1, 1000.456, 857.98, 301.1548, 2.691309, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+36, 43662, 725, 1, 1, 1004.056, 858.7443, 300.8708, 2.689651, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+37, 43662, 725, 1, 1, 1001.99, 863.1834, 300.391, 2.898579, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+38, 49929, 725, 1, 1, 953.6614, 1044.892, 320.0104, 0.4886922, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+39, 42808, 725, 1, 1, 962.1511, 1041.561, 320.8443, 4.118977, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+40, 42808, 725, 1, 1, 956.1979, 1040.601, 321.0273, 5.51524, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+41, 49929, 725, 1, 1, 960.3698, 1042.047, 320.7716, 0.4886922, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+42, 49929, 725, 1, 1, 946.9133, 1042.875, 319.3551, 3.613496, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+43, 49857, 725, 1, 1, 963.908, 955.5746, 317.4083, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+44, 49929, 725, 1, 1, 945.5311, 1055.581, 318.7726, 2.828545, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+45, 49857, 725, 1, 1, 950.8475, 973.0382, 317.8591, 1.52409, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+46, 49857, 725, 1, 1, 967.8646, 965.7917, 318.0293, 0.5116665, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+47, 43662, 725, 1, 1, 1035.459, 861.7668, 296.1451, 3.172604, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+48, 43662, 725, 1, 1, 1046.75, 885.7924, 297.8939, 3.003148, 7200, 0, 0), -- Unbound Earth Rager (Area: 0)
(@CGUID+49, 43430, 725, 1, 1, 984.471, 893.266, 305.1773, 4.485496, 7200, 0, 0), -- Stonecore Berserker (Area: 0) (possible waypoints or random movement)
(@CGUID+50, 43537, 725, 1, 1, 980.774, 891.762, 305.3793, 5.77704, 7200, 0, 0), -- Stonecore Earthshaper (Area: 0) (possible waypoints or random movement)
(@CGUID+51, 42696, 725, 1, 1, 982.464, 887.2, 304.4443, 1.064651, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+52, 49857, 725, 1, 1, 994.7421, 911.164, 307.9997, 3.102971, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+53, 42696, 725, 1, 1, 986.375, 888.304, 304.0934, 2.600541, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+54, 49859, 725, 1, 1, 972.9705, 865.059, 304.5239, 0.4886922, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+55, 49857, 725, 1, 1, 987.3316, 863.1875, 302.9184, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+56, 49857, 725, 1, 1, 1001.179, 849.7986, 300.6462, 2.532714, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+57, 43438, 725, 1, 1, 1150.34, 947.063, 283.8904, 4.694936, 7200, 0, 0), -- Corborus (Area: 0) (possible waypoints or random movement)
(@CGUID+58, 42333, 725, 1, 1, 1337.3, 964.894, 214.2383, 1.745329, 7200, 0, 0), -- High Priestess Azil (Area: 0) (possible waypoints or random movement)
(@CGUID+59, 49857, 725, 1, 1, 1011.938, 843.4807, 299.2726, 3.967355, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+60, 43430, 725, 1, 1, 1058.95, 869.467, 293.7943, 3.857178, 7200, 0, 0), -- Stonecore Berserker (Area: 0) (possible waypoints or random movement)
(@CGUID+61, 43537, 725, 1, 1, 1054.48, 869.726, 294.3813, 5.550147, 7200, 0, 0), -- Stonecore Earthshaper (Area: 0) (possible waypoints or random movement)
(@CGUID+62, 42696, 725, 1, 1, 1054.68, 866.424, 294.1293, 0.6457718, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+63, 42696, 725, 1, 1, 1058.08, 865.589, 293.8023, 2.094395, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+64, 49857, 725, 1, 1, 1027.709, 845.1661, 298.2265, 6.005205, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+65, 49857, 725, 1, 1, 1068.486, 916.4601, 296.1023, 0.9298981, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+66, 49857, 725, 1, 1, 1075.377, 910.4704, 294.4836, 5.4081, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+67, 49857, 725, 1, 1, 1053.724, 835.9739, 295.4408, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+68, 49857, 725, 1, 1, 1084.188, 905.6112, 292.551, 4.680367, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+69, 49857, 725, 1, 1, 1057.188, 944.6996, 259.9003, 4.284817, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+70, 49857, 725, 1, 1, 1060.143, 937.8187, 262.5754, 0.9960684, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+71, 40350, 725, 1, 1, 1103.903, 864.7327, 287.9797, 0, 7200, 0, 0), -- Generic Trigger LAB (Area: 0)
(@CGUID+72, 42808, 725, 1, 1, 1061.066, 947.1702, 260.0267, 2.548181, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+73, 49857, 725, 1, 1, 1060.52, 948.8099, 259.6567, 2.962212, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+74, 49857, 725, 1, 1, 1109.22, 847.0275, 290.5569, 6.042678, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+75, 42808, 725, 1, 1, 1055.375, 959.1511, 262.1499, 5.375614, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+76, 43430, 725, 1, 1, 1152.96, 876.873, 285.0464, 3.071779, 7200, 0, 0), -- Stonecore Berserker (Area: 0) (possible waypoints or random movement)
(@CGUID+77, 43430, 725, 1, 1, 1155.66, 886.653, 285.0464, 3.141593, 7200, 0, 0), -- Stonecore Berserker (Area: 0) (possible waypoints or random movement)
(@CGUID+78, 42696, 725, 1, 1, 1157.37, 879.769, 285.0714, 3.089233, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+79, 42696, 725, 1, 1, 1154.65, 880.245, 285.0464, 3.106686, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+80, 43537, 725, 1, 1, 1157.23, 883.25, 285.0464, 3.124139, 7200, 0, 0), -- Stonecore Earthshaper (Area: 0) (possible waypoints or random movement)
(@CGUID+81, 43537, 725, 1, 1, 1154.8, 883.431, 285.0464, 3.124139, 7200, 0, 0), -- Stonecore Earthshaper (Area: 0) (possible waypoints or random movement)
(@CGUID+82, 42696, 725, 1, 1, 1155.75, 893.649, 285.0464, 3.176499, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+83, 43537, 725, 1, 1, 1156.36, 876.398, 285.1024, 3.071779, 7200, 0, 0), -- Stonecore Earthshaper (Area: 0) (possible waypoints or random movement)
(@CGUID+84, 42696, 725, 1, 1, 1156.29, 890.444, 285.0464, 3.159046, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+85, 22515, 725, 1, 1, 1154.21, 917.316, 284.3803, 4.799655, 7200, 0, 0), -- World Trigger (Area: 0)
(@CGUID+86, 49859, 725, 1, 1, 1172.172, 853.4119, 286.9659, 1.698346, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+87, 49857, 725, 1, 1, 1024.842, 845.9844, 298.6765, 5.299634, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+88, 49929, 725, 1, 1, 1139.406, 952.5249, 284.83, 2.584158, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+89, 49857, 725, 1, 1, 1196.236, 885.4202, 284.2491, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+90, 49857, 725, 1, 1, 1188.447, 890.6429, 284.2653, 5.407998, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+91, 49857, 725, 1, 1, 1195.795, 885.4707, 284.255, 1.734254, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+92, 49857, 725, 1, 1, 1184.014, 895.2475, 284.2865, 5.458758, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+93, 42808, 725, 1, 1, 1128.038, 966.8941, 284.703, 1.710423, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+94, 42808, 725, 1, 1, 1134.264, 970.0104, 284.2537, 2.670354, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+95, 49857, 725, 1, 1, 1135.542, 966.6523, 284.076, 5.957302, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+96, 49859, 725, 1, 1, 1092.946, 977.3773, 264.3119, 1.644307, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+97, 42810, 725, 1, 1, 1069.58, 964.5582, 260.1845, 4.049352, 7200, 0, 0), -- Crystalspawn Giant (Area: 0) (possible waypoints or random movement)
(@CGUID+98, 49857, 725, 1, 1, 1211.174, 859.7693, 282.6275, 0.5030366, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+99, 42845, 725, 1, 1, 1147.576, 962.4004, 283.4526, 3.075046, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+100, 42810, 725, 1, 1, 1150.024, 936.6118, 284.3246, 4.74481, 7200, 0, 0), -- Crystalspawn Giant (Area: 0) (possible waypoints or random movement)
(@CGUID+101, 49857, 725, 1, 1, 1154.555, 1005.098, 271.4043, 1.26196, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+102, 49857, 725, 1, 1, 1158.284, 998.5647, 272.9481, 0.7502893, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+103, 42188, 725, 1, 1, 1507.859, 1073.26, 217.3286, 0.1047198, 7200, 0, 0), -- Ozruk (Area: 0) (possible waypoints or random movement)
(@CGUID+104, 49929, 725, 1, 1, 1181.615, 1008.054, 273.4078, 5.550421, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+105, 42845, 725, 1, 1, 1062.158, 954.6441, 259.765, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+106, 42845, 725, 1, 1, 1064.79, 955.1215, 259.8711, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+107, 42845, 725, 1, 1, 1063.571, 955.4566, 259.7605, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+108, 42845, 725, 1, 1, 1062.786, 957.2292, 259.9821, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+109, 42845, 725, 1, 1, 1065.167, 956.6458, 259.7821, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+110, 42845, 725, 1, 1, 1064.849, 953.2952, 260.1313, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+111, 42845, 725, 1, 1, 1066.382, 954.5018, 260.2837, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+112, 42845, 725, 1, 1, 1063.517, 952.5243, 259.9612, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+113, 42845, 725, 1, 1, 1061.528, 956.2621, 259.9622, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+114, 42845, 725, 1, 1, 1064.358, 957.5538, 259.918, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+115, 42808, 725, 1, 1, 1175.859, 1020.061, 270.9106, 6.038839, 7200, 0, 0), -- Stonecore Flayer (Area: 0) (possible waypoints or random movement)
(@CGUID+116, 42808, 725, 1, 1, 1182.125, 1014.271, 272.226, 1.954769, 7200, 0, 0), -- Stonecore Flayer (Area: 0) (possible waypoints or random movement)
(@CGUID+117, 49857, 725, 1, 1, 1176.771, 1021.308, 271.5842, 1.256119, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+118, 49929, 725, 1, 1, 1091.493, 995.248, 264.8247, 2.666975, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+119, 49929, 725, 1, 1, 1089.586, 996.9763, 265.2706, 5.651082, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+120, 43357, 725, 1, 1, 1196.64, 1116.21, 264.1593, 0, 7200, 0, 0), -- Stalactite Trigger - Trash, On Ground (Area: 0)
(@CGUID+121, 43357, 725, 1, 1, 1164.76, 1114.6, 264.4533, 0, 7200, 0, 0), -- Stalactite Trigger - Trash, On Ground (Area: 0)
(@CGUID+122, 49929, 725, 1, 1, 1168.863, 1045.97, 267.8128, 3.436397, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+123, 49929, 725, 1, 1, 1132.98, 1047.938, 265.7393, 2.368019, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+124, 49929, 725, 1, 1, 1167.383, 1041.404, 269.1248, 5.38716, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+125, 49929, 725, 1, 1, 1108.451, 1033.646, 266.9144, 2.753029, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+126, 43357, 725, 1, 1, 1219.36, 1138.91, 260.1913, 0, 7200, 0, 0), -- Stalactite Trigger - Trash, On Ground (Area: 0)
(@CGUID+127, 42808, 725, 1, 1, 1157.274, 1062.512, 265.3413, 0.8726646, 7200, 0, 0), -- Stonecore Flayer (Area: 0) (possible waypoints or random movement)
(@CGUID+128, 42808, 725, 1, 1, 1167.023, 1065.917, 265.6194, 3.071779, 7200, 0, 0), -- Stonecore Flayer (Area: 0) (possible waypoints or random movement)
(@CGUID+129, 42808, 725, 1, 1, 1162.462, 1062.497, 265.1516, 1.884956, 7200, 0, 0), -- Stonecore Flayer (Area: 0) (possible waypoints or random movement)
(@CGUID+130, 42808, 725, 1, 1, 1209.561, 1039.465, 259.7205, 0.03490658, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+131, 42808, 725, 1, 1, 1212.762, 1046.979, 260.0612, 5.637414, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+132, 49859, 725, 1, 1, 1213.093, 1042.619, 259.0635, 1.366908, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+133, 49929, 725, 1, 1, 1214.063, 1038.853, 259.1703, 0.4886922, 7200, 0, 0), -- Crimson Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+134, 43214, 725, 1, 1, 1191.1, 1154.01, 270.7593, 4.694936, 7200, 0, 0), -- Slabhide (Area: 0) (possible waypoints or random movement)
(@CGUID+135, 42810, 725, 1, 1, 1187.34, 1063.681, 263.3674, 5.602507, 7200, 0, 0), -- Crystalspawn Giant (Area: 0) (possible waypoints or random movement)
(@CGUID+136, 42808, 725, 1, 1, 1095.49, 1060.309, 268.6975, 2.007129, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+137, 49857, 725, 1, 1, 1095.775, 1060.066, 268.7494, 4.29401, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+138, 49859, 725, 1, 1, 1190.022, 1079.658, 264.1446, 1.812007, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+139, 49857, 725, 1, 1, 1167.102, 1069.775, 266.8543, 0.8947486, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+140, 43357, 725, 1, 1, 1218.25, 1167.77, 253.5833, 0, 7200, 0, 0), -- Stalactite Trigger - Trash, On Ground (Area: 0)
(@CGUID+141, 42845, 725, 1, 1, 1129.988, 967.3715, 284.4027, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+142, 42845, 725, 1, 1, 1132.62, 967.8489, 284.2766, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+143, 42845, 725, 1, 1, 1131.401, 968.184, 284.3141, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+144, 42845, 725, 1, 1, 1130.616, 969.9566, 284.3379, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+145, 42845, 725, 1, 1, 1132.997, 969.3733, 284.2822, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+146, 42845, 725, 1, 1, 1132.679, 966.0226, 284.2926, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+147, 42845, 725, 1, 1, 1134.212, 967.2292, 284.223, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+148, 42845, 725, 1, 1, 1131.347, 965.2518, 284.565, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+149, 42845, 725, 1, 1, 1129.358, 968.9896, 284.3794, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+150, 42845, 725, 1, 1, 1132.188, 970.2813, 284.2924, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+151, 42808, 725, 1, 1, 1097.814, 1066.22, 268.6492, 3.124139, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+152, 49859, 725, 1, 1, 1103.363, 1066.12, 268.6574, 6.141112, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+153, 42845, 725, 1, 1, 1097.965, 1064.696, 268.4244, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+154, 42845, 725, 1, 1, 1100.597, 1065.174, 268.4771, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+155, 42845, 725, 1, 1, 1099.379, 1065.509, 268.511, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+156, 42845, 725, 1, 1, 1100.974, 1066.698, 268.7016, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+157, 42845, 725, 1, 1, 1100.656, 1063.347, 268.2173, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+158, 42845, 725, 1, 1, 1102.189, 1064.554, 268.4177, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+159, 42845, 725, 1, 1, 1099.325, 1062.576, 268.0865, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+160, 42845, 725, 1, 1, 1100.165, 1067.606, 268.8659, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+161, 42845, 725, 1, 1, 1097.335, 1066.314, 268.6733, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+162, 42845, 725, 1, 1, 1098.594, 1067.281, 268.7858, 0, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+163, 49857, 725, 1, 1, 1131.322, 1089.135, 261.0318, 1.038749, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+164, 49857, 725, 1, 1, 1202.609, 1095.765, 267.2939, 3.412364, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+165, 49857, 725, 1, 1, 1162.695, 1099.614, 267.3929, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+166, 49859, 725, 1, 1, 1125.067, 1088.201, 261.3394, 3.937663, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+167, 42808, 725, 1, 1, 1124.589, 1091.95, 260.6535, 1.605703, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+168, 42808, 725, 1, 1, 1131.7, 1097.41, 262.375, 3.682645, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+169, 42808, 725, 1, 1, 1065.851, 1029.036, 266.3629, 2.007129, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+170, 49857, 725, 1, 1, 1065.857, 1017.261, 265.5841, 3.43924, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+171, 49857, 725, 1, 1, 1161.656, 1108.005, 266.175, 5.483245, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+172, 49857, 725, 1, 1, 1153.778, 1116.213, 266.0545, 2.835489, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+173, 49857, 725, 1, 1, 1207.828, 1105.019, 266.1474, 5.900834, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+174, 42845, 725, 1, 1, 1092.42, 987.1505, 263.9221, 1.043778, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+175, 42845, 725, 1, 1, 1089.183, 979.231, 263.7944, 1.106698, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+176, 42845, 725, 1, 1, 1086.737, 975.2584, 263.5418, 0.9638883, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+177, 42845, 725, 1, 1, 1095.116, 991.7847, 264.5786, 0.8746441, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+178, 42845, 725, 1, 1, 1085.362, 976.329, 263.3769, 1.042939, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+179, 42845, 725, 1, 1, 1085.4, 978.9368, 263.2436, 0.9934071, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+180, 42845, 725, 1, 1, 1084.606, 974.7102, 263.2524, 1.036179, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+181, 42845, 725, 1, 1, 1130.282, 1030.057, 266.1411, 0.7448446, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+182, 42845, 725, 1, 1, 1130.282, 1030.057, 266.1411, 0.7448446, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+183, 42845, 725, 1, 1, 1130.282, 1030.057, 266.1411, 0.7448446, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+184, 42845, 725, 1, 1, 1129.576, 1092.875, 260.9529, 4.939282, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+185, 42845, 725, 1, 1, 1130.712, 1090.457, 261.0247, 4.939282, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+186, 42845, 725, 1, 1, 1130.719, 1091.719, 261.0565, 4.939282, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+187, 42845, 725, 1, 1, 1132.234, 1092.932, 261.5008, 4.939282, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+188, 42845, 725, 1, 1, 1132.285, 1090.486, 261.3407, 4.939282, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+189, 42845, 725, 1, 1, 1128.962, 1089.929, 260.6612, 4.939282, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+190, 42845, 725, 1, 1, 1130.517, 1088.757, 260.9448, 4.939282, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+191, 42845, 725, 1, 1, 1127.875, 1091.023, 260.4697, 4.939282, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+192, 42845, 725, 1, 1, 1130.974, 1093.901, 261.3569, 4.939282, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+193, 42845, 725, 1, 1, 1132.95, 1091.498, 261.4983, 4.939282, 7200, 0, 0), -- Rock Borer (Area: 0)
(@CGUID+194, 42808, 725, 1, 1, 1061.983, 1021.408, 265.1751, 3.159046, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+195, 49857, 725, 1, 1, 1055.615, 1023.18, 265.5381, 3.395148, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+196, 49857, 725, 1, 1, 1180.034, 1121.888, 261.8244, 1.886999, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+197, 49857, 725, 1, 1, 1172.888, 1121.895, 262.4702, 6.048144, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+198, 49857, 725, 1, 1, 1153.314, 1125.288, 266.4519, 1.485005, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+199, 49857, 725, 1, 1, 1213.784, 1114.134, 265.4436, 0.5812046, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+200, 49859, 725, 1, 1, 1211.186, 1111.705, 265.5236, 5.094001, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+201, 49857, 725, 1, 1, 1222.371, 1146.659, 258.3521, 3.656565, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+202, 49857, 725, 1, 1, 1206.8, 1167.923, 253.4111, 4.22158, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+203, 49857, 725, 1, 1, 1204.938, 1167.649, 253.4538, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+204, 49857, 725, 1, 1, 1223.518, 1151.938, 257.1958, 5.27614, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+205, 42808, 725, 1, 1, 1272.99, 1108.16, 213.3893, 3.857178, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+206, 42808, 725, 1, 1, 1272.76, 1115.8, 213.0593, 2.303835, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+207, 49857, 725, 1, 1, 1269.298, 1103.88, 213.7155, 3.037014, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+208, 49857, 725, 1, 1, 1210.467, 1182.448, 251.5381, 2.235905, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+209, 49857, 725, 1, 1, 1269.067, 1117.228, 213.0197, 2.391434, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+210, 49857, 725, 1, 1, 1277.067, 1093.102, 213.6591, 0.2635228, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+211, 49857, 725, 1, 1, 1273.506, 1095.417, 213.7372, 1.464329, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+212, 51397, 725, 1, 1, 1313.26, 1236.833, 247.2859, 4.310963, 7200, 0, 0), -- Stonecore Teleporter (Area: 0)
(@CGUID+213, 43214, 725, 1, 1, 1282.7, 1229.77, 247.1553, 3.822271, 7200, 0, 0), -- Slabhide (Area: 0) (possible waypoints or random movement)
(@CGUID+214, 49857, 725, 1, 1, 1339.862, 1153.537, 213.0875, 4.121576, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+215, 49857, 725, 1, 1, 1373.87, 1194.911, 236.8719, 3.635109, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+216, 49859, 725, 1, 1, 1370.922, 1203.465, 238.7766, 5.964746, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+217, 49857, 725, 1, 1, 1329.252, 1127.446, 213.8084, 6.011818, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+218, 42808, 725, 1, 1, 1340.021, 1129.729, 214.0243, 1.867502, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+219, 42808, 725, 1, 1, 1345.069, 1134.851, 214.0043, 2.338741, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+220, 49857, 725, 1, 1, 1339.842, 1131.038, 214.0563, 0.1540818, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+221, 42808, 725, 1, 1, 1407.7, 1167.13, 231.6193, 5.689773, 7200, 0, 0), -- Stonecore Flayer (Area: 0) (possible waypoints or random movement)
(@CGUID+222, 42808, 725, 1, 1, 1412.931, 1170.2, 231.5103, 4.921828, 7200, 0, 0), -- Stonecore Flayer (Area: 0) (possible waypoints or random movement)
(@CGUID+223, 49857, 725, 1, 1, 1408.438, 1165.173, 231.6854, 6.223332, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+224, 49857, 725, 1, 1, 1408.474, 1161.253, 231.7695, 2.868391, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+225, 49859, 725, 1, 1, 1417.444, 1168.16, 231.5445, 2.176952, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+226, 42428, 725, 1, 1, 1345.863, 1095.292, 214.1833, 2.895934, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+227, 42428, 725, 1, 1, 1343.511, 1096.944, 214.2668, 2.844552, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+228, 42428, 725, 1, 1, 1345.886, 1101.445, 214.3241, 2.696324, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+229, 42428, 725, 1, 1, 1340.713, 1096.528, 214.2791, 2.961729, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+230, 42428, 725, 1, 1, 1366.761, 1102.469, 214.3951, 0.6181588, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+231, 42428, 725, 1, 1, 1364.55, 1100.743, 214.4002, 1.076023, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+232, 42428, 725, 1, 1, 1353.556, 1095.957, 214.302, 3.158143, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+233, 49857, 725, 1, 1, 1453.108, 1179.981, 232.5311, 3.77221, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+234, 49857, 725, 1, 1, 1445.745, 1177.858, 232.1625, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+235, 49857, 725, 1, 1, 1438.681, 1199.094, 229.9988, 0.6811383, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+236, 49857, 725, 1, 1, 1436.388, 1165.233, 233.4444, 1.220447, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+237, 49857, 725, 1, 1, 1446.479, 1178.293, 232.1835, 0.4271041, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+238, 42695, 725, 1, 1, 1442.42, 1189.29, 230.9778, 3.682645, 7200, 0, 0), -- Stonecore Sentry (Area: 0)
(@CGUID+239, 42696, 725, 1, 1, 1449.36, 1223.75, 232.0473, 2.338741, 7200, 0, 0), -- Stonecore Warbringer (Area: 0)
(@CGUID+240, 42691, 725, 1, 1, 1445.65, 1223.67, 231.5803, 0.6283185, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0)
(@CGUID+241, 42691, 725, 1, 1, 1447.82, 1226.98, 232.3233, 4.45059, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0)
(@CGUID+242, 42789, 725, 1, 1, 1444.83, 1227.64, 231.9683, 0.7330383, 7200, 0, 0), -- Stonecore Magmalord (Area: 0)
(@CGUID+243, 49859, 725, 1, 1, 1464.229, 1217.955, 232.3398, 0.4886922, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+244, 49857, 725, 1, 1, 1457.061, 1234.545, 234.2162, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+245, 49857, 725, 1, 1, 1449.283, 1235.243, 234.7099, 1.119794, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+246, 49857, 725, 1, 1, 1438.948, 1231.424, 232.4777, 1.913332, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+247, 49857, 725, 1, 1, 1457.251, 1222.262, 232.1672, 4.62497, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+248, 49857, 725, 1, 1, 1463.29, 1218.313, 232.2976, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+249, 42428, 725, 1, 1, 1379.11, 1084.221, 214.216, 6.031737, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+250, 42428, 725, 1, 1, 1380.223, 1084.595, 214.1574, 5.952815, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+251, 42428, 725, 1, 1, 1378.169, 1087.305, 214.2564, 6.006551, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+252, 42428, 725, 1, 1, 1375.683, 1085.041, 214.2537, 6.236838, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+253, 42428, 725, 1, 1, 1376.127, 1088.584, 214.2901, 6.05921, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+254, 42428, 725, 1, 1, 1347.545, 1101.213, 214.2832, 1.192627, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+255, 49857, 725, 1, 1, 1414.826, 1086.016, 213.0847, 1.210038, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+256, 49857, 725, 1, 1, 1499.413, 1204.326, 227.6294, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+257, 49857, 725, 1, 1, 1497.209, 1204.822, 228.0952, 1.205829, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+258, 42428, 725, 1, 1, 1358.044, 1094.725, 214.336, 2.398773, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+259, 42428, 725, 1, 1, 1354.714, 1101.049, 214.3606, 0.1200472, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+260, 42428, 725, 1, 1, 1347.942, 1099.941, 214.2811, 5.827664, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+261, 42428, 725, 1, 1, 1334.531, 1106.675, 213.8851, 0.08021385, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+262, 42692, 725, 1, 1, 1397.473, 1089.759, 213.0192, 1.989473, 7200, 0, 0), -- Stonecore Bruiser (Area: 0) (possible waypoints or random movement)
(@CGUID+263, 49857, 725, 1, 1, 1522.38, 1175.512, 220.2957, 2.481597, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+264, 49859, 725, 1, 1, 1513.199, 1176.083, 221.6697, 0.7543384, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+265, 49857, 725, 1, 1, 1518.917, 1177.443, 220.9709, 1.026959, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+266, 42696, 725, 1, 1, 1521.391, 1145.035, 216.5976, 2.650397, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+267, 42696, 725, 1, 1, 1543.366, 1183.951, 218.9069, 2.460914, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+268, 42696, 725, 1, 1, 1539.379, 1187.443, 219.521, 5.375614, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+269, 42691, 725, 1, 1, 1543.035, 1187.622, 219.5511, 3.647738, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0) (possible waypoints or random movement)
(@CGUID+270, 42789, 725, 1, 1, 1539.75, 1184.047, 219.1528, 0.9250245, 7200, 0, 0), -- Stonecore Magmalord (Area: 0) (possible waypoints or random movement)
(@CGUID+271, 22515, 725, 1, 1, 1535.25, 1133.851, 216.4158, 2.199115, 7200, 0, 0), -- World Trigger (Area: 0)
(@CGUID+272, 42695, 725, 1, 1, 1536.033, 1186.427, 219.6239, 2.879793, 7200, 0, 0), -- Stonecore Sentry (Area: 0)
(@CGUID+273, 42696, 725, 1, 1, 1537.535, 1131.781, 216.4158, 2.460914, 7200, 0, 0), -- Stonecore Warbringer (Area: 0)
(@CGUID+274, 42696, 725, 1, 1, 1533.547, 1135.273, 216.4158, 5.375614, 7200, 0, 0), -- Stonecore Warbringer (Area: 0)
(@CGUID+275, 42696, 725, 1, 1, 1538.153, 1135.764, 216.4158, 3.647738, 7200, 0, 0), -- Stonecore Warbringer (Area: 0)
(@CGUID+276, 42691, 725, 1, 1, 1533.127, 1130.906, 216.4158, 0.9250245, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0)
(@CGUID+277, 42692, 725, 1, 1, 1556.156, 1165.99, 216.1785, 1.910413, 7200, 0, 0), -- Stonecore Bruiser (Area: 0) (possible waypoints or random movement)
(@CGUID+278, 42695, 725, 1, 1, 1563.614, 1173.26, 217.6564, 2.090506, 7200, 0, 0), -- Stonecore Sentry (Area: 0)
(@CGUID+279, 42696, 725, 1, 1, 1545.302, 1215.274, 223.3519, 2.146755, 7200, 0, 0), -- Stonecore Warbringer (Area: 0)
(@CGUID+280, 42696, 725, 1, 1, 1541.705, 1216.205, 223.5399, 0.4363323, 7200, 0, 0), -- Stonecore Warbringer (Area: 0)
(@CGUID+281, 42696, 725, 1, 1, 1544.703, 1218.802, 223.5382, 4.258604, 7200, 0, 0), -- Stonecore Warbringer (Area: 0)
(@CGUID+282, 42691, 725, 1, 1, 1541.995, 1220.243, 223.7124, 0.541052, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0)
(@CGUID+283, 42696, 725, 1, 1, 1580.616, 1185.563, 219.6994, 2.268928, 7200, 0, 0), -- Stonecore Warbringer (Area: 0)
(@CGUID+284, 42691, 725, 1, 1, 1577.613, 1188.903, 220.0661, 4.956735, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0)
(@CGUID+285, 42691, 725, 1, 1, 1580.578, 1188.481, 220.0066, 3.892084, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0)
(@CGUID+286, 42789, 725, 1, 1, 1576.866, 1185.425, 219.7041, 0.715585, 7200, 0, 0), -- Stonecore Magmalord (Area: 0)
(@CGUID+287, 42691, 725, 1, 1, 1579.62, 1182.707, 219.3207, 1.413717, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0) (possible waypoints or random movement)
(@CGUID+288, 42696, 725, 1, 1, 1556.931, 1130.292, 215.8003, 1.413717, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+289, 42696, 725, 1, 1, 1557.37, 1134.91, 215.8003, 4.520403, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+290, 42789, 725, 1, 1, 1525.852, 1107.556, 216.514, 5.969026, 7200, 0, 0), -- Stonecore Magmalord (Area: 0) (possible waypoints or random movement)
(@CGUID+291, 42691, 725, 1, 1, 1588.358, 1168.332, 218.0312, 5.77704, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0)
(@CGUID+292, 42696, 725, 1, 1, 1568.069, 1132.299, 215.8003, 5.340707, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+293, 42691, 725, 1, 1, 1526.944, 1104.66, 216.5073, 0.06981317, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0) (possible waypoints or random movement)
(@CGUID+294, 42789, 725, 1, 1, 1529.563, 1106.3, 216.4731, 4.031711, 7200, 0, 0), -- Stonecore Magmalord (Area: 0) (possible waypoints or random movement)
(@CGUID+295, 42695, 725, 1, 1, 1546.556, 1123.778, 216.3325, 1.389187, 7200, 0, 0), -- Stonecore Sentry (Area: 0)
(@CGUID+296, 42695, 725, 1, 1, 1548.783, 1126.941, 216.3325, 2.679901, 7200, 0, 0), -- Stonecore Sentry (Area: 0)
(@CGUID+297, 42692, 725, 1, 1, 1594.809, 1173.983, 218.3723, 3.106686, 7200, 0, 0), -- Stonecore Bruiser (Area: 0)
(@CGUID+298, 42696, 725, 1, 1, 1590.144, 1165.458, 217.829, 1.43117, 7200, 0, 0), -- Stonecore Warbringer (Area: 0)
(@CGUID+299, 42789, 725, 1, 1, 1591.323, 1167.91, 218.0043, 3.769911, 7200, 0, 0), -- Stonecore Magmalord (Area: 0)
(@CGUID+300, 42789, 725, 1, 1, 1592.5, 1165.972, 217.8656, 2.775074, 7200, 0, 0), -- Stonecore Magmalord (Area: 0)
(@CGUID+301, 42691, 725, 1, 1, 1570.681, 1129.42, 215.8003, 2.391101, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0) (possible waypoints or random movement)
(@CGUID+302, 42696, 725, 1, 1, 1529.601, 1103.38, 216.5011, 2.286381, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+303, 42692, 725, 1, 1, 1530.8, 1100.64, 216.442, 2.216135, 7200, 0, 0), -- Stonecore Bruiser (Area: 0) (possible waypoints or random movement)
(@CGUID+304, 42696, 725, 1, 1, 1597.991, 1111.736, 216.3481, 2.268928, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+305, 42696, 725, 1, 1, 1594.288, 1116.474, 216.2741, 5.393067, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+306, 42696, 725, 1, 1, 1597.899, 1115.885, 216.228, 3.892084, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+307, 42691, 725, 1, 1, 1593.722, 1112.556, 216.3091, 0.715585, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0) (possible waypoints or random movement)
(@CGUID+308, 22515, 725, 1, 1, 1596.123, 1114.085, 216.2637, 2.199115, 7200, 0, 0), -- World Trigger (Area: 0)
(@CGUID+309, 42696, 725, 1, 1, 1589.436, 1087.156, 217.7211, 2.268928, 7200, 0, 0), -- Stonecore Warbringer (Area: 0)
(@CGUID+310, 42691, 725, 1, 1, 1586.432, 1090.497, 217.3748, 4.956735, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0)
(@CGUID+311, 42789, 725, 1, 1, 1589.398, 1090.075, 217.5177, 3.892084, 7200, 0, 0), -- Stonecore Magmalord (Area: 0)
(@CGUID+312, 42789, 725, 1, 1, 1585.981, 1087.464, 217.5582, 0.715585, 7200, 0, 0), -- Stonecore Magmalord (Area: 0)
(@CGUID+313, 42696, 725, 1, 1, 1598.276, 1098.106, 217.2402, 1.605703, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+314, 42696, 725, 1, 1, 1597.073, 1100.375, 217.0808, 5.77704, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+315, 42691, 725, 1, 1, 1599.757, 1100.733, 217.0958, 3.682645, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0) (possible waypoints or random movement)
(@CGUID+316, 42692, 725, 1, 1, 1587.819, 1098.625, 216.8654, 3.892084, 7200, 0, 0), -- Stonecore Bruiser (Area: 0) (possible waypoints or random movement)
(@CGUID+317, 42691, 725, 1, 1, 1601.145, 1110.677, 216.4607, 4.541791, 7200, 0, 0), -- Stonecore Rift Conjurer (Area: 0) (possible waypoints or random movement)
(@CGUID+318, 42789, 725, 1, 1, 1600.819, 1097.993, 217.2828, 4.049164, 7200, 0, 0), -- Stonecore Magmalord (Area: 0) (possible waypoints or random movement)
(@CGUID+319, 42696, 725, 1, 1, 1585.127, 1081.375, 217.813, 5.375614, 7200, 0, 0), -- Stonecore Warbringer (Area: 0) (possible waypoints or random movement)
(@CGUID+320, 49859, 725, 1, 1, 1593.457, 1077.293, 218.3466, 5.509783, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+321, 22515, 725, 1, 1, 1558.358, 1062.399, 218.4382, 2.199115, 7200, 0, 0), -- World Trigger (Area: 0)
(@CGUID+322, 49857, 725, 1, 1, 1530.413, 1061.969, 218.0772, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+323, 49859, 725, 1, 1, 1530.869, 1062.347, 218.0565, 2.771971, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+324, 49857, 725, 1, 1, 1408.767, 1161.233, 231.7739, 5.950995, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+325, 49857, 725, 1, 1, 1407.607, 1162.515, 231.7408, 5.112448, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+326, 49859, 725, 1, 1, 1419.158, 1165.688, 231.7923, 0.4886922, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+327, 6491, 646, 1, 1, 854.005, 638.446, -68.22756, 2.460914, 120, 0, 0), -- Spirit Healer (Area: Quartzite Basin)
(@CGUID+328, 32747, 571, 1, 1, 5760.572, 654.7817, 618.5983, 3.910498, 120, 0, 0), -- Mendez Nightshadow (Area: Dalaran City) (possible waypoints or random movement)
(@CGUID+329, 32714, 571, 1, 1, 5878.48, 677.3794, 643.1771, 4.255305, 120, 0, 0), -- Moon Priestess Nici (Area: Dalaran City)
(@CGUID+330, 42428, 725, 1, 1, 1366.793, 1103.65, 214.391, 0.1744206, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+331, 49859, 725, 1, 1, 1514.065, 1177.124, 221.5955, 4.240454, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+332, 49857, 725, 1, 1, 1522.371, 1177.661, 220.4543, 1.680519, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+333, 49857, 725, 1, 1, 1465.23, 1037.804, 217.2619, 5.683656, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+334, 49859, 725, 1, 1, 1446.526, 1072.153, 215.971, 0.4886922, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+335, 49857, 725, 1, 1, 1451.066, 1038.947, 216.7354, 3.364094, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+336, 49857, 725, 1, 1, 1454.993, 1040.858, 216.8761, 0.3913827, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+337, 49857, 725, 1, 1, 1440.477, 1039.372, 216.0676, 5.403705, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+338, 49857, 725, 1, 1, 1423.461, 1079.985, 213.9178, 0.4886922, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+339, 42428, 725, 1, 1, 1395.138, 1073.284, 212.9314, 6.000193, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+340, 42428, 725, 1, 1, 1402.138, 1060.13, 212.7051, 5.963013, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+341, 42428, 725, 1, 1, 1404.665, 1069.263, 212.5671, 6.06288, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+342, 42428, 725, 1, 1, 1394.08, 1064.065, 212.6911, 5.875175, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+343, 42428, 725, 1, 1, 1400.799, 1066.175, 212.4942, 0.05107684, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+344, 42428, 725, 1, 1, 1392.158, 1068.593, 212.7375, 6.043059, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+345, 42428, 725, 1, 1, 1397.25, 1072.637, 212.9128, 5.997693, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+346, 49859, 725, 1, 1, 1393.616, 1041.194, 212.845, 3.275175, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+347, 42808, 725, 1, 1, 1383.939, 1050.859, 213.1513, 4.817109, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+348, 42808, 725, 1, 1, 1380.189, 1049.55, 212.8623, 3.874631, 7200, 0, 0), -- Stonecore Flayer (Area: 0)
(@CGUID+349, 49859, 725, 1, 1, 1384.733, 1021.111, 211.5295, 3.373721, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+350, 49859, 725, 1, 1, 1385.395, 1006.692, 209.5867, 5.782294, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+351, 49859, 725, 1, 1, 1384.792, 1006.81, 209.4787, 4.496339, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+352, 49859, 725, 1, 1, 1365.254, 1029.13, 210.9064, 5.400886, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+353, 42428, 725, 1, 1, 1365.505, 1097.984, 214.3958, 1.258142, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+354, 42428, 725, 1, 1, 1369.96, 1090.178, 214.3543, 2.977572, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+355, 42428, 725, 1, 1, 1354.623, 1083.073, 214.1249, 6.100968, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+356, 42428, 725, 1, 1, 1356.529, 1087.971, 214.2187, 6.210895, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+357, 49857, 725, 1, 1, 1339.906, 1053.782, 212.2518, 6.270017, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+358, 42428, 725, 1, 1, 1347.853, 1083.089, 214.0147, 5.242701, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+359, 42428, 725, 1, 1, 1353.631, 1084.243, 214.1238, 6.179112, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+360, 42428, 725, 1, 1, 1342.046, 1073.676, 213.0892, 5.455962, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+361, 42428, 725, 1, 1, 1344.507, 1090.385, 214.0893, 6.172171, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+362, 49859, 725, 1, 1, 1332.14, 1028.39, 210.2038, 5.296794, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+363, 42428, 725, 1, 1, 1329.33, 1081.817, 214.1827, 0.05717026, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+364, 42428, 725, 1, 1, 1326.388, 1084.23, 213.7756, 6.184995, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+365, 42428, 725, 1, 1, 1333.585, 1084.912, 214.1874, 0.359824, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+366, 42428, 725, 1, 1, 1341.944, 1094.606, 214.1994, 0.3380255, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+367, 42428, 725, 1, 1, 1338.701, 1087.243, 214.1294, 6.148326, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+368, 42428, 725, 1, 1, 1330.414, 1081.018, 213.8166, 6.052432, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+369, 49859, 725, 1, 1, 1327.733, 1029.481, 210.151, 5.520297, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+370, 49859, 725, 1, 1, 1314.318, 1066.263, 212.5542, 2.109641, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+371, 42428, 725, 1, 1, 1346.099, 996.3055, 208.2366, 4.852015, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+372, 42428, 725, 1, 1, 1346.469, 994.4566, 208.1267, 4.852015, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+373, 42428, 725, 1, 1, 1344.207, 996.0243, 208.2371, 4.869469, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+374, 42428, 725, 1, 1, 1346.875, 992.5764, 208.0148, 4.852015, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+375, 42428, 725, 1, 1, 1334.464, 1087.555, 214.185, 0.09738207, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+376, 49859, 725, 1, 1, 1312.745, 1065.441, 212.4588, 5.856206, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+377, 42428, 725, 1, 1, 1342.295, 995.6441, 208.232, 4.886922, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+378, 42428, 725, 1, 1, 1344.58, 994.1719, 208.127, 4.869469, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+379, 42428, 725, 1, 1, 1342.665, 993.7899, 208.1218, 4.886922, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+380, 42428, 725, 1, 1, 1340.127, 995.3264, 208.2328, 4.904375, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+381, 42428, 725, 1, 1, 1344.986, 992.2952, 208.0152, 4.869469, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+382, 42428, 725, 1, 1, 1347.2, 990.9028, 207.9154, 4.852015, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+383, 42428, 725, 1, 1, 1340.49, 993.4774, 208.1229, 4.904375, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+384, 42428, 725, 1, 1, 1343.069, 991.9167, 208.0102, 4.886922, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+385, 42428, 725, 1, 1, 1345.316, 990.6233, 207.9159, 4.869469, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+386, 42428, 725, 1, 1, 1338, 994.8264, 208.2226, 4.921828, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+387, 42428, 725, 1, 1, 1343.392, 990.2413, 207.9108, 4.886922, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+388, 42428, 725, 1, 1, 1340.903, 991.5938, 208.0107, 4.904375, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+389, 42428, 725, 1, 1, 1338.361, 992.9688, 208.1123, 4.921828, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+390, 42428, 725, 1, 1, 1341.217, 989.9219, 207.9115, 4.904375, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+391, 42428, 725, 1, 1, 1338.771, 991.1042, 208.0012, 4.921828, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+392, 49857, 725, 1, 1, 1293.049, 1063.369, 212.4886, 1.764237, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+393, 42428, 725, 1, 1, 1339.09, 989.4288, 207.9018, 4.921828, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+394, 42428, 725, 1, 1, 1331.172, 992.2361, 208.128, 4.991642, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+395, 42428, 725, 1, 1, 1331.95, 990.5208, 208.0276, 4.991642, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+396, 42428, 725, 1, 1, 1329.387, 991.5313, 208.1015, 5.009095, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+397, 42428, 725, 1, 1, 1332.776, 988.7847, 207.9203, 4.991642, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+398, 42428, 725, 1, 1, 1330.179, 989.8125, 208.0008, 5.009095, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+399, 42428, 725, 1, 1, 1333.481, 987.2292, 207.8349, 4.991642, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+400, 22515, 725, 1, 1, 1331.007, 988.7379, 207.9332, 2.495821, 7200, 0, 0), -- World Trigger (Area: 0)
(@CGUID+401, 42428, 725, 1, 1, 1327.616, 990.7188, 208.069, 5.026548, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+402, 42428, 725, 1, 1, 1330.998, 988.0729, 207.8949, 5.009095, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+403, 42428, 725, 1, 1, 1325.582, 989.9063, 208.0244, 5.044002, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+404, 42428, 725, 1, 1, 1328.401, 989, 207.9684, 5.026548, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+405, 42428, 725, 1, 1, 1326.352, 988.191, 207.938, 5.044002, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+406, 42428, 725, 1, 1, 1329.224, 987.2639, 207.8639, 5.026548, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+407, 42428, 725, 1, 1, 1323.627, 988.941, 207.9472, 5.061455, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+408, 42428, 725, 1, 1, 1331.707, 986.5208, 207.8209, 5.009095, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+409, 42428, 725, 1, 1, 1329.925, 985.7118, 207.8039, 5.026548, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+410, 42428, 725, 1, 1, 1327.189, 986.4549, 207.8403, 5.044002, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+411, 42428, 725, 1, 1, 1324.405, 987.2083, 207.8552, 5.061455, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+412, 42428, 725, 1, 1, 1327.884, 984.9028, 207.7882, 5.044002, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+413, 42428, 725, 1, 1, 1325.227, 985.4896, 207.7709, 5.061455, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+414, 42428, 725, 1, 1, 1325.922, 983.934, 207.719, 5.061455, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+415, 42428, 725, 1, 1, 1315.719, 985.6614, 207.6693, 5.148721, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+416, 42428, 725, 1, 1, 1316.741, 984.0799, 207.568, 5.148721, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+417, 42428, 725, 1, 1, 1314.057, 984.7014, 207.6281, 5.166174, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+418, 42428, 725, 1, 1, 1317.816, 982.4879, 207.4885, 5.148721, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+419, 42428, 725, 1, 1, 1315.095, 983.1163, 207.5196, 5.166174, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+420, 42428, 725, 1, 1, 1318.747, 981.0521, 207.4487, 5.148721, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+421, 42428, 725, 1, 1, 1312.427, 983.6354, 207.5802, 5.183628, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+422, 42428, 725, 1, 1, 1316.163, 981.5174, 207.4372, 5.166174, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+423, 42428, 725, 1, 1, 1313.458, 982.0486, 207.4716, 5.183628, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+424, 42428, 725, 1, 1, 1317.094, 980.0903, 207.4186, 5.166174, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+425, 42428, 725, 1, 1, 1310.536, 982.5278, 207.5326, 5.201081, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+426, 42428, 725, 1, 1, 1314.528, 980.4514, 207.385, 5.183628, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+427, 42428, 725, 1, 1, 1311.55, 980.9445, 207.4017, 5.201081, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+428, 42428, 725, 1, 1, 1315.451, 979.0226, 207.3799, 5.183628, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+429, 42428, 725, 1, 1, 1308.745, 981.283, 207.4534, 5.218534, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+430, 42428, 725, 1, 1, 1312.635, 979.3524, 207.3106, 5.201081, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+431, 42428, 725, 1, 1, 1309.771, 979.6858, 207.3214, 5.218534, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+432, 42428, 725, 1, 1, 1313.552, 977.9202, 207.3265, 5.201081, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+433, 42428, 725, 1, 1, 1310.839, 978.1077, 207.2379, 5.218534, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+434, 42428, 725, 1, 1, 1311.76, 976.6736, 207.2538, 5.218534, 7200, 0, 0), -- Devout Follower (Area: 0)
(@CGUID+435, 49857, 725, 1, 1, 1423.564, 1080.174, 213.9332, 1.464081, 7200, 0, 0), -- Emerald Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+436, 49859, 725, 1, 1, 1307.451, 1067.639, 212.6115, 5.831646, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+437, 49859, 725, 1, 1, 1314.74, 1065.108, 212.552, 1.673843, 7200, 0, 0), -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
(@CGUID+438, 49859, 725, 1, 1, 1320.795, 1032.983, 210.5548, 3.958382, 7200, 0, 0); -- Topaz Shale Hatchling (Area: 0) (possible waypoints or random movement)
-- Fixed HP & Mana
UPDATE `creature_template` SET `exp`=3 WHERE `entry` IN (42188, 42333, 42428, 42691, 42692, 42695, 42696, 42789, 42808, 42810, 42845, 43214, 43357, 43391, 43430, 43438, 43537, 43662, 49857, 49859, 49929, 50048);

-- Set trigger flag
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry` IN (40350, 43357);

-- Stonecore - Normal & Heroic
UPDATE `creature` SET `spawnMask`=3 WHERE `map`=725;
UPDATE `gameobject` SET `spawnMask`=3 WHERE `map`=725;
DELETE FROM `quest_template` WHERE `Id` IN (30092, 30106, 30118);
INSERT INTO `quest_template` (`Id`, `Method`, `Level`, `MinLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `NextQuestIdChain`, `RewardXPId`, `RewardOrRequiredMoney`, `RewardMoneyMaxLevel`, `RewardSpell`, `RewardSpellCast`, `RewardHonor`, `RewardHonorMultiplier`, `SourceItemId`, `Flags`, `MinimapTargetMark`, `RewardTitleId`, `RequiredPlayerKills`, `RewardTalents`, `RewardArenaPoints`, `RewardSkillId`, `RewardSkillPoints`, `RewardReputationMask`, `QuestGiverPortrait`, `QuestTurnInPortrait`, `RewardItemId1`, `RewardItemId2`, `RewardItemId3`, `RewardItemId4`, `RewardItemCount1`, `RewardItemCount2`, `RewardItemCount3`, `RewardItemCount4`, `RewardChoiceItemId1`, `RewardChoiceItemId2`, `RewardChoiceItemId3`, `RewardChoiceItemId4`, `RewardChoiceItemId5`, `RewardChoiceItemId6`, `RewardChoiceItemCount1`, `RewardChoiceItemCount2`, `RewardChoiceItemCount3`, `RewardChoiceItemCount4`, `RewardChoiceItemCount5`, `RewardChoiceItemCount6`, `RewardFactionId1`, `RewardFactionId2`, `RewardFactionId3`, `RewardFactionId4`, `RewardFactionId5`, `RewardFactionValueId1`, `RewardFactionValueId2`, `RewardFactionValueId3`, `RewardFactionValueId4`, `RewardFactionValueId5`, `RewardFactionValueIdOverride1`, `RewardFactionValueIdOverride2`, `RewardFactionValueIdOverride3`, `RewardFactionValueIdOverride4`, `RewardFactionValueIdOverride5`, `PointMapId`, `PointX`, `PointY`, `PointOption`, `Title`, `Objectives`, `Details`, `EndText`, `CompletedText`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredSourceItemId1`, `RequiredSourceItemId2`, `RequiredSourceItemId3`, `RequiredSourceItemId4`, `RequiredSourceItemCount1`, `RequiredSourceItemCount2`, `RequiredSourceItemCount3`, `RequiredSourceItemCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `RequiredSpell`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyId3`, `RewardCurrencyId4`, `RewardCurrencyCount1`, `RewardCurrencyCount2`, `RewardCurrencyCount3`, `RewardCurrencyCount4`, `RequiredCurrencyId1`, `RequiredCurrencyId2`, `RequiredCurrencyId3`, `RequiredCurrencyId4`, `RequiredCurrencyCount1`, `RequiredCurrencyCount2`, `RequiredCurrencyCount3`, `RequiredCurrencyCount4`, `QuestGiverTextWindow`, `QuestGiverTargetName`, `QuestTurnTextWindow`, `QuestTurnTargetName`, `SoundAccept`, `SoundTurnIn`, `WDBVerified`) VALUES
(30092, 2, 85, 85, -162, 83, 0, 0, 0, 0, 0, 30093, 0, 0, 0, 0, 0, 0, 0, 0, 1048576, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Our Man in Gilneas', 'Seek out Zazzo Twinklefingers near the ruins of Gilneas City in Gilneas.', 'If you wish to join my cause and slaughter the black dragons in hiding, prove yourself by taking down Hiram Creed. He''s amassing an army in Gilneas.$B$BWe haven''t been able to slip past his defenders, but we''ve got a man on the scene keeping an eye on him. Zazzo Twinklefingers, a very crafty arcane mage, is waiting for us to contact him just outside of the ruins of the Gilnean capital.$B$BFind him and he''ll direct you to the target.', '', 'Seek out Zazzo Twinklefingers near the ruins of Gilneas City in Gilneas.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 16309), -- -Unknown-
(30106, 2, 85, 85, -162, 83, 0, 0, 0, 0, 0, 0, 3, 47000, 29200, 0, 109275, 0, 0, 0, 3145728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77945, 77946, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Deed is Done', 'Report your success to Prince Wrathion at Ravenholdt Manor in Hillsbrad Foothills.', 'Prince Wrathion will be pleased to hear that you''ve succeeded. You should report back to him at Ravenholdt Manor.$B$BThe Prince has been known to be extremely generous to those who help him. ', '', 'Report your success to Prince Wrathion at Ravenholdt Manor in Hillsbrad Foothills.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 16309), -- -Unknown-
(30118, 2, 85, 85, -162, 83, 0, 0, 0, 0, 0, 0, 5, 94000, 58350, 0, 109916, 0, 0, 0, 3145728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77949, 77950, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 349, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Patricide', 'Destroy Deathwing and retrieve a Fragment of Deathwing''s Jaw. ', 'Your next target has claimed the lives of all of my other assassins. I need you to kill my father himself.$B$BYou must destroy Deathwing.$B$BWe are out of time. His madness has already corrupted all the others of my kind, and his darkness will consume the world if he is not stopped.$B$BIf you by some miracle succeed, and can retrieve for me a piece of him - perhaps a fragment of the armor he uses to disguise his true chaotic nature - the reward I give you will be without equal. ', '', 'Take the Fragment of Deathwing''s Jaw, along with your daggers The Sleeper and The Dreamer, to Wrathion at Ravenholdt Manor in Hillsbrad Foothills.', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 890, 878, 16309); -- -Unknown-
DELETE FROM `spell_target_position` WHERE `id` IN (89157, 89158);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(89157, 0, -8998.14, 861.254, 29.6206, 2.24999), -- Teleport: Stormwind
(89158, 1, 1776.5, -4338.8, -7.48, 3.55349); -- Teleport: Orgrimmar
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 820 AND 842;
INSERT INTO `trinity_string`(`entry`,`content_default`) VALUES
(820,'* has gossip (%u)'),
(821,'* is quest giver (%u)'),
(822,'* is class trainer (%u)'),
(823,'* is profession trainer(%u)'),
(824,'* is ammo vendor (%u)'),
(825,'* is food vendor(%u)'),
(826,'* is poison vendor (%u)'),
(827,'* is reagent vendor (%u)'),
(828,'* can repair (%u)'),
(829,'* is flight master (%u)'),
(830,'* is spirit healer (%u)'),
(831,'* is spirit guide (%u)'),
(832,'* is innkeeper (%u)'),
(833,'* is banker (%u)'),
(834,'* is petitioner (%u)'),
(835,'* is tabard designer (%u)'),
(836,'* is battle master (%u)'),
(837,'* is auctioneer (%u)'),
(838,'* is stable master (%u)'),
(839,'* is guild banker (%u)'),
(840,'* has spell click (%u)'),
(841,'* is mailbox (%u)'),
(842,'* is player vehicle (%u)');

UPDATE `trinity_string` SET `content_default`='* is vendor (%u)' WHERE `entry`=545;
UPDATE `trinity_string` SET `content_default`='* is trainer (%u)' WHERE `entry`=546;
DELETE FROM `spell_target_position` WHERE `id` IN (84699, 84700);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(84699, 646, 2338.16, 143.69, 179.19, 1.13103), -- Teleport to Therazane's Throne
(84700, 646, 1076.78, 537.665, -44.5984, 3.31836); -- Teleport to Temple of Earth
DELETE FROM `gameobject_template` WHERE `entry` IN (195656, 195657, 195658, 195659, 201606, 202659, 206838, 207199, 207200, 207231);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `unkInt32`, `WDBVerified`) VALUES
(195656, 3, 2651, 'Ancient Tablet Fragment', '', '', '', 1691, 27556, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.45, 0, 0, 0, 0, 0, 0, 0, 16309), -- -Unknown-
(195657, 3, 2652, 'Ancient Tablet Fragment', '', '', '', 1691, 27556, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.45, 0, 0, 0, 0, 0, 0, 0, 16309), -- -Unknown-
(195658, 3, 2653, 'Ancient Tablet Fragment', '', '', '', 1691, 27556, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.45, 0, 0, 0, 0, 0, 0, 0, 16309), -- -Unknown-
(195659, 3, 2654, 'Ancient Tablet Fragment', '', '', '', 1691, 27557, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.45, 49102, 0, 0, 0, 0, 0, 0, 16309), -- -Unknown-
(201606, 22, 9383, 'Xylem''s Retreat', '', '', '', 69953, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6, 0, 0, 0, 0, 0, 0, 0, 16309), -- -Unknown-
(202659, 5, 200, 'Doodad_OrcBonFire01', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.542362, 0, 0, 0, 0, 0, 0, 0, 16309), -- -Unknown-
(206838, 5, 6531, 'Night Elf Hero Portrait (Scale 2)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 16309), -- -Unknown-
(207199, 9, 3871, 'Airwyn''s Journal', '', '', '', 3740, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.7, 0, 0, 0, 0, 0, 0, 0, 16309), -- -Unknown-
(207200, 9, 3871, 'Garley''s Journal', '', '', '', 3737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16309), -- -Unknown-
(207231, 5, 6636, 'Hanging, Streamer x3 - Val (scale 1.5)', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 0, 16309); -- -Unknown-
DELETE FROM `spell_target_position` WHERE `id` IN (49363, 84464, 49358);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(49363, 0, -10469, -3331.54, 25.4716, 0.98606), -- Portal Effect: Stonard
(84464, 646, 854.924, 1080.96, -12.5196, 4.54772), -- Portal to the Maelstrom
(49358, 0, -10469, -3331.54, 25.4716, 0.98606); -- Teleport: Stonard
SET @CGUID := 2213;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+74;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 6491, 0, 1, 1, -10530.82, 1162.413, 32.55332, 1.03657, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+1, 6491, 0, 1, 1, -14280.61, 300.899, 31.20342, 4.502949, 120, 0, 0), -- Spirit Healer (Area: Cape of Stranglethorn)
(@CGUID+2, 6491, 0, 1, 1, -224.1476, 1522.193, 76.25534, 3.93211, 120, 0, 0), -- Spirit Healer (Area: Shadowfang Keep)
(@CGUID+3, 6491, 0, 1, 1, -2722.83, -5628.99, 377.8293, 4.799655, 120, 0, 0), -- Spirit Healer (Area: Thunderstrike Mountain)
(@CGUID+4, 6491, 0, 1, 1, -3714.07, -5184.84, 41.38183, 3.874631, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+5, 6491, 0, 1, 1, -4197.02, -5462.1, 20.42273, 3.071779, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+6, 6491, 0, 1, 1, -4639.65, -4038.64, 340.4183, 5.602507, 120, 0, 0), -- Spirit Healer (Area: The Twilight Citadel)
(@CGUID+7, 6491, 0, 1, 1, -5156.313, -864.9803, 507.6792, 3.965698, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+8, 6491, 0, 1, 1, -5278.196, 320.3229, 396.903, 3.916551, 120, 0, 0), -- Spirit Healer (Area: Chill Breeze Valley)
(@CGUID+9, 6491, 0, 1, 1, -5351.069, -2890.369, 341.8812, 1.668318, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+10, 6491, 0, 1, 1, -5586.98, 5467.29, -1799.787, 4.712389, 120, 0, 0), -- Spirit Healer (Area: The Abyssal Maw)
(@CGUID+11, 6491, 0, 1, 1, -5686.381, -514.7, 396.3583, 5.48687, 120, 0, 0), -- Spirit Healer (Area: Coldridge Pass)
(@CGUID+12, 6491, 0, 1, 1, -6305.031, 6046.897, -788.3505, 6.195919, 120, 0, 0), -- Spirit Healer (Area: Seabrush)
(@CGUID+13, 6491, 0, 1, 1, -6439.12, -1114.68, 312.1473, 3.01942, 120, 0, 0), -- Spirit Healer (Area: Thorium Point)
(@CGUID+14, 6491, 0, 1, 1, -6865.49, -1086.21, 240.0963, 1.53589, 120, 0, 0), -- Spirit Healer (Area: Pyrox Flats)
(@CGUID+15, 6491, 0, 1, 1, -7104.325, -3488.604, 243.6131, 0.01745329, 120, 0, 0), -- Spirit Healer (Area: 0)
(@CGUID+16, 6491, 0, 1, 1, -7194.969, -915.4028, 165.5726, 1.64061, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+17, 6491, 0, 1, 1, -7295.31, -980.688, 263.0804, 0.9075712, 120, 0, 0), -- Spirit Healer (Area: 0)
(@CGUID+18, 6491, 0, 1, 1, -7319.33, -1646.83, 282.1064, 5.51524, 120, 0, 0), -- Spirit Healer (Area: The Sea of Cinders)
(@CGUID+19, 6491, 0, 1, 1, -7536.353, -1209.677, 286.8584, 5.183628, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+20, 6491, 0, 1, 1, -7593.818, -1127.948, 250.2898, 1.692969, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+21, 6491, 0, 1, 1, -8459.396, 907.2899, 100.1721, 3.682645, 120, 0, 0), -- Spirit Healer (Area: Stormwind City Cemetery)
(@CGUID+22, 6491, 0, 1, 1, -8770.042, 842.066, 97.71797, 3.787364, 120, 0, 0), -- Spirit Healer (Area: The Canals)
(@CGUID+23, 6491, 0, 1, 1, -9340.702, 165.0214, 61.64121, 0.9948376, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+24, 6491, 0, 1, 1, -9553.84, -1369.06, 51.03263, 4.974188, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+25, 6491, 0, 1, 1, -9560.81, -602.0605, 58.44543, 3.772277, 120, 0, 0), -- Spirit Healer (Area: Tower of Azora)
(@CGUID+26, 6491, 0, 1, 1, 1195.08, -2611.931, 77.85122, 3.420845, 120, 0, 0), -- Spirit Healer (Area: Caer Darrow)
(@CGUID+27, 6491, 0, 1, 1, 1394.44, -3700.06, 76.32124, 3.089233, 120, 0, 0), -- Spirit Healer (Area: Darrowshire)
(@CGUID+28, 6491, 0, 1, 1, 1882.776, 1622.236, 94.28485, 1.552795, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+29, 6491, 0, 1, 1, 1885.39, -1680.11, 59.77063, 3.228859, 120, 0, 0), -- Spirit Healer (Area: 0)
(@CGUID+30, 6491, 0, 1, 1, 2051.49, -5023.28, 75.20994, 0.418879, 120, 0, 0), -- Spirit Healer (Area: Pestilent Scar)
(@CGUID+31, 6491, 0, 1, 1, 2349.714, 484.7501, 33.4543, 1.80702, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+32, 6491, 0, 1, 1, 2377.5, -5780.811, 151.4503, 2.670354, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+33, 6491, 0, 1, 1, 3346.488, -3226.888, 143.9512, 3.490659, 120, 0, 0), -- Spirit Healer (Area: Stratholme)
(@CGUID+34, 6491, 1, 1, 1, -10249.2, -2144.41, 37.45873, 1.58825, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+35, 6491, 1, 1, 1, -11164.1, -593.135, 45.39263, 3.159046, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+36, 6491, 1, 1, 1, -11482.52, -2150.618, 493.757, 1.308997, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+37, 6491, 1, 1, 1, -3110.256, -3059.421, 33.75465, 2.600541, 120, 0, 0), -- Spirit Healer (Area: 0)
(@CGUID+38, 6491, 1, 1, 1, -3789.792, 1257.292, 160.3345, 4.694936, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+39, 6491, 1, 1, 1, -4632.742, -3136.45, 35.00328, 1.53589, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+40, 6491, 1, 1, 1, -590.5349, -2516.929, 91.84086, 4.590216, 120, 0, 0), -- Spirit Healer (Area: 0)
(@CGUID+41, 6491, 1, 1, 1, -7061.771, 1285.464, 6.334297, 0.4537856, 120, 0, 0), -- Spirit Healer (Area: 0)
(@CGUID+42, 6491, 1, 1, 1, -7357.565, -1315.574, -263.2169, 6.213372, 120, 0, 0), -- Spirit Healer (Area: Fire Plume Ridge)
(@CGUID+43, 6491, 1, 1, 1, -774.0811, -5002.679, 18.01943, 1.762783, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+44, 6491, 1, 1, 1, -7988.493, 1557.956, 4.736187, 3.106686, 120, 0, 0), -- Spirit Healer (Area: The Scarab Wall)
(@CGUID+45, 6491, 1, 1, 1, -8562.698, -4477.472, -213.7569, 0.6806784, 120, 0, 0), -- Spirit Healer (Area: Caverns of Time)
(@CGUID+46, 6491, 1, 1, 1, -8645.03, -4030.76, 44.42863, 5.044002, 120, 0, 0), -- Spirit Healer (Area: Caverns of Time)
(@CGUID+47, 6491, 1, 1, 1, -8831.48, 63.5729, 141.1313, 1.012291, 120, 0, 0), -- Spirit Healer (Area: Obelisk of the Moon)
(@CGUID+48, 6491, 1, 1, 1, 1183.11, -4458.11, 21.39813, 4.153883, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+49, 6491, 1, 1, 1, 1916.717, -4342.611, 24.22239, 5.811946, 120, 0, 0), -- Spirit Healer (Area: Valley of Wisdom)
(@CGUID+50, 6491, 1, 1, 1, 241.8663, -4791.438, 10.35383, 3.647738, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+51, 6491, 1, 1, 1, 4265.051, 732.5886, -26.95925, 0.03490658, 120, 0, 0), -- Spirit Healer (Area: 0)
(@CGUID+52, 6491, 1, 1, 1, 4949.677, -1875.748, 1326.196, 0.8028514, 120, 0, 0), -- Spirit Healer (Area: Blackhorn's Penance)
(@CGUID+53, 6491, 1, 1, 1, 4950.52, -2668.52, 1429.163, 5.550147, 120, 0, 0), -- Spirit Healer (Area: Shrine of Aviana)
(@CGUID+54, 6491, 1, 1, 1, 5412.32, -3193.87, 1580.543, 0.8028514, 120, 0, 0), -- Spirit Healer (Area: The Verdant Thicket)
(@CGUID+55, 6491, 1, 1, 1, 5957.406, -1207.792, 380.8147, 3.193953, 120, 0, 0), -- Spirit Healer (Area: Irontree Woods)
(@CGUID+56, 6491, 1, 1, 1, 6248.417, 237.9627, 21.6932, 0.8377581, 120, 0, 0), -- Spirit Healer (Area: Earthshatter Cavern)
(@CGUID+57, 6491, 1, 1, 1, 6889.726, -4661.071, 701.7715, 3.228859, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+58, 6491, 1, 1, 1, 7164.52, -491.2416, 31.59455, 2.565634, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+59, 6491, 1, 1, 1, 7418.556, -2816.225, 464.307, 0.8028514, 120, 0, 0), -- Spirit Healer (Area: 0)
(@CGUID+60, 6491, 646, 1, 1, 186.523, 826.37, 54.61963, 1.989675, 7200, 0, 0), -- Spirit Healer (Area: Masters' Gate)
(@CGUID+61, 6491, 646, 1, 1, 917.365, -371.193, 62.28493, 4.607669, 120, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+62, 6491, 648, 1, 1, 1000.785, 3310.562, 3.48974, 0.1047198, 120, 0, 0), -- Spirit Healer (Area: Alliance Beachhead)
(@CGUID+63, 6491, 648, 1, 1, 521.9097, 2707.837, 105.979, 3.281219, 120, 0, 0), -- Spirit Healer (Area: The Great Sea)
(@CGUID+64, 6491, 648, 1, 1, 635.1823, 3114.048, 3.318314, 2.111848, 120, 0, 0), -- Spirit Healer (Area: The Great Sea)
(@CGUID+65, 6491, 654, 1, 1, -1387.379, 1370.46, 36.14619, 3.124139, 7200, 0, 0), -- Spirit Healer (Area: Merchant Square)
(@CGUID+66, 6491, 654, 1, 1, -1565.55, 1592.233, 28.18609, 0.7679449, 7200, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+67, 6491, 654, 1, 1, -1710.248, 1855.203, 15.91447, 0.2792527, 7200, 0, 0), -- Spirit Healer (Area: Aderic's Repose)
(@CGUID+68, 6491, 654, 1, 1, -1765.031, 1410.88, 20.89059, 5.742133, 7200, 0, 0), -- Spirit Healer (Area: Military District)
(@CGUID+69, 6491, 654, 1, 1, -1766.483, 1656.995, 21.41692, 0, 7200, 0, 0), -- Spirit Healer (Area: Greymane Court)
(@CGUID+70, 6491, 654, 1, 1, -2153.125, 1676.8, -37.97425, 4.869469, 7200, 0, 0), -- Spirit Healer (Area: -Unknown-)
(@CGUID+71, 6491, 861, 1, 1, 1387.981, 558.8906, 80.50592, 4.817109, 120, 0, 0), -- Spirit Healer (Area: Fireplume Peak)
(@CGUID+72, 6491, 861, 1, 1, 1404.188, 234.3125, 61.68534, 2.251475, 120, 0, 0), -- Spirit Healer (Area: Magma Springs)
(@CGUID+73, 6491, 861, 1, 1, 987.2274, 295.6979, 45.78307, 0.6806784, 120, 0, 0), -- Spirit Healer (Area: The Furnace)
(@CGUID+74, 6491, 974, 1, 1, -4246.832, 6387.354, 13.20009, 4.677482, 7200, 0, 0); -- Spirit Healer (Area: Darkmoon Deathmatch)
/* Few changed zones updates */

-- Teldrassil, Rut'theran Village GY
UPDATE `game_graveyard_zone` SET `faction`=469 WHERE `id`=129;

-- Stranglethorn Vale, Booty Bay GY, Stranglethorn Vale & Gurubashi Arena GY,
UPDATE `game_graveyard_zone` SET `ghost_zone`=5287 WHERE `id` IN (109, 1458);

-- The Barrens, South GY, The Barrens, Camp Taurajo GY, The Barrens, Raptor Grounds & The Barrens, Central GY
UPDATE `game_graveyard_zone` SET `ghost_zone`=4709 WHERE `id` IN (229, 1289, 1432, 1433);

-- 4.3 dungeons & raid
DELETE FROM `game_graveyard_zone` WHERE `id`=1249 AND `ghost_zone` IN (5788, 5789, 5844, 5892);

/* Old dungeons graveyards */

-- Uldaman
DELETE FROM `game_graveyard_zone` WHERE `id`=8 AND `ghost_zone`=1337;

-- Scarlet Monastery
DELETE FROM `game_graveyard_zone` WHERE `id`=429 AND `ghost_zone`=796;

-- Dire Maul
DELETE FROM `game_graveyard_zone` WHERE `id`=849 AND `ghost_zone`=2557;

-- Zul'Farrak
DELETE FROM `game_graveyard_zone` WHERE `id`=209 AND `ghost_zone`=1176;

-- Gnomeregan
DELETE FROM `game_graveyard_zone` WHERE `id`=101 AND `ghost_zone`=721;

-- Stormwind Stockade
DELETE FROM `game_graveyard_zone` WHERE `id`=106 AND `ghost_zone`=717;

-- Wailling Caverns
DELETE FROM `game_graveyard_zone` WHERE `id`=10 AND `ghost_zone`=718;

-- Ragefire
DELETE FROM `game_graveyard_zone` WHERE `id`=850 AND `ghost_zone`=2437;

-- Blackfathom
DELETE FROM `game_graveyard_zone` WHERE `id`=469 AND `ghost_zone`=719;

-- Sunken Temple
DELETE FROM `game_graveyard_zone` WHERE `id` IN (108, 309) AND `ghost_zone`=1477;

-- Deadmines
DELETE FROM `game_graveyard_zone` WHERE `id` IN (4, 389) AND `ghost_zone`=1581;

-- Shadowfan Keep
DELETE FROM `game_graveyard_zone` WHERE `id` IN (97, 149) AND `ghost_zone`=209;

-- Scholomance
DELETE FROM `game_graveyard_zone` WHERE `id` IN (429, 629, 869) AND `ghost_zone`=2057;

-- Blackrock Spire, Blackwind Lair & Blackrock Depths
DELETE FROM `game_graveyard_zone` WHERE `id`=1469 AND `ghost_zone` IN (1583, 1584, 2677);

DELETE FROM `game_graveyard_zone` WHERE `id` IN (39, 389, 1459, 1460, 1488, 1489, 1491, 1492, 1494, 1495, 1496, 1497, 1689, 1690, 1692, 1693, 1694, 1695, 1696, 1697, 1698, 1699, 1700, 1701, 1702, 1704, 1705, 1706, 1707, 1708, 1709, 1710, 1711, 1712, 1713, 1716, 1721, 1722, 1723, 1724, 1725, 1730, 1731, 1732, 1733, 1734, 1741, 1742, 1743, 1744, 1745, 1746, 1747, 1748, 1751, 1752, 1753, 1754, 1755, 1756, 1757, 1758, 1759, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772, 1773, 1774, 1775, 1777, 1778, 1783, 1784, 1785, 1786, 1787, 1788, 1789, 1790, 1791, 1792, 1793, 1794, 1795, 1796, 1797, 1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807, 1808, 1809, 1810, 1811, 1812, 1813, 1814, 1815, 1816, 1817, 1818, 1819, 1820, 1821, 1822, 1823, 1824, 1844, 1845, 1846, 1847, 1848, 1849, 1850, 1852, 1853, 1854, 1855, 1856, 1857, 1858, 1859, 1860, 1861, 1866, 1868, 1869, 1870, 1871, 1872, 1873, 1874, 1875, 1876, 1877, 1878, 1880, 1881, 1886, 1889, 1961, 1962, 2807, 2808, 2809, 2816, 3212);
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
(389, 5339, 0), -- Stranglethorn Vale, Northern Stranglethorn GY
(389, 33, 0), -- Stranglethorn Vale, Northern Stranglethorn GY
(1249, 5892, 0), -- Tanaris, CoT GY
(1249, 5788, 0), -- Tanaris, CoT GY
(1249, 5844, 0), -- Tanaris, CoT GY
(1249, 5789, 0), -- Tanaris, CoT GY
(1459, 5339, 0), -- Stranglethorn Vale, Central GY
(1459, 33, 0), -- Stranglethorn Vale, Central GY
(1460, 33, 0), -- Stranglethorn Vale, Savage Coast GY
(1460, 5339, 0), -- Stranglethorn Vale, Savage Coast GY
(1488, 4720, 0), -- The Lost Isles - Shipwreck Shore GY
(1489, 4720, 0), -- The Lost Isles - Orc Camp GY
(1491, 4720, 0), -- The Lost Isles - Wild Overlook GY
(1492, 4720, 0), -- The Lost Isles - Alliance Beachhead GY
(1494, 4714, 0), -- Gilneas - Duskhaven
(1495, 4714, 0), -- Gilneas - Farmstead GY
(1496, 4720, 0), -- The Lost Isles - Vengeance Wake - Phase 3 GY
(1497, 4720, 0), -- The Lost Isles - Vengeance Wake - Phase 4 GY
(1689, 4737, 0), -- Kezan - KTC Headquarters GY
(1690, 4737, 0), -- Kezan - Bilgewater Port GY
(1692, 4755, 0), -- Gilneas City - Merchant Quarter Graveyard
(1693, 4755, 0), -- Gilneas City - Military District Graveyard
(1694, 4755, 0), -- Gilneas City - Greymane Square Graveyard
(1695, 4755, 0), -- Gilneas City - Cathedral Graveyard
(1696, 4714, 0), -- Gilneas - Stormglen Graveyard
(1697, 4714, 0), -- Gilneas - Blackwald Graveyard
(1698, 4714, 0), -- Gilneas - Tempest's Reach Graveyard 2
(1699, 4714, 0), -- Gilneas - Aderic's Repose Graveyard
(1700, 14, 0), -- Durotar, Echo Isles GY
(1701, 4755, 0), -- Gilneas - Market GY
(1702, 4720, 0), -- The Lost Isles - Town-In-A-Box Phase 5 6 7 GY
(1704, 4720, 0), -- The Lost Isles - Lost Peak - Phase 5 6 7 GY
(1705, 4720, 0), -- The Lost Isles - Lost Caldera - Phase 5 6 7 GY
(1706, 4709, 0), -- South Barrens 4.x - Overgrowth GY
(1707, 4709, 0), -- South Barrens 4.x - East Overgrowth
(1708, 4720, 0), -- The Lost Isles - Warchief's Lookout - Phase 5 6 7 8 9 10 GY
(1709, 4709, 0), -- South Barrens 4.x - Firestone Point Graveyard
(1710, 4709, 0), -- South Barrens 4.x - Camp Taurajo Graveyard
(1711, 4720, 0), -- The Lost Isles - Sky Falls - Phase 8 9 10 GY
(1712, 4720, 0), -- The Lost Isles - Verdant Highlands - Phase 8 9 10 GY
(1713, 4720, 0), -- The Lost Isles - Bilgewater Lumber Yard - Phase 5 6 7 8 9 10 GY
(1716, 4720, 0), -- The Lost Isles - Oomlot Village GY
(1721, 5146, 0), -- Vashj'ir, Central Ruins GY
(1722, 5144, 0), -- Vashj'ir, Silver Tide Trench GY
(1723, 4815, 0), -- Vashj'ir, Mid Kelp Shelf GY
(1724, 4815, 0), -- Vashj'ir, Early Kelp Shelf GY
(1725, 5144, 0), -- Vashj'ir, Vrykul Shelf GY
(1730, 361, 0), -- Felwood, Shatter Scar GY
(1731, 361, 0), -- Felwood, Felpaw Village GY
(1732, 11, 0), -- Wetlands, Near Dun Modr GY
(1733, 16, 0), -- Azshara, Orgrimmar Rear Gate GY
(1734, 16, 0), -- Azshara, Valormok GY
(1741, 616, 0), -- Mount Hyjal 4.x - Aessina GY
(1742, 616, 0), -- Mount Hyjal 4.x - Crater GY
(1743, 616, 0), -- Mount Hyjal 4.x - Darkwhisper Gorge GY
(1744, 616, 0), -- Mount Hyjal 4.x - Ascendant's Circle GY
(1744, 5723, 0), -- Mount Hyjal 4.x - Ascendant's Circle GY
(1745, 5145, 0), -- Vashj'ir, Marianas Face GY
(1746, 5145, 0), -- Vashj'ir, Korthun's End GY
(1747, 5145, 0), -- Vashj'ir, Deepfin Ridge GY
(1748, 1, 0), -- Dun Morogh, Ironforge Airfield
(1751, 357, 67), -- Feralas, Camp Ataya GY (H)
(1752, 357, 469), -- Feralas, Dreamer's Rest GY (A)
(1753, 25, 0), -- Burning Steppes, Forgewright's Tomb
(1753, 4926, 0), -- Burning Steppes, Forgewright's Tomb
(1754, 357, 0), -- Feralas, Ruins of Feathermoon GY
(1755, 616, 0), -- Mount Hyjal 4.x - Aviana GY
(1756, 5042, 0), -- Deepholm, Crimson Expanse GY
(1757, 5042, 0), -- Deepholm, Temple of Earth GY
(1757, 5088, 0), -- Deepholm, Temple of Earth GY
(1758, 5042, 0), -- Deepholm, Shuddering Spires GY
(1759, 16, 0), -- Azshara, Arcane Pinnacle GY
(1761, 331, 0), -- Ashenvale, Zoram Strand GY
(1762, 2100, 0), -- Desolace, Maraudon GY
(1763, 1519, 469), -- Stormwind Cemetery, GY
(1764, 400, 0), -- Thousand Needles, High Perch GY (NEW)
(1765, 400, 0), -- Thousand Needles, Twilight Hammer Base GY (NEW)
(1766, 400, 0), -- Thousand Needles, Razorfen Downs GY (NEW)
(1767, 400, 0), -- Thousand Needles, Southsea Holdfast GY (NEW)
(1768, 4709, 0), -- South Barrens 4.x - Western Overgrowth GY
(1769, 4709, 0), -- South Barrens 4.x - Fort Triumph GY
(1770, 406, 0), -- Stonetalon Mountains, Charred Vale Overlook GY
(1771, 406, 0), -- Stonetalon Mountains, Cave GY
(1772, 8, 0), -- Swamp of Sorrows, Pool of Tears GY
(1773, 4720, 0), -- The Lost Isles - Volcanoth's Lair - Phase 8 GY
(1774, 4, 0), -- Blasted Lands, Red Reaches GY
(1775, 4, 0), -- Blasted Lands, Tainted Forest GY
(1777, 148, 0), -- Darkshore, Gary's Rock
(1778, 5004, 0), -- Vashj'ir, The Abyssal Maw
(1778, 5145, 0), -- Vashj'ir, The Abyssal Maw
(1783, 5095, 0), -- Tol Barad - Graveyard, Ironclad Garrison
(1784, 5095, 0), -- Tol Barad - Graveyard, West Spire
(1785, 5095, 0), -- Tol Barad - Graveyard, Warden's Vigil
(1786, 5095, 0), -- Tol Barad - Graveyard, South Spire
(1787, 5095, 0), -- Tol Barad - Graveyard, Slagworks
(1788, 5095, 0), -- Tol Barad - Graveyard, East Spire
(1789, 5095, 0), -- Tol Barad - Graveyard, Baradin Hold
(1789, 5600, 0), -- Tol Barad - Graveyard, Baradin Hold
(1790, 5042, 0), -- Deepholm, Twilight Overlook GY
(1791, 5042, 0), -- Deepholm, Central East GY
(1792, 5042, 0), -- Deepholm, Fractured Battlefront GY
(1793, 5042, 0), -- Deepholm, Needlerock Chasm GY
(1794, 5042, 0), -- Deepholm, Shattered Field GY
(1795, 5042, 0), -- Deepholm, Twilight Terrace GY
(1796, 5042, 0), -- Deepholm, Stone Hearth GY
(1797, 400, 0), -- Thousand Needles, Darkcloud Pinnacle GY (NEW)
(1800, 4922, 0), -- Twilight Highlands, Vermillion Redoubt GY
(1801, 4922, 469), -- Twilight Highlands, Kirthaven GY
(1802, 4922, 67), -- Twilight Highlands, Krazzworks GY
(1803, 4922, 67), -- Twilight Highlands, Dragonmaw Port GY
(1804, 4922, 469), -- Twilight Highlands, Smoot's Patrol GY
(1805, 4922, 469), -- Twilight Highlands, Twilight Shore GY
(1806, 5416, 0), -- Maelstrom GY
(1807, 5389, 67), -- Tol Barad - Graveyard, Horde Daily
(1808, 5389, 469), -- Tol Barad - Graveyard, Alliance Daily
(1809, 28, 0), -- Western Plaguelands, Argent Areal GY
(1810, 4706, 0), -- Ruins of Gilneas, Forward Command GY
(1811, 4706, 0), -- Ruins of Gilneas, Emberstone Village GY
(1812, 4922, 0), -- Twilight Highlands, Grim Batol GY
(1812, 4950, 0), -- Twilight Highlands, Grim Batol GY
(1813, 5336, 67), -- Twilight Highlands, Dragonmaw Port Ship GY
(1814, 4922, 469), -- Twilight Highlands, Victory Point GY
(1815, 4922, 67), -- Twilight Highlands, Crushblow GY
(1816, 4922, 67), -- Twilight Highlands, Bloodgulch GY
(1817, 618, 0), -- Winterspring, Gorge Upper Ledge
(1818, 5034, 0), -- Uldum Graveyard 000
(1819, 5034, 0), -- Uldum Graveyard 001
(1820, 5034, 0), -- Uldum Graveyard 002
(1820, 5396, 0), -- Uldum Graveyard 002
(1821, 5034, 0), -- Uldum Graveyard 003
(1822, 5034, 0), -- Uldum Graveyard 004
(1823, 5034, 0), -- Uldum Graveyard 005
(1823, 4945, 0), -- Uldum Graveyard 005
(1824, 5034, 0), -- Uldum Graveyard 006
(1824, 5638, 0), -- Uldum Graveyard 006
(1844, 46, 0), -- Burning Steppes, Center East GY
(1845, 16, 0), -- Azshara, Gallywix Pleasure Palace GY
(1846, 4922, 0), -- Twilight Highlands, The Twilight Citadel GY
(1846, 5334, 0), -- Twilight Highlands, The Twilight Citadel GY
(1847, 51, 0), -- Searing Gorge, Dustfire GY
(1848, 51, 0), -- Searing Gorge, Sea of Cinders GY
(1848, 5094, 0), -- Searing Gorge, Sea of Cinders GY
(1849, 51, 0), -- Searing Gorge, Near Blackrock GY
(1850, 51, 0), -- Searing Gorge, Micro Entrance GY
(1852, 267, 0), -- Hillsbrad Foothills, Purgation Isle GY
(1853, 5695, 0), -- Ahn'Qiraj:TFK - Terrace GY
(1854, 1519, 469), -- Stormwind Stockade, GY
(1854, 717, 0), -- Stormwind Stockade, GY
(1855, 17, 0), -- Northern Barrens 4.x - Wailing Caverns GY
(1856, 5034, 0), -- Uldum - Vortex Pinnacle GY
(1856, 5035, 0), -- Uldum - Vortex Pinnacle GY
(1857, 1637, 67), -- Durotar, Orgrimmar - Ragefire GY
(1857, 2437, 0), -- Durotar, Orgrimmar - Ragefire GY
(1858, 1176, 0), -- Tanaris, Zul'Farrak GY
(1858, 440, 0), -- Tanaris, Zul'Farrak GY
(1859, 2557, 0), -- Feralas, Dire Maul Dungeon GY
(1859, 357, 0), -- Feralas, Dire Maul Dungeon GY
(1860, 40, 0), -- Westfall, Moonbrook GY
(1861, 440, 0), -- Tanaris, Southern End GY
(1866, 4714, 0), -- Gilneas - Stagecoach Graveyard
(1868, 1581, 0), -- Westfall, Deadmines (Micro) GY
(1869, 718, 0), -- Northern Barrens 4.x - Wailing Caverns (Micro) GY
(1870, 130, 0), -- Silverpine Forest, Shadowfang Keep GY
(1870, 209, 0), -- Silverpine Forest, Shadowfang Keep GY
(1871, 719, 0), -- Ashenvale, Blackfathom (Micro) GY
(1872, 4709, 0), -- South Barrens 4.x - Razorfen Kraul GY
(1872, 491, 0), -- South Barrens 4.x - Razorfen Kraul GY
(1873, 4709, 0), -- South Barrens 4.x - Razorfen Downs (Micro) GY
(1873, 722, 0), -- South Barrens 4.x - Razorfen Downs (Micro) GY
(1874, 796, 0), -- Tirisfal Glades, Scarlet Moastery GY
(1874, 85, 0), -- Tirisfal Glades, Scarlet Moastery GY
(1875, 1337, 0), -- Badlands, Uldaman GY
(1875, 3, 0), -- Badlands, Uldaman GY
(1876, 1477, 0), -- Swamp of Sorrows, Sunken Temple GY
(1877, 1584, 0), -- Burning Steppes, Blackrock Depths GY
(1877, 25, 0), -- Burning Steppes, Blackrock Depths GY
(1878, 2057, 0), -- Western Plaguelands, Scholo GY
(1878, 28, 0), -- Western Plaguelands, Scholo GY
(1880, 1583, 0), -- Burning Steppes, Blackrock Spire GY
(1880, 2677, 0), -- Burning Steppes, Blackrock Spire GY
(1881, 1, 0), -- Dun Morogh, Gnomeregan (Micro) GY
(1881, 721, 0), -- Dun Morogh, Gnomeregan (Micro) GY
(1886, 357, 0), -- The Steam Pools
(1889, 141, 67), -- Teldrassil, Rut'theran Village (Horde) GY
(1961, 308, 0), -- Twilight Highlands, Forbidding Sea (Obsidian Forest) GY
(1962, 308, 0), -- Badlands, Forbidding Sea GY
(2807, 5733, 0), -- Molten Front, Malfurion's Breach GY
(2808, 5733, 0), -- Molten Front, Portal GY
(2809, 5733, 0), -- Molten Front, Spider GY
(2816, 5733, 0), -- Molten Front, Roost GY
(3212, 5861, 0); -- Darkmoon Island, First Aid GY
DELETE FROM `gameobject_template` WHERE `entry` IN (187076, 202460, 202462, 204159, 205249, 205361, 207477, 208062, 208144);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `unkInt32`, `WDBVerified`) VALUES
(187076, 8, 6411, 'Bonfire', '', '', '', 4, 10, 2066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16135), -- -Unknown-
(202460, 5, 5651, 'Alliance Field Banner', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16135), -- -Unknown-
(202462, 5, 9343, 'Alliance Field Barricade Wall', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.25, 0, 0, 0, 0, 0, 0, 0, 16135), -- -Unknown-
(204159, 8, 7748, 'Bonfire', '', '', '', 4, 10, 2066, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.9, 0, 0, 0, 0, 0, 0, 0, 16135), -- -Unknown-
(205249, 22, 10280, 'Goblin Barbecue', 'Interact', '', '', 87916, 50, 1, 0, 0, 7500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16135), -- -Unknown-
(205361, 8, 9782, 'World Pillar Fragment', '', '', '', 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16135), -- -Unknown-
(207477, 3, 259, 'Silverbound Treasure Chest', '', '', '', 57, 39339, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16135), -- -Unknown-
(208062, 5, 6399, 'G_Pumpkin_03 Scale 2.0', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 16135), -- -Unknown-
(208144, 2, 6404, 'Candy Bucket', '', '', '', 0, 16281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 16135); -- -Unknown-
DELETE FROM `spell_target_position` WHERE `id` IN (3563, 3567, 89659, 81796, 81798, 81799, 81800, 82329, 82330, 82331, 82332, 95718, 95720, 100268, 100335, 100508, 100509, 100523, 106054, 108202, 109835);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(3563, 0, 1773.42, 61.7391, -46.3215, 0), -- Teleport: Undercity
(3567, 1, 1776.5, -4338.8, -7.48, 3.55349), -- Teleport: Orgrimmar
(81796, 671, -1050.05, -602.78, 835.206, 0), -- Teleport (LF)
(81798, 671, -1047.54, -557.208, 835.192, 0), -- Teleport (RF)
(81799, 671, -1059.88, -531.122, 877.69, 0), -- Teleport (RB)
(81800, 671, -1059.99, -633.863, 877.69, 0), -- Teleport (LB)
(82329, 671, -1029.45, -603.773, 831.901, 0), -- Teleport (Earth)
(82330, 671, -987.599, -561.885, 831.901, 0), -- Teleport (Air)
(82331, 671, -1029.41, -561.885, 831.901, 0), -- Teleport (Fire)
(82332, 671, -987.599, -603.773, 831.901, 0), -- Teleport (Water)
(89659, 0, -2738.46, -5003.31, -127.314, 6.17126), -- Iso'rath Awakening Teleport
(95718, 671, -951.908, -582.772, 831.902, 3.13997), -- Teleport
(95720, 671, -1162.09, -754.514, 835.025, 4.69897), -- Teleport
(100268, 0, -5851.85, 5393.11, -1209.77, 0.416258), -- Teleport to Abyssal Breach
(100335, 646, 2355.3, 181.202, 180.891, 6.19286), -- Teleport to Therazane's Throne
(100508, 861, 1447.82, 341.188, 49.9852, 0.715585), -- Teleport to Firelands
(100509, 1, -11664.6, -517.933, 124.216, 2.93215), -- Teleport to Uldum
(100523, 1, 5335.75, -3487.24, 1569.87, 6.28013), -- Teleport to Hyjal
(106054, 967, -13850.6, -13664.14, 296.3515, 1.5708), -- Teleport Single - To Deathwing's Back
(108202, 967, -1797.93, -2394.59, 45.6201, 0.104446), -- Teleport Single - To Wyrmrest Base
(109835, 967, -1804.57, -2395.07, 341.355, 0.0836013); -- Teleport Single - To Wyrmrest Summit
DELETE FROM `game_graveyard_zone` WHERE `ghost_zone`=33;
DELETE FROM `game_graveyard_zone` WHERE `id` IN (919, 920) AND `ghost_zone`=3535;
DELETE FROM `game_graveyard_zone` WHERE `id` IN (98, 149, 1285) AND `ghost_zone`=36;

UPDATE `game_graveyard_zone` SET `ghost_zone`=267 WHERE `id`=1411;
UPDATE `game_graveyard_zone` SET `ghost_zone`=4922 WHERE `id`=1813;
UPDATE `game_graveyard_zone` SET `ghost_zone`=5339 WHERE `ghost_zone`=5287;
UPDATE `game_graveyard_zone` SET `ghost_zone`=5146 WHERE `id`=1778 AND `ghost_zone`=5145;
UPDATE `game_graveyard_zone` SET `ghost_zone`=5146 WHERE `id` IN (1722, 1723, 1724, 1725, 1745, 1746, 1747);

DELETE FROM `game_tele` WHERE `id`=1371; -- Old Zul'Gurub Raid

-- (Creatures from old build - these values were 0)
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35, `unit_class`=1 WHERE `entry` IN (51275, 54352);

UPDATE `creature_template` SET `npcflag`=`npcflag`|0x2 WHERE `entry` IN (620, 9860, 9861, 15078, 16483, 17311, 17982, 23053, 23897, 34830, 35381, 36471, 38124, 38517, 38738, 39065, 40552, 41530, 42333, 43778, 43837, 47162, 47296, 4753, 47626, 47739, 49871, 49874, 50039, 50047, 52399, 53371, 53422);

DELETE FROM `creature_addon` WHERE `guid`=88732;

UPDATE `creature` SET `equipment_id`=0 WHERE `id` IN (23585, 47182, 47657, 47680);

-- Old gameobjects no longer used
DELETE FROM `gameobject` WHERE `id` IN (94039, 128196, 176211, 178164, 181272, 181282, 181284, 181285, 181376, 181676, 181677, 181678, 181679, 181695, 182051, 183122, 183123, 184080, 184081, 184082, 184083, 184109, 184143, 185122, 185139, 185324, 185499, 185502, 185879, 186470, 186617, 186620, 187690, 188500, 188711, 190557, 190857, 192523, 193579, 193582, 193607, 193962, 193982, 194010, 194013, 194029);
SET @MOVIE := 110112;
SET @CHROMIE := 58195;
SET @GOSSIP1 := 13389;
SET @ITHARIUS := 58199;
SET @GOSSIP2 := 13390;

UPDATE `gossip_menu_option` SET `option_id`=1, `npc_option_npcflag`=1 WHERE `menu_id` IN (@GOSSIP1, @GOSSIP2);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@CHROMIE, @ITHARIUS);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@CHROMIE, @ITHARIUS) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@CHROMIE, 0, 0, 0, 62, 0, 100, 0, @GOSSIP1, 0, 0, 0, 11, @MOVIE, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Chromie - On gossip select - Start movie'),
(@ITHARIUS, 0, 0, 0, 62, 0, 100, 0, @GOSSIP2, 0, 0, 0, 11, @MOVIE, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lord Itharius - On gossip select - Start movie');
SET @OGUID := 164481;

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+200;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 201603, 648, 1, 1, -8055.749, 1165.335, 2.861948, 3.47321, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+1, 201798, 648, 1, 1, -8040.54, 1201.39, 2.80035, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+2, 201603, 648, 1, 1, -8172.4, 1261.54, 25.0824, 0.7853968, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+3, 201603, 648, 1, 1, -8039.344, 1206.434, 2.8057, 0.122173, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+4, 203420, 648, 1, 1, -8217.306, 1572.559, 40.8788, 2.626562, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+5, 203422, 648, 1, 1, -8217.549, 1572.366, 37.35582, 5.707257, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+6, 203421, 648, 1, 1, -8217.172, 1572.517, 41.55719, 6.274487, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+7, 201798, 648, 1, 1, -8180.6, 1276.37, 26.9604, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+8, 201603, 648, 1, 1, -8182.295, 1320.613, 27.54046, 5.410522, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+9, 201798, 648, 1, 1, -8176.97, 1323.55, 29.0534, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+10, 207244, 648, 1, 1, -8258.646, 1685.767, 55.28058, 1.570796, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+11, 207245, 648, 1, 1, -8258.689, 1685.625, 52.24165, 4.310966, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+12, 203426, 648, 1, 1, -8328.786, 1667.309, 61.44577, 1.24794, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+13, 207236, 648, 1, 1, -8463.67, 1620.2, 43.48851, 1.919859, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+14, 207238, 648, 1, 1, -8305.66, 1693.637, 50.59976, 1.474801, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+15, 188215, 648, 1, 1, -8402.308, 1314.974, 102.2478, 4.485497, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+16, 188215, 648, 1, 1, -8394.614, 1325.67, 102.9184, 2.268925, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+17, 188215, 648, 1, 1, -8381.931, 1319.274, 103.9028, 4.06662, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+18, 188215, 648, 1, 1, -8382.889, 1318.104, 104.0879, 0.9075702, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+19, 201798, 648, 1, 1, -8381.276, 1318.373, 104.6633, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+20, 201798, 648, 1, 1, -8381.276, 1318.373, 104.6633, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+21, 188215, 648, 1, 1, -8399.56, 1346.439, 103.0114, 5.183629, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+22, 207262, 648, 1, 1, -8401.964, 1363.563, 104.7212, 3.124123, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+23, 201733, 648, 1, 1, -8402.41, 1371.37, 104.6859, 3.106652, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+24, 201734, 648, 1, 1, -8404.295, 1363.684, 117.2706, 3.141593, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+25, 202594, 648, 1, 1, -8416.567, 1342.156, 102.5007, 4.747299, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+26, 188215, 648, 1, 1, -8415.516, 1321.444, 103.7612, 0.6981314, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+27, 188215, 648, 1, 1, -8419.259, 1341.816, 102.9163, 4.642576, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+28, 188215, 648, 1, 1, -8425.401, 1347.615, 105.0631, 5.009095, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+29, 207260, 648, 1, 1, -8421.207, 1368.615, 104.6644, 3.961899, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+30, 201735, 648, 1, 1, -8420.857, 1372.618, 104.6627, 4.66003, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+31, 207261, 648, 1, 1, -8425.729, 1368.734, 104.6755, 5.305802, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+32, 188215, 648, 1, 1, -8429.455, 1311.641, 103.4168, 3.822273, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+33, 207252, 648, 1, 1, -8424.507, 1374.672, 110.0497, 4.642576, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+34, 207253, 648, 1, 1, -8426.886, 1372.811, 104.6669, 5.340709, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+35, 188215, 648, 1, 1, -8431.764, 1313.502, 102.9424, 0.8726639, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+36, 207627, 648, 1, 1, -8350.158, 1725.259, 69.08379, 1.623156, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+37, 201798, 648, 1, 1, -8460.44, 1374.2, 101.704, 0.2268925, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+38, 201798, 648, 1, 1, -8501.29, 1310.49, 101.697, 0.2268925, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+39, 201798, 648, 1, 1, -8472.8, 1305.1, 101.758, 0.2268925, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+40, 201798, 648, 1, 1, -8506.67, 1344.04, 101.697, 0.2268925, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+41, 195489, 648, 1, 1, -8482.578, 1257.651, 58.94526, 4.555311, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+42, 195489, 648, 1, 1, -8430.045, 1220.238, 46.95245, 0.8377575, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+43, 195489, 648, 1, 1, -8487.297, 1229.226, 45.74479, 1.117009, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+44, 195489, 648, 1, 1, -8479.295, 1196.295, 44.37675, 1.117009, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+45, 195489, 648, 1, 1, -8518.028, 1236.543, 54.21556, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+46, 195489, 648, 1, 1, -8445.186, 1187.561, 43.60526, 5.148723, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+47, 195489, 648, 1, 1, -8535.245, 1266.493, 53.76676, 3.804818, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+48, 204125, 648, 1, 1, -8497.361, 1173.229, 41.9336, 4.921427, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+49, 195489, 648, 1, 1, -8516.038, 1176.748, 51.38974, 1.186823, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+50, 195489, 648, 1, 1, -8423.308, 1167.413, 41.34653, 0.5934101, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+51, 204124, 648, 1, 1, -8494.299, 1162.67, 41.8646, 2.521594, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+52, 195489, 648, 1, 1, -8501.153, 1151.872, 46.10912, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+53, 195489, 648, 1, 1, -8605.212, 1234.155, 46.42229, 1.221729, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+54, 195489, 648, 1, 1, -8561.302, 1265.363, 47.14125, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+55, 195489, 648, 1, 1, -8587.243, 1272.247, 44.69148, 5.026549, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+56, 195489, 648, 1, 1, -8602.493, 1254.549, 44.34371, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+57, 207241, 648, 1, 1, -8116.931, 1304.891, 18.43361, 1.439896, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+58, 195489, 648, 1, 1, -8487.91, 1129.688, 41.42708, 1.97222, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+59, 195489, 648, 1, 1, -8451.361, 1145.917, 40.0183, 5.916668, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+60, 203423, 648, 1, 1, -8132.597, 1386.155, 33.02825, 1.169212, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+61, 203425, 648, 1, 1, -8132.587, 1385.934, 29.20991, 1.195393, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+62, 195489, 648, 1, 1, -8434.361, 1146.823, 43.99479, 2.18166, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+63, 195489, 648, 1, 1, -8490.979, 1103.957, 42.57484, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+64, 195489, 648, 1, 1, -8504.474, 1085.036, 42.44266, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+65, 195489, 648, 1, 1, -8409.457, 1153.372, 38.59242, 3.38594, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+66, 195489, 648, 1, 1, -8536.08, 1044.766, 41.41335, 3.124123, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+67, 195489, 648, 1, 1, -8493.207, 1065.073, 41.89872, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+68, 195489, 648, 1, 1, -8513.118, 1065.392, 43.02658, 5.689774, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+69, 195489, 648, 1, 1, -8386.424, 1143.887, 37.02956, 4.468043, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+70, 195489, 648, 1, 1, -8375.639, 1119.392, 34.20597, 3.124123, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+71, 207239, 648, 1, 1, -8233.861, 1455.17, 39.73429, 2.155482, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+72, 207243, 648, 1, 1, -8320.005, 1501.821, 53.22072, 0.9424766, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+73, 195489, 648, 1, 1, -8360.646, 1152.361, 34.85401, 3.368496, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+74, 195489, 648, 1, 1, -8355.403, 1134.207, 34.31122, 0.7330382, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+75, 207240, 648, 1, 1, -8133.62, 1393.41, 12.31211, 2.652894, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+76, 207258, 648, 1, 1, -8256.02, 1531.859, 41.66555, 4.153885, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+77, 195489, 648, 1, 1, -8596.716, 1294.533, 41.39431, 0.7853968, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+78, 195489, 648, 1, 1, -8630.161, 1280.016, 39.81154, 0.3490652, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+79, 195489, 648, 1, 1, -8630.111, 1314.462, 36.34804, 2.91469, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+80, 195489, 648, 1, 1, -8657.738, 1313.53, 29.70736, 1.989672, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+81, 195489, 648, 1, 1, -8626.297, 1353.953, 35.42797, 1.012289, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+82, 195489, 648, 1, 1, -8673.028, 1352.563, 26.66664, 3.42085, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+83, 195489, 648, 1, 1, -8646.476, 1369.481, 32.18092, 4.71239, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+84, 203424, 648, 1, 1, -8114.703, 1500.733, 17.201, 6.143589, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+85, 201798, 648, 1, 1, -8506.67, 1344.04, 101.697, 0.2268925, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+86, 207757, 648, 1, 1, -8419.228, 1341.884, 102.4896, 4.694937, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+87, 207760, 648, 1, 1, -8425.566, 1347.729, 104.6624, 2.321287, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+88, 207242, 648, 1, 1, -8109.455, 1687.394, 14.2077, 5.715955, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+89, 201603, 648, 1, 1, -8051.167, 1359.068, 5.333935, 6.003934, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+90, 201798, 648, 1, 1, -8049.07, 1357.74, 5.37202, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+91, 201798, 648, 1, 1, -8049.07, 1357.74, 5.37202, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+92, 201798, 648, 1, 1, -8516.9, 1371.94, 101.697, 0.2268925, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+93, 201798, 648, 1, 1, -8260.33, 1420.41, 39.9713, 0.7155849, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+94, 201603, 648, 1, 1, -8241.94, 1428.69, 39.6816, 2.059488, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+95, 201798, 648, 1, 1, -8278.5, 1468.89, 44.0705, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+96, 201603, 648, 1, 1, -8273, 1467.22, 42.7515, 5.009095, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+97, 188215, 648, 1, 1, -8250.009, 1469.979, 42.75886, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+98, 201798, 648, 1, 1, -8262.29, 1468.74, 43.2355, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+99, 201798, 648, 1, 1, -8251.46, 1470.42, 41.4199, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+100, 207246, 648, 1, 1, -8308.056, 1783.644, 49.06589, 3.316144, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+101, 207237, 648, 1, 1, -8340.389, 1785.479, 43.15758, 3.499387, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+102, 201798, 648, 1, 1, -8226.97, 1506.95, 40.6273, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+103, 201798, 648, 1, 1, -8264.92, 1500.9, 44.6297, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+104, 201798, 648, 1, 1, -8286.16, 1499.72, 44.955, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+105, 201798, 648, 1, 1, -8299.34, 1504.9, 46.0026, 0.2268925, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+106, 201603, 648, 1, 1, -8305.22, 1505.73, 44.9375, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+107, 201798, 648, 1, 1, -8339.45, 1446.13, 46.7236, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+108, 201603, 648, 1, 1, -8347.616, 1458.766, 47.65825, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+109, 201603, 648, 1, 1, -8361.1, 1464.16, 47.8511, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+110, 201798, 648, 1, 1, -8353.33, 1488.43, 47.3447, 4.572764, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+111, 201603, 648, 1, 1, -8378.45, 1508.24, 46.2612, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+112, 201603, 648, 1, 1, -8335.974, 1540.276, 46.57281, 4.537859, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+113, 201603, 648, 1, 1, -8294.616, 1549.47, 48.04599, 5.288348, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+114, 201798, 648, 1, 1, -8400.91, 1516.62, 51.4958, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+115, 201603, 648, 1, 1, -8401.6, 1518.33, 50.7504, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+116, 201798, 648, 1, 1, -8311.52, 1553.15, 48.9103, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+117, 201603, 648, 1, 1, -8293.91, 1426.09, 39.6427, 1.06465, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+118, 201798, 648, 1, 1, -8486.51, 1591.25, 47.3394, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+119, 201798, 648, 1, 1, -8468.48, 1567.79, 47.3571, 5.480334, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+120, 201603, 648, 1, 1, -8397.29, 1531.96, 50.3405, 1.186823, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+121, 201603, 648, 1, 1, -8336.616, 1579.865, 50.48424, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+122, 201798, 648, 1, 1, -8336.12, 1582.26, 50.8842, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+123, 201603, 648, 1, 1, -8435.8, 1620.26, 41.1154, 3.525572, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+124, 201798, 648, 1, 1, -8362.05, 1629.85, 49.5499, 1.274088, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+125, 201603, 648, 1, 1, -8364.328, 1627.269, 49.54995, 2.460913, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+126, 201603, 648, 1, 1, -8255.78, 1543.02, 40.8094, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+127, 201603, 648, 1, 1, -8221.86, 1523.3, 40.567, 4.01426, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+128, 201603, 648, 1, 1, -8068.35, 1464.13, 9.47734, 1.361356, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+129, 201798, 648, 1, 1, -8064.47, 1463.38, 12.8306, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+130, 201591, 648, 1, 1, -8074.304, 1494.684, 8.831218, 4.136433, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+131, 201798, 648, 1, 1, -8029.42, 1491.578, 10.6867, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+132, 201798, 648, 1, 1, -8049.069, 1495.84, 11.31489, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+133, 201603, 648, 1, 1, -8050.52, 1495.86, 10.0882, 3.351047, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+134, 201603, 648, 1, 1, -8065.587, 1517.957, 9.112565, 4.049168, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+135, 201603, 648, 1, 1, -8204.99, 1549.47, 31.7765, 1.099556, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+136, 201603, 648, 1, 1, -8186.39, 1545.91, 31.1462, 0.1745321, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+137, 201603, 648, 1, 1, -8485.107, 1612.504, 46.84386, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+138, 201603, 648, 1, 1, -8434.768, 1652.668, 45.62479, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+139, 201798, 648, 1, 1, -8431.93, 1653.76, 45.7783, 3.892087, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+140, 201603, 648, 1, 1, -8362.368, 1648.847, 49.48537, 3.700105, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+141, 201798, 648, 1, 1, -8394.341, 1688.87, 49.86174, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+142, 201603, 648, 1, 1, -8396.239, 1691.557, 49.94482, 4.502952, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+143, 201603, 648, 1, 1, -8234.41, 1581.26, 33.5483, 0.6108634, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+144, 201798, 648, 1, 1, -8237.16, 1592.51, 34.2934, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+145, 201603, 648, 1, 1, -8122.08, 1554.29, 11.031, 1.186823, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+146, 201603, 648, 1, 1, -8009.467, 1544.446, 1.750096, 0.9599299, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+147, 201798, 648, 1, 1, -8008.03, 1545.59, 1.6474, 3.839725, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+148, 201603, 648, 1, 1, -8037.667, 1587.675, 2.741817, 5.061456, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+149, 188215, 648, 1, 1, -8143.082, 1583.526, 16.86593, 4.572764, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+150, 201603, 648, 1, 1, -8140.292, 1584.526, 15.56279, 4.34587, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+151, 201603, 648, 1, 1, -8126.69, 1587.68, 12.7065, 4.694937, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+152, 201798, 648, 1, 1, -8175.11, 1588.12, 24.8921, 2.635444, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+153, 201798, 648, 1, 1, -8179.73, 1582.63, 25.0378, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+154, 201603, 648, 1, 1, -8171.12, 1584.38, 24.8749, 5.061456, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+155, 207756, 648, 1, 1, -8402.232, 1314.929, 100.7437, 1.500983, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+156, 201603, 648, 1, 1, -8142.97, 1620.96, 15.0279, 1.53589, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+157, 201798, 648, 1, 1, -8133.31, 1630.79, 15.6747, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+158, 201603, 648, 1, 1, -8129.49, 1631.65, 14.9989, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+159, 201603, 648, 1, 1, -8195.448, 1622.405, 28.73305, 1.308995, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+160, 201603, 648, 1, 1, -8113.509, 1652.41, 11.27472, 0, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+161, 188215, 648, 1, 1, -8142.792, 1658.632, 16.65594, 4.956738, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+162, 201603, 648, 1, 1, -8145.05, 1659.32, 15.9256, 5.009095, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+163, 201798, 648, 1, 1, -8181.34, 1657.91, 24.9972, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+164, 201603, 648, 1, 1, -8173.37, 1662.06, 24.2815, 4.625124, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+165, 201798, 648, 1, 1, -8171.65, 1663.96, 25.5727, 0.5934101, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+166, 188215, 648, 1, 1, -8231.323, 1620.245, 34.62507, 0, 0, 0, 0, 1, 120, 255, 1), -- Collision PC Size (Area: -Unknown-)
(@OGUID+167, 201798, 648, 1, 1, -8232.21, 1633.07, 34.6871, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+168, 201603, 648, 1, 1, -8227.778, 1637.609, 35.2783, 5.375615, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+169, 195525, 648, 1, 1, -8373.045, 1720.226, 39.93892, 3.263772, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+170, 201798, 648, 1, 1, -8376.63, 1724.52, 40.8208, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+171, 195525, 648, 1, 1, -8364.021, 1717.573, 39.80462, 3.246347, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+172, 195525, 648, 1, 1, -8373.446, 1730.269, 39.93898, 0.1745321, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+173, 195525, 648, 1, 1, -8358.676, 1717.519, 50.95889, 1.692969, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+174, 195525, 648, 1, 1, -8364.422, 1731.951, 39.94388, 0.1396245, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+175, 195525, 648, 1, 1, -8358.611, 1732.385, 50.9572, 1.692969, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+176, 201603, 648, 1, 1, -8337.65, 1717.94, 50.7271, 0.5759573, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+177, 201798, 648, 1, 1, -8343.62, 1729, 51.8053, 5.777041, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+178, 201798, 648, 1, 1, -8301.79, 1669.87, 51.6481, 0.802851, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+179, 201798, 648, 1, 1, -8293.58, 1662.63, 51.6436, 5.323256, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+180, 201603, 648, 1, 1, -8286.47, 1659.76, 50.7752, 2.303831, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+181, 201603, 648, 1, 1, -8285.41, 1666.72, 50.7429, 3.38594, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+182, 201603, 648, 1, 1, -8274.507, 1697.104, 47.87308, 4.537859, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+183, 201798, 648, 1, 1, -8242.58, 1726.86, 44.7803, 5.550147, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+184, 201603, 648, 1, 1, -8265.98, 1733.23, 45.1925, 0.1919852, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+185, 201603, 648, 1, 1, -8245.031, 1726.295, 44.70731, 5.323256, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+186, 201603, 648, 1, 1, -8228.66, 1706.81, 44.5952, 4.101525, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+187, 201603, 648, 1, 1, -8270.61, 1747, 45.1715, 5.375615, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+188, 201603, 648, 1, 1, -8005.349, 1665.547, 2.75316, 5.061456, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+189, 207235, 648, 1, 1, -8350.841, 1337.391, 91.37822, 2.556902, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+190, 201798, 648, 1, 1, -8251.46, 1470.42, 41.4199, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+191, 201603, 648, 1, 1, -8000.444, 1709.207, 2.53732, 0.3665176, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+192, 201798, 648, 1, 1, -7994.57, 1707.53, 2.11572, 4.32842, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+193, 195524, 648, 1, 1, -8007.021, 1858.755, 54.21757, 0.1047193, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+194, 201798, 648, 1, 1, -8040.44, 1864.26, 52.5156, 2.478367, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+195, 201603, 648, 1, 1, -8124.764, 1748.917, 21.13151, 5.061456, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+196, 201603, 648, 1, 1, -8175.702, 1781.762, 30.18302, 2.33874, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+197, 195522, 648, 1, 1, -8148.203, 1903.42, 69.76933, 5.951575, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+198, 201798, 648, 1, 1, -8128.6, 1903.54, 55.4167, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+199, 201798, 648, 1, 1, -8018.01, 1885.35, 52.5155, 5.235988, 0, 0, 0, 1, 120, 255, 1), -- -Unknown- (Area: -Unknown-)
(@OGUID+200, 195523, 648, 1, 1, -8048.059, 1955.545, 54.96981, 4.694937, 0, 0, 0, 1, 120, 255, 1); -- -Unknown- (Area: -Unknown-)


DELETE FROM `creature_template_addon` WHERE `entry` IN (49773, 6827, 6827, 40071, 35075, 40076, 6827, 40074, 40075, 40077, 40073, 6827, 35075, 35075, 35075, 35075, 35063, 35063, 49774, 6827, 37804, 35063, 35075, 35075, 49773, 35075, 49773, 49773, 35075, 35063, 35075, 49132, 49132, 49132, 34872, 34689, 37762, 37761, 48305, 24021, 34696, 24021, 24021, 24021, 24021, 49150, 24021, 24021, 48496, 48494, 24288, 24021, 24021, 24021, 24021, 24021, 24021, 24021, 34695, 34874, 34692, 48305, 34693, 35054, 34668, 35053, 34673, 48304, 49772, 34697, 48304, 48305, 48304, 48305, 48304, 48304, 34835, 35063, 35304, 49774, 34890, 35304, 35239, 35239, 35239, 35239, 35239, 35239, 35239, 34830, 2110, 34830, 35239, 34830, 34830, 2110, 35239, 35239, 35239, 34830, 34830, 35239, 35239, 35239, 35239, 34830, 35239, 35239, 4076, 35239, 35239, 35239, 34830, 35239, 35239, 34830, 34830, 34830, 34830, 34830, 35239, 35239, 35239, 35239, 35239, 4076, 34830, 34830, 4076, 4076, 34865, 34865, 35239, 35239, 35239, 35239, 35239, 4076, 34865, 34830, 34830, 34830, 34830, 34830, 34865, 34865, 2110, 34865, 34865, 34830, 34865, 2110, 34865, 34865, 34830, 2110, 34830, 34865, 34830, 2110, 34865, 34865, 34865, 34830, 34830, 34830, 34830, 34865, 34830, 34865, 34865, 34865, 34865, 34865, 2110, 2110, 34865, 34865, 34865, 34865, 34865, 34865, 4076, 34865, 34865, 34865, 34865, 4076, 34865, 34865, 2110, 34865, 34865, 34865, 34865, 34865, 34865, 34835, 34830, 34830, 34830, 34830, 34830, 34954, 35075, 35075, 6827, 6827, 6827, 35063, 35063, 35063, 6827, 35075, 48304, 34865, 34865, 34878, 35063, 35063, 6827, 6827, 6827, 35075, 6827, 49133, 49131, 35075, 49773, 35063, 49132, 49774, 49773, 35075, 35075, 35063, 35063, 35075, 35075, 37106, 49773, 35075, 35063, 35075, 35063, 35063, 35063, 49132, 35075, 35063, 49774, 35075, 35075, 35063, 35063, 35063, 35063, 35063, 35063, 35063, 35063, 35063, 35075, 35063, 35075, 35063, 35075, 35063, 35063, 35075, 35063, 35075, 35075, 35063, 48526, 35063, 35063, 35063, 35075, 35075, 35075, 35075, 35075, 35063, 35075, 35075, 35075, 35063, 35075, 35063, 35063, 35075, 35075, 35063, 35063, 35063, 35075, 35063, 35063, 35063, 35063, 35075, 35075, 35063, 35075, 35063, 49773, 35075, 35063, 35063, 35075, 35063, 35063, 35063, 49774, 35075, 49132, 34876, 2110, 35063, 35075, 35075, 35075, 2110, 35063, 35063, 49132, 35063, 35063, 35063, 48519, 35075, 35075, 4076, 35075, 35075, 4076, 35075, 35075, 35075, 35075, 34877, 35075, 35075, 35075, 2110, 4076, 35075, 2110, 4076, 35075, 2110, 35063, 35075, 4076, 35222, 35063, 35075, 4076, 35075, 35075, 35063, 35075, 35063, 2110, 35075, 35063, 35063, 35063, 35063, 35063, 2110, 2110, 35063, 35075, 35063, 37046, 37056, 37046, 37055, 24021, 37057, 37046, 2110, 24021, 24021, 24021, 35063, 37046, 37054, 4076, 35075, 35063, 35075, 35075, 35075, 2110, 35075, 35075, 2110, 35075, 4076, 35063, 4076, 35075, 35075, 48984, 48984, 48984, 48984, 48984, 48984, 2110, 35063, 35063, 4076, 35063, 2110, 35075, 35063, 35063, 35075, 35063, 35063, 35063, 35075, 35063, 49773, 6827, 35063, 6827, 6827, 35063, 35063, 35075, 35063, 35063, 49772, 6827, 6827, 35063, 35130, 35063, 35075, 35063, 35075, 35075, 6827, 35063, 35075, 35075, 35063, 4076, 2110, 35075, 35075, 35075, 35063, 4076, 35063, 35063, 35063, 35063, 2110, 35063, 35075, 35075, 35063, 35063, 35126, 35063, 35063, 35075, 35063, 35075, 35075, 35063, 35128, 35075, 35075, 48984, 48984, 48984, 48984, 35120, 35075, 35075, 35075, 35075, 35120, 35063, 35063, 35063, 35063, 35075, 35063, 35063, 35063, 35075, 35063, 35075, 35063, 35075, 35063, 35075, 35063, 35075, 35063, 35063, 35063, 35075, 35075, 35075, 35075, 35063, 48984, 48984, 35075, 35063, 35075, 35075, 35063, 35063, 35075, 35075, 35063, 35075, 35075, 35063, 35075, 35063, 35063, 35075, 35063, 35075, 4076, 35063, 35075, 35063, 35075, 35075, 4076, 2110, 35075, 35075, 35075, 35063, 49773, 49774, 49772, 35063, 6827, 6827, 6827, 35063, 6827, 35075, 34835, 34878, 34877, 34876, 35063, 35075, 35063, 35063, 35063, 6827, 6827, 6827, 35063, 6827, 6827, 6827, 49131, 35623, 35623, 35623, 35623, 49772, 35075, 35063, 35075, 49774, 35623, 35623, 4076, 35063, 35063, 49773, 49772, 35623, 35623, 35623, 48961, 48949, 48949, 35623, 35623, 48949, 48949, 51411, 48961, 48961, 35623, 35623, 35623, 48949, 48961, 48961, 48961, 35623, 35623, 48949, 48949, 48949, 48961, 48961, 48949, 49774, 35623, 48961, 48949, 48961, 48961, 48961, 48949, 48961, 48961, 35623, 48961, 48961, 49772, 48961, 35623, 49773, 35623, 48949, 48949, 48949, 48961, 49773, 35623, 35623, 48949, 48949, 48961, 42196, 48949);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(49773, 0, 0x0, 0x1, ''), -- Robo-Chick
(6827, 0, 0x0, 0x1, ''), -- Crab
(40071, 0, 0x1, 0x1, ''), -- Julia Scrabblewrench
(35075, 0, 0x0, 0x1, ''), -- Kezan Citizen
(40076, 0, 0x0, 0x1, ''), -- Rima
(40074, 0, 0x0, 0x1, ''), -- Atiu
(40075, 0, 0x0, 0x1, ''), -- Avarua
(40077, 0, 0x0, 0x1, ''), -- Mata
(40073, 0, 0x0, 0x1, ''), -- Funafuti
(35063, 0, 0x0, 0x1, ''), -- Kezan Citizen
(49774, 0, 0x0, 0x1, ''), -- Rabid Nut Varmint 5000
(37804, 0, 0x3000000, 0x1, ''), -- Kaja'Cola Balloon
(49132, 0, 0x3000000, 0x1, ''), -- Goblin Trike
(34872, 0, 0x0, 0x1, ''), -- Foreman Dampwick
(34689, 0, 0x0, 0x1, ''), -- Fizz Lighter
(37762, 0, 0x0, 0x1, ''), -- Brett "Coins" McQuid
(37761, 0, 0x0, 0x1, ''), -- Sally "Salvager" Sandscrew
(48305, 0, 0x8, 0x1, ''), -- Injured Employee
(24021, 0, 0x0, 0x1, ''), -- ELM General Purpose Bunny (scale x0.01)
(34696, 0, 0x0, 0x1, ''), -- Evol Fingers
(49150, 0, 0x0, 0x1, '91603'), -- Subject Nine - Subject Nine: Gizmo Helmet
(48496, 0, 0x0, 0x1, ''), -- Assistant Greely
(48494, 0, 0x0, 0x1, ''), -- Hobart Grapplehammer
(24288, 0, 0x0, 0x1, ''), -- ELM General Purpose Bunny Hide Body
(34695, 0, 0x0, 0x1, '78273'), -- Maxx Avalanche - Flametongue Weapon
(34874, 0, 0x0, 0x1, ''), -- Megs Dreadshredder
(34692, 0, 0x0, 0x1, ''), -- Sister Goldskimmer
(34693, 0, 0x0, 0x1, '80264'), -- Slinky Sharpshiv - Stealth
(35054, 0, 0x0, 0x1, ''), -- Chip Endale
(34668, 0, 0x0, 0x1, ''), -- Sassy Hardwrench
(35053, 0, 0x0, 0x1, ''), -- Candy Cane
(34673, 0, 0x0, 0x2, ''), -- Bamm Megabomb
(48304, 0, 0x0, 0x1, '83470'), -- Training Dummy - Arcane Missiles Trainer
(49772, 0, 0x0, 0x1, ''), -- Rabbot
(34697, 0, 0x0, 0x1, ''), -- Warrior-Matic NX-01
(34835, 0, 0x0, 0x1, '90317 75773'), -- Bruno Flameretardant - Do it Yourself: Cat's Mark - Bruno, Burning Weapon
(35304, 0, 0x0, 0x1, '76136'), -- Brute Enforcer - Acidic Sweat
(34890, 0, 0x10001, 0x1, '66405'), -- Izzy - Rolling with my Homies: Invisibility 03 - "Izzy"
(35239, 0, 0x0, 0x1, ''), -- Troll Slave
-- (34830, 0, 0x0, 0x1, '45111 62248'), -- Defiant Troll - Enrage, Sleeping Sleep
(2110, 0, 0x0, 0x1, ''), -- Black Rat
(34830, 0, 0x0, 0x1, '45111'), -- Defiant Troll - Enrage
-- (34830, 0, 0x1, 0x1, '45111'), -- Defiant Troll - Enrage
(4076, 0, 0x0, 0x1, ''), -- Roach
(34865, 0, 0x0, 0x1, ''), -- Tunneling Worm
(34954, 0, 0x10000, 0x1, '66404'), -- Gobber - Rolling with my Homies: Invisibility 02 - "Gobber"
(34878, 0, 0x0, 0x1, '66146'), -- Sudsy Magee - Do it Yourself: Cat's Mark - Sudsy
(49133, 0, 0x0, 0x1, ''), -- Goblin Epic Trike
(49131, 0, 0x0, 0x1, ''), -- Goblin Hot Rod
(37106, 0, 0x0, 0x1, ''), -- Coach Crosscheck
-- (35063, 0, 0x0, 0x1, '90636'), -- Kezan Citizen - Fourth and Goal: Panicked Citizen Invis
-- (35063, 0, 0x10000, 0x1, ''), -- Kezan Citizen
-- (35075, 0, 0x10000, 0x1, ''), -- Kezan Citizen
(48526, 0, 0x10000, 0x1, '90366'), -- Bilgewater Buccaneer - Necessary Roughness: Spawned Bilgewater Buccaneer Invisibility
(34876, 0, 0x0, 0x1, '90318'), -- Frankie Gearslipper - Do it Yourself: Cat's Mark - Frankie
(48519, 0, 0x0, 0x1, '71423 89125'), -- Micro Mechachicken - The Biggest Egg Ever: Mechachicken Overload, Micro Mechachicken: Grow
(34877, 0, 0x0, 0x1, '90316 76136'), -- Jack the Hammer - Do it Yourself: Cat's Mark - Jack, Acidic Sweat
(35222, 29681, 0x0, 0x1, ''), -- Trade Prince Gallywix
(37046, 0, 0x0, 0x1, ''), -- ELM General Purpose Bunny (Not Floating)
(37056, 0, 0x0, 0x1, ''), -- Goblin Supermodel
(37055, 0, 0x0, 0x1, ''), -- Goblin Supermodel
(37057, 0, 0x0, 0x1, ''), -- Goblin Supermodel
(37054, 0, 0x0, 0x1, ''), -- Goblin Supermodel
(48984, 0, 0x0, 0x1, ''), -- Troll Worker
(35130, 0, 0x0, 0x1, '90818'), -- Missa Spekkies - The New You: Cat's Mark - Missa Spekkies
(35126, 0, 0x0, 0x1, '90814'), -- Gappy Silvertooth - The New You: Cat's Mark - Gappy Silvertooth
-- (35063, 0, 0x0, 0x1, '29266'), -- Kezan Citizen - Permanent Feign Death
(35128, 0, 0x0, 0x1, '90816'), -- Szabo - The New You: Cat's Mark - Szabo
-- (35075, 0, 0x0, 0x1, '90636'), -- Kezan Citizen - Fourth and Goal: Panicked Citizen Invis
(35120, 0, 0x0, 0x1, ''), -- FBoK Bank Teller
-- (34877, 0, 0x0, 0x1, '90316'), -- Jack the Hammer - Do it Yourself: Cat's Mark - Jack
-- (35075, 0, 0x1, 0x1, ''), -- Kezan Citizen
-- (35063, 0, 0x1, 0x1, ''), -- Kezan Citizen
(35623, 0, 0x0, 0x1, '76136'), -- Villa Mook - Acidic Sweat
(48961, 0, 0x0, 0x1, ''), -- Kezan Socialite
(48949, 0, 0x0, 0x1, ''), -- Kezan Socialite
-- (48949, 0, 0x0, 0x1, '91298'), -- Kezan Socialite - Cosmetic - Sit (Lower/Upper Body - High/Low Priority) (Anim Kit)
(51411, 0, 0x0, 0x1, ''), -- Neill Penny
-- (48961, 0, 0x3000000, 0x1, ''), -- Kezan Socialite
-- (48961, 0, 0x0, 0x1, '91298'), -- Kezan Socialite - Cosmetic - Sit (Lower/Upper Body - High/Low Priority) (Anim Kit)
-- (48961, 0, 0x1, 0x1, ''), -- Kezan Socialite
(42196, 0, 0x0, 0x1, ''); -- ELM General Purpose Bunny Infinite (scale x2.5)


UPDATE `creature_model_info` SET `bounding_radius`=0.7, `combat_reach`=0.875 WHERE `modelid`=32789; -- 32789
UPDATE `creature_model_info` SET `bounding_radius`=0.7, `combat_reach`=0.875 WHERE `modelid`=32791; -- 32791
UPDATE `creature_model_info` SET `bounding_radius`=0.7, `combat_reach`=0.875 WHERE `modelid`=32790; -- 32790
UPDATE `creature_model_info` SET `bounding_radius`=0.841, `combat_reach`=2.9 WHERE `modelid`=36372; -- 36372

SET @CGUID := 222670;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+647;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 49773, 648, 1, 1, -8173.534, 1247.916, 24.30732, 3.141593, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+1, 6827, 648, 1, 1, -8063.327, 1178.259, 3.624947, 2.894717, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+2, 6827, 648, 1, 1, -8069.006, 1140.335, 2.320039, 5.222332, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+3, 40071, 648, 1, 1, -8054.438, 1161.443, 3.058544, 5.899213, 120, 0, 0), -- Julia Scrabblewrench (Area: -Unknown-)
(@CGUID+4, 35075, 648, 1, 1, -8052.802, 1166.549, 2.976153, 1.570796, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+5, 40076, 648, 1, 1, -8051.193, 1161.221, 2.952227, 3.802197, 120, 0, 0), -- Rima (Area: -Unknown-)
(@CGUID+6, 6827, 648, 1, 1, -8047.73, 1155.399, 2.747949, 2.782771, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+7, 40074, 648, 1, 1, -8051.96, 1160.797, 2.952227, 1.495312, 120, 0, 0), -- Atiu (Area: -Unknown-)
(@CGUID+8, 40075, 648, 1, 1, -8052.146, 1164.56, 2.952227, 3.912795, 120, 0, 0), -- Avarua (Area: -Unknown-)
(@CGUID+9, 40077, 648, 1, 1, -8052.92, 1155.87, 3.077227, 3.008749, 120, 0, 0), -- Mata (Area: -Unknown-)
(@CGUID+10, 40073, 648, 1, 1, -8056.12, 1159.88, 2.907305, 2.499496, 120, 0, 0), -- Funafuti (Area: -Unknown-)
(@CGUID+11, 6827, 648, 1, 1, -8043.931, 1118.575, -3.396531, 4.610892, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+12, 35075, 648, 1, 1, -8038.562, 1198.995, 2.779778, 2.65634, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+13, 35075, 648, 1, 1, -8042.725, 1199.958, 3.537197, 5.986479, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+14, 35075, 648, 1, 1, -8168.322, 1258.973, 25.19876, 3.211406, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+15, 35075, 648, 1, 1, -8174.038, 1264.415, 25.74638, 0.6108652, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+16, 35063, 648, 1, 1, -8039.883, 1204.572, 3.429429, 5.550147, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+17, 35063, 648, 1, 1, -8051.674, 1231.65, 2.872744, 3.512589, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+18, 49774, 648, 1, 1, -8104.138, 1271.581, 21.07001, 0.7798734, 120, 0, 0), -- Rabid Nut Varmint 5000 (Area: -Unknown-)
(@CGUID+19, 6827, 648, 1, 1, -8060.857, 1237.15, 3.690349, 6.092681, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+20, 37804, 648, 1, 1, -8454.756, 1399.948, 193.101, 4.980103, 120, 0, 0), -- Kaja'Cola Balloon (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+21, 35063, 648, 1, 1, -8180.184, 1274.618, 25.91235, 1.658063, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+22, 35075, 648, 1, 1, -8171.653, 1266.861, 25.09949, 4.020632, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+23, 35075, 648, 1, 1, -8188.021, 1309.896, 27.60278, 2.949606, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+24, 49773, 648, 1, 1, -8236.872, 1255.432, 26.37322, 5.217725, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+25, 35075, 648, 1, 1, -8174.318, 1322.825, 27.60278, 6.178465, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+26, 49773, 648, 1, 1, -8163.692, 1343.801, 25.842, 2.391659, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+27, 49773, 648, 1, 1, -8212.421, 1368.588, 34.76315, 1.988128, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+28, 35075, 648, 1, 1, -8108.765, 1361.975, 13.95349, 5.727692, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+29, 35063, 648, 1, 1, -8119.526, 1369.663, 12.80686, 3.071779, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+30, 35075, 648, 1, 1, -8123.059, 1369.099, 12.95033, 0.5585054, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+31, 49132, 648, 1, 1, -8297.386, 1427.033, 39.91657, 1.029744, 120, 0, 0), -- Goblin Trike (Area: -Unknown-)
(@CGUID+32, 49132, 648, 1, 1, -8376.433, 1339.108, 102.0984, 1.37881, 120, 0, 0), -- Goblin Trike (Area: -Unknown-)
(@CGUID+33, 49132, 648, 1, 1, -8369.714, 1467.391, 47.73921, 0.7504916, 120, 0, 0), -- Goblin Trike (Area: -Unknown-)
(@CGUID+34, 34872, 648, 1, 1, -8402.308, 1314.974, 102.3311, 4.485496, 120, 0, 0), -- Foreman Dampwick (Area: -Unknown-)
(@CGUID+35, 34689, 648, 1, 1, -8394.614, 1325.67, 103.0017, 2.268928, 120, 0, 0), -- Fizz Lighter (Area: -Unknown-)
(@CGUID+36, 37762, 648, 1, 1, -8381.931, 1319.274, 103.9861, 4.066617, 120, 0, 0), -- Brett "Coins" McQuid (Area: -Unknown-)
(@CGUID+37, 37761, 648, 1, 1, -8382.889, 1318.104, 104.1712, 0.9075712, 120, 0, 0), -- Sally "Salvager" Sandscrew (Area: -Unknown-)
(@CGUID+38, 48305, 648, 1, 1, -8405.74, 1343.66, 102.3913, 3.926991, 120, 0, 0), -- Injured Employee (Area: -Unknown-)
(@CGUID+39, 24021, 648, 1, 1, -8402.645, 1356.01, 111.3591, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+40, 34696, 648, 1, 1, -8399.56, 1346.439, 103.0947, 5.183628, 120, 0, 0), -- Evol Fingers (Area: -Unknown-)
(@CGUID+41, 24021, 648, 1, 1, -8402.79, 1355.908, 110.1566, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+42, 24021, 648, 1, 1, -8403.198, 1356.283, 109.4929, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+43, 24021, 648, 1, 1, -8402.857, 1356.431, 110.7395, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+44, 24021, 648, 1, 1, -8402.844, 1356.281, 111.4267, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+45, 49150, 648, 1, 1, -8402.134, 1363.582, 105.1978, 3.159046, 120, 0, 0), -- Subject Nine (Area: -Unknown-)
(@CGUID+46, 24021, 648, 1, 1, -8403.348, 1356.62, 110.3372, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+47, 24021, 648, 1, 1, -8403.802, 1356.153, 109.954, 3.246312, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+48, 48496, 648, 1, 1, -8405.355, 1360.271, 104.0212, 3.857178, 120, 0, 0), -- Assistant Greely (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+49, 48494, 648, 1, 1, -8406.944, 1359.194, 104.4312, 4.747295, 120, 0, 0), -- Hobart Grapplehammer (Area: -Unknown-)
(@CGUID+50, 24288, 648, 1, 1, -8407.071, 1363.757, 104.1039, 0, 120, 0, 0), -- ELM General Purpose Bunny Hide Body (Area: -Unknown-)
(@CGUID+51, 24021, 648, 1, 1, -8410.484, 1356.29, 110.2317, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+52, 24021, 648, 1, 1, -8410.723, 1356.769, 110.1166, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+53, 24021, 648, 1, 1, -8411.011, 1356.238, 109.9257, 5.148721, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+54, 24021, 648, 1, 1, -8411.185, 1356.425, 110.5265, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+55, 24021, 648, 1, 1, -8411.069, 1356.46, 111.7041, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+56, 24021, 648, 1, 1, -8411.56, 1356.08, 111.2718, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+57, 24021, 648, 1, 1, -8411.212, 1357.012, 111.7263, 6.230825, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+58, 34695, 648, 1, 1, -8415.516, 1321.444, 103.8445, 1.002636, 120, 0, 0), -- Maxx Avalanche (Area: -Unknown-)
(@CGUID+59, 34874, 648, 1, 1, -8419.259, 1341.816, 102.9996, 4.642576, 120, 0, 0), -- Megs Dreadshredder (Area: -Unknown-)
(@CGUID+60, 34692, 648, 1, 1, -8425.401, 1347.615, 105.1465, 5.009095, 120, 0, 0), -- Sister Goldskimmer (Area: -Unknown-)
(@CGUID+61, 48305, 648, 1, 1, -8427.96, 1342.02, 102.3393, 5.235988, 120, 0, 0), -- Injured Employee (Area: -Unknown-)
(@CGUID+62, 34693, 648, 1, 1, -8427.805, 1326.997, 101.9842, 0.6395754, 120, 0, 0), -- Slinky Sharpshiv (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+63, 35054, 648, 1, 1, -8422.143, 1367.708, 104.7585, 4.572762, 120, 0, 0), -- Chip Endale (Area: -Unknown-)
(@CGUID+64, 34668, 648, 1, 1, -8423.816, 1366.066, 104.8147, 4.694936, 120, 0, 0), -- Sassy Hardwrench (Area: -Unknown-)
(@CGUID+65, 35053, 648, 1, 1, -8425.201, 1367.755, 104.7604, 5.078908, 120, 0, 0), -- Candy Cane (Area: -Unknown-)
(@CGUID+66, 34673, 648, 1, 1, -8429.455, 1311.641, 103.5002, 4.093115, 120, 0, 0), -- Bamm Megabomb (Area: -Unknown-)
(@CGUID+67, 48304, 648, 1, 1, -8427.5, 1305.22, 102.4173, 1.850049, 120, 0, 0), -- Training Dummy (Area: -Unknown-)
(@CGUID+68, 49772, 648, 1, 1, -8430.262, 1308.406, 102.4217, 4.03198, 120, 0, 0), -- Rabbot (Area: -Unknown-)
(@CGUID+69, 34697, 648, 1, 1, -8431.764, 1313.502, 103.0257, 0.8726646, 120, 0, 0), -- Warrior-Matic NX-01 (Area: -Unknown-)
(@CGUID+70, 48304, 648, 1, 1, -8430.86, 1302.59, 102.7883, 1.413717, 120, 0, 0), -- Training Dummy (Area: -Unknown-)
(@CGUID+71, 48305, 648, 1, 1, -8437.77, 1333.63, 102.2233, 0, 120, 0, 0), -- Injured Employee (Area: -Unknown-)
(@CGUID+72, 48304, 648, 1, 1, -8432.97, 1306.71, 102.5413, 1.012291, 120, 0, 0), -- Training Dummy (Area: -Unknown-)
(@CGUID+73, 48305, 648, 1, 1, -8436.32, 1315.49, 102.3183, 6.161012, 120, 0, 0), -- Injured Employee (Area: -Unknown-)
(@CGUID+74, 48304, 648, 1, 1, -8436.39, 1310.16, 102.4263, 0.2443461, 120, 0, 0), -- Training Dummy (Area: -Unknown-)
(@CGUID+75, 48304, 648, 1, 1, -8436.88, 1305.78, 102.5663, 0.6632251, 120, 0, 0), -- Training Dummy (Area: -Unknown-)
(@CGUID+76, 34835, 648, 1, 1, -8403.81, 1517.438, 50.81741, 1.954769, 120, 0, 0), -- Bruno Flameretardant (Area: -Unknown-)
(@CGUID+77, 35063, 648, 1, 1, -8355.115, 1443.365, 48.55444, 0.8901179, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+78, 35304, 648, 1, 1, -8452.25, 1248.42, 56.93103, 4.118977, 120, 0, 0), -- Brute Enforcer (Area: -Unknown-)
(@CGUID+79, 49774, 648, 1, 1, -8505.753, 1290.39, 102.8716, 3.216996, 120, 0, 0), -- Rabid Nut Varmint 5000 (Area: -Unknown-)
(@CGUID+80, 34890, 648, 1, 1, -8507.65, 1342.85, 101.7803, 6.265732, 120, 0, 0), -- Izzy (Area: -Unknown-)
(@CGUID+81, 35304, 648, 1, 1, -8447.596, 1243.498, 56.54166, 3.892084, 120, 0, 0), -- Brute Enforcer (Area: -Unknown-)
(@CGUID+82, 35239, 648, 1, 1, -8431.933, 1218.451, 46.16586, 0.7330383, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+83, 35239, 648, 1, 1, -8471.181, 1227.925, 47.43909, 2.373648, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+84, 35239, 648, 1, 1, -8413.004, 1212.781, 53.49294, 0.2094395, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+85, 35239, 648, 1, 1, -8482.129, 1256.389, 59.02859, 1.64061, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+86, 35239, 648, 1, 1, -8430.875, 1228.696, 50.34428, 1.37881, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+87, 35239, 648, 1, 1, -8413.41, 1203.432, 45.22784, 0.7504916, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+88, 35239, 648, 1, 1, -8420.636, 1219.646, 53.42688, 1.029744, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+89, 34830, 648, 1, 1, -8439.386, 1213.819, 45.25401, 4.066617, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+90, 2110, 648, 1, 1, -8436.615, 1202.184, 40.68441, 1.651326, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+91, 34830, 648, 1, 1, -8471.495, 1217.075, 46.22297, 5.637414, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+92, 35239, 648, 1, 1, -8487.71, 1226.361, 45.47562, 1.518436, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+93, 34830, 648, 1, 1, -8479.413, 1210.085, 42.01694, 6.091199, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+94, 34830, 648, 1, 1, -8498.656, 1221.043, 50.52885, 6.143559, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+95, 2110, 648, 1, 1, -8488.855, 1210.29, 42.0018, 5.735314, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+96, 35239, 648, 1, 1, -8516.576, 1234.373, 54.18729, 2.094395, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+97, 35239, 648, 1, 1, -8463.582, 1190.373, 42.01607, 3.228859, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+98, 35239, 648, 1, 1, -8472.373, 1189.135, 42.01694, 0.1570796, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+99, 34830, 648, 1, 1, -8430.651, 1195.91, 40.74375, 3.665191, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+100, 34830, 648, 1, 1, -8463.627, 1185.345, 42.01415, 0.03490658, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+101, 35239, 648, 1, 1, -8472.122, 1183.648, 42.01694, 0.08726646, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+102, 35239, 648, 1, 1, -8462.332, 1179.326, 41.93526, 3.211406, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+103, 35239, 648, 1, 1, -8530.319, 1227.163, 59.5932, 3.979351, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+104, 35239, 648, 1, 1, -8425.79, 1189.443, 40.78189, 0.9948376, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+105, 34830, 648, 1, 1, -8472.389, 1178.661, 42.01386, 2.827433, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+106, 35239, 648, 1, 1, -8526.223, 1214.399, 61.06351, 2.513274, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+107, 35239, 648, 1, 1, -8448.729, 1175.344, 40.92472, 3.979351, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+108, 4076, 648, 1, 1, -8424.064, 1184.355, 40.72876, 4.468297, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+109, 35239, 648, 1, 1, -8413.04, 1183.441, 45.2278, 0.2268928, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+110, 35239, 648, 1, 1, -8508.935, 1180.597, 46.30149, 3.839724, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+111, 35239, 648, 1, 1, -8495.29, 1173.333, 42.01693, 3.159046, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+112, 34830, 648, 1, 1, -8509.21, 1174.983, 51.47308, 0.08726646, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+113, 35239, 648, 1, 1, -8514.286, 1175.776, 51.47308, 3.001966, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+114, 35239, 648, 1, 1, -8426.341, 1167.413, 40.52151, 6.230825, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+115, 34830, 648, 1, 1, -8430.582, 1164.851, 40.81522, 2.356194, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+116, 34830, 648, 1, 1, -8470.625, 1159.264, 40.7509, 1.570796, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+117, 34830, 648, 1, 1, -8492.042, 1163.483, 41.92026, 0.5061455, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+118, 34830, 648, 1, 1, -8416.636, 1169.106, 41.71442, 2.303835, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+119, 34830, 648, 1, 1, -8436.028, 1153.007, 44.04847, 2.286381, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+120, 35239, 648, 1, 1, -8519.849, 1158.2, 58.11637, 2.408554, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+121, 35239, 648, 1, 1, -8500.326, 1140.743, 47.37446, 2.426008, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+122, 35239, 648, 1, 1, -8511.837, 1161.444, 51.32607, 3.01942, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+123, 35239, 648, 1, 1, -8509.286, 1147.597, 54.30568, 3.769911, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+124, 35239, 648, 1, 1, -8499.922, 1151.96, 46.19245, 3.124139, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+125, 4076, 648, 1, 1, -8486.017, 1137.576, 41.17976, 4.845049, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+126, 34830, 648, 1, 1, -8501.585, 1145.943, 54.30568, 6.213372, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+127, 34830, 648, 1, 1, -8499.486, 1155.337, 46.19245, 0.3141593, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+128, 4076, 648, 1, 1, -8584.132, 1252.54, 46.03501, 5.846207, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+129, 4076, 648, 1, 1, -8565.712, 1279.65, 45.96737, 4.262329, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+130, 34865, 648, 1, 1, -8598.473, 1231.906, 46.74984, 1.42189, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+131, 34865, 648, 1, 1, -8597.765, 1250.466, 45.46571, 2.921112, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+132, 35239, 648, 1, 1, -8433.752, 1148.226, 44.05191, 4.677482, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+133, 35239, 648, 1, 1, -8458.745, 1113.299, 47.7154, 5.51524, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+134, 35239, 648, 1, 1, -8465.205, 1118.858, 42.71806, 5.427974, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+135, 35239, 648, 1, 1, -8439.622, 1136.01, 47.04106, 5.480334, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+136, 35239, 648, 1, 1, -8453.372, 1142.042, 40.34196, 4.869469, 120, 0, 0), -- Troll Slave (Area: -Unknown-)
(@CGUID+137, 4076, 648, 1, 1, -8451.153, 1132.712, 41.24891, 5.695156, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+138, 34865, 648, 1, 1, -8492.962, 1108.518, 42.52382, 1.980941, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+139, 34830, 648, 1, 1, -8502.641, 1095.635, 42.0255, 0.9250245, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+140, 34830, 648, 1, 1, -8485.79, 1117.722, 43.56778, 0.9075712, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+141, 34830, 648, 1, 1, -8486.167, 1131.972, 41.44668, 0.8552113, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+142, 34830, 648, 1, 1, -8452.643, 1148.592, 40.80893, 2.059489, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+143, 34830, 648, 1, 1, -8445.007, 1124.243, 44.92519, 2.286381, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+144, 34865, 648, 1, 1, -8502.361, 1087.138, 42.09182, 3.924505, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+145, 34865, 648, 1, 1, -8403.356, 1155.141, 37.95444, 0.2821779, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+146, 2110, 648, 1, 1, -8502.907, 1059.855, 42.06092, 2.060774, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+147, 34865, 648, 1, 1, -8511.33, 1063.003, 42.71838, 2.213234, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+148, 34865, 648, 1, 1, -8532.915, 1064.699, 42.88346, 3.767448, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+149, 34830, 648, 1, 1, -8497.201, 1064.302, 41.74564, 1.48353, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+150, 34865, 648, 1, 1, -8531.57, 1049.46, 42.90867, 0.8054507, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+151, 2110, 648, 1, 1, -8527.874, 1069.274, 42.82353, 0.1634522, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+152, 34865, 648, 1, 1, -8495.009, 1067.458, 41.6521, 5.359155, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+153, 34865, 648, 1, 1, -8385.46, 1151.363, 36.46929, 1.141784, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+154, 34830, 648, 1, 1, -8392.185, 1145.642, 37.07203, 2.024582, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+155, 2110, 648, 1, 1, -8385.502, 1145.627, 36.60452, 6.15598, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+156, 34830, 648, 1, 1, -8467.061, 1194.146, 42.01694, 1.570796, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+157, 34865, 648, 1, 1, -8365.022, 1150.052, 34.40876, 3.093585, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+158, 34830, 648, 1, 1, -8472.779, 1236.781, 52.6249, 0.6806784, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+159, 2110, 648, 1, 1, -8355.579, 1120.598, 32.22723, 1.15806, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+160, 34865, 648, 1, 1, -8351.827, 1118.03, 32.16537, 4.616857, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+161, 34865, 648, 1, 1, -8360.65, 1136.04, 34.1665, 3.007733, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+162, 34865, 648, 1, 1, -8366.58, 1116.743, 32.87587, 5.956831, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+163, 34830, 648, 1, 1, -8357.528, 1144.276, 34.91758, 2.478368, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+164, 34830, 648, 1, 1, -8479.413, 1210.085, 42.01694, 6.091199, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+165, 34830, 648, 1, 1, -8471.495, 1217.075, 46.22297, 5.637414, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+166, 34830, 648, 1, 1, -8558.904, 1266.892, 47.94035, 0.03490658, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+167, 34865, 648, 1, 1, -8540.341, 1261.926, 52.69914, 3.384078, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+168, 34830, 648, 1, 1, -8585.906, 1270.894, 44.83153, 5.986479, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+169, 34865, 648, 1, 1, -8587.715, 1266.305, 44.9471, 4.767402, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+170, 34865, 648, 1, 1, -8564.09, 1271.13, 46.80673, 0, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+171, 34865, 648, 1, 1, -8598.79, 1250.61, 45.29898, 5.487897, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+172, 34865, 648, 1, 1, -8602.472, 1232.938, 46.51916, 2.72366, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+173, 34865, 648, 1, 1, -8597.51, 1291.721, 42.1333, 1.296446, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+174, 2110, 648, 1, 1, -8604.999, 1297.71, 40.86836, 1.726192, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+175, 2110, 648, 1, 1, -8614.153, 1274.389, 41.75739, 4.008366, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+176, 34865, 648, 1, 1, -8625.775, 1317.49, 36.24564, 5.306994, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+177, 34865, 648, 1, 1, -8617.303, 1310.737, 38.15887, 1.846796, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+178, 34865, 648, 1, 1, -8627.983, 1282.071, 39.99239, 3.897782, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+179, 34865, 648, 1, 1, -8607.65, 1268.45, 42.72803, 0, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+180, 34865, 648, 1, 1, -8607.65, 1268.45, 42.72803, 0, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+181, 34865, 648, 1, 1, -8619.15, 1309.06, 38.09203, 0, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+182, 4076, 648, 1, 1, -8642.9, 1322.373, 32.00737, 1.16236, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+183, 34865, 648, 1, 1, -8632.814, 1327.52, 34.05885, 1.075805, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+184, 34865, 648, 1, 1, -8654.889, 1315.334, 29.61975, 2.219568, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+185, 34865, 648, 1, 1, -8654.188, 1317.262, 29.59587, 3.143779, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+186, 34865, 648, 1, 1, -8653.79, 1318.202, 29.5955, 0.7979666, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+187, 4076, 648, 1, 1, -8636.221, 1354.767, 34.04959, 1.151083, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+188, 34865, 648, 1, 1, -8629.813, 1351.396, 34.62183, 1.488132, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+189, 34865, 648, 1, 1, -8669.215, 1355.047, 27.33263, 1.302041, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+190, 2110, 648, 1, 1, -8663.885, 1358.084, 28.29439, 3.321237, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+191, 34865, 648, 1, 1, -8647.461, 1364.547, 32.02733, 1.32363, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+192, 34865, 648, 1, 1, -8624.77, 1282.61, 40.37603, 0, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+193, 34865, 648, 1, 1, -8631.16, 1348.94, 34.35473, 0.8233643, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+194, 34865, 648, 1, 1, -8667.73, 1355.84, 27.60283, 4.813211, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+195, 34865, 648, 1, 1, -8564.09, 1271.13, 46.80673, 0, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+196, 34865, 648, 1, 1, -8633.05, 1326.23, 33.94603, 1.692156, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+197, 34835, 648, 1, 1, -8403.81, 1517.438, 50.81741, 1.954769, 120, 0, 0), -- Bruno Flameretardant (Area: -Unknown-)
(@CGUID+198, 34830, 648, 1, 1, -8486.167, 1131.972, 41.44668, 0.8552113, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+199, 34830, 648, 1, 1, -8463.627, 1185.345, 42.01415, 0.03490658, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+200, 34830, 648, 1, 1, -8517.734, 1243.852, 54.93032, 2.478368, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+201, 34830, 648, 1, 1, -8534.192, 1264.155, 54.16807, 5.026548, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+202, 34830, 648, 1, 1, -8467.061, 1194.146, 42.01694, 1.570796, 120, 0, 0), -- Defiant Troll (Area: -Unknown-)
(@CGUID+203, 34954, 648, 1, 1, -8179.48, 1321.38, 27.68263, 5.253441, 120, 0, 0), -- Gobber (Area: -Unknown-)
(@CGUID+204, 35075, 648, 1, 1, -8022.994, 1209.785, 1.349771, 4.370857, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+205, 35075, 648, 1, 1, -8017.761, 1218.534, 1.128864, 4.480335, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+206, 6827, 648, 1, 1, -8001.599, 1214.284, -4.447552, 2.518393, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+207, 6827, 648, 1, 1, -7996.388, 1214.431, -7.125339, 0.5817764, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+208, 6827, 648, 1, 1, -8000.858, 1239.861, -3.032605, 3.378049, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+209, 35063, 648, 1, 1, -8020.301, 1313.668, 2.6895, 4.968678, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+210, 35063, 648, 1, 1, -8037.491, 1326.632, 3.930354, 1.80305, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+211, 35063, 648, 1, 1, -8051.679, 1343.65, 5.915527, 2.843956, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+212, 6827, 648, 1, 1, -8057.305, 1354.153, 7.341187, 0.7849298, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+213, 35075, 648, 1, 1, -8049.395, 1354.568, 5.641243, 6.056293, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+214, 48304, 648, 1, 1, -8432.97, 1306.71, 102.5413, 1.012291, 120, 0, 0), -- Training Dummy (Area: -Unknown-)
(@CGUID+215, 34865, 648, 1, 1, -8587.05, 1265.22, 45.05152, 4.740019, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+216, 34865, 648, 1, 1, -8599.63, 1289.516, 42.1746, 1.711446, 120, 0, 0), -- Tunneling Worm (Area: -Unknown-)
(@CGUID+217, 34878, 648, 1, 1, -8468.401, 1566.158, 47.48344, 0.3490658, 120, 0, 0), -- Sudsy Magee (Area: -Unknown-)
(@CGUID+218, 35063, 648, 1, 1, -8338.223, 1444.194, 46.44953, 3.368485, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+219, 35063, 648, 1, 1, -8278.646, 1425.521, 39.47568, 1.186824, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+220, 6827, 648, 1, 1, -8009.75, 1321.342, 0.7469724, 4.064198, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+221, 6827, 648, 1, 1, -7991.354, 1323.975, -3.349229, 1.082571, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+222, 6827, 648, 1, 1, -8033.16, 1384.887, 0.8939661, 0.2710515, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+223, 35075, 648, 1, 1, -8044.263, 1389.394, 3.887867, 4.242191, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+224, 6827, 648, 1, 1, -8030.705, 1342.978, 3.251363, 3.254082, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+225, 49133, 648, 1, 1, -8033.382, 1494.304, 10.10497, 2.338741, 120, 0, 0), -- Goblin Epic Trike (Area: -Unknown-)
(@CGUID+226, 49131, 648, 1, 1, -8063.356, 1495.401, 9.345519, 1.518436, 120, 0, 0), -- Goblin Hot Rod (Area: -Unknown-)
(@CGUID+227, 35075, 648, 1, 1, -8051.408, 1418.879, 1.239471, 5.514565, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+228, 49773, 648, 1, 1, -8116.422, 1402.151, 10.22733, 1.146436, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+229, 35063, 648, 1, 1, -8037.8, 1396.466, 1.394438, 4.905555, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+230, 49132, 648, 1, 1, -8063.472, 1503.656, 9.164498, 1.553343, 120, 0, 0), -- Goblin Trike (Area: -Unknown-)
(@CGUID+231, 49774, 648, 1, 1, -8081.528, 1447.894, 9.083614, 1.550077, 120, 0, 0), -- Rabid Nut Varmint 5000 (Area: -Unknown-)
(@CGUID+232, 49773, 648, 1, 1, -8124.595, 1426.278, 9.965486, 3.17771, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+233, 35075, 648, 1, 1, -8242.771, 1440.241, 39.75389, 5.253441, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+234, 35075, 648, 1, 1, -8255.196, 1434.913, 40.25389, 1.48353, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+235, 35063, 648, 1, 1, -8255.603, 1459.292, 41.50389, 0.3490658, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+236, 35063, 648, 1, 1, -8253.692, 1460.127, 41.37889, 3.612832, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+237, 35075, 648, 1, 1, -8254.201, 1437.621, 40.37889, 4.380776, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+238, 35075, 648, 1, 1, -8250.969, 1444.355, 39.92673, 3.372323, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+239, 37106, 648, 1, 1, -8250.009, 1469.979, 42.84219, 2.478368, 120, 0, 0), -- Coach Crosscheck (Area: -Unknown-)
(@CGUID+240, 49773, 648, 1, 1, -8186.963, 1498.148, 44.7428, 1.991202, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+241, 35075, 648, 1, 1, -8208.666, 1500.558, 40.5059, 6.073746, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+242, 35063, 648, 1, 1, -8214.165, 1477.97, 40.45072, 3.543018, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+243, 35075, 648, 1, 1, -8225.476, 1476.354, 39.80046, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+244, 35063, 648, 1, 1, -8215.54, 1472.533, 39.80046, 5.969026, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+245, 35063, 648, 1, 1, -8260.13, 1467.99, 43.58053, 1.53589, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+246, 35063, 648, 1, 1, -8229.906, 1507.465, 40.67648, 3.141593, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+247, 49132, 648, 1, 1, -8225.313, 1608.523, 33.63165, 0, 120, 0, 0), -- Goblin Trike (Area: -Unknown-)
(@CGUID+248, 35075, 648, 1, 1, -8217.971, 1523.517, 40.47274, 3.857178, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+249, 35063, 648, 1, 1, -8229.156, 1527.677, 40.27511, 1.919862, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+250, 49774, 648, 1, 1, -8224.909, 1518.856, 40.16534, 6.253057, 120, 0, 0), -- Rabid Nut Varmint 5000 (Area: -Unknown-)
(@CGUID+251, 35075, 648, 1, 1, -8259.165, 1506.217, 42.54924, 1.780236, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+252, 35075, 648, 1, 1, -8258.38, 1507.882, 42.54924, 3.525565, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+253, 35063, 648, 1, 1, -8260.677, 1507.01, 42.54924, 0.296706, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+254, 35063, 648, 1, 1, -8259.451, 1508.981, 42.54924, 4.415683, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+255, 35063, 648, 1, 1, -8232.136, 1507.826, 40.81881, 6.143559, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+256, 35063, 648, 1, 1, -8261.66, 1466.83, 44.03222, 1.710423, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+257, 35063, 648, 1, 1, -8260.13, 1467.99, 43.71585, 1.53589, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+258, 35063, 648, 1, 1, -8258.5, 1469.14, 43.19616, 1.727876, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+259, 35063, 648, 1, 1, -8261.334, 1468.716, 43.40854, 1.623156, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+260, 35063, 648, 1, 1, -8266.21, 1467.08, 44.33913, 1.58825, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+261, 35063, 648, 1, 1, -8254.39, 1469.45, 41.6481, 2.007129, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+262, 35075, 648, 1, 1, -8267.55, 1467.81, 44.12965, 1.48353, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+263, 35063, 648, 1, 1, -8265.677, 1469.501, 43.06087, 1.58825, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+264, 35075, 648, 1, 1, -8269.11, 1468.74, 43.713, 1.623156, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+265, 35063, 648, 1, 1, -8276.7, 1467.06, 44.92647, 1.553343, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+266, 35075, 648, 1, 1, -8276.094, 1469.511, 43.69361, 1.466077, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+267, 35063, 648, 1, 1, -8276.96, 1468.81, 44.22559, 1.518436, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+268, 35063, 648, 1, 1, -8278.56, 1467.19, 44.96773, 1.518436, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+269, 35075, 648, 1, 1, -8278.099, 1469.879, 43.72659, 1.466077, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+270, 35063, 648, 1, 1, -8282.813, 1465.104, 43.23181, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+271, 35075, 648, 1, 1, -8279.748, 1469.889, 43.86332, 1.448623, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+272, 35075, 648, 1, 1, -8285.09, 1466.74, 43.61583, 6.143559, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+273, 35063, 648, 1, 1, -8285.628, 1468.701, 45.18348, 1.186824, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+274, 48526, 648, 1, 1, -8250.91, 1484.29, 41.49993, 3.124139, 120, 0, 0), -- Bilgewater Buccaneer (Area: -Unknown-)
(@CGUID+275, 35063, 648, 1, 1, -8257.987, 1498.072, 42.82512, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+276, 35063, 648, 1, 1, -8265.307, 1497.463, 42.7274, 4.764749, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+277, 35063, 648, 1, 1, -8263.967, 1497.836, 42.89478, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+278, 35075, 648, 1, 1, -8259.643, 1498.316, 42.94151, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+279, 35075, 648, 1, 1, -8257.614, 1498.624, 43.21495, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+280, 35075, 648, 1, 1, -8258.35, 1498.933, 43.38092, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+281, 35075, 648, 1, 1, -8266.81, 1499.16, 43.93388, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+282, 35075, 648, 1, 1, -8256.637, 1500.284, 43.91477, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+283, 35063, 648, 1, 1, -8267.8, 1499.19, 44.03326, 4.677482, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+284, 35075, 648, 1, 1, -8257.77, 1500.6, 44.10004, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+285, 35075, 648, 1, 1, -8263.63, 1500.6, 44.34062, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+286, 35075, 648, 1, 1, -8277.35, 1497.94, 43.93104, 4.555309, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+287, 35063, 648, 1, 1, -8279.525, 1498.258, 44.15479, 5.131268, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+288, 35075, 648, 1, 1, -8278.26, 1498.89, 44.53803, 4.555309, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+289, 35063, 648, 1, 1, -8278.02, 1499.67, 44.95286, 4.502949, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+290, 35063, 648, 1, 1, -8276.26, 1500.57, 45.11092, 4.590216, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+291, 35075, 648, 1, 1, -8279.04, 1499.84, 45.09669, 4.764749, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+292, 35075, 648, 1, 1, -8285.023, 1498.563, 44.36565, 4.642576, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+293, 35063, 648, 1, 1, -8286.13, 1498.65, 44.58982, 4.764749, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+294, 35063, 648, 1, 1, -8283.405, 1500.281, 45.08718, 4.642576, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+295, 35063, 648, 1, 1, -8287.35, 1499.54, 45.40237, 5.201081, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+296, 35075, 648, 1, 1, -8285.128, 1501.193, 45.73908, 4.729842, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+297, 35063, 648, 1, 1, -8286.79, 1501.13, 46.00978, 5.166174, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+298, 35063, 648, 1, 1, -8277.739, 1506.879, 43.49518, 0.541052, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+299, 35063, 648, 1, 1, -8275.941, 1508.087, 43.43732, 3.752458, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+300, 35063, 648, 1, 1, -8302.084, 1494.791, 44.87827, 1.186824, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+301, 35075, 648, 1, 1, -8301.484, 1497.036, 44.78721, 4.433136, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+302, 35075, 648, 1, 1, -8291.545, 1505.72, 44.35382, 4.921828, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+303, 35063, 648, 1, 1, -8296.332, 1503.281, 45.3794, 5.951573, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+304, 35075, 648, 1, 1, -8326.382, 1472.715, 46.06821, 0.1745329, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+305, 35063, 648, 1, 1, -8260.986, 1526.804, 42.39531, 4.904375, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+306, 49773, 648, 1, 1, -8338.578, 1449.434, 46.93061, 4.647513, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+307, 35075, 648, 1, 1, -8321.6, 1502.288, 46.35118, 3.296193, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+308, 35063, 648, 1, 1, -8349.681, 1457.118, 47.95893, 1.32645, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+309, 35063, 648, 1, 1, -8358.147, 1484.213, 47.53622, 6.003932, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+310, 35075, 648, 1, 1, -8330.989, 1542.259, 47.0348, 5.393067, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+311, 35063, 648, 1, 1, -8341.781, 1508.752, 46.52096, 6.265732, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+312, 35063, 648, 1, 1, -8365.741, 1470.828, 47.48645, 1.850049, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+313, 35063, 648, 1, 1, -8329.741, 1540.139, 47.0052, 2.094395, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+314, 49774, 648, 1, 1, -8331.25, 1535.282, 46.82404, 1.570796, 120, 0, 0), -- Rabid Nut Varmint 5000 (Area: -Unknown-)
(@CGUID+315, 35075, 648, 1, 1, -8340.87, 1538.139, 46.61818, 1.099557, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+316, 49132, 648, 1, 1, -8350.933, 1628.976, 49.63328, 3.769911, 120, 0, 0), -- Goblin Trike (Area: -Unknown-)
(@CGUID+317, 34876, 648, 1, 1, -8360.79, 1631.094, 49.63328, 3.228859, 120, 0, 0), -- Frankie Gearslipper (Area: -Unknown-)
(@CGUID+318, 2110, 648, 1, 1, -8402.576, 1525.632, 50.46701, 1.402792, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+319, 35063, 648, 1, 1, -8302.66, 1548.542, 48.13654, 0.1047198, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+320, 35075, 648, 1, 1, -8269.271, 1547.396, 41.2813, 3.211406, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+321, 35075, 648, 1, 1, -8300.085, 1548.556, 48.15693, 3.193953, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+322, 35075, 648, 1, 1, -8391.573, 1534.715, 50.42296, 2.827433, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+323, 2110, 648, 1, 1, -8353.889, 1564.244, 50.35515, 1.114403, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+324, 35063, 648, 1, 1, -8388.62, 1543.251, 49.72056, 5.993604, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+325, 35063, 648, 1, 1, -8257.83, 1504.95, 42.40153, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+326, 49132, 648, 1, 1, -8313.889, 1673.74, 50.86127, 0.7504916, 120, 0, 0), -- Goblin Trike (Area: -Unknown-)
(@CGUID+327, 35063, 648, 1, 1, -8278.26, 1498.89, 44.32793, 4.555309, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+328, 35063, 648, 1, 1, -8258.18, 1498.03, 42.59953, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+329, 35063, 648, 1, 1, -8267.55, 1467.81, 43.99583, 1.48353, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+330, 48519, 648, 1, 1, -8406.926, 1356.2, 104.8625, 1.53589, 120, 0, 0), -- Micro Mechachicken (Area: -Unknown-)
(@CGUID+331, 35075, 648, 1, 1, -8419.521, 1526.135, 50.85731, 3.193953, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+332, 35075, 648, 1, 1, -8421.732, 1526.372, 50.85731, 6.230825, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+333, 4076, 648, 1, 1, -8414.93, 1522.83, 50.85731, 1.267164, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+334, 35075, 648, 1, 1, -8439.012, 1543.225, 48.26339, 2.827433, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+335, 35075, 648, 1, 1, -8454.13, 1547.46, 49.80627, 0.7853982, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+336, 4076, 648, 1, 1, -8463.015, 1540.923, 51.03088, 4.689647, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+337, 35075, 648, 1, 1, -8451.879, 1548.181, 49.33716, 2.96706, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+338, 35075, 648, 1, 1, -8453.764, 1550.08, 49.45667, 5.061455, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+339, 35075, 648, 1, 1, -8453.646, 1534.896, 50.38062, 1.413717, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+340, 35075, 648, 1, 1, -8460.938, 1551.563, 49.63062, 6.178465, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+341, 34877, 648, 1, 1, -8431.757, 1655.161, 45.87711, 5.759586, 120, 0, 0), -- Jack the Hammer (Area: -Unknown-)
(@CGUID+342, 35075, 648, 1, 1, -8475.241, 1573.632, 47.21465, 5.794493, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+343, 35075, 648, 1, 1, -8472.806, 1572.155, 47.37334, 2.600541, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+344, 35075, 648, 1, 1, -8445.776, 1568.674, 45.29153, 1.797689, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+345, 2110, 648, 1, 1, -8479.276, 1580.275, 45.956, 4.211172, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+346, 4076, 648, 1, 1, -8451.514, 1586.3, 44.46737, 2.474636, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+347, 35075, 648, 1, 1, -8485.926, 1594.55, 45.90691, 5.480334, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+348, 2110, 648, 1, 1, -8438.696, 1557.997, 46.22395, 4.059314, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+349, 4076, 648, 1, 1, -8427.161, 1553.574, 46.49582, 1.688247, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+350, 35075, 648, 1, 1, -8481.646, 1590.036, 45.74834, 2.356194, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+351, 2110, 648, 1, 1, -8481.833, 1599.558, 45.83182, 3.827827, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+352, 35063, 648, 1, 1, -8422.73, 1574.76, 42.5238, 0.6108652, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+353, 35075, 648, 1, 1, -8420.69, 1576.01, 42.43041, 3.752458, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+354, 4076, 648, 1, 1, -8444.64, 1598.688, 43.4584, 1.165697, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+355, 35222, 648, 1, 1, -8356.409, 1535.955, 56.90739, 5.524055, 120, 0, 0), -- Trade Prince Gallywix (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+356, 35063, 648, 1, 1, -8353.639, 1581.049, 50.36127, 6.073746, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+357, 35075, 648, 1, 1, -8351.806, 1579.3, 50.36127, 1.710423, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+358, 4076, 648, 1, 1, -8340.327, 1582.446, 50.4249, 1.66488, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+359, 35075, 648, 1, 1, -8351.27, 1581.828, 50.36127, 4.13643, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+360, 35075, 648, 1, 1, -8345.823, 1575.707, 50.36127, 2.792073, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+361, 35063, 648, 1, 1, -8438.897, 1599.99, 43.41421, 2.199115, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+362, 35075, 648, 1, 1, -8338.21, 1585.686, 50.48627, 3.473205, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+363, 35063, 648, 1, 1, -8440.505, 1601.703, 43.462, 5.427974, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+364, 2110, 648, 1, 1, -8358.858, 1602.725, 49.37237, 0.2596591, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+365, 35075, 648, 1, 1, -8439.063, 1623.438, 41.52718, 5.759586, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+366, 35063, 648, 1, 1, -8361.658, 1644.174, 49.62513, 3.385939, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+367, 35063, 648, 1, 1, -8349.33, 1624.418, 49.63836, 2.408554, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+368, 35063, 648, 1, 1, -8386.623, 1624.438, 44.02576, 2.146755, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+369, 35063, 648, 1, 1, -8372.143, 1634.424, 49.51611, 0.9948376, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+370, 35063, 648, 1, 1, -8371.523, 1636.09, 49.54141, 4.24115, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+371, 2110, 648, 1, 1, -8346.908, 1641.121, 49.93668, 0.4985679, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+372, 2110, 648, 1, 1, -8340.892, 1602.792, 50.26336, 0.2679375, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+373, 35063, 648, 1, 1, -8082.95, 1469.076, 8.926544, 2.373648, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+374, 35075, 648, 1, 1, -8084.092, 1470.198, 8.926544, 5.550147, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+375, 35063, 648, 1, 1, -8065.549, 1464.684, 9.586029, 4.834562, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+376, 37046, 648, 1, 1, -8071.885, 1481.906, 8.927909, 1.86444, 120, 0, 0), -- ELM General Purpose Bunny (Not Floating) (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+377, 37056, 648, 1, 1, -8071.914, 1482.001, 8.926544, 5.006, 120, 0, 0), -- Goblin Supermodel (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+378, 37046, 648, 1, 1, -8074.107, 1488.599, 8.926544, 6.272041, 120, 0, 0), -- ELM General Purpose Bunny (Not Floating) (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+379, 37055, 648, 1, 1, -8074.007, 1488.598, 8.926544, 6.262627, 120, 0, 0), -- Goblin Supermodel (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+380, 24021, 648, 1, 1, -8067.885, 1485.495, 10.51868, 0, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+381, 37057, 648, 1, 1, -8073.562, 1493.314, 8.926544, 4.254381, 120, 0, 0), -- Goblin Supermodel (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+382, 37046, 648, 1, 1, -8073.516, 1493.402, 8.926544, 4.227321, 120, 0, 0), -- ELM General Purpose Bunny (Not Floating) (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+383, 2110, 648, 1, 1, -8035.25, 1464.865, 9.364716, 2.870998, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+384, 24021, 648, 1, 1, -8067.288, 1503.156, 10.37352, 0, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+385, 24021, 648, 1, 1, -8067.618, 1494.582, 10.49888, 0, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+386, 24021, 648, 1, 1, -8067.641, 1494.582, 10.52287, 0, 120, 0, 0), -- ELM General Purpose Bunny (scale x0.01) (Area: -Unknown-)
(@CGUID+387, 35063, 648, 1, 1, -8031.101, 1487.311, 10.01373, 6.265732, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+388, 37046, 648, 1, 1, -8072.847, 1506.792, 8.873146, 4.74574, 120, 0, 0), -- ELM General Purpose Bunny (Not Floating) (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+389, 37054, 648, 1, 1, -8072.844, 1506.692, 8.868902, 1.604179, 120, 0, 0), -- Goblin Supermodel (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+390, 4076, 648, 1, 1, -8051.814, 1510.706, 9.604839, 4.659247, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+391, 35075, 648, 1, 1, -8119.42, 1521.849, 10.66045, 5.91367, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+392, 35063, 648, 1, 1, -8063.021, 1516.667, 9.107403, 1.692969, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+393, 35075, 648, 1, 1, -8201.828, 1548.064, 32.39112, 4.258604, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+394, 35075, 648, 1, 1, -8192.709, 1548.958, 30.89991, 1.518436, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+395, 35075, 648, 1, 1, -8229.688, 1570.313, 33.63471, 3.560472, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+396, 2110, 648, 1, 1, -8447.697, 1629.565, 43.49059, 5.953645, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+397, 35075, 648, 1, 1, -8423.033, 1648.767, 45.72997, 2.70526, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+398, 35075, 648, 1, 1, -8425.33, 1649.854, 45.52501, 5.846853, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+399, 2110, 648, 1, 1, -8490.486, 1621.057, 47.28629, 1.983606, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+400, 35075, 648, 1, 1, -8488.518, 1624.024, 47.28629, 5.5676, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+401, 4076, 648, 1, 1, -8421.425, 1677.723, 49.67725, 0.5205042, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+402, 35063, 648, 1, 1, -8424.944, 1669.677, 49.70337, 4.642576, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+403, 4076, 648, 1, 1, -8426.614, 1688.978, 49.72166, 1.540438, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+404, 35075, 648, 1, 1, -8401.237, 1687.123, 49.78222, 0.2617994, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+405, 35075, 648, 1, 1, -8405.91, 1681.629, 49.77966, 3.159046, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+406, 48984, 648, 1, 1, -8535.377, 1793.944, 51.60147, 2.356194, 120, 0, 0), -- Troll Worker (Area: -Unknown-)
(@CGUID+407, 48984, 648, 1, 1, -8521.103, 1788.215, 43.29808, 5.637414, 120, 0, 0), -- Troll Worker (Area: -Unknown-)
(@CGUID+408, 48984, 648, 1, 1, -8485.316, 1803.047, 17.69212, 0.6806784, 120, 0, 0), -- Troll Worker (Area: -Unknown-)
(@CGUID+409, 48984, 648, 1, 1, -8525.63, 1779.931, 38.46641, 1.64061, 120, 0, 0), -- Troll Worker (Area: -Unknown-)
(@CGUID+410, 48984, 648, 1, 1, -8479.052, 1802.205, 33.16816, 1.745329, 120, 0, 0), -- Troll Worker (Area: -Unknown-)
(@CGUID+411, 48984, 648, 1, 1, -8511.489, 1794.556, 38.46641, 2.949606, 120, 0, 0), -- Troll Worker (Area: -Unknown-)
(@CGUID+412, 2110, 648, 1, 1, -8379.277, 1673.082, 49.80959, 4.112206, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+413, 35063, 648, 1, 1, -8377.339, 1671.505, 49.9175, 1.570919, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+414, 35063, 648, 1, 1, -8398.83, 1687.762, 49.7134, 3.490659, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+415, 4076, 648, 1, 1, -8398.041, 1689.015, 49.80812, 1.635929, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+416, 35063, 648, 1, 1, -8338.933, 1640.542, 50.31824, 3.141593, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+417, 2110, 648, 1, 1, -8352.458, 1655.737, 49.86111, 1.846392, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+418, 35075, 648, 1, 1, -8390.226, 1686.78, 49.76052, 4.13643, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+419, 35063, 648, 1, 1, -8230.882, 1579.7, 33.63471, 5.916666, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+420, 35063, 648, 1, 1, -8235.401, 1591.837, 34.29465, 4.014257, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+421, 35075, 648, 1, 1, -8195.759, 1579.12, 28.75022, 0.5061455, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+422, 35063, 648, 1, 1, -8222.448, 1583.259, 33.50971, 4.34587, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+423, 35063, 648, 1, 1, -8194.192, 1579.911, 28.45993, 3.525565, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+424, 35063, 648, 1, 1, -8194.271, 1577.083, 28.08591, 1.937345, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+425, 35075, 648, 1, 1, -8222.997, 1581.757, 33.50971, 1.256637, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+426, 35063, 648, 1, 1, -8222.685, 1600.29, 33.53198, 0.06981317, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+427, 49773, 648, 1, 1, -8077.978, 1544.007, 8.46008, 1.44935, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+428, 6827, 648, 1, 1, -8040.049, 1540.805, 1.51297, 6.242786, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+429, 35063, 648, 1, 1, -8001.041, 1523.071, 2.255587, 4.712389, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+430, 6827, 648, 1, 1, -7984.374, 1504.88, 0.7493715, 5.576256, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+431, 6827, 648, 1, 1, -7987.318, 1512.236, 1.004797, 5.492262, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+432, 35063, 648, 1, 1, -8038.434, 1564.712, 2.082081, 5.661561, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+433, 35063, 648, 1, 1, -8006.647, 1547.405, 1.448118, 1.291544, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+434, 35075, 648, 1, 1, -8037.753, 1590.943, 2.124179, 5.689773, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+435, 35063, 648, 1, 1, -8008.241, 1550.231, 1.574095, 6.073746, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+436, 35063, 648, 1, 1, -8008.941, 1554.51, 1.824095, 4.974188, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+437, 49772, 648, 1, 1, -8076.267, 1562.513, 8.013842, 3.237377, 120, 0, 0), -- Rabbot (Area: -Unknown-)
(@CGUID+438, 6827, 648, 1, 1, -8009.681, 1581.88, 2.650547, 2.0389, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+439, 6827, 648, 1, 1, -7985.121, 1577.128, -0.002198219, 5.370348, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+440, 35063, 648, 1, 1, -7998.34, 1588.633, 2.113891, 1.376496, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+441, 35130, 648, 1, 1, -8143.078, 1583.531, 16.94905, 4.677482, 120, 0, 0), -- Missa Spekkies (Area: -Unknown-)
(@CGUID+442, 35063, 648, 1, 1, -8134.205, 1583.165, 14.2966, 4.764749, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+443, 35075, 648, 1, 1, -8109.847, 1561.759, 8.838381, 0.01745329, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+444, 35063, 648, 1, 1, -8125.269, 1588.13, 12.75527, 0.1396263, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+445, 35075, 648, 1, 1, -8122.347, 1588.16, 12.74023, 3.159046, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+446, 35075, 648, 1, 1, -8011.006, 1617.258, 2.502736, 0.5304824, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+447, 6827, 648, 1, 1, -8017.309, 1607.046, 2.410695, 4.044664, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+448, 35063, 648, 1, 1, -8177.604, 1585.938, 23.96091, 4.974188, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+449, 35075, 648, 1, 1, -8177.604, 1583.854, 23.96091, 1.396263, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+450, 35075, 648, 1, 1, -8173.438, 1586.979, 23.83591, 2.199115, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+451, 35063, 648, 1, 1, -8196.717, 1562.97, 28.68681, 6.248897, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+452, 4076, 648, 1, 1, -8134.485, 1599.036, 14.8707, 5.22711, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+453, 2110, 648, 1, 1, -8133.113, 1601.656, 14.65194, 1.133135, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+454, 35075, 648, 1, 1, -8177.316, 1598.26, 23.97478, 1.256637, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+455, 35075, 648, 1, 1, -8176.041, 1600, 23.96091, 3.682645, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+456, 35075, 648, 1, 1, -8176.563, 1601.563, 23.98624, 5.358161, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+457, 35063, 648, 1, 1, -8135.434, 1626.046, 15.21929, 6.038839, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+458, 4076, 648, 1, 1, -8172.334, 1618.55, 24.48141, 4.613772, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+459, 35063, 648, 1, 1, -8129.323, 1626.632, 15.07967, 6.195919, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+460, 35063, 648, 1, 1, -8142.353, 1628.819, 15.10742, 3.996804, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+461, 35063, 648, 1, 1, -8120.073, 1630.783, 13.51559, 1.64061, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+462, 35063, 648, 1, 1, -8119.732, 1633.397, 13.12805, 1.34763, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+463, 2110, 648, 1, 1, -8191.11, 1617.612, 28.35709, 1.331665, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+464, 35063, 648, 1, 1, -8197.396, 1624.479, 29.11124, 1.064651, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+465, 35075, 648, 1, 1, -8196.395, 1626.899, 29.03152, 4.18879, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+466, 35075, 648, 1, 1, -8145.67, 1652.188, 16.36298, 2.96706, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+467, 35063, 648, 1, 1, -8118.188, 1654.214, 12.1855, 4.694936, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+468, 35063, 648, 1, 1, -8175.238, 1651.271, 24.34236, 2.548181, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+469, 35126, 648, 1, 1, -8142.792, 1658.632, 16.73927, 4.956735, 120, 0, 0), -- Gappy Silvertooth (Area: -Unknown-)
(@CGUID+470, 35063, 648, 1, 1, -8176.816, 1652.417, 24.34236, 5.305801, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+471, 35063, 648, 1, 1, -8223.042, 1616.302, 33.67985, 0.7679449, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+472, 35075, 648, 1, 1, -8228.646, 1604.688, 33.65698, 4.677482, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+473, 35063, 648, 1, 1, -8208.854, 1636.979, 31.70392, 2.286381, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+474, 35075, 648, 1, 1, -8181.869, 1657.063, 25.06104, 1.413717, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+475, 35075, 648, 1, 1, -8220.967, 1623.991, 33.54927, 3.473205, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+476, 35063, 648, 1, 1, -8223.348, 1629.038, 33.79893, 5.654867, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+477, 35128, 648, 1, 1, -8231.323, 1620.245, 34.7084, 0, 120, 0, 0), -- Szabo (Area: -Unknown-)
(@CGUID+478, 35075, 648, 1, 1, -8257.83, 1504.95, 42.40153, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+479, 35075, 648, 1, 1, -8258.18, 1498.03, 42.59953, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+480, 48984, 648, 1, 1, -8552.122, 1779.943, 46.59803, 5.766274, 120, 0, 0), -- Troll Worker (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+481, 48984, 648, 1, 1, -8537.795, 1801.788, 50.13264, 3.543018, 120, 0, 0), -- Troll Worker (Area: -Unknown-)
(@CGUID+482, 48984, 648, 1, 1, -8487.616, 1818.249, 34.7775, 3.16352, 120, 0, 0), -- Troll Worker (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+483, 48984, 648, 1, 1, -8565.569, 1796.905, 51.32169, 3.647738, 120, 0, 0), -- Troll Worker (Area: -Unknown-)
(@CGUID+484, 35120, 648, 1, 1, -8378.52, 1722.11, 39.80603, 0.122173, 120, 0, 0), -- FBoK Bank Teller (Area: -Unknown-)
(@CGUID+485, 35075, 648, 1, 1, -8375.361, 1722.031, 39.94595, 3.193953, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+486, 35075, 648, 1, 1, -8373.349, 1722.102, 39.9438, 3.176499, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+487, 35075, 648, 1, 1, -8372.014, 1722.108, 39.94233, 3.263766, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+488, 35075, 648, 1, 1, -8370.536, 1722.248, 39.95739, 3.193953, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+489, 35120, 648, 1, 1, -8378.46, 1728.24, 40.01683, 6.230825, 120, 0, 0), -- FBoK Bank Teller (Area: -Unknown-)
(@CGUID+490, 35063, 648, 1, 1, -8368.819, 1722.406, 39.94239, 3.246312, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+491, 35063, 648, 1, 1, -8375.226, 1728.38, 39.94691, 3.159046, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+492, 35063, 648, 1, 1, -8367.08, 1722.457, 39.98008, 3.176499, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+493, 35063, 648, 1, 1, -8373.3, 1728.14, 39.94388, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+494, 35075, 648, 1, 1, -8371.85, 1728.06, 39.94406, 3.106686, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+495, 35063, 648, 1, 1, -8365.109, 1722.556, 39.95269, 3.193953, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+496, 35063, 648, 1, 1, -8370.36, 1727.96, 39.95681, 3.193953, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+497, 35063, 648, 1, 1, -8363.341, 1723.12, 39.94175, 3.246312, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+498, 35075, 648, 1, 1, -8368.69, 1728, 39.9828, 3.246312, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+499, 35063, 648, 1, 1, -8366.966, 1727.795, 39.98086, 3.193953, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+500, 35075, 648, 1, 1, -8361.639, 1723.75, 39.94618, 3.612832, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+501, 35063, 648, 1, 1, -8365.058, 1727.748, 39.96828, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+502, 35075, 648, 1, 1, -8363.257, 1727.205, 39.95514, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+503, 35063, 648, 1, 1, -8360.083, 1724.434, 39.94632, 3.682645, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+504, 35075, 648, 1, 1, -8361.56, 1726.668, 39.94616, 3.246312, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+505, 35063, 648, 1, 1, -8360.099, 1726.09, 39.9463, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+506, 35075, 648, 1, 1, -8358.316, 1725.276, 40.59477, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+507, 35063, 648, 1, 1, -8356.955, 1725.278, 41.62854, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+508, 35063, 648, 1, 1, -8355.663, 1725.278, 42.61019, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+509, 35063, 648, 1, 1, -8354.332, 1725.319, 43.62127, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+510, 35075, 648, 1, 1, -8352.982, 1725.293, 44.64584, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+511, 35075, 648, 1, 1, -8351.721, 1725.299, 45.6042, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+512, 35075, 648, 1, 1, -8350.344, 1725.345, 46.65023, 3.125789, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+513, 35075, 648, 1, 1, -8349.052, 1725.382, 47.63127, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+514, 35063, 648, 1, 1, -8325.066, 1670.91, 50.85534, 1.169371, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+515, 48984, 648, 1, 1, -8538.482, 1819.568, 50.13264, 1.32645, 120, 0, 0), -- Troll Worker (Area: -Unknown-)
(@CGUID+516, 48984, 648, 1, 1, -8576.481, 1779, 61.37691, 5.641161, 120, 0, 0), -- Troll Worker (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+517, 35075, 648, 1, 1, -8347.639, 1725.469, 48.70489, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+518, 35063, 648, 1, 1, -8345.991, 1725.483, 49.95572, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+519, 35075, 648, 1, 1, -8338.541, 1726.042, 50.8068, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+520, 35075, 648, 1, 1, -8344.561, 1725.474, 50.91994, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+521, 35063, 648, 1, 1, -8343.009, 1725.505, 50.95009, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+522, 35063, 648, 1, 1, -8332.047, 1725.493, 50.8057, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+523, 35075, 648, 1, 1, -8340.104, 1725.521, 50.8068, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+524, 35075, 648, 1, 1, -8330.395, 1725.417, 50.8057, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+525, 35063, 648, 1, 1, -8328.741, 1725.347, 50.8057, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+526, 35075, 648, 1, 1, -8327.109, 1725.349, 50.8057, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+527, 35075, 648, 1, 1, -8335.094, 1725.418, 50.8068, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+528, 35063, 648, 1, 1, -8336.486, 1725.422, 50.8068, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+529, 35075, 648, 1, 1, -8333.538, 1725.441, 50.94132, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+530, 35063, 648, 1, 1, -8341.431, 1725.484, 50.96034, 3.089233, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+531, 35063, 648, 1, 1, -8301.43, 1669.525, 51.63514, 3.054326, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+532, 35075, 648, 1, 1, -8299.817, 1658.701, 50.85513, 1.064651, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+533, 35063, 648, 1, 1, -8299.288, 1661.21, 50.85513, 5.393067, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+534, 35075, 648, 1, 1, -8297.917, 1659.34, 50.85513, 2.234021, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+535, 4076, 648, 1, 1, -8298.562, 1650.521, 51.2479, 0.0002083333, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+536, 35063, 648, 1, 1, -8293.597, 1672.104, 50.87274, 1.64061, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+537, 35075, 648, 1, 1, -8289.063, 1658.401, 50.85513, 2.199115, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+538, 35063, 648, 1, 1, -8287.482, 1668.911, 50.93353, 0.6108652, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+539, 35075, 648, 1, 1, -8286.183, 1669.95, 50.8177, 3.769911, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+540, 35075, 648, 1, 1, -8277.83, 1693.757, 48.49627, 4.817109, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+541, 4076, 648, 1, 1, -8270.159, 1659.103, 50.69351, 2.654074, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+542, 2110, 648, 1, 1, -8269.792, 1655.851, 50.75739, 2.696752, 120, 0, 0), -- Black Rat (Area: -Unknown-)
(@CGUID+543, 35075, 648, 1, 1, -8240.518, 1727.363, 44.81077, 2.80998, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+544, 35075, 648, 1, 1, -8248.087, 1714.21, 44.79307, 1.53589, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+545, 35075, 648, 1, 1, -8247.828, 1716.472, 44.97496, 4.607669, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+546, 35063, 648, 1, 1, -8230.209, 1709.375, 44.66415, 3.071779, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+547, 49773, 648, 1, 1, -8237.979, 1711.498, 44.81077, 1.50989, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+548, 49774, 648, 1, 1, -8207.115, 1750.028, 43.06724, 4.742109, 120, 0, 0), -- Rabid Nut Varmint 5000 (Area: -Unknown-)
(@CGUID+549, 49772, 648, 1, 1, -8271.337, 1779.496, 38.92168, 2.323725, 120, 0, 0), -- Rabbot (Area: -Unknown-)
(@CGUID+550, 35063, 648, 1, 1, -8030.651, 1645.543, 2.20623, 0.1934142, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+551, 6827, 648, 1, 1, -8020.022, 1654.554, 3.017807, 0.7432669, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+552, 6827, 648, 1, 1, -7974.03, 1650.318, -0.8356476, 5.719826, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+553, 6827, 648, 1, 1, -7991.703, 1639.091, 1.384367, 1.921569, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+554, 35063, 648, 1, 1, -8003.99, 1668, 2.947162, 6.073746, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+555, 6827, 648, 1, 1, -8004.47, 1682.295, 3.282489, 1.940613, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+556, 35075, 648, 1, 1, -7990.146, 1685.284, 1.97041, 1.79441, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+557, 34835, 648, 1, 1, -8403.81, 1517.438, 50.81741, 1.954769, 120, 0, 0), -- Bruno Flameretardant (Area: -Unknown-)
(@CGUID+558, 34878, 648, 1, 1, -8468.401, 1566.158, 47.48344, 0.3490658, 120, 0, 0), -- Sudsy Magee (Area: -Unknown-)
(@CGUID+559, 34877, 648, 1, 1, -8431.757, 1655.161, 45.87711, 5.759586, 120, 0, 0), -- Jack the Hammer (Area: -Unknown-)
(@CGUID+560, 34876, 648, 1, 1, -8360.79, 1631.094, 49.63328, 3.228859, 120, 0, 0), -- Frankie Gearslipper (Area: -Unknown-)
(@CGUID+561, 35063, 648, 1, 1, -8276.96, 1468.81, 44.04883, 1.518436, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+562, 35075, 648, 1, 1, -8000.194, 1713.023, 2.539295, 5.497787, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+563, 35063, 648, 1, 1, -7999.635, 1711.233, 2.570553, 1.850049, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+564, 35063, 648, 1, 1, -7987.081, 1649.397, 1.304112, 1.53287, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+565, 35063, 648, 1, 1, -7989.304, 1643.556, 1.418991, 4.674725, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+566, 6827, 648, 1, 1, -7970.377, 1717.448, -6.189787, 4.461726, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+567, 6827, 648, 1, 1, -7985.87, 1723.317, -1.451406, 4.618548, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+568, 6827, 648, 1, 1, -7976.032, 1699.891, -0.9816087, 5.608445, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+569, 35063, 648, 1, 1, -8028.604, 1744.856, 1.210539, 0.9834359, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+570, 6827, 648, 1, 1, -8043.601, 1785.54, 1.601183, 2.590172, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+571, 6827, 648, 1, 1, -8030.327, 1780.798, 1.723262, 2.065465, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+572, 6827, 648, 1, 1, -8015.078, 1752.206, 1.398253, 1.955293, 120, 0, 0), -- Crab (Area: -Unknown-)
(@CGUID+573, 49131, 648, 1, 1, -8038.452, 1860.379, 52.59888, 5.51524, 120, 0, 0), -- Goblin Hot Rod (Area: -Unknown-)
(@CGUID+574, 35623, 648, 1, 1, -8087.019, 1806.361, 34.80576, 3.909538, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+575, 35623, 648, 1, 1, -8074.365, 1829.589, 42.77965, 3.735005, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+576, 35623, 648, 1, 1, -8098.186, 1809.922, 33.54742, 4.206244, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+577, 35623, 648, 1, 1, -8047.698, 1850.649, 52.27689, 3.141593, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+578, 49772, 648, 1, 1, -8099.766, 1827.265, 37.26734, 3.222786, 120, 0, 0), -- Rabbot (Area: -Unknown-)
(@CGUID+579, 35075, 648, 1, 1, -8119.483, 1734.219, 18.97478, 2.094395, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+580, 35063, 648, 1, 1, -8119.068, 1736.613, 19.34343, 4.18879, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+581, 35075, 648, 1, 1, -8121.075, 1735.776, 19.24309, 5.899213, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+582, 49774, 648, 1, 1, -8113.898, 1733.745, 18.98601, 0.5402542, 120, 0, 0), -- Rabid Nut Varmint 5000 (Area: -Unknown-)
(@CGUID+583, 35623, 648, 1, 1, -7971.874, 1833.807, 12.7881, 3.333579, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+584, 35623, 648, 1, 1, -7971.128, 1825.84, 11.57353, 2.949606, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+585, 4076, 648, 1, 1, -8134.584, 1754.799, 21.35607, 1.461577, 120, 0, 0), -- Roach (Area: -Unknown-)
(@CGUID+586, 35063, 648, 1, 1, -8179.257, 1788.021, 30.21052, 4.171337, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+587, 35063, 648, 1, 1, -8180.62, 1786.031, 30.21052, 1.012291, 120, 0, 0), -- Kezan Citizen (Area: -Unknown-)
(@CGUID+588, 49773, 648, 1, 1, -8141.974, 1792.622, 22.96462, 4.353276, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+589, 49772, 648, 1, 1, -8323.973, 1796.576, 41.63823, 4.300135, 120, 0, 0), -- Rabbot (Area: -Unknown-)
(@CGUID+590, 35623, 648, 1, 1, -8146.372, 1893.354, 68.70734, 4.747295, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+591, 35623, 648, 1, 1, -8149.647, 1890.585, 56.49559, 0.03490658, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+592, 35623, 648, 1, 1, -8142.327, 1893.328, 68.69312, 4.660029, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+593, 48961, 648, 1, 1, -8148.338, 1906.427, 55.85408, 5.061455, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+594, 48949, 648, 1, 1, -8147.085, 1905.351, 55.85381, 2.879793, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+595, 48949, 648, 1, 1, -8148.502, 1904.613, 55.85389, 1.012291, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+596, 35623, 648, 1, 1, -8123.031, 1895.425, 54.59142, 0.122173, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+597, 35623, 648, 1, 1, -8122.302, 1885.582, 54.59142, 0.122173, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+598, 48949, 648, 1, 1, -8145.814, 1909.524, 70.21295, 6.213372, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+599, 48949, 648, 1, 1, -8144.372, 1909.469, 70.19218, 2.897247, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+600, 51411, 648, 1, 1, -8124.137, 1905.212, 54.643, 3.420845, 120, 0, 0), -- Neill Penny (Area: -Unknown-)
(@CGUID+601, 48961, 648, 1, 1, -8125.549, 1905.481, 54.59901, 5.497787, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+602, 48961, 648, 1, 1, -8125.257, 1904.002, 54.59565, 1.22173, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+603, 35623, 648, 1, 1, -8032.736, 1867.427, 52.60769, 1.500983, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+604, 35623, 648, 1, 1, -8068.813, 1883.79, 54.52212, 0.1047198, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+605, 35623, 648, 1, 1, -8068.075, 1912.323, 54.30494, 6.248279, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+606, 48949, 648, 1, 1, -8020.358, 1884.137, 53.00055, 1.500983, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+607, 48961, 648, 1, 1, -8039.043, 1903.276, 51.75874, 3.228859, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+608, 48961, 648, 1, 1, -8038.797, 1890.906, 53.35835, 3.124139, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+609, 48961, 648, 1, 1, -8030.422, 1902.247, 53.70908, 0.1396263, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+610, 35623, 648, 1, 1, -8043.033, 1890.865, 53.35851, 4.014257, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+611, 35623, 648, 1, 1, -8008.026, 1867.12, 52.5988, 1.605703, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+612, 48949, 648, 1, 1, -8016.478, 1884.141, 53.04156, 1.832596, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+613, 48949, 648, 1, 1, -8042.535, 1906.257, 53.35592, 5.585053, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+614, 48949, 648, 1, 1, -8022.32, 1893.035, 51.72891, 4.138508, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+615, 48961, 648, 1, 1, -8042.363, 1902.957, 53.35597, 0.1047198, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+616, 48961, 648, 1, 1, -8040.354, 1890.977, 53.35822, 0.3141593, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+617, 48949, 648, 1, 1, -8025.478, 1898.367, 51.5849, 5.211683, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+618, 49774, 648, 1, 1, -7995.735, 1869.616, 54.17446, 3.037655, 120, 0, 0), -- Rabid Nut Varmint 5000 (Area: -Unknown-)
(@CGUID+619, 35623, 648, 1, 1, -8043.05, 1917.356, 53.35838, 2.338741, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+620, 48961, 648, 1, 1, -8031.261, 1914.703, 52.09621, 2.029377, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+621, 48949, 648, 1, 1, -8028.529, 1910.283, 51.5847, 3.331568, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+622, 48961, 648, 1, 1, -8030.022, 1926.415, 52.59869, 6.108652, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+623, 48961, 648, 1, 1, -8028.422, 1926.531, 52.59875, 0.05235988, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+624, 48961, 648, 1, 1, -8017.718, 1902.47, 51.58494, 3.228015, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+625, 48949, 648, 1, 1, -8026.611, 1926.533, 52.59884, 0.06981317, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+626, 48961, 648, 1, 1, -8025.198, 1926.533, 52.59884, 3.036873, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+627, 48961, 648, 1, 1, -8023.957, 1925.823, 52.58398, 5.654867, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+628, 35623, 648, 1, 1, -8048.278, 1946.269, 52.59726, 4.468043, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+629, 48961, 648, 1, 1, -8012.775, 1903.345, 51.44601, 5.282586, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-) (possible waypoints or random movement)
(@CGUID+630, 48961, 648, 1, 1, -8013.823, 1916.444, 53.35815, 4.834562, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+631, 49772, 648, 1, 1, -8122.029, 1914.5, 55.18359, 5.590589, 120, 0, 0), -- Rabbot (Area: -Unknown-)
(@CGUID+632, 48961, 648, 1, 1, -8008.016, 1904.274, 52.97827, 3.124139, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+633, 35623, 648, 1, 1, -8004.653, 1891.245, 53.3581, 5.427974, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+634, 49773, 648, 1, 1, -8119.392, 1933.372, 55.79753, 0.6211358, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+635, 35623, 648, 1, 1, -8004.658, 1917.142, 53.35815, 0.6981317, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+636, 48949, 648, 1, 1, -8000.49, 1898.995, 52.59884, 0.4886922, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+637, 48949, 648, 1, 1, -7999.851, 1900.627, 52.59884, 5.061455, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+638, 48949, 648, 1, 1, -7998.76, 1899.241, 52.59884, 2.391101, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+639, 48961, 648, 1, 1, -8015.394, 1949.004, 53.6531, 4.08407, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+640, 49773, 648, 1, 1, -8003.734, 1946.472, 53.70371, 1.669254, 120, 0, 0), -- Robo-Chick (Area: -Unknown-)
(@CGUID+641, 35623, 648, 1, 1, -7984.94, 1896.23, 52.58443, 3.141593, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+642, 35623, 648, 1, 1, -7985.2, 1909.491, 52.59883, 3.176499, 120, 0, 0), -- Villa Mook (Area: -Unknown-)
(@CGUID+643, 48949, 648, 1, 1, -7967.21, 1899.712, 52.68159, 0.03490658, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+644, 48949, 648, 1, 1, -7967.24, 1906.58, 52.64168, 0.06981317, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+645, 48961, 648, 1, 1, -8025.328, 1907.332, 51.25206, 2.854083, 120, 0, 0), -- Kezan Socialite (Area: -Unknown-)
(@CGUID+646, 42196, 648, 1, 1, -8821.41, 1482.6, 469.6743, 0, 120, 0, 0), -- ELM General Purpose Bunny Infinite (scale x2.5) (Area: -Unknown-)
(@CGUID+647, 48949, 648, 1, 1, -8022.168, 1921.17, 63.58039, 4.590216, 120, 0, 0); -- Kezan Socialite (Area: -Unknown-)
DELETE FROM `spell_target_position` WHERE `id` IN (54744, 54746);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(54744, 0, 2419.91, -5620.48, 420.644, 3.75576), -- Teleport to Heart of Acherus
(54746, 0, 2402.62, -5633.28, 377.021, 3.678); -- Teleport to Hall of Command
DELETE FROM `creature` WHERE `guid` IN (159248, 159294, 162240, 166474, 166475, 166477, 166478, 168519, 168725, 173703, 173705, 173706, 173713, 189902, 189983, 190609, 191609, 19391, 19392, 19393, 19397, 194813, 194814, 194816, 194817, 195953, 203701, 209322, 209323, 209324, 209328, 264, 265, 266, 267, 268, 30497, 30499, 30501, 30502, 5612, 5613, 5615, 5616, 620, 621, 622, 623, 624, 625, 627, 628, 629, 630, 632, 633, 634, 635, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 90168, 91862, 91863, 91865, 91866);
DELETE FROM `gameobject` WHERE `guid` IN (3247, 9301, 1197, 5435, 3249, 9303, 5438, 1199, 5437, 9302, 3248, 1198, 5439, 9304, 3250, 1200, 3255, 9313, 79545, 82511, 1205, 5444, 9308, 5442, 82513, 79547, 3253, 1203, 3254, 5443, 79546, 82512, 9311, 1204, 1202, 3252, 5441, 9306, 5440, 9305, 3251, 1201, 82516, 9315, 5446, 1211, 79577, 3256, 1212, 82515, 9316, 79576, 3257, 5447, 82517, 5448, 3258, 1213, 9317, 79578, 3259, 79579, 82518, 9319, 5449, 1214);
SET @OGUID := 164682;

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+37;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 175152, 938, 1, 1, 4386.621, 1543.586, 137.545, 4.559151, 0, 0, -0.4129454, 0.9107558, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+1, 190236, 938, 1, 1, 4926.086, 1554.962, 222.3159, 4.017567, 0, 0, 0.9999986, -0.001654906, 7200, 255, 1), -- Gate (Area: Entryway of Time)
(@OGUID+2, 190352, 938, 1, 1, 3790.596, -690.3749, 223.0954, 5.916668, 0, 0, -0.1822356, 0.9832549, 7200, 255, 0), -- Doodad_HU_Portcullis03 (Area: Entryway of Time)
(@OGUID+3, 193019, 938, 1, 1, 5688.81, 497.2055, 652.6565, 0.8901166, 0, 0, -0.333807, 0.9426414, 7200, 255, 1), -- The Violet Hold (Area: Entryway of Time)
(@OGUID+4, 193904, 938, 1, 1, 5886.82, 651.2444, 642.6276, 5.602507, 0, 0, -0.333807, 0.9426414, 7200, 255, 1), -- 0 (Area: Entryway of Time)
(@OGUID+5, 209249, 938, 1, 1, 4110.726, -429.0799, 121.0752, 1.762782, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+6, 209318, 938, 1, 1, 2987.576, 524.9028, 27.52452, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+7, 209318, 938, 1, 1, 3024.876, 562.2621, 28.16949, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+8, 209318, 938, 1, 1, 3035.124, 457.4601, 27.94224, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+9, 209318, 938, 1, 1, 3038.577, 512.0261, 21.46424, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+10, 209318, 938, 1, 1, 3046.747, 529.0087, 20.62789, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+11, 209318, 938, 1, 1, 3065.833, 481.4358, 21.45999, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+12, 209318, 938, 1, 1, 3066.619, 583.2205, 23.04928, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+13, 209318, 938, 1, 1, 3103.984, 429.2691, 26.59054, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+14, 209318, 938, 1, 1, 3107.006, 475.5521, 21.39811, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+15, 209318, 938, 1, 1, 3110.364, 589.4636, 24.47982, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+16, 209318, 938, 1, 1, 3118.646, 618.6458, 26.35898, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+17, 209318, 938, 1, 1, 3139.271, 456.0382, 25.21105, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+18, 209318, 938, 1, 1, 3147.804, 506.0833, 21.01509, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+19, 209318, 938, 1, 1, 3166.661, 583.1684, 27.125, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+20, 209318, 938, 1, 1, 3170.8, 487.2951, 27.6434, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+21, 209318, 938, 1, 1, 3189.565, 536.4983, 27.46259, 0, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+22, 209437, 938, 1, 1, 3821.423, 936.2153, 55.81151, 5.532695, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Ruby Dragonshrine)
(@OGUID+23, 209438, 938, 1, 1, 2936.019, 85.2691, 5.705106, 5.715954, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+24, 209439, 938, 1, 1, 4346.827, 1285.944, 147.4501, 1.047198, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Ruby Dragonshrine)
(@OGUID+25, 209440, 938, 1, 1, 4032.276, -352.3837, 122.2206, 5.489062, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+26, 209441, 938, 1, 1, 3697.036, -367.9028, 113.7821, 5.707228, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+27, 209442, 938, 1, 1, 2991.208, 558.9045, 24.79633, 5.88176, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+28, 209443, 938, 1, 1, 3829.036, 1110.17, 84.14674, 4.520403, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+29, 209547, 938, 1, 1, 4190.462, -441.5955, 120.3372, 2.844883, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Bronze Dragonshrine)
(@OGUID+30, 209670, 938, 1, 1, 4380.487, 1410.172, 126.8417, 0.4101507, 2.045896E-43, 0, 0, 0, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+31, 209693, 938, 1, 1, 4399.567, 1446.979, 127.2677, 3.508117, 2.045896E-43, 0, 0, 0, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+32, 209694, 938, 1, 1, 4376.022, 1481.988, 127.2819, 4.76475, 2.045896E-43, 0, 0, 0, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+33, 209695, 938, 1, 1, 4357.863, 1446.642, 126.7462, 0.3228844, 2.045896E-43, 0, 0, 0, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+34, 209990, 938, 1, 1, 4339.283, 1391.693, 118.8672, 3.961899, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Obsidian Dragonshrine)
(@OGUID+35, 209990, 938, 1, 1, 4418.551, 1391.46, 119.0086, 4.677484, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: Obsidian Dragonshrine)
(@OGUID+36, 210104, 938, 1, 1, 3731.713, -425.7141, 115.1545, 4.857957, 0.03490702, 0.02222261, -0.7189564, 0.6938222, 7200, 255, 1), -- -Unknown- (Area: Entryway of Time)
(@OGUID+37, 210105, 938, 1, 1, 3731.713, -425.7141, 115.1545, 4.857957, 0.03490702, 0.02222261, -0.7189564, 0.6938222, 7200, 255, 1); -- -Unknown- (Area: Entryway of Time)


DELETE FROM `creature_template_addon` WHERE `entry` IN (45439, 45979, 53488, 54123, 54431, 54432, 54433, 54445, 54474, 54476, 54486, 54488, 54489, 54496, 54507, 54508, 54511, 54512, 54517, 54542, 54543, 54544, 54550, 54552, 54553, 54556, 54639, 54687, 54688, 54690, 54691, 54693, 54699, 54700, 54701, 54751, 54867, 54920, 54923, 54928, 54945, 55091, 57864);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(45439, 0, 0x0, 0x1, '29266'), -- Cockroach - Permanent Feign Death
-- (45979, 0, 0x0, 0x1, ''), -- General Purpose Bunny JMF
(45979, 0, 0x0, 0x1, '108642'), -- General Purpose Bunny JMF - Cosmetic - Purple Moonbeam
(53488, 0, 0x0, 0x1, '99201'), -- Summon Enabler Stalker - Summon Enabler
(54123, 0, 0x0, 0x1, '102581 101528'), -- Echo of Sylvanas - Calling of the Highborne, Jump
(54431, 0, 0x0, 0x1, '101624 101834'), -- Echo of Baine - Baine Visuals, Molten Axe
(54432, 0, 0x3000000, 0x1, ''), -- Murozond
(54433, 0, 0x0, 0x1, '46598'), -- Baine's Totem - Ride Vehicle Hardcoded
(54445, 0, 0x0, 0x1, ''), -- Echo of Jaina
(54474, 0, 0x0, 0x1, ''), -- Fog of Time
(54476, 0, 0x2000000, 0x1, '102602'), -- Nozdormu - Time Shift
(54486, 0, 0x0, 0x1, '95047 70628'), -- Emberwyrm - Camoflague, Permanent Feign Death
(54488, 0, 0x0, 0x1, '101859 70628'), -- Wailer - Camoflague, Permanent Feign Death
(54489, 0, 0x0, 0x1, '95047 70628'), -- Abomination - Camoflague, Permanent Feign Death
(54496, 0, 0x0, 0x1, ''), -- Rock Island
-- (54507, 0, 0x0, 0x1, '108781 101864 29266'), -- Time-Twisted Scourge Beast - Time-Twisted, Diseased, Permanent Feign Death
(54507, 0, 0x0, 0x1, '108781'), -- Time-Twisted Scourge Beast - Time-Twisted
(54508, 0, 0x3000000, 0x1, ''), -- Pool of Moonlight
-- (54508, 0, 0x3000000, 0x1, '101946'), -- Pool of Moonlight - Moonlit
(54511, 0, 0x0, 0x1, ''), -- Time-Twisted Geist
-- (54511, 0, 0x0, 0x1, '101862'), -- Time-Twisted Geist - Cannibalize
(54512, 0, 0x0, 0x1, '101841'), -- Time-Twisted Sentinel - In Shadow
(54517, 0, 0x0, 0x1, ''), -- Time-Twisted Shadowtalon
-- (54517, 0, 0x0, 0x1, '101878'), -- Time-Twisted Shadowtalon - Shred
-- (54517, 0, 0x1, 0x1, '94214'), -- Time-Twisted Shadowtalon - Grow
-- (54517, 0, 0x3000000, 0x1, '94214'), -- Time-Twisted Shadowtalon - Grow
(54542, 0, 0x0, 0x1, ''), -- Blink Target
(54543, 0, 0x3000000, 0x1, ''), -- Time-Twisted Drake
(54544, 0, 0x8, 0x1, '101841'), -- Echo of Tyrande - In Shadow
(54550, 0, 0x0, 0x1, '102045'), -- Undying Flame - Scorched
(54552, 0, 0x0, 0x1, ''), -- Time-Twisted Breaker
(54553, 0, 0x0, 0x1, ''), -- Time-Twisted Seer
-- (54556, 0, 0x0, 0x1, '97699 98250'), -- Volcano - Volcano Smoke, Volcano Base
(54556, 0, 0x0, 0x1, '97699'), -- Volcano - Volcano Smoke
(54639, 0, 0x0, 0x1, '102206'), -- Arcane Circle - Arcane Circle
(54687, 0, 0x0, 0x1, ''), -- Time-Twisted Footman
(54688, 0, 0x0, 0x1, '101841'), -- Time-Twisted Nightsaber - In Shadow
(54690, 0, 0x0, 0x1, ''), -- Time-Twisted Priest
(54691, 0, 0x0, 0x1, ''), -- Time-Twisted Sorceress
-- (54691, 0, 0x0, 0x1, '102442'), -- Time-Twisted Sorceress - Arcane Blast
(54693, 0, 0x0, 0x1, ''), -- Time-Twisted Rifleman
(54699, 0, 0x0, 0x1, '101841'), -- Time-Twisted Nightsaber - In Shadow
(54700, 0, 0x0, 0x1, '101841'), -- Time-Twisted Nightsaber - In Shadow
-- (54701, 14332, 0x0, 0x1, '101841 109127'), -- Time-Twisted Huntress - In Shadow, Time-Twisted Huntress Anim Replacement Set
(54701, 14332, 0x0, 0x1, '101841'), -- Time-Twisted Huntress - In Shadow
(54751, 0, 0x0, 0x1, '102602'), -- Nozdormu - Time Shift
(54867, 0, 0x0, 0x1, ''), -- Image of Nozdormu
(54920, 0, 0x0, 0x1, ''), -- Infinite Suppressor
(54923, 0, 0x0, 0x1, ''), -- Infinite Warden
(54928, 0, 0x0, 0x1, ''), -- Hourglass of Time
(54945, 0, 0x0, 0x1, ''), -- Sandstorm
(55091, 0, 0x3000000, 0x1, '102054'), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) - Shadow Fog
(57864, 0, 0x3000000, 0x1, '49414'); -- Alurmi - Generic Quest Invisibility 1


SET @CGUID := 223318;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+426;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 53488, 938, 1, 1, 3745.149, -403.8611, 110.1783, 1.58825, 7200, 0, 0), -- Summon Enabler Stalker (Area: Entryway of Time)
(@CGUID+1, 53488, 938, 1, 1, 3753.533, -385.1701, 108.5969, 1.58825, 7200, 0, 0), -- Summon Enabler Stalker (Area: Entryway of Time)
(@CGUID+2, 53488, 938, 1, 1, 3732.432, -374.5573, 108.7166, 1.58825, 7200, 0, 0), -- Summon Enabler Stalker (Area: Entryway of Time)
(@CGUID+3, 53488, 938, 1, 1, 3719.219, -395.2309, 111.5946, 1.58825, 7200, 0, 0), -- Summon Enabler Stalker (Area: Entryway of Time)
(@CGUID+4, 53488, 938, 1, 1, 3711.081, -372.5764, 113.4269, 1.58825, 7200, 0, 0), -- Summon Enabler Stalker (Area: Entryway of Time)
(@CGUID+5, 54476, 938, 1, 1, 3709.549, -362.1198, 114.035, 4.712389, 7200, 0, 0), -- Nozdormu (Area: Entryway of Time)
(@CGUID+6, 54432, 938, 1, 1, 4288.125, -456.4028, 160.4989, 2.984513, 7200, 0, 0), -- Murozond (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+7, 55091, 938, 1, 1, 2932.377, 3.84375, 9.975834, 1.553343, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+8, 55091, 938, 1, 1, 2871.048, -66.38715, 5.372171, 5.916666, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+9, 55091, 938, 1, 1, 2933.72, 134.2708, 9.295521, 3.996804, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+10, 55091, 938, 1, 1, 2906.8, 165.8507, 8.637854, 3.717551, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+11, 55091, 938, 1, 1, 2773.884, -60.75695, 7.072206, 1.396263, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+12, 55091, 938, 1, 1, 2868.76, 186.7413, 9.546069, 4.433136, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+13, 55091, 938, 1, 1, 2719.526, -46.42014, 18.46466, 0.9250245, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+14, 55091, 938, 1, 1, 2676.548, -42.69271, 37.16312, 2.932153, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+15, 55091, 938, 1, 1, 2770.514, 177.3073, 6.017135, 5.253441, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+16, 55091, 938, 1, 1, 2677.364, 110.2535, 14.95626, 6.143559, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+17, 55091, 938, 1, 1, 2689.147, 137.8125, 31.64796, 6.143559, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+18, 55091, 938, 1, 1, 2655.057, 81.38715, 16.50716, 5.864306, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+19, 55091, 938, 1, 1, 2629.02, 41.17361, 2.686977, 5.654867, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+20, 55091, 938, 1, 1, 2890.764, -25.22917, 3.798275, 2.513274, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+21, 55091, 938, 1, 1, 2651.076, -16.08681, 10.64194, 2.86234, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+22, 55091, 938, 1, 1, 2822.475, 197.9219, 13.19713, 4.747295, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+23, 55091, 938, 1, 1, 2824.921, -59.67361, 5.411689, 2.042035, 7200, 0, 0), -- General Purpose Bunny JMF (Look 2 - Flying, Infinite AOI) (Area: Entryway of Time)
(@CGUID+24, 57864, 938, 1, 1, 3702.581, -349.257, 106.3278, 1.169371, 7200, 0, 0), -- Alurmi (Area: Entryway of Time)
(@CGUID+25, 54507, 938, 1, 1, 3788.205, 1012.68, 57.54688, 4.939282, 7200, 0, 0), -- Time-Twisted Scourge Beast (Area: Entryway of Time)
(@CGUID+26, 54507, 938, 1, 1, 3854.542, 963.9059, 56.12851, 1.745667, 7200, 0, 0), -- Time-Twisted Scourge Beast (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+27, 54507, 938, 1, 1, 3826.033, 1022.1, 58.12355, 1.967727, 7200, 0, 0), -- Time-Twisted Scourge Beast (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+28, 54511, 938, 1, 1, 3822.923, 1029.402, 58.85215, 1.946648, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+29, 54511, 938, 1, 1, 3818.325, 1022.66, 58.03056, 1.981418, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+30, 54511, 938, 1, 1, 3821.394, 1015.643, 57.21499, 2.035005, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+31, 54511, 938, 1, 1, 3829.18, 1014.783, 57.44395, 2.002645, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+32, 54511, 938, 1, 1, 3833.958, 1021.161, 58.25896, 1.976007, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+33, 54511, 938, 1, 1, 3830.828, 1028.49, 58.81467, 1.95038, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+34, 54511, 938, 1, 1, 3781.892, 1059.702, 59.20729, 5.93333, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+35, 54511, 938, 1, 1, 3774.415, 1061.792, 59.74569, 5.948878, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+36, 54511, 938, 1, 1, 3787.396, 1065.179, 60.41672, 5.997395, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+37, 45439, 938, 1, 1, 3853.958, 1097.561, 72.11757, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+38, 45439, 938, 1, 1, 3798.285, 1126.731, 87.7555, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+39, 45439, 938, 1, 1, 3759.684, 1088.087, 67.79977, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+40, 54476, 938, 1, 1, 3825.167, 1085.719, 80.12058, 1.32645, 7200, 0, 0), -- Nozdormu (Area: Entryway of Time)
(@CGUID+41, 54507, 938, 1, 1, 3780.133, 1067.24, 60.97195, 6.00435, 7200, 0, 0), -- Time-Twisted Scourge Beast (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+42, 54511, 938, 1, 1, 3785.409, 1072.748, 62.4463, 6.075071, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+43, 54511, 938, 1, 1, 3772.475, 1069.429, 61.77516, 6.005823, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+44, 54511, 938, 1, 1, 3778.182, 1074.96, 63.14545, 6.025056, 7200, 0, 0), -- Time-Twisted Geist (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+45, 54517, 938, 1, 1, 3720.059, 991.9688, 111.0677, 0.6806784, 7200, 0, 0), -- Time-Twisted Shadowtalon (Area: Entryway of Time)
(@CGUID+46, 54474, 938, 1, 1, 3771.092, 981.9774, 79.80042, 4.572762, 7200, 0, 0), -- Fog of Time (Area: Entryway of Time)
(@CGUID+47, 54474, 938, 1, 1, 3789.517, 935.7986, 71.99344, 3.961897, 7200, 0, 0), -- Fog of Time (Area: Entryway of Time)
(@CGUID+48, 54517, 938, 1, 1, 3737.635, 1018.351, 116.0068, 0.3839724, 7200, 0, 0), -- Time-Twisted Shadowtalon (Area: Entryway of Time)
(@CGUID+49, 54517, 938, 1, 1, 3747.933, 986.5729, 125.2822, 1.186824, 7200, 0, 0), -- Time-Twisted Shadowtalon (Area: Entryway of Time)
(@CGUID+50, 54517, 938, 1, 1, 3760.353, 974.8021, 123.8759, 1.291544, 7200, 0, 0), -- Time-Twisted Shadowtalon (Area: Entryway of Time)
(@CGUID+51, 54517, 938, 1, 1, 3789.518, 1010.054, 58.59871, 1.884956, 7200, 0, 0), -- Time-Twisted Shadowtalon (Area: Entryway of Time)
(@CGUID+52, 54517, 938, 1, 1, 3789.015, 1015.965, 57.06284, 4.555309, 7200, 0, 0), -- Time-Twisted Shadowtalon (Area: Entryway of Time)
(@CGUID+53, 54517, 938, 1, 1, 3738.378, 991.8524, 102.3155, 5.77704, 7200, 0, 0), -- Time-Twisted Shadowtalon (Area: Entryway of Time)
(@CGUID+54, 54517, 938, 1, 1, 3767.959, 967.7118, 111.7643, 2.6529, 7200, 0, 0), -- Time-Twisted Shadowtalon (Area: Entryway of Time)
(@CGUID+55, 54474, 938, 1, 1, 3756.287, 1009.807, 72.96638, 3.961897, 7200, 0, 0), -- Fog of Time (Area: Entryway of Time)
(@CGUID+56, 54517, 938, 1, 1, 3741.388, 1015.883, 117.4884, 0.7137473, 7200, 0, 0), -- Time-Twisted Shadowtalon (Area: Entryway of Time)
(@CGUID+57, 54474, 938, 1, 1, 3796.064, 970.618, 78.02415, 3.961897, 7200, 0, 0), -- Fog of Time (Area: Entryway of Time)
(@CGUID+58, 54489, 938, 1, 1, 3716.504, 1064.241, 69.10103, 1.518436, 7200, 0, 0), -- Abomination (Area: Entryway of Time)
(@CGUID+59, 54486, 938, 1, 1, 3634.161, 964.757, 56.35557, 2.96706, 7200, 0, 0), -- Emberwyrm (Area: Entryway of Time)
(@CGUID+60, 54489, 938, 1, 1, 3731.792, 868.8698, 71.24645, 1.518436, 7200, 0, 0), -- Abomination (Area: Entryway of Time)
(@CGUID+61, 54488, 938, 1, 1, 3798.126, 971.309, 63.56563, 3.473205, 7200, 0, 0), -- Wailer (Area: Entryway of Time)
(@CGUID+62, 54488, 938, 1, 1, 3778.833, 988.0382, 62.93838, 3.961897, 7200, 0, 0), -- Wailer (Area: Entryway of Time)
(@CGUID+63, 54489, 938, 1, 1, 3810.179, 963.092, 58.29282, 1.518436, 7200, 0, 0), -- Abomination (Area: Entryway of Time)
(@CGUID+64, 54489, 938, 1, 1, 3842.502, 1058.717, 64.02889, 3.612832, 7200, 0, 0), -- Abomination (Area: Entryway of Time)
(@CGUID+65, 54488, 938, 1, 1, 3797.216, 933.4809, 58.82322, 2.844887, 7200, 0, 0), -- Wailer (Area: Entryway of Time)
(@CGUID+66, 54486, 938, 1, 1, 3889.984, 960.9549, 67.52457, 4.642576, 7200, 0, 0), -- Emberwyrm (Area: Entryway of Time)
(@CGUID+67, 54488, 938, 1, 1, 3757.925, 1015.898, 58.49316, 4.660029, 7200, 0, 0), -- Wailer (Area: Entryway of Time)
(@CGUID+68, 45439, 938, 1, 1, 3814.108, 996.1893, 56.01156, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+69, 54511, 938, 1, 1, 3785.134, 1015.476, 57.25569, 5.899213, 7200, 0, 0), -- Time-Twisted Geist (Area: Ruby Dragonshrine)
(@CGUID+70, 54511, 938, 1, 1, 3791.26, 1012.332, 57.21684, 3.193953, 7200, 0, 0), -- Time-Twisted Geist (Area: Ruby Dragonshrine)
(@CGUID+71, 54511, 938, 1, 1, 3786.392, 1010.743, 57.94833, 0.7330383, 7200, 0, 0), -- Time-Twisted Geist (Area: Ruby Dragonshrine)
(@CGUID+72, 54511, 938, 1, 1, 3845.396, 990.9022, 56.58239, 5.138388, 7200, 0, 0), -- Time-Twisted Geist (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+73, 54511, 938, 1, 1, 3853.47, 989.874, 57.46763, 5.138481, 7200, 0, 0), -- Time-Twisted Geist (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+74, 45439, 938, 1, 1, 3873.582, 988.6875, 59.06669, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+75, 45439, 938, 1, 1, 3772.628, 986.7153, 62.22981, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+76, 54511, 938, 1, 1, 3840.324, 985.3119, 55.90625, 5.138459, 7200, 0, 0), -- Time-Twisted Geist (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+77, 54511, 938, 1, 1, 3843.631, 978.0272, 56.07776, 5.138459, 7200, 0, 0), -- Time-Twisted Geist (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+78, 54511, 938, 1, 1, 3851.593, 977.2483, 57.44226, 5.138459, 7200, 0, 0), -- Time-Twisted Geist (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+79, 54511, 938, 1, 1, 3856.248, 983.7542, 58.30567, 5.138459, 7200, 0, 0), -- Time-Twisted Geist (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+80, 45439, 938, 1, 1, 3733.675, 1038.911, 64.56648, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+81, 45439, 938, 1, 1, 3829.966, 872.1736, 57.5489, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+82, 45439, 938, 1, 1, 3901.606, 889.3663, 68.4549, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+83, 45439, 938, 1, 1, 3759.512, 935.9566, 73.11757, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+84, 45439, 938, 1, 1, 3762.457, 897.5833, 58.31817, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+85, 45439, 938, 1, 1, 4342.79, 1311.722, 148.695, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+86, 45439, 938, 1, 1, 4386.134, 1277.319, 148.1504, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+87, 54751, 938, 1, 1, 4346.979, 1311.135, 148.1124, 4.537856, 7200, 0, 0), -- Nozdormu (Area: Ruby Dragonshrine)
(@CGUID+88, 54550, 938, 1, 1, 4337.755, 1323.099, 158.768, 1.349542, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+89, 54550, 938, 1, 1, 4378.667, 1320.882, 147.4111, 4.594938, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+90, 54550, 938, 1, 1, 4383.803, 1300.916, 147.7524, 3.704952, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+91, 54550, 938, 1, 1, 4388.885, 1305.299, 147.2145, 3.809317, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+92, 54550, 938, 1, 1, 4394.789, 1310.883, 146.5969, 4.627301, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+93, 54550, 938, 1, 1, 4395.653, 1302.625, 145.6003, 1.289814, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+94, 54550, 938, 1, 1, 4382.905, 1323.523, 146.8001, 2.09079, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+95, 54550, 938, 1, 1, 4385.851, 1333.502, 144.6166, 1.76532, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+96, 45439, 938, 1, 1, 4423.49, 1331.155, 144.114, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+97, 45439, 938, 1, 1, 4409.694, 1303.144, 148.8376, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+98, 54550, 938, 1, 1, 4402.901, 1317.337, 144.3971, 3.259044, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+99, 54550, 938, 1, 1, 4400.88, 1314.881, 144.2586, 4.717924, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+100, 45439, 938, 1, 1, 4342.189, 1337.795, 158.103, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+101, 45439, 938, 1, 1, 4350.655, 1339.974, 144.1165, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+102, 54550, 938, 1, 1, 4361.978, 1380.32, 131.3716, 1.096232, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+103, 54550, 938, 1, 1, 4383.672, 1372.14, 135.5706, 3.062595, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+104, 54550, 938, 1, 1, 4353.577, 1357.274, 139.5411, 5.090357, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+105, 54550, 938, 1, 1, 4382.029, 1343.446, 142.8006, 6.267562, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+106, 54550, 938, 1, 1, 4381.789, 1350.11, 141.3548, 5.120998, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+107, 54550, 938, 1, 1, 4395.028, 1358.301, 138.7062, 2.428731, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+108, 54550, 938, 1, 1, 4387.71, 1369.435, 136.7794, 2.735163, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+109, 54550, 938, 1, 1, 4326.149, 1334.685, 170.1983, 1.302938, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+110, 45439, 938, 1, 1, 4402.943, 1365.333, 136.3008, 0, 7200, 0, 0), -- Cockroach (Area: Ruby Dragonshrine)
(@CGUID+111, 54550, 938, 1, 1, 4408.001, 1338.223, 143.3904, 4.180806, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+112, 54550, 938, 1, 1, 4414.6, 1342.388, 143.0652, 1.99993, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+113, 54550, 938, 1, 1, 4409.926, 1360.531, 138.3254, 0.3266348, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+114, 54550, 938, 1, 1, 4406.081, 1372.297, 135.7777, 0.1606559, 7200, 0, 0), -- Undying Flame (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+115, 54543, 938, 1, 1, 4394.689, 1305.934, 151.1577, 2.984513, 7200, 0, 0), -- Time-Twisted Drake (Area: Ruby Dragonshrine)
(@CGUID+116, 54552, 938, 1, 1, 4389.746, 1302.391, 147.9358, 2.635447, 7200, 0, 0), -- Time-Twisted Breaker (Area: Ruby Dragonshrine)
(@CGUID+117, 54553, 938, 1, 1, 4389.772, 1305.988, 147.8819, 2.75762, 7200, 0, 0), -- Time-Twisted Seer (Area: Ruby Dragonshrine)
(@CGUID+118, 54556, 938, 1, 1, 4328.203, 1265.259, 165.1421, 0, 7200, 0, 0), -- Volcano (Area: Ruby Dragonshrine)
(@CGUID+119, 54543, 938, 1, 1, 4361.014, 1329.404, 152.4848, 6.100525, 7200, 0, 0), -- Time-Twisted Drake (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+120, 54552, 938, 1, 1, 4360.234, 1331.467, 146.4147, 2.67815, 7200, 0, 0), -- Time-Twisted Breaker (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+121, 54553, 938, 1, 1, 4363.043, 1327.795, 146.184, 2.607674, 7200, 0, 0), -- Time-Twisted Seer (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+122, 54556, 938, 1, 1, 4404.695, 1280.943, 157.635, 0, 7200, 0, 0), -- Volcano (Area: Ruby Dragonshrine)
(@CGUID+123, 54496, 938, 1, 1, 4379.835, 1410.281, 132.4122, 0, 7200, 0, 0), -- Rock Island (Area: Ruby Dragonshrine)
(@CGUID+124, 54496, 938, 1, 1, 4377.944, 1482.354, 132.3906, 0, 7200, 0, 0), -- Rock Island (Area: Ruby Dragonshrine)
(@CGUID+125, 54496, 938, 1, 1, 4409.184, 1445.623, 132.3694, 0, 7200, 0, 0), -- Rock Island (Area: Ruby Dragonshrine)
(@CGUID+126, 54496, 938, 1, 1, 4337.902, 1456.681, 132.3431, 0, 7200, 0, 0), -- Rock Island (Area: Ruby Dragonshrine)
(@CGUID+127, 54431, 938, 1, 1, 4380.664, 1482.352, 132.2782, 4.660029, 7200, 0, 0), -- Echo of Baine (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+128, 54543, 938, 1, 1, 4416.879, 1379.339, 140.6653, 1.075679, 7200, 0, 0), -- Time-Twisted Drake (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+129, 54552, 938, 1, 1, 4413.682, 1371.156, 136.6377, 1.075268, 7200, 0, 0), -- Time-Twisted Breaker (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+130, 54553, 938, 1, 1, 4413.458, 1375.008, 135.672, 1.023173, 7200, 0, 0), -- Time-Twisted Seer (Area: Ruby Dragonshrine) (possible waypoints or random movement)
(@CGUID+131, 54543, 938, 1, 1, 4352.512, 1354.795, 146.6941, 6.143559, 7200, 0, 0), -- Time-Twisted Drake (Area: Obsidian Dragonshrine)
(@CGUID+132, 54552, 938, 1, 1, 4354.748, 1357.566, 139.3173, 5.637414, 7200, 0, 0), -- Time-Twisted Breaker (Area: Obsidian Dragonshrine)
(@CGUID+133, 54553, 938, 1, 1, 4351.11, 1360.583, 139.724, 5.61996, 7200, 0, 0), -- Time-Twisted Seer (Area: Obsidian Dragonshrine)
(@CGUID+134, 54550, 938, 1, 1, 4384.095, 1321.446, 147.0502, 0, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+135, 54550, 938, 1, 1, 4321.848, 1351.694, 165.6882, 0, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+136, 54550, 938, 1, 1, 4364.866, 1341.326, 142.5353, 0, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+137, 54550, 938, 1, 1, 4397.944, 1335.347, 142.0354, 0, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+138, 54550, 938, 1, 1, 4398.637, 1321.233, 144.9736, 0, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+139, 54550, 938, 1, 1, 4394.835, 1347.113, 140.9327, 0, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+140, 54556, 938, 1, 1, 4326.59, 1355.175, 162.0462, 0, 7200, 0, 0), -- Volcano (Area: Obsidian Dragonshrine)
(@CGUID+141, 54556, 938, 1, 1, 4437.101, 1353.821, 163.6857, 0, 7200, 0, 0), -- Volcano (Area: Obsidian Dragonshrine)
(@CGUID+142, 45439, 938, 1, 1, 4339.944, 1409.507, 133.8307, 0, 7200, 0, 0), -- Cockroach (Area: Obsidian Dragonshrine)
(@CGUID+143, 54550, 938, 1, 1, 4421.332, 1388.996, 132.4488, 1.128099, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+144, 54550, 938, 1, 1, 4438.93, 1345.28, 171.3046, 4.785715, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+145, 54550, 938, 1, 1, 4435.416, 1377.843, 135.7695, 1.570796, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+146, 54550, 938, 1, 1, 4287.12, 1388.266, 188.4446, 0, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+147, 45439, 938, 1, 1, 4428.346, 1402.547, 132.3557, 0, 7200, 0, 0), -- Cockroach (Area: Obsidian Dragonshrine)
(@CGUID+148, 54550, 938, 1, 1, 4453.048, 1381.699, 172.0069, 4.846554, 7200, 0, 0), -- Undying Flame (Area: Obsidian Dragonshrine) (possible waypoints or random movement)
(@CGUID+149, 45439, 938, 1, 1, 4444.255, 1421.899, 146.3931, 0, 7200, 0, 0), -- Cockroach (Area: Obsidian Dragonshrine)
(@CGUID+150, 45439, 938, 1, 1, 4443.146, 1458.203, 133.0238, 0, 7200, 0, 0), -- Cockroach (Area: Obsidian Dragonshrine)
(@CGUID+151, 45439, 938, 1, 1, 4425.683, 1492.208, 133.8816, 0, 7200, 0, 0), -- Cockroach (Area: Obsidian Dragonshrine)
(@CGUID+152, 45439, 938, 1, 1, 4302.61, 1488.701, 133.1618, 0, 7200, 0, 0), -- Cockroach (Area: Obsidian Dragonshrine)
(@CGUID+153, 54923, 938, 1, 1, 4088.726, -414.4115, 120.6957, 5.707227, 7200, 0, 0), -- Infinite Warden (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+154, 54920, 938, 1, 1, 4085.556, -430.5104, 121.0706, 6.178465, 7200, 0, 0), -- Infinite Suppressor (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+155, 54920, 938, 1, 1, 4104.933, -405.5556, 120.7335, 4.834562, 7200, 0, 0), -- Infinite Suppressor (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+156, 54920, 938, 1, 1, 4061.675, -427.9494, 118.4165, 2.225128, 7200, 0, 0), -- Infinite Suppressor (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+157, 54923, 938, 1, 1, 4052.15, -435.2483, 118.6089, 2.224639, 7200, 0, 0), -- Infinite Warden (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+158, 54923, 938, 1, 1, 4056.913, -431.5988, 118.5574, 2.225082, 7200, 0, 0), -- Infinite Warden (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+159, 54920, 938, 1, 1, 4047.388, -438.8977, 119.0892, 2.225073, 7200, 0, 0), -- Infinite Suppressor (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+160, 54751, 938, 1, 1, 4031.427, -362.526, 121.9653, 5.811946, 7200, 0, 0), -- Nozdormu (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+161, 54945, 938, 1, 1, 4058.69, -388.5995, 121.2118, 4.764887, 7200, 0, 0), -- Sandstorm (Area: Entryway of Time)
(@CGUID+162, 54945, 938, 1, 1, 4186.016, -379.7503, 119.9842, 4.666115, 7200, 0, 0), -- Sandstorm (Area: Entryway of Time)
(@CGUID+163, 54945, 938, 1, 1, 4181.452, -478.3177, 122.067, 4.666141, 7200, 0, 0), -- Sandstorm (Area: Entryway of Time)
(@CGUID+164, 54945, 938, 1, 1, 4063.8, -485.852, 122.508, 4.737252, 7200, 0, 0), -- Sandstorm (Area: Entryway of Time)
(@CGUID+165, 54945, 938, 1, 1, 4063.281, -476.4533, 122.3793, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Entryway of Time)
(@CGUID+166, 54945, 938, 1, 1, 4191.197, -357.9666, 120.6841, 4.631589, 7200, 0, 0), -- Sandstorm (Area: Entryway of Time)
(@CGUID+167, 54945, 938, 1, 1, 4062.261, -458.0053, 122.1266, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Entryway of Time)
(@CGUID+168, 54945, 938, 1, 1, 4186.163, -376.6237, 119.917, 4.666091, 7200, 0, 0), -- Sandstorm (Area: Entryway of Time)
(@CGUID+169, 54945, 938, 1, 1, 4060.002, -417.1299, 121.5667, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Entryway of Time)
(@CGUID+170, 54923, 938, 1, 1, 4124.252, -407.8351, 122.1545, 4.13643, 7200, 0, 0), -- Infinite Warden (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+171, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+172, 54928, 938, 1, 1, 4110.196, -429.158, 136.6789, 2.338741, 7200, 0, 0), -- Hourglass of Time (Area: Bronze Dragonshrine)
(@CGUID+173, 54945, 938, 1, 1, 4059.775, -324.0035, 120.2911, 4.737252, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+174, 54945, 938, 1, 1, 4181.126, -336.349, 119.0671, 4.714683, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+175, 54945, 938, 1, 1, 4188.026, -336.4219, 119.0671, 4.666091, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+176, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+177, 54945, 938, 1, 1, 4188.23, -331.8594, 119.0671, 4.666141, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+178, 54945, 938, 1, 1, 4192.948, -336.349, 120.4357, 4.631589, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+179, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+180, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+181, 54945, 938, 1, 1, 4188.026, -336.349, 119.0671, 4.666115, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+182, 54945, 938, 1, 1, 4188.026, -336.4219, 119.0671, 4.666091, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+183, 54945, 938, 1, 1, 4059.775, -324.0035, 120.2911, 4.737252, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+184, 54945, 938, 1, 1, 4055.06, -319.5174, 120.2911, 4.764887, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+185, 54945, 938, 1, 1, 4181.126, -336.349, 119.0671, 4.714683, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+186, 54945, 938, 1, 1, 4192.948, -336.349, 120.4357, 4.631589, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+187, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+188, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+189, 54945, 938, 1, 1, 4188.026, -336.4219, 119.0671, 4.666091, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+190, 54945, 938, 1, 1, 4188.23, -331.8594, 119.0671, 4.666141, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+191, 54945, 938, 1, 1, 4059.775, -324.0035, 120.2911, 4.737252, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+192, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+193, 54945, 938, 1, 1, 4188.026, -336.349, 119.0671, 4.666115, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+194, 54945, 938, 1, 1, 4181.126, -336.349, 119.0671, 4.714683, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+195, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+196, 54945, 938, 1, 1, 4192.948, -336.349, 120.4357, 4.631589, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+197, 54945, 938, 1, 1, 4188.026, -336.4219, 119.0671, 4.666091, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+198, 54945, 938, 1, 1, 4055.06, -319.5174, 120.2911, 4.764887, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+199, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+200, 54945, 938, 1, 1, 4059.775, -324.0035, 120.2911, 4.737252, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+201, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+202, 54945, 938, 1, 1, 4188.026, -336.4219, 119.0671, 4.666091, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+203, 54945, 938, 1, 1, 4192.948, -336.349, 120.4357, 4.631589, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+204, 54945, 938, 1, 1, 4181.126, -336.349, 119.0671, 4.714683, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+205, 54945, 938, 1, 1, 4188.026, -336.349, 119.0671, 4.666115, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+206, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+207, 54945, 938, 1, 1, 4188.23, -331.8594, 119.0671, 4.666141, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+208, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+209, 54945, 938, 1, 1, 4188.026, -336.4219, 119.0671, 4.666091, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+210, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+211, 54945, 938, 1, 1, 4055.06, -319.5174, 120.2911, 2.443461, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+212, 54945, 938, 1, 1, 4059.775, -324.0035, 120.2911, 2.443461, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+213, 54945, 938, 1, 1, 4192.948, -336.349, 120.4357, 1.117013, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+214, 54945, 938, 1, 1, 4181.126, -336.349, 119.0671, 1.117013, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+215, 54945, 938, 1, 1, 4188.026, -336.349, 119.0671, 1.117013, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+216, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 2.443461, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+217, 54945, 938, 1, 1, 4188.026, -336.4219, 119.0671, 4.666091, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+218, 54945, 938, 1, 1, 4188.23, -331.8594, 119.0671, 1.117013, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+219, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 4.767601, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+220, 54945, 938, 1, 1, 4054.855, -324.0035, 120.2911, 2.443461, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine) (possible waypoints or random movement)
(@CGUID+221, 54945, 938, 1, 1, 4192.948, -336.349, 120.4357, 4.631589, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+222, 54945, 938, 1, 1, 4059.775, -324.0035, 120.2911, 4.737252, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+223, 54945, 938, 1, 1, 4187.84, -340.4347, 119.1519, 4.666091, 7200, 0, 0), -- Sandstorm (Area: Bronze Dragonshrine)
(@CGUID+224, 45439, 938, 1, 1, 3047.869, 437.4809, 28.25405, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+225, 54687, 938, 1, 1, 3012.525, 478.9385, 27.47073, 4.73854, 7200, 0, 0), -- Time-Twisted Footman (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+226, 54687, 938, 1, 1, 3012.497, 473.4843, 26.5366, 4.802999, 7200, 0, 0), -- Time-Twisted Footman (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+227, 54690, 938, 1, 1, 3017.362, 482.1595, 28.22901, 4.94402, 7200, 0, 0), -- Time-Twisted Priest (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+228, 54693, 938, 1, 1, 3011.99, 485.4381, 26.98243, 4.877747, 7200, 0, 0), -- Time-Twisted Rifleman (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+229, 54691, 938, 1, 1, 3006.382, 478.9478, 24.99965, 4.800863, 7200, 0, 0), -- Time-Twisted Sorceress (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+230, 54542, 938, 1, 1, 3034.321, 515.618, 21.60052, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+231, 54542, 938, 1, 1, 2999.208, 501.9774, 26.53789, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+232, 54542, 938, 1, 1, 3005.825, 523.7205, 28.17572, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+233, 54542, 938, 1, 1, 3016.827, 487.9844, 27.38586, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+234, 45439, 938, 1, 1, 2980.706, 497.7743, 27.10397, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+235, 54542, 938, 1, 1, 3050.788, 493.6111, 21.50989, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+236, 45439, 938, 1, 1, 3014.675, 450.0642, 26.31597, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+237, 45439, 938, 1, 1, 2989.401, 434.8333, 34.82639, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+238, 54867, 938, 1, 1, 3039.391, 515.3785, 21.54784, 3.159046, 7200, 0, 0), -- Image of Nozdormu (Area: Entryway of Time)
(@CGUID+239, 54542, 938, 1, 1, 3074.481, 467.2066, 21.83661, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+240, 54542, 938, 1, 1, 3078.087, 441.2361, 27.26732, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+241, 54542, 938, 1, 1, 3074.481, 467.2066, 21.83661, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+242, 45439, 938, 1, 1, 3115.684, 505.2326, 6.433718, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+243, 54687, 938, 1, 1, 3075.441, 470.7812, 21.54818, 5.000063, 7200, 0, 0), -- Time-Twisted Footman (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+244, 54691, 938, 1, 1, 3079.425, 478.2716, 21.5247, 5.025282, 7200, 0, 0), -- Time-Twisted Sorceress (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+245, 54687, 938, 1, 1, 3081.167, 472.5393, 21.5247, 5.00496, 7200, 0, 0), -- Time-Twisted Footman (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+246, 54690, 938, 1, 1, 3073.711, 476.5207, 21.53275, 5.014402, 7200, 0, 0), -- Time-Twisted Priest (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+247, 54687, 938, 1, 1, 3040.014, 566.7242, 24.34503, 2.455863, 7200, 0, 0), -- Time-Twisted Footman (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+248, 54687, 938, 1, 1, 3037.822, 560.7614, 23.75398, 2.455863, 7200, 0, 0), -- Time-Twisted Footman (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+249, 54693, 938, 1, 1, 3042.397, 557.0187, 22.4801, 2.455863, 7200, 0, 0), -- Time-Twisted Rifleman (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+250, 54691, 938, 1, 1, 3046.032, 561.7988, 21.80891, 2.455495, 7200, 0, 0), -- Time-Twisted Sorceress (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+251, 54542, 938, 1, 1, 3064.288, 592.5538, 26.04465, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+252, 54542, 938, 1, 1, 3023.108, 544.2031, 24.3756, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+253, 54542, 938, 1, 1, 3034.635, 571.1649, 27.98734, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+254, 54542, 938, 1, 1, 3059.043, 566.6476, 21.51219, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+255, 54542, 938, 1, 1, 3008.868, 563.3976, 26.75361, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+256, 54542, 938, 1, 1, 3046.601, 548.5955, 22.33627, 0, 7200, 0, 0), -- Blink Target (Area: Entryway of Time)
(@CGUID+257, 45439, 938, 1, 1, 3080.62, 555.1059, 20.76182, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+258, 54639, 938, 1, 1, 3044.612, 515.7483, 21.54332, 3.228859, 7200, 0, 0), -- Arcane Circle (Area: Entryway of Time)
(@CGUID+259, 54690, 938, 1, 1, 3135.964, 487.933, 21.52198, 1.465913, 7200, 0, 0), -- Time-Twisted Priest (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+260, 54542, 938, 1, 1, 3111.466, 459.4271, 22.01747, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+261, 54542, 938, 1, 1, 3111.466, 459.4271, 22.01747, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+262, 54687, 938, 1, 1, 3139.852, 556.5237, 21.17372, 3.567407, 7200, 0, 0), -- Time-Twisted Footman (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+263, 54542, 938, 1, 1, 3101.55, 599.8958, 28.65366, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+264, 54687, 938, 1, 1, 3123.523, 556.6652, 21.39389, 2.412414, 7200, 0, 0), -- Time-Twisted Footman (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+265, 54690, 938, 1, 1, 3128.972, 549.0757, 21.09828, 2.937113, 7200, 0, 0), -- Time-Twisted Priest (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+266, 54693, 938, 1, 1, 3133.912, 552.4954, 21.49278, 3.327552, 7200, 0, 0), -- Time-Twisted Rifleman (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+267, 54691, 938, 1, 1, 3130.975, 559.4849, 20.93724, 2.563356, 7200, 0, 0), -- Time-Twisted Sorceress (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+268, 45439, 938, 1, 1, 3098.208, 621.882, 27.33134, 0, 7200, 0, 0), -- Cockroach (Area: Azure Dragonshrine)
(@CGUID+269, 54542, 938, 1, 1, 3130.356, 594.2864, 26.82118, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+270, 45439, 938, 1, 1, 3130.898, 626.0052, 32.00659, 0, 7200, 0, 0), -- Cockroach (Area: Azure Dragonshrine)
(@CGUID+271, 54542, 938, 1, 1, 3146.885, 553.6077, 21.04269, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+272, 54542, 938, 1, 1, 3159.581, 577.5799, 27.15213, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+273, 54687, 938, 1, 1, 3145.61, 516.5521, 21.91367, 6.074775, 7200, 0, 0), -- Time-Twisted Footman (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+274, 54687, 938, 1, 1, 3156.199, 515.0608, 21.51218, 5.389875, 7200, 0, 0), -- Time-Twisted Footman (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+275, 54693, 938, 1, 1, 3150.956, 515.8978, 22.00641, 0.3866747, 7200, 0, 0), -- Time-Twisted Rifleman (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+276, 54691, 938, 1, 1, 3152.964, 510.0997, 22.46222, 5.110485, 7200, 0, 0), -- Time-Twisted Sorceress (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+277, 54542, 938, 1, 1, 3160.658, 524.1441, 21.06857, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+278, 54542, 938, 1, 1, 3144.001, 461.9826, 23.62674, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+279, 54542, 938, 1, 1, 3180.344, 517.2014, 27.81145, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+280, 54542, 938, 1, 1, 3145.919, 492.4323, 20.66947, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+281, 54542, 938, 1, 1, 3180.78, 549.0261, 26.33423, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+282, 54542, 938, 1, 1, 3173.878, 492.3004, 26.97824, 0, 7200, 0, 0), -- Blink Target (Area: Azure Dragonshrine)
(@CGUID+283, 45439, 938, 1, 1, 3205.953, 555.5677, 31.21457, 0, 7200, 0, 0), -- Cockroach (Area: Azure Dragonshrine)
(@CGUID+284, 45439, 938, 1, 1, 3189.445, 450.2379, 25.06092, 0, 7200, 0, 0), -- Cockroach (Area: Azure Dragonshrine)
(@CGUID+285, 45439, 938, 1, 1, 3202.955, 489.8611, 24.96133, 0, 7200, 0, 0), -- Cockroach (Area: Azure Dragonshrine)
(@CGUID+286, 45439, 938, 1, 1, 3121.199, 417.5521, 25.70999, 0, 7200, 0, 0), -- Cockroach (Area: Azure Dragonshrine)
(@CGUID+287, 54445, 938, 1, 1, 3044.78, 515.7292, 21.54332, 3.124139, 7200, 0, 0), -- Echo of Jaina (Area: Azure Dragonshrine) (possible waypoints or random movement)
(@CGUID+288, 45439, 938, 1, 1, 2897.378, -1.197917, 1.697671, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+289, 45439, 938, 1, 1, 2930.512, 131.1042, 8.156324, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+290, 54700, 938, 1, 1, 2890.549, 8.982103, 1.431702, 3.47963, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+291, 54688, 938, 1, 1, 2877.207, 64.87737, 0.8064503, 5.78898, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+292, 54688, 938, 1, 1, 2871.965, 10.08328, 1.391066, 3.266917, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+293, 54700, 938, 1, 1, 2918.813, 14.78109, 5.537943, 0.1572115, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+294, 54700, 938, 1, 1, 2930.201, 126.1054, 7.408444, 1.616358, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+295, 54699, 938, 1, 1, 2917.458, 129.998, 5.621768, 5.892525, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+296, 54699, 938, 1, 1, 2926.456, 10.36992, 6.243418, 1.284837, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+297, 54700, 938, 1, 1, 2921.483, 21.35352, 5.223431, 3.141593, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+298, 54700, 938, 1, 1, 2893.814, 54.10377, 2.344442, 0.2958473, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+299, 54699, 938, 1, 1, 2911.057, 106.8299, 4.427178, 0.5441046, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+300, 54699, 938, 1, 1, 2903.494, 120.2561, 4.925302, 3.524332, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+301, 54699, 938, 1, 1, 2893.173, 74.31601, 3.009377, 2.763072, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+302, 54688, 938, 1, 1, 2905.007, 14.61499, 3.75001, 2.197492, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+303, 54688, 938, 1, 1, 2931.388, 31.04004, 5.474375, 6.026958, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+304, 45439, 938, 1, 1, 2953.248, 52.11806, 8.712854, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+305, 45439, 938, 1, 1, 2948.078, 95.89584, 7.11182, 0, 7200, 0, 0), -- Cockroach (Area: Entryway of Time)
(@CGUID+306, 54867, 938, 1, 1, 2941.339, 79.10416, 7.184312, 5.77704, 7200, 0, 0), -- Image of Nozdormu (Area: Entryway of Time)
(@CGUID+307, 54688, 938, 1, 1, 2894.964, 148.1297, 4.4568, 5.002406, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+308, 54688, 938, 1, 1, 2900.545, 141.4685, 4.681003, 3.059701, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+309, 54699, 938, 1, 1, 2905.844, 152.5096, 5.697238, 5.500022, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+310, 54544, 938, 1, 1, 2829.267, 53.03125, 1.44508, 3.193953, 7200, 0, 0), -- Echo of Tyrande (Area: Entryway of Time) (possible waypoints or random movement)
(@CGUID+311, 54508, 938, 1, 1, 2903.263, 63.17882, 3.244905, 0, 7200, 0, 0), -- Pool of Moonlight (Area: Emerald Dragonshrine)
(@CGUID+312, 54688, 938, 1, 1, 2876.092, -8.153395, 1.995699, 1.279953, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+313, 54688, 938, 1, 1, 2881.082, -4.2204, 2.08015, 5.60016, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+314, 54688, 938, 1, 1, 2879.852, -26.89625, 3.093876, 1.305131, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+315, 45439, 938, 1, 1, 2906.01, 164.8403, 8.273583, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+316, 54688, 938, 1, 1, 2885.016, 158.1319, 4.595623, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+317, 54688, 938, 1, 1, 2897.712, 27.86285, 3.476184, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+318, 54699, 938, 1, 1, 2870.348, 65.125, 1.343927, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+319, 54699, 938, 1, 1, 2905.771, 96.85764, 4.095532, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+320, 54688, 938, 1, 1, 2879.32, 41.52951, 1.417627, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+321, 54688, 938, 1, 1, 2881.642, 87.38194, 1.361561, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+322, 54700, 938, 1, 1, 2854.396, -21.52031, 2.130805, 1.893236, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+323, 54700, 938, 1, 1, 2890.361, -32.66564, 3.715975, 2.434213, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+324, 54699, 938, 1, 1, 2881.642, 87.38194, 1.361561, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+325, 54700, 938, 1, 1, 2879.32, 41.52951, 1.417627, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+326, 54688, 938, 1, 1, 2870.348, 65.125, 1.343927, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+327, 54688, 938, 1, 1, 2897.712, 27.86285, 3.476184, 0.6677926, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+328, 54688, 938, 1, 1, 2905.771, 96.85764, 4.095532, 4.735102, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+329, 54688, 938, 1, 1, 2870.348, 65.125, 1.343927, 1.08408, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+330, 54700, 938, 1, 1, 2881.642, 87.38194, 1.361561, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+331, 54508, 938, 1, 1, 2862.831, 131.4618, 3.184362, 0, 7200, 0, 0), -- Pool of Moonlight (Area: Emerald Dragonshrine)
(@CGUID+332, 54699, 938, 1, 1, 2876.356, 119.0174, 2.918524, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+333, 54688, 938, 1, 1, 2897.38, 148.9201, 4.408465, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+334, 54512, 938, 1, 1, 2836.826, 124.4635, 0.6271116, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+335, 54688, 938, 1, 1, 2879.32, 41.52951, 1.417627, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+336, 54688, 938, 1, 1, 2871.027, 167.5322, 4.294168, 5.316171, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+337, 54688, 938, 1, 1, 2860.267, 170.8038, 4.166511, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+338, 54688, 938, 1, 1, 2834.743, 156.9601, 2.439529, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+339, 54512, 938, 1, 1, 2863.912, 169.8021, 4.367168, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+340, 54688, 938, 1, 1, 2797, 168.2257, 4.034916, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+341, 54700, 938, 1, 1, 2845.623, 196.1389, 4.82303, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+342, 54700, 938, 1, 1, 2824.792, 172.3976, 4.142595, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+343, 54688, 938, 1, 1, 2827.241, 185.6927, 5.698616, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+344, 45439, 938, 1, 1, 2846.268, 205.2465, 5.997411, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+345, 54699, 938, 1, 1, 2809.687, 180.7582, 4.344973, 0.9977052, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+346, 54699, 938, 1, 1, 2855.99, 184.1007, 3.736753, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+347, 54699, 938, 1, 1, 2777.531, 156.3291, 2.774603, 2.595975, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+348, 45439, 938, 1, 1, 2781.782, 156.1302, 2.720279, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+349, 54688, 938, 1, 1, 2788.218, 183.434, 4.945911, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+350, 54688, 938, 1, 1, 2768.51, 164.1354, 4.121473, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+351, 54699, 938, 1, 1, 2897.38, 148.9201, 4.408465, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+352, 54508, 938, 1, 1, 2756.571, 129.9705, 5.58215, 0, 7200, 0, 0), -- Pool of Moonlight (Area: Emerald Dragonshrine)
(@CGUID+353, 54699, 938, 1, 1, 2834.743, 156.9601, 2.439529, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+354, 54512, 938, 1, 1, 2774.175, 99.97222, 3.273386, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+355, 54512, 938, 1, 1, 2787.063, 133.2483, 1.402271, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+356, 54512, 938, 1, 1, 2863.912, 169.8021, 4.367168, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+357, 54512, 938, 1, 1, 2836.826, 124.4635, 0.6271116, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+358, 54688, 938, 1, 1, 2876.356, 119.0174, 2.918524, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+359, 54512, 938, 1, 1, 2747.99, 98.30035, 3.024549, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+360, 54699, 938, 1, 1, 2755.498, 159.1768, 6.101501, 5.908337, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+361, 54512, 938, 1, 1, 2758.74, 155.5453, 5.262511, 4.075661, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+362, 45439, 938, 1, 1, 2713.168, 126.7986, 3.786028, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+363, 54688, 938, 1, 1, 2713.023, 107.1927, 0.4253367, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+364, 54688, 938, 1, 1, 2714.803, 91.09896, 0.8118507, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+365, 54699, 938, 1, 1, 2722.979, 123.1042, 4.244792, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+366, 54512, 938, 1, 1, 2746.5, 126.2742, 5.689218, 6.279279, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine)
(@CGUID+367, 54700, 938, 1, 1, 2684.824, 83.93056, 4.015292, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+368, 54699, 938, 1, 1, 2694.959, 86.24306, 0.1856805, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+369, 54699, 938, 1, 1, 2702.304, 97.58273, 0.6563449, 5.599932, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+370, 54512, 938, 1, 1, 2765.09, 160.3542, 4.366852, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+371, 54512, 938, 1, 1, 2787.063, 133.2483, 1.402271, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+372, 54699, 938, 1, 1, 2669.792, 84.375, 4.675269, 0.9185855, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+373, 54508, 938, 1, 1, 2695.441, 28.79688, 1.232396, 0, 7200, 0, 0), -- Pool of Moonlight (Area: Emerald Dragonshrine)
(@CGUID+374, 54512, 938, 1, 1, 2747.99, 98.30035, 3.024549, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+375, 54512, 938, 1, 1, 2774.175, 99.97222, 3.273386, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+376, 54512, 938, 1, 1, 2727.281, 125.3056, 5.011608, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+377, 54512, 938, 1, 1, 2722.884, 49.97917, -0.1323001, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+378, 54512, 938, 1, 1, 2730.962, 22.11793, -1.002109, 2.505324, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+379, 54701, 938, 1, 1, 2689.13, -0.9149306, 3.510846, 4.974188, 7200, 0, 0), -- Time-Twisted Huntress (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+380, 45439, 938, 1, 1, 2661.268, 54.54514, 5.641131, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+381, 54700, 938, 1, 1, 2666.267, 37.73958, -0.472237, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+382, 54512, 938, 1, 1, 2665.156, 33.33854, 0.3165532, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+383, 54701, 938, 1, 1, 2707.665, 5.693641, 3.138008, 3.92488, 7200, 0, 0), -- Time-Twisted Huntress (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+384, 54688, 938, 1, 1, 2687.787, -24.27604, 5.316387, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+385, 54699, 938, 1, 1, 2736.229, -34.64236, 5.900925, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+386, 54700, 938, 1, 1, 2704.864, -35.09201, 6.952122, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+387, 45439, 938, 1, 1, 2677.735, -8.578125, 2.138592, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+388, 54700, 938, 1, 1, 2745.056, -39.3125, 7.116392, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+389, 54688, 938, 1, 1, 2725.351, -34.57813, 5.643472, 4.974188, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+390, 54700, 938, 1, 1, 2697.783, -23.63435, 5.149828, 2.502354, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+391, 54699, 938, 1, 1, 2655.847, 21.716, 0.9534067, 4.478293, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+392, 54512, 938, 1, 1, 2722.884, 49.97917, -0.1323001, 4.974188, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+393, 54512, 938, 1, 1, 2665.156, 33.33854, 0.3165532, 6.177274, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine)
(@CGUID+394, 54512, 938, 1, 1, 2727.71, 24.52257, -0.6110339, 3.676686, 7200, 0, 0), -- Time-Twisted Sentinel (Area: Emerald Dragonshrine)
(@CGUID+395, 54508, 938, 1, 1, 2792.818, 1.939236, 2.463279, 0, 7200, 0, 0), -- Pool of Moonlight (Area: Emerald Dragonshrine)
(@CGUID+396, 54701, 938, 1, 1, 2773.958, -18.99479, 1.107152, 4.974188, 7200, 0, 0), -- Time-Twisted Huntress (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+397, 54701, 938, 1, 1, 2779.715, 26.71354, -0.7266212, 4.974188, 7200, 0, 0), -- Time-Twisted Huntress (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+398, 54699, 938, 1, 1, 2757.942, -55.56114, 7.026494, 3.644343, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+399, 54688, 938, 1, 1, 2773.182, -39.24636, 6.389653, 3.054822, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+400, 54700, 938, 1, 1, 2771.088, -48.035, 7.21204, 4.899842, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+401, 54700, 938, 1, 1, 2771.992, -65.07942, 6.83997, 0.8176046, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+402, 54688, 938, 1, 1, 2787.608, -42.6926, 5.69727, 1.232745, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+403, 45439, 938, 1, 1, 2798.29, -32.05208, 3.810286, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+404, 54700, 938, 1, 1, 2777.605, -76.43696, 7.591434, 1.358124, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+405, 54699, 938, 1, 1, 2793.933, -39.39446, 4.792363, 2.827209, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+406, 45439, 938, 1, 1, 2753.278, -62.60938, 6.549885, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+407, 54699, 938, 1, 1, 2786.324, -58.56347, 6.740497, 1.877407, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+408, 54699, 938, 1, 1, 2809.683, -26.63077, 2.346785, 3.011521, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+409, 54699, 938, 1, 1, 2823.907, -26.07928, 1.282883, 0.4313162, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+410, 45439, 938, 1, 1, 2804.975, -33.32465, 3.559107, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+411, 54700, 938, 1, 1, 2818.125, -41.13229, 3.242442, 1.323143, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+412, 54701, 938, 1, 1, 2813.217, -15.91172, 0.5285435, 2.761216, 7200, 0, 0), -- Time-Twisted Huntress (Area: Emerald Dragonshrine)
(@CGUID+413, 54701, 938, 1, 1, 2805.836, 13.13042, 0.8773961, 3.629253, 7200, 0, 0), -- Time-Twisted Huntress (Area: Emerald Dragonshrine)
(@CGUID+414, 54700, 938, 1, 1, 2799.21, -86.67188, 6.684208, 4.909635, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+415, 45439, 938, 1, 1, 2788.528, -82.16666, 7.517465, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+416, 54688, 938, 1, 1, 2823.036, -60.16433, 5.560313, 4.028298, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+417, 45439, 938, 1, 1, 2864.714, -30.1875, 2.623864, 0, 7200, 0, 0), -- Cockroach (Area: Emerald Dragonshrine)
(@CGUID+418, 54700, 938, 1, 1, 2820.474, -56.32288, 5.333594, 3.794668, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+419, 54688, 938, 1, 1, 2850.479, -48.45367, 3.248695, 6.267012, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+420, 54688, 938, 1, 1, 2845.164, -20.68618, 0.4942896, 1.35851, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+421, 54699, 938, 1, 1, 2829.389, -63.1805, 5.14088, 3.364308, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+422, 54688, 938, 1, 1, 2875.708, -63.69646, 5.4066, 4.185762, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+423, 54688, 938, 1, 1, 2860.709, -71.03589, 3.611669, 0.1101908, 7200, 0, 0), -- Time-Twisted Nightsaber (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+424, 54701, 938, 1, 1, 2779.715, 26.71354, -0.7266212, 4.974188, 7200, 0, 0), -- Time-Twisted Huntress (Area: Emerald Dragonshrine) (possible waypoints or random movement)
(@CGUID+425, 54701, 938, 1, 1, 2773.958, -18.99479, 1.107152, 0.8539028, 7200, 0, 0), -- Time-Twisted Huntress (Area: Emerald Dragonshrine)
(@CGUID+426, 45979, 938, 1, 1, 2829.167, 53.07639, 1.421112, 0, 7200, 0, 0); -- General Purpose Bunny JMF (Area: Emerald Dragonshrine)
