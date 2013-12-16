UPDATE `creature_template` SET `ScriptName`='boss_hex_lord_malacrass' WHERE (`entry`=24239);

UPDATE `creature_template` SET `ScriptName`='npc_fire_nova_totem' WHERE (`entry`=24320);

UPDATE `creature_template` SET `ScriptName`='npc_blood_worms', `faction_A`=1890, `faction_H`=1890, `speed_run`=0.5, `Health_mod`=3.78  WHERE (`entry`=52827);

UPDATE `creature_template` SET `faction_A`=1890, `faction_H`=1890,`dmg_multiplier`=7.5, `Health_mod`=3.78, `ScriptName`='npc_amani_snake' WHERE (`entry`=24338);
UPDATE `creature_template` SET 
    `mindmg` = 400, 
    `maxdmg` = 500, 
    `attackpower` = ROUND((`mindmg` + `maxdmg`) / 4 * 7), 
    `mindmg` = ROUND(`mindmg` - `attackpower` / 7), 
    `maxdmg` = ROUND(`maxdmg` - `attackpower` / 7) 
  WHERE `entry` = 24338;

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=97643 AND `spell_effect`=97644;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (97643, 97644, 0, 'Smoke Bomb (Hex Lord Malacrass)');

DELETE FROM `creature` WHERE `guid`=220826 AND `id` = 24240;
DELETE FROM `creature` WHERE `guid`=220828 AND `id` = 24246;

UPDATE `creature_template` SET `exp`=3, `minlevel`=85, `maxlevel`=85, `faction_A`=1890, `faction_H`=1890 WHERE (`entry`=24244);
UPDATE `creature_template` SET `exp`=3 WHERE (`entry`=24242);
