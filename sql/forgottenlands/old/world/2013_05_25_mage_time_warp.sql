DELETE FROM spell_linked_spell WHERE spell_trigger=80353 AND spell_effect=57724;
DELETE FROM spell_script_names WHERE spell_id=80353;
INSERT INTO `spell_script_names` VALUES (80353, 'spell_mage_time_warp');
