-- Add Vendor quest item
DELETE FROM `npc_vendor` WHERE (`entry`='5124') AND (`item`='69984') AND (`ExtendedCost`='0') AND (`type`='1');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`) VALUES ('5124', '13', '69984');

-- Quest 26177 Feeling Crabby?
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='42339');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('42339', '78975', '2');
UPDATE `creature_template` SET `npcflag`='16777216', `AIName`='SmartAI' WHERE (`entry`='42339');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='78975');
INSERT INTO `spell_linked_spell` VALUES (78975, 62464, 0, 'trigger for despawn');

DELETE FROM smart_scripts WHERE entryorguid IN (42339) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (42339, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');
