-- Orgrimmar Portals 
-- Portal to Twilight Highlands
DELETE FROM `gameobject_template` WHERE (`entry`='402328');
INSERT INTO `gameobject_template` VALUES (402328, 22, 10357, 'Portal to Twilight Highlands', '', '', '', 0, 0, 1.12, 0, 0, 0, 0, 0, 0, 85545, 0, 0, 0, 0, 10256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 15595);
DELETE FROM `gameobject` WHERE (`id`='207686');
DELETE FROM `gameobject` WHERE (`id`='402328');
INSERT INTO `gameobject` VALUES (null, 402328, 1, 1, 1, 2029.23, -4379.83, 97.9757, 0.165805, 0, 0, 0, 1, 120, 255, 1);
-- Portal to Mount Hyjal
UPDATE `spell_target_position` SET `target_position_x`='5532.490', `target_position_y`='-3622.479', `target_position_z`='1567.360', `target_orientation`='5.10' WHERE (`id`='94565');
UPDATE `gameobject_template` SET `size`='1.12' WHERE (`entry`='207688');
DELETE FROM `creature_template_addon` WHERE (`entry`='50088');
INSERT INTO `creature_template_addon` VALUES (50088, 0, 0, 65536, 1, 0, '64573 52855');
DELETE FROM `gameobject` WHERE (`id`='207414');
INSERT INTO `gameobject` VALUES (null, 207414, 1, 1, 1, 2048.53, -4391.54, 99.4225, 3.12412, 0, 0, 0, 1, 120, 255, 1);
-- Portal to Deepholm
DELETE FROM `gameobject` WHERE (`id`='207689');
INSERT INTO `gameobject` VALUES (null, 207689, 1, 1, 1, 2065.65, -4390.65, 98.0469, 0.139625, 0, 0, 0, 1, 120, 255, 1);
UPDATE `gameobject_template` SET `size`='1.12' WHERE (`entry`='207689');
-- Portal to Vashj'ir
DELETE FROM `spell_target_position` WHERE (`id`='82677');
INSERT INTO `spell_target_position` (`id`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES ('82677', '-5310.85', '3914.41', '4.22', '3.45');
UPDATE `gameobject_template` SET `size`=1.12, `data0`=47754 WHERE (`entry`=207690);
DELETE FROM `gameobject` WHERE (`id`=207690);
INSERT INTO `gameobject` VALUES (null, 207690, 1, 1, 1, 2063.34, -4362.29, 98.1102, 3.98808, 0, 0, 0, 1, 120, 255, 1);
-- Portal to Uldum
UPDATE `gameobject_template` SET `size`=1.12 WHERE (`entry`=207687);
DELETE FROM `gameobject` WHERE (`id`=207687);
INSERT INTO `gameobject` VALUES (null, 207687, 1, 1, 1, 2039.67, -4356.29, 98.0043, 2.46964, 0, 0, 0, 1, 120, 255, 1);
-- Portal to Tol Barad
DELETE FROM `gameobject` WHERE (`id`=206595);
INSERT INTO `gameobject` VALUES (null, 206595, 1, 1, 1, 2031.22, -4330.87, 95.471, 0, 0, 0, 0, 1, 120, 255, 1);

-- Stormwind Portals 
-- Portal to Vashj'ir
DELETE FROM `spell_target_position` WHERE (`id`=47754);
INSERT INTO `spell_target_position` (`id`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (47754, -5671.02, 3720.07, 2, 0);
UPDATE `gameobject_template` SET `size`=1.12, `data0`=82677 WHERE (`entry`=207691);

-- Portal to Deepholm
INSERT INTO `gameobject` VALUES (null, 207689, 0, 1, 1, -8223.48, 451.378, 117.462, 2.79452, 0, 0, 0, 0.98498, 0.172668, 255, 1);

-- Portal to Mount Hyjal
DELETE FROM `gameobject` WHERE (`id`='207688');
INSERT INTO `gameobject` VALUES (null, 207688, 0, 1, 1, -8212.52, 399.422, 117.307, 1.00555, 0, 0, 0, 0.481859, 0.876249, 255, 1);
INSERT INTO `gameobject` VALUES (null, 207688, 1, 1, 1, 2042.18, -4395.65, 98.056, 0, 0, 0, 0, 0.481859, 0.876249, 255, 1);

-- Portal to Uldum
INSERT INTO `gameobject` VALUES (null, 207687, 0, 1, 1, -8233.36, 415.888, 117.505, 0.777982, 0, 0, 0.379255, 0.925292, 255, 0, 1);

-- Portal to Twilight Highlands
DELETE FROM `gameobject` WHERE (`id`='207686');
INSERT INTO `gameobject` VALUES (null, 207686, 0, 1, 1, -8186, 413.653, 116.77, 2.4391, 0, 0, 0.938944, 0.344069, 255, 0, 1);
UPDATE `spell_target_position` SET `target_orientation`='3.69' WHERE (`id`='82621');