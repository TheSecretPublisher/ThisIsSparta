-- Water Totem
UPDATE `creature_template` SET `unit_flags`=4, `Health_mod`=2381, `faction_A`=1890, `faction_H`=1890, `spell1`=97502 WHERE (`entry`=52755);
 
-- Spirit Lynx
UPDATE `creature_template` SET `Health_mod`=273.4, `mechanic_immune_mask`=0 WHERE (`entry`=24143);

-- Lightning Totem
UPDATE `creature_template` SET `unit_flags`=4, `faction_A`=1890, `faction_H`=1890, `Health_mod`=5.69 WHERE (`entry`=24224);

-- Halazzi
UPDATE `creature_template` SET `Health_mod`=50 WHERE (`entry`=23577);