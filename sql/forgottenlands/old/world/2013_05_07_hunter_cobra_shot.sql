-- Cobra Shot & Serpent Sting Debuff (+6 secs per shot)
DELETE FROM `spell_script_names` WHERE `spell_id`=77767;
INSERT INTO `spell_script_names` VALUES
(77767,'spell_hun_cobra_shot');
