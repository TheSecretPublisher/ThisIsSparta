-- Frostbolt coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=0.943 WHERE `entry`=116;
-- Ice Lance  coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=0.378 WHERE `entry`=30455;
-- Blizzard coefficient
DELETE FROM `spell_bonus_data` WHERE `entry`=10;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(10,0.162,-1,-1,-1,"Blizzard - Mage");
-- Deep Freeze coefficient
DELETE FROM `spell_bonus_data` WHERE `entry`=44572;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(44572,2.058,-1,-1,-1,"Deep Freeze - Mage");
-- Flame Orb frostfire damage coefficient
DELETE FROM `spell_bonus_data` WHERE `entry`=84721;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(84721,0.134,-1,-1,-1,"Frostfire Orb spell");
