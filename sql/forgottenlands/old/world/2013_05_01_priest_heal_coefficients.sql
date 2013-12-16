-- Heal
DELETE FROM `spell_bonus_data` WHERE `entry`=2050;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (2050, 0.3624, -1, -1, -1, 'Priest - Heal');

-- Power Word: Shield
UPDATE `spell_bonus_data` SET `direct_bonus`=0.87 WHERE (`entry`=17);

-- Renew
UPDATE `spell_bonus_data` SET `dot_bonus`=0.131 WHERE (`entry`=139);

-- Flash Heal
UPDATE `spell_bonus_data` SET `direct_bonus`=0.7248 WHERE (`entry`=2061);

-- Greater Heal
UPDATE `spell_bonus_data` SET `direct_bonus`=0.9672 WHERE (`entry`=2060);

-- Binding Heal
UPDATE `spell_bonus_data` SET `direct_bonus`=0.543 WHERE (`entry`=32546);

-- Prayer of Healing
UPDATE `spell_bonus_data` SET `direct_bonus`=0.34 WHERE (`entry`=596);

-- Holy Nova
UPDATE `spell_bonus_data` SET `direct_bonus`=0.196 WHERE (`entry`=15237);

-- Divine Hymn
UPDATE `spell_bonus_data` SET `direct_bonus`=0.429 WHERE (`entry`=64844);

-- Penance
UPDATE `spell_bonus_data` SET `direct_bonus`=0.321 WHERE (`entry`=47750);

-- Circle of Healing
UPDATE `spell_bonus_data` SET `direct_bonus`=0.2 WHERE (`entry`=34861);

-- Lightwell
UPDATE `spell_bonus_data` SET `dot_bonus`=0.354, `comments`='Priest - Lightwell Renew' WHERE (`entry`=7001);

-- Holy Word: Serenity
DELETE FROM `spell_bonus_data` WHERE `entry`=88684;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (88684, 0.604, -1, -1, -1, 'Priest - Holy Word: Serenity');

-- Holy Word: Sanctuary
DELETE FROM `spell_bonus_data` WHERE `entry`=88686;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (88686, 0.03, -1, -1, -1, 'Priest - Holy Word: Sanctuary');