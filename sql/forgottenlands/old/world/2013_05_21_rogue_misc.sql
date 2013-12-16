-- Venomous wound
DELETE FROM spell_bonus_data WHERE entry IN (79136);
INSERT INTO `spell_bonus_data` (`entry`, ap_bonus, `ap_dot_bonus`, `comments`) VALUES (79136, 0.176, 0.176, 'Venomous wound');