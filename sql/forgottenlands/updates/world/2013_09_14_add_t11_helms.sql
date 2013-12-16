DELETE FROM `npc_vendor` WHERE  `entry`=58154 AND `item`=63684 AND `ExtendedCost`=2551 AND `type`=1;
DELETE FROM `npc_vendor` WHERE  `entry`=58154 AND `item`=63683 AND `ExtendedCost`=2551 AND `type`=1;
DELETE FROM `npc_vendor` WHERE  `entry`=58154 AND `item`=63682 AND `ExtendedCost`=2551 AND `type`=1;
DELETE FROM `npc_vendor` WHERE  `entry`=58155 AND `item`=63684 AND `ExtendedCost`=2551 AND `type`=1;
DELETE FROM `npc_vendor` WHERE  `entry`=58155 AND `item`=63683 AND `ExtendedCost`=2551 AND `type`=1;
DELETE FROM `npc_vendor` WHERE  `entry`=58155 AND `item`=63682 AND `ExtendedCost`=2551 AND `type`=1;



INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES (58155, 0, 63684, 0, 0, 2551, 1);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES (58155, 63682, 2551);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES (58155, 63683, 2551);

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `type`) VALUES 
(58154, 0, 63684, 0, 0, 2551, 1);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES (58154, 63682, 2551);
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES (58154, 63683, 2551);