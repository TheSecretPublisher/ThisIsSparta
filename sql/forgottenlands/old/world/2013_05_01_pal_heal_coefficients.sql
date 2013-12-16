-- Flash of Light
UPDATE `spell_bonus_data` SET `direct_bonus`=0.8632 WHERE (`entry`=19750);

-- Holy Light
UPDATE `spell_bonus_data` SET `direct_bonus`=0.432 WHERE (`entry`=635);

-- Divine Light
DELETE FROM `spell_bonus_data` WHERE `entry`=82326;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (82326, 1.15306, -1, -1, -1, 'Paladin - Divine Light');

-- Holy Shock
UPDATE `spell_bonus_data` SET `direct_bonus`=0.2689 WHERE (`entry`=25914);

-- Word of Glory
DELETE FROM `spell_bonus_data` WHERE `entry`=85673;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (85673, 0.209, -1, -1, -1, 'Paladin - Word of Glory');

-- Light of Dawn
DELETE FROM `spell_bonus_data` WHERE `entry`=85222;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (85222, 0.132, -1, -1, -1, 'Paladin - Light of Dawn');

-- Holy Radiance
DELETE FROM `spell_bonus_data` WHERE `entry`=86452;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (86452, 0.067, -1, -1, -1, 'Paladin - Holy Radiance');