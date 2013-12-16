UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `ScriptName`='npc_flaming_orb' WHERE `entry`=45322;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 92283 AND `spell_effect` = 84714;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (92283, 84714, 'Frostfire Orb Summon');
INSERT INTO `spell_linked_spell` VALUES (84726, 92294, 2, 'Frostfire Orb Override');
INSERT INTO `spell_linked_spell` VALUES (84727, 92294, 2, 'Frostfire Orb Override');
