-- ripariamo agli errori di trinity, northshire abbey.
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry` IN(49871, 49874, 50039);
