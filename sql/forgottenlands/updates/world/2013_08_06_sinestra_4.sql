DELETE FROM `conditions` WHERE `SourceEntry` IN (88146, 92950);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`) VALUES 
(13, 1, 88146, 31, 3, 48050),
(13, 1, 92950, 31, 3, 48050);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (88146, 92950);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(88146, 'spell_sinestra_twilight_essence'),
(92950, 'spell_sinestra_twilight_essence');