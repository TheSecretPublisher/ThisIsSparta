DELETE FROM `spell_script_names` WHERE `spell_id`=16979;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (16979,'spell_dru_feral_charge_bear');

DELETE FROM `spell_script_names` WHERE `spell_id`=49376;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES (49376,'spell_dru_feral_charge_cat');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= 81021 AND `spell_effect`=109881;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES (81021,109881,2,'Stampede (rank1)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= 81022 AND `spell_effect`=109881;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES (81022,109881,2,'Stampede (rank2)');