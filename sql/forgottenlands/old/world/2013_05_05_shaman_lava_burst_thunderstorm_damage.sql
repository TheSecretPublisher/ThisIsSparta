-- Lava Burst
UPDATE `spell_bonus_data` SET `direct_bonus`=0.628 WHERE (`entry`=51505);

-- Thunderstorm
DELETE FROM `spell_bonus_data` WHERE `entry`=51490;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (51490, 0.1714, -1, -1, -1, 'Shaman - Thunderstorm');