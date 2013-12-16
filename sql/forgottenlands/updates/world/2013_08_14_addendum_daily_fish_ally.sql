-- Quest 29344 Fish fer Squirky
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='53544');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='53544');
INSERT INTO `smart_scripts` VALUES (53544, 0, 1, 2, 8, 0, 100, 0, 62464, 0, 0, 0, 33, 53543, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='99431');
INSERT INTO `spell_linked_spell` VALUES (99431, 62464, 0, 'spell credit');

-- Quest 29322 Time for Slime
DELETE FROM `npc_spellclick_spells` WHERE (`npc_entry`='53517');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`) VALUES ('53517', '99328', '2');
UPDATE `creature_template` SET `npcflag`='16777216', `AIName`='SmartAI' WHERE (`entry`='53517');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='99328');
INSERT INTO `spell_linked_spell` VALUES (99328, 62464, 0, 'trigger for despawn');

DELETE FROM smart_scripts WHERE entryorguid IN (53517) AND source_type = 0;
INSERT INTO `smart_scripts` VALUES (53517, 0, 1, 0, 8, 0, 100, 0, 62464, 0, 0, 0, 41, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Despawn');