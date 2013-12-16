DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN(-99256, -100230, -100231, -100232);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (-99256, 99257, 'Torment fading applies Tormented');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (-100230, 99402, 'Torment fading applies Tormented');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (-100231, 99403, 'Torment fading applies Tormented');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (-100232, 99404, 'Torment fading applies Tormented');

UPDATE `creature_template` SET `difficulty_entry_1`=53587, `difficulty_entry_2`=53588, `difficulty_entry_3`=53589, `mechanic_immune_mask`=650854369 WHERE (`entry`=53494);

UPDATE `creature_template` SET `minlevel`=88, `maxlevel`=88, `exp`=3, `faction_A`=14, `faction_H`=14,  `speed_walk`=3.2, `speed_run`=2, `mindmg`=1225.5, `maxdmg`=1544.7, `attackpower`=1651, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768,`minrangedmg`=1160.9, `maxrangedmg`=1328.1, `rangedattackpower`=225, `Armor_mod`=11977, `mechanic_immune_mask`=635387903,  `flags_extra`=1, `ScriptName`='boss_baleroc' WHERE (`entry`=53587);


UPDATE `creature_template` SET `modelid1`=11686, `modelid2`=0, `minlevel`=85, `maxlevel`=85, `faction_A`=14, `faction_H`=14, `type_flags`=0, `ScriptName`='npc_shard_of_torment' WHERE (`entry`=53495);

DELETE FROM `spell_script_names` WHERE `spell_id` IN(99516, 99517);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (99516, 'spell_countdown');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (99517, 'spell_countdown_tick');
