-- Add loot for Twilight Jasmine
DELETE FROM `gameobject_loot_template` WHERE (`entry`='28525') AND (`item`='52329');
INSERT INTO `gameobject_loot_template` VALUES (28525, 52329, 45, 1, 0, 1, 3);
DELETE FROM `gameobject_loot_template` WHERE (`entry`='28525') AND (`item`='63122');
INSERT INTO `gameobject_loot_template` VALUES (28525, 63122, 15, 1, 0, 1, 1);

-- Fix spawn seconds for Heartblossom
UPDATE `gameobject` SET `spawntimesecs`='60' WHERE (`id`='202750');