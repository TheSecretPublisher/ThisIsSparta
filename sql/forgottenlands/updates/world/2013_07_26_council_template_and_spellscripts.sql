-- Spawns
-- DELETE FROM `creature` WHERE `id` IN (43735, 43689, 43688, 43686, 43687);
-- INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
-- (43686, 671, 15, 1, 0, 0, -1053.54, -598.477, 835.17, 0.226737, 300, 0, 0, 37964264, 0, 0, 0, 0, 0, 0),
-- (43687, 671, 15, 1, 0, 0, -1053.52, -569.392, 835.189, 5.93502, 300, 0, 0, 37964264, 0, 0, 0, 0, 0, 0),
-- (43688, 671, 15, 1, 0, 0, -1049.9, -605.693, 835.167, 0.606077, 300, 0, 0, 4564670, 2751000, 0, 0, 0, 0, 0),
-- (43689, 671, 15, 1, 0, 0, -1050.84, -562.55, 835.184, 5.78657, 300, 0, 0, 4261950, 2206000, 0, 0, 0, 0, 0),
-- (43735, 671, 15, 1, 0, 0, -1060.46, -582.656, 835.03, 0.027235, 300, 0, 0, 120839264, 0, 0, 0, 0, 0, 0);
-- UPDATE `creature` SET `guid`=11859855 WHERE  `guid`=11859847 LIMIT 1;


-- Template Updates
UPDATE `creature_template` SET `speed_walk`= 1, `flags_extra`=1, `maxdmg`=16838.8, `Health_mod`=6871360, `ScriptName`='boss_ascendants'             WHERE  `entry`=43686;
UPDATE `creature_template` SET `speed_walk`= 1, `flags_extra`=1, `maxdmg`=16838.8, `Health_mod`=6871360, `ScriptName`='boss_ascendants'             WHERE  `entry`=43687;
UPDATE `creature_template` SET `speed_walk`= 1, `flags_extra`=1, `maxdmg`=16838.8, `Health_mod`=4724070, `ScriptName`='boss_ascendants'             WHERE  `entry`=43688;
UPDATE `creature_template` SET `speed_walk`= 1, `flags_extra`=1, `maxdmg`=16838.8, `Health_mod`=4724070, `ScriptName`='boss_ascendants'             WHERE  `entry`=43689;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `speed_walk`= 1, `flags_extra`=1, `ScriptName`='boss_elementium_monstrosity' WHERE  `entry`=43735;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `speed_walk`= 1, `flags_extra`=1, `ScriptName`='boss_elementium_monstrosity' WHERE  `entry`=49619;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `speed_walk`= 1, `flags_extra`=1, `ScriptName`='boss_elementium_monstrosity' WHERE  `entry`=49620;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `speed_walk`= 1, `flags_extra`=1, `ScriptName`='boss_elementium_monstrosity' WHERE  `entry`=49621;
UPDATE `creature_template` SET `minlevel` = 88 , `maxlevel` = 88 WHERE `entry` IN (43686, 43687, 43688, 43689); 
UPDATE `creature_template` SET `modelid1`= 11686, `flags_extra`=1, `ScriptName`='npc_council_lava_seed'       WHERE  `entry`=45420;
UPDATE `creature_template` SET `modelid1`= 11686, `flags_extra`=1, `ScriptName`='npc_council_water_bomb'      WHERE  `entry`=44201;
UPDATE `creature_template` SET `modelid1`= 11686, `flags_extra`=1, `scale`=2, `ScriptName`='npc_council_violent_cyclone' WHERE  `entry`=44747;
UPDATE `creature_template` SET `modelid1`= 11686, `flags_extra`=1, `ScriptName`='npc_council_inferno_rush'    WHERE  `entry`=47501;
UPDATE `creature_template` SET `modelid1`= 11686, `flags_extra`=1, `ScriptName`='npc_council_gravity_well'    WHERE  `entry`=44824;
UPDATE `creature_template` SET `modelid1`= 11686, `flags_extra`=1, `ScriptName`='npc_council_liquid_ice'      WHERE  `entry`=45452;
UPDATE `creature_template` SET `modelid1`= 11686, `flags_extra`=1, `ScriptName`='npc_council_frozen_orb'      WHERE  `entry`=49518;
UPDATE `creature_template` SET `modelid1`= 11686, `flags_extra`=1, `ScriptName`='npc_council_flamestrike'     WHERE  `entry`=50297;

-- Spell Scripts Inserts
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (82860, 82817, 82813, 83500, 83581, 84948);
INSERT INTO `spell_linked_spell` VALUES (82860, -82762, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (82817,  82666, 1, 'ascendantCouncil'); 
INSERT INTO `spell_linked_spell` VALUES (82813,  82663, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (83500, -83581, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (83581, -83500, 1, 'ascendantCouncil');
INSERT INTO `spell_linked_spell` VALUES (84948,  39432, 2, 'ascendantCouncil');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (82746,92506,92507,92508);
INSERT INTO `spell_script_names` VALUES (82746, 'spell_council_glaciate');
INSERT INTO `spell_script_names` VALUES (92506, 'spell_council_glaciate');
INSERT INTO `spell_script_names` VALUES (92507, 'spell_council_glaciate');
INSERT INTO `spell_script_names` VALUES (92508, 'spell_council_glaciate');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (83067,92469,92470,92471);
INSERT INTO `spell_script_names` VALUES (83067, 'spell_council_thundershock');
INSERT INTO `spell_script_names` VALUES (92469, 'spell_council_thundershock');
INSERT INTO `spell_script_names` VALUES (92470, 'spell_council_thundershock');
INSERT INTO `spell_script_names` VALUES (92471, 'spell_council_thundershock');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (92067);
INSERT INTO `spell_script_names` VALUES (92067, 'spell_council_static_overload');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (83565,92544,92545,92546);
INSERT INTO `spell_script_names` VALUES (83565, 'spell_council_quake');
INSERT INTO `spell_script_names` VALUES (92544, 'spell_council_quake');
INSERT INTO `spell_script_names` VALUES (92545, 'spell_council_quake');
INSERT INTO `spell_script_names` VALUES (92546, 'spell_council_quake');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (82643,92527,92528,92529);
INSERT INTO `spell_script_names` VALUES (82643, 'spell_council_rising_flames');
INSERT INTO `spell_script_names` VALUES (92527, 'spell_council_rising_flames');
INSERT INTO `spell_script_names` VALUES (92528, 'spell_council_rising_flames');
INSERT INTO `spell_script_names` VALUES (92529, 'spell_council_rising_flames');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (83718,92541,92542,92543);
INSERT INTO `spell_script_names` VALUES (83718, 'spell_council_harden_skin');
INSERT INTO `spell_script_names` VALUES (92541, 'spell_council_harden_skin');
INSERT INTO `spell_script_names` VALUES (92542, 'spell_council_harden_skin');
INSERT INTO `spell_script_names` VALUES (92543, 'spell_council_harden_skin');
DELETE FROM `spell_script_names` WHERE `spell_id` IN ( 82660, 82665, 84915, 92497, 92498, 92499 );
INSERT INTO `spell_script_names` VALUES (82660, 'spell_council_burning_blood');
INSERT INTO `spell_script_names` VALUES (82665, 'spell_council_heart_of_ice');
INSERT INTO `spell_script_names` VALUES (84915, 'spell_council_liquid_ice');
INSERT INTO `spell_script_names` VALUES (92497, 'spell_council_liquid_ice');
INSERT INTO `spell_script_names` VALUES (92498, 'spell_council_liquid_ice');
INSERT INTO `spell_script_names` VALUES (92499, 'spell_council_liquid_ice');
