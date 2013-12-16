-- Fix vendor 43565
DELETE FROM `npc_vendor` WHERE `entry` = 43565;
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES (43565, 59231);
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES (43565, 59232);