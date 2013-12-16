-- Aggiustamenti quest Undead

DELETE FROM `creature_questrelation` WHERE (`id`=1501) AND (`quest`=26799);
DELETE FROM `creature_involvedrelation` WHERE (`id`=1501);
UPDATE `creature_template` SET `npcflag`=0 WHERE (`entry`=1501);

UPDATE `creature_template` SET `npcflag`=1 WHERE (`entry`=38895);
UPDATE `creature_template` SET `npcflag`=1 WHERE (`entry`=49230);
UPDATE `creature_template` SET `npcflag`=1 WHERE (`entry`=49231);

UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `Id` IN(3095, 3096, 3097, 3098, 3099, 24962);
UPDATE `quest_template` SET `Level`=4, `MinLevel`=4 WHERE (`Id`=28651);