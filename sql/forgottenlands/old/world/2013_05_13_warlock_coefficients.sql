DELETE FROM spell_bonus_data WHERE entry in(47960, 47897, 6789, 29722, 22703, 5676, 686, 17877, 30283, 50796, 5857, 42223, 50590, 54049, 7814, 3110,71521,77799);

INSERT INTO `spell_bonus_data` VALUES (47960, 0, 0.0667, -1, -1, 'Warlock - Shadowflame');
INSERT INTO `spell_bonus_data` VALUES (47897, 0.1064, -1, -1, -1, 'Warlock - Shadowflame Direct Damage');
INSERT INTO `spell_bonus_data` VALUES (6789, 0.2143, 0, 0, 0, 'Warlock - Death Coil');
INSERT INTO `spell_bonus_data` VALUES (29722, 0.6143, -1, -1, -1, 'Warlock - Incinerate');
INSERT INTO `spell_bonus_data` VALUES (22703, 1, -1, -1, -1, 'Warlock - Infernal Awakening');
INSERT INTO `spell_bonus_data` VALUES (5676, 0.4286, -1, -1, -1, 'Warlock - Searing Pain');
INSERT INTO `spell_bonus_data` VALUES (686, 0.8571, -1, -1, -1, 'Warlock - Shadow Bolt');
INSERT INTO `spell_bonus_data` VALUES (17877, 0.4286, -1, -1, -1, 'Warlock - Shadowburn');
INSERT INTO `spell_bonus_data` VALUES (30283, 0.1936, -1, -1, -1, 'Warlock - Shadowfury');
INSERT INTO `spell_bonus_data` VALUES (50796, 0.7142, -1, -1, -1, 'Warlock - Chaos Bolt');
INSERT INTO `spell_bonus_data` VALUES (5857, -1, 0.143, -1, -1, 'Warlock - Hellfire');
INSERT INTO `spell_bonus_data` VALUES (42223, 0.33, -1, -1, -1, 'Warlock - Rain of Fire');
INSERT INTO `spell_bonus_data` VALUES (50590, 0.1429, -1, -1, -1, 'Warlock - Immolation Aura');
INSERT INTO `spell_bonus_data` VALUES (54049, 0.429, -1, -1, -1, 'Warlock - Felhunter\'s Shadow Bite');
INSERT INTO `spell_bonus_data` VALUES (7814, 0.429, -1, -1, -1, 'Warlock - Succubus\'s Lash of Pain');
INSERT INTO `spell_bonus_data` VALUES (3110, 0.7142, -1, -1, -1, 'Warlock - Imp\'s Firebolt');
INSERT INTO `spell_bonus_data` VALUES (71521, 0.968, -1, -1, -1, 'Warlock - Hand of Gul\'Dan');
INSERT INTO `spell_bonus_data` VALUES (77799, 0.3430, -1, -1, -1, 'Warlock - Fel Flame');

-- Shadow Ward
DELETE FROM spell_script_names WHERE spell_id=6229;
INSERT INTO `spell_script_names` VALUES (6229, 'spell_warl_shadow_ward');
