-- Healing Surge
UPDATE `spell_bonus_data` SET `direct_bonus`=0.4831 WHERE (`entry`=8004);

-- Healing Wave
UPDATE `spell_bonus_data` SET `direct_bonus`=0.402 WHERE (`entry`=331);

-- Greater Healing Wave
DELETE FROM `spell_bonus_data` WHERE `entry`=77472;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (77472, 0.9672, -1, -1, -1, 'Shaman - Greater Healing Wave');

-- Chain Heal
UPDATE `spell_bonus_data` SET `direct_bonus`=0.3535 WHERE (`entry`=1064);

-- Earth Shield
UPDATE `spell_bonus_data` SET `direct_bonus`=0.1949 WHERE (`entry`=974);

-- Riptide
UPDATE `spell_bonus_data` SET `direct_bonus`=0.238, `dot_bonus`=0.113 WHERE (`entry`=61295);

-- Earthliving Weapon
DELETE FROM `spell_bonus_data` WHERE `entry`=51945;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (51945, 0.058, -1, -1, -1, 'Shaman - Earthliving Weapon');

-- Cleansing Waters
DELETE FROM `spell_bonus_data` WHERE `entry`=86961;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (86961, 0.141, -1, -1, -1, 'Shaman - Cleansing Waters (Rank 1)');
DELETE FROM `spell_bonus_data` WHERE `entry`=86958;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (86958, 0.282, -1, -1, -1, 'Shaman - Cleansing Waters (Rank 2)');

-- Healing Rain
UPDATE `spell_bonus_data` SET `direct_bonus`=0.076 WHERE (`entry`=73921);

-- Unleash Life
DELETE FROM `spell_bonus_data` WHERE `entry`=73685;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (73685, 0.202, -1, -1, -1, 'Shaman - Unleash Life');

