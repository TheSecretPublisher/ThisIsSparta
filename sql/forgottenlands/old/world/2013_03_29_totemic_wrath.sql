UPDATE `creature_template` SET `spell2` = 77746 WHERE `entry` IN (2523, 5929, 15439, 5950);
 
DELETE FROM spell_linked_spell WHERE spell_trigger=77747 AND spell_effect=-52109;
INSERT INTO `spell_linked_spell` VALUES (77747, -52109, 0, 'Shaman - Totemic Wrath removes Flametongue');

DELETE FROM `spell_script_names` WHERE `spell_id` = 77746;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(77746, 'spell_sha_totemic_wrath');
