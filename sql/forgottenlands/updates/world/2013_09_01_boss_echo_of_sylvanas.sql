UPDATE `creature_template` SET `ScriptName`='boss_echo_of_sylvanas' WHERE (`entry`=54123);
DELETE FROM `creature_template_addon` WHERE (`entry`=54123);
DELETE FROM `spell_script_names` WHERE `spell_id`=100865;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (100865, 'spell_wracking_pain_link');

UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=14, `faction_H`=14, `modelid2`=0, `ScriptName`='mob_ghoul_summoner' WHERE (`entry`=54197);
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `ScriptName`='mob_risen_ghoul' WHERE (`entry`=54191);
