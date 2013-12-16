DELETE FROM `command` WHERE `name` = 'spectate';        
DELETE FROM `command` WHERE `name` = 'spectate view';    
DELETE FROM `command` WHERE `name` = 'spectate leave';   
DELETE FROM `command` WHERE `name` = 'spectate player'; 
DELETE FROM `command` WHERE `name` = 'spectate reset';  

DELETE FROM creature_template WHERE entry = '190000'; 
INSERT INTO `creature_template` (`entry`,`difficulty_entry_1`,`difficulty_entry_2`,`difficulty_entry_3`,`KillCredit1`,
`KillCredit2`,`modelid1`,`modelid2`,`modelid3`,`modelid4`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,
`maxlevel`,`exp`,`faction_A`,`faction_H`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`mindmg`,`maxdmg`,`dmgschool`,`attackpower`,
`dmg_multiplier`,`baseattacktime`,`rangeattacktime`,`unit_class`,`unit_flags`,`dynamicflags`,`family`,`trainer_type`,`trainer_class`,
`trainer_race`,`minrangedmg`,`maxrangedmg`,`rangedattackpower`,`type`,`type_flags`,`lootid`,`pickpocketloot`,`skinloot`,`resistance1`,
`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,
`spell8`,`PetSpellDataId`,`VehicleId`,`mingold`,`maxgold`,`AIName`,`MovementType`,`InhabitType`,`Health_mod`,`Mana_mod`,`Armor_mod`,
`RacialLeader`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`movementId`,`RegenHealth`,
`mechanic_immune_mask`,`flags_extra`,`ScriptName`,`WDBVerified`) 
VALUES 
(190000,0,0,0,0,0,21022,0,0,0,'Eye','Arena watcher',NULL,0,1,1,0,35,35,1,1,1.14286,1.5,0,0,0,0,0,1,0,0,
1,128,0,0,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,3,1,1,1,0,0,0,0,0,0,0,0,1,0,0,'npc_arena_watcher',1);

DELETE FROM creature_text where entry = 190000;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (190000,0,0,'Sorry matches at the moment there is no',15,0,0,0,0,0,'ArenaWatcher');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (190000,1,0,'The match has been completed',15,0,0,0,0,0,'ArenaWatcher');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (190000,2,0,'Target is offline',15,0,0,0,0,0,'ArenaWatcher');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (190000,3,0,'Target not in arena',15,0,0,0,0,0,'ArenaWatcher');
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES (190000,4,0,'Target is GameMaster',15,0,0,0,0,0,'ArenaWatcher');
