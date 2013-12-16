DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (43438, 49642);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES 
(43438, 1168, 0, 7, 0, 200, 0, 0, 0, 0),
(49642, 1168, 0, 7, 0, 300, 0, 0, 0, 0);