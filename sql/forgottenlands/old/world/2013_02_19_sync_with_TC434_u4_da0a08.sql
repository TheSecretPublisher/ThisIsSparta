UPDATE `version` SET
    `db_version` = 'TDB 434.04',
    `cache_id` = 4
WHERE
    `db_version` = 'TDB 434.03'
LIMIT 1;
DELETE FROM `gameobject_template` WHERE `entry` IN (209895, 206789, 206793, 206808, 206802, 206806, 206792, 206790, 206812, 206814, 206791, 206822, 206816, 206818, 206820, 206810, 206824, 206804, 206794, 206796, 206798, 206795, 206819, 206821, 206805, 206801, 206813, 206811, 206799, 206817, 206807, 206809, 206823, 206815, 206800, 206797, 206803, 204041, 204042);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `unkInt32`, `WDBVerified`) VALUES
(209895, 3, 11020, 'Greater Cache of the Aspects', '', '', '', 1634, 41159, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 85, 0, 0, 0, 0, 1291, 0, 0, 0, 0, 0, 0, 2.25, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206789, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206793, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206808, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206802, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206806, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206792, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206790, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206812, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206814, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206791, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206822, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206816, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206818, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206820, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206810, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206824, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206804, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206794, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206796, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206798, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206795, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206819, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206821, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206805, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206801, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206813, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206811, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206799, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206817, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206807, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206809, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206823, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206815, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206800, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206797, 5, 9657, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(206803, 5, 2354, 'Pathway Light', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(204041, 10, 472, 'Powder Keg', '', '', '', 0, 0, 0, 3000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595), -- -Unknown-
(204042, 10, 9277, 'Detonator', '', '', '', 0, 0, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595); -- -Unknown-


UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=193952; -- Surface Portal
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=193195; -- Pulsing Crystal
UPDATE `gameobject_template` SET `data20`=80, `WDBVerified`=15595 WHERE `entry`=201873; -- Gunship Armory
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=202239; -- Deathbringer's Cache
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=202106; -- Frost Trap
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=201959; -- Cache of the Dreamwalker
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=202396; -- Ice Wall
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=192889; -- Kirin Tor Monthly (November Issue)
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=192871; -- The Archmage Antonidas - Part II
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=204966; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=206876; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=206872; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=206869; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=206870; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=206871; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=206873; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=206874; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=206875; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=205160; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=208298; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=207429; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=207430; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=207427; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=210079; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=180400; -- PVP HOLIDAY ALLIANCE CTF
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=203818; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=202952; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=202619; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=202968; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=204225; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=202969; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=204221; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=203091; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=204220; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=192884; -- Portals are NOT Garbage Bins!
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=204575; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=204282; -- -Unknown-
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=20900; -- Anvil
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=1951; -- Campfire
UPDATE `gameobject_template` SET `WDBVerified`=15595 WHERE `entry`=179697; -- Arena Treasure Chest


UPDATE `creature_template` SET `HoverHeight`=4.5 WHERE `entry`=57795; -- Twilight Assaulter
UPDATE `creature_template` SET `HoverHeight`=4.95 WHERE `entry`=56250; -- Twilight Assaulter
UPDATE `creature_template` SET `HoverHeight`=4.95 WHERE `entry`=56251; -- Twilight Assaulter
UPDATE `creature_template` SET `HoverHeight`=5.85 WHERE `entry`=56252; -- Twilight Assaulter
UPDATE `creature_template` SET `VehicleId`=1113 WHERE `entry`=45455; -- Slipstream
UPDATE `creature_template` SET `baseattacktime`=1000 WHERE `entry`=38913; -- Twilight Vanquisher
UPDATE `creature_template` SET `baseattacktime`=1333 WHERE `entry`=39855; -- Azureborne Seer
UPDATE `creature_template` SET `baseattacktime`=1538 WHERE `entry`=47990; -- Stormcaller Jalara
UPDATE `creature_template` SET `baseattacktime`=1538 WHERE `entry`=47991; -- Earthcaller Yevaa
UPDATE `creature_template` SET `baseattacktime`=1538 WHERE `entry`=47995; -- Yuldris Smolderfury
UPDATE `creature_template` SET `baseattacktime`=1538 WHERE `entry`=47998; -- Seer Galekk
UPDATE `creature_template` SET `baseattacktime`=1538 WHERE `entry`=7379; -- Deadwind Ogre Mage
UPDATE `creature_template` SET `baseattacktime`=1667 WHERE `entry`=56694; -- The Dragon Soul
UPDATE `creature_template` SET `baseattacktime`=2000 WHERE `entry`=38415; -- Lord Darius Crowley
UPDATE `creature_template` SET `baseattacktime`=2000 WHERE `entry`=40291; -- Azureborne Seer
UPDATE `creature_template` SET `baseattacktime`=2000 WHERE `entry`=40320; -- Valiona
UPDATE `creature_template` SET `baseattacktime`=2000 WHERE `entry`=40484; -- Erudax
UPDATE `creature_template` SET `baseattacktime`=2000 WHERE `entry`=41095; -- Twilight Drake
UPDATE `creature_template` SET `baseattacktime`=2000, `dynamicflags`=0 WHERE `entry`=37132; -- Ymirjar Battle-Maiden
UPDATE `creature_template` SET `baseattacktime`=2000, `dynamicflags`=0 WHERE `entry`=37133; -- Ymirjar Warlord
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39406; -- Instructor Devoran
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39412; -- Instructor Mordenn
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39451; -- Instructor Cargall
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39618; -- Twilight Recruiter Maruk
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39621; -- Elementalist Ortell
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39749; -- Twilight Enforcer
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39879; -- Aeolos
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=40412; -- Butcher
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=40491; -- High Cultist Azennios
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000, `unit_class`=2, `unit_flags`=33555200 WHERE `entry`=42452; -- Irradiator 3000 Image
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=39453; -- Immolated Supplicant
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=39828; -- Twilight Guard
UPDATE `creature_template` SET `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768, `unit_flags2`=0 WHERE `entry`=40536; -- Twilight Cultist
UPDATE `creature_template` SET `baseattacktime`=2400, `unit_flags2`=2048, `dynamicflags`=12 WHERE `entry`=57158; -- Earthen Destroyer
UPDATE `creature_template` SET `baseattacktime`=2400, `unit_flags2`=2048, `dynamicflags`=12 WHERE `entry`=57160; -- Ancient Water Lord
UPDATE `creature_template` SET `faction_A`=113, `faction_H`=113, `unit_flags`=256 WHERE `entry`=7784; -- Homing Robot OOX-17/TN
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE `entry`=39390; -- Twilight Drake
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39658; -- Spinescale Basilisk
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=40403; -- Spinescale Matriarch
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `speed_run`=0.9920629, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=570688320, `unit_flags2`=2049, `dynamicflags`=32 WHERE `entry`=51123; -- Pool of Blood
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `speed_run`=0.9920629, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=570688320, `unit_flags2`=2049, `dynamicflags`=32 WHERE `entry`=51124; -- Pool of Blood - small
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `speed_run`=1.388889, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39724; -- Horrorguard
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `speed_walk`=0.777776, `speed_run`=0.9920629, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39726; -- Garnoth, Fist of the Legion
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `speed_walk`=1.555556, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=46991; -- Unbound Fire Elemental
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16 WHERE `entry`=37011; -- The Damned
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16, `rangeattacktime`=2000, `dynamicflags`=0 WHERE `entry`=8282; -- Highlord Mastrogonde
UPDATE `creature_template` SET `faction_A`=1770, `faction_H`=1770, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=39342; -- Twilight Supplicant
UPDATE `creature_template` SET `faction_A`=1770, `faction_H`=1770, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=39391; -- Twilight Neophyte
UPDATE `creature_template` SET `faction_A`=1770, `faction_H`=1770, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768, `unit_flags2`=0 WHERE `entry`=46974; -- Failed Recruit
UPDATE `creature_template` SET `faction_A`=1770, `faction_H`=1770, `npcflag`=16777216, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768, `unit_flags2`=0 WHERE `entry`=39619; -- Twilight Recruit
UPDATE `creature_template` SET `faction_A`=1847, `faction_H`=1847 WHERE `entry`=45007; -- Enslaved Bandit
UPDATE `creature_template` SET `faction_A`=190, `faction_H`=190, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=40922; -- Okrog
UPDATE `creature_template` SET `faction_A`=190, `faction_H`=190, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=39752; -- Failed Supplicant
UPDATE `creature_template` SET `faction_A`=190, `faction_H`=190, `unit_flags`=570687488, `unit_flags2`=2049, `dynamicflags`=32 WHERE `entry`=46713; -- Stonevault Wanderer
UPDATE `creature_template` SET `faction_A`=2102, `faction_H`=2102, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39344; -- Fiery Instructor
UPDATE `creature_template` SET `faction_A`=2102, `faction_H`=2102, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=64 WHERE `entry`=39348; -- Smolderos the Carbonizer
UPDATE `creature_template` SET `faction_A`=2160, `faction_H`=2160, `unit_flags`=33280 WHERE `entry`=36600; -- Geargrinder Gizmo
UPDATE `creature_template` SET `faction_A`=2320, `faction_H`=2320 WHERE `entry`=44437; -- Hearthglen Recruit
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=1, `dynamicflags`=132 WHERE `entry`=45344; -- Abandoned Siege Engine
UPDATE `creature_template` SET `faction_A`=36, `faction_H`=36 WHERE `entry`=46363; -- Crazed Leper Gnome
UPDATE `creature_template` SET `gossip_menu_id`=11216, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39442; -- Condenna the Pitiless
UPDATE `creature_template` SET `gossip_menu_id`=11356, `faction_A`=2252, `faction_H`=2252, `npcflag`=3, `speed_walk`=1.111112, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=39932; -- Keeper Taldros
UPDATE `creature_template` SET `gossip_menu_id`=11382, `npcflag`=1, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=40409; -- Gromm'ko
UPDATE `creature_template` SET `gossip_menu_id`=11420, `npcflag`=1, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=40489; -- Karr'gonn
UPDATE `creature_template` SET `gossip_menu_id`=11443, `npcflag`=3, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=39413; -- Instructor Mylva
UPDATE `creature_template` SET `gossip_menu_id`=11621 WHERE `entry`=42366; -- Kelsey Steelspark
UPDATE `creature_template` SET `gossip_menu_id`=11672 WHERE `entry`=42953; -- Benjamin Sykes
UPDATE `creature_template` SET `gossip_menu_id`=11899 WHERE `entry`=44863; -- Zen'Kiki
UPDATE `creature_template` SET `gossip_menu_id`=12107 WHERE `entry`=45966; -- Nevin Twistwrench
UPDATE `creature_template` SET `gossip_menu_id`=12188 WHERE `entry`=47384; -- Lien Farner
UPDATE `creature_template` SET `gossip_menu_id`=12231 WHERE `entry`=47158; -- Harrison Jones
UPDATE `creature_template` SET `gossip_menu_id`=12267 WHERE `entry`=47461; -- Prolific Writer
UPDATE `creature_template` SET `gossip_menu_id`=12311 WHERE `entry`=47700; -- Menacing Emissary
UPDATE `creature_template` SET `gossip_menu_id`=12359 WHERE `entry`=47715; -- Sun Priest Asaris
UPDATE `creature_template` SET `gossip_menu_id`=12516 WHERE `entry`=50160; -- Rulen Lightsreap
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=43379; -- Limiah Whitebranch
UPDATE `creature_template` SET `minlevel`=2, `maxlevel`=2 WHERE `entry`=49339; -- KTC Waiter
UPDATE `creature_template` SET `minlevel`=2, `maxlevel`=51, `rangeattacktime`=2000, `dynamicflags`=0 WHERE `entry`=15906; -- Ironforge Reveler
UPDATE `creature_template` SET `minlevel`=3, `maxlevel`=3, `faction_A`=875, `faction_H`=875, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_class`=2, `unit_flags`=768 WHERE `entry`=43033; -- Recovered Gnome
UPDATE `creature_template` SET `minlevel`=30, `faction_A`=12, `faction_H`=12, `npcflag`=128, `speed_walk`=1, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=512, `dynamicflags`=0 WHERE `entry`=8118; -- Lillian Singh
UPDATE `creature_template` SET `minlevel`=4, `maxlevel`=4, `speed_walk`=1, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32832, `dynamicflags`=0 WHERE `entry`=6209; -- Caverndeep Looter
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=33554688, `VehicleId`=872 WHERE `entry`=43025; -- Budd's Vehicle Bunny 02
UPDATE `creature_template` SET `minlevel`=75, `maxlevel`=75, `faction_A`=2102, `faction_H`=2102, `speed_run`=0.7142857, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=33555264 WHERE `entry`=42423; -- Thermaplugg's Brag-bot
UPDATE `creature_template` SET `minlevel`=76, `maxlevel`=77, `speed_run`=1 WHERE `entry`=31769; -- Stabled Hunter Pet
UPDATE `creature_template` SET `minlevel`=76, `maxlevel`=78, `speed_walk`=0.666668, `speed_run`=1.142857 WHERE `entry`=31755; -- Stabled Hunter Pet
UPDATE `creature_template` SET `minlevel`=76, `maxlevel`=79, `speed_run`=1.385714 WHERE `entry`=32601; -- Dalaran Visitor
UPDATE `creature_template` SET `minlevel`=77, `speed_run`=1.142857 WHERE `entry`=32597; -- Dalaran Visitor
UPDATE `creature_template` SET `minlevel`=8, `maxlevel`=55, `rangeattacktime`=2000, `dynamicflags`=0 WHERE `entry`=15694; -- Stormwind Reveler
UPDATE `creature_template` SET `minlevel`=80, `maxlevel`=80, `faction_A`=1770, `faction_H`=1770, `speed_run`=1.385714, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=33587968 WHERE `entry`=42422; -- Image of Hinkles Fastblast
UPDATE `creature_template` SET `minlevel`=80, `maxlevel`=80, `faction_A`=1771, `faction_H`=1771, `speed_run`=0.8571429, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=570458880, `unit_flags2`=1, `dynamicflags`=32 WHERE `entry`=42441; -- Irradiated Trogg Corpse
UPDATE `creature_template` SET `minlevel`=80, `maxlevel`=80, `faction_A`=875, `faction_H`=875, `npcflag`=1, `speed_run`=1.385714, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_class`=2, `unit_flags`=33587200 WHERE `entry`=42420; -- Image of "Doc" Cogspin
UPDATE `creature_template` SET `minlevel`=81, `maxlevel`=81, `faction_A`=14, `faction_H`=14, `speed_run`=0.9920629, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32832 WHERE `entry`=50058; -- Terrorpene
UPDATE `creature_template` SET `minlevel`=81, `maxlevel`=81, `faction_A`=1770, `faction_H`=1770, `baseattacktime`=2000, `rangeattacktime`=2000 WHERE `entry`=40427; -- Spawn of Smolderos
UPDATE `creature_template` SET `minlevel`=81, `maxlevel`=81, `speed_run`=8.571428, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_class`=8, `unit_flags`=32768, `VehicleId`=710 WHERE `entry`=39839; -- Twilight Stormwaker
UPDATE `creature_template` SET `minlevel`=82, `maxlevel`=82, `speed_run`=0.9523814, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=33555200, `dynamicflags`=0 WHERE `entry`=37864; -- Lord Marrowgar Image
UPDATE `creature_template` SET `minlevel`=83, `maxlevel`=83, `npcflag`=3, `speed_run`=1.385714, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=33587264 WHERE `entry`=42419; -- Image of High Tinker Mekkatorque
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=16, `faction_H`=16, `speed_walk`=0.4, `speed_run`=0.7142857, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=33554496, `unit_flags2`=34816, `HoverHeight`=10 WHERE `entry`=48707; -- Spatial Flux
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=2359, `faction_H`=2359, `speed_walk`=0.666668, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=51776; -- Ramkahen Guardian
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=413, `faction_H`=413, `speed_run`=1.285714, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=64 WHERE `entry`=50159; -- Sambas
UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `faction_A`=57, `faction_H`=57, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=51912; -- Dun Morogh Mountaineer
UPDATE `creature_template` SET `speed_run`=0.9920629 WHERE `entry`=53840; -- Gart Mistrunner
UPDATE `creature_template` SET `speed_run`=1.190476 WHERE `entry`=35200; -- Pirate Party Crasher
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857, `dynamicflags`=4 WHERE `entry`=684; -- Shadowmaw Panther
UPDATE `creature_template` SET `npcflag`=128, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=43565; -- Edric Downing
UPDATE `creature_template` SET `speed_walk`=1, `baseattacktime`=2000, `rangeattacktime`=2000, `dynamicflags`=0 WHERE `entry`=8117; -- Wizbang Booms
UPDATE `creature_template` SET `npcflag`=16777216, `speed_run`=1.285714, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=262656, `unit_flags2`=67110912 WHERE `entry`=50409; -- Mysterious Camel Figurine
UPDATE `creature_template` SET `npcflag`=3200, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=43563; -- Grunka
UPDATE `creature_template` SET `npcflag`=4224, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=32768 WHERE `entry`=43564; -- Mahaega Grimforge
UPDATE `creature_template` SET `rangeattacktime`=2000, `dynamicflags`=0 WHERE `entry`=31237; -- Matthias Lehner
UPDATE `creature_template` SET `rangeattacktime`=2000, `dynamicflags`=0 WHERE `entry`=37985; -- Dream Cloud
UPDATE `creature_template` SET `rangeattacktime`=2000, `unit_flags2`=0, `dynamicflags`=0 WHERE `entry`=37950; -- Valithria Dreamwalker
UPDATE `creature_template` SET `speed_run`=0.9920629 WHERE `entry`=53844; -- Celestine of the Harvest
UPDATE `creature_template` SET `speed_run`=1.142857 WHERE `entry`=3797; -- Cenarion Protector
UPDATE `creature_template` SET `speed_run`=1.142857 WHERE `entry`=38229; -- Frozen Insect
UPDATE `creature_template` SET `speed_run`=1.385714 WHERE `entry`=37782; -- Flesh-eating Insect
UPDATE `creature_template` SET `speed_run`=1.385714 WHERE `entry`=43297; -- Gnome Traveler
UPDATE `creature_template` SET `speed_run`=8.571428, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=33587200 WHERE `entry`=39838; -- Twilight Stormwaker
UPDATE `creature_template` SET `speed_walk`=0.5, `speed_run`=0.5714286 WHERE `entry`=32343; -- Green Priest
UPDATE `creature_template` SET `speed_walk`=0.6, `speed_run`=0.6857143, `unit_flags`=262144, `dynamicflags`=4 WHERE `entry`=47690; -- Schnottz's Landing Laborer
UPDATE `creature_template` SET `speed_walk`=1 WHERE `entry`=57864; -- Alurmi
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=32325; -- Gold Priest
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=3974; -- Houndmaster Loksey
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=4287; -- Scarlet Gallant
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=4288; -- Scarlet Beastmaster
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=4291; -- Scarlet Diviner
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=4296; -- Scarlet Adept
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=4299; -- Scarlet Chaplain
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=4304; -- Scarlet Tracking Hound
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=44739; -- Scarlet Renegade
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=44800; -- Dominic
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=4540; -- Scarlet Monk
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857 WHERE `entry`=6487; -- Arcanist Doan
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.142857, `dynamicflags`=0 WHERE `entry`=40808; -- Dustbone Horror
UPDATE `creature_template` SET `speed_walk`=1, `speed_run`=1.385714 WHERE `entry`=47053; -- Duskfang
UPDATE `creature_template` SET `speed_walk`=1.2, `speed_run`=0.8571429, `baseattacktime`=2280, `unit_flags`=536870976 WHERE `entry`=31139; -- Pustulent Horror
UPDATE `creature_template` SET `speed_walk`=1.6, `speed_run`=0.5714286, `unit_flags`=33554688, `dynamicflags`=0 WHERE `entry`=47032; -- Titanic Guardian
UPDATE `creature_template` SET `speed_walk`=1.6, `speed_run`=2, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=33555200 WHERE `entry`=42763; -- Explosive Fuse
UPDATE `creature_template` SET `speed_walk`=1.6, `speed_run`=2, `baseattacktime`=2000, `rangeattacktime`=2000, `unit_flags`=33587968 WHERE `entry`=43035; -- Gnome Restoration Apparatus
UPDATE `creature_template` SET `speed_walk`=2, `speed_run`=1.142857, `unit_flags`=0 WHERE `entry`=38331; -- Gorerot


DELETE FROM `creature_equip_template` WHERE `entry` IN (51776, 48443, 48713, 48720, 49114, 47067, 8282, 39342, 39839, 39838, 39453, 39391, 39828, 43563, 43564, 43565, 39749, 40922, 40680, 40741, 40746, 40738, 40737, 40742, 40744, 40740, 40739, 40731, 40735, 40729, 40732, 40733, 40736, 40730, 40734, 41248, 40105, 41252, 39885, 41344, 41347, 41341, 42422, 42420, 42419, 8117, 8118, 15119, 50602, 50641, 49277, 49271, 49335, 49273, 49270, 49314, 49278, 49276, 49274, 49272, 49275, 49361, 49374, 49364, 49362, 50365, 47991, 45386, 47998, 47990, 47996, 47997, 47995, 48789, 48795, 48743);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(51776, 62798, 0, 5258), -- Ramkahen Guardian
(48443, 0, 0, 61967), -- Schnottz Elite Trooper
(48713, 0, 0, 61967), -- Schnottz Infantryman
(48720, 0, 0, 61967), -- Schnottz Elite Infantryman
(49114, 0, 0, 61967), -- Schnottz Elite Infantryman Corpse
(47067, 0, 0, 61967), -- Schnottz Rifleman
(8282, 2177, 0, 0), -- Highlord Mastrogonde
(39342, 2209, 0, 0), -- Twilight Supplicant
(39839, 13722, 0, 0), -- Twilight Stormwaker
(39838, 13722, 0, 0), -- Twilight Stormwaker
(39453, 2209, 0, 0), -- Immolated Supplicant
(39391, 2209, 0, 0), -- Twilight Neophyte
(39828, 52060, 0, 0), -- Twilight Guard
(43563, 13608, 12745, 0), -- Grunka
(43564, 5532, 0, 0), -- Mahaega Grimforge
(43565, 2827, 13406, 0), -- Edric Downing
(39749, 4564, 0, 0), -- Twilight Enforcer
(40922, 4564, 0, 0), -- Okrog
(40680, 1899, 143, 0), -- Stormwind Soldier
(40741, 54965, 143, 0), -- Stormwind Seal
(40746, 51898, 0, 0), -- Erunak Stonespeaker
(40738, 54965, 143, 0), -- Stormwind Seal
(40737, 45951, 0, 0), -- Captain Taylor
(40742, 54965, 143, 0), -- Stormwind Seal
(40744, 54965, 143, 0), -- Stormwind Seal
(40740, 54965, 143, 0), -- Stormwind Seal
(40739, 54965, 143, 0), -- Stormwind Seal
(40731, 54965, 143, 0), -- Stormwind Seal
(40735, 54965, 143, 0), -- Stormwind Seal
(40729, 45951, 0, 0), -- Captain Taylor
(40732, 54965, 143, 0), -- Stormwind Seal
(40733, 54965, 143, 0), -- Stormwind Seal
(40736, 51898, 0, 0), -- Erunak Stonespeaker
(40730, 54965, 143, 0), -- Stormwind Seal
(40734, 54965, 143, 0), -- Stormwind Seal
(41248, 51898, 0, 0), -- Moanah Stormhoof
(40105, 51898, 0, 0), -- Erunak Stonespeaker
(41252, 51898, 0, 0), -- Rendel Firetongue
(39885, 2717, 0, 0), -- Mack Fearsen
(41344, 51898, 0, 0), -- Rendel Firetongue
(41347, 51898, 0, 0), -- Moanah Stormhoof
(41341, 51898, 0, 0), -- Erunak Stonespeaker
(42422, 53056, 11585, 30128), -- Image of Hinkles Fastblast
(42420, 53055, 0, 0), -- Image of "Doc" Cogspin
(42419, 53096, 11587, 0), -- Image of High Tinker Mekkatorque
(8117, 9700, 0, 0), -- Wizbang Booms
(8118, 9702, 0, 0), -- Lillian Singh
(15119, 12850, 0, 0), -- Barrus
(50602, 2178, 2081, 0), -- Victor's Point Soldier
(50641, 2178, 143, 0), -- Victor's Point Captain
(49277, 10591, 0, 0), -- Iain Firebeard
(49271, 10591, 0, 0), -- Keegan Firebeard
(49335, 10591, 0, 0), -- Cailin Longfellow
(49273, 10591, 0, 0), -- Colin Thundermar
(49270, 30445, 0, 0), -- Kurdran Wildhammer
(49314, 10591, 0, 0), -- Donnelly Dunwald
(49278, 10591, 0, 0), -- Cliff Thundermar
(49276, 10591, 0, 0), -- Eoin Dunwald
(49274, 10591, 0, 0), -- Flynn Dunwald
(49272, 6232, 0, 0), -- Fanny Thundermar
(49275, 10591, 0, 0), -- Keely Dunwald
(49361, 2705, 0, 0), -- Colin Thundermar
(49374, 59159, 0, 0), -- Lachlan MacGraff
(49364, 2705, 0, 0), -- Eoin Dunwald
(49362, 10591, 0, 0), -- Flynn Dunwald
(50365, 58137, 57763, 0), -- Stormcaller Mylra
(47991, 42939, 56174, 0), -- Earthcaller Yevaa
(45386, 42939, 56174, 0), -- Earthcaller Yevaa
(47998, 39749, 28737, 0), -- Seer Galekk
(47990, 42939, 56174, 0), -- Stormcaller Jalara
(47996, 58137, 57763, 0), -- Stormcaller Mylra
(47997, 49713, 56175, 0), -- Windspeaker Lorvarius
(47995, 56913, 56913, 0), -- Yuldris Smolderfury
(48789, 42939, 56174, 0), -- Stormcaller Jalara
(48795, 58137, 57763, 0), -- Stormcaller Mylra
(48743, 32946, 0, 0); -- Hargoth Dimblaze
DELETE FROM `quest_poi` WHERE `questid` IN (25165, 25165, 25165);
INSERT INTO `quest_poi` (`questid`, `id`, `objIndex`, `mapid`, `WorldMapAreaId`, `FloorId`, `unk3`, `unk4`) VALUES
(25165, 0, -1, 1, 4, 0, 0, 1), -- Never Trust a Big Barb and a Smile
(25165, 1, 0, 1, 4, 0, 0, 1), -- Never Trust a Big Barb and a Smile
(25165, 2, 0, 1, 4, 0, 0, 7); -- Never Trust a Big Barb and a Smile


DELETE FROM `quest_poi_points` WHERE (`questId`=25165 AND `id`=0) OR (`questId`=25165 AND `id`=1) OR (`questId`=25165 AND `id`=1) OR (`questId`=25165 AND `id`=1) OR (`questId`=25165 AND `id`=1) OR (`questId`=25165 AND `id`=1) OR (`questId`=25165 AND `id`=1) OR (`questId`=25165 AND `id`=1) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2) OR (`questId`=25165 AND `id`=2);
INSERT INTO `quest_poi_points` (`questId`, `id`, `idx`, `x`, `y`) VALUES
(25165, 0, 0, -849, -4909), -- Never Trust a Big Barb and a Smile
(25165, 1, 0, -920, -4951), -- Never Trust a Big Barb and a Smile
(25165, 1, 1, -683, -4650), -- Never Trust a Big Barb and a Smile
(25165, 1, 2, -719, -4615), -- Never Trust a Big Barb and a Smile
(25165, 1, 3, -751, -4585), -- Never Trust a Big Barb and a Smile
(25165, 1, 4, -817, -4585), -- Never Trust a Big Barb and a Smile
(25165, 1, 5, -842, -4615), -- Never Trust a Big Barb and a Smile
(25165, 1, 6, -1017, -4850), -- Never Trust a Big Barb and a Smile
(25165, 2, 0, -663, -5120), -- Never Trust a Big Barb and a Smile
(25165, 2, 1, -596, -5043), -- Never Trust a Big Barb and a Smile
(25165, 2, 2, -572, -4985), -- Never Trust a Big Barb and a Smile
(25165, 2, 3, -562, -4888), -- Never Trust a Big Barb and a Smile
(25165, 2, 4, -562, -4816), -- Never Trust a Big Barb and a Smile
(25165, 2, 5, -644, -4796), -- Never Trust a Big Barb and a Smile
(25165, 2, 6, -673, -4825), -- Never Trust a Big Barb and a Smile
(25165, 2, 7, -721, -4883), -- Never Trust a Big Barb and a Smile
(25165, 2, 8, -765, -4941), -- Never Trust a Big Barb and a Smile
(25165, 2, 9, -784, -4990), -- Never Trust a Big Barb and a Smile
(25165, 2, 10, -784, -5072), -- Never Trust a Big Barb and a Smile
(25165, 2, 11, -736, -5115); -- Never Trust a Big Barb and a Smile
-- Join the Battle!
UPDATE `quest_template` SET `RequiredClasses`=1, `RequiredRaces`=1101 WHERE `Id`=28789; -- Warrior
UPDATE `quest_template` SET `RequiredClasses`=2, `RequiredRaces`=1101 WHERE `Id`=28785; -- Paladin
UPDATE `quest_template` SET `RequiredClasses`=4, `RequiredRaces`=1101 WHERE `Id`=28780; -- Hunter
UPDATE `quest_template` SET `RequiredClasses`=16, `RequiredRaces`=1101 WHERE `Id`=28786; -- Priest
UPDATE `quest_template` SET `RequiredClasses`=128, `RequiredRaces`=1101 WHERE `Id`=28784; -- Mage
UPDATE `quest_template` SET `RequiredClasses`=256, `RequiredRaces`=1101 WHERE `Id`=28788; -- Warlock

-- They Sent Assassins!
UPDATE `quest_template` SET `RequiredClasses`=1, `RequiredRaces`=1101, `PrevQuestId`=28789 WHERE `Id`=28797; -- Warrior
UPDATE `quest_template` SET `RequiredClasses`=2, `RequiredRaces`=1101, `PrevQuestId`=28785 WHERE `Id`=28793; -- Paladin
UPDATE `quest_template` SET `RequiredClasses`=4, `RequiredRaces`=1101, `PrevQuestId`=28780 WHERE `Id`=28791; -- Hunter
UPDATE `quest_template` SET `RequiredClasses`=16, `RequiredRaces`=1101, `PrevQuestId`=28786 WHERE `Id`=28794; -- Priest
UPDATE `quest_template` SET `RequiredClasses`=128, `RequiredRaces`=1101, `PrevQuestId`=28784 WHERE `Id`=28792; -- Mage
UPDATE `quest_template` SET `RequiredClasses`=256, `RequiredRaces`=1101, `PrevQuestId`=28788 WHERE `Id`=28796; -- Warlock 

-- The Rear Is Clear
UPDATE `quest_template` SET `RequiredClasses`=1, `RequiredRaces`=1101, `PrevQuestId`=28797  WHERE `Id`=28823; -- Warrior
UPDATE `quest_template` SET `RequiredClasses`=2, `RequiredRaces`=1101, `PrevQuestId`=28793  WHERE `Id`=28819; -- Paladin
UPDATE `quest_template` SET `RequiredClasses`=4, `RequiredRaces`=1101, `PrevQuestId`=28791  WHERE `Id`=28817; -- Hunter
UPDATE `quest_template` SET `RequiredClasses`=16, `RequiredRaces`=1101, `PrevQuestId`=28794  WHERE `Id`=28820; -- Priest
UPDATE `quest_template` SET `RequiredClasses`=128, `RequiredRaces`=1101, `PrevQuestId`=28792  WHERE `Id`=28818; -- Mage
UPDATE `quest_template` SET `RequiredClasses`=256, `RequiredRaces`=1101, `PrevQuestId`=28796  WHERE `Id`=28822; -- Warlock 
UPDATE `creature_template` SET `exp`=3 WHERE `entry` IN (1233, 2432, 3838, 4317, 4319, 6706, 6726, 8019, 8020, 10378, 10583, 11900, 12577, 12578, 14242, 15177, 15178, 18808, 18930, 18931, 18937, 18938, 18942, 18953, 19581, 19583, 20234, 21107, 22455, 23612, 23736, 23859, 24032, 24061, 24155, 24366, 26560, 26842, 26844, 26845, 26846, 26847, 26848, 26850, 26852, 26853, 26877, 26879, 26880, 27046, 27344, 28037, 28195, 28196, 28197, 28574, 28618, 28624, 29480, 29762, 30269, 30314, 30433, 30869, 30870, 31078, 31426, 35315, 35478, 35481, 35556, 35562, 37915, 39175, 39898, 40367, 40473, 40873, 40966, 41383, 41580, 41605, 43073, 43079, 43085, 43225, 43293, 43389, 43398, 43576, 43991, 44036, 44244, 44825, 45479, 47927, 50084, 50367, 52646, 52753, 53008, 53783);
-- Spectral Mount Crate & Moonkin Egg
DELETE FROM `item_loot_template` WHERE `entry` IN (77956,68384);
INSERT INTO `item_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(77956, 76889, 100, 1, 0, 1, 1),
(77956, 76902, 100, 1, 0, 1, 1),
(68384, 68618, 100, 1, 0, 1, 1),
(68384, 68619, 100, 1, 0, 1, 1);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=5 AND `SourceGroup` IN (77956,68384);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(5, 77956, 76889, 0, 0, 6, 0, 469, 0, 0, 0, 0, '', 'Spectral Gryphon Must Be Alliance'),
(5, 77956, 76902, 0, 0, 6, 0, 67, 0, 0, 0, 0, '', 'Spectral Wind Rider Must Be Horde'),
(5, 68384, 68618, 0, 0, 6, 0, 469, 0, 0, 0, 0, '', 'Moonkin Hatchling Must Be Alliance'),
(5, 68384, 68619, 0, 0, 6, 0, 67, 0, 0, 0, 0, '', 'Moonkin Hatchling Must Be Horde');

DELETE FROM `player_factionchange_items` WHERE `alliance_id` IN (76889,68618) AND `horde_id` IN (76902,68619);
INSERT INTO `player_factionchange_items` (`race_A`, `alliance_id`, `commentA`, `race_H`, `horde_id`, `commentH`) VALUES
(0, 76889, 'Spectral Gryphon', 0, 76902, 'Spectral Wind Rider'),
(0, 68618, 'Moonkin Hatchling', 0, 68619, 'Moonkin Hatchling');

DELETE FROM `player_factionchange_spells` WHERE `alliance_id` IN (107516,95786) AND `horde_id` IN (107517,95909);
INSERT INTO `player_factionchange_spells` (`alliance_id`, `horde_id`) VALUES
(107516, 107517), --  Spectral Wind Rider ←→ Spectral Wind Rider
(95786, 95909); --  Moonkin Hatchling ←→ Moonkin Hatchling
UPDATE `areatrigger_tavern` SET `name`='Farstrider Lodge - 01' WHERE `id`=6122;

DELETE FROM `areatrigger_tavern` WHERE `id` IN (6440, 6443, 6185, 6186, 6187, 6188, 6189, 6190, 6191, 6192, 6193, 6121, 6123, 6124, 6125);
INSERT INTO `areatrigger_tavern` (`id`, `name`) VALUES
(6440, 'Bogpaddle'),
(6443, 'The Harborage'),
(6185, 'Honor''s Stand'),
(6186, 'Hunter''s Hill'),
(6187, 'Fort Triumph - 01'),
(6188, 'Fort Triumph - 02'),
(6189, 'Desolation Hold'),
(6190, 'Northwatch Hold'),
(6191, 'Dreadmaul Hold'),
(6192, 'Nethergarde Keep'),
(6193, 'Surwich'),
(6121, 'Karnum''s Glade'),
(6123, 'Farstrider Lodge - 02'),
(6124, 'Farstrider Lodge - 03'),
(6125, 'Marshal''s Stand');
DELETE FROM `gameobject_template` WHERE `entry`=204255;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `unkInt32`, `WDBVerified`) VALUES
(204255, 5, 9697, 'Recovered Helm', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 15595); -- -Unknown-
UPDATE `areatrigger_tavern` SET `name`='Hammerfall' WHERE `id`=1646;
UPDATE `areatrigger_tavern` SET `name`='Taren Mill' WHERE `id`=721;

DELETE FROM `areatrigger_tavern` WHERE `id` IN (6106, 6110, 6155, 6314, 6467, 6577, 6589, 6590, 6592, 6600, 6602, 6603, 6604, 6605, 6606, 6607, 6608, 6609, 6615, 6616);
INSERT INTO `areatrigger_tavern` (`id`, `name`) VALUES
(6106, 'Stormfeather Outpost'),
(6110, 'Hiri''watha Research Station'),
(6155, 'Refuge Pointe'),
(6314, 'Chillwind Camp'),
(6467, 'Andorhal'),
(6577, 'The Sludge Fields'),
(6589, 'Crushblow'),
(6590, 'Victor''s Point'),
(6592, 'The Krazzworks'),
(6600, 'Thundermar - 01'),
(6602, 'Thundermar - 02'),
(6603, 'Bloodgulch - 01'),
(6604, 'Bloodgulch - 02'),
(6605, 'Firebeard''s Patrol - 01'),
(6606, 'Firebeard''s Patrol - 02'),
(6607, 'Firebeard''s Patrol - 03'),
(6608, 'Dragonmaw Port - 01'),
(6609, 'Dragonmaw Port - 02'),
(6615, 'Highbank - 01'),
(6616, 'Highbank - 02');
