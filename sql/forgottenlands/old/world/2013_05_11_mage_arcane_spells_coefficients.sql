-- Arcane Blast coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=1 WHERE `entry`=30451;
-- Arcane Explosion coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=0.186 WHERE `entry`=1449;
-- Arcane Barrage coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=0.907 WHERE `entry`=44425;
-- Arcane Missiles coefficient
DELETE FROM `spell_bonus_data` WHERE `entry`=5143;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(5143,0.278,-1,-1,-1,"Arcane Missiles");
