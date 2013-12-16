UPDATE `creature_template` SET `npcflag`=0 WHERE  `entry`=46378;
UPDATE `creature_template` SET `unit_flags`=0, `unit_flags2`=2048 WHERE  `entry`=46378;
UPDATE `creature_template` SET `unit_flags`=32768 WHERE  `entry`=25760;
UPDATE `creature_template` SET `dynamicflags`=8 WHERE  `entry`=29469;
UPDATE `creature_template` SET `unit_flags`=32768, `unit_flags2`=2048 WHERE  `entry`=29469;

-- health mod by Naaroth

Update `creature_template` SET health_mod=8 WHERE entry=23587;
Update `creature_template` SET health_mod=1 WHERE entry=23822;