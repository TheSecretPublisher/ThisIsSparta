DELETE FROM spell_linked_spell WHERE spell_trigger = 51490 AND spell_effect = 100955;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51490, 100955, 1, 'shaman thunderstorm dazed effect');
DELETE FROM spell_script_names WHERE spell_id = 51490;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (51490, 'spell_sha_thunderstorm');