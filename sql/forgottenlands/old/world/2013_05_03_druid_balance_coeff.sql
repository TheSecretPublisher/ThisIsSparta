-- Starsurge
DELETE FROM `spell_bonus_data` WHERE `entry`=78674;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (78674, 1.228, -1, -1, -1, 'Druid - Starsurge');

-- Starfire
UPDATE `spell_bonus_data` SET `direct_bonus`=1.23 WHERE (`entry`=2912);

-- Wrath
UPDATE `spell_bonus_data` SET `direct_bonus`=0.879 WHERE (`entry`=5176);

-- Insect Swarm
UPDATE `spell_bonus_data` SET `dot_bonus`=0.13 WHERE (`entry`=5570);

-- Moonfire
UPDATE `spell_bonus_data` SET `direct_bonus`=0.18, `dot_bonus`=0.18 WHERE (`entry`=8921);

-- Typhoon
UPDATE `spell_bonus_data` SET `direct_bonus`=0.126 WHERE (`entry`=61391);

-- Hurricane
UPDATE `spell_bonus_data` SET `direct_bonus`=0.095 WHERE (`entry`=42231);

-- Starfall
UPDATE `spell_bonus_data` SET `direct_bonus`=0.247 WHERE (`entry`=50288);