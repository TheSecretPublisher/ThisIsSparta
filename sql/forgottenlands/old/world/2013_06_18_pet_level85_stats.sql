DELETE FROM pet_levelstats WHERE creature_entry in(1, 416, 417, 1860, 1863, 17252) AND level =85;
DELETE FROM pet_levelstats WHERE creature_entry in(510) AND level >80;

-- Hunter's Pet
INSERT INTO `pet_levelstats` VALUES (1, 85, 32474, 554, 11647, 258, 222, 435, 127, 175);

-- Warlock's Imp
INSERT INTO `pet_levelstats` VALUES (416, 85, 32474, 40076, 11647, 534, 165, 363, 1227, 974);

-- Warlock's Felhunter
INSERT INTO `pet_levelstats` VALUES (417, 85, 32474, 40076, 11647, 546, 406, 1004, 494, 433);

-- Warlock's Voidwalker
INSERT INTO `pet_levelstats` VALUES (1860, 85, 32474, 40076, 11647, 540, 409, 955, 565, 717);

-- Warlock's Succubus
INSERT INTO `pet_levelstats` VALUES (1863, 85, 32474, 40076, 11647, 543, 397, 1007, 497, 458);

-- Warlock's Felguard
INSERT INTO `pet_levelstats` VALUES (17252, 85, 32474, 40076, 11647, 540, 397, 1318, 839, 458);

-- Mage's Water Elemental
INSERT INTO `pet_levelstats` VALUES (510, 81, 11041, 6636, 14318, 221, 163, 540, 344, 188);
INSERT INTO `pet_levelstats` VALUES (510, 82, 16388, 8534, 17897, 277, 203, 675, 430, 234);
INSERT INTO `pet_levelstats` VALUES (510, 83, 23613, 11172, 22371, 346, 254, 844, 537, 293);
INSERT INTO `pet_levelstats` VALUES (510, 84, 34276, 14842, 27964, 432, 317, 1055, 671, 366);
INSERT INTO `pet_levelstats` VALUES (510, 85, 32474, 18553, 11647, 540, 397, 1318, 839, 458);