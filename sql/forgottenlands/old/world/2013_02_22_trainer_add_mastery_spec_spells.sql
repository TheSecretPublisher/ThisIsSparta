DELETE FROM npc_trainer WHERE spell in(
80388, 
87511, 
87494, 
86474, 
87492, 
86471, 
87509, 
87500, 
86479, 
86470, 
87491, 
87504, 
87496, 
87505, 
86476, 
87506, 
86472, 
87507, 
86477, 
86475, 
86467, 
86473, 
86478, 
87498);

-- Plate Specialization
-- Paladin
INSERT INTO `npc_trainer` VALUES (200002, 86525, 22500, 0, 0, 50);

-- Death Knight
INSERT INTO `npc_trainer` VALUES (200006, 86524, 22500, 0, 0, 50);

-- Warrior
INSERT INTO `npc_trainer` VALUES (200001, 86526, 22500, 0, 0, 50);

-- Mail Specialization
-- Hunter
INSERT INTO `npc_trainer` VALUES (200003, 86528, 22500, 0, 0, 50);

-- Shaman
INSERT INTO `npc_trainer` VALUES (200007, 86529, 22500, 0, 0, 50);

-- Leather Specialization
-- Rogue
INSERT INTO `npc_trainer` VALUES (200004, 86531, 22500, 0, 0, 50);

-- Druid
INSERT INTO `npc_trainer` VALUES (200011, 86530, 22500, 0, 0, 50);

-- Mastery
-- Paladin
INSERT INTO `npc_trainer` VALUES (200002, 86474, 222000, 0, 0, 80);

-- Death Knight
INSERT INTO `npc_trainer` VALUES (200006, 86471, 222000, 0, 0, 80);

-- Warrior
INSERT INTO `npc_trainer` VALUES (200001, 86479, 222000, 0, 0, 80);

-- Rogue
INSERT INTO `npc_trainer` VALUES (200004, 86476, 222000, 0, 0, 80);

-- Druid
INSERT INTO `npc_trainer` VALUES (200011, 86470, 222000, 0, 0, 80);

-- Hunter
INSERT INTO `npc_trainer` VALUES (200003, 86472, 222000, 0, 0, 80);

-- Shaman
INSERT INTO `npc_trainer` VALUES (200007, 86477, 222000, 0, 0, 80);

-- Priest
INSERT INTO `npc_trainer` VALUES (200005, 86475, 224000, 0, 0, 80);

-- Mage
INSERT INTO `npc_trainer` VALUES (200008, 86473, 222000, 0, 0, 80);

-- Warlock
INSERT INTO `npc_trainer` VALUES (200009, 86478, 222000, 0, 0, 80);

-- Warlock - Control Demon
INSERT INTO `npc_trainer` VALUES (200009, 93375, 680, 0, 0, 10);