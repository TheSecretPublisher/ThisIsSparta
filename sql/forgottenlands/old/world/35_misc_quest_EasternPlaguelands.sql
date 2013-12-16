UPDATE `quest_template` SET `NextQuestId`=27453, `NextQuestIdChain`=0, `Flags`=8 WHERE (`Id`=27451);
UPDATE `quest_template` SET `NextQuestId`=27453, `NextQuestIdChain`=0, `Flags`=8 WHERE (`Id`=27452);
UPDATE `quest_template` SET `NextQuestId`=27454, `NextQuestIdChain`=0, `Flags`=8 WHERE (`Id`=27453);
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=27454);

-- fix loot 15447
DELETE FROM `creature_loot_template` WHERE `entry`=8531 AND item=15447;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8531, 15447, -61);
UPDATE `creature_template` SET `lootid`=8531 WHERE (`entry`=8531);

DELETE FROM `creature_loot_template` WHERE `entry`=8541 AND item=15447;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8541, 15447, -61);
UPDATE `creature_template` SET `lootid`=8541 WHERE (`entry`=8541);

DELETE FROM `creature_loot_template` WHERE `entry`=8525 AND item=15447;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8525, 15447, -61);
UPDATE `creature_template` SET `lootid`=8525 WHERE (`entry`=8525);

DELETE FROM `creature_loot_template` WHERE `entry`=8543 AND item=15447;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8543, 15447, -61);
UPDATE `creature_template` SET `lootid`=8543 WHERE (`entry`=8543);

DELETE FROM `creature_loot_template` WHERE `entry`=8526 AND item=15447;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8526, 15447, -61);
UPDATE `creature_template` SET `lootid`=8526 WHERE (`entry`=8526);

-- fix http://www.wowhead.com/quest=27452 

DELETE FROM `creature_loot_template` WHERE `entry`=8551 AND `item` IN (61280, 61281);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8551, 61280, -30);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8551, 61281, -30);
UPDATE `creature_template` SET `lootid`=8551 WHERE (`entry`=8551);

DELETE FROM `creature_loot_template` WHERE `entry`=8548 AND `item` IN (61280, 61281);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8548, 61280, -30);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8548, 61281, -30);
UPDATE `creature_template` SET `lootid`=8548 WHERE (`entry`=8548);

-- fix chain http://www.wowhead.com/npc=10667

UPDATE `quest_template` SET `NextQuestId`=27391, `NextQuestIdChain`=0 WHERE (`Id`=27390);
UPDATE `quest_template` SET `NextQuestId`=27390, `NextQuestIdChain`=0 WHERE (`Id`=27389);
UPDATE `quest_template` SET `SourceItemId`=13202 WHERE (`Id`=27388);

-- fix npc Zaeldarr the Outcast 
DELETE FROM `creature_loot_template` WHERE `entry`=12250 AND item=15785;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (12250, 15785, -100);
UPDATE `creature_template` SET `lootid`=12250 WHERE (`entry`=12250);

-- fix loot 8529

DELETE FROM `creature_loot_template` WHERE `entry`=8529 AND item=13157;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8529, 13157, -100);
UPDATE `creature_template` SET `lootid`=8529 WHERE (`entry`=8529);

-- The Battle of Darrowshire rimossa
DELETE FROM `creature_involvedrelation` WHERE (`id`=10926) AND (`quest`=27390);


DELETE FROM `creature_loot_template` WHERE `entry`=45450 AND item=60987;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (45450, 60987, 100);
UPDATE `creature_template` SET `lootid`=45450 WHERE (`entry`=45450);

UPDATE `quest_template` SET `NextQuestId`=27385, `NextQuestIdChain`=0 WHERE (`Id`=27384);
UPDATE `quest_template` SET `NextQuestId`=27385, `NextQuestIdChain`=0 WHERE (`Id`=27392);
UPDATE `quest_template` SET `NextQuestId`=27386, `NextQuestIdChain`=0 WHERE (`Id`=27385);

-- add hidden treasures
DELETE FROM `gameobject` WHERE `guid`=255536 AND `id`=177544;
INSERT INTO `gameobject` VALUES (255536, 177544, 0, 1, 65535, 1453.22, -3594.56, 86.9531, 2.48811, 0, 0, 0.947094, 0.320957, 300, 0, 1);

-- fix quest 

DELETE FROM `item_template` WHERE (`entry`=610380);
INSERT INTO `item_template` (`entry`, `class`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`) VALUES (610380, 12, 'Overcharged Mote', 71511, 1, 65536, 0);
DELETE FROM `spell_scripts` WHERE (`datalong`=45475);
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES (84973, 8, 45475); 
UPDATE `item_template` SET `entry`='610380' WHERE (`entry`='610380');
UPDATE `quest_template` SET `SourceItemId`=610380, `RequiredSourceItemId4`=610380 WHERE (`Id`=27420);


UPDATE `creature_template` SET `AIName`='SmartAI' WHERE (`entry`='45475');
DELETE FROM `smart_scripts` WHERE (`entryorguid`='45475');
INSERT INTO `smart_scripts` VALUES (45475, 0, 0, 1, 8, 0, 100, 0, 84973, 0, 0, 0, 33, 33183, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'provaprova');

DELETE FROM `creature_questrelation` WHERE (`id`='16135') AND (`quest`='27421');

-- fix chain http://www.wowhead.com/npc=45417
UPDATE `quest_template` SET `NextQuestId`=27455, `NextQuestIdChain`=0 WHERE (`Id`=27448);
UPDATE `quest_template` SET `NextQuestId`=27463, `NextQuestIdChain`=0 WHERE (`Id`=27455);
UPDATE `quest_template` SET `NextQuestId`=27464, `NextQuestIdChain`=0 WHERE (`Id`=27463);
UPDATE `quest_template` SET `NextQuestId`=27465, `NextQuestIdChain`=0 WHERE (`Id`=27464);
UPDATE `quest_template` SET `NextQuestId`=27373, `NextQuestIdChain`=0 WHERE (`Id`=27369);
UPDATE `quest_template` SET `NextQuestId`=27371, `NextQuestIdChain`=0 WHERE (`Id`=27370);
UPDATE `quest_template` SET `NextQuestId`=27372, `NextQuestIdChain`=0 WHERE (`Id`=27371);
UPDATE `quest_template` SET `NextQuestId`=27373, `NextQuestIdChain`=0 WHERE (`Id`=27372);
UPDATE `quest_template` SET `NextQuestId`=27489, `NextQuestIdChain`=0 WHERE (`Id`=27488);
UPDATE `quest_template` SET `NextQuestId`=27522, `NextQuestIdChain`=0 WHERE (`Id`=27489);
UPDATE `quest_template` SET `NextQuestId`=27524, `NextQuestIdChain`=0 WHERE (`Id`=27522);
UPDATE `quest_template` SET `NextQuestId`=27525, `NextQuestIdChain`=0 WHERE (`Id`=27524);
UPDATE `quest_template` SET `NextQuestId`=27368, `NextQuestIdChain`=0 WHERE (`Id`=27367);

-- fix flag 
UPDATE `quest_template` SET `Flags`=8 WHERE (`Id`=27371);


DELETE FROM `creature_loot_template` WHERE `entry`=8596 AND item=60986;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8596, 60986, -100);
UPDATE `creature_template` SET `lootid`=8596 WHERE (`entry`=8596);

-- fix http://www.wowhead.com/quest=27368
DELETE FROM `creature_loot_template` WHERE `entry`=8557 AND item=60983;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8557, 60983, -100);
UPDATE `creature_template` SET `lootid`=8557 WHERE (`entry`=8557);

DELETE FROM `creature_loot_template` WHERE `entry`=8558 AND item=60983;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8558, 60983, -100);
UPDATE `creature_template` SET `lootid`=8558 WHERE (`entry`=8558);

DELETE FROM `creature_loot_template` WHERE `entry`=8556 AND item=60983;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8556, 60983, -100);
UPDATE `creature_template` SET `lootid`=8556 WHERE (`entry`=8556);

DELETE FROM `creature_loot_template` WHERE `entry`=8555 AND item=60983;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8555, 60983, -100);
UPDATE `creature_template` SET `lootid`=8555 WHERE (`entry`=8555);


-- delete quest mezzi
DELETE FROM `creature_questrelation` WHERE (`id`=45417) AND (`quest`=27448);
DELETE FROM `creature_questrelation` WHERE (`id`=45429) AND (`quest`=27381);
DELETE FROM `creature_questrelation` WHERE (`id`=45417) AND (`quest`=27373);

-- fix chain npc Rimblat Earthshatter <The Earthen Ring>
UPDATE `quest_template` SET `PrevQuestId`=27456 WHERE (`Id`=27457);

-- fix smokey and the bandage 
DELETE FROM `creature_loot_template` WHERE `entry`=46167 AND item=62028;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (46167, 62028, -100);
UPDATE `creature_template` SET `lootid`=46167 WHERE (`entry`=46167);

-- fix
DELETE FROM `creature_loot_template` WHERE `entry`=8605 AND item=13853;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8605, 13853, -60);
UPDATE `creature_template` SET `lootid`=8605 WHERE (`entry`=8605);


DELETE FROM `creature_loot_template` WHERE `entry`=8603 AND item=13853;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8603, 13853, -60);
UPDATE `creature_template` SET `lootid`=8603 WHERE (`entry`=8603);

-- fix gob mancanti
DELETE FROM `gameobject` WHERE (`id`=205560);
INSERT INTO `gameobject` VALUES (255851, 205560, 0, 1, 65535, 3148.01, -3160.91, 165.487, 2.16319, 0, 0, 0.882709, 0.46992, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255852, 205560, 0, 1, 65535, 3143.56, -3119.34, 167.698, 1.95716, 0, 0, 0.829706, 0.558201, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255853, 205560, 0, 1, 65535, 3182.48, -3090.15, 155.087, 0.89291, 0, 0, 0.431771, 0.901983, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255854, 205560, 0, 1, 65535, 3209.49, -3079.36, 158.639, 0.588035, 0, 0, 0.2898, 0.957087, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255855, 205560, 0, 1, 65535, 3263.33, -3071.77, 157.184, 5.5786, 0, 0, 0.345053, -0.938583, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255856, 205560, 0, 1, 65535, 3307.19, -3117.66, 168.839, 5.8981, 0, 0, 0.191357, -0.98152, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255857, 205560, 0, 1, 65535, 3073.86, -3165.5, 140.974, 5.44585, 0, 0, 0.406546, -0.91363, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255858, 205560, 0, 1, 65535, 3061.21, -3171.33, 136.42, 4.02835, 0, 0, 0.903308, -0.428992, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255859, 205560, 0, 1, 65535, 3052.39, -3182.16, 141.177, 4.02835, 0, 0, 0.903308, -0.428992, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255860, 205560, 0, 1, 65535, 3037.23, -3183.05, 142.755, 1.98985, 0, 0, 0.838717, 0.544568, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255861, 205560, 0, 1, 65535, 3039.47, -3148.9, 125.411, 2.07535, 0, 0, 0.861224, 0.508226, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255862, 205560, 0, 1, 65535, 3034.36, -3139.65, 124.126, 1.62085, 0, 0, 0.724579, 0.689192, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255863, 205560, 0, 1, 65535, 3029.16, -3134.25, 121.756, 5.67203, 0, 0, 0.300844, -0.953673, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255864, 205560, 0, 1, 65535, 3027.34, -3105.15, 123.092, 0.625559, 0, 0, 0.307704, 0.951482, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255865, 205560, 0, 1, 65535, 2987.88, -3091.74, 114.245, 3.25983, 0, 0, 0.998253, -0.0590823, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255866, 205560, 0, 1, 65535, 2973.73, -3112.17, 111.964, 4.36458, 0, 0, 0.818792, -0.57409, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255867, 205560, 0, 1, 65535, 2965.74, -3134.21, 111.028, 4.36458, 0, 0, 0.818792, -0.57409, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255868, 205560, 0, 1, 65535, 2972.11, -3145.3, 113.611, 5.29945, 0, 0, 0.472272, -0.881453, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255869, 205560, 0, 1, 65535, 2992.23, -3147.96, 114.089, 6.15783, 0, 0, 0.0626382, -0.998036, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255870, 205560, 0, 1, 65535, 3035.39, -3180.29, 141.011, 5.82258, 0, 0, 0.228274, -0.973597, 300, 0, 1);

DELETE FROM `gameobject` WHERE (`id`=205559);
INSERT INTO `gameobject` VALUES (255822, 205559, 0, 1, 65535, 3079.96, -3209.17, 143.709, 5.60301, 0, 0, 0.33357, -0.942725, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255823, 205559, 0, 1, 65535, 3053.45, -3195.43, 146.062, 2.70838, 0, 0, 0.976633, 0.214915, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255824, 205559, 0, 1, 65535, 3063.24, -3143.52, 134.365, 1.92201, 0, 0, 0.819767, 0.572697, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255825, 205559, 0, 1, 65535, 3025.72, -3142.84, 121.155, 3.12351, 0, 0, 0.999959, 0.00904198, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255826, 205559, 0, 1, 65535, 3113.02, -3173.82, 149.731, 0.171448, 0, 0, 0.0856192, 0.996328, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255827, 205559, 0, 1, 65535, 3137.83, -3140.47, 161.076, 1.22445, 0, 0, 0.574689, 0.818372, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255828, 205559, 0, 1, 65535, 3113.46, -3133.52, 159.025, 0.144448, 0, 0, 0.0721614, 0.997393, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255829, 205559, 0, 1, 65535, 3147.81, -3131.35, 159.221, 1.56645, 0, 0, 0.705568, 0.708642, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255830, 205559, 0, 1, 65535, 3160.01, -3124.47, 158.516, 1.41345, 0, 0, 0.649346, 0.760493, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255831, 205559, 0, 1, 65535, 3158.89, -3104.82, 154.488, 1.94445, 0, 0, 0.826141, 0.563463, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255832, 205559, 0, 1, 65535, 3155.91, -3097.2, 152.186, 2.47995, 0, 0, 0.945776, 0.324821, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255833, 205559, 0, 1, 65535, 3143.56, -3090.92, 151.155, 3.03795, 0, 0, 0.998658, 0.051799, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255834, 205559, 0, 1, 65535, 3164.13, -3071.87, 146.093, 0.603448, 0, 0, 0.297167, 0.954826, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255835, 205559, 0, 1, 65535, 3179.74, -3061.49, 143.088, 0.111823, 0, 0, 0.0558825, 0.998437, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255836, 205559, 0, 1, 65535, 3199.91, -3059.37, 156.266, 0.117448, 0, 0, 0.0586902, 0.998276, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255837, 205559, 0, 1, 65535, 3213.38, -3062.25, 161.077, 6.24651, 0, 0, 0.0183376, -0.999832, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255838, 205559, 0, 1, 65535, 3249.93, -3064.08, 162.6, 5.79426, 0, 0, 0.242036, -0.970267, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255839, 205559, 0, 1, 65535, 3267.88, -3083.49, 159.566, 4.85376, 0, 0, 0.655401, -0.755281, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255840, 205559, 0, 1, 65535, 3282.68, -3093.07, 158.726, 5.06076, 0, 0, 0.573862, -0.818952, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255841, 205559, 0, 1, 65535, 3269.92, -3127.29, 157.352, 4.09776, 0, 0, 0.887879, -0.460078, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255842, 205559, 0, 1, 65535, 3251.18, -3162.5, 154.552, 5.04613, 0, 0, 0.579835, -0.814734, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255843, 205559, 0, 1, 65535, 3234.73, -3156.94, 151.193, 3.41263, 0, 0, 0.990831, -0.135106, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255844, 205559, 0, 1, 65535, 3220.13, -3175.04, 149.699, 4.06963, 0, 0, 0.89426, -0.447547, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255845, 205559, 0, 1, 65535, 3206.45, -3193.31, 151.697, 4.06963, 0, 0, 0.89426, -0.447547, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255846, 205559, 0, 1, 65535, 3199.25, -3221.65, 156.688, 4.45663, 0, 0, 0.79151, -0.611156, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255847, 205559, 0, 1, 65535, 3188.79, -3244.15, 156.368, 4.07413, 0, 0, 0.893251, -0.449558, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255848, 205559, 0, 1, 65535, 3144.95, -3221.62, 168.779, 2.62219, 0, 0, 0.966467, 0.256791, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255849, 205559, 0, 1, 65535, 3132.63, -3174.07, 164.268, 0.961692, 0, 0, 0.462529, 0.886604, 300, 0, 1);
INSERT INTO `gameobject` VALUES (255850, 205559, 0, 1, 65535, 3154.55, -3172.96, 166.734, 6.00738, 0, 0, 0.137467, -0.990506, 300, 0, 1);

-- fix 

DELETE FROM `creature_loot_template` WHERE `entry`=8560 AND item=61313;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8560, 61313, -70);
UPDATE `creature_template` SET `lootid`=8560 WHERE (`entry`=8560);

DELETE FROM `creature_loot_template` WHERE `entry`=8562 AND item=61313;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8562, 61313, -70);
UPDATE `creature_template` SET `lootid`=8562 WHERE (`entry`=8562);

DELETE FROM `creature_loot_template` WHERE `entry`=8561 AND item=61313;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (8561, 61313, -70);
UPDATE `creature_template` SET `lootid`=8561 WHERE (`entry`=8561);

DELETE FROM `creature_loot_template` WHERE `entry`=12261 AND item=61313;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`) VALUES (12261, 61313, -70);
UPDATE `creature_template` SET `lootid`=12261 WHERE (`entry`=12261);

DELETE FROM `creature_questrelation` WHERE (`id`=16115) AND (`quest`=27612);

-- fix chain crusade commander eligor dawnbringer ERRATO da rivedere http://www.wowhead.com/quest=27612
-- UPDATE `quest_template` SET `PrevQuestId`=27612 WHERE (`Id`=27613);
-- UPDATE `quest_template` SET `PrevQuestId`=27613 WHERE (`Id`=27614);
-- UPDATE `quest_template` SET `PrevQuestId`=27614 WHERE (`Id`=27615);
-- UPDATE `quest_template` SET `PrevQuestId`=27615 WHERE (`Id`=27616);
-- UPDATE `quest_template` SET `PrevQuestId`=27616 WHERE (`Id`=27619);
-- UPDATE `quest_template` SET `PrevQuestId`=27619 WHERE (`Id`=27617);
-- UPDATE `quest_template` SET `PrevQuestId`=27617 WHERE (`Id`=27618);
-- UPDATE `quest_template` SET `PrevQuestId`=27618 WHERE (`Id`=27620);
