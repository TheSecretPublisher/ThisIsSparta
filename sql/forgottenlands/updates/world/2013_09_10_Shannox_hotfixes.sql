-- dogs template and everything
UPDATE `creature_template` SET `difficulty_entry_1` = '53981', `difficulty_entry_2` = '54075', `difficulty_entry_3` = '54076' WHERE `entry` = '53695'; 
UPDATE `creature_template` SET `difficulty_entry_1` = '53980', `difficulty_entry_2` = '54077', `difficulty_entry_3` = '54078' WHERE `entry` = '53694'; 
UPDATE `creature_template` SET `minlevel` = '87' , `maxlevel` = '87' WHERE `entry` IN (53981, 54075, 54076, 53980, 54077, 54078); 
UPDATE `creature_template` SET `exp` = '3' WHERE `entry` IN (53981, 54075, 54076, 53980, 54077, 54078); 
UPDATE `creature_template` SET `faction_A` = '2109', `faction_H` = '2109' WHERE `entry` IN (53981, 54075, 54076, 53980, 54077, 54078); 
UPDATE `creature_template` SET `speed_walk` = '2.8', `speed_run` = '1.57143' WHERE `entry` IN (53981, 54075, 54076, 53980, 54077, 54078); 
UPDATE `creature_template` SET `mindmg` = '1811.5', `maxdmg` = '2358.5', `attackpower` = '1613', `baseattacktime` = '1000' WHERE `entry` IN (53981, 54075, 54076);
UPDATE `creature_template` SET `mindmg` = '4375.5', `maxdmg` = '5687', `attackpower` = '1613', `baseattacktime` = '1000' WHERE `entry` IN (53694, 53980, 54077, 54078); 
UPDATE `creature_template` SET `dynamicflags` = '12' WHERE `entry` IN (53981, 54075, 54076, 53980, 54077, 54078); 
UPDATE `creature_template` SET `unit_flags` = '32768' WHERE `entry` IN (53981, 54075, 54076, 53980, 54077, 54078); 
UPDATE `creature_template` SET `Armor_mod` = '11977' WHERE `entry` IN (53981, 54075, 54076, 53980, 54077, 54078); 
UPDATE `creature_template` SET `mechanic_immune_mask` = '635387903' WHERE `entry` IN (53981, 54075, 54076, 53980, 54077, 54078); 
UPDATE `creature_template` SET `dmg_multiplier` = '8' WHERE `entry` IN (53981, 53980); 
UPDATE `creature_template` SET `dmg_multiplier` = '10' WHERE `entry` IN (54075, 54077); 
UPDATE `creature_template` SET `dmg_multiplier` = '11' WHERE `entry` IN (54076, 54078); 

-- shannox melee damage
UPDATE `world`.`creature_template` SET `dmg_multiplier` = '40' WHERE `entry` = '53691'; 
UPDATE `world`.`creature_template` SET `dmg_multiplier` = '44' WHERE `entry` = '53979'; 
UPDATE `world`.`creature_template` SET `dmg_multiplier` = '50' WHERE `entry` = '54079'; 
UPDATE `world`.`creature_template` SET `dmg_multiplier` = '55' WHERE `entry` = '54080'; 

-- traps update
UPDATE `creature_template` SET `minlevel` = '88' , `maxlevel` = '88' WHERE `entry` = '53713'; 
UPDATE `creature_template` SET `minlevel` = '88' , `maxlevel` = '88' WHERE `entry` = '53724'; 