DELETE FROM spell_script_names WHERE ScriptName='spell_sha_earth_shield';

DELETE FROM spell_bonus_data WHERE entry in(974, 379);
INSERT INTO `spell_bonus_data` VALUES (379, 0.286, 0, 0, 0, 'Earth Shield - Triggered heal');
