DELETE FROM `creature_text` WHERE `entry` = 45992;
INSERT INTO `creature_text` VALUES ('45992', 0, 0, '%s takes a deep breath!', '41', 0, 0, 0, 0, 0, 'Valiona warn deep breath'); 
UPDATE `creature_template` SET `minlevel` = '88' , `maxlevel` = '88', `modelid1` = '11686' , `modelid2` = 0 , `faction_A` = '14' , `faction_H` = '14'  WHERE `entry` = '40718'; 
UPDATE `creature_template` SET `minlevel` = '88' , `maxlevel` = '88', `modelid1` = '11686' , `modelid2` = 0 , `faction_A` = '14' , `faction_H` = '14'  WHERE `entry` = '46448'; 

--engulfing magic and shifting reality
DELETE FROM `spell_proc_event` WHERE `entry` IN (86622, 95639, 95640, 95641);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES 
(86622, 0, 0, 0, 0, 0, 349524, 0, 0, 100, 0),
(95639, 0, 0, 0, 0, 0, 349524, 0, 0, 100, 0),
(95640, 0, 0, 0, 0, 0, 349524, 0, 0, 100, 0),
(95641, 0, 0, 0, 0, 0, 349524, 0, 0, 100, 0);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (86631, 86406, 92927, 92928, 93055, 86199, 92868, 92869, 92870); 
INSERT INTO `spell_script_names` VALUES (86631, 'spell_engulfing_magic');
INSERT INTO `spell_script_names` VALUES (86406, 'spell_shifting_reality'); 
INSERT INTO `spell_script_names` VALUES (92927, 'spell_shifting_reality'); 
INSERT INTO `spell_script_names` VALUES (92928, 'spell_shifting_reality'); 
INSERT INTO `spell_script_names` VALUES (93055, 'spell_shifting_reality'); 
INSERT INTO `spell_script_names` VALUES (86199, 'spell_shifting_reality');
INSERT INTO `spell_script_names` VALUES (92868, 'spell_shifting_reality');
INSERT INTO `spell_script_names` VALUES (92869, 'spell_shifting_reality');
INSERT INTO `spell_script_names` VALUES (92870, 'spell_shifting_reality');

--blackout
DELETE FROM `spell_script_names` WHERE `spell_id` IN (86788, 92876, 92877, 92878, 86840); 
INSERT INTO `spell_script_names` VALUES 
(86788, 'spell_blackout'),
(92876, 'spell_blackout'),
(92877, 'spell_blackout'),
(92878, 'spell_blackout'),
(86840, 'spell_devouring_flame');
--devouring flame dummy
UPDATE `creature_template` SET `modelid1`=11686, `minlevel`=85, `maxlevel`=85, `exp`=3, `Health_mod`=20000, `flags_extra`=2 WHERE  `entry`=46588;

--hp
UPDATE `creature_template` SET `faction_A` = '16' , `faction_H` = '16', `InhabitType` = '5' , `Health_mod` = '300'   WHERE `entry` = '45992'; --10n
UPDATE `creature_template` SET `faction_A` = '16' , `faction_H` = '16', `InhabitType` = '5' , `Health_mod` = '300'   WHERE `entry` = '45993'; --10n
UPDATE `creature_template` SET `faction_A` = '16' , `faction_H` = '16', `InhabitType` = '5' , `Health_mod` = '912'   WHERE `entry` = '49897'; --25n
UPDATE `creature_template` SET `faction_A` = '16' , `faction_H` = '16', `InhabitType` = '5' , `Health_mod` = '912'   WHERE `entry` = '49903'; --25n
UPDATE `creature_template` SET `faction_A` = '16' , `faction_H` = '16', `InhabitType` = '5' , `Health_mod` = '7200'  WHERE `entry` = '49898'; --10h
UPDATE `creature_template` SET `faction_A` = '16' , `faction_H` = '16', `InhabitType` = '5' , `Health_mod` = '7200'  WHERE `entry` = '49904'; --10h
UPDATE `creature_template` SET `faction_A` = '16' , `faction_H` = '16', `InhabitType` = '5' , `Health_mod` = '25000' WHERE `entry` = '49899'; --25h
UPDATE `creature_template` SET `faction_A` = '16' , `faction_H` = '16', `InhabitType` = '5' , `Health_mod` = '25000' WHERE `entry` = '49905'; --25h

--loot
DELETE FROM `creature_loot_template` WHERE  `entry` IN (45992, 45993, 49897, 49898, 49897, 49903, 49904, 49905);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(45993, 0, 100, 1, 1, -45993, 3),
(49903, 0, 100, 1, 1, -45993, 6),
(49904, 0, 100, 1, 1, -49904, 3),
(49905, 0, 100, 1, 1, -49904, 6);

DELETE FROM `reference_loot_template` WHERE  `entry` IN (45993, 49904 );
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(45993, 59512, 0, 1, 1, 1, 1),
(45993, 59516, 0, 1, 1, 1, 1),
(45993, 59519, 0, 1, 1, 1, 1),
(45993, 63534, 0, 1, 1, 1, 1),
(45993, 63535, 0, 1, 1, 1, 1),
(45993, 63536, 0, 1, 1, 1, 1),
(45993, 63531, 0, 1, 1, 1, 1),
(45993, 63532, 0, 1, 1, 1, 1),
(45993, 63533, 0, 1, 1, 1, 1),
(45993, 59517, 0, 1, 1, 1, 1),
(45993, 59518, 0, 1, 1, 1, 1),
(45993, 59515, 0, 1, 1, 1, 1),
(49904, 65107, 0, 1, 1, 1, 1), 
(49904, 65106, 0, 1, 1, 1, 1),
(49904, 65109, 0, 1, 1, 1, 1), 
(49904, 65096, 0, 1, 1, 1, 1), 
(49904, 65095, 0, 1, 1, 1, 1), 
(49904, 65094, 0, 1, 1, 1, 1), 
(49904, 65091, 0, 1, 1, 1, 1), 
(49904, 65108, 0, 1, 1, 1, 1),
(49904, 65093, 0, 1, 1, 1, 1), 
(49904, 65105, 0, 1, 1, 1, 1),
(49904, 65112, 0, 1, 1, 1, 1), 
(49904, 65092, 0, 1, 1, 1, 1);

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (8000015, 8000016, 8000017, 8000018);
INSERT INTO `gameobject_loot_template` VALUES 
(8000016, 1, 100, 1, 0, -45993, 3),
(8000015, 1, 100, 1, 0, -45993, 6),
(8000017, 1, 100, 1, 0, -49904, 3),
(8000018, 1, 100, 1, 0, -49904, 6);


--spawn hero
UPDATE `creature` SET `spawnMask` = '15' WHERE `id` = '49864'; --twilight fiend
UPDATE `creature` SET `spawnMask` = '15' WHERE `id` = '46304'; --unstable twilight 
UPDATE `creature` SET `spawnMask` = '15' WHERE `id` = '46301'; --portal

delete from `creature` where `id` in (45993, 45992, 43686, 43687, 43688, 43689, 43735);
insert into `creature`  values(NULL,'45993','671','15','65535','0','0','-741.195','-754.538','836.707','1.57','86400','0','0','1','0','0','0','0','0');
insert into `creature`  values(NULL,'45992','671','15','65535','0','0','-740.000','-614.592','836.707','4.72','86400','0','0','1','0','0','0','0','0');
insert into `creature`  values(NULL,'43687','671','15','65535','0','0','-1049.9','-565.2','835.3','5.88','86400','0','0','1','0','0','0','0','0');
insert into `creature`  values(NULL,'43688','671','15','65535','0','0','-1049.9','-565.2','835.3','5.88','86400','0','0','1','0','0','0','0','0');
insert into `creature`  values(NULL,'43686','671','15','65535','0','0','-1049.9','-600.15','835.3','0.40','86400','0','0','1','0','0','0','0','0');
insert into `creature`  values(NULL,'43689','671','15','65535','0','0','-1049.9','-600.15','835.3','0.40','86400','0','0','1','0','0','0','0','0');
insert into `creature`  values(NULL,'43735','671','15','65535','0','0','-1056.0','-582.15','835.3','0.0','86400','0','0','1','0','0','0','0','0');
