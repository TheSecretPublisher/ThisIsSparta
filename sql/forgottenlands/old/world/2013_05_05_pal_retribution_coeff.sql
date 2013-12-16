-- Holy Wrath
UPDATE `spell_bonus_data` SET `direct_bonus`=0.61, `ap_bonus`=-1 WHERE (`entry`=2812);

-- Hammer of Wrath
UPDATE `spell_bonus_data` SET `ap_bonus`=0.5 WHERE (`entry`=24275);

-- Consecration
UPDATE `spell_bonus_data` SET `dot_bonus`=0.026, `ap_dot_bonus`=0.026 WHERE (`entry`=26573);