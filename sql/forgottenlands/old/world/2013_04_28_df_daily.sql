insert into creature_template (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,`KillCredit2`,
	`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`exp`,`faction_A`,
	`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,`dmg_multiplier`,
	`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_class`,
	`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,
	`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,
	`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`Health_mod`,`Mana_mod`,`Armor_mod`,
	`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,
	`mechanic_immune_mask`,`flags_extra`,`ScriptName`,`WDBVerified`) values ('341780','0','0','0','0','0','7103','0','0','0','Hero Trader','Custom DF Rewards','','0','85','85','2','35','35','3','1','1.14286','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','1','0','0','0','0','0','0','0','0','1','0','0','','1');
	
insert into creature (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,
	`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) values ('5000000','1','1','1','0','0','1598.47','-4365.12','21.1013','3.48936','300','0','0','1','0','0','0','0','0');

INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (341780, 5000006);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (341780, 5000004);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (341780, 5000003);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (341780, 5000002);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (341780, 5000001);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (341780, 5000000);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (341780, 5000006);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (341780, 5000004);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (341780, 5000003);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (341780, 5000002);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (341780, 5000001);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (341780, 5000000);
	
INSERT INTO `quest_template` (`Id`, `Level`, `MinLevel`, `MaxLevel`, `ZoneOrSort`, `Type`, `SuggestedPlayers`, `ExclusiveGroup`, `RewardOrRequiredMoney`, `Flags`, `SpecialFlags`, `Title`, `Objectives`, `Details`, `EndText`, `RequiredNpcOrGo1`, `RequiredNpcOrGoCount1`, `RewardCurrencyId1`, `RewardCurrencyId2`, `RewardCurrencyCount1`, `RewardCurrencyCount2`) VALUES
(5000000, 85, 85, 85, 5035, 81, 5, 5000000, 1200000, 4232, 1, 'Battle of Vortex Pinnacle.', 'Slay Asaad', 'Prove your skills completing the HEROIC VERSION of the dungeon: Vortex Pinnacle!', 'You did great! Go claim your rewards!', 43876, 1, 395, 396, 150, 100),
(5000001, 85, 85, 85, 4926, 81, 5, 5000000, 1200000, 4232, 1, 'Battle of Blackrock Caverns.', 'Slay Ascendant Lord Obsidius', 'Prove your skills completing the HEROIC VERSION of the dungeon: Blackrock Caverns!', 'You did great! Go claim your rewards!', 39705, 1, 395, 396, 150, 100),
(5000002, 85, 85, 85, 5088, 81, 5, 5000000, 1200000, 4232, 1, 'Battle of Stonecore.', 'Slay High Priestess Azil', 'Prove your skills completing the HEROIC VERSION of the dungeon: The Stonecore!', 'You did great! Go claim your rewards!', 42333, 1, 395, 396, 150, 100),
(5000003, 85, 85, 85, 5396, 81, 5, 5000000, 1200000, 4232, 1, 'Battle of Lost City of Tol\'Vir.', 'Slay Siamat', 'Prove your skills completing the HEROIC VERSION of the dungeon: Lost City of Tol\'Vir!', 'You did great! Go claim your rewards!', 51088, 1, 395, 396, 150, 100),
(5000004, 85, 85, 85, 5396, 81, 5, 5000000, 1200000, 4232, 1, 'Battle of Grim Batol.', 'Slay Erudax', 'Prove your skills completing the HEROIC VERSION of the dungeon: Grim Batol!', 'You did great! Go claim your rewards!', 48822, 1, 395, 396, 150, 100),
(5000006, 85, 85, 85, 5035, 81, 5, 5000000, 1200000, 4232, 1, 'Battle of Throne of the Tides.', 'Slay Ozumat', 'Prove your skills completing the HEROIC VERSION of the dungeon: Throne of the Tides!', 'You did great! Go claim your rewards!', 42172, 1, 395, 396, 150, 100);