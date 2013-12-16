-- La spell 403 Lightning bolt, se procca la mastery, casta anche 45284 Lightning bolt. Idem per le altre due spell
-- Di seguito i coefficienti corretti per le tre spell che la mastery puo' modificare

-- Lightning bolt
UPDATE `spell_bonus_data` SET `direct_bonus`="0.536" WHERE `entry`=45284;
-- Chain Lightning
UPDATE `spell_bonus_data` SET `direct_bonus`="1.427" WHERE `entry`=45297;
-- Lava Burst
DELETE FROM `spell_bonus_data` WHERE `entry`=77451;
INSERT INTO `spell_bonus_data` VALUES
(77451,0.471,-1,-1,-1,"Shaman - LO Lava Burst");
