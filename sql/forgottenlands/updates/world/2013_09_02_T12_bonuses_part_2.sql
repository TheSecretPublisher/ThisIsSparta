DELETE FROM `spell_proc_event` WHERE `entry` in (99093, 99174, 99057, 99074, 99239, 99234);
-- paladin retri
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `CustomChance`) VALUES ('99093', '10', '32768', '100'); 
-- rogue
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `procEx`, `CustomChance`) VALUES ('99174', '20', '2', '100'); 
-- hunter
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `SpellFamilyMask2`, `CustomChance`) VALUES ('99057', '9', '1', '4194304', '10'); 
 -- paladin protection
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `CustomChance`) VALUES ('99074', '10', '1048576', '100'); 
DELETE FROM `spell_bonus_data` WHERE `entry`= 99075;
INSERT INTO `spell_bonus_data` (`entry`, `comments`) VALUES ('99075', 'Paladin- t12 2p protection');
-- warrior protection
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `CustomChance`) VALUES ('99239', '4', '512', '100'); 
DELETE FROM `spell_bonus_data` WHERE `entry`= 99240;
INSERT INTO `spell_bonus_data` (`entry`, `comments`) VALUES ('99240', 'Warrior- t12 2p protection');
-- wwarrior dps
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `CustomChance`) VALUES ('99234', '4', '65536', '128', '100'); 

 
