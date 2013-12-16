-- Fireball coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=1.236 WHERE `entry`=133;
-- Frostfire Bolt coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=0.977 WHERE `entry`=44614;
-- Fire Blast coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=0.429 WHERE `entry`=2136;
-- Living Bomb coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=0.515, `dot_bonus`=0.258 WHERE `entry`=44457;
-- Pyroblast coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=1.545, `dot_bonus`=0.18 WHERE `entry`=11366;
-- Scorch coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=0.512 WHERE `entry`=2948;
-- Blast Wave coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=0.143 WHERE `entry`=11113;
-- Flamestrike coefficient
UPDATE `spell_bonus_data` SET `direct_bonus`=0.146, `dot_bonus`=0.061 WHERE `entry`=2120;
-- Flame Orb damage coefficient
DELETE FROM `spell_bonus_data` WHERE `entry`=82739;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(82739,0.134,-1,-1,-1,"Flame Orb spell");
-- Flame Orb creatures (fire and frost) must can fly
UPDATE `creature_template` SET `InhabitType`=4 WHERE `ScriptName`="npc_flaming_orb";
