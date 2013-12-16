DELETE FROM `spell_proc_event` WHERE `entry` in (99019, 99001, 99155);
-- balance druid
INSERT INTO `spell_proc_event` VALUES ('99019', '0', '0', '0', '0', '0', '0', '0', '0', '20', '45');  
UPDATE `creature_template` SET `ScriptName`= 'npc_t12_burning_treant' WHERE `entry` = 53432;  -- druid npc
-- feral druid
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `CustomChance`) VALUES ('99001', '7', '34816', '1088', '100');
-- shadow priest
INSERT INTO `world`.`spell_proc_event` (`entry`, `procFlags`, `CustomChance`) VALUES ('99155', '20', '100'); 
