-- Il ghoul evocato dal dk non deve castare nessuna spell ma fare solo danno melee
-- elimino ai e relativi smart script
DELETE FROM `smart_scripts` WHERE `entryorguid`=26125;
UPDATE `creature_template` SET `AIName`="" WHERE `entry`=26125;
