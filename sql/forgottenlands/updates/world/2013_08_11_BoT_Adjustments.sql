-- Halfus melee nerf
UPDATE `creature_template` SET `baseattacktime` = '2000' WHERE `entry` = '44600'; 
UPDATE `creature_template` SET `dmg_multiplier` = '40' WHERE `entry` = '46209'; 
UPDATE `creature_template` SET `dmg_multiplier` = '50' WHERE `entry` = '46211'; 