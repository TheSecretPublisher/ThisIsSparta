-- Sentinel Hill Guard - Remove incorrect auras
UPDATE creature_template_addon SET auras = '' WHERE entry = 42407;

-- Argent Tournament Emotes
UPDATE `creature_addon` SET `emote`=010 WHERE `emote`=094; -- STATE_DANCE
UPDATE `creature_addon` SET `emote`=027 WHERE `emote`=044; -- STATE_READYUNARMED
UPDATE `creature_addon` SET `emote`=029 WHERE `emote`=025; -- STATE_POINT(DNR)
UPDATE `creature_addon` SET `emote`=064 WHERE `emote`=462; -- STATE_STUN
UPDATE `creature_addon` SET `emote`=068 WHERE `emote`=016; -- STATE_KNEEL
UPDATE `creature_addon` SET `emote`=069 WHERE `emote`=432; -- STATE_USESTANDING
UPDATE `creature_addon` SET `emote`=193 WHERE `emote`=050; -- STATE_SPELLPRECAST
UPDATE `creature_addon` SET `emote`=214 WHERE `emote`=213; -- STATE_READYRIFLE
UPDATE `creature_addon` SET `emote`=233 WHERE `emote`=467; -- STATE_WORK_MINING
UPDATE `creature_addon` SET `emote`=234 WHERE `emote`=466; -- STATE_WORK_CHOPWOOD
UPDATE `creature_addon` SET `emote`=253 WHERE `emote`=021; -- STATE_APPLAUD
UPDATE `creature_addon` SET `emote`=333 WHERE `emote`=045; -- STATE_READY1H
UPDATE `creature_addon` SET `emote`=376 WHERE `emote`=048; -- STATE_READYBOW
UPDATE `creature_addon` SET `emote`=379 WHERE `emote`=380; -- STATE_FISHING
UPDATE `creature_addon` SET `emote`=392 WHERE `emote`=011; -- STATE_LAUGH
UPDATE `creature_addon` SET `emote`=400 WHERE `emote`=401; -- STATE_DANCESPECIAL
UPDATE `creature_addon` SET `emote`=416 WHERE `emote`=402; -- STATE_CUSTOM_SPELL_01
UPDATE `creature_addon` SET `emote`=417 WHERE `emote`=403; -- STATE_CUSTOM_SPELL_02
UPDATE `creature_addon` SET `emote`=418 WHERE `emote`=007; -- STATE_EAT
UPDATE `creature_addon` SET `emote`=419 WHERE `emote`=405; -- STATE_CUSTOM_SPELL_04
UPDATE `creature_addon` SET `emote`=420 WHERE `emote`=404; -- STATE_CUSTOM_SPELL_03
UPDATE `creature_addon` SET `emote`=421 WHERE `emote`=406; -- STATE_CUSTOM_SPELL_05
UPDATE `creature_addon` SET `emote`=428 WHERE `emote`=381; -- STATE_LOOT
UPDATE `creature_addon` SET `emote`=451 WHERE `emote`=477; -- STATE_SPECIALUNARMED
UPDATE `creature_template_addon` SET `emote`=010 WHERE `emote`=094; -- STATE_DANCE
UPDATE `creature_template_addon` SET `emote`=027 WHERE `emote`=044; -- STATE_READYUNARMED
UPDATE `creature_template_addon` SET `emote`=029 WHERE `emote`=025; -- STATE_POINT(DNR)
UPDATE `creature_template_addon` SET `emote`=064 WHERE `emote`=462; -- STATE_STUN
UPDATE `creature_template_addon` SET `emote`=068 WHERE `emote`=016; -- STATE_KNEEL
UPDATE `creature_template_addon` SET `emote`=069 WHERE `emote`=432; -- STATE_USESTANDING
UPDATE `creature_template_addon` SET `emote`=193 WHERE `emote`=050; -- STATE_SPELLPRECAST
UPDATE `creature_template_addon` SET `emote`=214 WHERE `emote`=213; -- STATE_READYRIFLE
UPDATE `creature_template_addon` SET `emote`=233 WHERE `emote`=467; -- STATE_WORK_MINING
UPDATE `creature_template_addon` SET `emote`=234 WHERE `emote`=466; -- STATE_WORK_CHOPWOOD
UPDATE `creature_template_addon` SET `emote`=253 WHERE `emote`=021; -- STATE_APPLAUD
UPDATE `creature_template_addon` SET `emote`=333 WHERE `emote`=045; -- STATE_READY1H
UPDATE `creature_template_addon` SET `emote`=376 WHERE `emote`=048; -- STATE_READYBOW
UPDATE `creature_template_addon` SET `emote`=379 WHERE `emote`=380; -- STATE_FISHING
UPDATE `creature_template_addon` SET `emote`=392 WHERE `emote`=011; -- STATE_LAUGH
UPDATE `creature_template_addon` SET `emote`=400 WHERE `emote`=401; -- STATE_DANCESPECIAL
UPDATE `creature_template_addon` SET `emote`=416 WHERE `emote`=402; -- STATE_CUSTOM_SPELL_01
UPDATE `creature_template_addon` SET `emote`=417 WHERE `emote`=403; -- STATE_CUSTOM_SPELL_02
UPDATE `creature_template_addon` SET `emote`=418 WHERE `emote`=007; -- STATE_EAT
UPDATE `creature_template_addon` SET `emote`=419 WHERE `emote`=405; -- STATE_CUSTOM_SPELL_04
UPDATE `creature_template_addon` SET `emote`=420 WHERE `emote`=404; -- STATE_CUSTOM_SPELL_03
UPDATE `creature_template_addon` SET `emote`=421 WHERE `emote`=406; -- STATE_CUSTOM_SPELL_05
UPDATE `creature_template_addon` SET `emote`=428 WHERE `emote`=381; -- STATE_LOOT
UPDATE `creature_template_addon` SET `emote`=451 WHERE `emote`=477; -- STATE_SPECIALUNARMED

-- Update the game object template so these items are selectable
UPDATE `gameobject_template` SET `flags`=0 WHERE `entry` IN (55, 56, 61, 259, 261, 2083, 2688, 2701, 4141, 7510, 7923, 32569, 131474, 138492, 142151, 152097, 176392, 179485, 179517, 179880, 180025, 180503, 181698, 181748, 184300, 184825, 185165, 186585, 188085, 190777, 191760, 191761, 191766, 192060, 195676, 201742, 202135, 202264, 202335, 202697, 202701, 202706, 202712, 202714, 202859, 203134, 203140, 204817, 205207, 205874, 207104, 207125, 207406, 207407, 207408, 207409, 207410, 207411, 207412, 208420, 208549, 208550, 208825);
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry` IN (2702, 187565, 188419, 190535, 190602, 190657, 190917, 192079, 192080, 192524, 195497, 195517, 195600, 202613, 202759, 202916, 202975, 203301, 203305, 203395, 204959, 205350, 206585);