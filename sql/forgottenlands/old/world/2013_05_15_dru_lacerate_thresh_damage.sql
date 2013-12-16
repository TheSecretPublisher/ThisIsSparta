-- Lacerate
UPDATE `spell_bonus_data` SET `ap_bonus`=0.0552, `ap_dot_bonus`=0.00369 WHERE (`entry`=33745);

-- Thresh
DELETE FROM `spell_bonus_data` WHERE `entry`=77758;
INSERT INTO `spell_bonus_data` (`entry`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (77758, 0.0982, 0.0167, 'Druid - Thresh');