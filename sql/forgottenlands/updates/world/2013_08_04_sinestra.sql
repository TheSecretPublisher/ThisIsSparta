DELETE FROM `spell_script_names` WHERE `spell_id` IN (89421, 92955, 92956, 89435);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(89435, 'spell_sinestra_wrack_jump'),
(92956, 'spell_sinestra_wrack_jump'),
(89421, 'spell_sinestra_wreck'),
(92955, 'spell_sinestra_wreck');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (89435, 92956);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,89435,0,18,1,0,0,0, '', 'Wrack - target player'),
(13,0,92956,0,18,1,0,0,0, '', 'Wrack - target player');

UPDATE `creature_template` SET `AIName`='', `ScriptName`='boss_sinestra' WHERE  `entry`=45213 LIMIT 1;