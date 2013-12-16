DELETE FROM `npc_vendor` WHERE  `entry`=30472 AND `item`=43462 AND `ExtendedCost`=2500;
DELETE FROM `npc_vendor` WHERE  `entry`=30472 AND `item`=43470 AND `ExtendedCost`=2500;
DELETE FROM `npc_vendor` WHERE  `entry`=30472 AND `item`=43472 AND `ExtendedCost`=2501;
DELETE FROM `npc_vendor` WHERE  `entry`=30472 AND `item`=43473 AND `ExtendedCost`=2501;
DELETE FROM `npc_vendor` WHERE  `entry`=30472 AND `item`=43499 AND `ExtendedCost`=2500;

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (30472, 0, 43462, 0, 0, 2500);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (30472, 0, 43470, 0, 0, 2500);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (30472, 0, 43472, 0, 0, 2501);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (30472, 0, 43473, 0, 0, 2501);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (30472, 0, 43499, 0, 0, 2500);
