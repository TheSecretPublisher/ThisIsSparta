
-- fix timeline e flags Undertaker Mordo
UPDATE `quest_template` SET `PrevQuestId`=24959 WHERE (`Id`=28608);
UPDATE `quest_template` SET `Flags`=0 WHERE (`Id`=24959);
UPDATE `quest_template` SET `Flags`=0 WHERE (`Id`=28608);
UPDATE `quest_template` SET `Flags`=0 WHERE (`Id`=26799);
UPDATE `quest_template` SET `PrevQuestId`=28608 WHERE (`Id`=26799);
UPDATE `quest_template` SET `PrevQuestId`=26799, `Flags`=0 WHERE (`Id`=28652);
UPDATE `quest_template` SET `PrevQuestId`=28652, `Flags`=68681728 WHERE (`Id`=24960);
UPDATE `quest_template` SET `PrevQuestId`=24960, `Flags`=0 WHERE (`Id`=25089);
UPDATE `quest_template` SET `PrevQuestId`=25089 WHERE (`Id`=26800);
UPDATE `quest_template` SET `PrevQuestId`=26800 WHERE (`Id`=28653);
UPDATE `quest_template` SET `PrevQuestId`=28653, `Flags`=0 WHERE (`Id`=26801);

DELETE FROM `creature` WHERE id=49213;
DELETE FROM `creature_template` WHERE entry=49213;
DELETE FROM `creature` WHERE id=49044;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (NULL, 49044, 0, 1, 1, 0, 0, 1700.41, 1702.44, 135.648, 1.16863, 300, 0, 0, 5580, 3820, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`=38895);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (null, 38895, 0, 1, 1, 0, 0, 1747.28, 1672.99, 121.43, 5.61502, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`=49230);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (null, 49230, 0, 1, 1, 0, 0, 1750.8, 1641.24, 117.753, 4.78763, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE (`id`=49231);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (null, 49231, 0, 1, 1, 0, 0, 1735.75, 1718.43, 133.485, 4.07775, 300, 0, 0, 42, 0, 0, 0, 0, 0);


-- fix gossip valdred moray
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 49231;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `npc_option_npcflag`) VALUES (49231, 'Get away from me, you Abomination!', 1);
UPDATE `gossip_menu_option` SET `option_id`= 1 WHERE (`menu_id`=49231);
UPDATE `gossip_menu_option` SET `id`=1  WHERE (`menu_id`=49231);
UPDATE `creature_template` SET `gossip_menu_id`=49231 WHERE (`entry`=49231);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=49231);
DELETE FROM smart_scripts WHERE entryorguid IN (49231);
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param1`, `event_param2`, `action_type`, `comment`) VALUES (49231, 62, 49231, 1, 1, 'Valdred Moray - On Gossip - Say');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `comment`) VALUES (49231, 1, 62, 49231, 1, 33, 49231, 'Valdred Moray - On Gossip - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `comment`) VALUES (49231, 2, 62, 49231, 1, 72, 49231, 'Valdred Moray - On Gossip - close');

-- Lilian Voss

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 38895;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `npc_option_npcflag`) VALUES (38895, 'Get away from me, you Abomination!', 1);
UPDATE `gossip_menu_option` SET `option_id`= 1 WHERE (`menu_id`=38895);
UPDATE `gossip_menu_option` SET `id`=1  WHERE (`menu_id`=38895);
UPDATE `creature_template` SET `gossip_menu_id`=38895 WHERE (`entry`=38895);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=38895);
DELETE FROM smart_scripts WHERE entryorguid IN (38895);
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param1`, `event_param2`, `action_type`, `comment`) VALUES (38895, 62, 38895, 1, 1, 'Lilian Voss - On Gossip - Say');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `comment`) VALUES (38895, 1, 62, 38895, 1, 33, 38895, 'Lilian Voss - On Gossip - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `comment`) VALUES (38895, 2, 62, 38895, 1, 72, 38895, 'Lilian Voss - On Gossip - close');

-- Marshal Redpath
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 49230;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `npc_option_npcflag`) VALUES (49230, 'Get away from me, you Abomination!', 1);
UPDATE `gossip_menu_option` SET `option_id`= 1 WHERE (`menu_id`=49230);
UPDATE `gossip_menu_option` SET `id`=1  WHERE (`menu_id`=49230);
UPDATE `creature_template` SET `gossip_menu_id`=49230 WHERE (`entry`=49230);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=49230);
DELETE FROM smart_scripts WHERE entryorguid IN (49230);
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param1`, `event_param2`, `action_type`, `comment`) VALUES (49230, 62, 49230, 1, 1, 'Marshal Redpath - On Gossip - Say');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `comment`) VALUES (49230, 1, 62, 49230, 1, 33, 49230, 'Marshal Redpath - On Gossip - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `comment`) VALUES (49230, 2, 62, 49230, 1, 72, 49230, 'Marshal Redpath - On Gossip - close');



DELETE FROM `creature_questrelation` WHERE (`id`='1740') AND (`quest`='26800');
UPDATE `quest_template` SET `NextQuestIdChain`='28653' WHERE (`Id`='25089');
UPDATE `quest_template` SET `PrevQuestId`='25089' WHERE (`Id`='28653');
UPDATE `quest_template` SET `PrevQuestId`='28651' WHERE (`Id`='24961');

-- fix secondo gossip lilian ( altro npc)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 38910;
INSERT INTO `gossip_menu_option` (`menu_id`, `option_text`, `npc_option_npcflag`) VALUES (38910, 'I CANNOT be undead! Not me, not now...!', 1);
UPDATE `gossip_menu_option` SET `option_id`= 1 WHERE (`menu_id`=38910);
UPDATE `gossip_menu_option` SET `id`=1  WHERE (`menu_id`=38910);
UPDATE `creature_template` SET `gossip_menu_id`=38910 WHERE (`entry`=38910);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=38910);
DELETE FROM smart_scripts WHERE entryorguid IN (38910);
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param1`, `event_param2`, `action_type`, `comment`) VALUES (38910, 62, 38910, 1, 1, 'Lilian Voss - On Gossip - Say');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `comment`) VALUES (38910, 1, 62, 38910, 1, 33, 38910, 'Lilian Voss - On Gossip - Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `id`, `event_type`, `event_param1`, `event_param2`, `action_type`, `action_param1`, `comment`) VALUES (38910, 2, 62, 38910, 1, 72, 38910, 'Lilian Voss - On Gossip - close');

-- fix chain
UPDATE `quest_template` SET `PrevQuestId`='28672' WHERE (`Id`=26802);
UPDATE `quest_template` SET `PrevQuestId`='26802' WHERE (`Id`=24973);
UPDATE `quest_template` SET `PrevQuestId`='24973' WHERE (`Id`=24970);
UPDATE `quest_template` SET `PrevQuestId`='24970' WHERE (`Id`=24971);

-- spawn darnell
DELETE FROM `creature` WHERE (`id`=49426);
DELETE FROM `creature_template` WHERE (`entry`=49426);
DELETE FROM `creature` WHERE (`id`=49425);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES (null, 49425, 0, 1, 1, 0, 0, 1977.13, 1407.85, 63.2743, 0.16572, 300, 0, 0, 86, 0, 0, 0, 0, 0);


-- fix chain apoteary johaan
UPDATE `quest_template` SET `PrevQuestId`=24975 WHERE (`Id`=24976);
UPDATE `quest_template` SET `PrevQuestId`=24976 WHERE (`Id`=24977);
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE (`Id`=24978);
UPDATE `quest_template` SET `PrevQuestId`=24978 WHERE (`Id`=24980);


UPDATE `creature_template` SET `unit_flags`=0, `unit_flags2`=0 WHERE (`entry`=38933);
UPDATE `quest_template` SET `PrevQuestId`=25006 WHERE (`Id`=25007);
UPDATE `quest_template` SET `PrevQuestId`=24990 WHERE (`Id`=24996);

-- fix A Thorn in our Side
DELETE FROM `creature_loot_template` WHERE `entry`=1537 AND item=52077;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (1537, 52077, -90);
UPDATE `creature_template` SET `lootid`=1537 WHERE (`entry`=1537);


-- fix loot the damned
DELETE FROM `creature_loot_template` WHERE `entry`=1508 AND item=3265;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (1508, 3265, -100);
UPDATE `creature_template` SET `lootid`=1508 WHERE (`entry`=1508);

DELETE FROM `creature_loot_template` WHERE `entry`=1512 AND item=3264;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (1512, 3264, -100);
UPDATE `creature_template` SET `lootid`=1512 WHERE (`entry`=1512);

-- fix quest autocompletante
UPDATE `quest_template` SET `Method`=2 WHERE (`Id`=24974);

-- rimozione ever so lonely fix solo da core
DELETE FROM `creature_questrelation` WHERE (`id`=38925) AND (`quest`=24974);

-- fix quest Variety is the Spice of Death
DELETE FROM `creature_loot_template` WHERE `entry`=38933 AND item=52068;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (38933, 52068, -100);
UPDATE `creature_template` SET `lootid`=38933 WHERE (`entry`=38933);
UPDATE `creature_template` SET `npcflag`=0, `mindmg`=5, `maxdmg`=7, `attackpower`=40 WHERE (`entry`=38933);
UPDATE `creature_template` SET `faction_A`=18, `faction_H`=18 WHERE (`entry`=38933);

DELETE FROM `creature_loot_template` WHERE `entry`=1547 AND item=2858;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (1547, 2858, -100);
UPDATE `creature_template` SET `lootid`=1547 WHERE (`entry`=1547);

DELETE FROM `creature_loot_template` WHERE `entry`=1675 AND item=2834;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (1675, 2834, -100);
UPDATE `creature_template` SET `lootid`=1675 WHERE (`entry`=1675);

-- The Grasp Weakens autocompletante ( deve evocare il mob tuo livello +1 messa auto perche inizio di una chain bella grossa)
UPDATE `quest_template` SET `Method`=0 WHERE (`Id`=25006);
UPDATE `quest_template` SET `Method`=0 WHERE (`Id`=25046);  

-- add loot Duskbat Pelt
DELETE FROM `creature_loot_template` WHERE `entry`=1554 AND item=2876;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (1554, 2876, -54);
UPDATE `creature_template` SET `lootid`=1554 WHERE (`entry`=1554);

-- fix timeline Apothecary Jerrod

UPDATE `quest_template` SET `prevquestid`=24994 WHERE (`Id`=24995);

-- fix timeline Apprentice Crispin

UPDATE `quest_template` SET `prevquestid`=24997 WHERE (`Id`=24998);

-- fix timeline Apothecary Dithers

UPDATE `quest_template` SET `prevquestid`=25056 WHERE (`Id`=25013);

-- fix timeline High Executor Derrington
UPDATE `quest_template` SET `PrevQuestId`=25005 WHERE (`Id`=25006);
UPDATE `quest_template` SET `PrevQuestId`=25007 WHERE (`Id`=25009);
UPDATE `quest_template` SET `PrevQuestId`=25009 WHERE (`Id`=25010);
UPDATE `quest_template` SET `PrevQuestId`=25010 WHERE (`Id`=25046);
UPDATE `quest_template` SET `PrevQuestId`=25046 WHERE (`Id`=25011);
UPDATE `quest_template` SET `PrevQuestId`=25011 WHERE (`Id`=25012);
UPDATE `quest_template` SET `PrevQuestId`=25012 WHERE (`Id`=26964);
UPDATE `quest_template` SET `PrevQuestId`=25012 WHERE (`Id`=28568);
UPDATE `quest_template` SET `PrevQuestId`=26964 WHERE (`Id`=26965);

-- fix loot Plagued Bruin Hide
DELETE FROM `creature_loot_template` WHERE `entry`=39049 AND item=52270;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (39049, 52270, -41);
UPDATE `creature_template` SET `lootid`=39049 WHERE (`entry`=39049);
UPDATE `quest_template` SET `Flags`=0 WHERE (`Id`=25011);

-- delete item per quest obsoleta
DELETE FROM `item_template` WHERE entry=2839;
DELETE FROM `creature_loot_template` WHERE item=2839;

-- delete quest ( kill murloc grossi -> murloc piccoli vanno in fear-> credit)
DELETE FROM `creature_questrelation` WHERE (`id`=38978) AND (`quest`=24999);

-- fix Annihilate the Worgen
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`=1515);
DELETE FROM smart_scripts WHERE entryorguid IN (1515) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (1515, 0, 1, 2, 19, 0, 100, 0, 24993, 0, 0, 0, 12, 38967, 6, 60, 0, 0, 0, 8, 0, 0, 0, 2295.99, 323.018, 35.7655, 4.67836, 'worgen infltrator');
INSERT INTO `smart_scripts` VALUES (1515, 0, 2, 2, 19, 0, 100, 0, 24993, 0, 0, 0, 12, 38967, 6, 60, 0, 0, 0, 8, 0, 0, 0, 2298.27, 309.663, 34.6791, 3.04564, 'worgen infltrator');
INSERT INTO `smart_scripts` VALUES (1515, 0, 3, 2, 19, 0, 100, 0, 24993, 0, 0, 0, 12, 38967, 6, 60, 0, 0, 0, 8, 0, 0, 0, 2297.91, 252.897, 33.5752, 3.06348, 'worgen infltrator');
INSERT INTO `smart_scripts` VALUES (1515, 0, 4, 2, 19, 0, 100, 0, 24993, 0, 0, 0, 12, 38967, 6, 60, 0, 0, 0, 8, 0, 0, 0, 2232, 236.517, 33.5856, 1.04893, 'worgen infltrator');
INSERT INTO `smart_scripts` VALUES (1515, 0, 5, 2, 19, 0, 100, 0, 24993, 0, 0, 0, 12, 38967, 6, 60, 0, 0, 0, 8, 0, 0, 0, 2268.46, 355.329, 33.6315, 5.70674, 'worgen infltrator');
INSERT INTO `smart_scripts` VALUES (1515, 0, 6, 2, 19, 0, 100, 0, 24993, 0, 0, 0, 12, 38967, 6, 60, 0, 0, 0, 8, 0, 0, 0, 2255.27, 329.173, 33.5743, 6.03293, 'worgen infltrator');
INSERT INTO `smart_scripts` VALUES (1515, 0, 7, 2, 19, 0, 100, 0, 24993, 0, 0, 0, 12, 38967, 6, 60, 0, 0, 0, 8, 0, 0, 0, 2212.53, 311.61, 33.576, 5.35407, 'worgen infltrator');
INSERT INTO `smart_scripts` VALUES (1515, 0, 8, 2, 19, 0, 100, 0, 24993, 0, 0, 0, 12, 38967, 6, 60, 0, 0, 0, 8, 0, 0, 0, 2200.78, 226.006, 35.6169, 1.94072, 'worgen infltrator');
UPDATE `creature_template` SET `minlevel`='7', `maxlevel`='8', `mindmg`='10', `maxdmg`='20', `attackpower`='10', `baseattacktime`='0', `unit_flags2`='2048' WHERE (`entry`='38967');
UPDATE `creature_template` SET `faction_A`=15, `faction_H`=15 WHERE (`entry`='38967');
UPDATE `creature_template` SET `attackpower`='40', `baseattacktime`='2000', `rangeattacktime`='2000', `minrangedmg`='7', `maxrangedmg`='10' WHERE (`entry`='38967');

-- fix timeline 
UPDATE `quest_template` SET `NextQuestIdChain`=25005 WHERE (`Id`=25029);
UPDATE `quest_template` SET `PrevQuestId`=25029 WHERE (`Id`='25005');