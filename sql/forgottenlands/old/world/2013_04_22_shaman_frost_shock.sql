-- Frost shock & Frozen Power Fix
DELETE FROM `spell_script_names` WHERE `spell_id`=8056;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(8056,"spell_sha_frost_shock");
