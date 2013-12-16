UPDATE `creature_template` SET `Health_mod`=55 WHERE (`entry`=23574);
UPDATE `creature_template` SET `Health_mod`=65 WHERE (`entry`=23576);

UPDATE `creature_loot_template` SET `item`=1 WHERE (`entry`=24239) AND (`item`=34078);
UPDATE `creature_loot_template` SET `item`=1 WHERE (`entry`=23863) AND (`item`=34079);
DELETE FROM `creature_loot_template` WHERE `entry` IN (23574, 23576, 23578, 23577, 24239, 23863) AND `item`=29434;
DELETE FROM `creature_loot_template` WHERE `entry` IN (23574, 23576, 23578, 23577, 24239, 23863) AND `item`=33307;
DELETE FROM `creature_loot_template` WHERE `entry` = 23863 AND `item`=33102;
UPDATE `creature_loot_template` SET `maxcount`=1 WHERE `entry` IN (23574, 23576, 23578, 23577, 24239, 23863) AND `item`=1;

-- Akilzon
DELETE FROM `reference_loot_template` WHERE `entry`=34150;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34150, 69549, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34150, 69552, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34150, 69551, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34150, 69550, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34150, 69553, 0, 1);

-- Nalorakk
DELETE FROM `reference_loot_template` WHERE `entry`=34151;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34151, 69557, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34151, 69554, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34151, 69555, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34151, 69556, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34151, 69558, 0, 1);

-- Janalai
DELETE FROM `reference_loot_template` WHERE `entry`=34152;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34152, 69559, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34152, 69560, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34152, 69563, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34152, 69562, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34152, 69561, 0, 1);

-- Halazzi
DELETE FROM `reference_loot_template` WHERE `entry`=34153;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34153, 69566, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34153, 69565, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34153, 69564, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34153, 69568, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34153, 69567, 0, 1);

-- Hex Lord Malacrass
DELETE FROM `creature_loot_template` WHERE (`entry`=24239) AND (`item`=69762);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (24239, 69762, 1);
DELETE FROM `creature_loot_template` WHERE (`entry`=24239) AND (`item`=69264);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (24239, 69264, 17);

DELETE FROM `reference_loot_template` WHERE `entry`=34078;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34078, 69572, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34078, 69571, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34078, 69569, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34078, 69570, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34078, 69573, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34078, 70080, 0, 1);

-- Daakara
DELETE FROM `creature_loot_template` WHERE (`entry`=23863) AND (`item`=52078);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (23863, 52078, 100);

DELETE FROM `reference_loot_template` WHERE `entry`=34079;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34079, 69581, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34079, 69577, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34079, 69576, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34079, 69582, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34079, 69574, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34079, 69575, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34079, 69579, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34079, 69578, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34079, 69583, 0, 1);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) VALUES (34079, 69580, 0, 1);

DELETE FROM `creature_onkill_currency` WHERE `creature_id` IN (23574, 23576, 23578, 23577, 24239, 23863);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES (23574, 395, 70);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES (23576, 395, 70);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES (23578, 395, 70);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES (23577, 395, 70);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES (24239, 395, 70);
INSERT INTO `creature_onkill_currency` (`creature_id`, `CurrencyId1`, `CurrencyCount1`) VALUES (23863, 395, 70);
