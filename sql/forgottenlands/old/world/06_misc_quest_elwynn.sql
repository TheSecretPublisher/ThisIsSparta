-- Elwynn Forest fix 4.3.4 credits: airfive (forgottenlands dev team)

-- quest non funzionanti
DELETE FROM `creature_questrelation` WHERE quest IN (62, 26391, 28806, 28808, 28809, 28810, 28811, 28812, 28813);

-- Drop Northshire Abbey
UPDATE `creature_template` SET `lootid`=42937 WHERE (`entry`=42937);
UPDATE `creature_template` SET `lootid`=49871 WHERE (`entry`=49871);
UPDATE `creature_template` SET `lootid`=50039 WHERE (`entry`=50039);
DELETE FROM `creature_loot_template` WHERE entry IN (42937, 42938, 49871, 50039);
INSERT INTO `creature_loot_template` VALUES (42937, 117, 1.5, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42937, 159, 0.8, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42937, 805, 0.1, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42937, 828, 0.2, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42937, 4496, 0.2, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42937, 5571, 0.2, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42937, 5572, 0.1, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42937, 58361, -99, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42938, 117, 52.8, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42938, 159, 19.4, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42938, 805, 2, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42938, 828, 5.6, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42938, 4496, 2.8, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42938, 5571, 16.7, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42938, 5572, 2.8, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (42938, 58361, -2, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (49871, 805, 0.1, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (49871, 828, 0.1, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (49871, 3300, 23.5, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (49871, 4496, 0.1, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (49871, 5571, 0.1, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (49871, 5572, 0.1, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (49871, 62328, 76.5, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (50039, 117, 55.1, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (50039, 159, 24.5, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (50039, 805, 2.5, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (50039, 828, 6.3, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (50039, 4496, 5.3, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (50039, 5571, 2.5, 1, 0, 1, 1);
INSERT INTO `creature_loot_template` VALUES (50039, 5572, 4.2, 1, 0, 1, 1);

-- Beating them back
DELETE FROM `creature_questrelation` WHERE (`id`=49871);
DELETE FROM `creature_involvedrelation` WHERE (`quest`=29078);
UPDATE `quest_template` SET `RequiredRaces`=2098253, `OfferRewardText`='You\'ve bought us a little time, $N, but we\'ve got even bigger problems to deal with now.', `RequestItemsText`='Have you beaten back the Blackrock battle worgs?' WHERE `Title` LIKE '%beating them back%';
UPDATE `creature_template` SET `npcflag`=0 WHERE (`entry`=49871);

-- Lion for Lambs
DELETE FROM `creature_questrelation` WHERE (`id`=49874);
DELETE FROM `creature_involvedrelation` WHERE (`quest`=29079);
UPDATE `creature_template` SET `npcflag`=0 WHERE (`entry`=49874);
UPDATE `quest_template` SET `RequiredRaces`=2098253, `RequestItemsText`='Kill the spies!', `OfferRewardText`='Excellent work, $N. You\'ve turned out to be quite an asset to this garrison. It\'s time for you to train!' WHERE `Title` LIKE '%Lions for Lambs%';
UPDATE `quest_template` SET `PrevQuestId`=28767 WHERE (`Id`=28759);
UPDATE `quest_template` SET `PrevQuestId`=28757 WHERE (`Id`=28769);
UPDATE `quest_template` SET `PrevQuestId`=28762 WHERE (`Id`=28770);
UPDATE `quest_template` SET `PrevQuestId`=28763 WHERE (`Id`=28771);
UPDATE `quest_template` SET `PrevQuestId`=28764 WHERE (`Id`=28772);
UPDATE `quest_template` SET `PrevQuestId`=28765 WHERE (`Id`=28773);
UPDATE `quest_template` SET `PrevQuestId`=28766 WHERE (`Id`=28774);

-- ****** Letters
UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE `Id` IN (26910, 3104, 3101, 3102, 3103, 3100, 3105);
UPDATE `quest_template` SET `PrevQuestId`=28759 WHERE (`Id`=26910);
UPDATE `quest_template` SET `PrevQuestId`=28769 WHERE (`Id`=3104);
UPDATE `quest_template` SET `PrevQuestId`=28770 WHERE (`Id`=3101);
UPDATE `quest_template` SET `PrevQuestId`=28771 WHERE (`Id`=3103);
UPDATE `quest_template` SET `PrevQuestId`=28772 WHERE (`Id`=3102);
UPDATE `quest_template` SET `PrevQuestId`=28773 WHERE (`Id`=3105);
UPDATE `quest_template` SET `PrevQuestId`=28774 WHERE (`Id`=3100);

-- Class Quests (hunter's path, learning the word, ecc ecc)
UPDATE `creature_template` SET `npcflag`=19 WHERE (`entry`=43278);
UPDATE `creature_template` SET `AIName`='SmartAI', `npcflag`=19 WHERE (`entry`=459);
DELETE FROM `smart_scripts` WHERE `entryorguid` = 459;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (459, 0, 16, 0, 11, 0, 100, 1, 3000, 5000, 0, 0, 11, 44163, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Summon Imp Company');
UPDATE `creature_template` SET `unit_flags`=131076 WHERE (`entry`=44548);
UPDATE `quest_template` SET `RequiredRaces`=2098253, `RequiredNpcOrGo1`=44548 WHERE `Id` IN (26913, 26914, 26915, 26916, 26917, 26918, 26919);
UPDATE `quest_template` SET `OfferRewardText`='I see you have already mastered Immolation! I look forward to instructing you in the future. Do not forget to return for further lessons as you grow in power.' WHERE (`Id`=26914);
UPDATE `quest_template` SET `RequiredNpcOrGo2`=0, `RequiredNpcOrGoCount2`=0, `RequiredSpell`=0, `ObjectiveText2`=NULL WHERE (`Id`=26918);
UPDATE `quest_template` SET `RequiredNpcOrGo1`=44548,`RequiredSpellCast1`=100 WHERE (`Id`=26913);
UPDATE `quest_template` SET `RequiredNpcOrGo1`=44548,`RequiredSpellCast1`=348 WHERE (`Id`=26914);
UPDATE `quest_template` SET `RequiredNpcOrGo1`=44548,`RequiredSpellCast1`=2098 WHERE (`Id`=26915);
UPDATE `quest_template` SET `RequiredNpcOrGo1`=44548,`RequiredSpellCast1`=5143 WHERE (`Id`=26916);
UPDATE `quest_template` SET `RequiredNpcOrGo1`=44548,`RequiredSpellCast1`=56641 WHERE (`Id`=26917);
UPDATE `quest_template` SET `RequiredNpcOrGo1`=44548,`RequiredSpellCast1`=20271 WHERE (`Id`=26918);
UPDATE `quest_template` SET `RequiredNpcOrGo1`=44564,`RequiredSpellCast1`=2050 WHERE (`Id`=26919);
UPDATE `quest_template` SET `PrevQuestId`=26910 WHERE (`Id`=26917);
UPDATE `quest_template` SET `PrevQuestId`=3104 WHERE (`Id`=26916);
UPDATE `quest_template` SET `PrevQuestId`=3101 WHERE (`Id`=26918);
UPDATE `quest_template` SET `PrevQuestId`=3103 WHERE (`Id`=26919);
UPDATE `quest_template` SET `PrevQuestId`=3102 WHERE (`Id`=26915);
UPDATE `quest_template` SET `PrevQuestId`=3105 WHERE (`Id`=26914);
UPDATE `quest_template` SET `PrevQuestId`=3100 WHERE (`Id`=26913);

-- Join  the Battle
DELETE FROM `creature_involvedrelation` WHERE (`quest`=29080);
DELETE FROM `creature_questrelation` WHERE (`quest`=29080);
UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE `Id` IN (28780, 28784, 28785, 28786, 28787, 28788, 28789);
UPDATE `quest_template` SET `PrevQuestId`=26917 WHERE (`Id`=28780);
UPDATE `quest_template` SET `PrevQuestId`=26916 WHERE (`Id`=28784);
UPDATE `quest_template` SET `PrevQuestId`=26918 WHERE (`Id`=28785);
UPDATE `quest_template` SET `PrevQuestId`=26919 WHERE (`Id`=28786);
UPDATE `quest_template` SET `PrevQuestId`=26915 WHERE (`Id`=28787);
UPDATE `quest_template` SET `PrevQuestId`=26914 WHERE (`Id`=28788);
UPDATE `quest_template` SET `PrevQuestId`=26913 WHERE (`Id`=28789);
UPDATE `quest_template` SET `OfferRewardText`='It\'s true, we were ambushed. I don\'t dare send any more soldiers out there and risk losing them too. I need a volunteer. Someone willing to risk their life!' WHERE `Id` IN (28780, 28784, 28785, 28786, 28787, 28788, 28789);

-- They sent assassin 
DELETE FROM `creature_questrelation` WHERE (`id`=50039);
UPDATE `creature_template` SET `npcflag`=0 WHERE (`entry`=50039);
DELETE FROM `creature_involvedrelation` WHERE (`quest`=29081);
DELETE FROM `creature_questrelation` WHERE (`quest`=29081);
UPDATE `quest_template` SET `OfferRewardText`='That will teach those monsters! They\'ll think twice before taking another mercenary job for orcs.' WHERE `Id` IN (28793, 28792, 28791, 28794, 28795, 28796, 28797);
UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE `Id` IN (28791, 28792, 28793, 28794, 28795, 28796, 28797);
UPDATE `quest_template` SET `PrevQuestId`=28780 WHERE (`Id`=28791);
UPDATE `quest_template` SET `PrevQuestId`=28784 WHERE (`Id`=28792);
UPDATE `quest_template` SET `PrevQuestId`=28785 WHERE (`Id`=28793);
UPDATE `quest_template` SET `PrevQuestId`=28786 WHERE (`Id`=28794);
UPDATE `quest_template` SET `PrevQuestId`=28787 WHERE (`Id`=28795);
UPDATE `quest_template` SET `PrevQuestId`=28788 WHERE (`Id`=28796);
UPDATE `quest_template` SET `PrevQuestId`=28789 WHERE (`Id`=28797);

-- The Rear is Clear
UPDATE `quest_template` SET `OfferRewardText`='With your help we have managed to secure the northern and western sectors of Northshire. We still have a rather large contingency of Blackrock orcs to the east and they\'ve begun burning down the forest!' WHERE `Id` IN(28817, 28818, 28819, 28820, 28821, 28822, 28823);
DELETE FROM `creature_involvedrelation` WHERE (`quest`=29083);
DELETE FROM `creature_questrelation` WHERE (`quest`=29083);
UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE `Id` IN (28817, 28818, 28819, 28820, 28821, 28822, 28823);
UPDATE `quest_template` SET `PrevQuestId`=28791 WHERE (`Id`=28817);
UPDATE `quest_template` SET `PrevQuestId`=28792 WHERE (`Id`=28818);
UPDATE `quest_template` SET `PrevQuestId`=28793 WHERE (`Id`=28819);
UPDATE `quest_template` SET `PrevQuestId`=28794 WHERE (`Id`=28820);
UPDATE `quest_template` SET `PrevQuestId`=28795 WHERE (`Id`=28821);
UPDATE `quest_template` SET `PrevQuestId`=28796 WHERE (`Id`=28822);
UPDATE `quest_template` SET `PrevQuestId`=28797 WHERE (`Id`=28823);

-- Ending the invasion!
UPDATE `creature_template` SET `npcflag`=0, `dynamicflags`=0, `lootid`=42938 WHERE (`entry`=50039);
UPDATE `quest_template` SET `PrevQuestId`=26389 WHERE (`Id`=26390);

-- FEAR no evil
DELETE FROM `creature_involvedrelation` WHERE (`id`=50047);
DELETE FROM `creature_questrelation` WHERE (`id`=50047);
DELETE FROM `creature_questrelation` WHERE (`quest`=29082);
DELETE FROM `smart_scripts` WHERE `entryorguid` =50047;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 0, 2, 8, 0, 100, 1, 93072, 0, 100, 120, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Spell Hit - Set Phase 2');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 2, 4, 61, 0, 100, 0, 0, 0, 0, 0, 19, 49152, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Spell Hit - Remove Flags');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 3, 5, 25, 0, 100, 0, 0, 0, 0, 0, 18, 49152, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On AI Init - Set Flags');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 4, 9, 61, 0, 100, 0, 0, 0, 0, 0, 91, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Spell Hit - Remove Field Bytes 1');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 90, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On AI Init - Set Field Bytes 1');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 6, 7, 1, 1, 100, 1, 2000, 2100, 2000, 2100, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Update Phase 2 - Talk');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 7, 8, 61, 1, 100, 0, 0, 0, 0, 0, 5, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Update Phase 2 - Emote OneShot Wave');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 8, 10, 61, 1, 100, 0, 0, 0, 0, 0, 33, 50047, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Update Phase 2 - Give Kill Credit');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 9, 14, 61, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Spell Hit - Store Target');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 10, 0, 61, 1, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Update Phase 2 - Set Phase 3');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 11, 12, 61, 2, 100, 1, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Update Phase 3 - Move To Dummy');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 12, 0, 61, 2, 100, 0, 0, 0, 0, 0, 23, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Update Phase 3 - Set Phase 4');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 13, 0, 1, 4, 100, 0, 16000, 17000, 16000, 17000, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Update Phase 4 - Despawn');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 14, 15, 61, 0, 100, 0, 0, 0, 0, 0, 11, 93097, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Spell Hit - Cast Renewed Life on self');
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (50047, 0, 15, 0, 61, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Injured Stormwind Infantry - On Spell Hit - Remove spellclick flag');
UPDATE `quest_template` SET `RequiredClasses`=0 WHERE (`Id`=28811);
UPDATE `quest_template` SET `RequiredRaces`=2097152, `OfferRewardText`='I think you now understand the power of the Light. The Light giveth hope, $g brother:sister; and the Light taketh from the darkness! BLESSED BE THE LIGHT!' WHERE `Id` IN (28806, 28808, 28809, 28810, 28811, 28812, 28813);
DELETE FROM `creature_template` WHERE `entry`=50047;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES (50047, 0, 0, 0, 0, 0, 32729, 0, 0, 0, 'Injured Stormwind Infantry', '', 'SkinAlliance', 0, 2, 3, 0, 11, 11, 0, 1, 1, 1, 0, 5.7, 7.6, 0, 53, 1, 2000, 0, 1, 49920, 0, 0, 0, 0, 0, 0, 1.9, 3.8, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 15, '', 0, 3, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50047, 0, 0, 'npc_injured_soldier', 1);
DELETE FROM `item_template` WHERE `entry` = 65733;
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `bonding`, `Material`, `WDBVerified`) VALUES (65733, 12, 'Paxton\'s Prayer Book', 36578, 1, 65538, 8192, 4, 4, 13329);

-- A swift message quest chain
UPDATE `quest_template` SET `PrevQuestId`=26393 WHERE (`Id`=26394);
UPDATE `quest_template` SET `PrevQuestId`=26394 WHERE (`Id`=26394);
UPDATE `quest_template` SET `PrevQuestId`=26395 WHERE (`Id`=26394);

-- collector's ring
UPDATE `quest_poi_points` SET `x`='-9468', `y`='-1306' WHERE (`questId`=147) AND (`id`=1);

-- tender boar meat
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-70 WHERE (`entry`=113) AND (`item`=60401);

