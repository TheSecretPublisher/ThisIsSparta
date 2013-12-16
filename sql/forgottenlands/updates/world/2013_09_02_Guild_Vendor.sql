-- Enable Guild Vendor to sell
UPDATE `creature_template` SET `npcflag`=129 WHERE  `entry`=46572;
UPDATE `creature_template` SET `npcflag`=129 WHERE  `entry`=46602;

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 69209 Illustrious Guild Tabard
DELETE FROM `conditions` WHERE (`SourceEntry`='69209');
INSERT INTO `conditions` VALUES (23, 46572, 69209, 0, 100, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69209, 0, 101, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69209, 0, 102, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69209, 0, 103, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');

-- Alliance vendor Item 69209 Illustrious Guild Tabard
INSERT INTO `conditions` VALUES (23, 46602, 69209, 0, 194, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69209, 0, 195, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69209, 0, 196, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69209, 0, 197, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 69210 Renowned Guild Tabard
DELETE FROM `conditions` WHERE (`SourceEntry`='69210');
INSERT INTO `conditions` VALUES (23, 46572, 69210, 0, 104, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69210, 0, 105, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69210, 0, 106, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');

-- Alliance vendor Item 69210 Renowned Guild Tabard
INSERT INTO `conditions` VALUES (23, 46602, 69210, 0, 198, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69210, 0, 199, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69210, 0, 200, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 63353 Shroud of Cooperation
DELETE FROM `conditions` WHERE (`SourceEntry`='63353');
INSERT INTO `conditions` VALUES (23, 46572, 63353, 0, 107, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 63353, 0, 107, 17, 0, 4989, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Class Act');
INSERT INTO `conditions` VALUES (23, 46572, 63353, 0, 108, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 63353, 0, 108, 17, 0, 4989, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Class Act');
INSERT INTO `conditions` VALUES (23, 46572, 63353, 0, 109, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 63353, 0, 109, 17, 0, 4989, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Class Act');

-- Alliance vendor Item 63352 Shroud of Cooperation
DELETE FROM `conditions` WHERE (`SourceEntry`='63352');
INSERT INTO `conditions` VALUES (23, 46602, 63352, 0, 201, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 63352, 0, 201, 17, 0, 4989, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Class Act');
INSERT INTO `conditions` VALUES (23, 46602, 63352, 0, 202, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 63352, 0, 202, 17, 0, 4989, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Class Act');
INSERT INTO `conditions` VALUES (23, 46602, 63352, 0, 203, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 63352, 0, 203, 17, 0, 4989, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Class Act');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 63207 Wrap of Unity 
-- Hack Achievement_criteria.dbc for guild level 15 that trigger when player have aura 83950 peark spell at lv 15
-- Hack 4945 110 83950 1 ... 0 2
DELETE FROM `conditions` WHERE (`SourceEntry`='63207');
INSERT INTO `conditions` VALUES (23, 46572, 63207, 0, 110, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 63207, 0, 110, 1, 0, 83950, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 15');
INSERT INTO `conditions` VALUES (23, 46572, 63207, 0, 111, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 63207, 0, 111, 1, 0, 83950, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 15');
INSERT INTO `conditions` VALUES (23, 46572, 63207, 0, 112, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 63207, 0, 112, 1, 0, 83950, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 15');

-- Alliance vendor Item 63206 Wrap of Unity 
DELETE FROM `conditions` WHERE (`SourceEntry`='63206');
INSERT INTO `conditions` VALUES (23, 46602, 63206, 0, 204, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 63206, 0, 204, 1, 0, 83950, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 15');
INSERT INTO `conditions` VALUES (23, 46602, 63206, 0, 205, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 63206, 0, 205, 1, 0, 83950, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 15');
INSERT INTO `conditions` VALUES (23, 46602, 63206, 0, 206, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 63206, 0, 206, 1, 0, 83950, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 15');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 65274 Cloak of Coordination
DELETE FROM `conditions` WHERE (`SourceEntry`='65274');
INSERT INTO `conditions` VALUES (23, 46572, 65274, 0, 114, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65274, 0, 114, 17, 0, 5035, 0, 0, 0, 0, 0, '', 'Item is available with achievement Master Crafter');
INSERT INTO `conditions` VALUES (23, 46572, 65274, 0, 115, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65274, 0, 115, 17, 0, 5035, 0, 0, 0, 0, 0, '', 'Item is available with achievement Master Crafter');

DELETE FROM `npc_vendor` WHERE (`item`='65360');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 65360, 0, 0, 0);

-- Alliance vendor Item 65360 Cloak of Coordination
DELETE FROM `conditions` WHERE (`SourceEntry`='65360');
INSERT INTO `conditions` VALUES (23, 46602, 65360, 0, 207, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65360, 0, 207, 17, 0, 5035, 0, 0, 0, 0, 0, '', 'Item is available with achievement Master Crafter');
INSERT INTO `conditions` VALUES (23, 46602, 65360, 0, 208, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65360, 0, 208, 17, 0, 5035, 0, 0, 0, 0, 0, '', 'Item is available with achievement Master Crafter');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 65362 Guild Page
DELETE FROM `conditions` WHERE (`SourceEntry`='65362');
INSERT INTO `conditions` VALUES (23, 46572, 65362, 0, 116, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65362, 0, 116, 17, 0, 5179, 0, 0, 0, 0, 0, '', 'Item is available with achievement Alliance Slayer');
INSERT INTO `conditions` VALUES (23, 46572, 65362, 0, 117, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65362, 0, 117, 17, 0, 5179, 0, 0, 0, 0, 0, '', 'Item is available with achievement Alliance Slayer');
INSERT INTO `conditions` VALUES (23, 46572, 65362, 0, 118, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65362, 0, 118, 17, 0, 5179, 0, 0, 0, 0, 0, '', 'Item is available with achievement Alliance Slayer');

-- Alliance vendor Item 65361 Guild Page
DELETE FROM `conditions` WHERE (`SourceEntry`='65361');
INSERT INTO `conditions` VALUES (23, 46602, 65361, 0, 209, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65361, 0, 209, 17, 0, 5031, 0, 0, 0, 0, 0, '', 'Item is available with achievement Horde Slayer');
INSERT INTO `conditions` VALUES (23, 46602, 65361, 0, 210, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65361, 0, 210, 17, 0, 5031, 0, 0, 0, 0, 0, '', 'Item is available with achievement Horde Slayer');
INSERT INTO `conditions` VALUES (23, 46602, 65361, 0, 211, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65361, 0, 211, 17, 0, 5031, 0, 0, 0, 0, 0, '', 'Item is available with achievement Horde Slayer');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 65364 Guild Herald
DELETE FROM `conditions` WHERE (`SourceEntry`='65364');
INSERT INTO `conditions` VALUES (23, 46572, 65364, 0, 119, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65364, 0, 119, 17, 0, 5201, 0, 0, 0, 0, 0, '', 'Item is available with achievement Profit Sharing');
INSERT INTO `conditions` VALUES (23, 46572, 65364, 0, 120, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65364, 0, 120, 17, 0, 5201, 0, 0, 0, 0, 0, '', 'Item is available with achievement Profit Sharing');
INSERT INTO `conditions` VALUES (23, 46572, 65364, 0, 121, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65364, 0, 121, 17, 0, 5201, 0, 0, 0, 0, 0, '', 'Item is available with achievement Profit Sharing');

DELETE FROM `npc_vendor` WHERE (`item`='65363');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 65363, 0, 0, 0);

-- Alliance vendor Item 65363 Guild Herald
DELETE FROM `conditions` WHERE (`SourceEntry`='65363');
INSERT INTO `conditions` VALUES (23, 46602, 65363, 0, 212, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65363, 0, 212, 17, 0, 5201, 0, 0, 0, 0, 0, '', 'Item is available with achievement Profit Sharing');
INSERT INTO `conditions` VALUES (23, 46602, 65363, 0, 213, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65363, 0, 213, 17, 0, 5201, 0, 0, 0, 0, 0, '', 'Item is available with achievement Profit Sharing');
INSERT INTO `conditions` VALUES (23, 46602, 65363, 0, 214, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65363, 0, 214, 17, 0, 5201, 0, 0, 0, 0, 0, '', 'Item is available with achievement Profit Sharing');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Hack Achievement_criteria.dbc for Master Crafter that trigger when player craft item with almost 359 item level
-- Hack 5035 29 35177 500 ... 0 1
-- Tailoring link counter spell to item lv above 359
DELETE FROM `spell_linked_spell` WHERE (`spell_effect`='35177');
INSERT INTO `spell_linked_spell` VALUES (75298, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99460, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101923, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75300, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99449, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101922, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99459, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75301, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75299, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99448, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101921, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75306, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75307, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75305, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75304, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75302, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75303, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101920, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75296, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75291, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99537, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75294, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75290, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75292, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75297, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75293, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (75270, 35177, 0, 'achievement counter');

-- Blacksmithing link counter spell to item lv above 359
INSERT INTO `spell_linked_spell` VALUES (101924, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101925, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101928, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101929, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101931, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101932, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99439, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99440, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99441, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99452, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99453, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99454, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76467, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76461, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76459, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76466, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76457, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76458, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76456, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76465, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76463, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76472, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76471, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76468, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76470, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76469, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76464, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76462, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99652, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99653, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99654, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99655, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99656, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99657, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99658, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99660, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76443, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76444, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76445, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76446, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76447, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76448, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76454, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (76455, 35177, 0, 'achievement counter');

-- Alchemy link counter spell to item lv above 359
INSERT INTO `spell_linked_spell` VALUES (80508, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (96252, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (96253, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (96254, 35177, 0, 'achievement counter');

-- Archaeology link counter spell to item lv above 359
INSERT INTO `spell_linked_spell` VALUES (90608, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (91227, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (91757, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (92139, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (92163, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (92168, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (98533, 35177, 0, 'achievement counter');

-- Engineering link counter spell to item lv above 359
INSERT INTO `spell_linked_spell` VALUES (100687, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (81714, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (81715, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (81725, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (81724, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (81722, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (81716, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (81720, 35177, 0, 'achievement counter');

-- Jewelcrafting link counter spell to item lv above 359
INSERT INTO `spell_linked_spell` VALUES (99539, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99540, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99541, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99542, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99543, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99544, 35177, 0, 'achievement counter');

-- Leatherworking link counter spell to item lv above 359
INSERT INTO `spell_linked_spell` VALUES (101935, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101933, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101936, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101934, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101940, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101937, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101941, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (101939, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99443, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99445, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99446, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99447, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99455, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99456, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99457, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99458, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78470, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99536, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (99535, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78479, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78459, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78457, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78483, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78449, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78484, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78456, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78448, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78471, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78464, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78473, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78453, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78474, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78481, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78447, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78469, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78444, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78467, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78485, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78452, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78458, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78480, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78482, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78455, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78450, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78486, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78451, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78445, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78468, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78454, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78446, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78460, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78461, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78462, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78463, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78487, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78488, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78489, 35177, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (78490, 35177, 0, 'achievement counter');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 67107 Reins of the Kor'kron Annihilator
-- Hack Achievement_criteria.dbc for guild level 25 that trigger when player have aura 121821 peark spell at lv 25
-- Hack GuildPerkSpell.dbc 25 121821
-- Hack 5492 110 121821 1 ... 0 2
DELETE FROM `conditions` WHERE (`SourceEntry`='67107');
INSERT INTO `conditions` VALUES (23, 46572, 67107, 0, 122, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 67107, 0, 122, 1, 0, 121821, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 25');

DELETE FROM `npc_vendor` WHERE (`item`='62298');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 62298, 0, 0, 0);

-- Alliance vendor Item 62298 Reins of the Golden King
DELETE FROM `conditions` WHERE (`SourceEntry`='62298');
INSERT INTO `conditions` VALUES (23, 46602, 62298, 0, 215, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62298, 0, 215, 1, 0, 121821, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 25');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 69892 Ripped Sandstorm Cloak
-- Hack Achievement_criteria.dbc for guild level 10 that trigger when player have aura 83950 peark spell at lv 10
-- Hack 4944 110 83945 1 ... 0 2 
DELETE FROM `conditions` WHERE (`SourceEntry`='69892');
INSERT INTO `conditions` VALUES (23, 46572, 69892, 0, 123, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69892, 0, 123, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46572, 69892, 0, 124, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69892, 0, 124, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46572, 69892, 0, 125, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69892, 0, 125, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');

-- Alliance vendor Item 69892 Ripped Sandstorm Cloak
INSERT INTO `conditions` VALUES (23, 46602, 69892, 0, 216, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69892, 0, 216, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46602, 69892, 0, 217, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69892, 0, 217, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46602, 69892, 0, 218, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69892, 0, 218, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 62038 Worn Stoneskin Gargoyle Cape
DELETE FROM `conditions` WHERE (`SourceEntry`='62038');
INSERT INTO `conditions` VALUES (23, 46572, 62038, 0, 126, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62038, 0, 126, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46572, 62038, 0, 127, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62038, 0, 127, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46572, 62038, 0, 128, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62038, 0, 128, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');

-- Alliance vendor Item 62038 Worn Stoneskin Gargoyle Cape
INSERT INTO `conditions` VALUES (23, 46602, 62038, 0, 219, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62038, 0, 219, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46602, 62038, 0, 220, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62038, 0, 220, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46602, 62038, 0, 221, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62038, 0, 221, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 62040 Ancient Bloodmoon Cloak
DELETE FROM `conditions` WHERE (`SourceEntry`='62040');
INSERT INTO `conditions` VALUES (23, 46572, 62040, 0, 129, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62040, 0, 129, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46572, 62040, 0, 130, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62040, 0, 130, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46572, 62040, 0, 131, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62040, 0, 131, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');

-- Alliance vendor Item 62040 Ancient Bloodmoon Cloak
INSERT INTO `conditions` VALUES (23, 46602, 62040, 0, 222, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62040, 0, 222, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46602, 62040, 0, 223, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62040, 0, 223, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46602, 62040, 0, 224, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62040, 0, 224, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 62039 Inherited Cape of the Black Baron
DELETE FROM `conditions` WHERE (`SourceEntry`='62039');
INSERT INTO `conditions` VALUES (23, 46572, 62039, 0, 132, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62039, 0, 132, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46572, 62039, 0, 133, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62039, 0, 133, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46572, 62039, 0, 134, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62039, 0, 134, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');

-- Alliance vendor Item 62039 Inherited Cape of the Black Baron
INSERT INTO `conditions` VALUES (23, 46602, 62039, 0, 225, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62039, 0, 225, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46602, 62039, 0, 226, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62039, 0, 226, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
INSERT INTO `conditions` VALUES (23, 46602, 62039, 0, 227, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62039, 0, 227, 1, 0, 83945, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 10');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 69887 Burnished Helm of Might 
-- Hack Achievement_criteria.dbc for guild level 20 that trigger when player have aura 83963 peark spell at lv 20
-- Hack 4946 110 83963 1 ... 0 2
DELETE FROM `conditions` WHERE (`SourceEntry`='69887');
INSERT INTO `conditions` VALUES (23, 46572, 69887, 0, 135, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69887, 0, 135, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 69887, 0, 136, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69887, 0, 136, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 69887, 0, 137, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 69887, 0, 137, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');

-- Alliance vendor Item 69887 Burnished Helm of Might 
INSERT INTO `conditions` VALUES (23, 46602, 69887, 0, 228, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69887, 0, 228, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 69887, 0, 229, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69887, 0, 229, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 69887, 0, 230, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 69887, 0, 230, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 61958 Tattered Dreadmist Mask
DELETE FROM `conditions` WHERE (`SourceEntry`='61958');
INSERT INTO `conditions` VALUES (23, 46572, 61958, 0, 138, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61958, 0, 138, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61958, 0, 139, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61958, 0, 139, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61958, 0, 140, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61958, 0, 140, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');

-- Alliance vendor Item 61958 Tattered Dreadmist Mask
INSERT INTO `conditions` VALUES (23, 46602, 61958, 0, 231, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61958, 0, 231, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61958, 0, 232, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61958, 0, 232, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61958, 0, 233, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61958, 0, 233, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 61942 Preened Tribal War Feathers
DELETE FROM `conditions` WHERE (`SourceEntry`='61942');
INSERT INTO `conditions` VALUES (23, 46572, 61942, 0, 141, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61942, 0, 141, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61942, 0, 142, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61942, 0, 142, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61942, 0, 143, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61942, 0, 143, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');

-- Alliance vendor Item 61942 Preened Tribal War Feathers
INSERT INTO `conditions` VALUES (23, 46602, 61942, 0, 234, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61942, 0, 234, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61942, 0, 235, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61942, 0, 235, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61942, 0, 236, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61942, 0, 236, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 61937 Stained Shadowcraft Cap
DELETE FROM `conditions` WHERE (`SourceEntry`='61937');
INSERT INTO `conditions` VALUES (23, 46572, 61937, 0, 144, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61937, 0, 144, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61937, 0, 145, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61937, 0, 145, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61937, 0, 146, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61937, 0, 146, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');

-- Alliance vendor Item 61937 Stained Shadowcraft Cap
INSERT INTO `conditions` VALUES (23, 46602, 61937, 0, 237, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61937, 0, 237, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61937, 0, 238, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61937, 0, 238, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61937, 0, 239, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61937, 0, 239, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 61936 Mystical Coif of Elements
DELETE FROM `conditions` WHERE (`SourceEntry`='61936');
INSERT INTO `conditions` VALUES (23, 46572, 61936, 0, 147, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61936, 0, 147, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61936, 0, 148, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61936, 0, 148, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61936, 0, 149, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61936, 0, 149, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');

-- Alliance vendor Item 61936 Mystical Coif of Elements
INSERT INTO `conditions` VALUES (23, 46602, 61936, 0, 240, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61936, 0, 240, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61936, 0, 241, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61936, 0, 241, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61936, 0, 242, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61936, 0, 242, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 61935 Tarnished Raging Berserker's Helm
DELETE FROM `conditions` WHERE (`SourceEntry`='61935');
INSERT INTO `conditions` VALUES (23, 46572, 61935, 0, 150, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61935, 0, 150, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61935, 0, 151, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61935, 0, 151, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61935, 0, 152, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61935, 0, 152, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');

-- Alliance vendor Item 61935 Tarnished Raging Berserker's Helm
INSERT INTO `conditions` VALUES (23, 46602, 61935, 0, 243, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61935, 0, 243, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61935, 0, 244, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61935, 0, 244, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61935, 0, 245, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61935, 0, 245, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 61931 Polished Helm of Valor
DELETE FROM `conditions` WHERE (`SourceEntry`='61931');
INSERT INTO `conditions` VALUES (23, 46572, 61931, 0, 153, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61931, 0, 153, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61931, 0, 154, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61931, 0, 154, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46572, 61931, 0, 155, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 61931, 0, 155, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');

-- Alliance vendor Item 61931 Polished Helm of Valor
INSERT INTO `conditions` VALUES (23, 46602, 61931, 0, 246, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61931, 0, 246, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61931, 0, 247, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61931, 0, 247, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
INSERT INTO `conditions` VALUES (23, 46602, 61931, 0, 248, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 61931, 0, 248, 1, 0, 83963, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 20');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 62800 Recipe: Seafood Magnifique Feast 
-- Hack Achievement_criteria.dbc for Thats a Lot of Bait that trigger when player cast fishing spell
-- Hack 5036 29 51294 10000 ... 0 1
DELETE FROM `conditions` WHERE (`SourceEntry`='62800');
INSERT INTO `conditions` VALUES (23, 46572, 62800, 0, 156, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62800, 0, 156, 17, 0, 5036, 0, 0, 0, 0, 0, '', 'Item is available with achievement Thats a Lot of Bait');
INSERT INTO `conditions` VALUES (23, 46572, 62800, 0, 157, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62800, 0, 157, 17, 0, 5036, 0, 0, 0, 0, 0, '', 'Item is available with achievement Thats a Lot of Bait');
INSERT INTO `conditions` VALUES (23, 46572, 62800, 0, 158, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62800, 0, 158, 17, 0, 5036, 0, 0, 0, 0, 0, '', 'Item is available with achievement Thats a Lot of Bait');

DELETE FROM `npc_vendor` WHERE (`item`='62800');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46572, 0, 62800, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 62800, 0, 0, 0);

-- Alliance vendor Item 62800 Recipe: Seafood Magnifique Feast 
INSERT INTO `conditions` VALUES (23, 46602, 62800, 0, 249, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62800, 0, 249, 17, 0, 5036, 0, 0, 0, 0, 0, '', 'Item is available with achievement Thats a Lot of Bait');
INSERT INTO `conditions` VALUES (23, 46602, 62800, 0, 250, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62800, 0, 250, 17, 0, 5036, 0, 0, 0, 0, 0, '', 'Item is available with achievement Thats a Lot of Bait');
INSERT INTO `conditions` VALUES (23, 46602, 62800, 0, 251, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62800, 0, 251, 17, 0, 5036, 0, 0, 0, 0, 0, '', 'Item is available with achievement Thats a Lot of Bait');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 64402 Battle Standard of Coordination 
DELETE FROM `conditions` WHERE (`SourceEntry`='64402');
INSERT INTO `conditions` VALUES (23, 46572, 64402, 0, 159, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 64402, 0, 159, 17, 0, 5422, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Daily Routine');
INSERT INTO `conditions` VALUES (23, 46572, 64402, 0, 160, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 64402, 0, 160, 17, 0, 5422, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Daily Routine');
INSERT INTO `conditions` VALUES (23, 46572, 64402, 0, 161, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 64402, 0, 161, 17, 0, 5422, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Daily Routine');
INSERT INTO `conditions` VALUES (23, 46572, 64402, 0, 162, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 64402, 0, 162, 17, 0, 5422, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Daily Routine');

-- Alliance vendor Item 64399 Battle Standard of Coordination 
DELETE FROM `conditions` WHERE (`SourceEntry`='64399');
INSERT INTO `conditions` VALUES (23, 46602, 64399, 0, 252, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 64399, 0, 252, 17, 0, 5422, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Daily Routine');
INSERT INTO `conditions` VALUES (23, 46602, 64399, 0, 253, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 64399, 0, 253, 17, 0, 5422, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Daily Routine');
INSERT INTO `conditions` VALUES (23, 46602, 64399, 0, 254, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 64399, 0, 254, 17, 0, 5422, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Daily Routine');
INSERT INTO `conditions` VALUES (23, 46602, 64399, 0, 255, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 64399, 0, 255, 17, 0, 5422, 0, 0, 0, 0, 0, '', 'Item is available with achievement A Daily Routine');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Hack Achievement_criteria.dbc for Mix Master and Better Leveling Through Chemistry that trigger when player craft cataclysm flasks
-- Hack 5465 29 107901 1000 ... 0 1
-- Hack 5024 29 107901 3000 ... 0 1
-- Alchemy link counter spell for crafting cata flasks
DELETE FROM `spell_linked_spell` WHERE (`spell_effect`='107901');
INSERT INTO `spell_linked_spell` VALUES (94162, 107901, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (80719, 107901, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (80720, 107901, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (80721, 107901, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (80723, 107901, 0, 'achievement counter');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 65435 Recipe: Cauldron of Battle
DELETE FROM `conditions` WHERE (`SourceEntry`='65435');
INSERT INTO `conditions` VALUES (23, 46572, 65435, 0, 163, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65435, 0, 163, 17, 0, 5465, 0, 0, 0, 0, 0, '', 'Item is available with achievement Mix Master');
INSERT INTO `conditions` VALUES (23, 46572, 65435, 0, 164, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65435, 0, 164, 17, 0, 5465, 0, 0, 0, 0, 0, '', 'Item is available with achievement Mix Master');
INSERT INTO `conditions` VALUES (23, 46572, 65435, 0, 165, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65435, 0, 165, 17, 0, 5465, 0, 0, 0, 0, 0, '', 'Item is available with achievement Mix Master');
INSERT INTO `conditions` VALUES (23, 46572, 65435, 0, 166, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65435, 0, 166, 17, 0, 5465, 0, 0, 0, 0, 0, '', 'Item is available with achievement Mix Master');

-- Alliance vendor Item 65435 Recipe: Cauldron of Battle
INSERT INTO `conditions` VALUES (23, 46602, 65435, 0, 256, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65435, 0, 256, 17, 0, 5465, 0, 0, 0, 0, 0, '', 'Item is available with achievement Mix Master');
INSERT INTO `conditions` VALUES (23, 46602, 65435, 0, 257, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65435, 0, 257, 17, 0, 5465, 0, 0, 0, 0, 0, '', 'Item is available with achievement Mix Master');
INSERT INTO `conditions` VALUES (23, 46602, 65435, 0, 258, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65435, 0, 258, 17, 0, 5465, 0, 0, 0, 0, 0, '', 'Item is available with achievement Mix Master');
INSERT INTO `conditions` VALUES (23, 46602, 65435, 0, 259, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65435, 0, 259, 17, 0, 5465, 0, 0, 0, 0, 0, '', 'Item is available with achievement Mix Master');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 65498 Recipe: Big Cauldron of Battle 
DELETE FROM `conditions` WHERE (`SourceEntry`='65498');
INSERT INTO `conditions` VALUES (23, 46572, 65498, 0, 167, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65498, 0, 167, 17, 0, 5024, 0, 0, 0, 0, 0, '', 'Item is available with achievement Better Leveling Through Chemistry');
INSERT INTO `conditions` VALUES (23, 46572, 65498, 0, 168, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65498, 0, 168, 17, 0, 5024, 0, 0, 0, 0, 0, '', 'Item is available with achievement Better Leveling Through Chemistry');
INSERT INTO `conditions` VALUES (23, 46572, 65498, 0, 169, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65498, 0, 169, 17, 0, 5024, 0, 0, 0, 0, 0, '', 'Item is available with achievement Better Leveling Through Chemistry');
INSERT INTO `conditions` VALUES (23, 46572, 65498, 0, 170, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 65498, 0, 170, 17, 0, 5024, 0, 0, 0, 0, 0, '', 'Item is available with achievement Better Leveling Through Chemistry');

DELETE FROM `npc_vendor` WHERE (`item`='65498');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46572, 0, 65498, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 65498, 0, 0, 0);

-- Alliance vendor Item 65498 Recipe: Big Cauldron of Battle 
INSERT INTO `conditions` VALUES (23, 46602, 65498, 0, 260, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65498, 0, 260, 17, 0, 5024, 0, 0, 0, 0, 0, '', 'Item is available with achievement Better Leveling Through Chemistry');
INSERT INTO `conditions` VALUES (23, 46602, 65498, 0, 261, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65498, 0, 261, 17, 0, 5024, 0, 0, 0, 0, 0, '', 'Item is available with achievement Better Leveling Through Chemistry');
INSERT INTO `conditions` VALUES (23, 46602, 65498, 0, 262, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65498, 0, 262, 17, 0, 5024, 0, 0, 0, 0, 0, '', 'Item is available with achievement Better Leveling Through Chemistry');
INSERT INTO `conditions` VALUES (23, 46602, 65498, 0, 263, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 65498, 0, 263, 17, 0, 5024, 0, 0, 0, 0, 0, '', 'Item is available with achievement Better Leveling Through Chemistry');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 71033 Lil' Tarecgosa
DELETE FROM `conditions` WHERE (`SourceEntry`='71033');
INSERT INTO `conditions` VALUES (23, 46572, 71033, 0, 264, 17, 0, 5840, 0, 0, 0, 0, 0, '', 'need ach Dragonwrath Tarecgosas Rest Guild Edition');

DELETE FROM `npc_vendor` WHERE (`item`='71033');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46572, 0, 71033, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 71033, 0, 0, 0);

-- Alliance vendor Item 71033 Lil' Tarecgosa
INSERT INTO `conditions` VALUES (23, 46602, 71033, 0, 265, 17, 0, 5840, 0, 0, 0, 0, 0, '', 'need ach Dragonwrath Tarecgosas Rest Guild Edition');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Reintroduction Guild Vault Voucher (7th Slot) 
DELETE FROM `npc_vendor` WHERE (`item`='62286');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46572, 0, 62286, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 62286, 0, 0, 0);
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Reintroduction Guild Vault Voucher (8th Slot) Horde
DELETE FROM `npc_vendor` WHERE (`item`='62287');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46572, 0, 62287, 0, 0, 0);

-- Reintroduction Guild Vault Voucher (8th Slot) Alliance
DELETE FROM `npc_vendor` WHERE (`item`='68136');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 68136, 0, 0, 0);
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 62286 Guild Vault Voucher (7th Slot)
-- Hack Achievement_criteria.dbc for guild level 5 that trigger when player have aura 83940 peark spell at lv 5
-- Hack 4943 110 83940 1 ... 0 2
DELETE FROM `conditions` WHERE (`SourceEntry`='62286');
INSERT INTO `conditions` VALUES (23, 46572, 62286, 0, 171, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62286, 0, 171, 1, 0, 83940, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 5');
INSERT INTO `conditions` VALUES (23, 46572, 62286, 0, 172, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62286, 0, 172, 1, 0, 83940, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 5');
INSERT INTO `conditions` VALUES (23, 46572, 62286, 0, 173, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62286, 0, 173, 1, 0, 83940, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 5');
INSERT INTO `conditions` VALUES (23, 46572, 62286, 0, 174, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62286, 0, 174, 1, 0, 83940, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 5');

-- Alliance vendor Item 62286 Guild Vault Voucher (7th Slot)
INSERT INTO `conditions` VALUES (23, 46602, 62286, 0, 266, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62286, 0, 266, 1, 0, 83940, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 5');
INSERT INTO `conditions` VALUES (23, 46602, 62286, 0, 267, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62286, 0, 267, 1, 0, 83940, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 5');
INSERT INTO `conditions` VALUES (23, 46602, 62286, 0, 268, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62286, 0, 268, 1, 0, 83940, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 5');
INSERT INTO `conditions` VALUES (23, 46602, 62286, 0, 269, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62286, 0, 269, 1, 0, 83940, 0, 0, 0, 0, 0, '', 'Item is available with achievement Guild Level 5');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 62287 Guild Vault Voucher (8th Slot)
DELETE FROM `conditions` WHERE (`SourceEntry`='62287');
INSERT INTO `conditions` VALUES (23, 46572, 62287, 0, 175, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62287, 0, 175, 17, 0, 5158, 0, 0, 0, 0, 0, '', 'Item is available with achievement Stay Classy');
INSERT INTO `conditions` VALUES (23, 46572, 62287, 0, 176, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62287, 0, 176, 17, 0, 5158, 0, 0, 0, 0, 0, '', 'Item is available with achievement Stay Classy');
INSERT INTO `conditions` VALUES (23, 46572, 62287, 0, 177, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62287, 0, 177, 17, 0, 5158, 0, 0, 0, 0, 0, '', 'Item is available with achievement Stay Classy');

-- Alliance vendor Item 68136 Guild Vault Voucher (8th Slot)
DELETE FROM `conditions` WHERE (`SourceEntry`='68136');
INSERT INTO `conditions` VALUES (23, 46602, 68136, 0, 178, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 68136, 0, 178, 17, 0, 5152, 0, 0, 0, 0, 0, '', 'Item is available with achievement Stay Classy');
INSERT INTO `conditions` VALUES (23, 46602, 68136, 0, 179, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 68136, 0, 179, 17, 0, 5152, 0, 0, 0, 0, 0, '', 'Item is available with achievement Stay Classy');
INSERT INTO `conditions` VALUES (23, 46602, 68136, 0, 180, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 68136, 0, 180, 17, 0, 5152, 0, 0, 0, 0, 0, '', 'Item is available with achievement Stay Classy');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Hack Achievement_criteria.dbc for Set the Oven to "Cataclysmic" that trigger when player craft some cataclysm food
-- Hack 5467 29 92854 5000 ... 0 1
-- Cooking link counter spell for crafting some cata food
DELETE FROM `spell_linked_spell` WHERE (`spell_effect`='92854');
INSERT INTO `spell_linked_spell` VALUES (88012, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88030, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (96133, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88003, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88016, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88039, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88024, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88028, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88042, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88004, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88005, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88034, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88014, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88020, 92854, 0, 'achievement counter');
INSERT INTO `spell_linked_spell` VALUES (88025, 92854, 0, 'achievement counter');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 62799 Recipe: Broiled Dragon Feast
DELETE FROM `conditions` WHERE (`SourceEntry`='62799');
INSERT INTO `conditions` VALUES (23, 46572, 62799, 0, 181, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62799, 0, 181, 17, 0, 5467, 0, 0, 0, 0, 0, '', 'Item is available with achievement Oven to Cataclysmic');
INSERT INTO `conditions` VALUES (23, 46572, 62799, 0, 182, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62799, 0, 182, 17, 0, 5467, 0, 0, 0, 0, 0, '', 'Item is available with achievement Oven to Cataclysmic');
INSERT INTO `conditions` VALUES (23, 46572, 62799, 0, 183, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 62799, 0, 183, 17, 0, 5467, 0, 0, 0, 0, 0, '', 'Item is available with achievement Oven to Cataclysmic');

-- Alliance vendor Item 62799 Recipe: Broiled Dragon Feast
INSERT INTO `conditions` VALUES (23, 46602, 62799, 0, 270, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62799, 0, 270, 17, 0, 5467, 0, 0, 0, 0, 0, '', 'Item is available with achievement Oven to Cataclysmic');
INSERT INTO `conditions` VALUES (23, 46602, 62799, 0, 271, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62799, 0, 271, 17, 0, 5467, 0, 0, 0, 0, 0, '', 'Item is available with achievement Oven to Cataclysmic');
INSERT INTO `conditions` VALUES (23, 46602, 62799, 0, 272, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 62799, 0, 272, 17, 0, 5467, 0, 0, 0, 0, 0, '', 'Item is available with achievement Oven to Cataclysmic');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 63138 Dark Phoenix Hatchling 
DELETE FROM `conditions` WHERE (`SourceEntry`='63138');
INSERT INTO `conditions` VALUES (23, 46572, 63138, 0, 184, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');

DELETE FROM `npc_vendor` WHERE (`item`='63138');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46572, 0, 63138, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 63138, 0, 0, 0);

-- Alliance vendor Item 63138 Dark Phoenix Hatchling 
DELETE FROM `conditions` WHERE (`SourceEntry`='63138');
INSERT INTO `conditions` VALUES (23, 46602, 63138, 0, 273, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 63398 Armadillo Pup 
DELETE FROM `conditions` WHERE (`SourceEntry`='63398');
INSERT INTO `conditions` VALUES (23, 46572, 63398, 0, 185, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');

DELETE FROM `npc_vendor` WHERE (`item`='63398');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46572, 0, 63398, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 63398, 0, 0, 0);

-- Alliance vendor Item 63398 Armadillo Pup 
INSERT INTO `conditions` VALUES (23, 46602, 63398, 0, 274, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 64400 Banner of Cooperation 
DELETE FROM `conditions` WHERE (`SourceEntry`='64400');
INSERT INTO `conditions` VALUES (23, 46572, 64400, 0, 186, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');

DELETE FROM `npc_vendor` WHERE (`item`='63359');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 63359, 0, 0, 0);

-- Alliance vendor Item 63359 Banner of Cooperation 
DELETE FROM `conditions` WHERE (`SourceEntry`='63359');
INSERT INTO `conditions` VALUES (23, 46602, 63359, 0, 275, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 64401 Standard of Unity
DELETE FROM `conditions` WHERE (`SourceEntry`='64401');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 187, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 187, 17, 0, 5134, 0, 0, 0, 0, 0, '', 'Item is available with achievement Blackrock Caverns Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 187, 17, 0, 5136, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Stonecore Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 187, 17, 0, 5140, 0, 0, 0, 0, 0, '', 'Item is available with achievement Lost City of the Tolvir Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 187, 17, 0, 5137, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Vortex Pinnacle Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 187, 17, 0, 5139, 0, 0, 0, 0, 0, '', 'Item is available with achievement Halls of Origination Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 188, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 188, 17, 0, 5134, 0, 0, 0, 0, 0, '', 'Item is available with achievement Blackrock Caverns Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 188, 17, 0, 5136, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Stonecore Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 188, 17, 0, 5140, 0, 0, 0, 0, 0, '', 'Item is available with achievement Lost City of the Tolvir Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 188, 17, 0, 5137, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Vortex Pinnacle Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 188, 17, 0, 5139, 0, 0, 0, 0, 0, '', 'Item is available with achievement Halls of Origination Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 189, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 189, 17, 0, 5134, 0, 0, 0, 0, 0, '', 'Item is available with achievement Blackrock Caverns Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 189, 17, 0, 5136, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Stonecore Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 189, 17, 0, 5140, 0, 0, 0, 0, 0, '', 'Item is available with achievement Lost City of the Tolvir Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 189, 17, 0, 5137, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Vortex Pinnacle Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 189, 17, 0, 5139, 0, 0, 0, 0, 0, '', 'Item is available with achievement Halls of Origination Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 190, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 190, 17, 0, 5134, 0, 0, 0, 0, 0, '', 'Item is available with achievement Blackrock Caverns Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 190, 17, 0, 5136, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Stonecore Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 190, 17, 0, 5140, 0, 0, 0, 0, 0, '', 'Item is available with achievement Lost City of the Tolvir Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 190, 17, 0, 5137, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Vortex Pinnacle Guild Run');
INSERT INTO `conditions` VALUES (23, 46572, 64401, 0, 190, 17, 0, 5139, 0, 0, 0, 0, 0, '', 'Item is available with achievement Halls of Origination Guild Run');

-- Alliance vendor Item 64398 Standard of Unity
DELETE FROM `conditions` WHERE (`SourceEntry`='64398');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 276, 5, 0, 1168, 16, 0, 0, 0, 0, '', 'Item is available with friendly guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 276, 17, 0, 5134, 0, 0, 0, 0, 0, '', 'Item is available with achievement Blackrock Caverns Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 276, 17, 0, 5136, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Stonecore Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 276, 17, 0, 5140, 0, 0, 0, 0, 0, '', 'Item is available with achievement Lost City of the Tolvir Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 276, 17, 0, 5137, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Vortex Pinnacle Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 276, 17, 0, 5139, 0, 0, 0, 0, 0, '', 'Item is available with achievement Halls of Origination Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 277, 5, 0, 1168, 32, 0, 0, 0, 0, '', 'Item is available with honored guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 277, 17, 0, 5134, 0, 0, 0, 0, 0, '', 'Item is available with achievement Blackrock Caverns Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 277, 17, 0, 5136, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Stonecore Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 277, 17, 0, 5140, 0, 0, 0, 0, 0, '', 'Item is available with achievement Lost City of the Tolvir Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 277, 17, 0, 5137, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Vortex Pinnacle Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 277, 17, 0, 5139, 0, 0, 0, 0, 0, '', 'Item is available with achievement Halls of Origination Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 278, 5, 0, 1168, 64, 0, 0, 0, 0, '', 'Item is available with revered guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 278, 17, 0, 5134, 0, 0, 0, 0, 0, '', 'Item is available with achievement Blackrock Caverns Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 278, 17, 0, 5136, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Stonecore Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 278, 17, 0, 5140, 0, 0, 0, 0, 0, '', 'Item is available with achievement Lost City of the Tolvir Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 278, 17, 0, 5137, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Vortex Pinnacle Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 278, 17, 0, 5139, 0, 0, 0, 0, 0, '', 'Item is available with achievement Halls of Origination Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 279, 5, 0, 1168, 128, 0, 0, 0, 0, '', 'Item is available with exalted guild reputation');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 279, 17, 0, 5134, 0, 0, 0, 0, 0, '', 'Item is available with achievement Blackrock Caverns Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 279, 17, 0, 5136, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Stonecore Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 279, 17, 0, 5140, 0, 0, 0, 0, 0, '', 'Item is available with achievement Lost City of the Tolvir Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 279, 17, 0, 5137, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Vortex Pinnacle Guild Run');
INSERT INTO `conditions` VALUES (23, 46602, 64398, 0, 279, 17, 0, 5139, 0, 0, 0, 0, 0, '', 'Item is available with achievement Halls of Origination Guild Run');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde Vendor Introduction of Blue Mini Jouster - Gold Mini Jouster - Pebble  
DELETE FROM `npc_vendor` WHERE (`item`='65661');
DELETE FROM `npc_vendor` WHERE (`item`='65662');
DELETE FROM `npc_vendor` WHERE (`item`='60869');
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46572, 0, 65661, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46572, 0, 65662, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46572, 0, 60869, 0, 0, 0);

-- Alliance Vendor Introduction of Blue Mini Jouster - Gold Mini Jouster - Pebble  
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 65661, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 65662, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (46602, 0, 60869, 0, 0, 0);
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 65661/65662 Blue Mini Jouster - Gold Mini Jouster - Fix quest reward mail bug
DELETE FROM `conditions` WHERE (`SourceEntry`='65661');
INSERT INTO `conditions` VALUES (23, 46572, 65661, 0, 191, 17, 0, 5860, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Unbeatable Pterodactyl: BEATEN.');
DELETE FROM `conditions` WHERE (`SourceEntry`='65662');
INSERT INTO `conditions` VALUES (23, 46572, 65662, 0, 192, 17, 0, 5860, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Unbeatable Pterodactyl: BEATEN.');

-- Allince vendor Item 65661/65662 Blue Mini Jouster - Gold Mini Jouster - Fix quest reward mail bug
INSERT INTO `conditions` VALUES (23, 46602, 65661, 0, 280, 17, 0, 5860, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Unbeatable Pterodactyl: BEATEN.');
INSERT INTO `conditions` VALUES (23, 46602, 65662, 0, 281, 17, 0, 5860, 0, 0, 0, 0, 0, '', 'Item is available with achievement The Unbeatable Pterodactyl: BEATEN.');
-- ---------------------------------------------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------------------------------------------
-- Horde vendor Item 60869 Pebble - Fix quest reward mail bug
DELETE FROM `conditions` WHERE (`SourceEntry`='60869');
INSERT INTO `conditions` VALUES (23, 46572, 60869, 0, 193, 17, 0, 5449, 0, 0, 0, 0, 0, '', 'Item is available with achievement Rock Lover');

-- Alliance vendor Item 60869 Pebble - Fix quest reward mail bug
INSERT INTO `conditions` VALUES (23, 46602, 60869, 0, 282, 17, 0, 5449, 0, 0, 0, 0, 0, '', 'Item is available with achievement Rock Lover');
-- ---------------------------------------------------------------------------------------------------------------------------------------------