DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-48517 AND `spell_effect`=-94338;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (-48517, -94338, 'Eclipse fading removes Sunfire');

DELETE FROM `spell_bonus_data` WHERE `entry`=93402;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (93402, 0.18, 0.18, -1, -1, 'Sunfire');