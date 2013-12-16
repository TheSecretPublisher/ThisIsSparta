-- Rhyolith template for everything
UPDATE `creature_template` SET `speed_walk`= 0.5, `speed_run`= 0.5,`ScriptName` = 'boss_rhyolith' WHERE `entry` = '52558'; 
UPDATE `creature_template` SET `speed_walk`= 0.5, `speed_run`= 0.5,`ScriptName` = 'right_foot_rhyolith' WHERE `entry` = '53087';   -- 38416 skin
UPDATE `creature_template` SET `speed_walk`= 0.5, `speed_run`= 0.5,`ScriptName` = 'left_foot_rhyolith' WHERE `entry` = '52577';    -- 38415 skin
UPDATE `world`.`creature_template` SET `VehicleId` = '1606' WHERE `entry` = '52558';

UPDATE `creature_template` SET `difficulty_entry_3` = '54080' WHERE `entry` = '53691'; 
UPDATE `creature_template` SET `minlevel` = '88' , `maxlevel` = '88' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `minlevel` = '88' , `maxlevel` = '88' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `minlevel` = '88' , `maxlevel` = '88' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `exp` = '3' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `exp` = '3' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `exp` = '3' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `faction_A` = '16' , `faction_H` = '16' WHERE `entry` = '53691'; 
UPDATE `creature_template` SET `faction_A` = '16' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `faction_A` = '16' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `faction_A` = '16' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `faction_H` = '16' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `faction_H` = '16' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `faction_H` = '16' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `speed_walk` = '3.2' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `speed_walk` = '3.2' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `speed_walk` = '3.2' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `speed_run` = '1.71429' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `mindmg` = '1225.5' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `mindmg` = '1225.5' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `mindmg` = '1225.5' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `maxdmg` = '1544.7' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `maxdmg` = '1544.7' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `maxdmg` = '1544.7' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `dmg_multiplier` = '8' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `dmg_multiplier` = '10' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `dmg_multiplier` = '11' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `dmg_multiplier` = '15' WHERE `entry` = '53691'; 
UPDATE `creature_template` SET `dmg_multiplier` = '16' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `dmg_multiplier` = '20' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `dmg_multiplier` = '22' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `dmg_multiplier` = '20' WHERE `entry` = '53691'; 
UPDATE `creature_template` SET `dmg_multiplier` = '22' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `dmg_multiplier` = '30' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `dmg_multiplier` = '33' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `baseattacktime` = '1500' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `rangeattacktime` = '2000' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `rangeattacktime` = '2000' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `rangeattacktime` = '2000' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `unit_flags` = '32768' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `unit_flags` = '32768' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `unit_flags` = '32768' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `dynamicflags` = '13' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `dynamicflags` = '13' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `dynamicflags` = '13' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `lootid` = '53979' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `lootid` = '54079' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `lootid` = '54080' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `Armor_mod` = '11977' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `Armor_mod` = '11977' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `Armor_mod` = '11977' WHERE `entry` = '54080'; 
UPDATE `creature_template` SET `mechanic_immune_mask` = '635387903' WHERE `entry` = '53979'; 
UPDATE `creature_template` SET `mechanic_immune_mask` = '635387903' WHERE `entry` = '54079'; 
UPDATE `creature_template` SET `mechanic_immune_mask` = '635387903' WHERE `entry` = '54080'; 

-- mechanic immune mask update 
Update `creature_template` SET `mechanic_immune_mask`=635387903 WHERE entry =53691; -- shannox 
Update `creature_template` SET `mechanic_immune_mask`=635386879 WHERE entry =53695; -- riplimb, not immune to snares
Update `creature_template` SET `mechanic_immune_mask`=635387903 WHERE entry =53695; -- rageface
Update `creature_template` SET `mechanic_immune_mask`=635387903 WHERE entry =52571; 
Update `creature_template` SET `mechanic_immune_mask`=635387903 WHERE entry =52558; 
Update `creature_template` SET `mechanic_immune_mask`=635387903 WHERE entry =52498; 
Update `creature_template` SET `mechanic_immune_mask`=635387903 WHERE entry =53494; 
Update `creature_template` SET `mechanic_immune_mask`=635387903 WHERE entry =52530;
Update `creature_template` SET `mechanic_immune_mask`=635387903 WHERE entry =52409; 