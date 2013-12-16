UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=206608; -- Elevator
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=206610; -- Elevator
UPDATE `gameobject_template` SET `flags`=40,`faction`=114 WHERE `entry`=208471; -- Doodad_org_arena_ivory_pillar01
UPDATE `gameobject_template` SET `flags`=40,`faction`=114 WHERE `entry`=208470; -- Doodad_org_arena_lightning_pillar01
UPDATE `gameobject_template` SET `flags`=40,`faction`=114 WHERE `entry`=208469; -- Doodad_org_arena_pillar01
UPDATE `gameobject_template` SET `flags`=40,`faction`=114 WHERE `entry`=208468; -- Doodad_org_arena_axe_pillar01
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=208001; -- The Blightbringer
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=208000; -- The Graceful Maiden
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=207889; -- Doodad_Goblin_elevator01
UPDATE `gameobject_template` SET `flags`=40,`faction`=1375 WHERE `entry`=207547; -- Lift of the Makers
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=207209; -- Doodad_Abyssal_Jellyfish_Elevator01
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=206609; -- Elevator
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=205080; -- Doodad_GnomeElevatorCar02
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=205079; -- Doodad_GnomeElevatorCar04
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=204246; -- Doodad_Goblin_elevator01
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=204245; -- Doodad_Goblin_elevator01
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=204244; -- Doodad_Goblin_elevator01
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=204243; -- Doodad_Goblin_elevator01
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=204423; -- Orc Gunship
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=4170; -- Mesa Elevator
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=4171; -- Mesa Elevator
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=11898; -- Mesa Elevator
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=11899; -- Mesa Elevator
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=203716; -- Blackwing Descent Elevator
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=207834; -- Doodad_BlackWingV2_Elevator_Onyxia01
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=196838; -- Doodad_Goblin_PoolElevator01
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=196837; -- Doodad_Goblin_PoolElevator01
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=152614; -- Elevator
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=47297; -- Mesa Elevator
UPDATE `gameobject_template` SET `flags`=40 WHERE `entry`=47296; -- Mesa Elevator

-- Remove double spawn
SET @OGUID :=76;

DELETE FROM `gameobject` WHERE `Id` IN (206608,206610);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID, 206608, 1, 1, 1, 1704.782, -4265.96, 34.88367, 3.976283, 0, 0, 0.9563048, -0.2923717, 120, 255, 24), -- Elevator
(@OGUID+1, 206610, 1, 1, 1, 1755.314, -4396.597, 42.34779, 3.744939, 0, 0, 0.9563048, -0.2923717, 120, 255, 24); -- Elevator
DELETE FROM `npc_vendor` WHERE `entry` IN (45298, 49601, 49600, 48887, 49408, 19436, 44339, 16602, 35099, 19315, 18754, 22225, 16588, 17585, 52278, 32538, 30067, 30069, 30431, 30438, 30825, 31781, 19679, 14731, 50484, 16610, 16631, 44311, 27032, 15291, 16257, 16258, 31804, 26934, 42622, 28046, 29037, 21432, 27666, 27667, 52268, 18525, 19065, 19043, 19240, 19236, 19238, 19232, 19194 , 19196, 22212, 22213, 19213, 22208, 19227, 19678, 19662, 19663, 19197, 23263, 19664, 19195, 19223, 19182, 32478, 49800, 26697, 24343, 25274, 27139, 26110, 25314);
INSERT INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `ExtendedCost`, `Type`) VALUES
-- 45298 (Mule Driver Ironshod)
(45298, 37460, 1, 0, 0, 1), -- Rope Pet Leash
-- 49601 (Daniel Lanchester)
(49601, 17034, 1, 0, 0, 1), -- Maple Seed
(49601, 17031, 2, 0, 0, 1), -- Rune of Teleportation
(49601, 17032, 3, 0, 0, 1), -- Rune of Portals
(49601, 17020, 4, 0, 0, 1), -- Arcane Powder
(49601, 17030, 5, 0, 0, 1), -- Ankh
-- 49600 (Matthew Churchill)
(49600, 37460, 1, 0, 0, 1), -- Rope Pet Leash
-- 48887 (Darwishi)
(48887, 37460, 1, 0, 0, 1), -- Rope Pet Leash
-- 49408 (Farah Tamina)
(49408, 37460, 1, 0, 0, 1), -- Rope Pet Leash
-- 19436 (Supply Master Broog)
(19436, 159, 1, 0, 0, 1), -- Refreshing Spring Water
(19436, 28399, 2, 0, 0, 1), -- Filtered Draenic Water
(19436, 27855, 3, 0, 0, 1), -- Mag'har Grainbread
(19436, 4499, 4, 0, 0, 1), -- Huge Brown Sack
(19436, 30744, 5, 0, 0, 1), -- Draenic Leather Pack
(19436, 4470, 6, 0, 0, 1), -- Simple Wood
-- 44339 (Salaran)
(44339, 2398, 1, 0, 0, 1), -- Light Chain Armor
(44339, 2399, 2, 0, 0, 1), -- Light Chain Belt
(44339, 2400, 3, 0, 0, 1), -- Light Chain Leggings
(44339, 2401, 4, 0, 0, 1), -- Light Chain Boots
(44339, 2402, 5, 0, 0, 1), -- Light Chain Bracers
(44339, 2403, 6, 0, 0, 1), -- Light Chain Gloves
(44339, 17185, 7, 0, 0, 1), -- Round Buckler
(44339, 2376, 8, 0, 0, 1), -- Worn Heater Shield
(44339, 2526, 9, 0, 0, 1), -- Main Gauche
(44339, 2534, 10, 0, 0, 1), -- Rondel
(44339, 2520, 11, 0, 0, 1), -- Broadsword
(44339, 2528, 12, 0, 0, 1), -- Falchion
(44339, 2521, 13, 0, 0, 1), -- Flamberge
(44339, 2529, 14, 0, 0, 1), -- Zweihander
(44339, 29010, 15, 0, 0, 1), -- Wicked Throwing Dagger
(44339, 15810, 16, 0, 0, 1), -- Short Spear
(44339, 15811, 17, 0, 0, 1), -- Heavy Spear
-- 16602 (Floyd Pinkus)
(16602, 8952, 1, 0, 0, 1), -- Roasted Quail
(16602, 27854, 2, 0, 0, 1), -- Smoked Talbuk Venison
(16602, 29451, 3, 0, 0, 1), -- Clefthoof Ribs
(16602, 8766, 4, 0, 0, 1), -- Morning Glory Dew
(16602, 28399, 5, 0, 0, 1), -- Filtered Draenic Water
(16602, 27860, 6, 0, 0, 1), -- Purified Draenic Water
(16602, 30744, 196, 0, 0, 1), -- Draenic Leather Pack
(16602, 30748, 197, 1, 0, 1), -- Enchanter's Satchel
(16602, 30747, 198, 1, 0, 1), -- Gem Pouch
(16602, 30746, 199, 1, 0, 1), -- Mining Sack
(16602, 30745, 200, 1, 0, 1), -- Heavy Toolbox
(16602, 14341, 12, 0, 0, 1), -- Rune Thread
(16602, 3371, 13, 0, 0, 1), -- Crystal Vial
(16602, 6532, 14, 0, 0, 1), -- Bright Baubles
(16602, 10648, 15, 0, 0, 1), -- Common Parchment
-- 35099 (Bana Wildmane)
(35099, 25474, 1, 0, 0, 1), -- Tawny Wind Rider
(35099, 25475, 2, 0, 0, 1), -- Blue Wind Rider
(35099, 25476, 3, 0, 0, 1), -- Green Wind Rider
(35099, 25531, 4, 0, 0, 1), -- Swift Green Wind Rider
(35099, 25533, 5, 0, 0, 1), -- Swift Purple Wind Rider
(35099, 25477, 6, 0, 0, 1), -- Swift Red Wind Rider
(35099, 25532, 7, 0, 0, 1), -- Swift Yellow Wind Rider
-- 19315 (Supply Officer Isabel)
(19315, 159, 1, 0, 0, 1), -- Refreshing Spring Water
(19315, 28399, 2, 0, 0, 1), -- Filtered Draenic Water
(19315, 27855, 3, 0, 0, 1), -- Mag'har Grainbread
(19315, 4499, 4, 0, 0, 1), -- Huge Brown Sack
(19315, 30744, 5, 0, 0, 1), -- Draenic Leather Pack
(19315, 4470, 6, 0, 0, 1), -- Simple Wood
(19315, 8952, 7, 0, 0, 1), -- Roasted Quail
(19315, 27854, 8, 0, 0, 1), -- Smoked Talbuk Venison
(19315, 29451, 9, 0, 0, 1), -- Clefthoof Ribs
(19315, 8766, 10, 0, 0, 1), -- Morning Glory Dew
(19315, 27860, 11, 0, 0, 1), -- Purified Draenic Water
-- 18754 (Barim Spilthoof)
(18754, 7005, 1, 0, 0, 1), -- Skinning Knife
(18754, 4289, 2, 0, 0, 1), -- Salt
(18754, 2320, 3, 0, 0, 1), -- Coarse Thread
(18754, 2321, 4, 0, 0, 1), -- Fine Thread
(18754, 4291, 5, 0, 0, 1), -- Silken Thread
(18754, 8343, 6, 0, 0, 1), -- Heavy Silken Thread
(18754, 14341, 7, 0, 0, 1), -- Rune Thread
(18754, 38426, 8, 0, 0, 1), -- Eternium Thread
(18754, 2325, 9, 0, 0, 1), -- Black Dye
(18754, 6260, 10, 0, 0, 1), -- Blue Dye
(18754, 2604, 11, 0, 0, 1), -- Red Dye
(18754, 2605, 12, 0, 0, 1), -- Green Dye
(18754, 4340, 13, 0, 0, 1), -- Gray Dye
(18754, 4341, 14, 0, 0, 1), -- Yellow Dye
(18754, 6261, 15, 0, 0, 1), -- Orange Dye
(18754, 4342, 16, 0, 0, 1), -- Purple Dye
(18754, 10290, 17, 0, 0, 1), -- Pink Dye
-- 22225 (Reagan Mancuso)
(22225, 28458, 1, 0, 0, 1), -- Bold Tourmaline
(22225, 28461, 2, 0, 0, 1), -- Brilliant Tourmaline
(22225, 28459, 3, 0, 0, 1), -- Delicate Tourmaline
(22225, 28463, 4, 0, 0, 1), -- Solid Zircon
(22225, 28464, 5, 0, 0, 1), -- Sparkling Zircon
(22225, 28468, 6, 0, 0, 1), -- Rigid Zircon
(22225, 28467, 7, 0, 0, 1), -- Smooth Amber
(22225, 28470, 8, 0, 0, 1), -- Subtle Amber
-- 16588 (Apothecary Antonivich)
(16588, 22900, 227, 1, 0, 1), -- Recipe: Elixir of Camouflage
(16588, 17037, 2, 0, 0, 1), -- Hornbeam Seed
(16588, 17031, 3, 0, 0, 1), -- Rune of Teleportation
(16588, 17032, 4, 0, 0, 1), -- Rune of Portals
(16588, 17020, 5, 0, 0, 1), -- Arcane Powder
(16588, 17030, 6, 0, 0, 1), -- Ankh
(16588, 3371, 7, 0, 0, 1), -- Crystal Vial
-- 17585 (Quartermaster Urgronn)
(17585, 31359, 1, 0, 0, 1), -- Design: Regal Deep Peridot
(17585, 25738, 2, 0, 0, 1), -- Pattern: Felstalker Belt
(17585, 24006, 3, 0, 0, 1), -- Grunt's Waterskin
(17585, 24009, 4, 0, 0, 1), -- Dried Fruit Rations
(17585, 24000, 5, 0, 0, 1), -- Formula: Enchant Bracer - Superior Healing
(17585, 24001, 6, 0, 0, 1), -- Recipe: Elixir of Major Agility
(17585, 25739, 7, 0, 0, 1), -- Pattern: Felstalker Bracers
(17585, 31361, 8, 0, 0, 1), -- Pattern: Cobrahide Leg Armor
(17585, 25823, 9, 0, 0, 1), -- Grunt's Waraxe
(17585, 29232, 10, 0, 0, 1), -- Recipe: Transmute Skyfire Diamond
(17585, 25740, 11, 0, 0, 1), -- Pattern: Felstalker Breastplate
(17585, 29197, 12, 0, 0, 1), -- Arcanum of Fire Warding
(17585, 25824, 13, 0, 0, 1), -- Farseer's Band
(17585, 24003, 14, 0, 0, 1), -- Formula: Enchant Chest - Exceptional Stats
(17585, 31358, 15, 0, 0, 1), -- Design: Dawnstone Crab
(17585, 29190, 16, 0, 0, 1), -- Arcanum of Renewal
(17585, 29168, 17, 0, 0, 1), -- Ancestral Band
(17585, 29167, 18, 0, 0, 1), -- Blackened Spear
(17585, 24002, 19, 0, 0, 1), -- Plans: Felsteel Shield Spike
(17585, 31362, 20, 0, 0, 1), -- Pattern: Nethercobra Leg Armor
(17585, 33151, 21, 0, 0, 1), -- Formula: Enchant Cloak - Subtlety
(17585, 29152, 22, 0, 0, 1), -- Marksman's Bow
(17585, 29155, 23, 0, 0, 1), -- Stormcaller
(17585, 29165, 24, 0, 0, 1), -- Warbringer
(17585, 24004, 25, 0, 0, 1), -- Thrallmar Tabard
(17585, 35332, 29, 0, 0, 1), -- Dreadweave Robe
-- 52278 (Linsa)
(52278, 5976, 1, 0, 0, 1), -- Guild Tabard
(52278, 31779, 2, 0, 0, 1), -- Aldor Tabard
(52278, 31804, 3, 0, 0, 1), -- Cenarion Expedition Tabard
(52278, 31776, 4, 0, 0, 1), -- Consortium Tabard
(52278, 31777, 5, 0, 0, 1), -- Keepers of Time Tabard
(52278, 31778, 6, 0, 0, 1), -- Lower City Tabard
(52278, 32828, 7, 0, 1958, 1), -- Ogri'la Tabard
(52278, 31780, 8, 0, 0, 1), -- Scryers Tabard
(52278, 31781, 9, 0, 0, 1), -- Sha'tar Tabard
(52278, 32445, 10, 0, 0, 1), -- Skyguard Tabard
(52278, 31775, 11, 0, 1994, 1), -- Sporeggar Tabard
(52278, 35221, 12, 0, 0, 1), -- Tabard of the Shattered Sun
-- 32538 (Duchess Mynx)
(32538, 43155, 1, 0, 0, 1), -- Tabard of the Ebon Blade
(32538, 41562, 2, 0, 0, 1), -- Design: Deadly Huge Citrine
(32538, 44138, 3, 0, 0, 1), -- Arcanum of Toxic Warding
(32538, 44243, 4, 0, 0, 1), -- Toxin-Tempered Sabatons
(32538, 44242, 5, 0, 0, 1), -- Dark Soldier Cape
(32538, 44241, 6, 0, 0, 1), -- Unholy Persuader
(32538, 42183, 7, 0, 0, 1), -- Pattern: Abyssal Bag
(32538, 41721, 8, 0, 0, 1), -- Design: Deadly Monarch Topaz
(32538, 44250, 9, 0, 0, 1), -- Reaper of Dark Souls
(32538, 44249, 10, 0, 0, 1), -- Runeblade of Demonstrable Power
(32538, 44257, 11, 0, 0, 1), -- Spaulders of the Black Arrow
(32538, 44256, 12, 0, 0, 1), -- Sterile Flesh-Handling Gloves
(32538, 44258, 13, 0, 0, 1), -- Wound-Binder's Wristguards
(32538, 44302, 14, 0, 0, 1), -- Belt of Dark Mending
(32538, 44303, 15, 0, 0, 1), -- Darkheart Chestguard
(32538, 44306, 16, 0, 0, 1), -- Death-Inured Sabatons
(32538, 44305, 17, 0, 0, 1), -- Kilt of Dark Mercy
(32538, 41725, 18, 0, 0, 1), -- Design: Timeless Twilight Opal
(32538, 50367, 19, 0, 0, 1), -- Arcanum of Torment
-- 30067 (Initiate Claget)
(30067, 40006, 1, 0, 0, 1), -- Forsaken Sword
(30067, 40004, 2, 0, 0, 1), -- Forsaken Greatsword
(30067, 40005, 3, 0, 0, 1), -- Forsaken Blade
(30067, 40007, 4, 0, 0, 1), -- Forsaken Throwing Knife
-- 30069 (Initiate Roderick)
(30069, 17034, 6, 0, 0, 1), -- Maple Seed
(30069, 17031, 7, 0, 0, 1), -- Rune of Teleportation
(30069, 17032, 8, 0, 0, 1), -- Rune of Portals
(30069, 17020, 9, 0, 0, 1), -- Arcane Powder
(30069, 17030, 10, 0, 0, 1), -- Ankh
-- 30431 (Veteran Crusader Aliocha Segard)
(30431, 43154, 1, 0, 0, 1), -- Tabard of the Argent Crusade
(30431, 44139, 2, 0, 0, 1), -- Arcanum of the Fleeing Shadow
(30431, 44216, 3, 0, 0, 1), -- Cloak of Holy Extermination
(30431, 44239, 4, 0, 0, 1), -- Standard Issue Legguards
(30431, 44240, 5, 0, 0, 1), -- Special Issue Legplates
(30431, 44214, 6, 0, 0, 1), -- Purifying Torch
(30431, 42187, 7, 0, 0, 1), -- Pattern: Brilliant Spellthread
(30431, 41726, 8, 0, 0, 1), -- Design: Guardian's Twilight Opal
(30431, 44244, 9, 0, 0, 1), -- Argent Skeleton Crusher
(30431, 44248, 10, 0, 0, 1), -- Battle Mender's Helm
(30431, 44245, 11, 0, 0, 1), -- Zombie Sweeper Shotgun
(30431, 44247, 12, 0, 0, 1), -- Fang-Deflecting Faceguard
(30431, 44296, 13, 0, 0, 1), -- Helm of Purified Thoughts
(30431, 44295, 14, 0, 0, 1), -- Polished Regimental Hauberk
(30431, 44283, 15, 0, 0, 1), -- Signet of Hopeful Light
(30431, 44297, 16, 0, 0, 1), -- Boots of the Neverending Path
(30431, 50369, 18, 0, 0, 1), -- Arcanum of the Stalwart Protector
-- 30438 (Supply Officer Thalmers)
(30438, 17034, 6, 0, 0, 1), -- Maple Seed
(30438, 17031, 7, 0, 0, 1), -- Rune of Teleportation
(30438, 17032, 8, 0, 0, 1), -- Rune of Portals
(30438, 17020, 9, 0, 0, 1), -- Arcane Powder
(30438, 17030, 10, 0, 0, 1), -- Ankh
(30438, 14341, 11, 0, 0, 1), -- Rune Thread
(30438, 38426, 12, 0, 0, 1), -- Eternium Thread
(30438, 3371, 13, 0, 0, 1), -- Crystal Vial
(30438, 6532, 14, 0, 0, 1), -- Bright Baubles
(30438, 39354, 15, 0, 0, 1), -- Light Parchment
(30438, 10648, 16, 0, 0, 1), -- Common Parchment
(30438, 39501, 17, 0, 0, 1), -- Heavy Parchment
(30438, 39502, 18, 0, 0, 1), -- Resilient Parchment
-- 30825 (Chief Engineer Copperclaw)
(30825, 14341, 1, 0, 0, 1), -- Rune Thread
(30825, 38426, 2, 0, 0, 1), -- Eternium Thread
(30825, 3371, 3, 0, 0, 1), -- Crystal Vial
(30825, 6532, 4, 0, 0, 1), -- Bright Baubles
(30825, 39354, 5, 0, 0, 1), -- Light Parchment
(30825, 10648, 6, 0, 0, 1), -- Common Parchment
(30825, 39501, 7, 0, 0, 1), -- Heavy Parchment
(30825, 39502, 8, 0, 0, 1), -- Resilient Parchment
(30825, 5956, 1263, 0, 0, 1), -- Blacksmith Hammer
(30825, 2901, 1264, 0, 0, 1), -- Mining Pick
(30825, 4399, 1265, 0, 0, 1), -- Wooden Stock
(30825, 4400, 1266, 0, 0, 1), -- Heavy Stock
(30825, 40533, 1267, 0, 0, 1), -- Walnut Stock
(30825, 39684, 1268, 0, 0, 1), -- Hair Trigger
(30825, 2880, 1269, 0, 0, 1), -- Weak Flux
(30825, 3466, 1270, 0, 0, 1), -- Strong Flux
(30825, 10647, 1271, 0, 0, 1), -- Engineer's Ink
(30825, 4361, 1272, 2, 0, 1), -- Bent Copper Tube
(30825, 4363, 1273, 1, 0, 1), -- Broken Modulator
(30825, 17037, 20, 0, 0, 1), -- Hornbeam Seed
(30825, 17031, 21, 0, 0, 1), -- Rune of Teleportation
(30825, 17032, 22, 0, 0, 1), -- Rune of Portals
(30825, 17020, 23, 0, 0, 1), -- Arcane Powder
(30825, 17030, 24, 0, 0, 1), -- Ankh
(30825, 17034, 25, 0, 0, 1), -- Maple Seed
(30825, 4357, 1274, 3, 0, 1), -- Rough Blasting Powder
(30825, 4364, 1275, 2, 0, 1), -- Coarse Blasting Powder
-- 31781 (Blast Thunderbomb)
(31781, 5956, 1414, 0, 0, 1), -- Blacksmith Hammer
(31781, 2901, 1415, 0, 0, 1), -- Mining Pick
(31781, 4399, 1416, 0, 0, 1), -- Wooden Stock
(31781, 4400, 1417, 0, 0, 1), -- Heavy Stock
(31781, 40533, 1418, 0, 0, 1), -- Walnut Stock
(31781, 39684, 1419, 0, 0, 1), -- Hair Trigger
(31781, 2880, 1420, 0, 0, 1), -- Weak Flux
(31781, 3466, 1421, 0, 0, 1), -- Strong Flux
(31781, 10648, 1422, 0, 0, 1), -- Common Parchment
(31781, 10647, 1423, 0, 0, 1), -- Engineer's Ink
(31781, 4357, 1424, 4, 0, 1), -- Rough Blasting Powder
(31781, 4364, 1425, 4, 0, 1), -- Coarse Blasting Powder
-- 19679 ("Slim")
(19679, 8766, 1, 0, 0, 1), -- Morning Glory Dew
(19679, 28399, 2, 0, 0, 1), -- Filtered Draenic Water
(19679, 27860, 3, 0, 0, 1), -- Purified Draenic Water
(19679, 8952, 4, 0, 0, 1), -- Roasted Quail
(19679, 27854, 5, 0, 0, 1), -- Smoked Talbuk Venison
(19679, 29451, 6, 0, 0, 1), -- Clefthoof Ribs
(19679, 159, 7, 0, 0, 1), -- Refreshing Spring Water
(19679, 27855, 8, 0, 0, 1), -- Mag'har Grainbread
(19679, 4499, 9, 0, 0, 1), -- Huge Brown Sack
(19679, 30744, 10, 0, 0, 1), -- Draenic Leather Pack
(19679, 4470, 11, 0, 0, 1), -- Simple Wood
(19679, 17037, 12, 0, 0, 1), -- Hornbeam Seed
(19679, 17031, 13, 0, 0, 1), -- Rune of Teleportation
(19679, 17032, 14, 0, 0, 1), -- Rune of Portals
(19679, 17020, 15, 0, 0, 1), -- Arcane Powder
(19679, 17030, 16, 0, 0, 1), -- Ankh
-- 14731 (Lard)
(14731, 787, 1, 0, 0, 1), -- Slitherskin Mackerel
(14731, 4592, 2, 0, 0, 1), -- Longjaw Mud Snapper
(14731, 4593, 3, 0, 0, 1), -- Bristle Whisker Catfish
(14731, 4594, 4, 0, 0, 1), -- Rockscale Cod
(14731, 21552, 5, 0, 0, 1), -- Striped Yellowtail
(14731, 8957, 6, 0, 0, 1), -- Spinefin Halibut
(14731, 159, 7, 0, 0, 1), -- Refreshing Spring Water
(14731, 1179, 8, 0, 0, 1), -- Ice Cold Milk
(14731, 1205, 9, 0, 0, 1), -- Melon Juice
(14731, 1708, 10, 0, 0, 1), -- Sweet Nectar
(14731, 1645, 11, 0, 0, 1), -- Moonberry Juice
(14731, 8766, 12, 0, 0, 1), -- Morning Glory Dew
-- 50484 (Magistrix Nizara)
(50484, 45585, 1, 0, 0, 1), -- Silvermoon City Tabard
(50484, 67535, 2, 0, 0, 1), -- Silvermoon Satchel
(50484, 64916, 3, 0, 0, 1), -- Mantle of Silvermoon
(50484, 64915, 4, 0, 0, 1), -- Cape of Silvermoon
(50484, 64914, 5, 0, 0, 1), -- Shroud of Silvermoon
-- 16610 (Kredis)
(16610, 5976, 1, 0, 0, 1), -- Guild Tabard
(16610, 31779, 2, 0, 0, 1), -- Aldor Tabard
(16610, 31804, 3, 0, 0, 1), -- Cenarion Expedition Tabard
(16610, 31776, 4, 0, 0, 1), -- Consortium Tabard
(16610, 31777, 5, 0, 0, 1), -- Keepers of Time Tabard
(16610, 31778, 6, 0, 0, 1), -- Lower City Tabard
(16610, 32828, 7, 0, 1958, 1), -- Ogri'la Tabard
(16610, 31780, 8, 0, 0, 1), -- Scryers Tabard
(16610, 31781, 9, 0, 0, 1), -- Sha'tar Tabard
(16610, 32445, 10, 0, 0, 1), -- Skyguard Tabard
(16610, 31775, 11, 0, 1994, 1), -- Sporeggar Tabard
(16610, 35221, 12, 0, 0, 1), -- Tabard of the Shattered Sun
(16610, 31773, 13, 0, 0, 1), -- Mag'har Tabard
(16610, 24004, 14, 0, 0, 1), -- Thrallmar Tabard
(16610, 19505, 15, 0, 202, 1), -- Warsong Battle Tabard
(16610, 19031, 16, 0, 1003, 1), -- Frostwolf Battle Tabard
(16610, 15197, 17, 0, 1007, 1), -- Scout's Tabard
(16610, 15199, 18, 0, 1006, 1), -- Stone Guard's Herald
-- 16631 (Andra)
(16631, 16059, 1, 0, 0, 1), -- Common Brown Shirt
(16631, 3428, 2, 0, 0, 1), -- Common Gray Shirt
(16631, 16060, 3, 0, 0, 1), -- Common White Shirt
(16631, 837, 4, 0, 0, 1), -- Heavy Weave Armor
(16631, 3589, 5, 0, 0, 1), -- Heavy Weave Belt
(16631, 838, 6, 0, 0, 1), -- Heavy Weave Pants
(16631, 840, 7, 0, 0, 1), -- Heavy Weave Shoes
(16631, 3590, 8, 0, 0, 1), -- Heavy Weave Bracers
(16631, 839, 9, 0, 0, 1), -- Heavy Weave Gloves
(16631, 4306, 33, 2, 0, 1), -- Silk Cloth
-- 44311 (Overseer Struk)
(44311, 2901, 1, 0, 0, 1), -- Mining Pick
(44311, 5956, 2, 0, 0, 1), -- Blacksmith Hammer
(44311, 2880, 3, 0, 0, 1), -- Weak Flux
(44311, 3466, 4, 0, 0, 1), -- Strong Flux
(44311, 18567, 5, 0, 0, 1), -- Elemental Flux
(44311, 3857, 6, 0, 0, 1), -- Coal
-- 27032 (Lovely Liddia)
(27032, 8948, 1, 0, 0, 1), -- Dried King Bolete
(27032, 27859, 2, 0, 0, 1), -- Zangar Caps
(27032, 29453, 3, 0, 0, 1), -- Sporeggar Mushroom
(27032, 33452, 4, 0, 0, 1), -- Honey-Spiced Lichen
(27032, 35947, 5, 0, 0, 1), -- Sparkling Frostcap
-- 15291 (Jainthess Thelryn)
(15291, 20990, 1, 0, 0, 1), -- Light Cloth Armor
(15291, 20989, 2, 0, 0, 1), -- Light Cloth Belt
(15291, 20986, 3, 0, 0, 1), -- Light Cloth Pants
(15291, 20985, 4, 0, 0, 1), -- Light Cloth Shoes
(15291, 20988, 5, 0, 0, 1), -- Light Cloth Bracers
(15291, 20987, 6, 0, 0, 1), -- Light Cloth Gloves
(15291, 20925, 7, 0, 0, 1), -- Sun Cured Vest
(15291, 20920, 8, 0, 0, 1), -- Sun Cured Belt
(15291, 20924, 9, 0, 0, 1), -- Sun Cured Pants
(15291, 20921, 10, 0, 0, 1), -- Sun Cured Boots
(15291, 20922, 11, 0, 0, 1), -- Sun Cured Bracers
(15291, 20923, 12, 0, 0, 1), -- Sun Cured Gloves
-- 16257 (Geron)
(16257, 2488, 1, 0, 0, 1), -- Gladius
(16257, 2489, 2, 0, 0, 1), -- Two-Handed Sword
(16257, 2490, 3, 0, 0, 1), -- Tomahawk
(16257, 2491, 4, 0, 0, 1), -- Large Axe
(16257, 2492, 5, 0, 0, 1), -- Cudgel
(16257, 2493, 6, 0, 0, 1), -- Wooden Mallet
(16257, 2494, 7, 0, 0, 1), -- Stiletto
(16257, 2495, 8, 0, 0, 1), -- Walking Stick
(16257, 25872, 9, 0, 0, 1), -- Balanced Throwing Dagger
(16257, 29007, 10, 0, 0, 1), -- Weighted Throwing Axe
-- 16258 (Farsil)
(16258, 2398, 1, 0, 0, 1), -- Light Chain Armor
(16258, 2399, 2, 0, 0, 1), -- Light Chain Belt
(16258, 2400, 3, 0, 0, 1), -- Light Chain Leggings
(16258, 2401, 4, 0, 0, 1), -- Light Chain Boots
(16258, 2402, 5, 0, 0, 1), -- Light Chain Bracers
(16258, 2403, 6, 0, 0, 1), -- Light Chain Gloves
(16258, 17185, 7, 0, 0, 1), -- Round Buckler
(16258, 2376, 8, 0, 0, 1), -- Worn Heater Shield
-- 31804 (Qatiichii)
(31804, 33451, 1, 0, 0, 1), -- Fillet of Icefin
(31804, 35951, 2, 0, 0, 1), -- Poached Emperor Salmon
(31804, 6256, 21, 0, 0, 1), -- Fishing Pole
(31804, 6365, 22, 1, 0, 1), -- Strong Fishing Pole
(31804, 6529, 23, 0, 0, 1), -- Shiny Bauble
(31804, 6530, 24, 0, 0, 1), -- Nightcrawlers
(31804, 6532, 25, 0, 0, 1), -- Bright Baubles
-- 26934 (Everett McGill)
(26934, 159, 1, 0, 0, 1), -- Refreshing Spring Water
(26934, 35954, 2, 0, 0, 1), -- Sweetened Goat's Milk
(26934, 33449, 3, 0, 0, 1), -- Crusty Flatbread
(26934, 60335, 4, 0, 0, 1), -- Thick Hide Pack
(26934, 4470, 5, 0, 0, 1), -- Simple Wood
(26934, 2901, 6, 0, 0, 1), -- Mining Pick
(26934, 5956, 7, 0, 0, 1), -- Blacksmith Hammer
(26934, 2880, 8, 0, 0, 1), -- Weak Flux
(26934, 3466, 9, 0, 0, 1), -- Strong Flux
(26934, 18567, 10, 0, 0, 1), -- Elemental Flux
(26934, 3857, 11, 0, 0, 1), -- Coal
-- 42622 (Eliza Darkgrin)
(42622, 17034, 6, 0, 0, 1), -- Maple Seed
(42622, 17031, 7, 0, 0, 1), -- Rune of Teleportation
(42622, 17032, 8, 0, 0, 1), -- Rune of Portals
(42622, 17020, 9, 0, 0, 1), -- Arcane Powder
(42622, 17030, 10, 0, 0, 1), -- Ankh
-- 28046 (Korg the Cleaver)
(28046, 33454, 1, 0, 0, 1), -- Salted Venison
(28046, 35953, 2, 0, 0, 1), -- Mead Basted Caribou
-- 29037 (Soo-jam)
(29037, 17034, 1, 0, 0, 1), -- Maple Seed
(29037, 17031, 2, 0, 0, 1), -- Rune of Teleportation
(29037, 17032, 3, 0, 0, 1), -- Rune of Portals
(29037, 17020, 4, 0, 0, 1), -- Arcane Powder
(29037, 17030, 5, 0, 0, 1), -- Ankh
-- 21432 (Almaador)
(21432, 25904, 1, 0, 0, 1), -- Design: Insightful Earthstorm Diamond
(21432, 28273, 2, 0, 0, 1), -- Formula: Enchant Gloves - Major Healing
(21432, 33155, 3, 0, 0, 1), -- Design: Kailee's Rose
(21432, 29717, 4, 0, 0, 1), -- Pattern: Drums of Battle
(21432, 29195, 5, 0, 0, 1), -- Arcanum of Arcane Warding
(21432, 22915, 6, 0, 0, 1), -- Recipe: Transmute Primal Air to Fire
(21432, 22537, 7, 0, 0, 1), -- Formula: Enchant Ring - Healing Power
(21432, 30826, 8, 0, 0, 1), -- Design: Ring of Arcane Shielding
(21432, 33159, 9, 0, 0, 1), -- Design: Blood of Amber
(21432, 24182, 10, 0, 0, 1), -- Design: Talasite Owl
(21432, 29180, 11, 0, 0, 1), -- Blessed Scale Girdle
(21432, 29179, 12, 0, 0, 1), -- Xi'ri's Gift
(21432, 28281, 13, 0, 0, 1), -- Formula: Enchant Weapon - Major Healing
(21432, 13517, 14, 0, 0, 1), -- Recipe: Alchemist Stone
(21432, 29191, 15, 0, 0, 1), -- Arcanum of Power
(21432, 31354, 16, 0, 0, 1), -- Recipe: Flask of the Titans
(21432, 33153, 17, 0, 0, 1), -- Formula: Enchant Gloves - Threat
(21432, 29177, 18, 0, 0, 1), -- A'dal's Command
(21432, 29176, 19, 0, 0, 1), -- Crest of the Sha'tar
(21432, 29175, 20, 0, 0, 1), -- Gavel of Pure Light
(21432, 31781, 21, 0, 0, 1), -- Sha'tar Tabard
(21432, 35345, 26, 0, 0, 1), -- Evoker's Silk Handguards
-- 27666 (Ontuvo)
(27666, 32227, 1, 0, 2706, 1), -- Crimson Spinel
(27666, 32228, 2, 0, 2706, 1), -- Empyrean Sapphire
(27666, 32229, 3, 0, 2706, 1), -- Lionseye
(27666, 32231, 4, 0, 2706, 1), -- Pyrestone
(27666, 32230, 5, 0, 2706, 1), -- Shadowsong Amethyst
(27666, 32249, 6, 0, 2706, 1), -- Seaspray Emerald
(27666, 35264, 7, 0, 0, 1), -- Design: Sparkling Empyrean Sapphire
(27666, 35244, 8, 0, 0, 1), -- Design: Bold Crimson Spinel
(27666, 35263, 9, 0, 0, 1), -- Design: Solid Empyrean Sapphire
(27666, 35249, 10, 0, 0, 1), -- Design: Subtle Lionseye
(27666, 35260, 11, 0, 0, 1), -- Design: Smooth Lionseye
(27666, 35248, 12, 0, 0, 1), -- Design: Brilliant Crimson Spinel
(27666, 35246, 13, 0, 0, 1), -- Design: Delicate Crimson Spinel
(27666, 35269, 14, 0, 0, 1), -- Design: Potent Pyrestone
(27666, 35254, 15, 0, 0, 1), -- Design: Radiant Seaspray Emerald
(27666, 35253, 16, 0, 0, 1), -- Design: Jagged Seaspray Emerald
(27666, 35239, 17, 0, 0, 1), -- Design: Timeless Shadowsong Amethyst
(27666, 35266, 18, 0, 0, 1), -- Design: Glinting Shadowsong Amethyst
(27666, 35251, 19, 0, 0, 1), -- Design: Purified Shadowsong Amethyst
(27666, 35252, 20, 0, 0, 1), -- Design: Regal Seaspray Emerald
(27666, 35259, 21, 0, 0, 1), -- Design: Rigid Empyrean Sapphire
(27666, 35271, 22, 0, 0, 1), -- Design: Deadly Pyrestone
(27666, 35768, 23, 0, 0, 1), -- Design: Quick Lionseye
(27666, 35767, 24, 0, 0, 1), -- Design: Reckless Pyrestone
(27666, 35766, 25, 0, 0, 1), -- Design: Steady Seaspray Emerald
(27666, 35769, 26, 0, 0, 1), -- Design: Forceful Seaspray Emerald
(27666, 35267, 27, 0, 0, 1), -- Design: Inscribed Pyrestone
(27666, 35270, 28, 0, 0, 1), -- Design: Veiled Shadowsong Amethyst
(27666, 35258, 29, 0, 0, 1), -- Design: Mystic Lionseye
(27666, 35242, 30, 0, 0, 1), -- Design: Shifting Shadowsong Amethyst
(27666, 35247, 31, 0, 0, 1), -- Design: Flashing Crimson Spinel
(27666, 35265, 32, 0, 0, 1), -- Design: Stormy Empyrean Sapphire
(27666, 35243, 33, 0, 0, 1), -- Design: Sovereign Shadowsong Amethyst
(27666, 35322, 34, 0, 0, 1), -- Design: Quick Dawnstone
(27666, 35323, 35, 0, 0, 1), -- Design: Reckless Noble Topaz
(27666, 35325, 36, 0, 0, 1), -- Design: Forceful Talasite
-- 27667 (Anwehu)
(27667, 34919, 6, 0, 2049, 1), -- Boots of Incantations
(27667, 34918, 7, 0, 2333, 1), -- Legwraps of Sweltering Flame
(27667, 34917, 8, 0, 2333, 1), -- Shroud of the Lore`nial
(27667, 34926, 9, 0, 2049, 1), -- Slippers of Dutiful Mending
(27667, 34925, 10, 0, 2333, 1), -- Adorned Supernal Legwraps
(27667, 34924, 11, 0, 2333, 1), -- Gown of Spiritual Wonder
(27667, 34938, 12, 0, 2049, 1), -- Enslaved Doomguard Soulgrips
(27667, 34937, 13, 0, 2333, 1), -- Corrupted Soulcloth Pantaloons
(27667, 34936, 14, 0, 2333, 1), -- Tormented Demonsoul Robes
(27667, 34900, 15, 0, 2333, 1), -- Shroud of Nature's Harmony
(27667, 34902, 16, 0, 2049, 1), -- Oakleaf-Spun Handguards
(27667, 34901, 17, 0, 2333, 1), -- Grovewalker's Leggings
(27667, 34906, 18, 0, 2333, 1), -- Embrace of Everlasting Prowess
(27667, 34911, 19, 0, 2049, 1), -- Handwraps of the Aggressor
(27667, 34910, 20, 0, 2333, 1), -- Tameless Breeches
(27667, 34903, 21, 0, 2333, 1), -- Embrace of Starlight
(27667, 34904, 22, 0, 2049, 1), -- Barbed Gloves of the Sage
(27667, 34905, 23, 0, 2333, 1), -- Crystalwind Leggings
(27667, 34929, 24, 0, 2049, 1), -- Belt of the Silent Path
(27667, 34927, 25, 0, 2333, 1), -- Tunic of the Dark Hour
(27667, 34928, 26, 0, 2333, 1), -- Trousers of the Scryers' Retainer
(27667, 34912, 27, 0, 2333, 1), -- Scaled Drakeskin Chestguard
(27667, 34916, 28, 0, 2049, 1), -- Gauntlets of Rapidity
(27667, 34914, 29, 0, 2333, 1), -- Leggings of the Pursuit
(27667, 34932, 30, 0, 2049, 1), -- Clutch of the Soothing Breeze
(27667, 34930, 31, 0, 2333, 1), -- Wave of Life Chestguard
(27667, 34931, 32, 0, 2333, 1), -- Runed Scales of Antiquity
(27667, 34935, 33, 0, 2049, 1), -- Aftershock Waistguard
(27667, 34933, 34, 0, 2333, 1), -- Hauberk of Whirling Fury
(27667, 34934, 35, 0, 2333, 1), -- Rushing Storm Kilt
(27667, 34923, 36, 0, 2049, 1), -- Waistguard of Reparation
(27667, 34921, 37, 0, 2333, 1), -- Ecclesiastical Cuirass
(27667, 34922, 38, 0, 2333, 1), -- Greaves of Pacification
(27667, 34947, 39, 0, 2049, 1), -- Blue's Greaves of the Righteous Guardian
(27667, 34945, 40, 0, 2333, 1), -- Shattrath Protectorate's Breastplate
(27667, 34946, 41, 0, 2333, 1), -- Inscribed Legplates of the Aldor
(27667, 34944, 42, 0, 2049, 1), -- Girdle of Seething Rage
(27667, 34942, 43, 0, 2333, 1), -- Breastplate of Ire
(27667, 34943, 44, 0, 2333, 1), -- Legplates of Unending Fury
(27667, 34941, 45, 0, 2049, 1), -- Girdle of the Fearless
(27667, 34939, 46, 0, 2333, 1), -- Chestplate of Stoicism
(27667, 34940, 47, 0, 2333, 1), -- Sunguard Legplates
(27667, 34889, 48, 0, 2059, 1), -- Fused Nethergon Band
(27667, 34890, 49, 0, 2059, 1), -- Anveena's Touch
(27667, 34887, 50, 0, 2059, 1), -- Angelista's Revenge
(27667, 34888, 51, 0, 2059, 1), -- Ring of the Stalwart Protector
(27667, 34891, 52, 0, 2329, 1), -- The Blade of Harbingers
(27667, 34895, 53, 0, 2329, 1), -- Scryer's Blade of Focus
(27667, 34892, 54, 0, 2329, 1), -- Crossbow of Relentless Strikes
(27667, 34898, 55, 0, 2329, 1), -- Staff of the Forest Lord
(27667, 34896, 56, 0, 2329, 1), -- Gavel of Naaru Blessings
(27667, 34893, 57, 0, 2331, 1), -- Vanir's Right Fist of Brutality
(27667, 34950, 58, 0, 2332, 1), -- Vanir's Left Fist of Savagery
(27667, 34951, 59, 0, 2332, 1), -- Vanir's Left Fist of Brutality
(27667, 34894, 60, 0, 2331, 1), -- Blade of Serration
(27667, 34949, 61, 0, 2332, 1), -- Swift Blade of Uncertainty
(27667, 34952, 62, 0, 2332, 1), -- The Mutilator
-- 52268 (Riha)
(52268, 69209, 1, 0, 0, 1), -- Illustrious Guild Tabard
(52268, 69210, 2, 0, 0, 1), -- Renowned Guild Tabard
(52268, 63352, 4, 0, 0, 1), -- Shroud of Cooperation
(52268, 63206, 6, 0, 0, 1), -- Wrap of Unity
(52268, 65361, 11, 0, 0, 1), -- Guild Page
(52268, 63359, 15, 0, 0, 1), -- Banner of Cooperation
(52268, 64398, 16, 0, 0, 1), -- Standard of Unity
(52268, 69892, 28, 0, 0, 1), -- Ripped Sandstorm Cloak
(52268, 62038, 29, 0, 0, 1), -- Worn Stoneskin Gargoyle Cape
(52268, 62039, 30, 0, 0, 1), -- Inherited Cape of the Black Baron
(52268, 62040, 31, 0, 0, 1), -- Ancient Bloodmoon Cloak
-- 18525 (G'eras)
(18525, 29273, 1, 0, 1015, 1), -- Khadgar's Knapsack
(18525, 29271, 2, 0, 1015, 1), -- Talisman of Kalecgos
(18525, 29268, 3, 0, 1037, 1), -- Mazthoril Honor Shield
(18525, 29275, 4, 0, 1040, 1), -- Searing Sunblade
(18525, 29270, 5, 0, 1015, 1), -- Flametongue Seal
(18525, 29269, 6, 0, 1015, 1), -- Sapphiron's Wing Bone
(18525, 29274, 7, 0, 1015, 1), -- Tears of Heaven
(18525, 29267, 8, 0, 1037, 1), -- Light-Bearer's Faith Shield
(18525, 29272, 9, 0, 1015, 1), -- Orb of the Soul-Eater
(18525, 29266, 10, 0, 1037, 1), -- Azure-Shield of Coldarra
(18525, 29367, 11, 0, 1015, 1), -- Ring of Cryptic Dreams
(18525, 29373, 12, 0, 1015, 1), -- Band of Halos
(18525, 29379, 13, 0, 1015, 1), -- Ring of Arathi Warlords
(18525, 29384, 14, 0, 1015, 1), -- Ring of Unyielding Force
(18525, 29368, 15, 0, 1015, 1), -- Manasurge Pendant
(18525, 29374, 16, 0, 1015, 1), -- Necklace of Eternal Hope
(18525, 29381, 17, 0, 1015, 1), -- Choker of Vile Intent
(18525, 29386, 18, 0, 1015, 1), -- Necklace of the Juggernaut
(18525, 29369, 19, 0, 1015, 1), -- Shawl of Shifting Probabilities
(18525, 29375, 20, 0, 1015, 1), -- Bishop's Cloak
(18525, 29382, 21, 0, 1015, 1), -- Blood Knight War Cloak
(18525, 29385, 22, 0, 1015, 1), -- Farstrider Defender's Cloak
(18525, 29370, 23, 0, 1027, 1), -- Icon of the Silver Crescent
(18525, 29376, 24, 0, 1027, 1), -- Essence of the Martyr
(18525, 29383, 25, 0, 1027, 1), -- Bloodlust Brooch
(18525, 29387, 26, 0, 1027, 1), -- Gnomeregan Auto-Dodger 600
(18525, 23572, 30, 0, 1909, 1), -- Primal Nether
(18525, 30183, 31, 0, 1642, 1), -- Nether Vortex
(18525, 30770, 32, 0, 1452, 1), -- Inferno Forged Boots
(18525, 30774, 33, 0, 1452, 1), -- Inferno Forged Gloves
(18525, 30773, 34, 0, 1454, 1), -- Inferno Forged Hauberk
(18525, 30772, 35, 0, 1454, 1), -- Inferno Forged Leggings
(18525, 30779, 36, 0, 1452, 1), -- Inferno Hardened Boots
(18525, 30776, 37, 0, 1454, 1), -- Inferno Hardened Chestguard
(18525, 30780, 38, 0, 1452, 1), -- Inferno Hardened Gloves
(18525, 30778, 39, 0, 1454, 1), -- Inferno Hardened Leggings
(18525, 30768, 40, 0, 1452, 1), -- Inferno Tempered Boots
(18525, 30769, 41, 0, 1454, 1), -- Inferno Tempered Chestguard
(18525, 30767, 42, 0, 1452, 1), -- Inferno Tempered Gauntlets
(18525, 30766, 43, 0, 1454, 1), -- Inferno Tempered Leggings
(18525, 30763, 44, 0, 1452, 1), -- Infernoweave Boots
(18525, 30764, 45, 0, 1452, 1), -- Infernoweave Gloves
(18525, 30761, 46, 0, 1454, 1), -- Infernoweave Leggings
(18525, 30762, 47, 0, 1454, 1), -- Infernoweave Robe
(18525, 32083, 48, 0, 1040, 1), -- Faceguard of Determination
(18525, 32084, 49, 0, 1040, 1), -- Helmet of the Steadfast Champion
(18525, 32088, 50, 0, 1040, 1), -- Cowl of Beastly Rage
(18525, 32087, 51, 0, 1040, 1), -- Mask of the Deceiver
(18525, 32086, 52, 0, 1040, 1), -- Storm Master's Helmet
(18525, 32085, 53, 0, 1040, 1), -- Warpstalker Helm
(18525, 32089, 54, 0, 1040, 1), -- Mana-Binders Cowl
(18525, 32090, 55, 0, 1040, 1), -- Cowl of Naaru Blessings
(18525, 33810, 65, 0, 2049, 1), -- Amani Mask of Death
(18525, 33501, 66, 0, 2049, 1), -- Bloodthirster's Wargreaves
(18525, 33517, 67, 0, 2059, 1), -- Bonefist Gauntlets
(18525, 33279, 68, 0, 2059, 1), -- Iron-Tusk Girdle
(18525, 33516, 69, 0, 2060, 1), -- Bracers of the Ancient Phalanx
(18525, 33513, 70, 0, 2060, 1), -- Eternium Rage-Shackles
(18525, 33331, 71, 0, 2059, 1), -- Chain of Unleashed Rage
(18525, 33512, 72, 0, 2059, 1), -- Furious Deathgrips
(18525, 33514, 73, 0, 2059, 1), -- Pauldrons of Gruesome Fate
(18525, 33515, 74, 0, 2049, 1), -- Unwavering Legguards
(18525, 33522, 75, 0, 2049, 1), -- Chestguard of the Stoic Guardian
(18525, 33524, 76, 0, 2059, 1), -- Girdle of the Protector
(18525, 33519, 77, 0, 2059, 1), -- Handguards of the Templar
(18525, 33518, 78, 0, 2049, 1), -- High Justicar's Legplates
(18525, 33207, 79, 0, 2059, 1), -- Implacable Guardian Sabatons
(18525, 33523, 80, 0, 2059, 1), -- Sabatons of the Righteous Defender
(18525, 33520, 81, 0, 2060, 1), -- Vambraces of the Naaru
(18525, 33528, 82, 0, 2059, 1), -- Gauntlets of Sniping
(18525, 33527, 83, 0, 2049, 1), -- Shifting Camouflage Pants
(18525, 33280, 84, 0, 2059, 1), -- War-Feathered Loop
(18525, 33529, 85, 0, 2060, 1), -- Steadying Bracers
(18525, 33535, 86, 0, 2060, 1), -- Earthquake Bracers
(18525, 33965, 87, 0, 2049, 1), -- Hauberk of the Furious Elements
(18525, 33970, 88, 0, 2059, 1), -- Pauldrons of the Furious Elements
(18525, 33532, 89, 0, 2060, 1), -- Gleaming Earthen Bracers
(18525, 33534, 90, 0, 2059, 1), -- Grips of Nature's Wrath
(18525, 33386, 91, 0, 2059, 1), -- Man'kin'do's Belt
(18525, 33530, 92, 0, 2049, 1), -- Natural Life Leggings
(18525, 33324, 93, 0, 2059, 1), -- Treads of the Life Path
(18525, 33531, 94, 0, 2059, 1), -- Polished Waterscale Gloves
(18525, 33536, 95, 0, 2059, 1), -- Stormwrap
(18525, 33537, 96, 0, 2059, 1), -- Treads of Booming Thunder
(18525, 33540, 97, 0, 2060, 1), -- Master Assassin Wristwraps
(18525, 33538, 98, 0, 2049, 1), -- Shallow-Grave Trousers
(18525, 33222, 99, 0, 2059, 1), -- Nyn'jah's Tabi Boots
(18525, 33539, 100, 0, 2059, 1), -- Trickster's Stickyfingers
(18525, 33578, 101, 0, 2060, 1), -- Armwraps of the Kaldorei Protector
(18525, 33580, 102, 0, 2060, 1), -- Band of the Swift Paw
(18525, 33566, 103, 0, 2049, 1), -- Blessed Elunite Coverings
(18525, 33582, 104, 0, 2059, 1), -- Footwraps of Wild Encroachment
(18525, 33577, 105, 0, 2059, 1), -- Moon-Walkers
(18525, 33287, 106, 0, 2059, 1), -- Gnarled Ironwood Pauldrons
(18525, 33552, 107, 0, 2049, 1), -- Pants of Splendid Recovery
(18525, 33557, 108, 0, 2060, 1), -- Gargon's Bracers of Peaceful Slumber
(18525, 33974, 109, 0, 2059, 1), -- Grasp of the Moonkin
(18525, 33973, 110, 0, 2059, 1), -- Pauldrons of Tribal Fury
(18525, 33559, 111, 0, 2059, 1), -- Starfire Waistband
(18525, 33972, 112, 0, 2049, 1), -- Mask of Primal Power
(18525, 33579, 113, 0, 2049, 1), -- Vestments of Hibernation
(18525, 33583, 114, 0, 2059, 1), -- Waistguard of the Great Beast
(18525, 33588, 115, 0, 2060, 1), -- Runed Spell-Cuffs
(18525, 33584, 116, 0, 2049, 1), -- Pantaloons of Arcane Annihilation
(18525, 33586, 117, 0, 2059, 1), -- Studious Wraps
(18525, 33291, 118, 0, 2059, 1), -- Voodoo-Woven Belt
(18525, 33585, 119, 0, 2049, 1), -- Achromic Trousers of the Naaru
(18525, 33587, 120, 0, 2059, 1), -- Light-Blessed Bonds
(18525, 33589, 121, 0, 2060, 1), -- Wristguards of Tranquil Thought
(18525, 33593, 122, 0, 2060, 1), -- Slikk's Cloak of Placation
(18525, 33333, 123, 0, 2059, 1), -- Kharmaa's Shroud of Hope
(18525, 35324, 124, 0, 2059, 1), -- Cloak of Swift Reprieve
(18525, 33304, 125, 0, 2059, 1), -- Cloak of Subjugated Power
(18525, 35321, 126, 0, 2059, 1), -- Cloak of Arcane Alacrity
(18525, 33484, 127, 0, 2059, 1), -- Dory's Embrace
(18525, 33334, 128, 0, 2060, 1), -- Fetish of the Primal Gods
(18525, 33325, 129, 0, 2060, 1), -- Voodoo Shaker
(18525, 33192, 130, 0, 1015, 1), -- Carved Witch Doctor's Stick
(18525, 33296, 131, 0, 2060, 1), -- Brooch of Deftness
(18525, 33832, 132, 0, 2049, 1), -- Battlemaster's Determination
(18525, 34050, 133, 0, 2049, 1), -- Battlemaster's Perseverance
(18525, 34049, 134, 0, 2049, 1), -- Battlemaster's Audacity
(18525, 34163, 135, 0, 2049, 1), -- Battlemaster's Cruelty
(18525, 34162, 136, 0, 2049, 1), -- Battlemaster's Depravity
(18525, 35326, 137, 0, 2049, 1), -- Battlemaster's Alacrity
-- 19065 (Inessera)
(19065, 20815, 1, 0, 0, 1), -- Jeweler's Kit
(19065, 20824, 2, 0, 0, 1), -- Simple Grinder
(19065, 52188, 3, 0, 0, 1), -- Jeweler's Setting
(19065, 46897, 4, 0, 2436, 1), -- Design: Regal Eye of Zul
(19065, 46898, 5, 0, 2436, 1), -- Design: Steady Eye of Zul
(19065, 46899, 6, 0, 2436, 1), -- Design: Nimble Eye of Zul
(19065, 46901, 7, 0, 2436, 1), -- Design: Jagged Eye of Zul
(19065, 46902, 8, 0, 2436, 1), -- Design: Timeless Dreadstone
(19065, 46904, 9, 0, 2436, 1), -- Design: Forceful Eye of Zul
(19065, 46905, 10, 0, 2436, 1), -- Design: Misty Eye of Zul
(19065, 46909, 11, 0, 2436, 1), -- Design: Lightning Eye of Zul
(19065, 46911, 12, 0, 2436, 1), -- Design: Radiant Eye of Zul
(19065, 46912, 13, 0, 2436, 1), -- Design: Energized Eye of Zul
(19065, 46913, 14, 0, 2436, 1), -- Design: Shattered Eye of Zul
(19065, 46915, 15, 0, 2436, 1), -- Design: Turbid Eye of Zul
(19065, 46916, 16, 0, 2436, 1), -- Design: Brilliant Cardinal Ruby
(19065, 46917, 17, 0, 2436, 1), -- Design: Bold Cardinal Ruby
(19065, 46918, 18, 0, 2436, 1), -- Design: Delicate Cardinal Ruby
(19065, 46920, 19, 0, 2436, 1), -- Design: Precise Cardinal Ruby
(19065, 46922, 20, 0, 2436, 1), -- Design: Subtle King's Amber
(19065, 46923, 21, 0, 2436, 1), -- Design: Flashing Cardinal Ruby
(19065, 46924, 22, 0, 2436, 1), -- Design: Solid Majestic Zircon
(19065, 46925, 23, 0, 2436, 1), -- Design: Sparkling Majestic Zircon
(19065, 46926, 24, 0, 2436, 1), -- Design: Stormy Majestic Zircon
(19065, 46928, 25, 0, 2436, 1), -- Design: Rigid Majestic Zircon
(19065, 46929, 26, 0, 2436, 1), -- Design: Smooth King's Amber
(19065, 46932, 27, 0, 2436, 1), -- Design: Mystic King's Amber
(19065, 46933, 28, 0, 2436, 1), -- Design: Quick King's Amber
(19065, 46935, 29, 0, 2436, 1), -- Design: Sovereign Dreadstone
(19065, 46937, 30, 0, 2436, 1), -- Design: Purified Dreadstone
(19065, 46938, 31, 0, 2436, 1), -- Design: Shifting Dreadstone
(19065, 46941, 32, 0, 2436, 1), -- Design: Defender's Dreadstone
(19065, 46942, 33, 0, 2436, 1), -- Design: Guardian's Dreadstone
(19065, 46943, 34, 0, 2436, 1), -- Design: Mysterious Dreadstone
(19065, 46948, 35, 0, 2436, 1), -- Design: Inscribed Ametrine
(19065, 46949, 36, 0, 2436, 1), -- Design: Deadly Ametrine
(19065, 46950, 37, 0, 2436, 1), -- Design: Potent Ametrine
(19065, 46951, 38, 0, 2436, 1), -- Design: Veiled Dreadstone
(19065, 46952, 39, 0, 2436, 1), -- Design: Willful Ametrine
(19065, 46953, 40, 0, 2436, 1), -- Design: Etched Dreadstone
(19065, 46956, 41, 0, 2436, 1), -- Design: Glinting Dreadstone
(19065, 47007, 42, 0, 2436, 1), -- Design: Reckless Ametrine
(19065, 47010, 43, 0, 2436, 1), -- Design: Accurate Dreadstone
(19065, 47015, 44, 0, 2436, 1), -- Design: Champion's Ametrine
(19065, 47017, 45, 0, 2436, 1), -- Design: Stalwart Ametrine
(19065, 47018, 46, 0, 2436, 1), -- Design: Resplendent Ametrine
(19065, 47019, 47, 0, 2436, 1), -- Design: Fierce Ametrine
(19065, 47021, 48, 0, 2436, 1), -- Design: Lucent Ametrine
(19065, 47022, 49, 0, 2436, 1), -- Design: Resolute Ametrine
(19065, 47020, 50, 0, 2436, 1), -- Design: Deft Ametrine
(19065, 49112, 51, 0, 2436, 1), -- Design: Nightmare Tear
-- 19043 (Ahemen)
(19043, 2527, 1, 0, 0, 1), -- Battle Staff
(19043, 2535, 2, 0, 0, 1), -- War Staff
-- 19240 (Selanam the Blade)
(19240, 2526, 1, 0, 0, 1), -- Main Gauche
(19240, 2534, 2, 0, 0, 1), -- Rondel
(19240, 2520, 3, 0, 0, 1), -- Broadsword
(19240, 2528, 4, 0, 0, 1), -- Falchion
(19240, 2521, 5, 0, 0, 1), -- Flamberge
(19240, 2529, 6, 0, 0, 1), -- Zweihander
(19240, 29010, 7, 0, 0, 1), -- Wicked Throwing Dagger
-- 19236 (Quelama Lightblade)
(19236, 5208, 1, 0, 0, 1), -- Smoldering Wand
(19236, 5209, 2, 0, 0, 1), -- Gloom Wand
(19236, 5210, 3, 0, 0, 1), -- Burning Wand
(19236, 5211, 4, 0, 0, 1), -- Dusk Wand
(19236, 5236, 5, 0, 0, 1), -- Combustible Wand
(19236, 5347, 6, 0, 0, 1), -- Pestilent Wand
(19236, 5238, 7, 0, 0, 1), -- Pitchwood Wand
(19236, 5239, 8, 0, 0, 1), -- Blackbone Wand
-- 19238 (Urumir Stavebright)
(19238, 2527, 1, 0, 0, 1), -- Battle Staff
(19238, 2535, 2, 0, 0, 1), -- War Staff
(19238, 2495, 3, 0, 0, 1), -- Walking Stick
(19238, 854, 4, 0, 0, 1), -- Quarter Staff
(19238, 2030, 5, 0, 0, 1), -- Gnarled Staff
(19238, 928, 6, 0, 0, 1), -- Long Staff
-- 19232 (Innkeeper Haelthol)
(19232, 8950, 1, 0, 0, 1), -- Homemade Cherry Pie
(19232, 27855, 2, 0, 0, 1), -- Mag'har Grainbread
(19232, 29449, 3, 0, 0, 1), -- Bladespire Bagel
(19232, 8953, 4, 0, 0, 1), -- Deep Fried Plantains
(19232, 27856, 5, 0, 0, 1), -- Skethyl Berries
(19232, 29450, 6, 0, 0, 1), -- Telaari Grapes
(19232, 8932, 7, 0, 0, 1), -- Alterac Swiss
(19232, 27857, 8, 0, 0, 1), -- Garadar Sharp
(19232, 29448, 9, 0, 0, 1), -- Mag'har Mild Cheese
(19232, 8766, 10, 0, 0, 1), -- Morning Glory Dew
(19232, 28399, 11, 0, 0, 1), -- Filtered Draenic Water
(19232, 27860, 12, 0, 0, 1), -- Purified Draenic Water
-- 19194 (Ernie Packwell)
(19194, 14341, 1, 0, 0, 1), -- Rune Thread
(19194, 3371, 2, 0, 0, 1), -- Crystal Vial
(19194, 6532, 3, 0, 0, 1), -- Bright Baubles
(19194, 10648, 4, 0, 0, 1), -- Common Parchment
-- 19196 (Cro Threadstrong)
(19196, 38518, 1, 0, 0, 1), -- Cro's Apple
(19196, 7005, 2, 0, 0, 1), -- Skinning Knife
(19196, 4289, 3, 0, 0, 1), -- Salt
(19196, 2320, 4, 0, 0, 1), -- Coarse Thread
(19196, 2321, 5, 0, 0, 1), -- Fine Thread
(19196, 4291, 6, 0, 0, 1), -- Silken Thread
(19196, 8343, 7, 0, 0, 1), -- Heavy Silken Thread
(19196, 14341, 8, 0, 0, 1), -- Rune Thread
(19196, 38426, 9, 0, 0, 1), -- Eternium Thread
(19196, 2325, 10, 0, 0, 1), -- Black Dye
(19196, 6260, 11, 0, 0, 1), -- Blue Dye
(19196, 2604, 12, 0, 0, 1), -- Red Dye
(19196, 2605, 13, 0, 0, 1), -- Green Dye
(19196, 4340, 14, 0, 0, 1), -- Gray Dye
(19196, 4341, 15, 0, 0, 1), -- Yellow Dye
(19196, 6261, 16, 0, 0, 1), -- Orange Dye
(19196, 4342, 17, 0, 0, 1), -- Purple Dye
(19196, 10290, 18, 0, 0, 1), -- Pink Dye
-- 22212 (Andrion Darkspinner)
(22212, 30483, 1, 0, 0, 1), -- Pattern: Shadowcloth
(22212, 21912, 2, 0, 0, 1), -- Pattern: Frozen Shadoweave Shoulders
(22212, 21914, 3, 0, 0, 1), -- Pattern: Frozen Shadoweave Boots
(22212, 21913, 4, 0, 0, 1), -- Pattern: Frozen Shadoweave Robe
(22212, 21915, 5, 0, 0, 1), -- Pattern: Ebon Shadowbag
-- 22213 (Gidge Spellweaver)
(22213, 24316, 1, 0, 0, 1), -- Pattern: Spellcloth
(22213, 21908, 2, 0, 0, 1), -- Pattern: Spellfire Belt
(22213, 21909, 3, 0, 0, 1), -- Pattern: Spellfire Gloves
(22213, 21910, 4, 0, 0, 1), -- Pattern: Spellfire Robe
(22213, 21911, 5, 0, 0, 1), -- Pattern: Spellfire Bag
-- 19213 (Eiin)
(19213, 21893, 1, 0, 0, 1), -- Pattern: Imbued Netherweave Bag
(19213, 21892, 2, 0, 0, 1), -- Pattern: Bolt of Imbued Netherweave
(19213, 21897, 3, 0, 0, 1), -- Pattern: Netherweave Tunic
(19213, 21896, 4, 0, 0, 1), -- Pattern: Netherweave Robe
(19213, 2320, 5, 0, 0, 1), -- Coarse Thread
(19213, 2321, 6, 0, 0, 1), -- Fine Thread
(19213, 4291, 7, 0, 0, 1), -- Silken Thread
(19213, 8343, 8, 0, 0, 1), -- Heavy Silken Thread
(19213, 14341, 9, 0, 0, 1), -- Rune Thread
(19213, 38426, 10, 0, 0, 1), -- Eternium Thread
(19213, 2324, 11, 0, 0, 1), -- Bleach
(19213, 2604, 12, 0, 0, 1), -- Red Dye
(19213, 6260, 13, 0, 0, 1), -- Blue Dye
(19213, 2605, 14, 0, 0, 1), -- Green Dye
(19213, 4341, 15, 0, 0, 1), -- Yellow Dye
(19213, 4340, 16, 0, 0, 1), -- Gray Dye
(19213, 6261, 17, 0, 0, 1), -- Orange Dye
(19213, 2325, 18, 0, 0, 1), -- Black Dye
(19213, 4342, 19, 0, 0, 1), -- Purple Dye
(19213, 10290, 20, 0, 0, 1), -- Pink Dye
-- 22208 (Nasmara Moonsong)
(22208, 21895, 1, 0, 0, 1), -- Pattern: Primal Mooncloth
(22208, 21916, 2, 0, 0, 1), -- Pattern: Primal Mooncloth Belt
(22208, 21918, 3, 0, 0, 1), -- Pattern: Primal Mooncloth Shoulders
(22208, 21917, 4, 0, 0, 1), -- Pattern: Primal Mooncloth Robe
(22208, 21919, 5, 0, 0, 1), -- Pattern: Primal Mooncloth Bag
-- 19227 (Griftah)
(19227, 27978, 1, 0, 0, 1), -- Soap on a Rope
(19227, 27992, 2, 0, 0, 1), -- Infallible Tikbalang Ward
(19227, 27979, 3, 0, 0, 1), -- Stone of Stupendous Springing Strides
(19227, 27945, 4, 0, 0, 1), -- Shark's Tooth of Bona Fide Fluidic Mobility
(19227, 27941, 5, 0, 0, 1), -- Compassionate Critter's Friend
(19227, 27976, 6, 0, 0, 1), -- Polished Pendant of Edible Energy
(19227, 27982, 7, 0, 0, 1), -- Charm of Potent and Powerful Passions
(19227, 27944, 8, 0, 0, 1), -- Talisman of True Treasure Tracking
(19227, 27940, 9, 0, 0, 1), -- Marvelous Madstone of Immortality
(19227, 34249, 10, 0, 0, 1), -- Hula Girl Doll
-- 19678 (Fantei)
(19678, 17034, 1, 0, 0, 1), -- Maple Seed
(19678, 17031, 2, 0, 0, 1), -- Rune of Teleportation
(19678, 17032, 3, 0, 0, 1), -- Rune of Portals
(19678, 17020, 4, 0, 0, 1), -- Arcane Powder
(19678, 17030, 5, 0, 0, 1), -- Ankh
(19678, 30823, 6, 0, 0, 1), -- Demon Warding Totem
-- 19662 (Aaron Hollman)
(19662, 23593, 4645, 1, 0, 1), -- Plans: Adamantite Rapier
(19662, 23592, 4643, 1, 0, 1), -- Plans: Adamantite Dagger
(19662, 25846, 4647, 1, 0, 1), -- Plans: Adamantite Rod
(19662, 23591, 4644, 1, 0, 1), -- Plans: Adamantite Cleaver
(19662, 23590, 4646, 1, 0, 1), -- Plans: Adamantite Maul
(19662, 2901, 6, 0, 0, 1), -- Mining Pick
(19662, 5956, 7, 0, 0, 1), -- Blacksmith Hammer
(19662, 2880, 8, 0, 0, 1), -- Weak Flux
(19662, 3466, 9, 0, 0, 1), -- Strong Flux
(19662, 18567, 10, 0, 0, 1), -- Elemental Flux
(19662, 3857, 11, 0, 0, 1), -- Coal
-- 19663 (Madame Ruby)
(19663, 28282, 6881, 1, 0, 1), -- Formula: Enchant Shield - Major Stamina
(19663, 38682, 6870, 0, 0, 1), -- Enchanting Vellum
(19663, 6217, 6871, 0, 0, 1), -- Copper Rod
(19663, 10940, 6872, 2, 0, 1), -- Strange Dust
(19663, 10938, 6873, 2, 0, 1), -- Lesser Magic Essence
(19663, 4470, 6874, 0, 0, 1), -- Simple Wood
(19663, 11291, 6875, 0, 0, 1), -- Star Wood
(19663, 20758, 6876, 0, 0, 1), -- Formula: Minor Wizard Oil
(19663, 20752, 6877, 0, 0, 1), -- Formula: Minor Mana Oil
(19663, 20753, 6878, 0, 0, 1), -- Formula: Lesser Wizard Oil
(19663, 22307, 6879, 0, 0, 1), -- Pattern: Enchanted Mageweave Pouch
(19663, 22562, 6882, 1, 0, 1), -- Formula: Superior Mana Oil
(19663, 22563, 6883, 1, 0, 1), -- Formula: Superior Wizard Oil
(19663, 22565, 6880, 1, 0, 1), -- Formula: Large Prismatic Shard
-- 19197 (Eral)
(19197, 159, 1, 0, 0, 1), -- Refreshing Spring Water
(19197, 28399, 2, 0, 0, 1), -- Filtered Draenic Water
(19197, 27855, 3, 0, 0, 1), -- Mag'har Grainbread
(19197, 4499, 4, 0, 0, 1), -- Huge Brown Sack
(19197, 30744, 5, 0, 0, 1), -- Draenic Leather Pack
(19197, 4470, 6, 0, 0, 1), -- Simple Wood
(19197, 14341, 7, 0, 0, 1), -- Rune Thread
(19197, 3371, 8, 0, 0, 1), -- Crystal Vial
(19197, 6532, 9, 0, 0, 1), -- Bright Baubles
(19197, 10648, 10, 0, 0, 1), -- Common Parchment
(19197, 5042, 11, 0, 0, 1), -- Red Ribboned Wrapping Paper
(19197, 5048, 12, 0, 0, 1), -- Blue Ribboned Wrapping Paper
(19197, 4496, 13, 0, 0, 1), -- Small Brown Pouch
(19197, 4498, 14, 0, 0, 1), -- Brown Leather Satchel
(19197, 4497, 15, 0, 0, 1), -- Heavy Brown Bag
(19197, 60335, 16, 0, 0, 1), -- Thick Hide Pack
(19197, 30746, 17, 0, 0, 1), -- Mining Sack
(19197, 30745, 18, 0, 0, 1), -- Heavy Toolbox
(19197, 30748, 19, 0, 0, 1), -- Enchanter's Satchel
(19197, 30747, 20, 0, 0, 1), -- Gem Pouch
-- 23263 (Brendan Turner)
(23263, 117, 1, 0, 0, 1), -- Tough Jerky
(23263, 2287, 2, 0, 0, 1), -- Haunch of Meat
(23263, 3770, 3, 0, 0, 1), -- Mutton Chop
(23263, 3771, 4, 0, 0, 1), -- Wild Hog Shank
(23263, 4599, 5, 0, 0, 1), -- Cured Ham Steak
(23263, 8952, 6, 0, 0, 1), -- Roasted Quail
(23263, 27854, 7, 0, 0, 1), -- Smoked Talbuk Venison
(23263, 29451, 8, 0, 0, 1), -- Clefthoof Ribs
-- 19664 (Muffin Man Moser)
(19664, 28486, 1, 0, 0, 1), -- Moser's Magnificent Muffin
(19664, 8950, 2, 0, 0, 1), -- Homemade Cherry Pie
(19664, 27855, 3, 0, 0, 1), -- Mag'har Grainbread
(19664, 29449, 4, 0, 0, 1), -- Bladespire Bagel
-- 19195 (Jim Saltit)
(19195, 159, 1, 0, 0, 1), -- Refreshing Spring Water
(19195, 30817, 2, 0, 0, 1), -- Simple Flour
(19195, 2678, 3, 0, 0, 1), -- Mild Spices
(19195, 21099, 4, 0, 0, 1), -- Recipe: Smoked Sagefish
(19195, 21219, 5, 0, 0, 1), -- Recipe: Sagefish Delight
-- 19223 (Granny Smith)
(19223, 4536, 1, 0, 0, 1), -- Shiny Red Apple
(19223, 4539, 2, 0, 0, 1), -- Goldenbark Apple
(19223, 8953, 3, 0, 0, 1), -- Deep Fried Plantains
(19223, 27856, 4, 0, 0, 1), -- Skethyl Berries
(19223, 29450, 5, 0, 0, 1), -- Telaari Grapes
-- 19182 (Shaarubo)
(19182, 117, 1, 0, 0, 1), -- Tough Jerky
(19182, 2287, 2, 0, 0, 1), -- Haunch of Meat
(19182, 3770, 3, 0, 0, 1), -- Mutton Chop
(19182, 3771, 4, 0, 0, 1), -- Wild Hog Shank
(19182, 4599, 5, 0, 0, 1), -- Cured Ham Steak
(19182, 8952, 6, 0, 0, 1), -- Roasted Quail
(19182, 27854, 7, 0, 0, 1), -- Smoked Talbuk Venison
(19182, 29451, 8, 0, 0, 1), -- Clefthoof Ribs
(19182, 159, 9, 0, 0, 1), -- Refreshing Spring Water
(19182, 1179, 10, 0, 0, 1), -- Ice Cold Milk
(19182, 1205, 11, 0, 0, 1), -- Melon Juice
(19182, 1708, 12, 0, 0, 1), -- Sweet Nectar
(19182, 1645, 13, 0, 0, 1), -- Moonberry Juice
(19182, 8766, 14, 0, 0, 1), -- Morning Glory Dew
(19182, 28399, 15, 0, 0, 1), -- Filtered Draenic Water
(19182, 27860, 16, 0, 0, 1), -- Purified Draenic Water
-- 32478 (Slosh)
(32478, 33454, 1, 0, 0, 1), -- Salted Venison
(32478, 35953, 2, 0, 0, 1), -- Mead Basted Caribou
(32478, 35954, 3, 0, 0, 1), -- Sweetened Goat's Milk
(32478, 33444, 4, 0, 0, 1), -- Pungent Seal Whey
(32478, 33445, 5, 0, 0, 1), -- Honeymint Tea
(32478, 35949, 6, 0, 0, 1), -- Tundra Berries
(32478, 35948, 7, 0, 0, 1), -- Savory Snowplum
-- 49800 (Bren Stoneforge)
(49800, 2901, 1, 0, 0, 1), -- Mining Pick
(49800, 5956, 2, 0, 0, 1), -- Blacksmith Hammer
(49800, 2880, 3, 0, 0, 1), -- Weak Flux
(49800, 3466, 4, 0, 0, 1), -- Strong Flux
(49800, 18567, 5, 0, 0, 1), -- Elemental Flux
(49800, 3857, 6, 0, 0, 1), -- Coal
-- 26697 (Tewah Chillmane)
(26697, 42099, 1, 0, 0, 1), -- Snowhide Vest
(26697, 42098, 2, 0, 0, 1), -- Snowhide Pants
(26697, 42097, 3, 0, 0, 1), -- Snowhide Mitts
(26697, 42088, 4, 0, 0, 1), -- Snowhide Hoof-Warmers
(26697, 42084, 5, 0, 0, 1), -- Snowhide Belt
(26697, 42092, 6, 0, 0, 1), -- Snowhide Bracers
(26697, 42094, 7, 0, 0, 1), -- Snowhide Cap
-- 24343 (Brock Olson)
(24343, 117, 1, 0, 0, 1), -- Tough Jerky
(24343, 2287, 2, 0, 0, 1), -- Haunch of Meat
(24343, 3770, 3, 0, 0, 1), -- Mutton Chop
(24343, 3771, 4, 0, 0, 1), -- Wild Hog Shank
(24343, 4599, 5, 0, 0, 1), -- Cured Ham Steak
(24343, 8952, 6, 0, 0, 1), -- Roasted Quail
(24343, 27854, 7, 0, 0, 1), -- Smoked Talbuk Venison
(24343, 29451, 8, 0, 0, 1), -- Clefthoof Ribs
-- 25274 (Armorer Orkuruk)
(25274, 2423, 1, 0, 0, 1), -- Brigandine Vest
(25274, 2424, 2, 0, 0, 1), -- Brigandine Belt
(25274, 2425, 3, 0, 0, 1), -- Brigandine Leggings
(25274, 2426, 4, 0, 0, 1), -- Brigandine Boots
(25274, 2427, 5, 0, 0, 1), -- Brigandine Bracers
(25274, 2428, 6, 0, 0, 1), -- Brigandine Gloves
(25274, 3894, 7, 0, 0, 1), -- Brigandine Helm
(25274, 8094, 8, 0, 0, 1), -- Platemail Armor
(25274, 8088, 9, 0, 0, 1), -- Platemail Belt
(25274, 8093, 10, 0, 0, 1), -- Platemail Leggings
(25274, 8089, 11, 0, 0, 1), -- Platemail Boots
(25274, 8090, 12, 0, 0, 1), -- Platemail Bracers
(25274, 8091, 13, 0, 0, 1), -- Platemail Gloves
(25274, 8092, 14, 0, 0, 1), -- Platemail Helm
(25274, 17190, 15, 0, 0, 1), -- Ornate Buckler
(25274, 2451, 16, 0, 0, 1), -- Crested Heater Shield
-- 27139 (Librarian Whitley)
(27139, 40019, 1, 0, 0, 1), -- Wand of Amber
(27139, 40021, 2, 0, 0, 1), -- Wand of Crystal
(27139, 40020, 3, 0, 0, 1), -- Wand of Jade
(27139, 40018, 4, 0, 0, 1), -- Wand of Onyx
-- 26110 (Librarian Serrah)
(26110, 37252, 1, 0, 0, 1), -- Frostberries
(26110, 37253, 2, 0, 0, 1), -- Frostberry Juice
-- 25314 (Archmage Berinand)
(25314, 2524, 1, 0, 0, 1), -- Truncheon
(25314, 2532, 2, 0, 0, 1), -- Morning Star
(25314, 2525, 3, 0, 0, 1), -- War Hammer
(25314, 2533, 4, 0, 0, 1), -- War Maul
(25314, 2527, 5, 0, 0, 1), -- Battle Staff
(25314, 2535, 6, 0, 0, 1); -- War Staff
DELETE FROM `spell_target_position` WHERE `id` IN (89597, 96178, 88339);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(89597, 732, -337.673, 1058.18, 21.8901, 1.747511), -- Teleport: Tol Barad
(96178, 0, -8207.63, 447.785, 117.651, 4.985708), -- Portal Effect: Stormwind
(88339, 732, -369.208, 1058.73, 21.7719, 0.6345773); -- Portal Effect: Tol Barad
SET @OGUID := 164446;

DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+7;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 206660, 755, 1, 1, -10687.06, -1309.015, 18.34057, 3.403396, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: The Warlord's Garrison)
(@OGUID+1, 206661, 755, 1, 1, -10687.06, -1309.015, 18.34058, 3.403396, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: The Warlord's Garrison)
(@OGUID+2, 207409, 755, 1, 1, -10752.43, -1310.148, 15.30941, 5.829401, 0, 0, 0, 1, 7200, 255, 1), -- -Unknown- (Area: The Warlord's Garrison)
(@OGUID+3, 205365, 755, 1, 1, -10937.4, -1400.58, 10.3038, 3.141593, 1.191104E-43, 0, 0, 2.802597E-44, 7200, 255, 1), -- -Unknown- (Area: The Warlord's Garrison)
(@OGUID+4, 207338, 755, 1, 1, -10937.4, -1400.5, 10.2844, 3.141593, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: The Warlord's Garrison)
(@OGUID+5, 207596, 755, 1, 1, -10809.85, -1351.196, 17.3134, 3.479464, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: The Warlord's Garrison)
(@OGUID+6, 207595, 755, 1, 1, -11081.09, -1296.448, 13.20066, 1.489785, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- -Unknown- (Area: Terrace of the Augurs)
(@OGUID+7, 207594, 755, 1, 1, -11061.35, -1280.109, 13.20066, 3.112825, 0, 0, 1, -4.371139E-08, 7200, 255, 1); -- -Unknown- (Area: Terrace of the Augurs)


DELETE FROM `creature_template_addon` WHERE `entry` IN (45096, 45096, 45096, 45096, 45096, 45097, 45096, 45097, 45096, 45096, 45096, 45096, 50038, 50036, 50037, 49732, 49835, 44981, 44932, 44924, 44926, 49835, 49732, 44981, 45001, 44922, 45007, 45007, 45001, 45007, 44922, 44924, 45007, 49835, 44577, 44586, 44586, 44586, 44586, 44586, 44586, 44586, 44586, 44897, 44896, 44897, 44898, 45001, 45001, 44896, 49732, 45122, 45122, 49732, 49732, 44922, 44977, 44976, 44981, 44819, 49835, 45342, 43612, 44932, 44922, 49732, 49835, 49743, 49219, 44981, 44896, 44897, 44898, 44896, 44897, 44898, 49835, 44976, 50496, 47720, 47720, 47720, 44926, 44924, 44981, 44261, 50496, 44796, 44796, 44796, 44796, 44796, 44796, 44796, 44796, 44796, 44796, 44796, 44796, 49732, 45377, 50496, 44898, 50496, 45062, 44982, 49743, 49835, 44982, 44924, 45007, 44922, 49743, 50496, 45007, 44981, 49725, 50496, 50496, 44922, 44926, 44932, 50496, 43614, 49725, 50491, 50491, 50496, 50491, 50496, 45124, 50491, 50490, 49725, 49725, 50491, 45124, 45124, 50490, 45124, 45124, 45124, 45124, 50491, 32638, 32639, 50496, 45062, 44981, 47720, 45065, 49743, 45065, 49732, 44976, 44982, 44922, 50496, 50496, 50496, 44976, 44981, 44982, 50496, 45065, 44980, 49743, 49743, 47720, 44982, 44981, 44980, 44976, 44977, 44976, 44982, 49835, 37231, 37231, 50496, 37231, 37231, 37231, 37231, 50496, 45007, 44976, 45065, 45065, 44982, 44980, 45065, 44922, 37231, 37231, 45065, 45007, 47720, 49732, 49732, 47720, 47720, 45065, 45065, 44977, 44980, 45065, 48092, 48097, 48097, 48092, 48092, 48097, 48092, 48097, 48097, 48092, 48097, 48092);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(45096, 0, 0x0, 0x1, '84186'), -- Tamed Tol'vir Prowler - Cosmetic - Sleep Zzz
(45097, 0, 0x0, 0x1, ''), -- Oathsworn Tamer
(50038, 0, 0x0, 0x1, ''), -- Captain Hadan
(50036, 0, 0x0, 0x1, ''), -- Ramkahen Scout
(50037, 0, 0x0, 0x1, ''), -- Ramkahen Scout
(49732, 0, 0x0, 0x1, ''), -- Horned Lizard
(49835, 0, 0x0, 0x1, ''), -- Desert Spider
(44981, 0, 0x0, 0x1, ''), -- Oathsworn Skinner
(44932, 0, 0x0, 0x1, ''), -- Oathsworn Pathfinder
(44924, 0, 0x0, 0x1, '82671'), -- Oathsworn Myrmidon - Bladed Shield Spike
(44926, 0, 0x0, 0x1, ''), -- Oathsworn Wanderer
-- (45001, 0, 0x0, 0x1, '84062'), -- Enslaved Bandit - Emote State - Applause / Cheer
(44922, 0, 0x0, 0x1, ''), -- Oathsworn Axemaster
(45007, 0, 0x0, 0x1, ''), -- Enslaved Bandit
-- (45001, 0, 0x0, 0x1, '84070'), -- Enslaved Bandit - Emote State - Shout / Cheer
(44577, 0, 0x0, 0x1, ''), -- General Husam
(44586, 0, 0x3000000, 0x1, ''), -- Bad Intentions Target
(44897, 0, 0x0, 0x1, ''), -- Pygmy Scout
(44896, 0, 0x0, 0x1, ''), -- Pygmy Brute
-- (44897, 0, 0x0, 0x1, '46598'), -- Pygmy Scout - Ride Vehicle Hardcoded
-- (44898, 0, 0x0, 0x1, '46598'), -- Pygmy Firebreather - Ride Vehicle Hardcoded
(45001, 0, 0x0, 0x1, ''), -- Enslaved Bandit
-- (45001, 0, 0x0, 0x1, '84072'), -- Enslaved Bandit - Emote State - Exclaim / No
(45122, 0, 0x0, 0x1, ''), -- Oathsworn Captain
(44977, 0, 0x0, 0x1, ''), -- Neferset Torturer
(44976, 0, 0x0, 0x1, ''), -- Neferset Plaguebringer
(44819, 0, 0x0, 0x1, ''), -- Siamat
(45342, 0, 0x0, 0x1, '86483'), -- Storm Locale - Single Rainbow
(43612, 0, 0x0, 0x1, ''), -- High Prophet Barim
(49743, 0, 0x0, 0x1, ''), -- Dung Beetle
(49219, 0, 0x0, 0x1, ''), -- Burning Soul
(50496, 0, 0x3000000, 0x1, ''), -- Oasis Moth
(47720, 0, 0x0, 0x1, ''), -- Camel
(44261, 0, 0x3000000, 0x1, ''), -- Sharptalon Eagle
(44796, 0, 0x0, 0x1, '46598'), -- Tol'vir Land Mine - Ride Vehicle Hardcoded
(45377, 0, 0x0, 0x1, ''), -- Augh
(44898, 0, 0x0, 0x1, ''), -- Pygmy Firebreather
(45062, 0, 0x0, 0x1, ''), -- Oathsworn Scorpid Keeper
(44982, 0, 0x0, 0x1, ''), -- Neferset Darkcaster
(49725, 0, 0x0, 0x1, ''), -- Emerald Boa
(43614, 0, 0x0, 0x1, ''), -- Lockmaw
(50491, 0, 0x0, 0x1, ''), -- Mac Frog
(45124, 0, 0x0, 0x1, ''), -- Add Stalker
(50490, 0, 0x0, 0x1, ''), -- Locust
(32638, 0, 0x0, 0x1, '61424'), -- Hakmud of Argus - Traveler's Tundra Mammoth
(32639, 0, 0x0, 0x1, '61424'), -- Gnimo - Traveler's Tundra Mammoth
(45065, 0, 0x0, 0x1, ''), -- Tol'vir Merchant
(44980, 0, 0x0, 0x1, ''), -- Neferset Theurgist
(37231, 0, 0x0, 0x1, ''), -- Rope Beam Stalker
-- (45007, 0, 0x0, 0x1, '16245'), -- Enslaved Bandit - Freeze Anim
(48092, 0, 0x0, 0x1, '89698'), -- Wind Tunnel - Wind Tunnel
(48097, 0, 0x0, 0x1, ''); -- Wind Tunnel Landing Zone

SET @CGUID := 221351;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+199;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 53488, 755, 1, 1, -10702.53, -1313.526, 17.6862, 0, 7200, 0, 0), -- Summon Enabler Stalker (Area: The Warlord's Garrison)
(@CGUID+1, 45096, 755, 1, 1, -10717.9, -1277.29, 15.43603, 3.298672, 7200, 0, 0), -- Tamed Tol'vir Prowler (Area: The Warlord's Garrison)
(@CGUID+2, 45096, 755, 1, 1, -10728.8, -1285.88, 15.43603, 0.8901179, 7200, 0, 0), -- Tamed Tol'vir Prowler (Area: The Warlord's Garrison)
(@CGUID+3, 45096, 755, 1, 1, -10742.7, -1288.73, 15.43603, 5.899213, 7200, 0, 0), -- Tamed Tol'vir Prowler (Area: The Warlord's Garrison)
(@CGUID+4, 45096, 755, 1, 1, -10715.1, -1287.94, 15.43603, 2.740167, 7200, 0, 0), -- Tamed Tol'vir Prowler (Area: The Warlord's Garrison)
(@CGUID+5, 45096, 755, 1, 1, -10735.5, -1284.2, 15.43603, 4.380776, 7200, 0, 0), -- Tamed Tol'vir Prowler (Area: The Warlord's Garrison)
(@CGUID+6, 45097, 755, 1, 1, -10715.8, -1283.062, 15.3854, 3.490364, 7200, 0, 0), -- Oathsworn Tamer (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+7, 45096, 755, 1, 1, -10699.1, -1339.87, 15.43603, 2.513274, 7200, 0, 0), -- Tamed Tol'vir Prowler (Area: The Warlord's Garrison)
(@CGUID+8, 45097, 755, 1, 1, -10703.43, -1344.97, 15.4777, 3.445467, 7200, 0, 0), -- Oathsworn Tamer (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+9, 45096, 755, 1, 1, -10711.7, -1354.37, 15.43603, 3.630285, 7200, 0, 0), -- Tamed Tol'vir Prowler (Area: The Warlord's Garrison)
(@CGUID+10, 45096, 755, 1, 1, -10718.1, -1351.84, 15.43603, 5.270895, 7200, 0, 0), -- Tamed Tol'vir Prowler (Area: The Warlord's Garrison)
(@CGUID+11, 45096, 755, 1, 1, -10723.7, -1351.58, 15.43603, 2.024582, 7200, 0, 0), -- Tamed Tol'vir Prowler (Area: The Warlord's Garrison)
(@CGUID+12, 45096, 755, 1, 1, -10701, -1350.09, 15.43603, 3.630285, 7200, 0, 0), -- Tamed Tol'vir Prowler (Area: The Warlord's Garrison)
(@CGUID+13, 50038, 755, 1, 1, -10696.31, -1311.684, 17.6862, 3.403392, 7200, 0, 0), -- Captain Hadan (Area: The Warlord's Garrison)
(@CGUID+14, 50036, 755, 1, 1, -10694.88, -1305.34, 18.02543, 3.595378, 7200, 0, 0), -- Ramkahen Scout (Area: The Warlord's Garrison)
(@CGUID+15, 50037, 755, 1, 1, -10691.72, -1316.764, 18.0256, 3.473205, 7200, 0, 0), -- Ramkahen Scout (Area: The Warlord's Garrison)
(@CGUID+16, 49732, 755, 1, 1, -10723.8, -1284.534, 15.3854, 6.265067, 7200, 0, 0), -- Horned Lizard (Area: The Warlord's Garrison)
(@CGUID+17, 49835, 755, 1, 1, -10731.31, -1335.133, 15.4777, 0.1813482, 7200, 0, 0), -- Desert Spider (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+18, 44981, 755, 1, 1, -10750.8, -1368.59, 15.43603, 3.926991, 7200, 0, 0), -- Oathsworn Skinner (Area: The Warlord's Garrison)
(@CGUID+19, 44932, 755, 1, 1, -10758.1, -1369.04, 15.43603, 5.044002, 7200, 0, 0), -- Oathsworn Pathfinder (Area: The Warlord's Garrison)
(@CGUID+20, 44924, 755, 1, 1, -10753, -1378.72, 15.43603, 2.094395, 7200, 0, 0), -- Oathsworn Myrmidon (Area: The Warlord's Garrison)
(@CGUID+21, 44926, 755, 1, 1, -10784, -1298.25, 15.43603, 2.146755, 7200, 0, 0), -- Oathsworn Wanderer (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+22, 49835, 755, 1, 1, -10767.17, -1292.183, 15.40277, 3.924337, 7200, 0, 0), -- Desert Spider (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+23, 49732, 755, 1, 1, -10766.04, -1287.711, 15.39636, 1.08678, 7200, 0, 0), -- Horned Lizard (Area: The Warlord's Garrison)
(@CGUID+24, 44981, 755, 1, 1, -10783.3, -1288.84, 15.43603, 3.525565, 7200, 0, 0), -- Oathsworn Skinner (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+25, 45001, 755, 1, 1, -10731.4, -1395.14, 15.43603, 3.508112, 7200, 0, 0), -- Enslaved Bandit (Area: The Warlord's Garrison)
(@CGUID+26, 44922, 755, 1, 1, -10760.6, -1379.4, 15.43603, 0.6632251, 7200, 0, 0), -- Oathsworn Axemaster (Area: The Warlord's Garrison)
(@CGUID+27, 45007, 755, 1, 1, -10737.5, -1394.56, 15.43603, 3.682645, 7200, 0, 0), -- Enslaved Bandit (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+28, 45007, 755, 1, 1, -10788, -1291.09, 15.43603, 3.246312, 7200, 0, 0), -- Enslaved Bandit (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+29, 45001, 755, 1, 1, -10732, -1400.14, 15.43603, 2.530727, 7200, 0, 0), -- Enslaved Bandit (Area: The Warlord's Garrison)
(@CGUID+30, 45007, 755, 1, 1, -10741.7, -1396.38, 15.43603, 0, 7200, 0, 0), -- Enslaved Bandit (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+31, 44922, 755, 1, 1, -10793.8, -1285.84, 15.43603, 5.72468, 7200, 0, 0), -- Oathsworn Axemaster (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+32, 44924, 755, 1, 1, -10795.8, -1292.77, 15.43603, 0.418879, 7200, 0, 0), -- Oathsworn Myrmidon (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+33, 45007, 755, 1, 1, -10734.6, -1404.64, 15.43603, 2.094395, 7200, 0, 0), -- Enslaved Bandit (Area: The Warlord's Garrison)
(@CGUID+34, 49835, 755, 1, 1, -10738.63, -1392.072, 15.47772, 4.00379, 7200, 0, 0), -- Desert Spider (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+35, 44577, 755, 1, 1, -10858, -1364.31, 15.43603, 3.420845, 7200, 0, 0), -- General Husam (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+36, 44586, 755, 1, 1, -10881.61, -1348.891, 27.96363, 0.2792527, 7200, 0, 0), -- Bad Intentions Target (Area: The Warlord's Garrison)
(@CGUID+37, 44586, 755, 1, 1, -10869.75, -1389.601, 28.12603, 0.03490658, 7200, 0, 0), -- Bad Intentions Target (Area: The Warlord's Garrison)
(@CGUID+38, 44586, 755, 1, 1, -10884.4, -1353.424, 27.95413, 4.991642, 7200, 0, 0), -- Bad Intentions Target (Area: The Warlord's Garrison)
(@CGUID+39, 44586, 755, 1, 1, -10874.1, -1386.257, 28.57507, 1.815142, 7200, 0, 0), -- Bad Intentions Target (Area: The Warlord's Garrison)
(@CGUID+40, 44586, 755, 1, 1, -10886.31, -1345.097, 28.08513, 1.884956, 7200, 0, 0), -- Bad Intentions Target (Area: The Warlord's Garrison)
(@CGUID+41, 44586, 755, 1, 1, -10872.4, -1394.326, 28.20153, 5.078908, 7200, 0, 0), -- Bad Intentions Target (Area: The Warlord's Garrison)
(@CGUID+42, 44586, 755, 1, 1, -10889.8, -1350.47, 28.13524, 3.473205, 7200, 0, 0), -- Bad Intentions Target (Area: The Warlord's Garrison)
(@CGUID+43, 44586, 755, 1, 1, -10877.43, -1391.359, 27.96223, 3.473205, 7200, 0, 0), -- Bad Intentions Target (Area: The Warlord's Garrison)
(@CGUID+44, 44897, 755, 1, 1, -10957.5, -1485.63, 6.767189, 1.146581, 7200, 0, 0), -- Pygmy Scout (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+45, 44896, 755, 1, 1, -10952.29, -1499.962, 6.759735, 0.5934119, 7200, 0, 0), -- Pygmy Brute (Area: The Warlord's Garrison) (possible waypoints or random movement)
-- (@CGUID+688, 44897, 0, 1, 1, -0.0607, 0, 1.1799, 0, 7200, 0, 0), -- Pygmy Scout (Area: The Warlord's Garrison) - !!! on transport (NYI) !!! (possible waypoints or random movement)
-- (@CGUID+688, 44898, 0, 1, 1, -0.06073758, 0, 1.179883, 0, 7200, 0, 0), -- Pygmy Firebreather (Area: The Warlord's Garrison) - !!! on transport (NYI) !!! (possible waypoints or random movement)
(@CGUID+46, 45001, 755, 1, 1, -10742.7, -1405.46, 15.43603, 1.815142, 7200, 0, 0), -- Enslaved Bandit (Area: The Warlord's Garrison)
(@CGUID+47, 45001, 755, 1, 1, -10738.6, -1406.5, 15.43603, 1.780236, 7200, 0, 0), -- Enslaved Bandit (Area: The Warlord's Garrison)
(@CGUID+48, 44896, 755, 1, 1, -10968.13, -1496.2, 6.759732, 0.7853982, 7200, 0, 0), -- Pygmy Brute (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+49, 49732, 755, 1, 1, -10794.21, -1393.75, 15.47772, 4.371437, 7200, 0, 0), -- Horned Lizard (Area: The Warlord's Garrison)
(@CGUID+50, 45122, 755, 1, 1, -10795.36, -1406.129, 15.42857, 3.809066, 7200, 0, 0), -- Oathsworn Captain (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+51, 45122, 755, 1, 1, -10830.25, -1297.257, 15.42047, 3.379167, 7200, 0, 0), -- Oathsworn Captain (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+52, 49732, 755, 1, 1, -10867.83, -1337.295, 15.47772, 3.454659, 7200, 0, 0), -- Horned Lizard (Area: The Warlord's Garrison)
(@CGUID+53, 49732, 755, 1, 1, -10860.57, -1326.876, 15.47772, 4.679432, 7200, 0, 0), -- Horned Lizard (Area: The Warlord's Garrison)
(@CGUID+54, 44922, 755, 1, 1, -10878.8, -1330.79, 15.43603, 0.8726646, 7200, 0, 0), -- Oathsworn Axemaster (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+55, 44977, 755, 1, 1, -10869.7, -1331.66, 15.43603, 2.565634, 7200, 0, 0), -- Neferset Torturer (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+56, 44976, 755, 1, 1, -10878.9, -1322.44, 15.43603, 5.689773, 7200, 0, 0), -- Neferset Plaguebringer (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+57, 44981, 755, 1, 1, -10870.2, -1322.68, 15.43603, 4.066617, 7200, 0, 0), -- Oathsworn Skinner (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+58, 44819, 755, 1, 1, -10948.5, -1399.79, 35.55273, 2.408554, 7200, 0, 0), -- Siamat (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+59, 49835, 755, 1, 1, -10894.23, -1377.027, 15.47772, 1.580289, 7200, 0, 0), -- Desert Spider (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+60, 45342, 755, 1, 1, -10989.6, -1408.82, 35.71183, 6.003932, 7200, 0, 0), -- Storm Locale (Area: The Warlord's Garrison)
(@CGUID+61, 43612, 755, 1, 1, -11018.6, -1261.16, 13.32593, 4.817109, 7200, 0, 0), -- High Prophet Barim (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+62, 44932, 755, 1, 1, -10858.4, -1403, 15.43603, 5.61996, 7200, 0, 0), -- Oathsworn Pathfinder (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+63, 44922, 755, 1, 1, -10851.9, -1401.14, 15.43603, 4.625123, 7200, 0, 0), -- Oathsworn Axemaster (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+64, 49732, 755, 1, 1, -10942.52, -1276.307, 10.8854, 4.244499, 7200, 0, 0), -- Horned Lizard (Area: The Warlord's Garrison)
(@CGUID+65, 49835, 755, 1, 1, -10941.89, -1271.671, 10.8854, 5.161344, 7200, 0, 0), -- Desert Spider (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+66, 49743, 755, 1, 1, -10960.71, -1295.397, 10.8854, 0.7183092, 7200, 0, 0), -- Dung Beetle (Area: The Warlord's Garrison)
(@CGUID+67, 49219, 755, 1, 1, -10944.83, -1259.014, 10.8901, 0, 7200, 0, 0), -- Burning Soul (Area: The Warlord's Garrison)
(@CGUID+68, 44981, 755, 1, 1, -10846.9, -1408.22, 15.43603, 2.268928, 7200, 0, 0), -- Oathsworn Skinner (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+69, 44896, 755, 1, 1, -10978.35, -1605.314, 6.578125, 1.832596, 7200, 0, 0), -- Pygmy Brute (Area: The Warlord's Garrison) (possible waypoints or random movement)
-- (@CGUID+712, 44897, 0, 1, 1, -0.0607, 0, 1.1799, 0, 7200, 0, 0), -- Pygmy Scout (Area: The Warlord's Garrison) - !!! on transport (NYI) !!! (possible waypoints or random movement)
-- (@CGUID+712, 44898, 0, 1, 1, -0.06073758, 0, 1.179883, 0, 7200, 0, 0), -- Pygmy Firebreather (Area: The Warlord's Garrison) - !!! on transport (NYI) !!! (possible waypoints or random movement)
(@CGUID+70, 44896, 755, 1, 1, -10998.73, -1582.326, 6.593321, 6.178465, 7200, 0, 0), -- Pygmy Brute (Area: The Warlord's Garrison) (possible waypoints or random movement)
-- (@CGUID+713, 44897, 0, 1, 1, -0.0607, 0, 1.1799, 0, 7200, 0, 0), -- Pygmy Scout (Area: The Warlord's Garrison) - !!! on transport (NYI) !!! (possible waypoints or random movement)
-- (@CGUID+713, 44898, 0, 1, 1, -0.06073758, 0, 1.179883, 0, 7200, 0, 0), -- Pygmy Firebreather (Area: The Warlord's Garrison) - !!! on transport (NYI) !!! (possible waypoints or random movement)
(@CGUID+71, 49835, 755, 1, 1, -10869.31, -1408.753, 15.43948, 1.739047, 7200, 0, 0), -- Desert Spider (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+72, 44976, 755, 1, 1, -10855.1, -1410.81, 15.43603, 1.500983, 7200, 0, 0), -- Neferset Plaguebringer (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+73, 50496, 755, 1, 1, -10927.11, -1470.482, 10.42825, 0.3068974, 7200, 0, 0), -- Oasis Moth (Area: The Warlord's Garrison)
(@CGUID+74, 47720, 755, 1, 1, -11005.9, -1390.45, 10.89013, 2.932153, 7200, 0, 0), -- Camel (Area: The Warlord's Garrison)
(@CGUID+75, 47720, 755, 1, 1, -11003.1, -1388.22, 10.89013, 5.550147, 7200, 0, 0), -- Camel (Area: The Warlord's Garrison)
(@CGUID+76, 47720, 755, 1, 1, -10997.2, -1382.02, 10.89013, 4.363323, 7200, 0, 0), -- Camel (Area: The Warlord's Garrison)
(@CGUID+77, 44926, 755, 1, 1, -10906.4, -1490.86, 6.759744, 5.61996, 7200, 0, 0), -- Oathsworn Wanderer (Area: Sanctum of the South Wind) (possible waypoints or random movement)
(@CGUID+78, 44924, 755, 1, 1, -10908.6, -1498, 6.759744, 0.4537856, 7200, 0, 0), -- Oathsworn Myrmidon (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+79, 44981, 755, 1, 1, -10898.9, -1497.4, 6.759744, 2.86234, 7200, 0, 0), -- Oathsworn Skinner (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+80, 44261, 755, 1, 1, -10912.47, -1487.805, 22.50149, 0.4182364, 7200, 0, 0), -- Sharptalon Eagle (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+81, 50496, 755, 1, 1, -10877.08, -1503.305, 11.04868, 2.435273, 7200, 0, 0), -- Oasis Moth (Area: The Warlord's Garrison)
-- (@CGUID+724, 44796, 0, 1, 1, 0, 0, 0, 0, 7200, 0, 0), -- Tol'vir Land Mine (Area: The Warlord's Garrison) - !!! on transport (NYI) !!!
-- (@CGUID+724, 44796, 0, 1, 1, 0, 0, 0, 0, 7200, 0, 0), -- Tol'vir Land Mine (Area: The Warlord's Garrison) - !!! on transport (NYI) !!! (possible waypoints or random movement)
(@CGUID+82, 49732, 755, 1, 1, -10912.68, -1505.343, 6.763939, 2.234175, 7200, 0, 0), -- Horned Lizard (Area: The Warlord's Garrison)
(@CGUID+83, 45377, 755, 1, 1, -10978.3, -1587.67, 6.311274, 0.9948376, 7200, 0, 0), -- Augh (Area: The Warlord's Garrison) (possible waypoints or random movement)
(@CGUID+84, 50496, 755, 1, 1, -10979.05, -1501.246, 9.123808, 2.51614, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+85, 44898, 755, 1, 1, -10966.08, -1507.366, 10.73325, 0.6632251, 7200, 0, 0), -- Pygmy Firebreather (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+86, 50496, 755, 1, 1, -11000.46, -1503.657, 10.32466, 4.807743, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+87, 45062, 755, 1, 1, -10994.78, -1501.035, 6.759734, 4.049164, 7200, 0, 0), -- Oathsworn Scorpid Keeper (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+88, 44982, 755, 1, 1, -10996.6, -1510.486, 6.759734, 2.251475, 7200, 0, 0), -- Neferset Darkcaster (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+89, 49743, 755, 1, 1, -10991.89, -1473.916, 6.761546, 1.675602, 7200, 0, 0), -- Dung Beetle (Area: The Trapper's Enclave)
(@CGUID+90, 49835, 755, 1, 1, -10986.82, -1463.708, 6.681905, 4.184319, 7200, 0, 0), -- Desert Spider (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+91, 44982, 755, 1, 1, -11011.3, -1475.51, 6.759734, 2.321288, 7200, 0, 0), -- Neferset Darkcaster (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+92, 44924, 755, 1, 1, -11010.6, -1468.63, 6.759734, 3.577925, 7200, 0, 0), -- Oathsworn Myrmidon (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+93, 45007, 755, 1, 1, -11002.79, -1500.905, 6.759734, 5.166174, 7200, 0, 0), -- Enslaved Bandit (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+94, 44922, 755, 1, 1, -11004.98, -1509.448, 6.759734, 0.9250245, 7200, 0, 0), -- Oathsworn Axemaster (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+95, 49743, 755, 1, 1, -11010.24, -1511.41, 6.800141, 0.6684008, 7200, 0, 0), -- Dung Beetle (Area: The Trapper's Enclave)
(@CGUID+96, 50496, 755, 1, 1, -11009.64, -1459.143, 8.96263, 0.8061266, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+97, 45007, 755, 1, 1, -11023.4, -1470.65, 6.759734, 5.742133, 7200, 0, 0), -- Enslaved Bandit (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+98, 44981, 755, 1, 1, -11021.8, -1478.07, 6.759734, 1.500983, 7200, 0, 0), -- Oathsworn Skinner (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+99, 49725, 755, 1, 1, -11025.89, -1508.948, 6.760407, 1.244334, 7200, 0, 0), -- Emerald Boa (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+100, 50496, 755, 1, 1, -11022.95, -1494.951, 10.33994, 2.829646, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+101, 50496, 755, 1, 1, -11022.93, -1511.974, 9.775724, 4.512177, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+102, 44922, 755, 1, 1, -11021.5, -1463.53, 6.759734, 5.5676, 7200, 0, 0), -- Oathsworn Axemaster (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+103, 44926, 755, 1, 1, -11026.5, -1513.41, 6.759734, 3.455752, 7200, 0, 0), -- Oathsworn Wanderer (Area: The Trapper's Enclave)
(@CGUID+104, 44932, 755, 1, 1, -11039.7, -1509.69, 6.759734, 4.939282, 7200, 0, 0), -- Oathsworn Pathfinder (Area: The Trapper's Enclave)
(@CGUID+105, 50496, 755, 1, 1, -11038.79, -1510.049, 8.545758, 4.647817, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+106, 43614, 755, 1, 1, -11058.1, -1656.58, 0.8279553, 0.715585, 7200, 0, 0), -- Lockmaw (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+107, 49725, 755, 1, 1, -11048.61, -1510.841, 6.798261, 0.2137415, 7200, 0, 0), -- Emerald Boa (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+108, 50491, 755, 1, 1, -10977.26, -1589.047, 6.305853, 6.134747, 7200, 0, 0), -- Mac Frog (Area: The Trapper's Enclave)
(@CGUID+109, 50491, 755, 1, 1, -11052.17, -1522.637, 6.788048, 3.002179, 7200, 0, 0), -- Mac Frog (Area: The Trapper's Enclave)
(@CGUID+110, 50496, 755, 1, 1, -11048.68, -1519.563, 9.600751, 3.493381, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+111, 50491, 755, 1, 1, -11036.58, -1575.156, 0.5306947, 0.5621505, 7200, 0, 0), -- Mac Frog (Area: The Trapper's Enclave)
(@CGUID+112, 50496, 755, 1, 1, -11060.47, -1510.14, 8.725437, 4.112632, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+113, 45124, 755, 1, 1, -10987.2, -1660.37, 1.453323, 1.762783, 7200, 0, 0), -- Add Stalker (Area: The Trapper's Enclave)
(@CGUID+114, 50491, 755, 1, 1, -10979.18, -1653.236, 0.08044004, 1.277468, 7200, 0, 0), -- Mac Frog (Area: The Trapper's Enclave)
(@CGUID+115, 50490, 755, 1, 1, -10993.67, -1642.55, 1.179498, 0.6200623, 7200, 0, 0), -- Locust (Area: The Trapper's Enclave)
(@CGUID+116, 49725, 755, 1, 1, -10893.32, -1634.817, 10.13192, 3.915089, 7200, 0, 0), -- Emerald Boa (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+117, 49725, 755, 1, 1, -10902.25, -1637.207, 9.558862, 2.939642, 7200, 0, 0), -- Emerald Boa (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+118, 50491, 755, 1, 1, -10997.27, -1674.396, 0.1134961, 1.289814, 7200, 0, 0), -- Mac Frog (Area: Oasis of the Fallen Prophet)
(@CGUID+119, 45124, 755, 1, 1, -11065.3, -1580.95, 1.533023, 4.625123, 7200, 0, 0), -- Add Stalker (Area: Oasis of the Fallen Prophet)
(@CGUID+120, 45124, 755, 1, 1, -11084.2, -1622.91, 1.811483, 0.4014257, 7200, 0, 0), -- Add Stalker (Area: Oasis of the Fallen Prophet)
(@CGUID+121, 50490, 755, 1, 1, -11077.22, -1635.167, 0.6936857, 1.847488, 7200, 0, 0), -- Locust (Area: Oasis of the Fallen Prophet)
(@CGUID+122, 45124, 755, 1, 1, -11014.5, -1695.01, 1.206273, 2.146755, 7200, 0, 0), -- Add Stalker (Area: Oasis of the Fallen Prophet)
(@CGUID+123, 45124, 755, 1, 1, -11017.1, -1676.24, 1.643833, 2.216568, 7200, 0, 0), -- Add Stalker (Area: Oasis of the Fallen Prophet)
(@CGUID+124, 45124, 755, 1, 1, -11095.4, -1633.63, 2.356323, 5.846853, 7200, 0, 0), -- Add Stalker (Area: Oasis of the Fallen Prophet)
(@CGUID+125, 45124, 755, 1, 1, -11036.8, -1694.15, 1.594813, 0.4014257, 7200, 0, 0), -- Add Stalker (Area: Oasis of the Fallen Prophet)
(@CGUID+126, 50491, 755, 1, 1, -11015.97, -1704.195, -0.002523273, 3.344357, 7200, 0, 0), -- Mac Frog (Area: Oasis of the Fallen Prophet)
(@CGUID+127, 50496, 755, 1, 1, -11062.24, -1479.842, 9.096326, 6.128476, 7200, 0, 0), -- Oasis Moth (Area: Oasis of the Fallen Prophet)
(@CGUID+128, 45062, 755, 1, 1, -11087.6, -1493.48, 6.759734, 5.637414, 7200, 0, 0), -- Oathsworn Scorpid Keeper (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+129, 44981, 755, 1, 1, -11071.9, -1483.46, 6.759734, 5.742133, 7200, 0, 0), -- Oathsworn Skinner (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+130, 47720, 755, 1, 1, -11047.4, -1376.6, 10.89013, 3.193953, 7200, 0, 0), -- Camel (Area: The Trapper's Enclave)
(@CGUID+131, 45065, 755, 1, 1, -11034.4, -1371.74, 10.89013, 5.044002, 7200, 0, 0), -- Tol'vir Merchant (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+132, 49743, 755, 1, 1, -11031.25, -1381.927, 10.8854, 1.570796, 7200, 0, 0), -- Dung Beetle (Area: The Trapper's Enclave)
(@CGUID+133, 45065, 755, 1, 1, -11014.6, -1365.94, 10.89013, 5.044002, 7200, 0, 0), -- Tol'vir Merchant (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+134, 49732, 755, 1, 1, -11079.78, -1519.094, 6.800443, 1.914171, 7200, 0, 0), -- Horned Lizard (Area: The Trapper's Enclave)
(@CGUID+135, 44976, 755, 1, 1, -11077.84, -1400.152, 10.89456, 0.2233469, 7200, 0, 0), -- Neferset Plaguebringer (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+136, 44982, 755, 1, 1, -11070.32, -1394.033, 10.85526, 0.2755347, 7200, 0, 0), -- Neferset Darkcaster (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+137, 44922, 755, 1, 1, -11099.9, -1539.96, 6.759744, 3.769911, 7200, 0, 0), -- Oathsworn Axemaster (Area: The Trapper's Enclave)
(@CGUID+138, 50496, 755, 1, 1, -11100.64, -1504.163, 9.459798, 1.798593, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+139, 50496, 755, 1, 1, -11099.23, -1544.756, 9.832254, 5.440124, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+140, 50496, 755, 1, 1, -11109.83, -1533.434, 8.895953, 2.168112, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+141, 44976, 755, 1, 1, -11104.7, -1556.23, 6.759744, 2.792527, 7200, 0, 0), -- Neferset Plaguebringer (Area: The Trapper's Enclave)
(@CGUID+142, 44981, 755, 1, 1, -11109.1, -1541.29, 6.759744, 4.485496, 7200, 0, 0), -- Oathsworn Skinner (Area: The Trapper's Enclave)
(@CGUID+143, 44982, 755, 1, 1, -11099.3, -1547.89, 6.759744, 3.525565, 7200, 0, 0), -- Neferset Darkcaster (Area: The Trapper's Enclave)
(@CGUID+144, 50496, 755, 1, 1, -11110.73, -1541.659, 9.589666, 5.255738, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+145, 45065, 755, 1, 1, -11077.7, -1383.69, 10.89013, 5.044002, 7200, 0, 0), -- Tol'vir Merchant (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+146, 44980, 755, 1, 1, -11115.8, -1552.79, 6.759744, 0.8377581, 7200, 0, 0), -- Neferset Theurgist (Area: The Trapper's Enclave)
(@CGUID+147, 49743, 755, 1, 1, -11145.08, -1440.953, 10.8854, 3.967033, 7200, 0, 0), -- Dung Beetle (Area: The Trapper's Enclave)
(@CGUID+148, 49743, 755, 1, 1, -11096.58, -1392.912, 10.89567, 5.879227, 7200, 0, 0), -- Dung Beetle (Area: The Trapper's Enclave)
(@CGUID+149, 47720, 755, 1, 1, -11146.6, -1447.05, 10.89013, 4.764749, 7200, 0, 0), -- Camel (Area: The Trapper's Enclave)
(@CGUID+150, 44982, 755, 1, 1, -11112.1, -1398.39, 10.89123, 2.617994, 7200, 0, 0), -- Neferset Darkcaster (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+151, 44981, 755, 1, 1, -11124.2, -1404.55, 10.89013, 1.466077, 7200, 0, 0), -- Oathsworn Skinner (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+152, 44980, 755, 1, 1, -11131, -1406.69, 10.89013, 1.239184, 7200, 0, 0), -- Neferset Theurgist (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+153, 44976, 755, 1, 1, -11118.3, -1402.22, 10.89013, 1.884956, 7200, 0, 0), -- Neferset Plaguebringer (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+154, 44977, 755, 1, 1, -11100.1, -1360.74, 10.89013, 0.6457718, 7200, 0, 0), -- Neferset Torturer (Area: The Trapper's Enclave)
(@CGUID+155, 44976, 755, 1, 1, -11096.9, -1370.5, 10.89013, 6.038839, 7200, 0, 0), -- Neferset Plaguebringer (Area: The Trapper's Enclave)
(@CGUID+156, 44982, 755, 1, 1, -11096.5, -1379.91, 10.89013, 0.6981317, 7200, 0, 0), -- Neferset Darkcaster (Area: The Trapper's Enclave)
(@CGUID+157, 49835, 755, 1, 1, -11138.71, -1361.543, 10.92205, 2.897374, 7200, 0, 0), -- Desert Spider (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+158, 37231, 755, 1, 1, -11095.3, -1357.23, 11.57513, 0, 7200, 0, 0), -- Rope Beam Stalker (Area: The Trapper's Enclave)
(@CGUID+159, 37231, 755, 1, 1, -11093.6, -1356.25, 17.29753, 0, 7200, 0, 0), -- Rope Beam Stalker (Area: The Trapper's Enclave)
(@CGUID+160, 50496, 755, 1, 1, -11126.31, -1384.29, 19.47555, 2.568381, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+161, 37231, 755, 1, 1, -11087.8, -1379.9, 11.40353, 0, 7200, 0, 0), -- Rope Beam Stalker (Area: The Trapper's Enclave)
(@CGUID+162, 37231, 755, 1, 1, -11086.9, -1378.05, 17.26353, 0, 7200, 0, 0), -- Rope Beam Stalker (Area: The Trapper's Enclave)
(@CGUID+163, 37231, 755, 1, 1, -11090.6, -1369.01, 17.27573, 0, 7200, 0, 0), -- Rope Beam Stalker (Area: The Trapper's Enclave)
(@CGUID+164, 37231, 755, 1, 1, -11092.2, -1367.9, 11.12613, 0, 7200, 0, 0), -- Rope Beam Stalker (Area: The Trapper's Enclave)
(@CGUID+165, 50496, 755, 1, 1, -11120.06, -1382.238, 20.50793, 1.095119, 7200, 0, 0), -- Oasis Moth (Area: The Trapper's Enclave)
(@CGUID+166, 45007, 755, 1, 1, -11090.2, -1374.35, 13.74533, 3.543018, 7200, 0, 0), -- Enslaved Bandit (Area: The Trapper's Enclave)
(@CGUID+167, 44976, 755, 1, 1, -11158.2, -1378.69, 10.89013, 2.617994, 7200, 0, 0), -- Neferset Plaguebringer (Area: The Trapper's Enclave)
(@CGUID+168, 45065, 755, 1, 1, -11164.77, -1380.648, 10.89009, 0.3665192, 7200, 0, 0), -- Tol'vir Merchant (Area: The Trapper's Enclave)
(@CGUID+169, 45065, 755, 1, 1, -11159.8, -1392.86, 10.89013, 0.418879, 7200, 0, 0), -- Tol'vir Merchant (Area: The Trapper's Enclave)
(@CGUID+170, 44982, 755, 1, 1, -11152, -1393.03, 10.89013, 2.984513, 7200, 0, 0), -- Neferset Darkcaster (Area: The Trapper's Enclave)
(@CGUID+171, 44980, 755, 1, 1, -11156, -1385.36, 10.89013, 3.961897, 7200, 0, 0), -- Neferset Theurgist (Area: The Trapper's Enclave)
(@CGUID+172, 45065, 755, 1, 1, -11056.9, -1377.2, 10.90073, 5.044002, 7200, 0, 0), -- Tol'vir Merchant (Area: The Trapper's Enclave) (possible waypoints or random movement)
(@CGUID+173, 44922, 755, 1, 1, -11103.1, -1351.72, 10.89013, 5.88176, 7200, 0, 0), -- Oathsworn Axemaster (Area: Terrace of the Augurs)
(@CGUID+174, 37231, 755, 1, 1, -11097.3, -1347.2, 17.15963, 3.176499, 7200, 0, 0), -- Rope Beam Stalker (Area: Terrace of the Augurs)
(@CGUID+175, 37231, 755, 1, 1, -11099, -1347.01, 11.41073, 0, 7200, 0, 0), -- Rope Beam Stalker (Area: Terrace of the Augurs)
(@CGUID+176, 45065, 755, 1, 1, -11094.4, -1336.96, 10.89013, 1.937315, 7200, 0, 0), -- Tol'vir Merchant (Area: Terrace of the Augurs)
(@CGUID+177, 45007, 755, 1, 1, -11096.8, -1352.65, 13.28943, 3.595378, 7200, 0, 0), -- Enslaved Bandit (Area: Terrace of the Augurs)
(@CGUID+178, 47720, 755, 1, 1, -11046.7, -1371.46, 10.89013, 6.073746, 7200, 0, 0), -- Camel (Area: Terrace of the Augurs)
(@CGUID+179, 49732, 755, 1, 1, -11121.68, -1329.764, 10.87805, 4.396595, 7200, 0, 0), -- Horned Lizard (Area: Terrace of the Augurs)
(@CGUID+180, 49732, 755, 1, 1, -11096.25, -1321.88, 10.88428, 3.93872, 7200, 0, 0), -- Horned Lizard (Area: Terrace of the Augurs)
(@CGUID+181, 47720, 755, 1, 1, -11080.7, -1316.41, 10.89013, 1.413717, 7200, 0, 0), -- Camel (Area: Terrace of the Augurs)
(@CGUID+182, 47720, 755, 1, 1, -11085.7, -1313.39, 10.89013, 0.4537856, 7200, 0, 0), -- Camel (Area: Terrace of the Augurs)
(@CGUID+183, 45065, 755, 1, 1, -11068.1, -1329.47, 10.89013, 2.007129, 7200, 0, 0), -- Tol'vir Merchant (Area: Terrace of the Augurs)
(@CGUID+184, 45065, 755, 1, 1, -11046.1, -1322.27, 10.89013, 1.937315, 7200, 0, 0), -- Tol'vir Merchant (Area: Terrace of the Augurs)
(@CGUID+185, 44977, 755, 1, 1, -11061.41, -1318.644, 10.81301, 3.49863, 7200, 0, 0), -- Neferset Torturer (Area: Terrace of the Augurs) (possible waypoints or random movement)
(@CGUID+186, 44980, 755, 1, 1, -11070.83, -1317.864, 10.88428, 3.486137, 7200, 0, 0), -- Neferset Theurgist (Area: Terrace of the Augurs) (possible waypoints or random movement)
(@CGUID+187, 45065, 755, 1, 1, -11022.9, -1317.45, 10.89013, 1.780236, 7200, 0, 0), -- Tol'vir Merchant (Area: Terrace of the Augurs) (possible waypoints or random movement)
(@CGUID+188, 48092, 755, 1, 1, -10891.5, -1379.72, 15.43603, 5.340707, 7200, 0, 0), -- Wind Tunnel (Area: Terrace of the Augurs)
(@CGUID+189, 48097, 755, 1, 1, -10955.2, -1437.38, -148.974, 1.32645, 7200, 0, 0), -- Wind Tunnel Landing Zone (Area: Terrace of the Augurs)
(@CGUID+190, 48097, 755, 1, 1, -10911.04, -1386.198, -149.2622, 3.385939, 7200, 0, 0), -- Wind Tunnel Landing Zone (Area: Terrace of the Augurs)
(@CGUID+191, 48092, 755, 1, 1, -10964.9, -1481.17, 6.759734, 5.340707, 7200, 0, 0), -- Wind Tunnel (Area: Terrace of the Augurs)
(@CGUID+192, 48092, 755, 1, 1, -10930.58, -1302.745, 2.202041, 5.358161, 7200, 0, 0), -- Wind Tunnel (Area: Terrace of the Augurs)
(@CGUID+193, 48097, 755, 1, 1, -10910.61, -1432.009, 35.44183, 2.076942, 7200, 0, 0), -- Wind Tunnel Landing Zone (Area: Terrace of the Augurs)
(@CGUID+194, 48092, 755, 1, 1, -10998.4, -1356.15, 10.88983, 5.340707, 7200, 0, 0), -- Wind Tunnel (Area: Terrace of the Augurs)
(@CGUID+195, 48097, 755, 1, 1, -10940.86, -1350.918, 35.64969, 5.410521, 7200, 0, 0), -- Wind Tunnel Landing Zone (Area: Terrace of the Augurs)
(@CGUID+196, 48097, 755, 1, 1, -10994.91, -1417.094, -149.2738, 0.3141593, 7200, 0, 0), -- Wind Tunnel Landing Zone (Area: Terrace of the Augurs)
(@CGUID+197, 48092, 755, 1, 1, -11027.7, -1427.97, 5.693843, 5.340707, 7200, 0, 0), -- Wind Tunnel (Area: Terrace of the Augurs)
(@CGUID+198, 48097, 755, 1, 1, -10979, -1374.833, -149.0995, 5.445427, 7200, 0, 0), -- Wind Tunnel Landing Zone (Area: Terrace of the Augurs)
(@CGUID+199, 48092, 755, 1, 1, -10887.71, -1447.698, 2.248156, 4.747295, 7200, 0, 0); -- Wind Tunnel (Area: Terrace of the Augurs)


DELETE FROM `creature_equip_template` WHERE `entry` IN (50038, 50036, 50037, 44981, 44932, 44924, 44926, 44922, 45007, 44897, 44896, 44898, 45122, 44977, 44976, 43612, 45377, 45062, 44982, 44980);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(50038, 62798, 0, 0), -- Captain Hadan
(50036, 43967, 0, 0), -- Ramkahen Scout
(50037, 43967, 0, 0), -- Ramkahen Scout
(44981, 56231, 57021, 0), -- Oathsworn Skinner
(44932, 0, 0, 60790), -- Oathsworn Pathfinder
(44924, 57025, 56175, 0), -- Oathsworn Myrmidon
(44926, 0, 0, 60789), -- Oathsworn Wanderer
(44922, 57009, 0, 0), -- Oathsworn Axemaster
(45007, 2179, 2179, 0), -- Enslaved Bandit
(44897, 0, 0, 60764), -- Pygmy Scout
(44896, 60765, 0, 0), -- Pygmy Brute
(44898, 49423, 0, 0), -- Pygmy Firebreather
(45122, 57009, 0, 0), -- Oathsworn Captain
(44977, 57113, 57113, 0), -- Neferset Torturer
(44976, 58802, 0, 0), -- Neferset Plaguebringer
(43612, 58803, 0, 0), -- High Prophet Barim
(45377, 60957, 0, 0), -- Augh
(45062, 57008, 57037, 0), -- Oathsworn Scorpid Keeper
(44982, 58802, 0, 0), -- Neferset Darkcaster
(44980, 57036, 0, 0); -- Neferset Theurgist
-- Set good Mana & HP
UPDATE `creature_template` SET `exp`=3 WHERE `entry` IN (43612, 43614, 44261, 44577, 44586, 44819, 44896, 44897, 44898, 44922, 44924, 44926, 44932, 44976, 44977, 44980, 44981, 44982, 45001, 45007, 45062, 45065, 45096, 45097, 45122, 45124, 45342, 45377, 47720, 48092, 48097, 49219, 49725, 49732, 49743, 49835, 50036, 50037, 50038, 50490, 50491, 50496);
SET @OGUID := 85;
DELETE FROM `gameobject` WHERE `guid`=@OGUID+0 ;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 179899, 726, 1, 1, 1544.55, 303.852, 0.692371, 6.265733, 0, 0, 0, 1, 7200, 255, 1); -- Speed Buff (Area: Dragonmaw Flag Room)
DROP TABLE `gameobject_scripts`;
DELETE FROM `command` WHERE `name`='reload gameobject_scripts';
-- Fix startup errors:
-- Set correct questid for Many Wyrm 
UPDATE `smart_scripts` SET `action_param1`=8346 WHERE `entryorguid` IN (15273,15274,15294,15298) AND `source_type`=0 AND `id` IN (0,1);
UPDATE `quest_template` SET `PrevQuestId`=7022 WHERE `Id`=7025; -- Treats for Greatfather Winter (7025) Alliance version 
UPDATE `quest_template` SET `RequiredRaces`=690,`PrevQuestId`=7021 WHERE `Id`=6962; -- Treats for Great-father Winter (6962) Horde version
UPDATE `quest_template` SET `ExclusiveGroup`=7021 WHERE `Id`=6961; -- Great-father Winter is Here! 
-- add aura to be able to hand in quests
DELETE FROM `spell_area` WHERE `spell`=52217;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`,`quest_start_status`,`quest_end_status`) VALUES
(52217,4306,12574,0,0,0,2,1,1,64);
-- Issue 7541: Shambling Horror immunities
UPDATE `creature_template` SET `mechanic_immune_mask`=`mechanic_immune_mask`|1|2|4|8|16|64|512|1024|4096|8192|65536|131072|524288|4194304|536870912 WHERE `entry`=37698;

-- Issue 8639: Eyes of the Eagle
-- Talonshrike's Egg
SET @ENTRY := 186814;
SET @SOURCETYPE := 1;
UPDATE gameobject_template SET AIName="SmartGameObjectAI" WHERE entry IN(186814,190283);
UPDATE creature_template SET AIName="SmartAI" WHERE entry=24518;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN(186814,190283) AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=24518 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- first egg
(186814,1,0,0,70,0,100,0,2,0,0,0,45,0,1,0,0,0,0,11,24518,500,0,0.0,0.0,0.0,0.0,"ON egg USE notify Talonshrike"),
(186814,1,1,0,70,0,100,0,2,0,0,0,45,0,2,0,0,0,0,11,24518,500,0,0.0,0.0,0.0,0.0,"ON egg USE notify Talonshrike to set attackable"),
-- second egg
(190283,1,0,0,70,0,100,0,2,0,0,0,45,0,1,0,0,0,0,11,24518,500,0,0.0,0.0,0.0,0.0,"ON egg USE notify Talonshrike"),
(190283,1,1,0,70,0,100,0,2,0,0,0,45,0,2,0,0,0,0,11,24518,500,0,0.0,0.0,0.0,0.0,"ON egg USE notify Talonshrike to set attackable"),
-- Talonshrike
(24518,0,0,0,38,0,100,0,0,1,0,0,69,0,0,0,0,0,0,8,0,0,0,1597.4,-3903.79,79.702,0.0,"ON notification fly TO nest"),
(24518,0,1,0,0,0,100,0,5000,5000,10000,12000,11,49865,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0," USE Eye Peck"),
(24518,0,2,0,0,0,100,0,3000,3000,5000,7000,11,32909,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0," USE Talon Strike"),
(24518,0,3,0,38,0,100,0,0,2,0,0,19,256,0,0,0,0,0,1, 0, 0, 0, 0, 0, 0, 0, "Talonshrike - On notification - Remove UNIT_FLAG_IMMUNE_TO_PC");
-- NPC talk text convert from creature_ai_text. Moving boss to cpp.
UPDATE `creature_template` SET `minlevel`=63,`maxlevel`=63,`InhabitType`=5,`AIName`= '', `ScriptName`= 'boss_kirtonos_the_herald' WHERE `entry`=10506;
UPDATE `gameobject_template` SET `AIName`= '', `ScriptName`= 'go_brazier_of_the_herald' WHERE `entry`=175564;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=10506; 4.x
-- DELETE FROM `creature_ai_texts` WHERE `entry`=-448; 4.x
DELETE FROM `creature_text` WHERE `entry` IN (10506);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(10506,0,0, '%s lets out a shrill cry.',16,0,100,0,0,0, 'Kirtonos The Herald - Emote');
DELETE FROM `creature_text` WHERE `entry`=4295;
INSERT INTO `creature_text`(`entry`,`text`,`type`,`language`,`comment`) VALUES
(4295,"There is no escape for you.  The Crusade shall destroy all who carry the scourge's taint.",12,7,"Scarlet Myrmidon - Talk on low HP");
UPDATE `creature_template` SET `ScriptName`="npc_brann_bronzebeard_anraphet" WHERE `entry`=39908;
DELETE FROM `creature_text` WHERE `entry`=39908;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(39908, 0,  0, 'Right, let''s go! Just need to input the final entry sequence into the door mechanism... and...', 12, 0, 100, 5, 0, 20897, 'Brann Bronzebeard'),
(39908, 1,  0, 'That did the trick! The control room should be right behind this... oh... wow...', 12, 0, 100, 5, 0, 20898, 'Brann Bronzebeard'),
(39908, 2,  0, 'What? This isn''t the control room! There''s another entire defense mechanism in place, and the blasted Rock Troggs broke into here somehow. Troggs. Why did it have to be Troggs!', 12, 0, 100, 5, 0, 20899, 'Brann Bronzebeard'),
(39908, 3,  0, 'Ok, let me think a moment.', 12, 0, 100, 1, 0, 20900, 'Brann Bronzebeard'),
(39908, 4,  0, 'Mirrors pointing all over the place.', 12, 0, 100, 25, 0, 20902, 'Brann Bronzebeard'),
(39908, 5,  0, 'Four platforms with huge elementals.', 12, 0, 100, 25, 0, 20901, 'Brann Bronzebeard'),
(39908, 6,  0, 'I got it! I saw a tablet that mentioned this chamber. This is the Vault of Lights! Ok, simple enough. I need you adventurers to take out each of the four elementals to trigger the opening sequence for the far door!', 12, 0, 100, 5, 0, 20903, 'Brann Bronzebeard'),
(39908, 7,  0, 'One down!', 14, 0, 100, 5, 0, 20904, 'Brann Bronzebeard'),
(39908, 8,  0, 'Another one down! Just look at those light beams! They seem to be connecting to the far door!', 14, 0, 100, 5, 0, 20905, 'Brann Bronzebeard'),
(39908, 9,  0, 'One more elemental to go! The door is almost open!', 14, 0, 100, 5, 0, 20906, 'Brann Bronzebeard'),
(39908, 10, 0, 'That''s it, you''ve done it! The vault door is opening! Now we can... oh, no!', 14, 0, 100, 5, 0, 20907, 'Brann Bronzebeard'),
(39908, 11, 0, 'We''ve done it! The control room is breached!', 14, 0, 100, 5, 0, 23709, 'Brann Bronzebeard'),
(39908, 12, 0, 'Here we go! Now this should only take a moment...', 14, 0, 100, 5, 0, 23710, 'Brann Bronzebeard');

UPDATE `creature_template` SET `ScriptName`="boss_anraphet" WHERE `entry`=39788;
DELETE FROM `creature_text` WHERE `entry`=39788;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(39788, 0, 0, 'This unit has been activated outside normal operating protocols. Downloading new operational parameters. Download complete. Full unit self defense routines are now active. Destruction of foreign units in the system shall now commence.', 14, 0, 100, 0, 0, 20857, 'Anraphet - SAY_INTRO'),
(39788, 1, 0, 'Purge of unauthorized entities commencing.', 14, 0, 100, 0, 0, 20862, 'Anraphet - SAY_AGGRO'),
(39788, 2, 0, 'Omega Stance activated. Annihilation of foreign unit is now imminent.', 14, 0, 100, 0, 0, 20861, 'Anraphet - SAY_OMEGA_STANCE'),
(39788, 3, 0, 'Purge Complete.', 14, 0, 100, 0, 0, 20859, 'Anraphet - SAY_PLAYER_KILL'),
(39788, 3, 1, 'Target Annihilated.', 14, 0, 100, 0, 0, 20858, 'Anraphet - SAY_PLAYER_KILL'),
(39788, 4, 0, 'Anraphet unit shutting down...', 14, 0, 100, 0, 0, 20856, 'Anraphet - SAY_DEATH');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (76904,77106,77127);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(76904,'spell_anraphet_alpha_beams'),
(77106,'spell_anraphet_omega_stance_summon'),
(77127,'spell_omega_stance_spider_effect');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup` IN (11339,11348,12512);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=11339;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14, 11339, 15794, 0, 0, 13, 1, 2, 3, 2, 1, 0, 0, '', 'Brann Bronzebeard gossip menu - Show only if DATA_VAULT_OF_LIGHTS is not done'),
(14, 11348, 15815, 0, 0, 13, 1, 18, 4, 0, 1, 0, 0, '', 'Brann Bronzebeard gossip menu - Show only if DATA_DEAD_ELEMENTALS is less than 4'),
(14, 12512, 17600, 0, 0, 13, 1, 18, 4, 0, 0, 0, 0, '', 'Brann Bronzebeard gossip menu - Show only if DATA_DEAD_ELEMENTALS is 4'),
(15, 11339, 0, 0, 0, 13, 1, 2, 3, 2, 1, 0, 0, '', 'Brann Bronzebeard gossip menu option - Show only if DATA_VAULT_OF_LIGHTS is not done');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=77437;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 6, 77437, 0, 0, 31, 0, 3, 39804, 0, 0, 0, 0, '', 'Destruction Protocol - Stone Trogg Pillager'),
(13, 6, 77437, 0, 1, 31, 0, 3, 40252, 0, 0, 0, 0, '', 'Destruction Protocol - Stone Trogg Rock Flinger'),
(13, 6, 77437, 0, 2, 31, 0, 3, 40251, 0, 0, 0, 0, '', 'Destruction Protocol - Stone Trogg Brute');

UPDATE `creature_template` SET `ScriptName`='npc_alpha_beam' WHERE `entry`=41144;
UPDATE `creature_template` SET `ScriptName`='npc_omega_stance' WHERE `entry`=41194;

DELETE FROM `spell_script_names` WHERE `spell_id`=94974;
-- Arcane Wraith SAI
SET @ENTRY := 15273;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,28730,0,0,0,27,15468,28730,0,0,0,0,7,0,0,0,0,0,0,0,"Arcane Wraith - On Spellhit Arcane Torrent - Quest Credit"),
(@ENTRY,0,1,0,8,0,100,1,25046,0,0,0,27,15468,28730,0,0,0,0,7,0,0,0,0,0,0,0,"Arcane Wraith - On Spellhit Arcane Torrent - Quest Credit"),
(@ENTRY,0,2,0,0,0,100,0,10100,16500,12700,24800,11,37361,0,0,0,0,0,2,0,0,0,0,0,0,0,"Arcane Wraith - In Combat - Cast Arcane Bolt");

-- Mana Wyrm SAI
SET @ENTRY := 15274;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,28730,0,0,0,27,15468,28730,0,0,0,0,7,0,0,0,0,0,0,0,"Mana Wyrm - On Spellhit Arcane Torrent - Quest Credit"),
(@ENTRY,0,1,0,8,0,100,1,25046,0,0,0,27,15468,28730,0,0,0,0,7,0,0,0,0,0,0,0,"Mana Wyrm - On Spellhit Arcane Torrent - Quest Credit");

-- Feral Tender SAI
SET @ENTRY := 15294;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,28730,0,0,0,27,15468,28730,0,0,0,0,7,0,0,0,0,0,0,0,"Feral Tender - On Spellhit Arcane Torrent - Quest Credit"),
(@ENTRY,0,1,0,8,0,100,1,25046,0,0,0,27,15468,28730,0,0,0,0,7,0,0,0,0,0,0,0,"Feral Tender - On Spellhit Arcane Torrent - Quest Credit"),
(@ENTRY,0,2,0,2,0,100,0,0,50,15300,22900,11,31325,0,0,0,0,0,1,0,0,0,0,0,0,0,"Feral Tender - At 50% HP - Cast Renew");

-- Tainted Arcane Wraith SAI
SET @ENTRY := 15298;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,28730,0,0,0,27,15468,28730,0,0,0,0,7,0,0,0,0,0,0,0,"Tainted Arcane Wraith - On Spellhit Arcane Torrent - Quest Credit"),
(@ENTRY,0,1,0,8,0,100,1,25046,0,0,0,27,15468,28730,0,0,0,0,7,0,0,0,0,0,0,0,"Tainted Arcane Wraith - On Spellhit Arcane Torrent - Quest Credit"),
(@ENTRY,0,2,0,0,0,100,0,9000,18800,21100,32200,11,25603,0,0,0,0,0,2,0,0,0,0,0,0,0,"Tainted Arcane Wraith - In Combat - Cast Slow");

-- Summon minions
DELETE FROM `spell_script_names` WHERE `spell_id`=59910;
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUE
(59910,'spell_summon_minions');

-- Heroic spells
DELETE FROM `spelldifficulty_dbc` WHERE `id` IN (49198,49034,49037,50089,49668,51363) OR `spellid0` IN (49198,49034,49037,50089,49668,51363);
INSERT INTO `spelldifficulty_dbc`(`id`,`spellid0`,`spellid1`) VALUES
(49198,49198,59909), -- Arcance Blast
(49034,49034,59854), -- Blizzard
(49037,49037,59855), -- Frostbolt
(50089,50089,59856), -- Wrath of Misery
(49668,49668,59004), -- Flash of Darkness
(51363,51363,59016); -- Shadow Bolt

-- Script assignment for summoners
UPDATE `creature_template` SET `ScriptName`='npc_crystal_channel_target',`AIName`='' WHERE `entry`=26712;

-- Spawn summoner for Crystal Handlers
SET @GUID = 19;
DELETE FROM `creature` WHERE `guid`=@GUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `modelid`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`) VALUE
(@GUID,26712,600,3,17188,-341.31,-724.4,28.57,3.78,3600,8982);

-- Check instance script for achievement Oh Novos
DELETE FROM `achievement_criteria_data` WHERE `criteria_id`=7361;
INSERT INTO `achievement_criteria_data`(`criteria_id`,`type`,`ScriptName`) VALUE
(7361,11,'achievement_oh_novos');

-- Waypoints for summoned adds
DELETE FROM `waypoint_data` WHERE `id` IN(2759700,2759800,2760000,2662700);
INSERT INTO `waypoint_data`(`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES 
(2759700,1,-379.473,-810.974,59.7612),
(2759700,2,-379.449,-791.535,44.1756),
(2759700,3,-379.448,-790.328,44.1756),
(2759700,4,-379.426,-772.338,28.5884),
(2759700,5,-379.415,-763.518,28.5884),
(2760000,1,-376.571,-810.681,59.6673),
(2760000,2,-375.627,-791.874,44.1756),
(2760000,3,-375.629,-790.273,44.1434),
(2760000,4,-375.402,-771.145,28.5895),
(2760000,5,-375.337,-765.027,28.5895),
(2759800,1,-382.303,-810.815,59.7628),
(2759800,2,-382.324,-791.595,44.1756),
(2759800,3,-382.326,-790.331,44.1746),
(2759800,4,-383.037,-770.382,28.5884),
(2759800,5,-383.140,-765.399,28.5884),
(2662700,1,-346.977,-733.319,28.5838),
(2662700,2,-363.009,-765.202,28.5907),
(2662700,3,-378.269,-765.701,28.5893);

-- SAI for Crystal Handlers and Risen Shadowcasters
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry` IN (26627,27600);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (26627,27600) AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`event_type`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES
(26627,0,1000,1000,5000,5000,11,49668,2,'Crystal Handler - In fight - After 1s then every 5s - Cast Flash of Darkness - On victim'),
(27600,0,1000,1000,5000,5000,11,51363,2,'Risen Shadowcaster - In fight - After 1s then every 5s - Cast Shadow Bolt - On victim');

-- Conditions for beam spell
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=52106;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`Comment`) VALUES
(13,1,52106,31,0,3,26712,0,'Beam Channel target has to be Crystal Channel Target'),
(13,1,52106,35,1,0,   18,1,'Beam Channel target must not be self');
DELETE FROM `creature` WHERE `id` IN (53520,53375,53698,53693,53487,53691,52530,53369,53680,53734,53896,53900) AND `map`=720;
DELETE FROM `gameobject` WHERE `id` IN (209036,208966,201722,209035) AND `map`=720;

UPDATE `creature_template` SET `flags_extra`=`flags_extra`|0x80 WHERE `entry` IN (53723,53154,53789,53792,53787,53788);

UPDATE `creature_template` SET `minlevel`=88,`maxlevel`=88,`exp`=3,`faction_A`=16,`faction_H`=16,`speed_walk`=3.2,`speed_run`=2,`baseattacktime`=2000,`rangeattacktime`=2000,`unit_class`=2,`unit_flags`=0x2008140,`unit_flags2`=0x8000800,`VehicleId`=1673,`HoverHeight`=14,`mana_mod_extra`=1.72414 WHERE `entry` IN (52530,54044,54045,54046);
UPDATE `creature_template` SET `minlevel`=87,`maxlevel`=87,`exp`=3,`faction_A`=16,`faction_H`=16,`speed_walk`=3.2,`speed_run`=2,`baseattacktime`=2000,`rangeattacktime`=2000,`unit_flags`=0x8000,`unit_flags2`=0x800,`VehicleId`=1695 WHERE `entry` IN (54056,54057); -- Blazing Monstrosity
UPDATE `creature_template` SET `minlevel`=87,`maxlevel`=87,`exp`=3,`faction_A`=16,`faction_H`=16,`speed_walk`=1,`speed_run`=1,`baseattacktime`=2000,`rangeattacktime`=2000,`unit_flags`=0x8000,`unit_flags2`=0x8800 WHERE `entry` IN (53795,54059); -- Egg Pile
UPDATE `creature_template` SET `spell1`=100076,`spell2`=100080,`spell3`=100078,`spell4`=100082 WHERE `entry`=53789;
UPDATE `creature_template` SET `spell1`=100090,`spell2`=100089,`spell3`=100091,`spell4`=100092 WHERE `entry`=53792;
UPDATE `creature_template` SET `minlevel`=85,`maxlevel`=85,`exp`=3,`faction_A`=14,`faction_H`=14,`speed_walk`=1.2,`speed_run`=0.428571,`unit_flags`=0x2000000,`unit_flags2`=0x2000800 WHERE `entry` IN (53787,53788); -- Molten Barrage
UPDATE `creature_template` SET `minlevel`=85,`maxlevel`=85,`exp`=3,`faction_A`=16,`faction_H`=16,`speed_walk`=3.2,`speed_run`=2,`unit_flags`=0x8000,`unit_flags2`=0x800,`baseattacktime`=2000,`rangeattacktime`=2000 WHERE `entry` IN (53794,54058); -- Smouldering Hatchling
UPDATE `creature_template` SET `minlevel`=86,`maxlevel`=86,`exp`=3,`faction_A`=16,`faction_H`=16,`speed_walk`=1,`speed_run`=1.14286,`unit_flags`=0,`unit_flags2`=0x800,`baseattacktime`=2000,`rangeattacktime`=2000,`unit_class`=8,`dynamicflags`=0 WHERE `entry` IN (53793,53973); -- Harbinger of Flame

UPDATE `creature_template` SET `difficulty_entry_1`=54044,`difficulty_entry_2`=54045,`difficulty_entry_3`=54046 WHERE `entry`=52530; -- Alysrazor
UPDATE `creature_template` SET `difficulty_entry_1`=54056 WHERE `entry`=53786; -- Blazing Monstrosity
UPDATE `creature_template` SET `difficulty_entry_1`=54057 WHERE `entry`=53791; -- Blazing Monstrosity
UPDATE `creature_template` SET `difficulty_entry_1`=54059 WHERE `entry`=53795; -- Egg Pile
UPDATE `creature_template` SET `difficulty_entry_1`=54058 WHERE `entry`=53794; -- Smouldering Hatchling
UPDATE `creature_template` SET `difficulty_entry_1`=53973 WHERE `entry`=53793; -- Harbinger of Flame

DELETE FROM `creature_template_addon` WHERE `entry` IN (53786,53791,54056,54057,53794,54058,54276,54019,53224,53102,52530,54044,54045,54046,53900,53680,53520,53693,53698);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(53786, 0, 0x0, 0x1, '100712 99480'), -- Blazing Monstrosity - Fire Hawk Smoke Cosmetic, Sleep (Ultra-High Priority)
(53791, 0, 0x0, 0x1, '100712 99480'), -- Blazing Monstrosity - Fire Hawk Smoke Cosmetic, Sleep (Ultra-High Priority)
(54056, 0, 0x0, 0x1, '100712 99480'), -- Blazing Monstrosity - Fire Hawk Smoke Cosmetic, Sleep (Ultra-High Priority)
(54057, 0, 0x0, 0x1, '100712 99480'), -- Blazing Monstrosity - Fire Hawk Smoke Cosmetic, Sleep (Ultra-High Priority)
(53794, 0, 0x0, 0x1, '100712'), -- Smouldering Hatchling - Fire Hawk Smoke Cosmetic
(54058, 0, 0x0, 0x1, '100712'), -- Smouldering Hatchling - Fire Hawk Smoke Cosmetic
(54276, 0, 0x0, 0x1, '101112'), -- Cinderslither Snake - Cinderslither Aura
(54019, 0, 0x0, 0x1, '100556'), -- Captive Druid of the Talon - Smouldering Roots
(53224, 0, 0x0, 0x1, '100743'), -- Flamewaker Taskmaster - Aura of Indomitability
(53102, 0, 0x3000000, 0x1, '100712'), -- Inferno Hawk - Fire Hawk Smoke Cosmetic
(52530, 0, 0x0, 0x1, '100712'), -- Alysrazor - Fire Hawk Smoke Cosmetic
(54044, 0, 0x0, 0x1, '100712'), -- Alysrazor - Fire Hawk Smoke Cosmetic
(54045, 0, 0x0, 0x1, '100712'), -- Alysrazor - Fire Hawk Smoke Cosmetic
(54046, 0, 0x0, 0x1, '100712'), -- Alysrazor - Fire Hawk Smoke Cosmetic
(53900, 0, 0x3000000, 0x1, '100712'), -- Blazing Broodmother - Fire Hawk Smoke Cosmetic
(53680, 0, 0x3000000, 0x1, '100712'), -- Blazing Broodmother - Fire Hawk Smoke Cosmetic
(53520, 0, 0x0, 0x1, '99327'), -- Plump Lava Worm - Fire Worm Cosmetic
(53693, 0, 0x0, 0x1, '99793'), -- Fiery Vortex - Fiery Vortex
(53698, 0, 0x0, 0x1, '99817'); -- Fiery Tornado - Fiery Tornado

DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (53786,53791);
INSERT INTO `vehicle_template_accessory` (`entry`, `accessory_entry`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(53786,53789,1,'Blazing Monstrosity',5,0),
(53791,53792,1,'Blazing Monstrosity',5,0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (53786,53791,53789,53792);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`) VALUES
(53786,98509,1),
(53791,98509,1),
(53789,93970,1),
(53792,93970,1);

DELETE FROM `creature_text` WHERE `entry`=53795;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(53795, 0, 0, 'The Molten Eggs begin to crack and splinter!', 41, 0, 100, 0, 0, 0, 'Molten Egg - EMOTE_CRACKING_EGGS');

-- ScriptNames and conditions
UPDATE `instance_template` SET `script`='instance_firelands' WHERE `map`=720;
UPDATE `creature_template` SET `ScriptName`='npc_harbinger_of_flame' WHERE `entry`=53793;
UPDATE `creature_template` SET `ScriptName`='npc_blazing_monstrosity' WHERE `entry` IN (53786,53791);
UPDATE `creature_template` SET `ScriptName`='npc_molten_barrage' WHERE `entry` IN (53787,53788);
UPDATE `creature_template` SET `ScriptName`='npc_egg_pile' WHERE `entry`=53795;

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_alysrazor_cosmetic_egg_xplosion';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_alysrazor_turn_monstrosity';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_alysrazor_aggro_closest';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_alysrazor_fieroblast';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(100099,'spell_alysrazor_cosmetic_egg_xplosion'),
(100076,'spell_alysrazor_turn_monstrosity'),
(100078,'spell_alysrazor_turn_monstrosity'),
(100080,'spell_alysrazor_turn_monstrosity'),
(100082,'spell_alysrazor_turn_monstrosity'),
(100089,'spell_alysrazor_turn_monstrosity'),
(100090,'spell_alysrazor_turn_monstrosity'),
(100091,'spell_alysrazor_turn_monstrosity'),
(100092,'spell_alysrazor_turn_monstrosity'),
(100462,'spell_alysrazor_aggro_closest'),
(100094,'spell_alysrazor_fieroblast'),
(101223,'spell_alysrazor_fieroblast'),
(101294,'spell_alysrazor_fieroblast'),
(101295,'spell_alysrazor_fieroblast'),
(101296,'spell_alysrazor_fieroblast');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (100558,100071,100074,100070,100076,100078,100080,100082,100089,100090,100091,100092);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,3,100558,0,0,31,0,3,54019,0,0,0,0,'','Sacrifice to the Flame - Captive Druid of the Talon'),
(13,1,100071,0,0,31,0,3,53787,0,0,0,0,'','Molten Barrage'),
(13,1,100074,0,0,31,0,3,53788,0,0,0,0,'','Molten Barrage'),
(13,2,100070,0,0,31,0,3,53786,0,0,0,0,'','Molten Barrage - Blazing Monstrosity'),
(13,2,100070,0,1,31,0,3,53791,0,0,0,0,'','Molten Barrage - Blazing Monstrosity'),
(13,2,100070,0,2,31,0,3,53793,0,0,0,0,'','Molten Barrage - Harbinger of Flame'),
(13,2,100070,0,3,31,0,3,53795,0,0,0,0,'','Molten Barrage - Egg Pile'),
(13,2,100070,0,4,31,0,3,53794,0,0,0,0,'','Molten Barrage - Smouldering Hatchling'),
(13,1,100076,0,0,31,0,3,53787,0,0,0,0,'','Left-Side Smack - Molten Barrage'),
(13,2,100076,0,1,31,0,3,53786,0,0,0,0,'','Left-Side Smack - Blazing Monstrosity'),
(13,1,100078,0,0,31,0,3,53787,0,0,0,0,'','Right-Side Smack - Molten Barrage'),
(13,2,100078,0,1,31,0,3,53786,0,0,0,0,'','Right-Side Smack - Blazing Monstrosity'),
(13,1,100080,0,0,31,0,3,53787,0,0,0,0,'','Head Bonk - Molten Barrage'),
(13,2,100080,0,1,31,0,3,53786,0,0,0,0,'','Head Bonk - Blazing Monstrosity'),
(13,1,100082,0,0,31,0,3,53787,0,0,0,0,'','Tickle - Molten Barrage'),
(13,2,100082,0,1,31,0,3,53786,0,0,0,0,'','Tickle - Blazing Monstrosity'),
(13,1,100089,0,0,31,0,3,53788,0,0,0,0,'','Head Bonk - Molten Barrage'),
(13,2,100089,0,1,31,0,3,53791,0,0,0,0,'','Head Bonk - Blazing Monstrosity'),
(13,1,100090,0,0,31,0,3,53788,0,0,0,0,'','Left-Side Smack - Molten Barrage'),
(13,2,100090,0,1,31,0,3,53791,0,0,0,0,'','Left-Side Smack - Blazing Monstrosity'),
(13,1,100091,0,0,31,0,3,53788,0,0,0,0,'','Right-Side Smack - Molten Barrage'),
(13,2,100091,0,1,31,0,3,53791,0,0,0,0,'','Right-Side Smack - Blazing Monstrosity'),
(13,1,100092,0,0,31,0,3,53788,0,0,0,0,'','Tickle - Molten Barrage'),
(13,2,100092,0,1,31,0,3,53791,0,0,0,0,'','Tickle - Blazing Monstrosity');

-- Cleanup creature_addon and creature_template_addon
-- we had 83 duplicate aura definitions in those
-- Glacier Penguin (51 rows) 
DELETE FROM `creature_addon` WHERE `guid` IN (134996,134997,134998,134999,135000,135001,135002,135004,135005,135006,135007,135008,135009,135010,135011,135012,135013,135014,135015,135016,135017,135018,135025,135026,135027,135028,135029,135030,135031,135032,135033,135034,135035,135036,135037,135038,135039,135040,135041,53884,53885,53886,53887,53888,53889,53890,53891,53892,54042,54043,54044);
-- Plagued Dragonflayer Tribesman (21 rows)
DELETE FROM `creature_addon` WHERE `guid` IN (97517,97518,97519,97520,97521,97522,97523,97524,97526,97527,97528,97529,97530,97531,97532,97534,97535,97537,97538,97539,97541);
DELETE FROM `creature_addon` WHERE `guid` IN (
85036, -- Sir Marcus Barlowe
85038, -- Captain Joseph Holley
85053); -- Marshal Jacob Alerius
-- Add cpp script to Harrison Jones Entry: 24358
-- UPDATE `creature_template` SET `AIName`= '', `ScriptName`= 'npc_harrison_jones' WHERE `entry`=24358; 4.x removed
-- Remove cpp script from Strange Gong
UPDATE `gameobject_template` SET `AIName`= '', `ScriptName`= '' WHERE `entry`=187359;

-- Small fix to pathing for Harrison Jones
UPDATE `waypoint_data` SET `position_y`=1642.853 WHERE `id`=861770 AND `point`=1;

-- Text for Amani'shi Guardian from sniff
DELETE FROM `creature_text` WHERE `entry` IN (23597);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(23597,0,0, 'More intruders! Sound da alarm!',14,0,100,25,0,12104, 'Amani''shi Guardian - Gong Event Say');

-- Spell condition for Cosmetic - Spear Throw
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=43647;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,43647,0,0,31,0,3,24358,0,0,0,0, '', 'Cosmetic - Spear Throw - Harrison Jones');
-- Some SAI Event flag fixes
UPDATE `smart_scripts` SET `event_flags`=`event_flags` &~2 WHERE `entryorguid` IN (594,2529,3631,3632,3633,3655,11777,11778,11781,11782,11785,11786,12239,12240,12241,14284,14285,16354,16355,24819,25471,25472,25473,29186,29190,29199,29200,29204,29219,29454,29455,29468,32501);
UPDATE `smart_scripts` SET `event_flags`=`event_flags` &~4 WHERE `entryorguid` IN (32501);
-- Spell condition for Cosmetic - Spear Throw
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=43647;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,43647,0,0,31,0,3,24375,0,0,0,0, '', 'Cosmetic - Spear Throw - Harrison Jones');

-- Add spell script for banging the gong
DELETE FROM `spell_script_names` WHERE `spell_id`=45226;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(45226, 'spell_banging_the_gong');

-- Remove creature from db
DELETE FROM `creature` WHERE id=24358;
-- DELETE FROM `creature_addon` WHERE guid=86177; 4.x removed
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry`=24358;


-- SAI for Amani'shi Guardian
SET @ENTRY := 23597;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY AND `id`>1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,2,0,38,0,100,2,0,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - On data set 1 - Set Phase 1'),
(@ENTRY,0,3,0,38,0,100,2,0,2,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - On data set 2 - Set Phase 2'),
-- Script 0
(@ENTRY,0,4,0,1,1,100,3,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Set data 0'),
(@ENTRY,0,5,0,1,1,100,3,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Set Run on'),
(@ENTRY,0,6,0,1,1,100,3,2000,2000,2000,2000,69,0,0,0,0,0,0,8,0,0,0,138.2242,1586.994,43.5488,0, 'Amani''shi Guardian - Script - Move to'),
(@ENTRY,0,7,0,1,1,100,3,3000,3000,3000,3000,69,0,0,0,0,0,0,8,0,0,0,131.8407,1590.247,43.61384,0, 'Amani''shi Guardian - Script - Move to'),
(@ENTRY,0,8,0,1,1,100,3,4000,4000,4000,4000,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.024582, 'Amani''shi Guardian - Script - Turn to'),
(@ENTRY,0,9,0,1,1,100,3,5000,5000,5000,5000,11,43647,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Cast'),
(@ENTRY,0,10,0,1,1,100,3,5200,5200,5200,5200,71,0,1,33979,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Change equipment'),
(@ENTRY,0,11,0,1,1,100,3,6000,6000,6000,6000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Say 0'),
(@ENTRY,0,12,0,1,1,100,3,6200,6200,6200,6200,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Remove Unit Flag'),
(@ENTRY,0,13,0,1,1,100,3,7000,7000,7000,7000,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Attack Cloest player'),
-- Script 1
(@ENTRY,0,14,0,1,2,100,3,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Set data 0'),
(@ENTRY,0,15,0,1,2,100,3,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Set Run on'),
(@ENTRY,0,16,0,1,2,100,3,6000,6000,6000,6000,69,0,0,0,0,0,0,8,0,0,0,107.7912,1586.498,43.61609,0, 'Amani''shi Guardian - Script - Move to'),
(@ENTRY,0,17,0,1,2,100,3,6800,6800,6800,6800,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.047198, 'Amani''shi Guardian - Script - Turn to'),
(@ENTRY,0,18,0,1,2,100,3,7600,7600,7600,7600,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Remove Unit Flag'),
(@ENTRY,0,19,0,1,2,100,3,7800,7800,7800,7800,49,0,0,0,0,0,0,21,50,0,0,0,0,0,0, 'Amani''shi Guardian - Script - Attack Cloest player');
DELETE FROM `creature_addon` WHERE `guid` IN (
 -- Defias Evoker
79171,79177,79281,79360,79374,
 -- Defias Squallshaper
79302,79306,79313,79322,79327,79329,79335,79338,79351,79352,79354,79355,
 -- Defias Rogue Wizard
80383,80389,80390,80744,81105,81170,81173,81176,
 -- Shadowfang Whitescalp
3479,3480,3482,3483,11514,18308,18313,
 -- Defias Enchanter
4279,4321,4874,
 -- Skeletal Mage
5992,5996,5997,6000,6003,6004,
 -- Defias Pillager
45549,53862,53962,54439,89667,90286,90291,90334,90356,
 -- Mosshide Mistweaver
9822,9868,10490,10620,
 -- Drywhisker Surveyor
11944,11946,11955,
 -- Magistrate Henry Maleb
15322,
 -- Hillsbrad Councilman
15642,15751,15957,15967,15986,15988,15989,15995,
 -- Syndicate Wizard
16959,17007,17011,17012,17015,17016,17022,17023,17024,17025,17027,
 -- Dalaran Wizard
17608,17609,17742,17743,17749,17750,17751,17753,17754,17837,17840,17843,17847,17852,17995,18009,18010,18122,18123,18124,18351,18357,18363,18368,18369,19213,19215,28321,28378,28409,
-- Vile Fin Tidehunter
17615,17616,17640,17668,17694,17715,17716,17728,17737,17764,17766,17805,17806,17818,17819,17820,17900,17932,17933,18213,18215,19043,19045,19054); 

-- Texts for Valkyr Battle Maiden
DELETE FROM `creature_text` WHERE `entry`= 28534;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28534,0,0, 'It is not yet your time, champion. Rise! Rise and fight once more!',15,0,100,0,0,0, 'Valkyr Battle Maiden');

-- Texts for Dark Rider of Acherus
DELETE FROM `creature_text` WHERE `entry`= 28654;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28654,0,0, 'The realm of shadows awaits...',12,0,100,0,0,0, 'Dark Rider of Acherus');

-- Texts for Scarlet Miner
DELETE FROM `creature_text` WHERE `entry`= 28841;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28841,0,0, 'Where''d this come from? I better get this down to the ships before the foreman sees it!',12,0,100,0,0,0, 'Scarlet Miner'),
(28841,1,0, "Now I can have a rest!",12,0,100,0,0,0, 'Scarlet Miner');
-- Texts for Akil'zon
DELETE FROM `creature_text` WHERE `entry`= 23574;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(23574,0,0, 'I be da predator! You da prey...',14,0,100,0,0,12013, 'Akil''zon On Aggro'),
(23574,1,0, 'Feed, me bruddahs!',14,0,100,0,0,12014, 'Akil''zon On Summon'),
(23574,2,0, 'Your death gonna be quick, strangers. You shoulda never have come to this place...',14,0,100,0,0,12015, 'Akil''zon Intro'),
(23574,3,0, 'All you be doing is wasting my time!',14,0,100,0,0,12016, 'Akil''zon On Enrage'),
(23574,4,0, 'Ya got nothin''!',14,0,100,0,0,12017, 'Akil''zon On Player Kill'),
(23574,4,1, 'Stop your cryin''!',14,0,100,0,0,12018, 'Akil''zon On Player Kill'),
(23574,5,0, 'You can''t... kill... me spirit!',14,0,100,0,0,12019, 'Akil''zon On Dearh');
-- Texts for Archaedas
DELETE FROM `creature_text` WHERE `entry`= 2748;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(2748,0,0, 'Who dares awaken Archaedas? Who dares the wrath of the makers!',14,0,100,0,0,5855, 'Archaedas On Aggro'),
(2748,1,0, 'Awake ye servants, defend the discs!',14,0,100,0,0,5856, 'Archaedas On Summon Guardians'),
(2748,2,0, 'To my side, brothers. For the makers!',14,0,100,0,0,5857, 'Archaedas On Summon Vault Walkers'),
(2748,3,0, 'Reckless mortal.',14,0,100,0,0,5858, 'Archaedas On Player Kill');
-- Texts for Archavon the Stone Watcher
DELETE FROM `creature_text` WHERE `entry`= 31125 AND `groupid`=1;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(31125,1,0, 'Archavon the Stone Watcher lunges for $N!',16,0,100,0,0,0, 'Archavon the Stone Watcher Leap Emote');
-- Texts for Ayamiss the Hunter
DELETE FROM `creature_text` WHERE `entry`= 15369;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(15369,0,0, '%s goes into a frenzy!',16,0,100,0,0,0, 'Ayamiss the Hunter Frenzy Emote');
-- Texts for Baron Rivendare (Strathhome)
DELETE FROM `creature_text` WHERE `entry`= 15369;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(15369,0,0, 'Intruders! More pawns of the Argent Dawn, no doubt. I already count one of their number among my prisoners. Withdraw from my domain before she is executed!',14,0,100,0,0,0, 'Baron Rivendare - Baron Run Start'),
(15369,1,0, 'You''re still here? Your foolishness is amusing! The Argent Dawn wench needn''t suffer in vain. Leave at once and she shall be spared!',14,0,100,0,0,0, 'Baron Rivendare - Baron Run in progress random'),
(15369,1,1, 'I shall take great pleasure in taking this poor wretch''s life! It''s not too late, she needn''t suffer in vain. Turn back and her death shall be merciful!',14,0,100,0,0,0, 'Baron Rivendare - Baron Run in progress random'),
(15369,2,0, 'May this prisoner''s death serve as a warning. None shall defy the Scourge and live!',14,0,100,0,0,0, 'Baron Rivendare - Baron Run Fail'),
(15369,3,0, 'So you see fit to toy with the Lich King''s creations? Ramstein, be sure to give the intruders a proper greeting.',14,0,100,0,0,0, 'Baron Rivendare - Event Ramstein'),
(15369,4,0, 'Time to take matters into my own hands. Come. Enter my domain and challenge the might of the Scourge!',14,0,100,0,0,0, 'Baron Rivendare - Event Baron');
-- Texts for Zul'jin
DELETE FROM `creature_text` WHERE `entry`= 23863;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(23863,0,0, 'Everybody always wanna take from us. Now we gonna start takin'' back. Anybody who get in our way...gonna drown in their own blood! De Amani empire be back now...seekin'' vengeance. And we gonna start...with you!',14,0,100,0,0,12090, 'Zul''jin YELL_INTRO'),
(23863,1,0, 'Nobody badduh dan me!',14,0,100,0,0,12091, 'Zul''jin YELL_AGGRO'),
(23863,2,0, 'Got me some new tricks...like me bruddah bear!',14,0,100,0,0,12092, 'Zul''jin YELL_TRANSFORM_TO_BEAR'),
(23863,3,0, 'Dere be no hidin'' from da eagle!',14,0,100,0,0,12093, 'Zul''jin YELL_TRANSFORM_TO_EAGLE'),
(23863,4,0, 'Let me introduce to you my new bruddahs: fang and claw!',14,0,100,0,0,12094, 'Zul''jin YELL_TRANSFORM_TO_LYNX'),
(23863,5,0, 'Ya don'' have to look to da sky to see da dragonhawk!',14,0,100,0,0,12095, 'Zul''jin YELL_TRANSFORM_TO_DRAGONHAWK'),
(23863,6,0, 'Fire kill you just as quick!',14,0,100,0,0,12096, 'Zul''jin YELL_FIRE_BREATH'),
(23863,7,0, 'You too slow! Me too strong!',14,0,100,0,0,12097, 'Zul''jin YELL_BERSERK'),
(23863,8,0, 'Da Amani de chuka!',14,0,100,0,0,12098, 'Zul''jin YELL_KILL'),
(23863,8,1, 'Lot more gonna fall like you!',14,0,100,0,0,12099, 'Zul''jin YELL_KILL'),
(23863,9,0, 'Mebbe me fall...but da Amani empire...never gonna die...',14,0,100,0,0,12100, 'Zul''jin YELL_DEATH');
UPDATE `creature_template` SET ScriptName='npc_buru_egg' WHERE entry=15514;
UPDATE `creature_template` SET `faction_A`=16,`faction_H`=16 WHERE `entry` IN (15514,15370);
DELETE FROM `creature` WHERE `id`=15521; -- because **** you, thats why
SET @GUID :=310;
DELETE FROM `creature` WHERE `id`=15514;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID, 15514, 509, 1, 1, -9270.393, 1243.896, -63.76731, 2.722714, 7200, 0, 0),
(@GUID+1, 15514, 509, 1, 1, -9300.067, 1305.085, -63.69709, 4.18879, 7200, 0, 0),
(@GUID+2, 15514, 509, 1, 1, -9263.014, 1295.236, -63.80813, 1.797689, 7200, 0, 0),
(@GUID+3, 15514, 509, 1, 1, -9243.427, 1280.498, -63.59377, 3.822271, 7200, 0, 0),
(@GUID+4, 15514, 509, 1, 1, -9234.326, 1243.826, -63.52806, 3.490659, 7200, 0, 0),
(@GUID+5, 15514, 509, 1, 1, -9300.189, 1266.665, -63.74272, 0.2617994, 7200, 0, 0);
DELETE FROM `linked_respawn` WHERE `linkedGuid`=90873;
INSERT INTO `linked_respawn` (`guid`, `linkedGuid`, `linkType`) VALUES
(@GUID, 90873, 0),
(@GUID+1, 90873, 0),
(@GUID+2, 90873, 0),
(@GUID+3, 90873, 0),
(@GUID+4, 90873, 0),
(@GUID+5, 90873, 0);
DELETE FROM `spell_script_names` WHERE `spell_id`=19593;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(19593, 'spell_egg_explosion');
DELETE FROM `spell_target_position` WHERE id IN (4801,8195,20449);
INSERT INTO `spell_target_position` VALUES
(4801,531,-8306.68,2060.84,133.062,0),
(8195,531,-8344.97,2081.36,125.649,0),
(20449,531,-8330.63,2123.14,133.062,0);
-- Snowfall Glade Pup SAI
SET @ENTRY := 26200;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,39996,0,0,0,11,65208,2,0,0,0,0,1,0,0,0,0,0,0,0,"Snowfall Glade Pup - On Spellhit 40yd Dummy - Cast Self Stun"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,11,46773,2,0,0,0,0,7,0,0,0,0,0,0,0,"Snowfall Glade Pup - On Spellhit 40yd Dummy - Cast Planning for the Future: Create Snowfall Glade Pup"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Snowfall Glade Pup - On Spellhit 40yd Dummy - Forced Despawn");
-- Fixup some runtime errors, linked events that were not SMART_EVENT_LINK
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid`=38017 AND `id`=1 AND `source_type`=0;
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid`=1443 AND `id`=1 AND `source_type`=0;
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid`=3448 AND `id` IN (1, 2, 3) AND `source_type`=0;
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid`=3616 AND `id` IN (1, 2) AND `source_type`=0;
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid`=4049 AND `id`=1 AND `source_type`=0;
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid`=305400 AND `id` IN (1, 2) AND `source_type`=9;
UPDATE `smart_scripts` SET `event_type`=61 WHERE `entryorguid`=83600 AND `id` IN (1, 2, 3) AND `source_type`=9;
-- Texts for Timmy the Cruel
DELETE FROM `creature_text` WHERE `entry`= 10808;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(10808,0,0, 'TIMMY!',14,0,100,0,0,0, 'Timmy the Cruel - Yell on Spawn');
-- Texts for Shirrak the Dead Watcher
DELETE FROM `creature_text` WHERE `entry`= 18371;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(18371,0,0, '%s focuses on $n!',41,0,100,0,0,0, 'Shirrak the Dead Watcher - Emote Focus');
DELETE FROM `creature_template_addon` WHERE `entry`IN (48,1027,1179,1708,3737,3749,3921,6221,7011,7396);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
-- Removed Battle Stance Aura, it should be set via SAI, same for any fake mining emotes) 
(  48,0,0,1114112,4097,0,''), -- Skeletal Warrior
(1027,0,0,1114112,4097,0,''), -- Bluegill Warrior
(1179,0,0,1114112,4097,0,''), -- Mogrosh Enforcer
(1708,0,0,1114112,4097,0,''), -- Defias Inmate
(3737,0,0,0,285216769,0,''), -- Saltspittle Puddlejumper
(3749,0,0,0,285216769,0,''), -- Foulweald Ursa
(3921,0,0,0,285216769,0,''), -- Thistlefur Ursa
(6221,0,0,1114112,4097,0,''), -- Addled Leper
(7011,0,0,1114112,4097,0,''), -- Earthen Rocksmasher
(7396,0,0,1114112,4097,0,''); -- Earthen Stonebreaker
-- Remove creature_addon templates in favor of general creature_template_addon ones, and possible SAI
DELETE FROM `creature_addon` WHERE `guid` IN (
-- Skeletal Warrior
4914,5008,5968,5974,5984,5985,5986,5987,5988,5989,6005,
-- Bluegill Warrior
9543,9544,9545,9605,9607,9686,9690,9759,9788,9796,9823,10730,10925,10928,11055,11058,
-- Mogrosh Enforcer
8366,8789,9082,9211,9216,9217,9227,9376,
-- Defias Inmate
79082,79095,79097,79103,79106,
-- Saltspittle Puddlejumper
32919,32920,32921,32922,32923,32924,32925,
-- Foulweld Ursa
33080,33081,33082,33083,
-- Thistlefur Ursa
32440,32441,32442,32443,32445,32446,32447,32448,
-- Addled Leper
2446,2447,2448,
-- Earthen Rocksmasher
28369,28370,28371,28374,28376,28377,28532,28535,28536,28537,28538,28539,28541,28542,28543,28544,28546,28547,28784,28795,28796,28797,28798,28799,29384,29488,29573,29574,
-- Earthen Stonebreaker
27764,27766,27767,27770,27789,27790,27791,33505,33506,33507,33508);
-- Remove Battle Stance Aura as that should already be done via SAI:
UPDATE `creature_addon` SET `auras`='' WHERE `auras`='7165' AND `guid` IN (90212,32617,12218,2443); 

DELETE FROM `creature_addon` WHERE `guid` IN (
-- ---------------------------------------------------------------
-- Lightning Shield (12550)
-- ---------------------------------------------------------------
-- Shadowpine Witch
81831,81833,81839,81842,81844,81896,
-- Deadwind Ogre Mage
3964,3980,3982,3994,3995,3996,3999,4038,
-- ---------------------------------------------------------------
-- Demon Armor (13787)
-- ---------------------------------------------------------------
-- Morganth
6268,
 -- Shadowmoon Deathshaper
13234,13233,13232,13231,12891,12890,
 -- Skeletal Guardian
52616,52620,52622,52643,52644,52647,52649,52650,52653,52683,52837,52852,52853,52934,52997,52998,52999,53000,53003,53005,53006,53007,53009,53010,53092,53093,53095,
-- ---------------------------------------------------------------
-- Chain Heal (1604)
-- ---------------------------------------------------------------
-- Crazed Mana-Wraith
126548,126552,
-- Scarlet Peasant
128784,
-- Scarlet Infantryman
129286,129287,
-- Flesh Behemoth
130392,
-- Marsh Fawn
133083,
-- ---------------------------------------------------------------
-- Stealth Detection (8279)
-- ---------------------------------------------------------------
-- Scarlet Sentinel
45391,45396,48219,48593,48617,48624,49992,51744,51745,52001,52245,52247,52510,
-- Eyeless Watcher
54277,56694,69687,69707,92177,92204,92518,
-- Unseen Servant
92527,92713,
-- ---------------------------------------------------------------
-- Retribution Aura (8990)
-- ---------------------------------------------------------------
-- Crimson Conjuror
54079,54082,
-- Crimson Gallant
54180,54201,54204,54205,54206,54207,54208,54219,54221,54222,54223,54224,54225,54227,54228,54229,
-- Crimson Battle Mage
54230,54231,54232,54233,
-- ---------------------------------------------------------------
-- Frost Armor (18100)
-- ---------------------------------------------------------------
-- Scarlet Archmage
54267,84783,84784,84963,86414,90955,92330,92436,92444,92452,
-- ---------------------------------------------------------------
-- Invisibility and Stealth Detection
-- ---------------------------------------------------------------
-- Ravaged Cadaver
52172,52171,52170,52169,52168,52167,52166,52165,52164,52163,52162,52161,52160,52159,52158,52157,52156,52155,52154,52153,52152,52173,52174,52175,52176,52177,52179,52180,52181,52182,
-- Mangled Cadaver
52183,52184,52185,52186,52187,52188,52189,52190,52191,52192,52193,52194,52195,52196,52197,52198,52199,52200,52201,52202,52203,52204,52205,52206,52207,52208,52209,52210,52211,52212,52213,52214,52215,52216,52217,
-- Ghoul Ravener
53678,53691,53692,53693,53694,53695,53696,53697,53698,53702,53706,53707,53708,53709,53715,53716,53726,
-- Fleshflayer Ghoul
53727,53728,53729,53761,53777,53778,53779,53780,53781,53782,
-- Bloodseeker Bat
49123,49124,49125,49127,49128,49139,49140,49143,49144,49145,49146,49150,49151,49156,49157,49158,49186,49187,49188,49190,49191,49192,51874,91548,91549,91551,91554,
-- Hooktooth Frenzy
49068,49069,49070,49071,49072,49073,49074,49075,49076,49722,49723,49724,49725,49727,49728,49730,49731,51443,51445,51446,51447,51449,51450,51963,
-- Ancient Core Hound
56675,56676,56742,
-- Embalming Slime
128103,128104,128105,128106,128107,128108,128109,128110,128111,128112,128113,128114,128115,128116,128117,128118,
-- Shade of Naxxramas
127755,127757,
-- Stoneskin Gargoyle
127776,127777,127778,127779,127780,
-- Argent Sentry
53857,53863,53864,53868,53869,53875,53895,53896,54751,54752,54753,54755,54756,54757,54758,68491,68500,68931,68963,69677,69679,
-- Aqueous Lord
12869,12868,12867,12866,
-- Amani'shi Guardian
86194,86204,86205,86239,86280,86307,86308,86906,86910,86914,89133,89134,89143,89165,89168,89170,89171,89192,89194,89195,89219,89220,89241,89243,89255,89331,
-- Amani'shi Savage
85580,86132,86162,86913,86915,86916,86918,86920,
-- Amani'shi Handler
86923,86927,89136,89138,89142,89174,89199,
-- Amani'shi Wind Walker
89207,86210,
-- Mage Slayer
126474,126475,126476,126477,126478,126479,
-- Savage Worg
125993,125994,125995,125996,125997,125998,
-- Vigilant Shade
128065);


-- Texts for Postmaster Malown
DELETE FROM `creature_text` WHERE `entry`= 11143;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(11143,0,0, 'You just got MALOWNED!',14,0,100,0,0,0, 'Postmaster Malown - Yell on Kill');
-- Texts for Nightbane
DELETE FROM `creature_text` WHERE `entry`= 17225;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17225,0,0, 'An ancient being awakens in the distance...',16,0,100,0,0,0, 'Nightbane - EMOTE_SUMMON'),
(17225,1,0, 'What fools! I shall bring a quick end to your suffering!',14,0,100,0,0,0, 'Nightbane - YELL_AGGRO'),
(17225,2,0, 'Miserable vermin. I shall exterminate you from the air!',14,0,100,0,0,0, 'Nightbane - YELL_FLY_PHASE'),
(17225,3,0, 'Enough! I shall land and crush you myself!',14,0,100,0,0,0, 'Nightbane - YELL_LAND_PHASE'),
(17225,3,1, 'Insects! Let me show you my strength up close!',14,0,100,0,0,0, 'Nightbane - YELL_LAND_PHASE'),
(17225,4,0, 'takes a deep breath.',16,0,100,0,0,0, 'Nightbane - EMOTE_BREATH');
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=31887;
DELETE FROM `smart_scripts` WHERE `entryorguid`=31887 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`link`,`event_type`,`event_param1`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(31887,0,1,8,59925,88,3188700,3188702,1,'Ebon Blade Marker - On spell hit of Construct Barricade - Call random actionlist'),
(31887,1,2,61,0,33,31887,0,7,'Ebon Blade Marker - On spell hit of Construct Barricade - Give quest credit'),
(31887,2,0,61,0,41,0,0,1,'Ebon Blade Marker - On spell hit of Construct Barricade - Despawn');

DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 3188700 AND 3188702 AND `source_type`=9;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`action_type`,`action_param1`,`target_type`,`comment`) VALUES
(3188700,9,11,59922,1,'Ebon Blade Marker - Actionlist - Cast Summon Barricade A'),
(3188701,9,11,59923,1,'Ebon Blade Marker - Actionlist - Cast Summon Barricade B'),
(3188702,9,11,59924,1,'Ebon Blade Marker - Actionlist - Cast Summon Barricade C');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=59925;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUE
(13,1,59925,31,3,31887,'Construct Barricade - Target must be Ebon Blade Marker');

UPDATE `creature_addon` INNER JOIN `creature` ON `creature`.`guid`=`creature_addon`.`guid` SET `auras`='59919' WHERE `id`=31887;
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id`=31887;
SET @GUID := 43491;
SET @OGUID := 16964;
SET @NPC_ELM_BUNNY := 23837;
SET @NPC_HARKOA := 28401;
SET @NPC_KHUFU := 28479;
SET @NPC_QUETZLUN_PROPHET := 28671;
SET @NPC_QUETZLUN_SPIRIT := 28785;
SET @NPC_DRAINED_PROPHET := 28795;

DELETE FROM `spell_dbc` WHERE `Id`=25900;
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(25900,0,0,256,268435456,0,0,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,21,1,0,-1,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stun Self');

UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `guid`=97576;
DELETE FROM `creature` WHERE `guid`=@GUID;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(@GUID,@NPC_HARKOA,571,1,1,0,5746.506,-3608.833,387.1909,1.396263,300,0,0);

DELETE FROM `gameobject` WHERE `guid` IN (@OGUID+0,@OGUID+1,@OGUID+2,@OGUID+3,@OGUID+4,@OGUID+5,@OGUID+6,@OGUID+7,@OGUID+8,@OGUID+9);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID+0,190736,571,1,1,5335.713,-3770.941,371.7576,4.677484,0,0,-0.7193394,0.6946588,-30,255,0),
(@OGUID+1,190737,571,1,1,5329.674,-3770.804,371.3612,0.2617982,0,0,0.1305256,0.9914449,-30,255,0),
(@OGUID+2,190738,571,1,1,5332.682,-3770.142,371.5185,1.815142,0,0,0.7880106,0.6156617,-30,255,0),
(@OGUID+3,190738,571,1,1,5336.708,-3774.066,371.4286,4.415683,0,0,-0.8038568,0.5948228,-30,255,0),
(@OGUID+4,190737,571,1,1,5335.804,-3777.733,371.3452,2.565632,0,0,0.9588194,0.2840165,-30,255,0),
(@OGUID+5,190738,571,1,1,5711.15,-4361.727,385.8019,1.762782,0,0,0.7716246,0.6360782,-30,255,0),
(@OGUID+6,190737,571,1,1,5725.948,-4372.56,386.2328,0.122173,0,0,0.06104851,0.9981348,-30,255,0),
(@OGUID+7,190736,571,1,1,5707.201,-4371.69,385.8015,2.670348,0,0,0.9723692,0.2334484,-30,255,0),
(@OGUID+8,190737,571,1,1,5721.946,-4361.917,385.7987,1.151916,0,0,0.5446386,0.8386708,-30,255,0),
(@OGUID+9,190737,571,1,1,5717.053,-4378.755,385.8015,0.05235888,0,0,0.02617645,0.9996573,-30,255,0);

UPDATE `gameobject_template` SET `flags`=4 WHERE `entry` IN (188260,188262,188263,188345,188351,188461,188499,188518,188525,188530,188600,188601,188670,188691,190208,190223,190399,190534,190537,190540,190541,190542,190543,191780,191781,191782,191783);

UPDATE `creature_addon` SET `auras`='25900 51666 52485' WHERE `guid`=118591;
DELETE FROM `creature_addon` WHERE `guid`=@GUID;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@GUID,0,0,0,1,0,'25900 52483');

DELETE FROM `creature_template_addon` WHERE `entry`=@NPC_QUETZLUN_SPIRIT;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@NPC_QUETZLUN_SPIRIT,0,0,0,1,0,'51126 41408');

DELETE FROM `spell_area` WHERE `spell`=52351 AND `area`=4325;
DELETE FROM `spell_area` WHERE `spell`=52484 AND `area`=4323;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(52351,4325,12675,0,0,0,2,1),
(52484,4323,12685,0,0,0,2,1);

DELETE FROM `event_scripts` WHERE `id`=18858 AND `command` IN (9,10,15);
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(18858,0,9,@OGUID+5,30,0,0,0,0,0),
(18858,0,9,@OGUID+6,30,0,0,0,0,0),
(18858,0,9,@OGUID+7,30,0,0,0,0,0),
(18858,0,9,@OGUID+8,30,0,0,0,0,0),
(18858,0,9,@OGUID+9,30,0,0,0,0,0),
(18858,0,10,@NPC_ELM_BUNNY,30000,0,5711.149,-4361.718,387.6694,5.253441),
(18858,0,10,@NPC_ELM_BUNNY,30000,0,5726.004,-4372.459,387.9738,2.775074),
(18858,0,10,@NPC_ELM_BUNNY,30000,0,5707.188,-4371.667,387.4335,3.228859),
(18858,0,10,@NPC_ELM_BUNNY,30000,0,5721.946,-4361.917,387.8101,4.29351),
(18858,0,10,@NPC_ELM_BUNNY,30000,0,5717.041,-4378.735,387.6418,1.570796);

DELETE FROM `creature_text` WHERE `entry` IN (@NPC_HARKOA,@NPC_QUETZLUN_PROPHET,@NPC_QUETZLUN_SPIRIT);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@NPC_HARKOA,0,0,'$N, please come to me.  I''m here in Zim''Torga now.',15,0,100,0,0,0,'Har''koa'),
(@NPC_QUETZLUN_PROPHET,0,0,'What is this you pathetic, little worm? Come to die?',14,0,100,0,0,0,'Prophet of Quetz''lun'),
(@NPC_QUETZLUN_PROPHET,1,0,'I recognize your stench. You''re the one who stealthed by me on the back of that snow leopard runt!',14,0,100,0,0,0,'Prophet of Quetz''lun'),
(@NPC_QUETZLUN_PROPHET,2,0,'What? How is this possible?',14,0,100,0,0,0,'Prophet of Quetz''lun'),
(@NPC_QUETZLUN_PROPHET,3,0,'Wait... STOP! You can''t take back the power!!!',14,0,100,0,0,0,'Prophet of Quetz''lun'),
(@NPC_QUETZLUN_PROPHET,4,0,'NOOOOooooooooooooooooo!',14,0,100,0,0,0,'Prophet of Quetz''lun'),
(@NPC_QUETZLUN_SPIRIT,0,0,'TIME TO DIE, FOOL!',14,0,100,0,0,0,'Spirit of Quetz''lun'),
(@NPC_QUETZLUN_SPIRIT,1,0,'I''ve returned to invite you to my housewarming in the underworld!',14,0,100,0,0,7056,'Spirit of Quetz''lun'),
(@NPC_QUETZLUN_SPIRIT,2,0,'I''d say come along quietly, but we both know that''s not going to happen. My little friend here is going to ease your way into the afterlife.',14,0,100,0,0,0,'Spirit of Quetz''lun'),
(@NPC_QUETZLUN_SPIRIT,3,0,'Well done. I''ll see to it that my prophet enjoys his eternal stay with me.',14,0,100,0,0,0,'Spirit of Quetz''lun');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (52340,52381,52388);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=@NPC_ELM_BUNNY;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=@NPC_HARKOA;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,52340,0,0,31,0,3,@NPC_ELM_BUNNY,0,0,0,'','Spell Har''koa''s Spirit targets ELM General Purpose Bunny'),
(13,1,52381,0,0,31,0,3,@NPC_QUETZLUN_PROPHET,0,0,0,'','Spell Reclaim Power targets Quetz''lun''s Prophet'),
(13,1,52388,0,0,31,0,3,@NPC_ELM_BUNNY,0,0,0,'','Spell Ritual Bunny Channel targets ELM General Purpose Bunny'),
(22,1,@NPC_ELM_BUNNY,0,0,23,1,4325,0,0,0,0,'','SAI Elm General Purpose Bunny spellcast Ritual Bunny Channel if at Quetz''lun''s Altar'),
(22,14,@NPC_HARKOA,0,0,1,0,52485,0,0,0,0,'','SAI Har''koa custom gossip if player has aura See Har''koa at Zim''Torga');

UPDATE `creature_model_info` SET `bounding_radius`=2.38, `combat_reach`=10.5 WHERE `modelid`=25685;
UPDATE `creature_model_info` SET `bounding_radius`=0.4340275, `combat_reach`=1.875 WHERE `modelid`=27857;

UPDATE `creature_template` SET `gossip_menu_id`=9749, `unit_flags`=33536 WHERE `entry`=@NPC_HARKOA;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@NPC_KHUFU,@NPC_QUETZLUN_PROPHET,@NPC_DRAINED_PROPHET);
UPDATE `creature_template` SET `unit_flags`=33536, `AIName`='SmartAI' WHERE `entry`=@NPC_QUETZLUN_SPIRIT;

-- SmartAIs
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_ELM_BUNNY,@NPC_KHUFU,@NPC_QUETZLUN_PROPHET,@NPC_QUETZLUN_SPIRIT,@NPC_DRAINED_PROPHET) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@NPC_HARKOA AND `source_type`=0 AND `id` BETWEEN 2 AND 15;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_HARKOA*100,@NPC_QUETZLUN_PROPHET*100,@NPC_QUETZLUN_SPIRIT*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_ELM_BUNNY,0,0,1,54,0,100,0,0,0,0,0,11,52388,0,0,0,0,0,1,0,0,0,0,0,0,0, 'ELM General Purpose Bunny - Just summoned - Spellcast Ritual Bunny Channel'),
(@NPC_ELM_BUNNY,0,1,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@NPC_QUETZLUN_PROPHET,30,0,0,0,0,0, 'ELM General Purpose Bunny - Just summoned - Set data 0 1 Prophet of Quetz''lun'),

(@NPC_KHUFU,0,0,1,20,0,100,0,12685,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Khufu - On quest rewarded - Store targetlist'),
(@NPC_KHUFU,0,1,2,61,0,100,0,0,0,0,0,100,1,0,0,0,0,0,19,@NPC_HARKOA,100,0,0,0,0,0, 'Khufu - On quest rewarded - Send targetlist to Har''koa'),
(@NPC_KHUFU,0,2,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@NPC_HARKOA,100,0,0,0,0,0, 'Khufu - On quest rewarded - Set data 0 1 Har''koa'),

(@NPC_HARKOA,0,2,3,20,0,100,0,12684,0,0,0,70,30,0,0,0,0,0,14,@OGUID+0,190736,0,0,0,0,0, 'Har''koa - On quest rewarded - Spawn Underworld Fragment'),
(@NPC_HARKOA,0,3,4,61,0,100,0,0,0,0,0,70,30,0,0,0,0,0,14,@OGUID+1,190737,0,0,0,0,0, 'Har''koa - On quest rewarded - Spawn Underworld Fragment'),
(@NPC_HARKOA,0,4,5,61,0,100,0,0,0,0,0,70,30,0,0,0,0,0,14,@OGUID+2,190738,0,0,0,0,0, 'Har''koa - On quest rewarded - Spawn Underworld Fragment'),
(@NPC_HARKOA,0,5,6,61,0,100,0,0,0,0,0,70,30,0,0,0,0,0,14,@OGUID+3,190738,0,0,0,0,0, 'Har''koa - On quest rewarded - Spawn Underworld Fragment'),
(@NPC_HARKOA,0,6,7,61,0,100,0,0,0,0,0,70,30,0,0,0,0,0,14,@OGUID+4,190737,0,0,0,0,0, 'Har''koa - On quest rewarded - Spawn Underworld Fragment'),
(@NPC_HARKOA,0,7,8,61,0,100,0,0,0,0,0,12,@NPC_ELM_BUNNY,3,30000,0,0,0,8,0,0,0,5335.713,-3770.931,373.7013,3.926991, 'Har''koa - On quest rewarded - Spawn Elm General Purpose Bunny'),
(@NPC_HARKOA,0,8,9,61,0,100,0,0,0,0,0,12,@NPC_ELM_BUNNY,3,30000,0,0,0,8,0,0,0,5329.658,-3770.809,372.8022,4.433136, 'Har''koa - On quest rewarded - Spawn Elm General Purpose Bunny'),
(@NPC_HARKOA,0,9,10,61,0,100,0,0,0,0,0,12,@NPC_ELM_BUNNY,3,30000,0,0,0,8,0,0,0,5332.665,-3770.165,373.2305,4.08407, 'Har''koa - On quest rewarded - Spawn Elm General Purpose Bunny'),
(@NPC_HARKOA,0,10,11,61,0,100,0,0,0,0,0,12,@NPC_ELM_BUNNY,3,30000,0,0,0,8,0,0,0,5336.709,-3774.087,372.9049,0, 'Har''koa - On quest rewarded - Spawn Elm General Purpose Bunny'),
(@NPC_HARKOA,0,11,12,61,0,100,0,0,0,0,0,12,@NPC_ELM_BUNNY,3,30000,0,0,0,8,0,0,0,5335.774,-3777.741,373.3314,3.385939, 'Har''koa - On quest rewarded - Spawn Elm General Purpose Bunny'),
(@NPC_HARKOA,0,12,0,61,0,100,0,0,0,0,0,80,@NPC_HARKOA*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Har''koa - On quest rewarded - Run script'),
(@NPC_HARKOA,0,13,0,64,0,100,0,0,0,0,0,98,9687,13139,0,0,0,0,7,0,0,0,0,0,0,0, 'Har''koa - On gossip hello - Send custom gossip'),
(@NPC_HARKOA,0,14,15,38,0,100,0,0,1,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Har''koa - On data 0 1 set - Say line'),
(@NPC_HARKOA,0,15,0,61,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Har''koa - On data 0 1 set - Reset data'),

(@NPC_QUETZLUN_PROPHET,0,0,1,38,0,100,1,0,1,0,0,11,52353,0,0,0,0,0,21,50,0,0,0,0,0,0, 'Quetz''lun''s Prophet - On data 0 1 set - Spellcast Script Effect - Creature Capture GUID to Dot Variable'),
(@NPC_QUETZLUN_PROPHET,0,1,2,61,0,100,0,0,0,0,0,64,1,0,0,0,0,0,21,50,0,0,0,0,0,0, 'Quetz''lun''s Prophet - On data 0 1 set - Store targetlist'),
(@NPC_QUETZLUN_PROPHET,0,2,0,61,0,100,0,0,0,0,0,80,@NPC_QUETZLUN_PROPHET*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Quetz''lun''s Prophet - On data 0 1 set - Run script'),
(@NPC_QUETZLUN_PROPHET,0,3,4,6,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@NPC_QUETZLUN_SPIRIT,50,0,0,0,0,0, 'Quetz''lun''s Prophet - On death - Set data 0 1 Spirit of Quetz''lun'),
(@NPC_QUETZLUN_PROPHET,0,4,0,61,0,100,0,0,0,0,0,18,256|64,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Quetz''lun''s Prophet - On death - Set unit_flags IMMUNE_TO_PC and UNK_6'),

(@NPC_QUETZLUN_SPIRIT,0,0,1,54,0,100,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Quetz''lun''s Spirit - Just summoned - Spellcast Ethereal Teleport'),
(@NPC_QUETZLUN_SPIRIT,0,1,0,61,0,100,0,0,0,0,0,80,@NPC_QUETZLUN_SPIRIT*100,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Quetz''lun''s Spirit - Just summoned - Run script'),
(@NPC_QUETZLUN_SPIRIT,0,2,3,38,0,100,0,0,1,0,0,1,3,0,0,0,0,0,21,50,0,0,0,0,0,0, 'Quetz''lun''s Spirit - On data 0 1 set - Say line'),
(@NPC_QUETZLUN_SPIRIT,0,3,0,61,0,100,0,0,0,0,0,41,10000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Quetz''lun''s Spirit - On data 0 1 set - Despawn after 10 seconds'),

(@NPC_DRAINED_PROPHET,0,0,0,2,0,100,0,0,70,30000,30000,11,54601,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Drained Prophet - On health below 70% - Spellcast Serpent Form'),

(@NPC_HARKOA*100,9,0,0,0,0,100,0,18000,18000,0,0,11,52340,0,0,0,0,0,0,0,0,0,0,0,0,0, 'Har''koa script - Spellcast Har''koa''s Spirit'),

(@NPC_QUETZLUN_PROPHET*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Quetz''lun''s Prophet script 0 - Say line'),
(@NPC_QUETZLUN_PROPHET*100,9,1,0,0,0,100,0,5600,5600,0,0,1,1,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Quetz''lun''s Prophet script 0 - Say line'),
(@NPC_QUETZLUN_PROPHET*100,9,2,0,0,0,100,0,6200,6200,0,0,12,@NPC_QUETZLUN_SPIRIT,8,0,0,0,0,8,0,0,0,5716.019,-4371.387,385.8849,4.757225, 'Quetz''lun''s Prophet script 0 - Summon Quetz''lun''s Spirit'),
(@NPC_QUETZLUN_PROPHET*100,9,3,0,0,0,100,0,100,100,0,0,1,2,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Quetz''lun''s Prophet script 0 - Say line'),
(@NPC_QUETZLUN_PROPHET*100,9,4,0,0,0,100,0,15400,15400,0,0,1,3,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Quetz''lun''s Prophet script 0 - Say line'),
(@NPC_QUETZLUN_PROPHET*100,9,5,0,0,0,100,0,5000,5000,0,0,28,53143,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Quetz''lun''s Prophet script 0 - Remove aura Cosmetic Arcane Force Shield'),
(@NPC_QUETZLUN_PROPHET*100,9,6,0,0,0,100,0,100,100,0,0,1,4,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Quetz''lun''s Prophet script 0 - Say line'),
(@NPC_QUETZLUN_PROPHET*100,9,7,0,0,0,100,0,200,200,0,0,36,28795,1,0,0,0,0,1,0,0,0,0,0,0,0, 'Quetz''lun''s Prophet script 1 - Morph to Drained Prophet of Quetz''lun'),
(@NPC_QUETZLUN_PROPHET*100,9,8,0,0,0,100,0,0,0,0,0,19,256|64,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Quetz''lun''s Prophet script 1 - Remove unit_flags IMMUNE_TO_PC and UNK_6'),
(@NPC_QUETZLUN_PROPHET*100,9,9,0,0,0,100,0,0,0,0,0,11,52354,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Quetz''lun''s Prophet script 1 - Spellcast Script Effect - Creature Attack GUID from Dot Variable'),
(@NPC_QUETZLUN_PROPHET*100,9,10,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,12,1,0,0,0,0,0,0, 'Quetz''lun''s Prophet script 1 - Attack'),

(@NPC_QUETZLUN_SPIRIT*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,21,50,0,0,0,0,0,0, 'Quetz''lun''s Spirit script - Say line'),
(@NPC_QUETZLUN_SPIRIT*100,9,1,0,0,0,100,0,4800,4800,0,0,1,1,0,0,0,0,0,21,50,0,0,0,0,0,0, 'Quetz''lun''s Spirit script - Say line'),
(@NPC_QUETZLUN_SPIRIT*100,9,2,0,0,0,100,0,8200,8200,0,0,11,52381,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Quetz''lun''s Spirit script - Spellcast Reclaim Power'),
(@NPC_QUETZLUN_SPIRIT*100,9,3,0,0,0,100,0,100,100,0,0,1,2,0,0,0,0,0,21,50,0,0,0,0,0,0, 'Quetz''lun''s Spirit script - Say line');
ALTER TABLE `lfg_dungeon_rewards`
  DROP `firstMoneyVar`,
  DROP `firstXPVar`,
  DROP `otherMoneyVar`,
  DROP `otherXPVar`;

-- remove unused waypoint_scripts
DELETE FROM `waypoint_scripts` WHERE `id` IN (380,381,382,383,384);
DELETE FROM `db_script_string` WHERE `entry` IN (2000005237,2000005238,2000005239,2000005240,2000005241);

-- fix incorrect event 15 parameters for SAI:
UPDATE `smart_scripts` SET `event_param2`=0,`event_param3`=30 WHERE `entryorguid`=9450 AND `source_type`=0 AND `id`=11;
UPDATE `smart_scripts` SET `event_param2`=0,`event_param3`=10 WHERE `entryorguid`=11878 AND `source_type`=0 AND `id`=18;
UPDATE `smart_scripts` SET `event_param2`=0,`event_param3`=15 WHERE `entryorguid`=12339 AND `source_type`=0 AND `id`=4;

-- update horribad entries for Crimson Hand Blood Knight:
DELETE FROM `smart_scripts` WHERE `entryorguid`=20049;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(20049,0,0,0, 0,0,100,2,5000,5000,25000,50000,11,39077,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Crimson Hand Blood Knight - In Combat - Cast Hammer of Justice'),
(20049,0,1,0,12,0,100,2,20,20,15000,15000,11,37259,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Crimson Hand Blood Knight - On Target below 20% HP - Cast Hammer of Wrath'),
(20049,0,2,0,14,0,100,2,0,100,35000,35000,11,37257,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Crimson Hand Blood Knight - On Friendly Unit At 0 - 100% Health - Cast Flash of Light'),
(20049,0,3,0, 0,0,100,2,60000,60000,120000,160000,11,37257,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Crimson Hand Blood Knight - In Combat - Cast Flash of Light'),
(20049,0,4,0,14,0,100,2,50,20,40000,40000,11,37260,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Crimson Hand Blood Knight - On Friendly Unit below 50% HP - Cast Renew'),
(20049,0,5,0,15,0,100,2,0,0,15,0,11,39078,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Crimson Hand Blood Knight - On Friendly Unit in CC - Cast Cleanse');
DELETE FROM `spell_script_names` WHERE `spell_id`=26192;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(26192, 'spell_skeram_arcane_explosion');
DELETE FROM `trinity_string` WHERE `entry`=5035;
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES 
(5035, '%s calls for help!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
DELETE FROM `creature_text` WHERE `entry` IN (2287, 2706, 2719, 10828, 16357, 17210);
UPDATE `smart_scripts` SET `action_param2`=1 WHERE `action_type`=39 AND `entryorguid` IN (2287, 2706, 2719, 10828, 16357, 17210, 3987);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2287, 2719) AND `action_param1`=1 AND `action_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2706, 10828, 16357, 17210, 3987) AND `action_param1`=0 AND `action_type`=1;
DELETE FROM `creature_addon` WHERE `guid` IN
(106621, 106622, 106623, 106624, 106641, 101802, 101803, 126815, 126816, 
126817, 44002, 44003, 44004, 44005, 44006, 44010, 44011, 44012, 44013, 
44014, 44015, 44016, 44017, 44026, 44027, 44028, 44029, 44030, 44031, 
44032, 44033, 44034, 44035, 44036, 44037, 44038, 44039, 44041, 44042, 
44043, 44044, 44045, 44047, 44048, 44051, 44052, 44053, 44054, 44055, 
44056, 44057, 44058, 44077, 44080, 44081, 44082, 44083, 44084, 44085, 
44086, 44087, 44088, 44089, 44090, 44091, 44092, 44093, 44094, 44095, 
44096, 44097, 44098, 44099, 44100, 44101, 44102, 44103, 44104, 44105, 
44106, 44107, 44108, 44109, 44110, 44111, 44112, 44113, 44114, 44115, 
44116, 44117, 44118, 44119, 44120, 44121, 44122, 44123, 44124, 44125, 
44126, 44127, 44128, 44129, 44130, 44131, 44132, 44133, 44134, 44135, 
44136, 44137, 44138, 44139, 44141, 44142, 44143, 44174, 44176, 44178, 
44179, 44181, 6100, 6085, 6081, 6006, 5035, 5034, 4967, 4947, 4937, 
4936, 4926, 4925, 4924, 4923, 4922, 4921, 4918, 4917, 4916, 4910, 4909, 
4908, 4907, 4905, 4904, 4903, 4902, 4901, 4900, 4899, 4897, 4894, 4891, 
4890, 4887, 4830, 4828, 4473, 4463, 4462, 4460, 4459, 4453, 4416, 4415, 
4414, 4385, 4384, 4383, 4351, 4344, 4270, 4269, 4232, 4231, 34164, 
38060, 38692, 38700, 38715, 38716, 38722, 38726, 38727, 38728, 38729, 
38730, 38731, 38738, 38742, 38743, 38757, 38758, 38825, 38826, 38827, 
38830, 38833, 38835, 38838, 38841, 38850, 38852, 38862, 38872, 38914, 
40212, 42111, 42116, 42117, 92941, 92954, 92956, 92957, 92958, 92959, 
92960, 92961, 92962, 92964, 92967, 92971, 92972, 92973, 92974, 92975, 
92977, 92978, 92979, 92980, 92998, 92999, 93000, 93001, 93007, 93028, 
93029, 93030, 93031, 93034, 93035, 93059, 93106, 93186, 93188, 93196, 
93347, 93388, 93389, 93390, 93391, 93392, 93393, 93394, 93547, 93548, 
93551, 93604, 93606, 93607, 93608, 93609, 93611, 93616, 93620, 93681, 
93682, 93684, 93685, 93687, 93705, 93711, 93728, 127604, 127605, 127606, 
127607, 127608, 127609, 9377, 9372, 9371, 9209, 8258, 26183, 26182, 
26181, 26180, 26178, 26177, 26176, 26175, 26174, 26166, 26165, 26164, 
26159, 26158, 26128, 26127, 26126, 26122, 26107, 131798, 131799, 131800, 
131802, 9412, 9405, 9401, 9399, 9397, 9394, 9393, 9390, 9384, 9378, 
9339, 9324, 9291, 9290, 9288, 9255, 9237, 9191, 9190, 9185, 9145, 9129, 
9113, 9112, 9102, 9099, 9084, 9083, 9069, 9065, 9035, 9034, 9000, 8937, 
8850, 31380, 31378, 31377, 31376, 31373, 31370, 31366, 31359, 31356, 
31354, 30994, 33889, 33914, 33920, 33930, 33995, 34003, 34005, 34006, 
44232, 44291, 44293, 52881, 53860, 53861, 53959, 54045, 54047, 54051, 
54110, 54111, 54124, 54438, 89590, 89592, 89593, 89595, 89614, 89615, 
89616, 89617, 89618, 89662, 89665, 89674, 89677, 89678, 89679, 89680, 
89852, 90030, 90219, 90351, 90358, 29653, 29654, 29656, 29657, 29659, 
29773, 30022, 30030, 30066, 30067, 30073, 30076, 30078, 30079, 3974, 
3972, 3970, 3963, 3960, 99406, 99407, 99408, 99409, 99410, 99411, 99412, 
99413, 99414, 99415, 99416, 99417, 99418, 99419, 99420, 99421, 99422, 
99423, 99426, 99427, 10035, 9990, 9989, 9909, 9901, 9902, 9894, 56730, 
56732, 56751, 56776, 56793, 56795, 91258, 91260, 91262, 91264, 91269, 
91271, 91287, 91289, 13259, 12074, 12071, 12062, 12061, 12060, 12044, 
12043, 12041, 12040, 11760, 11759, 11757, 11754, 30860, 30858, 30857, 
30856, 18625, 18624, 7892, 86179, 86224, 86227, 13080, 13076, 13073, 
13070, 13067, 13065, 13064, 13063, 13062, 13060, 13059, 13058, 13057, 
13056, 13055, 13054, 12290, 12194, 12193, 12192, 12169, 7527, 7509, 
7508, 7507, 7505, 6646, 6645, 6644, 6643, 6642, 6568, 4706, 4705, 4702, 
4701, 3392, 125821, 125822, 125823, 95059, 95120, 95189, 95271, 95397, 
95483, 95540, 95600, 95685, 95753, 95790, 95869, 95894, 96013, 96050, 
96095, 96179, 96232, 96327, 96393, 96422, 96510, 96561, 46161, 46162, 
46163, 27128, 27127, 27126, 27125, 27124, 27123, 52959, 52962, 52963, 
52965, 52967, 54260, 54261, 54263, 92070, 137555, 137556, 3878, 3863, 
3783, 3775, 3774, 3772, 3766, 3760, 3727, 3716, 3713, 3712, 3693, 3691, 
3680, 2833, 2773, 2768, 2767, 2691, 50900, 50901, 50902, 50903, 50904, 
50905, 50906, 50907, 50908, 50909, 50910, 50911, 50912, 50913, 50914, 
50915, 50916, 50917, 50918, 50919, 50920, 50921, 50922, 50923, 50924, 
50925, 50926, 50927, 50928, 50929, 50930, 50931, 50932, 50933, 50934, 
50935, 50936, 50937, 28382, 28383, 28384, 28385, 28387, 28388, 28391, 
28392, 28393, 28395, 28396, 28401, 32932, 32931, 32930, 32929, 32928, 
32927, 32926, 126863, 126864, 122312, 122313, 122314, 31297, 31288, 
31189, 30971, 30794, 30745, 30706, 30480, 23543, 31678, 31682, 31685, 
31688, 31709, 31711, 31714, 125032, 125033, 125034, 125035, 125036, 
125037, 125038, 125039, 125040, 125041, 125042, 125043, 125044, 125045, 
125046, 125047, 125048, 125049, 125050, 125051, 125052, 125053, 125054, 
125055, 125056, 125057, 125058, 125059, 125060, 125061, 125062, 125063, 
125064, 125065, 125066, 125067, 125068, 46128, 46129, 46130, 46131, 
46132, 49350, 49287, 49256, 49200, 49679, 51596, 105487, 105488, 105489, 
105495, 131055, 131056, 131058, 131059, 131063, 131064, 14868, 14871, 
14872, 14797, 9284, 9283, 9282, 9281, 9279, 9277, 9276, 9273, 9272, 
9177, 9176, 9175, 9174, 9173, 9171, 9168, 9167, 9166, 9142, 9141, 9140, 
9139, 9137, 9136, 9135, 9134, 9132, 9130, 9121, 9072, 9070, 9030, 9028, 
9026, 9022, 9018, 9017, 9013, 9012, 9004, 95086, 95136, 95235, 95285, 
95342, 95380, 95488, 95559, 95625, 95680, 95744, 95817, 95887, 95932, 
96003, 96070, 96142, 96204, 96211, 96331, 96398, 96436, 96504, 96530, 
27001, 27000, 26999, 26998, 26997, 26996, 26995, 12395, 12248, 12237, 
6466, 3913, 3883, 3854, 3804, 2720, 2718, 17675, 18167, 26124, 26160, 
26163, 26366, 27493, 27771, 24444, 24443, 24442, 24441, 48928, 91295, 
91296, 91302, 91365, 2505, 2493, 2480, 2474, 2432, 2391, 1969, 1858, 
1682, 1677, 1339, 777, 776, 11099, 10601, 10598, 11065, 11064, 11063, 
11062, 11057, 11043, 11042, 11041, 11040, 10930, 10935, 10937, 10927, 
10909, 9756, 9687, 9685, 9683, 9603, 12042, 12039, 10629, 10621, 10590, 
10586, 10488, 10487, 10342, 10266, 10257, 10025, 10022, 10018, 9748, 
9747, 9710, 47252, 45930, 45929, 45923, 45914, 45913, 45912, 45894, 
45887, 47805, 47811, 47813, 47824, 47825, 47829, 90685, 90690, 90691, 
90696, 90697, 90847, 90850, 90901, 90903, 90904, 91037, 91054, 91058, 
91059, 91077, 91084, 91088, 91089, 91097, 91099, 90983, 90977, 91251, 
91252, 91253, 22740, 22739, 22738, 22737, 22736, 22735, 22734, 22733, 
22732, 22731, 22730, 22729, 22728, 22727, 22726, 22725, 22724, 22723, 
39146, 39180, 39190, 39192, 39214, 39258, 39259, 39267, 39290, 39338, 
39342, 39367, 39368, 39369, 39370, 39371, 39373, 39377, 39392, 39396, 
39479, 39481, 39482, 39483, 39485, 39515, 39518, 39522, 39524, 39529, 
39611, 39612, 39616, 39646, 39647, 39689, 39705, 40745, 40749, 40754, 
40760, 40761, 40762, 40766, 40770, 9537, 9532, 23355, 33239, 33238, 
33237, 33236, 33235, 33234, 33233, 33232, 104355, 104370, 104371, 
104372, 104384, 104385, 104396, 104397, 104398, 104400, 104401, 104402, 
104403, 104404, 104405, 104406, 104407, 104408, 104409, 104410, 104411, 
104412, 104413, 104414, 104415, 104416, 104417, 104418, 104419, 104420, 
104421, 104422, 104423, 104424, 104425, 104426, 104427, 104428, 104429, 
104430, 104431, 104432, 104433, 104434, 104435, 104436, 104437, 104438, 
104439, 104440, 104441, 104442, 104443, 104444, 104445, 104446, 104447, 
104448, 104449, 104450, 104451, 104452, 104453, 104454, 104455, 104456, 
104457, 104458, 104459, 104460, 104461, 104462, 104463, 104464, 104465, 
104466, 104467, 104468, 104469, 104470, 104471, 104472, 104473, 104474, 
104475, 104476, 104477, 104478, 104479, 104480, 104481, 104482, 104483, 
104484, 104485, 104486, 104487, 104488, 104489, 104490, 104491, 104492, 
2204, 2201, 2193, 1423, 1420, 1418, 1314, 97460, 97461, 97462, 97465, 
97471, 97483, 97484, 97485, 97488, 97490, 97491, 97492, 97493, 97494, 
97495, 97496, 97497, 97498, 97499, 97500, 97501, 97502, 46804, 46807, 
94748, 94749, 94750, 94751, 94752, 94753, 94754, 94755, 94756, 94757, 
94758, 94759, 94760, 94761, 94762, 94763, 94764, 94765, 94766, 94767, 
94768, 94769, 94770, 94771, 94772, 94773, 94774, 94775, 94776, 100411, 
100412, 100413, 100414, 100415, 9067, 8794, 8728, 8692, 8691, 8385, 
8383, 8374, 8373, 8372, 8323, 17946, 17945, 17943, 17791, 17790, 17789, 
17788, 17787, 17786, 17785, 18060, 18061, 18062, 18154, 18156, 18157, 
18158, 18159, 18516, 18517, 127449, 127451, 105662, 105695, 105696, 
105699, 105700, 105702, 105712, 105713, 105714, 105715, 105716, 105718, 
105719, 105720, 105721, 105722, 105723, 105735, 105738, 105745, 105746, 
105747, 105748, 105749, 105752, 105755, 105758, 105759, 105760, 105761, 
105762, 105764, 105765, 105766, 105767, 105772, 105781, 105784, 105785, 
105786, 105787, 105788, 105809, 105815, 105816, 105817, 105827, 105829, 
105835, 105839, 105862, 105863, 105864, 105865, 105866, 18609, 18608, 
18606, 18605, 121544, 121545, 121546, 121547, 121548, 121549, 121550, 
121555, 121556, 121557, 121558, 121563, 121564, 121565, 121566, 121567, 
121568, 121569, 121570, 121571, 121572, 121573, 121574, 121575, 121576, 
121577, 121578, 121579, 121580, 132012, 132013, 97401, 97417, 97418, 
97419, 43045, 43046, 43047, 43048, 43049, 43050, 43051, 43052, 43053, 
43054, 43055, 43056, 43057, 43058, 43059, 43060, 43061, 43062, 43063, 
43064, 43065, 43066, 43067, 43068, 137550, 137551, 137552, 137553, 
32102, 32107, 122648, 122649, 122650, 122651, 122652, 122653, 122654, 
122655, 122656, 122657, 27928, 27927, 27926, 27925, 27924, 98175, 98176, 
98185, 98186, 98187, 31795, 31794, 31793, 31792, 31791, 31790, 31789, 
31788, 31787, 31786, 31785, 122268, 122269, 85018, 85017, 85016, 85015, 
85014, 93430, 93434, 93438, 93505, 93618, 93621, 93622, 93623, 93626, 
93658, 93690, 5980, 4992, 4989, 4987, 4986, 4898, 4405, 4400, 4398, 
4396, 4395, 4392, 4391, 4389, 4388, 4386, 131913, 131914, 131915, 
131916, 131917, 131918, 131919, 17955, 17948, 17947, 17898, 17896, 
17835, 18069, 18088, 18089, 18091, 18140, 18171, 18172, 18178, 18184, 
18185, 18261, 19026, 19031, 19048, 19050, 42911, 42912, 42913, 31912, 
31803, 31802, 31801, 31800, 31798, 39486, 39716, 40176, 40370, 30869, 
18626, 7893, 100736, 100737, 100741, 100749, 100750, 100767, 100771, 
100772, 100773, 18097, 18222, 18227, 18228, 18230, 18231, 18330, 18331, 
18338, 18339, 18344, 18345, 18346, 18417, 18418, 18419, 18420, 18421, 
18422, 18423, 18425, 18472, 19186, 24618, 24619, 24713, 25728, 25729, 
26024, 26025, 26026, 26027, 26029, 26040, 26041, 26042, 26043, 26044, 
26046, 26047, 26048, 26049, 26050, 26123, 27799, 45211, 45212, 124443, 
124448, 16252, 16250, 16247, 16238, 18401, 18690, 18693, 124495, 124496, 
50770, 50771, 50772, 50773, 50774, 39122, 39164, 39296, 39299, 39301, 
39490, 39491, 39493, 39494, 39496, 39497, 39498, 39499, 39500, 39501, 
39506, 39510, 39570, 39608, 39684, 39696, 39697, 39709, 40179, 40330, 
40369, 40590, 40620, 40778, 40779, 40780, 40781, 40782, 40786, 40787, 
40788, 40790, 40792, 40794, 40801, 40807, 3926, 3925, 3844, 3843, 3842, 
3841, 3840, 2787, 32895, 32894, 32893, 32892, 32891, 32890, 32889, 
32888, 32887, 32886, 32885, 32883, 125812, 125813, 125814, 106342, 
106343, 106345, 106346, 106347, 106348, 106349, 106353, 38935, 38939, 
38959, 41824, 22661, 22660, 22659, 22658, 22657, 22655, 22653, 22652, 
22651, 22648, 22647, 22646, 22645, 22644, 22643, 22642, 22641, 22640, 
22639, 22638, 22637, 22636, 22634, 22633, 22632, 22631, 22630, 22629, 
22628, 22627, 22626, 22625, 22624, 22623, 22622, 22621, 22620, 22619, 
22618, 22617, 22616, 22615, 22614, 22613, 22612, 22611, 22610, 22609, 
22608, 22607, 22606, 22605, 22604, 22603, 22602, 22601, 22599, 22598, 
22597, 22595, 22594, 22593, 22592, 22591, 22590, 22589, 22588, 22587, 
22586, 22585, 22584, 22583, 22582, 22581, 22580, 22579, 22578, 22577, 
22576, 22575, 22574, 22573, 22572, 22571, 22570, 22569, 22568, 22567, 
22566, 22565, 22564, 22562, 22561, 22560, 22559, 22558, 22557, 22556, 
22555, 22889, 22888, 22887, 22886, 22885, 22884, 22883, 22882, 22881, 
22880, 22879, 22878, 22877, 22876, 22875, 22874, 22873, 22872, 22871, 
22870, 22869, 22868, 22867, 22866, 22865, 22864, 22863, 22862, 22861, 
22860, 22859, 22858, 22857, 22856, 22855, 22854, 22853, 22852, 22851, 
26000, 25999, 25998, 14744, 14712, 14698, 14697, 14694, 14693, 14691, 
14686, 14685, 14680, 14674, 13350, 11933, 11932, 11931, 11930, 11928, 
11927, 11926, 41473, 41474, 41475, 41476, 41477, 41478, 41479, 41480, 
41481, 41482, 41483, 41484, 41485, 41486, 41487, 41488, 41489, 41490, 
41491, 41492, 41493, 41494, 41495, 41496, 41497, 41498, 41499, 41500, 
41501, 41502, 41503, 41504, 41505, 41506, 41507, 41508, 41509, 41510, 
41511, 41512, 41513, 41514, 41515, 41516, 56738, 56739, 89564, 89565, 
89568, 89571, 89989, 89990, 89991, 89995, 90366, 5961, 5958, 5176, 5168, 
5160, 5140, 5041, 5040, 5039, 5038, 4973, 4944, 4941, 31394, 31374, 
31248, 31242, 31238, 31234, 31233, 31232, 31231, 31230, 31229, 31227, 
31225, 31223, 31219, 31204, 31190, 31180, 31163, 31162, 31161, 31158, 
31153, 31150, 31134, 31133, 31130, 31127, 31123, 31120, 31092, 31091, 
31090, 31040, 30952, 30918, 30916, 30906, 30904, 30903, 30900, 30899, 
30898, 30897, 30887, 30882, 30875, 30847, 30845, 30788, 30784, 30738, 
30733, 30642, 30614, 30564, 30556, 30548, 30547, 30546, 30545, 30534, 
30533, 30514, 30513, 30491, 30461, 30460, 25159, 25156, 25154, 31471, 
31520, 31527, 31528, 31534, 31535, 31538, 31540, 31543, 31544, 31546, 
31547, 31548, 31550, 31551, 31634, 31670, 31672, 31673, 33782, 33871, 
33872, 33873, 33875, 33882, 33883, 33885, 33892, 5539, 5374, 5297, 5296, 
4637, 4636, 4634, 4633, 4631, 3295, 3289, 3288, 137599, 137600, 137601, 
137602, 137603, 137604, 96802, 96804, 28364, 27792, 27768, 27730, 33509, 
33510, 33517, 39395, 39400, 39426, 39427, 39428, 39429, 39430, 39433, 
39434, 39435, 39436, 39530, 39531, 39553, 39555, 39556, 39557, 39642, 
39643, 39686, 39701, 39703, 40368, 40416, 40420, 40423, 40425, 40426, 
40434, 40435, 40436, 40437, 40447, 40512, 14880, 14881, 15756, 15754, 
15749, 15747, 15746, 15736, 15731, 15728, 15726, 15710, 15691, 15685, 
15684, 15681, 15500, 15477, 15473, 15384, 15357, 126802, 126803, 5373, 
5372, 5301, 5299, 5298, 5295, 5294, 5293, 4635, 4632, 3296, 3294, 3293, 
3292, 3291, 3287, 46628, 46624, 46622, 48092, 48093, 48169, 48171, 
90739, 90741, 90742, 90745, 90884, 90886, 90890, 91010, 91043, 91044, 
91046, 91047, 91050, 91051, 91052, 91064, 91065, 91066, 91067, 91068, 
91069, 5549, 5548, 5314, 5313, 5312, 4648, 4647, 4641, 4640, 3316, 3315, 
3314, 3309, 3308, 3307, 121229, 121230, 121231, 121232, 121233, 121234, 
121235, 121236, 121237, 121238, 121239, 121240, 131166, 131167, 131168, 
131169, 131170, 131171, 131172, 131173, 133225, 133227, 88217, 88218, 
88219, 88220, 88221, 88222, 12812, 12811, 23897, 23896, 23895, 23894, 
23893, 23892, 23891, 23890, 23889, 23888, 23887, 23886, 23885, 23884, 
23883, 23882, 23881, 23880, 23879, 23878, 23877, 23876, 23875, 23874, 
23873, 23872, 23871, 95850, 95851, 95857, 95926, 95953, 96024, 96042, 
96062, 96063, 96065, 96068, 96073, 96075, 96078, 96103, 96107, 96117, 
96119, 3701, 2967, 2813, 99691, 99692, 99697, 99698, 99699, 99700, 
99705, 99706, 99714, 99715, 102688, 102689, 102690, 102691, 102692, 
37292, 37293, 37295, 37296, 37297, 37298, 37299, 37300, 37301, 37302, 
37303, 37304, 37305, 37306, 37307, 37308, 37309, 37310, 37311, 48783, 
48779, 48778, 48959, 48960, 48966, 91324, 27021, 27020, 27019, 27018, 
27017, 27016, 27015, 27014, 27013, 27012, 27011, 137485, 137486, 137487, 
137488, 16440, 16441, 16442, 29388, 29387, 29386, 29385, 29383, 29382, 
29381, 29380, 29379, 29378, 29377, 29376, 29375, 29374, 29373, 29372, 
29371, 31352, 31319, 31135, 31132, 31064, 31039, 30941, 30839, 30768, 
30623, 30619, 30436, 30435, 18643, 8447, 8445, 31556, 31558, 31559, 
31669, 13915, 13914, 13913, 13912, 13911, 13910, 13909, 13908, 32645, 
32644, 32643, 32642, 32641, 32640, 32639, 32638, 32637, 32636, 32635, 
32634, 32633, 32632, 32631, 32096, 32097, 32099, 32100, 40339, 28744, 
28743, 28742, 28741, 28740, 28739, 28738, 28737, 28736, 28735, 28734, 
28733, 28732, 28731, 28730, 28729, 28727, 28726, 28725, 28724, 89460, 
89462, 89933, 89935, 89937, 90091, 90146, 90382, 90398, 90400, 25995, 
25994, 25993, 25992, 25991, 25990, 25989, 25988, 25987, 25986, 25985, 
25984, 25983, 25982, 25981, 25980, 25979, 25978, 25977, 25976, 25975, 
25974, 25973, 25972, 25970, 25969, 25968, 25967, 25966, 25965, 25964, 
25963, 25962, 25961, 25960, 25959, 25958, 25957, 25956, 25955, 25954, 
25953, 25952, 25951, 25950, 25949, 50108, 50109, 50110, 50111, 50112, 
50113, 50114, 50115, 50116, 50117, 50118, 50119, 50120, 50121, 50122, 
50123, 50124, 50125, 50126, 50127, 50128, 50129, 50130, 50131, 50132, 
50133, 50134, 50135, 50136, 50137, 50138, 50139, 50140, 50141, 91245, 
91246, 2514, 2509, 2498, 2487, 2484, 2376, 2340, 2178, 2177, 2174, 2172, 
1931, 1924, 1118, 1113, 1090, 1086, 1083, 1082, 1074, 1071, 1067, 1066, 
1063, 1060, 994, 990, 836, 94777, 94778, 94779, 94780, 94781, 94782, 
94783, 94784, 94785, 94786, 94787, 94788, 94789, 94790, 94791, 94792, 
94793, 94794, 94795, 94796, 94797, 94798, 94799, 94800, 42164, 42165, 
42166, 42167, 42168, 42169, 42170, 42171, 42172, 42173, 42174, 42175, 
42176, 42177, 42178, 42179, 89699, 89706, 89708, 89709, 89711, 89712, 
89716, 89721, 89723, 89724, 89725, 89727, 89730, 89731, 89732, 89733, 
89734, 89737, 89738, 89739, 89741, 89744, 89745, 89746, 89747, 89748, 
89753, 89754, 89755, 89758, 89759, 89761, 89762, 89763, 89764, 90240, 
90247, 90249, 90250, 90254, 90258, 90259, 90260, 90262, 90264, 90266, 
33698, 43914, 43915, 44436, 44570, 44591, 44594, 44602, 44619, 44620, 
44625, 44673, 44676, 44677, 44679, 44683, 44685, 44781, 44782, 44784, 
44785, 45192, 45193, 45194, 45199, 17990, 17985, 17980, 17917, 17857, 
17856, 17855, 17826, 17814, 17812, 17809, 17798, 17796, 17782, 17780, 
17741, 19102, 38285, 136739, 136740, 136741, 136742, 136743, 136744, 
136745, 136746, 136747, 136748, 136749, 136750, 136751, 136752, 136753, 
136754, 136755, 136756, 136757, 136758, 136759, 125031, 125069, 48890, 
48892, 52550, 52552, 66986, 66987, 81710, 81744, 84019, 84637, 84641, 
84642, 84834, 85882, 86042, 86140, 86141, 89903, 90200, 90203, 90302, 
90314, 101346, 101347, 101348, 101357, 101358, 101359, 101360, 101361, 
101362, 101363, 101364, 101370, 34235, 34234, 34233, 34232, 101424, 
101425, 101426, 101427, 101428, 101429, 101430, 101431, 101433, 101434, 
101435, 101436, 101437, 101438, 101439, 101440, 101441, 101442, 101447, 
101448, 101449, 101450, 101451, 101452, 101453, 101454, 101455, 101456, 
101457, 101458, 101459, 101460, 101461, 101462, 101463, 101464, 101465, 
101466, 101467, 101468, 101469, 101470, 101471, 101472, 101473, 101474, 
101475, 101476, 101477, 101478, 101479, 101480, 101481, 101482, 101483, 
101484, 101485, 101486, 101487, 101488, 101489, 101490, 101491, 101492, 
101493, 101494, 101495, 101496, 101497, 32380, 32379, 32378, 38793, 
38796, 40237, 41704, 41771, 41797, 41798, 41800, 135718, 135719, 135720, 
135721, 135722, 135723, 135724, 135725, 135726, 93032, 93033, 93038, 
93039, 93041, 93042, 93044, 93187, 93212, 93214, 93216, 93217, 93218, 
93219, 93221, 93232, 93242, 93572, 93577, 93585, 93589, 93599, 93693, 
93698, 93703, 93704, 93719, 93722, 123120, 123150, 123155, 123158, 
123159, 123160, 123161, 123162, 123163, 123164, 123165, 123166, 123167, 
123168, 123169, 123170, 123171, 123172, 123173, 123174, 123175, 123176, 
123177, 123178, 123179, 123180, 123181, 123182, 123183, 123184, 123185, 
123186, 123187, 123188, 123189, 123190, 123191, 123192, 123193, 123194, 
123195, 27582, 27581, 27580, 27579, 86232, 86241, 45113, 45115, 45117, 
45123, 101136, 101303, 28071, 28070, 28069, 28068, 28067, 28066, 28065, 
28064, 28063, 28062, 28061, 28060, 28059, 28058, 28057, 28056, 28055, 
28054, 28053, 28052, 28051, 28050, 28049, 28048, 28047, 28046, 28045, 
28044, 28043, 28042, 28041, 28040, 28039, 28038, 28037, 28036, 28035, 
28034, 28033, 28032, 28031, 28030, 28029, 28028, 28027, 28026, 28025, 
28024, 28023, 28022, 28021, 28020, 28019, 28018, 28017, 28016, 28015, 
28014, 28013, 28012, 28011, 28010, 28009, 28008, 28007, 28006, 28005, 
28004, 28003, 28002, 28001, 28000, 27999, 27998, 27997, 27996, 27995, 
27994, 27993, 27992, 27991, 27990, 27989, 27988, 27987, 27986, 27985, 
27984, 27983, 27982, 27981, 27980, 27979, 27978, 27977, 27976, 27975, 
27974, 137515, 137516, 137518, 137519, 38932, 38937, 42126, 42577, 
42808, 42812, 42813, 13948, 13947, 13946, 13945, 13944, 13943, 13942, 
13941, 13940, 13939, 13938, 13937, 13936, 13935, 1614, 1611, 1608, 1604, 
1601, 1600, 1571, 1454, 1453, 1451, 1450, 1444, 1441, 1438, 15254, 
15253, 15252, 15251, 15250, 15249, 15248, 15247, 15245, 15244, 15243, 
15242, 15241, 15240, 15239, 15238, 15237, 15236, 15235, 15234, 15233, 
15232, 15231, 15230, 15229, 15228, 15227, 15214, 15213, 15212, 15211, 
15210, 15209, 15208, 15207, 15206, 15205, 15204, 15203, 15202, 15201, 
15200, 15199, 15198, 15197, 15196, 15195, 15193, 15192, 15191, 15190, 
128515, 128516, 34145, 34262, 34583, 35228, 38686, 38693, 38725, 38836, 
38840, 38955, 135785, 135786, 39885, 39886, 39887, 39918, 39919, 39920, 
39921, 39922, 39923, 125760, 128458, 6576, 6575, 6574, 3412, 3411, 3410, 
3409, 3408, 3407, 3406, 3405, 3404, 27523, 27519, 27516, 27515, 27507, 
27506, 30095, 30096, 30097, 21731, 21730, 21729, 21728, 21727, 21726, 
21725, 21724, 21723, 21722, 21721, 21720, 21719, 21718, 21717, 21716, 
21715, 21714, 21713, 21712, 21711, 21710, 21709, 23848, 23847, 23846, 
23845, 23844, 23843, 23842, 23841, 23840, 23839, 23838, 23837, 23836, 
23835, 23834, 23833, 23832, 23831, 23830, 16140, 16139, 16137, 16124, 
16118, 16116, 16115, 16114, 15826, 15808, 15646, 15645, 15636, 15632, 
15627, 15622, 15618, 15602, 15447, 15383, 29048, 29047, 29046, 29045, 
29044, 29043, 29042, 29041, 29040, 29039, 29038, 29037, 29036, 29035, 
29034, 29033, 29032, 29031, 29030, 29029, 29028, 29027, 29026, 29025, 
29024, 29023, 29022, 29021, 29020, 29019, 29018, 29017, 29016, 29015, 
29014, 29013, 29012, 29011, 29010, 29009, 29008, 29007, 29006, 29005, 
29004, 29003, 29002, 29001, 29000, 28999, 28998, 28997, 28996, 28995, 
28994, 28993, 28992, 49650, 49609, 49396, 49395, 49382, 49381, 49372, 
49371, 49370, 107406, 107409, 107418, 107419, 107420, 107421, 72213, 
72212, 21679, 21678, 21677, 99448, 99489, 99491, 99553, 99573, 99574, 
99598, 99633, 32139, 32138, 22362, 22361, 22360, 22359, 22358, 22357, 
22356, 22355, 22354, 22353, 22352, 22351, 22350, 22349, 22348, 22347, 
22346, 22345, 22344, 22343, 22342, 22341, 22340, 22339, 22331, 22330, 
22329, 22328, 22327, 22326, 22325, 22324, 22323, 22322, 22321, 22320, 
22319, 22317, 22316, 22315, 22314, 22313, 22312, 22311, 22310, 22309, 
22306, 22305, 22304, 22303, 22302, 22301, 22300, 22299, 22298, 22297, 
22296, 22295, 22294, 22293, 22292, 22291, 22290, 22289, 22288, 22287, 
22286, 22285, 22284, 22283, 22282, 22281, 22280, 22279, 22272, 22271, 
22270, 22269, 22268, 22267, 22266, 22265, 22264, 22263, 22262, 22261, 
22260, 22259, 22258, 22257, 22256, 22255, 22254, 22253, 22252, 22251, 
22250, 22249, 22248, 22247, 45691, 45692, 45693, 45694, 45695, 45696, 
45697, 45698, 45699, 45700, 45701, 45702, 45703, 45711, 45713, 45714, 
45715, 45716, 45717, 45720, 45961, 45962, 45963, 45964, 45965, 45966, 
45967, 45968, 45969, 45970, 45971, 45972, 45973, 45974, 45975, 45976, 
45977, 45978, 45979, 45980, 45981, 45982, 45983, 45984, 45985, 45986, 
45987, 45988, 45989, 45990, 45991, 45992, 45993, 45994, 45995, 45996, 
45997, 45998, 45999, 46000, 46001, 46002, 46003, 46004, 46005, 46006, 
46007, 46008, 136250, 136251, 136252, 18161, 18253, 18254, 18255, 18256, 
10980, 10978, 10975, 10973, 10971, 10967, 10963, 10959, 10958, 10940, 
10942, 10943, 10944, 10945, 10946, 10947, 10948, 10950, 10953, 10954, 
10727, 10721, 10718, 10713, 10329, 9954, 9951, 9942, 9842, 9840, 9726, 
9725, 9724, 9723, 9703, 127445, 127446, 127447, 127448, 34401, 34400, 
34399, 34398, 34397, 34396, 34395, 34394, 34393, 34392, 34391, 34390, 
34389, 34388, 34387, 34386, 34385, 34384, 34383, 34382, 34381, 34380, 
34379, 34378, 34377, 34376, 34375, 34374, 34373, 34372, 34371, 34370, 
34369, 34368, 34367, 34366, 34365, 34364, 34363, 34362, 34361, 34360, 
28423, 28424, 28425, 28426, 28429, 28430, 29909, 29910, 29913, 30043, 
30046, 30048, 30050, 30051, 30057, 32078, 32081, 37883, 37885, 37888, 
37889, 37927, 37928, 38020, 38021, 38023, 38024, 38029, 38266, 38268, 
38270, 38272, 38343, 38344, 38346, 38348, 38350, 38376, 38379, 38382, 
38383, 38390, 38490, 38912, 38973, 40477, 40480, 40513, 41743, 41744, 
41746, 41747, 41748, 41761, 41858, 41860, 41861, 41863, 41865, 41907, 
41909, 41912, 41921, 41923, 41924, 41925, 41926, 41928, 41929, 41931, 
41932, 41951, 41977, 41978, 41989, 41990, 41991, 41992, 41993, 41994, 
41995, 42022, 42027, 42032, 42033, 42055, 42056, 42057, 42058, 42077, 
42078, 42083, 42084, 42085, 42086, 42087, 42097, 42099, 42100, 42101, 
42103, 42131, 42134, 42135, 44060, 44147, 44223, 44274, 44275, 44520, 
44536, 44540, 44550, 44551, 44563, 44585, 44587, 44595, 44645, 44674, 
44681, 44789, 44790, 44793, 44800, 44872, 44973, 44978, 44984, 45061, 
45083, 45121, 45122, 45129, 27918, 27917, 27916, 27915, 27914, 27913, 
27912, 27911, 136602, 136603, 97656, 97658, 97659, 31368, 31357, 31355, 
30998, 30997, 30995, 30993, 33891, 33894, 33903, 33993, 34002, 34004, 
29807, 29808, 41973, 44533, 44669, 44706, 44711, 44717, 44718, 44724, 
44728, 44806, 44815, 44816, 44825, 44829, 44835, 44844, 11127, 11066, 
10812, 10811, 10810, 10809, 10790, 10789, 10788, 10714, 10637, 10608, 
10607, 10599, 10199, 10012, 9870, 9805, 9763, 92368, 92372, 92540, 
92844, 45126, 45175, 36150, 36151, 36152, 36153, 36154, 36155, 36159, 
36160, 36161, 36162, 36163, 6843, 5743, 5657, 5656, 5654, 5647, 5646, 
5645, 5643, 5635, 5631, 5623, 5622, 5621, 5620, 5618, 5607, 5605, 5604, 
5602, 5599, 5577, 5576, 5573, 5570, 5433, 5422, 5421, 5419, 5417, 5416, 
5406, 5404, 5403, 5402, 5400, 5398, 5397, 5386, 5383, 5382, 5381, 5380, 
5379, 5348, 5347, 5345, 5343, 5342, 5261, 5260, 5258, 5257, 5256, 5255, 
5254, 5253, 4591, 4590, 4589, 4586, 3661, 3085, 2989, 2746, 2740, 2656, 
35877, 35878, 35879, 35880, 35881, 35882, 29920, 29921, 29922, 29924, 
29925, 29926, 29927, 37901, 37902, 37904, 37907, 37908, 37909, 38357, 
38360, 38364, 41296, 41297, 41299, 41300, 41673, 42646, 42665, 43662, 
44285, 44481, 44482, 44638, 44639, 44640, 44646, 44654, 44804, 44807, 
41684, 41685, 41686, 41687, 41688, 41689, 41690, 41691, 41692, 41693, 
41694, 41695, 41696, 41697, 41698, 41699, 41700, 41701, 41702, 41709, 
41710, 26106, 26105, 26104, 26103, 26102, 26101, 26100, 26099, 26098, 
26097, 26096, 26095, 26094, 26093, 26092, 26091, 26090, 26089, 26088, 
26087, 26086, 26085, 26084, 26083, 26082, 26080, 26079, 26078, 26077, 
26076, 26075, 26074, 26073, 26072, 11195, 11196, 11192, 11191, 10847, 
10649, 10647, 10638, 10594, 10588, 10585, 10583, 10578, 10484, 10483, 
10000, 126079, 126078, 126077, 126076, 126075, 95060, 95125, 95236, 
95274, 95330, 95409, 95497, 95556, 95618, 95688, 95706, 95814, 95880, 
95903, 96009, 96041, 96124, 96184, 96240, 96323, 96391, 96435, 96524, 
96578, 30352, 30350, 30343, 30276, 30275, 30273, 30272, 30271, 30270, 
30158, 31991, 31996, 32000, 33474, 33475, 33479, 14897, 14799, 15729, 
15725, 15718, 15656, 15652, 15648, 15630, 15624, 15621, 15387, 31350, 
31305, 31193, 31191, 31188, 31187, 31070, 31068, 31024, 30942, 30479, 
30440, 30439, 30438, 22654, 22650, 22649, 22635, 22600, 22596, 22563, 
8451, 8450, 8449, 31446, 6470, 6469, 125761, 128459, 130375, 130376, 
130377, 130378, 130379, 2899, 2854, 2674, 3935, 3933, 3927, 3924, 3923, 
3922, 3921, 3846, 3845, 3834, 2878, 9403, 9402, 9400, 9398, 9396, 9392, 
9389, 9385, 9383, 9287, 9189, 9180, 9179, 9158, 9148, 9127, 9126, 9125, 
9124, 9114, 9101, 9059, 9039, 9033, 8851, 8818, 69692, 85505, 87040, 
90965, 91824, 91830, 91951, 91967, 91985, 91986, 91988, 92014, 92150, 
92237, 92477, 92489, 92501, 92510, 92567, 92569, 92571, 92585, 92591, 
92607, 92637, 92726, 92729, 92743, 92772, 92799, 104738, 104739, 104740, 
104741, 1645, 1643, 1641, 1367, 1188, 1136, 837, 833, 765, 658, 11114, 
11112, 11107, 11106, 10612, 9986, 9984, 9982, 9980, 9981, 9979, 9875, 
9876, 9838, 9821, 9819, 9818, 9816, 9769, 9766, 9765, 9764, 9762, 9662, 
9660, 9659, 9656, 9652, 9621, 9620, 9618, 9616, 9614, 9615, 9509, 9507, 
9506, 8182, 8170, 7874, 7875, 7873, 7871, 7849, 7839, 7711, 7701, 7686, 
7620, 7609, 7411, 7122, 7102, 7097, 7096, 7081, 7079, 7077, 7055, 7002, 
6991, 6943, 6941, 6935, 6934, 126074, 126073, 126072, 126071, 126070, 
126069, 126068, 126067, 126066, 126065, 51721, 51722, 51723, 51724, 
41139, 41140, 41141, 41142, 41143, 41144, 41145, 41146, 41147, 41148, 
41149, 41150, 41151, 41152, 41153, 41154, 41155, 41156, 41157, 41158, 
41159, 41160, 41161, 41162, 41163, 41164, 41165, 41166, 41167, 41168, 
41169, 41170, 41171, 41172, 43325, 43326, 43327, 43328, 43329, 43330, 
43331, 43332, 43333, 43334, 43335, 43336, 43337, 43338, 43339, 43340, 
43341, 43342, 43343, 43344, 43345, 12856, 12855, 48861, 48860, 48859, 
48858, 17682, 17680, 17850, 17834, 17832, 17794, 17774, 17771, 18016, 
17702, 17696, 31447, 31448, 31250, 31249, 31175, 31172, 31109, 31106, 
31105, 31104, 31103, 31101, 31100, 31085, 31031, 31030, 31027, 31026, 
31025, 30996, 30992, 30991, 30990, 30989, 30988, 30987, 30937, 30927, 
30807, 30727, 30721, 30720, 30719, 30624, 31453, 31456, 31455, 31451, 
31449, 31468, 31588, 31591, 31656, 31658, 31663, 31703, 31705, 33768, 
33771, 33772, 33776, 33781, 33783, 33784, 33786, 33791, 33857, 33864, 
33867, 33911, 128085, 128086, 128087, 128088, 128089, 128090, 49654, 
49653, 49652, 49651, 49573, 49421, 49403, 49402, 49398, 49397, 49390, 
49389, 49388, 49387, 49385, 49384, 49383, 49376, 49375, 49374, 49373, 
49366, 49365, 49364, 49363, 49362, 49361, 49359, 39403, 40372, 40404, 
128054, 128055, 128056, 128057, 128058, 128059, 128060, 122917, 122918, 
122919, 122920, 122921, 122922, 122923, 122924, 122925, 122926, 122927, 
122928, 122929, 122930, 122931, 122932, 122933, 122934, 122935, 122936, 
122937, 122938, 122939, 122940, 122941, 122942, 122943, 122944, 122945, 
122946, 122947, 122948, 122949, 122950, 122951, 122952, 36566, 36567, 
36568, 36569, 36570, 36571, 36572, 36573, 36574, 36575, 36576, 36577, 
36578, 36579, 36580, 36581, 36582, 36583, 36584, 36585, 36586, 36587, 
36588, 36589, 36590, 36591, 36592, 36593, 36594, 36595, 36596, 36597, 
36598, 36599, 36600, 36601, 36602, 36603, 36604, 36605, 36606, 36607, 
36608, 36609, 36610, 36611, 36612, 36613, 36614, 36615, 36616, 36617, 
36618, 36619, 36620, 36621, 36622, 36623, 36624, 14879, 15761, 15758, 
15757, 15753, 15752, 15750, 15748, 15744, 15743, 15742, 15741, 15734, 
15732, 15724, 15720, 15711, 15690, 15689, 15687, 15683, 15609, 15608, 
15497, 15481, 15479, 15474, 15412, 15411, 15374, 15373, 27606, 27605, 
27604, 27603, 27602, 27601, 132464, 132465, 132466, 132467, 132468, 
132469, 132470, 128119, 128120, 128121, 128122, 128123, 128124, 17969, 
17953, 17931, 17914, 17899, 17617, 17883, 17817, 17816, 17807, 17804, 
17803, 17802, 17783, 17768, 17767, 17765, 17763, 17762, 17731, 17730, 
17729, 17722, 17720, 17718, 17717, 17714, 18021, 18022, 18023, 18011, 
18128, 18210, 18211, 18212, 18214, 18216, 19041, 19051, 19053, 19055, 
19056, 19062, 24066, 24065, 24064, 24063, 24062, 24061, 24060, 50035, 
50036, 50037, 50038, 50039, 50040, 50041, 50042, 50043, 50044, 50045, 
50046, 50047, 50564, 50600, 50601, 50602, 50603, 50604, 50605, 50606, 
23705, 23704, 23703, 23702, 23701, 23700, 23699, 23698, 23697, 23696, 
23695, 23694, 23693, 23692, 23691, 23690, 23689, 23688, 23687, 23686, 
23685, 23684, 23683, 23682, 23681, 23680, 23679, 23678, 23677, 23676, 
23675, 23674, 23673, 23672, 23671, 23670, 23669, 23668, 23667, 23666, 
23665, 23664, 23663, 23662, 23661, 23660, 23659, 23658, 23657, 23656, 
23655, 23654, 23653, 23652, 23651, 23650, 23649, 23648, 23647, 23646, 
23645, 23644, 23643, 23642, 23641, 23640, 23639, 23638, 23637, 23636, 
23635, 23634, 23633, 23632, 23631, 23630, 23629, 23628, 23627, 23626, 
23625, 23624, 23623, 23622, 23621, 23620, 23619, 23618, 23617, 23616, 
23615, 23614, 23613, 23612, 23611, 22779, 22778, 22777, 22776, 22775, 
22774, 22773, 22772, 22771, 22770, 22769, 22768, 22767, 22766, 22765, 
22764, 22763, 22762, 22761, 22760, 22759, 22758, 22757, 22756, 22755, 
22754, 22753, 22752, 22751, 22750, 22749, 22748, 22747, 22746, 22745, 
22744, 22743, 22742, 22741, 2515, 2513, 2512, 2504, 2502, 2494, 2492, 
2485, 2478, 2434, 2386, 2369, 2339, 2322, 2317, 2268, 2245, 1857, 1854, 
1837, 1832, 1824, 1610, 1463, 801, 798, 797, 796, 779, 84786, 84954, 
91872, 91899, 91907, 91942, 91944, 91950, 92003, 92069, 92077, 92086, 
92088, 92092, 92093, 92095, 92153, 92158, 92167, 92169, 92170, 92208, 
92209, 92215, 92218, 92230, 92231, 92251, 92270, 92281, 92285, 40684, 
40685, 40687, 40689, 40690, 40696, 40702, 40709, 40710, 40711, 40717, 
40720, 40726, 40731, 40732, 7809, 7681, 7680, 7464, 7406, 7405, 7311, 
7303, 7198, 7184, 7132, 7117, 7112, 7108, 7104, 7099, 7095, 7093, 7092, 
7091, 7036, 7016, 7010, 6986, 6983, 6980, 6979, 6978, 6977, 6954, 6948, 
6947, 6937, 6936, 6926, 6924, 6920, 6915, 6911, 6910, 6900, 6888, 
126434, 126435, 126436, 126437, 126438, 126439, 106200, 106201, 30393, 
30389, 30387, 30308, 30306, 30303, 30301, 30296, 30257, 30251, 30205, 
30204, 30198, 30192, 30122, 31982, 33430, 33431, 33432, 33442, 33443, 
33444, 33446, 33486, 33488, 33495, 136057, 136058, 50062, 50063, 50064, 
50065, 50066, 50067, 50068, 50069, 50070, 50071, 50072, 50073, 126958, 
126959, 126960, 126961, 126962, 126963, 126964, 126965, 126966, 100597, 
100623, 100624, 100625, 100626, 100627, 100628, 100629, 100630, 100631, 
100632, 100633, 100634, 100635, 100636, 100637, 100638, 100639, 100640, 
100641, 100642, 100643, 100644, 100645, 100646, 100647, 100648, 100649, 
100650, 100651, 100652, 100653, 100654, 100655, 100656, 100657, 6731, 
6750, 6736, 6746, 6741, 6742, 7455, 7454, 7770, 8166, 8168, 8309, 8765, 
8766, 10197, 10211, 10212, 10213, 10215, 31808, 31810, 31811, 31830, 
23087, 23086, 23085, 23084, 23083, 23082, 23081, 23080, 23079, 6502, 
6501, 1994, 1950, 1943, 1942, 1842, 1703, 1690, 1674, 1646, 1412, 1401, 
1357, 1327, 1288, 1280, 1248, 1244, 1243, 1187, 1183, 1180, 1179, 1177, 
1172, 1170, 1169, 1164, 1154, 1153, 1124, 1119, 909, 899, 852, 829, 828, 
811, 810, 770, 616, 392, 121092, 121099, 121100, 121101, 121102, 121103, 
121104, 121105, 121106, 121107, 121108, 121109, 121110, 121111, 39723, 
39732, 40167, 40311, 40630, 40644, 40648, 40662, 40666, 12204, 12190, 
12184, 7343, 6436, 6434, 6433, 18251, 18334, 19154, 26161, 26162, 27351, 
27391, 27561, 27562, 20574, 20573, 20572, 20571, 20570, 20569, 20568, 
20567, 20566, 20565, 20564, 20563, 123281, 123282, 123283, 123284, 
123285, 123286, 123287, 123288, 123289, 123290, 123291, 72402, 72349, 
92830, 92832, 92833, 131880, 131881, 131882, 131883, 131884, 131885, 
131886, 131887, 131888, 4042, 4041, 4040, 4036, 4035, 4033, 4030, 4025, 
4017, 4015, 4014, 4013, 4009, 4008, 4007, 4006, 4001, 3968, 3965, 3961, 
27552, 27543, 27541, 27540, 27539, 27537, 27534, 29652, 29655, 29658, 
30068, 30069, 30074, 30075, 30077, 30080, 30108, 30112, 33501, 33525, 
33526, 33531, 33533, 21548, 21547, 21546, 100416, 100418, 100419, 
100420, 27296, 27295, 27294, 27293, 27292, 27291, 6760, 7546, 7547, 
7548, 7549, 7550, 7551, 7553, 7587, 7588, 7596, 7741, 7765, 8757, 8758, 
8760, 8910, 8923, 9674, 10089, 10157, 10162, 10163, 10258, 10261, 13324, 
13328, 13329, 13330, 13334, 13368, 14704, 31818, 31820, 35039, 35038, 
35037, 35036, 35035, 35034, 35033, 35032, 35031, 35030, 35029, 35028, 
35027, 35026, 35025, 35024, 35023, 35022, 35021, 35020, 35019, 35018, 
35017, 35016, 35015, 35014, 35013, 35012, 35011, 35010, 35009, 35008, 
35007, 35006, 102901, 102902, 102904, 102905, 102906, 15065, 15064, 
15063, 15062, 15061, 15060, 15059, 15058, 15057, 15056, 15055, 15054, 
15053, 15052, 15051, 15050, 15049, 15048, 15047, 15046, 15045, 15044, 
15043, 15042, 15041, 15040, 15039, 15038, 15037, 15036, 15035, 15034, 
15032, 133531, 133532, 133533, 133534, 133535, 133536, 133537, 133539, 
133540, 133541, 133542, 133543, 133544, 133545, 133546, 133547, 133548, 
133549, 133550, 133551, 133552, 133553, 133554, 133555, 133556, 133557, 
133558, 133559, 133560, 133561, 133562, 133564, 133565, 133566, 133567, 
133568, 133569, 133570, 133571, 133572, 133574, 133576, 133582, 133584, 
133586, 133587, 133589, 133590, 133591, 133592, 133593, 133594, 133595, 
133596, 133597, 2610, 2602, 2591, 2582, 2555, 2550, 2213, 2159, 2157, 
2063, 2055, 2048, 1932, 1923, 1920, 1916, 1914, 1912, 1873, 1872, 1870, 
1714, 1707, 1704, 1702, 1701, 1698, 1688, 1685, 1684, 1680, 1664, 1662, 
1659, 1648, 1379, 1356, 1355, 1353, 1351, 1346, 1336, 1329, 1296, 1295, 
1294, 1292, 1285, 1281, 1227, 1108, 804, 45313, 45318, 45320, 46289, 
46294, 47570, 47605, 47618, 47637, 48180, 48183, 48187, 48445, 48446, 
52639, 133494, 133495, 133496, 133497, 133498, 133499, 133500, 133501, 
133502, 45608, 45609, 45611, 45612, 45613, 45614, 45615, 45616, 45617, 
45618, 45619, 45620, 45621, 45622, 45623, 45624, 45625, 45626, 45627, 
45628, 45629, 45630, 45631, 45632, 45633, 45634, 45635, 45636, 45637, 
45638, 45639, 45640, 45641, 45642, 45643, 45644, 45645, 45646, 45647, 
45648, 45649, 45650, 45651, 45652, 45653, 45654, 45655, 45656, 45657, 
45658, 45659, 45660, 45661, 45662, 45663, 45664, 45665, 45666, 45667, 
45668, 45669, 45670, 45671, 45672, 45673, 45674, 45675, 45676, 45677, 
45678, 45679, 45680, 45681, 45682, 45683, 45684, 45685, 45686, 45687, 
45688, 45689, 45690, 33504, 33535, 33544, 33549, 95078, 95135, 95230, 
95266, 95323, 95373, 95480, 95624, 95670, 95722, 95726, 95803, 95833, 
95905, 95996, 96058, 96140, 96190, 96213, 96313, 96346, 96427, 96502, 
96533, 106964, 106966, 106967, 106968, 106969, 106970, 106971, 106972, 
106973, 106974, 106975, 106976, 106977, 106978, 106979, 106980, 106981, 
106982, 106983, 106984, 106985, 106986, 106987, 106988, 106989, 106990, 
106991, 106992, 106993, 106994, 106995, 106996, 106997, 106998, 106999, 
107000, 107001, 107002, 107003, 107004, 107005, 107006, 107007, 107008, 
107009, 107010, 107011, 107012, 107013, 72220, 72219, 33293, 33292, 
33291, 33290, 33289, 33288, 33287, 33286, 33285, 38665, 38666, 2346, 
2242, 2034, 2033, 2003, 1998, 1933, 1860, 1859, 1853, 1852, 1850, 1849, 
1845, 136426, 136427, 136428, 136429, 136430, 1429, 1428, 45314, 45316, 
45317, 45321, 46290, 46292, 46308, 47113, 47114, 47116, 47119, 47120, 
47597, 47636, 48178, 48181, 48182, 48430, 48431, 48432, 48443, 48444, 
52638, 98342, 98343, 98347, 98349, 98350, 98351, 98352, 98353, 98354, 
98355, 89501, 89503, 89504, 89505, 89507, 89508, 89511, 89512, 89513, 
89518, 89519, 89955, 89960, 89961, 89963, 89968, 89969, 89972, 89974, 
89975, 90105, 90106, 90107, 90108, 90112, 90113, 90114, 90148, 136455, 
136456, 136457, 136458, 136459, 136460, 136461, 136462, 136463, 136464, 
136465, 136466, 136467, 136468, 136469, 136470, 2994, 2993, 2883, 2882, 
2796, 2794, 2793, 2792, 2741, 2739, 2657, 2654, 2653, 2650, 86321, 
86327, 20869, 20868, 20867, 20866, 20865, 20864, 20863, 20860, 20859, 
20858, 20857, 20856, 20855, 24504, 24503, 24502, 24501, 24500, 24499, 
24498, 24497, 24496, 24495, 24494, 24493, 24492, 24491, 24490, 24489, 
24488, 24487, 24486, 24485, 24484, 24483, 24482, 24481, 24480, 24479, 
24478, 24477, 24476, 24475, 24474, 24473, 24472, 24471, 24470, 24469, 
24468, 24467, 24466, 24465, 24464, 24463, 24462, 24461, 24460, 24459, 
24458, 24457, 24456, 24455, 43355, 43356, 43357, 43358, 43359, 43360, 
43361, 43362, 43363, 43364, 43365, 43366, 43367, 43368, 43369, 43370, 
43371, 43372, 43373, 43374, 43375, 43376, 43377, 43378, 43379, 43380, 
43381, 43382, 43383, 43384, 43385, 43386, 43387, 43388, 43389, 43390, 
43391, 43392, 43393, 43394, 43395, 43396, 43397, 43398, 43399, 43400, 
43401, 43402, 43403, 43404, 43405, 43406, 43407, 43408, 43409, 43410, 
43411, 43412, 43413, 43414, 43415, 43416, 43417, 43418, 43419, 43420, 
43421, 43423, 43430, 43431, 43432, 43433, 43434, 43435, 43436, 43437, 
43442, 43449, 43450, 43451, 43452, 43453, 43454, 43455, 43615, 43616, 
43617, 43618, 43619, 43620, 43621, 43622, 43623, 43624, 43625, 43626, 
43627, 43628, 43631, 43632, 43633, 43634, 43635, 43636, 43637, 43638, 
43639, 50802, 50803, 50804, 50805, 50806, 50807, 50808, 50809, 50810, 
50811, 50812, 50813, 50814, 50815, 50816, 50817, 50818, 50819, 50820, 
50821, 50822, 50823, 50824, 50825, 50826, 50827, 50828, 50829, 50830, 
50831, 50832, 50833, 50834, 50835, 50836, 50837, 50838, 50839, 50840, 
50841, 50842, 50843, 50844, 50845, 50846, 50847, 50848, 50849, 50850, 
50851, 50852, 50853, 50854, 50855, 50856, 50857, 50858, 50859, 50860, 
50861, 50862, 50863, 50864, 50865, 50866, 50867, 50868, 50869, 50870, 
50871, 50872, 50873, 50874, 50875, 50876, 50877, 50878, 50879, 50880, 
50881, 50882, 50883, 50884, 50885, 50886, 50887, 50888, 50889, 50890, 
50891, 50892, 50893, 50894, 50895, 50896, 50897, 50898, 50899, 121785, 
121787, 121789, 121793, 121795, 121806, 121809, 121816, 121832, 121833, 
121834, 121835, 121836, 121837, 121838, 121839, 121840, 121841, 121842, 
121843, 121844, 2186, 2182, 2166, 2162, 2156, 2154, 23770, 23769, 
105536, 105541, 105542, 105543, 105544, 105545, 105546, 105547, 105548, 
105549, 105550, 105551, 105552, 105553, 105554, 105555, 105556, 105557, 
105558, 105559, 105560, 105561, 105563, 105564, 105565, 105566, 105567, 
105568, 105569, 105570, 105571, 105572, 105573, 105574, 105575, 105576, 
105577, 105578, 105579, 105580, 105581, 105582, 105583, 105584, 105585, 
105586, 105587, 105588, 105589, 105590, 105591, 105592, 105593, 105594, 
105595, 105596, 105597, 105598, 105599, 105600, 105601, 105602, 105603, 
105604, 105605, 28368, 27794, 27555, 27554, 30062, 38037, 38394, 38395, 
44302, 44357, 44428, 44431, 44438, 44441, 44508, 44513, 99365, 99366, 
99367, 107170, 107171, 107172, 107175, 122778, 122779, 2688, 37599, 
38202, 38667, 38681, 38682, 38690, 38699, 38748, 38749, 38751, 38767, 
42123, 42643, 42801, 42826, 42831, 42836, 42837, 42849, 42851, 42856, 
42860, 43424, 43429, 43444, 43447, 43597, 43599, 43601, 43603, 43606, 
43608, 43609, 43610, 43611, 43613, 43629, 43630, 43657, 43663, 43701, 
43709, 43737, 43743, 43773, 43776, 43778, 44172, 35288, 35287, 35286, 
35285, 35284, 35283, 35282, 35281, 35280, 35279, 35278, 35277, 35276, 
35275, 35274, 35273, 35272, 35271, 35270, 35269, 35268, 35267, 35266, 
35265, 35264, 35289, 35290, 35291, 35292, 35293, 35294, 89425, 89426, 
89427, 89428, 89429, 89430, 89431, 89433, 89434, 89435, 107082, 107083, 
107084, 107085, 107086, 107087, 107088, 107089, 107090, 107092, 107093, 
107094, 107095, 107096, 107097, 107098, 107099, 107100, 107101, 107102, 
107111, 27922, 27921, 27920, 27919, 18066, 18067, 18092, 18127, 18416, 
18470, 19132, 19135, 85034, 85033, 85032, 85031, 85030, 85029, 132937, 
132938, 132939, 99481, 99568, 99569, 99570, 99599, 99685, 99686, 10977, 
10976, 10974, 10970, 10969, 10966, 10965, 10964, 10962, 10961, 10960, 
10957, 10949, 10951, 10952, 10955, 10009, 122404, 122405, 122406, 
122407, 122408, 122409, 122410, 122411, 122412, 122413, 122414, 122415, 
122416, 122417, 122418, 5552, 5551, 5550, 5311, 5310, 4651, 4650, 4649, 
4644, 4643, 4642, 3313, 3312, 3306, 3305, 122660, 122661, 122662, 
122663, 122664, 122665, 122666, 122667, 122668, 122669, 122670, 45419, 
45420, 45421, 45422, 26978, 26977, 26975, 125869, 128577, 16938, 16924, 
16876, 16873, 16862, 16860, 16815, 16791, 16728, 16718, 13077, 13047, 
13038, 13037, 13025, 12976, 12974, 12973, 12966, 12965, 12960, 12952, 
12394, 12393, 12391, 12388, 12385, 12262, 12213, 12212, 12211, 12208, 
12207, 12203, 12201, 12189, 12181, 12178, 11239, 11030, 11029, 11014, 
10377, 10376, 10375, 10374, 10373, 10372, 10371, 8550, 8549, 8548, 8547, 
8546, 8545, 7981, 7980, 7979, 7977, 7976, 7975, 7974, 7491, 7490, 7488, 
7487, 7484, 7482, 6634, 6633, 6632, 4691, 4690, 4689, 4688, 42817, 
42822, 31425, 31398, 31345, 31342, 31340, 31181, 31178, 31084, 31078, 
31073, 31062, 31061, 31060, 31059, 31057, 31056, 31008, 31007, 30907, 
30901, 30821, 31530, 31560, 31562, 31564, 31573, 33766, 33767, 33827, 
33839, 33846, 33854, 33861, 33863, 40975, 40976, 40977, 40978, 40979, 
123878, 123879, 123880, 123881, 123882, 123883, 123884, 123885, 123886, 
123887, 123888, 123889, 123890, 123891, 123892, 123893, 123894, 123895, 
123896, 123897, 123898, 123899, 123900, 123901, 123902, 123903, 123904, 
123905, 123906, 123907, 123908, 123909, 123910, 123911, 123912, 123913, 
123914, 123915, 123916, 123917, 123918, 123919, 123920, 123921, 48904, 
48900, 48849, 48842, 48841, 49004, 49006, 49008, 91341, 91342, 91344, 
91345, 91378, 91380, 41644, 41645, 41646, 41647, 41648, 41649, 41650, 
41651, 41652, 41653, 41656, 41658, 41659, 28439, 29923, 29928, 32027, 
37899, 37900, 37903, 37905, 37906, 37910, 37911, 37912, 38252, 38253, 
38254, 38275, 38281, 38282, 38358, 38359, 38361, 38362, 38363, 38365, 
38366, 38445, 38447, 39003, 39005, 41298, 41301, 41302, 41668, 41672, 
41676, 41849, 41870, 41871, 41880, 41954, 42184, 43425, 43614, 43668, 
44280, 44480, 44487, 44642, 44643, 44657, 44658, 44799, 44809, 44822, 
44834, 44853, 32692, 34158, 35230, 35251, 35252, 35253, 37376, 37590, 
37591, 38684, 38685, 38687, 38689, 38691, 38694, 38719, 38720, 38754, 
38760, 38762, 38763, 38764, 38765, 38766, 38873, 10848, 10485, 10250, 
102741, 102745, 50643, 50644, 50645, 50646, 50647, 50648, 50649, 50650, 
50651, 50652, 50653, 50654, 50655, 50656, 50657, 50658, 50659, 50660, 
50661, 50662, 50663, 50664, 50665, 50666, 50667, 50668, 50669, 50670, 
50671, 50672, 50673, 50674, 50675, 50676, 50677, 50678, 50679, 50680, 
50681, 50682, 50683, 50684, 50685, 50686, 50687, 50688, 50689, 50690, 
50691, 50692, 50693, 50694, 50695, 50696, 50697, 50698, 50699, 50700, 
50701, 50702, 50703, 50704, 50705, 50706, 50707, 50708, 50709, 14777, 
12005, 12003, 11529, 11528, 11521, 11520, 11456, 11455, 11454, 11450, 
11449, 11448, 11447, 11446, 11443, 11441, 11440, 11438, 11434, 11412, 
11408, 11407, 11402, 11401, 11399, 11398, 18262, 18263, 18264, 18265, 
18273, 18274, 18275, 18276, 5595, 5594, 5593, 5592, 5591, 5590, 107021, 
107022, 107023, 107029, 107030, 107031, 107032, 107049, 130277, 130278, 
130279, 130280, 130281, 130282, 130283, 95854, 95858, 95925, 95945, 
95949, 95965, 95981, 95988, 95989, 96153, 96235, 96246, 96247, 96250, 
96251, 96252, 96253, 96254, 96255, 96267, 96268, 107323, 107324, 107325, 
107326, 107327, 107328, 88171, 88172, 88173, 88174, 88175, 88176, 88177, 
88178, 88179, 88180, 88181, 88182, 88183, 88184, 88185, 88186, 88187, 
88188, 88189, 88190, 88191, 88192, 88193, 88194, 88195, 88196, 88197, 
88198, 88199, 88200, 88201, 88202, 88203, 88204, 88205, 23411, 23410, 
1573, 1572, 1569, 1568, 1567, 1566, 1480, 1476, 1472, 1471, 1470, 1469, 
1468, 1324, 36959, 36960, 36961, 36962, 36963, 36964, 36965, 36966, 
36967, 36968, 36969, 36970, 6724, 18433, 18442, 18453, 18454, 18459, 
20705, 54052, 54053, 54054, 54055, 54056, 54066, 54067, 54068, 54069, 
54070, 54071, 54072, 54073, 54074, 54075, 54076, 54077, 12390, 12364, 
12362, 12354, 12350, 12349, 12348, 12347, 12342, 12338, 12331, 12308, 
12304, 12293, 12292, 12291, 12288, 12266, 10209, 10206, 8411, 8410, 
8409, 7627, 7262, 7261, 4774, 4773, 4772, 101032, 101036, 101037, 
101038, 101039, 101040, 101041, 101042, 101098, 101099, 101100, 101101, 
101102, 101103, 101104, 101105, 101106, 91640, 91656, 91666, 91670, 
91674, 128747, 128748, 128749, 21640, 21639, 21638, 21637, 21636, 21635, 
21634, 21633, 21632, 21631, 21630, 21629, 21628, 21627, 21626, 21625, 
21624, 21623, 21622, 21621, 21620, 21619, 21618, 21617, 21616, 21615, 
21614, 21613, 21612, 21611, 21610, 21609, 21608, 21607, 21606, 21605, 
21604, 21603, 21602, 21601, 21600, 21599, 21598, 21597, 21596, 21595, 
85075, 85076, 85077, 85082, 85083, 1947, 1665, 1312, 1237, 1115, 1070, 
133231, 133232, 133233, 133234, 133235, 133236, 133237, 133238, 133239, 
44266, 44284, 44446, 44454, 44460, 44461, 44475, 44476, 44613, 44615, 
44661, 44662, 44663, 44665, 44666, 44682, 44794, 44795, 44796, 31194, 
31186, 31185, 31131, 31066, 31037, 31035, 31034, 31028, 31022, 31006, 
30944, 30940, 30884, 30792, 30767, 30753, 30751, 30618, 30478, 30441, 
30437, 23034, 22656, 8448, 8446, 31561, 31563, 27010, 27009, 27008, 
27007, 27006, 27005, 27004, 27003, 27002, 137524, 137525, 137526, 
137527, 29087, 29086, 29085, 29084, 29083, 29082, 29081, 17663, 17905, 
18220, 18221, 18238, 18310, 18354, 18355, 18405, 18407, 18409, 19007, 
106879, 106919, 12964, 12934, 12282, 12247, 12246, 12245, 12244, 12243, 
12238, 12231, 10422, 10410, 10260, 7644, 7277, 4791, 33550, 33558, 
33559, 33563, 33577, 33588, 33589, 33593, 44158, 44159, 44391, 47579, 
53894, 53899, 53900, 53901, 53902, 53903, 53904, 24329, 24328, 24327, 
24326, 24325, 24324, 51665, 51666, 51667, 51668, 51669, 51670, 51671, 
51672, 2482, 2479, 2476, 2404, 2402, 2381, 2373, 2348, 2336, 2332, 2002, 
1996, 1993, 1992, 1991, 1990, 1989, 1987, 1985, 1983, 1979, 1977, 1975, 
1970, 1967, 1965, 1962, 1959, 1955, 1949, 1944, 1917, 1911, 1909, 1907, 
1904, 1902, 1871, 1867, 1843, 1335, 1240, 1181, 20735, 20734, 20733, 
20732, 20731, 20730, 20729, 20728, 20727, 20726, 20725, 20724, 20723, 
20722, 20721, 135955, 135956, 9855, 9853, 54036, 54764, 69681, 91857, 
91860, 91861, 91864, 92212, 92214, 92217, 92219, 5464, 5371, 5300, 4638, 
3290, 100259, 100260, 100261, 100262, 100263, 100264, 100265, 100266, 
100267, 100268, 35908, 35909, 35910, 35911, 35912, 35913, 35914, 35915, 
35916, 35917, 132411, 132412, 132413, 132414, 132415, 132416, 132417, 
132418, 132419, 132420, 132421, 132422, 132423, 132424, 132425, 132426, 
132427, 103264, 103265, 103266, 103267, 103268, 103269, 103270, 103271, 
104536, 104537, 104538, 104539, 104540, 104541, 104542, 104543, 104544, 
104545, 104546, 104547, 104548, 104549, 104550, 104551, 104552, 104553, 
104554, 104555, 104556, 104557, 104558, 104559, 104560, 104561, 104562, 
104563, 104564, 104565, 104566, 104567, 104568, 104569, 104570, 104571, 
104572, 104573, 104574, 104575, 104576, 104577, 104578, 122791, 122793, 
122795, 122796, 122797, 122798, 122800, 122801, 122805, 122806, 122807, 
122808, 122809, 122810, 122811, 122812, 122813, 122814, 122815, 122820, 
122821, 122822, 122823, 122824, 122825, 122827, 122831, 122832, 122837, 
122839, 122841, 122842, 122843, 122844, 122845, 122846, 122847, 122848, 
14433, 14432, 14431, 14430, 14429, 14428, 133519, 133520, 47603, 47602, 
47599, 47598, 47595, 47594, 47592, 47591, 47590, 47589, 47588, 47569, 
47568, 47566, 47561, 47478, 47665, 47674, 90596, 90597, 90602, 90603, 
90606, 90607, 90608, 90609, 90612, 90613, 90614, 90615, 90616, 90617, 
90618, 90619, 101148, 101149, 101150, 101151, 101152, 101153, 101154, 
101155, 5437, 5436, 5435, 5425, 5424, 5423, 5413, 5407, 5396, 5394, 
5392, 5360, 5358, 5357, 5355, 5353, 5279, 5274, 5272, 4614, 3267, 3266, 
3265, 3264, 948, 93037, 93114, 93135, 93325, 93374, 17692, 17691, 17690, 
17689, 17687, 17688, 17686, 17685, 17684, 17683, 17681, 17678, 17679, 
17677, 17667, 17655, 16715, 16648, 16647, 17849, 17833, 17828, 17795, 
17793, 17792, 17772, 17713, 17712, 17711, 17710, 17709, 17704, 17703, 
17701, 17700, 17699, 17698, 17697, 18110, 18391, 45371, 45372, 46766, 
46769, 46771, 46773, 47145, 28249, 28248, 28247, 28246, 28245, 28244, 
28243, 28242, 28241, 28240, 28239, 28238, 28230, 28229, 28228, 28227, 
28226, 28225, 28224, 28223, 28222, 28221, 28220, 28219, 28218, 28217, 
29665, 29664, 29663, 29662, 29661, 29660, 29648, 29647, 29646, 133342, 
133343, 133344, 133345, 100792, 100809, 100810, 1389, 1388, 1386, 1384, 
1372, 1362, 136055, 136056, 30956, 30955, 30922, 30921, 30883, 30838, 
30837, 30786, 30434, 18642, 8444, 8024, 31539, 31565, 126945, 126946, 
126947, 126948, 126949, 126950, 126951, 126952, 126953, 126954, 126955, 
126956, 126957, 29788, 29792, 29916, 29918, 29929, 29930, 30031, 30033, 
30034, 34116, 34117, 34125, 34777, 37891, 37892, 37896, 37913, 37914, 
37915, 37916, 38307, 38308, 38309, 38311, 38351, 38354, 38367, 38368, 
38370, 39029, 40597, 41718, 41727, 41728, 41729, 41734, 41736, 41894, 
41895, 41915, 41916, 41917, 41969, 41970, 41984, 41986, 41987, 42011, 
42017, 42018, 42019, 42021, 42042, 42043, 42044, 42045, 42046, 42049, 
42051, 42145, 42666, 43689, 43733, 43918, 43922, 44064, 44267, 44273, 
44278, 44282, 44283, 44288, 44389, 44392, 44410, 44427, 44440, 44463, 
44489, 44492, 44495, 44542, 44554, 44556, 44558, 44562, 44586, 44590, 
44593, 44604, 44606, 44607, 44644, 44647, 44655, 44744, 44812, 44826, 
44862, 44871, 44881, 45005, 45006, 45007, 45008, 45009, 45012, 45017, 
45039, 45062, 45069, 45078, 45111, 45155, 45156, 45177, 45189, 45190, 
45197, 45201, 33181, 33180, 33174, 136433, 136434, 28443, 28444, 28445, 
42146, 42147, 42149, 42151, 42152, 44549, 21183, 21182, 21181, 21180, 
21179, 23546, 23545, 23544, 23542, 23541, 23540, 23539, 23538, 23537, 
23536, 23535, 23534, 23533, 23532, 23531, 23530, 23529, 23528, 23527, 
23526, 23525, 23524, 23523, 23522, 7724, 7706, 7705, 7607, 7561, 7796, 
12232, 12228, 12226, 12225, 12222, 12220, 12215, 7274, 4790, 4789, 4788, 
36048, 36049, 36050, 36051, 36052, 36053, 36054, 36055, 36056, 36057, 
36058, 36059, 36060, 36061, 36062, 36063, 36064, 36065, 36066, 36067, 
36068, 36069, 36070, 36071, 36072, 36073, 36074, 36075, 36076, 36077, 
36078, 36079, 36080, 36081, 36082, 36083, 36084, 36085, 36086, 36087, 
36088, 36089, 36090, 36091, 36092, 53132, 53131, 53130, 53129, 53128, 
53127, 53126, 53125, 53124, 53123, 53122, 53121, 53120, 53106, 53105, 
53104, 53103, 53102, 53101, 53133, 53140, 53141, 53142, 53143, 53144, 
53145, 53146, 53147, 53148, 53149, 53150, 53151, 53152, 53153, 53161, 
53162, 53163, 53164, 53165, 53179, 53180, 53184, 53185, 53186, 53187, 
53188, 53189, 53190, 53191, 53192, 53238, 53240, 53241, 53242, 32868, 
32867, 32866, 32865, 32864, 32863, 32862, 127083, 127084, 127085, 
127086, 127087, 127088, 127089, 127090, 127091, 127092, 127093, 127094, 
127095, 127096, 127097, 127098, 127099, 127100, 127101, 127102, 127103, 
127104, 127105, 127106, 124729, 124730, 124731, 124732, 124733, 124734, 
124735, 124736, 124737, 127794, 127795, 127796, 127797, 127798, 127799, 
122444, 122450, 122451, 122457, 122458, 122459, 122461, 122462, 122463, 
122464, 133337, 133338, 133339, 133340, 6707, 10113, 10118, 10119, 
10120, 10128, 10129, 10130, 10131, 10135, 10160, 10164, 10170, 10194, 
10413, 13326, 13327, 13331, 16229, 16320, 16321, 16329, 16337, 16339, 
16340, 16342, 17880, 29892, 29893, 31816, 89820, 89821, 89822, 89823, 
89824, 89825, 89826, 89827, 89828, 90014, 90015, 90016, 90017, 90018, 
90019, 90253, 90359, 93086, 93088, 93345, 93348, 93486, 93497, 93500, 
93501, 93503, 93509, 93515, 93523, 93526, 28707, 28709, 28710, 28712, 
28713, 29778, 29781, 34107, 34108, 127844, 127845, 127846, 127847, 
127848, 127849, 127850, 127851, 127852, 127853, 127854, 127855, 127856, 
127857, 127858, 127859, 127860, 127861, 123968, 123969, 123970, 123971, 
123972, 123973, 123974, 123975, 123976, 123977, 123978, 123979, 123980, 
123982, 123983, 123984, 123985, 123986, 123987, 123988, 123989, 123992, 
123995, 30008, 30007, 30006, 30005, 30004, 30003, 30002, 30001, 30000, 
29999, 29998, 29997, 29996, 29995, 29994, 29993, 29992, 29991, 29990, 
29989, 29988, 29987, 29986, 103247, 103248, 103249, 103250, 103251, 
103252, 103253, 103254, 31169, 30924, 30844, 30793, 30783, 30781, 30701, 
30625, 30608, 30607, 30465, 25377, 25318, 25279, 7888, 7886, 31489, 
31569, 33888, 34099, 37030, 37031, 34359, 34358, 34357, 34356, 34355, 
34354, 34353, 34352, 34351, 34350, 34349, 34348, 34347, 34346, 34345, 
34344, 34343, 34342, 34341, 34340, 34339, 34338, 34337, 34336, 34335, 
34334, 34333, 34332, 34331, 34330, 34329, 34328, 34327, 34326, 34325, 
34324, 34323, 34322, 34321, 34320, 34319, 34318, 34317, 34316, 34315, 
34314, 34313, 34312, 34311, 34310, 34309, 34308, 34307, 34306, 34305, 
34304, 34303, 34302, 34301, 34300, 34299, 34298, 34297, 34296, 34295, 
34294, 34293, 34292, 34291, 34290, 34289, 34288, 34287, 34286, 34285, 
34284, 34283, 34282, 34281, 34280, 34279, 34278, 34277, 34276, 34275, 
34274, 34273, 34272, 34271, 34270, 34269, 20870, 27680, 27679, 27677, 
27671, 27670, 27669, 27667, 27666, 27665, 27664, 27663, 27662, 27661, 
27659, 27656, 122671, 122672, 122673, 122674, 122675, 122676, 122677, 
122678, 122679, 122680, 122681, 122682, 122683, 122684, 122685, 129897, 
129898, 129899, 129900, 15142, 15141, 15140, 15139, 15138, 15137, 13863, 
13862, 13861, 13860, 13859, 13858, 13857, 13856, 13855, 13854, 13853, 
13852, 13851, 13850, 13849, 13847, 13846, 126247, 126246, 126245, 
126244, 126243, 126242, 126241, 126240, 126239, 126238, 126237, 126236, 
126235, 126234, 126233, 126232, 126231, 126230, 126229, 126228, 126227, 
126226, 126225, 126224, 126223, 126222, 126221, 126220, 126219, 126218, 
126217, 126216, 126215, 126214, 126213, 126212, 126211, 126210, 126209, 
126208, 126207, 126206, 126205, 126204, 126203, 126202, 126201, 126200, 
126199, 126198, 126197, 126196, 126195, 126194, 126193, 126192, 126191, 
126190, 126189, 126188, 126187, 126186, 126185, 126184, 126183, 126182, 
126181, 126180, 126179, 126178, 126177, 126176, 126175, 126174, 126173, 
11149, 11145, 11142, 10747, 10735, 10733, 10720, 10719, 10717, 10702, 
10701, 10659, 10655, 10650, 10651, 10630, 10575, 10530, 10501, 10493, 
10492, 10491, 10461, 10337, 10306, 10307, 10304, 10305, 10300, 10265, 
9974, 9966, 9867, 9418, 121496, 121501, 103259, 103261, 28264, 28263, 
28262, 28261, 28260, 28259, 28258, 28257, 28256, 28255, 28254, 28253, 
28252, 28251, 28250, 23407, 23406, 102049, 102050, 102051, 102052, 
102053, 102054, 102055, 102056, 102057, 102058, 102059, 102060, 102061, 
102062, 102065, 102066, 102067, 102068, 45336, 45338, 45339, 45342, 
46750, 46757, 47132, 47133, 47141, 47638, 47872, 47873, 18574, 17427, 
17284, 15318, 12813, 136407, 136408, 136409, 136410, 136411, 136412, 
136413, 136414, 136415, 136416, 136417, 136418, 136419, 136420, 132440, 
132441, 132442, 26892, 26891, 26890, 26889, 26888, 26887, 26886, 26885, 
26884, 26883, 26882, 26881, 26880, 26879, 26878, 26877, 26876, 26875, 
26874, 26873, 26872, 26871, 26869, 26868, 26867, 26866, 26865, 26864, 
26863, 26862, 26861, 26860, 26859, 26858, 26857, 26856, 26855, 26854, 
26853, 26852, 26851, 26850, 26849, 26848, 26847, 26846, 26845, 26844, 
26843, 26842, 26841, 26840, 26839, 26837, 26832, 26831, 26830, 26829, 
26828, 26827, 26826, 26825, 26824, 26823, 26822, 26821, 26820, 26819, 
26818, 26817, 26816, 26815, 26814, 26813, 26812, 26811, 26810, 26809, 
26808, 26807, 26806, 26805, 26804, 26803, 26802, 26801, 26800, 26799, 
26798, 26797, 26796, 26795, 26794, 26793, 26792, 26791, 26790, 26789, 
26788, 26787, 26786, 26785, 26784, 26783, 26782, 26781, 27487, 27486, 
50561, 50562, 50563, 50565, 50566, 50567, 50568, 50569, 50570, 50571, 
50572, 50573, 36521, 36522, 36523, 36524, 36525, 36526, 36527, 36528, 
36529, 36530, 36531, 36532, 12825, 12824, 12823, 12822, 12821, 12820, 
12818, 45346, 45349, 45353, 45355, 45359, 45366, 46761, 46764, 9314, 
9309, 9307, 9306, 9301, 9297, 9293, 9111, 9110, 9107, 9106, 9044, 9043, 
8670, 7228, 7046, 6921, 19730, 19729, 19728, 19727, 19726, 19725, 19724, 
19723, 19722, 19721, 19720, 19719, 19718, 19717, 19715, 19714, 7324, 
7320, 7319, 7318, 6401, 6400, 6399, 128601, 128602, 128603, 128604, 
128605, 128606, 128607, 128608, 128609, 128610, 128611, 128612, 128613, 
128614, 49940, 49941, 49942, 49943, 49944, 49945, 49946, 49947, 103859, 
103860, 103861, 103862, 103866, 103869, 52144, 52143, 52142, 52141, 
48905, 48901, 48896, 48786, 48782, 48777, 48776, 48961, 91323, 91325, 
91326, 91330, 91331, 91334, 91335, 2185, 2179, 2168, 2155, 2152, 2142, 
45227, 45236, 45449, 45451, 45458, 45464, 46873, 46956, 46976, 47194, 
47196, 47197, 47991, 47993, 47998, 47999, 48280, 48281, 48540, 48604, 
48634, 49603, 49604, 49605, 49607, 51647, 51738, 51739, 51864, 51993, 
51994, 51995, 52145, 52238, 52474, 52475, 52516, 52545, 52631, 127208, 
127209, 127210, 127211, 127212, 10829, 10826, 10821, 10820, 10227, 
10224, 10221, 10204, 10203, 10011, 10006, 9933, 9929, 9928, 9927, 9926, 
9925, 9924, 9923, 9914, 9912, 9898, 9891, 9890, 9872, 105484, 105485, 
105486, 105500, 105501, 105502, 105503, 7485, 7461, 7460, 7544, 7545, 
10054, 10067, 10070, 10072, 10073, 10075, 10079, 10132, 10154, 10156, 
10165, 18381, 28336, 28360, 42357, 42358, 42383, 42384, 42407, 42409, 
25828, 25827, 25826, 25825, 25824, 25823, 25822, 25821, 25820, 25819, 
25818, 25814, 25812, 25811, 25810, 25809, 25808, 25807, 25806, 25805, 
25804, 25803, 25802, 25801, 25799, 25798, 102622, 102625, 102628, 
102629, 102630, 102631, 102632, 102633, 102634, 102646, 102647, 102653, 
102654, 102655, 102656, 102657, 102658, 102659, 102660, 99451, 99452, 
99453, 99454, 99455, 99456, 99457, 99458, 99459, 99460, 99461, 99462, 
99463, 99464, 99465, 99466, 99467, 99468, 99469, 99470, 99471, 99472, 
99473, 99474, 99475, 99476, 99477, 99478, 99479, 99480, 99482, 99483, 
99484, 99485, 99486, 99487, 99488, 99490, 99492, 99493, 99494, 99495, 
99496, 99497, 99498, 99499, 99500, 99501, 99502, 99503, 99504, 99505, 
99506, 99507, 99508, 99509, 99510, 99511, 99512, 99513, 99514, 99515, 
99516, 99517, 99518, 99519, 99520, 99521, 99522, 99523, 99524, 99525, 
99526, 99527, 99528, 99529, 99530, 99531, 99532, 99533, 99534, 99535, 
99536, 99537, 99538, 99539, 99540, 99541, 99542, 99543, 99544, 99545, 
99546, 99547, 99548, 99549, 99550, 99551, 99552, 99554, 99555, 99556, 
99557, 99558, 99559, 99560, 99561, 99562, 99563, 99564, 99565, 99566, 
99567, 99575, 99576, 99577, 99578, 99579, 99580, 99581, 99582, 99583, 
99584, 99585, 99586, 99587, 99588, 99589, 99590, 99591, 99592, 99593, 
99594, 99595, 99596, 99597, 99600, 99601, 99602, 99603, 99605, 99606, 
99608, 99609, 99610, 99611, 99612, 99613, 99614, 99615, 99616, 99619, 
99620, 99622, 99623, 99624, 99625, 99639, 99640, 99642, 99663, 99664, 
99665, 99679, 99680, 99681, 99682, 16966, 15759, 2398, 2214, 2045, 2041, 
1995, 1988, 1986, 1984, 1981, 1973, 1972, 1879, 1713, 1706, 1695, 1692, 
1679, 1639, 1411, 1308, 1305, 1252, 1228, 120864, 120865, 120866, 
120867, 120868, 120869, 120870, 120871, 120872, 120873, 120874, 120875, 
120876, 120877, 120885, 120886, 120887, 120889, 120890, 120891, 120892, 
120893, 120894, 120895, 120896, 120897, 120898, 23768, 23767, 23766, 
97337, 97338, 97339, 97340, 29902, 29903, 29904, 29905, 37880, 37881, 
44486, 44488, 44577, 44579, 44583, 45054, 45055, 51521, 51522, 51523, 
51524, 51525, 51526, 51527, 51528, 51529, 51530, 51531, 124744, 124745, 
124746, 124747, 124748, 124749, 122572, 122573, 122574, 122575, 122576, 
122577, 122578, 122579, 122580, 122581, 122582, 122583, 122584, 122585, 
122586, 122587, 122588, 122589, 16561, 16560, 16551, 16545, 16539, 
16535, 16534, 16531, 16529, 16518, 16507, 16502, 16501, 16496, 16495, 
16493, 16492, 16490, 16488, 16487, 16481, 16475, 16019, 27584, 27583, 
44400, 44403, 44404, 44405, 44406, 44409, 44412, 44424, 44455, 44469, 
44999, 45092, 45093, 45094, 45104, 45108, 45109, 45110, 45470, 45471, 
45473, 45478, 45493, 45494, 45495, 45496, 45497, 45499, 45502, 45503, 
45504, 45505, 45506, 45507, 45508, 45509, 45510, 45511, 45512, 45513, 
45518, 45519, 45535, 45573, 45575, 45576, 45577, 45578, 45579, 45581, 
45582, 45583, 45584, 45585, 45586, 45587, 45588, 45589, 45590, 45591, 
45592, 45593, 45594, 45595, 45596, 45597, 45598, 45599, 45600, 45601, 
45602, 45603, 45604, 45605, 45606, 45607, 99236, 99237, 99238, 99239, 
99240, 99241, 99242, 99244, 99245, 99247, 99248, 99249, 99250, 99251, 
99252, 99253, 99254, 99255, 99256, 99257, 99258, 99259, 99260, 99261, 
99262, 99263, 99264, 99265, 99266, 99267, 99268, 99269, 99270, 99271, 
99272, 99273, 99274, 99275, 99276, 99277, 99278, 99279, 99280, 99281, 
99282, 99283, 99284, 99286, 99287, 99288, 99289, 99290, 99291, 99306, 
99313, 99314, 99315, 99316, 99317, 99318, 99319, 99320, 99321, 99322, 
99323, 99324, 99325, 99326, 99327, 99329, 99330, 99331, 99332, 99333, 
99334, 99335, 99336, 99337, 132642, 132643, 132644, 132645, 132646, 
14054, 14053, 14052, 14051, 14050, 14049, 14048, 14047, 14046, 14045, 
14044, 14043, 14042, 14041, 14040, 14039, 14038, 14037, 14036, 14035, 
14034, 14032, 14031, 14030, 14029, 14028, 14027, 14026, 14025, 14024, 
14023, 14022, 14021, 14020, 14019, 14018, 14017, 14016, 14015, 14014, 
14013, 14012, 14011, 14010, 14009, 34412, 34411, 34402, 123842, 123843, 
123845, 123846, 123847, 123848, 123849, 123850, 123851, 123852, 123870, 
123871, 123872, 123873, 123874, 123875, 123876, 123877, 136611, 136612, 
136613, 136614, 136615, 136616, 136617, 136618, 136619, 136620, 136621, 
136622, 136623, 136624, 136625, 136626, 136627, 136628, 136629, 136630, 
136631, 136632, 136633, 136634, 136635, 136636, 136637, 136638, 136639, 
136640, 136641, 136642, 136643, 136644, 136645, 136646, 136647, 136648, 
136649, 136650, 84778, 84793, 84819, 91856, 91881, 92127, 126886, 
126887, 126888, 126889, 126895, 126898, 99716, 99718, 99722, 99723, 
99724, 99725, 99726, 99728, 99730, 99732, 99751, 99752, 99753, 99754, 
99755, 99756, 99757, 99758, 99759, 99760, 99761, 129464, 129465, 129466, 
129467, 129468, 129469, 129470, 129471, 129472, 26767, 26766, 26765, 
26764, 26763, 26762, 26761, 26760, 39632, 39634, 39635, 39682, 40433, 
40440, 40617, 40667, 6756, 7654, 28521, 28520, 28519, 28518, 28517, 
28516, 28515, 28514, 28513, 28512, 28511, 28510, 28509, 28508, 28507, 
28506, 28505, 107025, 107027, 107103, 107104, 126469, 126470, 126471, 
126472, 126473, 1189, 1174, 129202, 129203, 129204, 129205, 129206, 
129207, 129208, 129209, 129210, 129211, 129212, 129213, 129214, 129215, 
129216, 129217, 129218, 129219, 17586, 17582, 17580, 17560, 17558, 
17556, 17551, 17550, 17385, 17384, 17383, 17371, 17065, 16953, 16837, 
16814, 16802, 16795, 16794, 16790, 16787, 16766, 16758, 16757, 16741, 
16717, 16705, 16704, 16690, 134702, 134703, 14760, 14748, 14745, 14716, 
14714, 14713, 14709, 14707, 14705, 14703, 14702, 14700, 14699, 14696, 
14688, 14687, 14684, 14682, 14681, 14679, 14678, 14677, 14675, 14671, 
14669, 14668, 14655, 14600, 14597, 14525, 14513, 14511, 14510, 14509, 
14508, 14507, 14497, 14495, 13340, 13339, 13338, 13306, 13302, 13297, 
13292, 13277, 13276, 13272, 13266, 13260, 12063, 12038, 12037, 12034, 
12033, 12032, 12030, 12029, 12028, 12023, 12021, 11982, 11980, 11970, 
11968, 11967, 11966, 11965, 11964, 11963, 11943, 11938, 11827, 11818, 
11735, 11732, 11731, 11710, 11689, 11682, 11664, 11661, 11655, 11646, 
11642, 11639, 11635, 11634, 11633, 11629, 11624, 11623, 11619, 11614, 
11551, 11546, 11534, 11526, 11525, 11523, 11506, 11493, 11492, 11490, 
11489, 11486, 11468, 11462, 11461, 11460, 11445, 11387, 11370, 11361, 
11341, 11338, 11337, 15297, 31304, 31303, 31302, 31276, 31243, 31241, 
31240, 31239, 31043, 31021, 30512, 30490, 30463, 11194, 11093, 10850, 
10771, 10770, 10623, 10577, 10225, 10017, 9978, 9940, 9937, 9931, 9919, 
9887, 9832, 9814, 9804, 9728, 9727, 9708, 9612, 95065, 95112, 95233, 
95278, 95322, 95387, 95482, 95527, 95605, 95669, 95704, 95796, 95867, 
95906, 96004, 96037, 96089, 96182, 96215, 96326, 96384, 96421, 96516, 
96567, 133705, 133706, 133707, 133708, 31840, 31841, 31842, 31843, 
34143, 34146, 34206, 34209, 34263, 35064, 35222, 35223, 38697, 38703, 
38718, 38785, 38813, 38828, 86667, 86668, 86669, 86670, 37002, 37003, 
37004, 37005, 37006, 37007, 37008, 37009, 6703, 6695, 8771, 8776, 8777, 
8779, 8783, 8784, 9668, 9669, 10052, 10055, 10060, 10061, 16200, 126739, 
126740, 126741, 126742, 126743, 126744, 126745, 2595, 2590, 2530, 2529, 
2528, 2527, 2526, 2524, 2523, 2522, 2521, 2520, 2200, 2197, 2192, 2190, 
2184, 2183, 2181, 2180, 2147, 2145, 2144, 2143, 2140, 2137, 2043, 1939, 
90954, 90956, 133051, 133052, 133053, 133054, 133055, 133056, 133057, 
133058, 133059, 133060, 133061, 133062, 133063, 133064, 133065, 133066, 
133067, 133068, 133069, 133070, 133071, 133072, 133073, 133074, 133075, 
133076, 133077, 133078, 133079, 133080, 133081, 133082, 133084, 133085, 
133086, 133087, 95084, 95137, 95240, 95279, 95341, 95375, 95491, 95627, 
95677, 95742, 95746, 95822, 95853, 95919, 96002, 96079, 96194, 96214, 
96324, 96364, 96439, 96506, 96547, 52466, 52467, 52468, 52469, 52470, 
52478, 105036, 105079, 105080, 105081, 105089, 105090, 105091, 105092, 
105093, 105094, 105095, 13045, 13042, 13039, 13032, 13030, 13027, 13021, 
12380, 12361, 12358, 12357, 7908, 6457, 42210, 42211, 42212, 42213, 
42214, 42215, 42216, 42217, 42218, 42219, 42220, 42221, 42222, 42223, 
42224, 42225, 42226, 42227, 130380, 130381, 130382, 130383, 130384, 
130385, 130386, 130387, 130388, 130389, 130390, 130391, 104106, 104120, 
104128, 104130, 104164, 104165, 11125, 11123, 11121, 11120, 11104, 
11100, 11070, 11068, 10865, 10862, 10861, 10851, 10842, 10841, 10838, 
10803, 10802, 10800, 10787, 10785, 10740, 10644, 10643, 10642, 10641, 
10639, 10622, 10539, 10537, 10536, 10535, 10328, 10245, 10243, 10238, 
10198, 10177, 9956, 9935, 9934, 9917, 9915, 9911, 9888, 9877, 9850, 
9808, 9807, 9716, 9680, 9574, 9488, 33787, 33785, 33756, 33755, 33754, 
33753, 33592, 33591, 33590, 33576, 33574, 33573, 33572, 33571, 33570, 
33569, 33568, 33567, 33566, 33565, 33564, 31253, 31247, 31244, 31217, 
31216, 31212, 31183, 31166, 31148, 31145, 31141, 31118, 31099, 31097, 
31096, 31086, 31081, 31029, 31017, 30985, 30984, 30983, 30982, 30978, 
30957, 30862, 30842, 30841, 29278, 31454, 31438, 31467, 31476, 31477, 
31478, 31531, 31582, 31583, 31585, 31586, 31587, 31589, 31590, 31659, 
33690, 33825, 33826, 33832, 33841, 33849, 33860, 33865, 33868, 33870, 
33876, 33877, 33881, 106208, 106213, 106214, 106215, 106216, 106217, 
106219, 106220, 106221, 106223, 106224, 106225, 106226, 106227, 106229, 
106230, 106231, 106232, 106233, 45263, 45264, 45265, 45269, 45271, 
45484, 45486, 45487, 45488, 45517, 47036, 47040, 47041, 47229, 47230, 
47231, 47232, 48105, 48106, 48288, 48290, 48291, 48292, 48297, 48300, 
48544, 48559, 48560, 48579, 48581, 48611, 48614, 32030, 32031, 32032, 
32033, 38256, 38258, 38259, 38260, 38261, 38449, 38454, 38455, 38456, 
44477, 44478, 44479, 44560, 44689, 44690, 44692, 44707, 44709, 44866, 
44867, 44883, 44884, 44886, 44887, 44888, 44889, 121551, 121552, 121559, 
121562, 45253, 45254, 45255, 45256, 45259, 45466, 45468, 45481, 46986, 
46988, 46989, 47026, 47027, 47032, 47202, 47203, 47204, 47218, 47219, 
47220, 48002, 48003, 48005, 48095, 48097, 48099, 48287, 121124, 121125, 
121126, 121127, 121128, 121129, 101984, 102022, 102023, 102024, 102025, 
102026, 102027, 102028, 102029, 102030, 102031, 102032, 127018, 127019, 
127020, 127021, 127022, 127023, 127024, 127025, 127026, 127027, 127028, 
127029, 132024, 132025, 107173, 107174, 107176, 107177, 107178, 107179, 
107181, 107182, 107183, 107184, 107185, 107186, 107187, 107188, 107189, 
107190, 107191, 107192, 9264, 9261, 9259, 9258, 9254, 9250, 9248, 9244, 
9242, 9240, 9164, 9163, 9128, 9119, 9079, 9075, 9073, 9056, 9055, 9052, 
9051, 8943, 8939, 8904, 8727, 8720, 8716, 8698, 8694, 8688, 8336, 14406, 
14405, 14404, 14403, 14402, 14401, 14399, 14398, 14397, 14396, 14395, 
14394, 14393, 14392, 2508, 2433, 2403, 2395, 2345, 2218, 2175, 2171, 
2170, 1956, 1926, 1925, 1145, 1143, 1140, 1139, 1132, 1130, 1128, 1121, 
1120, 1092, 1073, 1068, 1064, 1056, 1052, 1008, 993, 834, 1583, 1581, 
1580, 1579, 1277, 1275, 1274, 1271, 1269, 1236, 1175, 1160, 1151, 1150, 
1149, 1146, 1141, 1133, 1126, 1125, 1111, 1110, 850, 674, 103784, 
103788, 103814, 103815, 103816, 103817, 103818, 103819, 135714, 135715, 
135716, 135717, 103714, 103715, 103739, 11157, 11154, 11155, 11150, 
11151, 10732, 10576, 10551, 10534, 10531, 10486, 10482, 10460, 10346, 
10344, 10345, 10343, 10340, 10341, 10338, 10339, 10336, 10335, 10333, 
10332, 10303, 10302, 10301, 9973, 9897, 9479, 9417, 29787, 29789, 29790, 
29791, 29917, 30032, 34115, 34140, 37894, 37917, 37918, 38310, 38353, 
38369, 38371, 39027, 39032, 39033, 39034, 41893, 41896, 41913, 41914, 
41967, 41972, 41985, 41988, 42009, 42010, 42012, 42020, 42041, 42050, 
42795, 43917, 43981, 44069, 44145, 44224, 44281, 44402, 44417, 44462, 
44466, 44490, 44491, 44493, 44494, 44552, 44576, 44589, 44603, 44612, 
44637, 44659, 44660, 44824, 44837, 44841, 44852, 44868, 44869, 44873, 
44875, 44877, 44882, 44912, 45047, 45049, 45050, 45073, 45079, 45084, 
45114, 45130, 45133, 45142, 45188, 45202, 45205, 95062, 95113, 95220, 
95263, 95313, 95388, 95474, 95547, 95599, 95668, 95729, 95800, 95872, 
95907, 95998, 96055, 96097, 96191, 96217, 96314, 96349, 96420, 96515, 
96564, 14759, 14626, 14618, 14611, 12014, 12012, 12011, 12008, 11497, 
11410, 32942, 32941, 32940, 32939, 32938, 19756, 19755, 19754, 19753, 
19752, 19751, 19750, 19749, 19748, 19747, 19746, 19745, 19744, 19743, 
19742, 19741, 19740, 19739, 19738, 19737, 19736, 19735, 19734, 19733, 
19731, 85096, 85095, 90509, 90510, 90512, 40304, 40307, 40314, 40388, 
40391, 40393, 40408, 40413, 40414, 40415, 40421, 40472, 40604, 40611, 
40612, 40629, 40631, 12330, 12326, 12324, 12323, 12301, 12299, 7905, 
7903, 7348, 6454, 6452, 6450, 6444, 6443, 6442, 6441, 6440, 50574, 
50575, 50576, 50577, 50578, 50579, 50580, 50581, 50582, 50583, 50584, 
50585, 50586, 50587, 50588, 50589, 50590, 50591, 50592, 50593, 50594, 
50595, 50596, 50597, 50598, 50599, 102713, 102714, 102738, 10704, 10696, 
10688, 12766, 12765, 12764, 12763, 12762, 12761, 35191, 35190, 35189, 
35188, 35187, 35186, 35185, 101895, 101896, 101897, 101898, 101899, 
101900, 101902, 101903, 101904, 132014, 132015, 43100, 43101, 43102, 
43103, 43104, 43105, 43106, 43107, 43108, 43109, 43110, 43111, 43112, 
43113, 43114, 43115, 43116, 43117, 43118, 53118, 91941, 91947, 92236, 
92258, 92266, 16564, 16563, 16562, 16557, 16516, 16498, 16435, 16431, 
16430, 16429, 16427, 16395, 16394, 16392, 16384, 16382, 16377, 16376, 
16375, 16373, 16371, 16366, 16361, 16357, 16334, 16331, 16316, 16309, 
16301, 16138, 16134, 16126, 16120, 16011, 15984, 15963, 15955, 15902, 
15888, 15619, 15612, 15553, 12320, 12317, 12316, 12314, 12309, 12307, 
12306, 8426, 8425, 7876, 7331, 7330, 7329, 7326, 6414, 6413, 6412, 6411, 
12318, 12315, 12313, 12311, 12305, 8427, 7879, 7878, 7877, 7742, 7332, 
7328, 7327, 6416, 6415, 12753, 12752, 12751, 12750, 12749, 12748, 12747, 
12746, 12745, 12744, 32215, 32214, 32213, 32212, 20687, 20686, 13404, 
13403, 13402, 13401, 13400, 13399, 13398, 13397, 13396, 13395, 13393, 
13316, 13268, 13255, 13236, 13413, 13412, 13411, 13410, 13409, 13408, 
13407, 13406, 13405, 13774, 13429, 13418, 13416, 13415, 13414, 39300, 
39335, 39336, 39339, 39340, 39341, 39343, 39345, 39346, 39422, 39441, 
39442, 39443, 39444, 39466, 39467, 39468, 39475, 39615, 39618, 39620, 
39621, 39688, 39699, 95087, 95134, 95238, 95275, 95339, 95376, 95492, 
95531, 95626, 95679, 95741, 95818, 95885, 95923, 96001, 96074, 96145, 
96198, 96212, 96322, 96399, 96443, 96505, 96529, 106360, 106361, 106362, 
106363, 106364, 106365, 106366, 106367, 106368, 106369, 106370, 106371, 
106372, 106373, 106374, 106375, 106376, 106377, 106378, 106379, 106380, 
106381, 106382, 106383, 106384, 106385, 106386, 106387, 106388, 106389, 
106390, 106391, 106392, 106393, 106394, 106395, 106396, 106397, 106398, 
106399, 106400, 106401, 106402, 106403, 106404, 106405, 106406, 106407, 
106408, 106409, 106410, 106411, 106412, 106413, 106414, 106415, 106416, 
106417, 106418, 106419, 106420, 106421, 106422, 106423, 106424, 106425, 
106426, 106427, 106428, 106429, 106430, 106431, 106432, 106433, 106435, 
106436, 106437, 106438, 106439, 106441, 106442, 106443, 106444, 106445, 
106446, 106447, 106448, 106449, 106450, 106451, 106452, 106453, 106454, 
106455, 106456, 106457, 106458, 106459, 106460, 106461, 106462, 106463, 
106464, 106465, 106466, 106467, 106468, 106469, 106470, 106471, 106472, 
106473, 106474, 106475, 106476, 106477, 106478, 106479, 106480, 106482, 
106483, 106484, 106485, 106486, 106487, 106488, 106489, 106490, 106491, 
106492, 106493, 35936, 35938, 35939, 35940, 35947, 35948, 35949, 35956, 
35964, 35965, 35966, 35967, 35968, 35969, 35970, 35971, 35972, 35973, 
35974, 35975, 35976, 35977, 35978, 35979, 35980, 35981, 35982, 35983, 
35984, 35985, 11261, 11260, 11259, 11258, 30834, 30832, 30828, 30826, 
30824, 30822, 30692, 30690, 30688, 30686, 30683, 8453, 78186, 78187, 
137520, 137521, 137522, 137523, 32875, 32874, 32873, 33280, 33279, 
33278, 33277, 33276, 33275, 33274, 33273, 33272, 33271, 33270, 33269, 
33268, 33267, 33266, 33265, 33264, 28446, 28448, 28451, 28455, 30060, 
33705, 33706, 37921, 37922, 38031, 38032, 38391, 44747, 44763, 44764, 
44765, 44767, 44770, 44772, 44773, 44777, 44780, 44879, 124323, 124324, 
124325, 124326, 124327, 124328, 124329, 124330, 124331, 124332, 124333, 
124334, 124335, 124336, 124337, 124338, 124339, 124340, 124341, 207199, 
207198, 207197, 23765, 23764, 23763, 23762, 23761, 23760, 23759, 127413, 
127414, 127415, 27494, 27492, 29593, 56604, 56603, 56602, 56601, 56599, 
56598, 56597, 56596, 56595, 56594, 56593, 56592, 56591, 56590, 56589, 
56588, 56587, 56586, 56585, 56584, 56583, 56582, 56581, 56580, 56579, 
56578, 56577, 56576, 56575, 56574, 56573, 56572, 56571, 56570, 56569, 
56568, 56567, 56566, 56565, 56564, 56563, 56562, 56561, 56560, 56559, 
56558, 56557, 56556, 56555, 56549, 126804, 126805, 123744, 123745, 
123746, 72403, 72404, 77844, 103769, 103785, 103786, 103787, 103820, 
103828, 103829, 103830, 103831, 103832, 103833, 103834, 103835, 103836, 
103837, 103838, 103839, 103840, 103841, 103842, 103843, 103844, 103845, 
103846, 103847, 103848, 103849, 103850, 103851, 27048, 27047, 27046, 
27045, 27044, 27043, 27042, 27041, 27040, 27039, 27038, 27037, 27036, 
27035, 95106, 95165, 95185, 95298, 95316, 95420, 95537, 95573, 95639, 
95694, 95765, 95839, 95941, 95958, 96035, 96085, 96151, 96262, 96283, 
96348, 96449, 96480, 96566, 11162, 11163, 11017, 11016, 11015, 11013, 
10990, 10988, 10986, 10983, 10982, 10932, 10858, 10846, 10845, 10791, 
137547, 137548, 137549, 101917, 101918, 101919, 101922, 101924, 101933, 
101937, 101967, 101974, 102064, 105037, 105038, 105039, 105041, 105042, 
105043, 105044, 105045, 105052, 105053, 105054, 105055, 105056, 105057, 
105058, 105059, 105060, 105061, 105062, 105063, 105064, 105065, 105066, 
105067, 105068, 105069, 105070, 105071, 105072, 105073, 105074, 105075, 
105076, 95067, 95129, 95213, 95281, 95371, 95404, 95475, 95532, 95619, 
95689, 95756, 95816, 95877, 95896, 96010, 96067, 96106, 96180, 96230, 
96332, 96389, 96442, 96525, 96575, 36725, 36726, 36727, 36728, 36729, 
36730, 36731, 36732, 36733, 36734, 36735, 36736, 36737, 36738, 36739, 
36740, 36741, 36742, 36743, 36744, 36745, 36746, 36747, 36748, 36749, 
36750, 36751, 36752, 36753, 36754, 36755, 36756, 36757, 36758, 36759, 
36760, 36761, 36762, 36763, 36764, 36765, 36766, 36767, 36768, 36769, 
36770, 36771, 36772, 43237, 43238, 43239, 43240, 43241, 43242, 43243, 
43244, 43245, 43246, 43247, 43248, 43249, 43250, 43251, 43252, 43253, 
43254, 43255, 43256, 43257, 43258, 43259, 43260, 3938, 3838, 3837, 3836, 
31423, 31440, 31316, 31315, 31314, 31311, 31272, 31246, 31207, 31077, 
31609, 31638, 31640, 31648, 31651, 39303, 127783, 127784, 127785, 
127786, 127787, 127788, 1606, 1427, 1426, 367, 83244, 83243, 83242, 
100833, 133243, 21795, 21794, 21793, 21792, 21791, 21790, 21789, 21788, 
21787, 21786, 21785, 3856, 3852, 3821, 3820, 3819, 3818, 2781, 38492, 
38493, 38494, 38495, 38498, 38499, 38500, 38501, 38502, 38503, 38504, 
38505, 38506, 38507, 38509, 38510, 38512, 38513, 38514, 38515, 38516, 
38517, 38518, 38519, 38520, 38521, 38522, 38523, 38524, 38525, 38526, 
38527, 38528, 38529, 38530, 38531, 38532, 38533, 38534, 38535, 38536, 
38537, 38538, 38539, 38540, 38541, 38542, 15226, 16857, 16526, 16477, 
16335, 16169, 16160, 16153, 16141, 16136, 16133, 16135, 16131, 16122, 
16117, 16096, 16093, 16049, 16048, 16046, 16045, 16044, 15882, 15880, 
15824, 15818, 15784, 15780, 15779, 15778, 15776, 15772, 15767, 15765, 
15763, 15641, 15591, 15523, 15509, 15504, 15503, 15386, 15369, 15368, 
15367, 15366, 136543, 136544, 136547, 136551, 132478, 132479, 132480, 
132481, 132482, 32236, 32235, 32234, 32233, 32232, 128509, 128510, 
44182, 44183, 44185, 44186, 44188, 44189, 44190, 44192, 44195, 44196, 
44197, 44198, 44199, 44200, 44201, 44202, 44203, 44204, 44205, 44206, 
44207, 44208, 44209, 44210, 44211, 44212, 44213, 44214, 44215, 44216, 
44217, 44218, 44219, 44220, 44221, 44226, 44227, 44228, 44234, 44235, 
44236, 44237, 44238, 44240, 44241, 44242, 44243, 44244, 44245, 44246, 
44247, 44248, 44249, 44250, 44299, 44300, 44301, 44359, 44360, 44361, 
44362, 44363, 44364, 44365, 44366, 44367, 44368, 44369, 44370, 44371, 
44372, 44380, 44381, 44382, 44383, 44384, 44385, 44386, 44387, 44388, 
44393, 44394, 44396, 44397, 44398, 14737, 14728, 13391, 13382, 13380, 
13370, 13369, 13349, 13346, 13337, 13335, 13317, 13288, 13285, 13248, 
13247, 13242, 12908, 12901, 12601, 12019, 12016, 12002, 11824, 11823, 
11803, 11798, 11706, 11627, 11423, 11287, 105188, 105189, 105190, 
105191, 105192, 105193, 105194, 105195, 105196, 105197, 105198, 105199, 
105200, 105201, 105202, 105203, 105205, 105206, 105207, 105208, 105209, 
105210, 105211, 105212, 105213, 105214, 105215, 105216, 105217, 105218, 
105219, 105220, 105222, 105223, 105224, 105225, 105226, 105227, 105228, 
105230, 105231, 128094, 128095, 128096, 128097, 128098, 128099, 128100, 
128101, 128102, 45248, 45249, 46964, 49619, 52512, 52627, 106616, 
106617, 106618, 106635, 106636, 106637, 34268, 34267, 34266, 34265, 
34261, 34260, 34259, 34258, 34257, 34256, 30855, 30851, 30471, 30469, 
30468, 25816, 7889, 103486, 103489, 103490, 103491, 103492, 103493, 
103494, 103495, 103496, 103497, 103498, 103500, 103501, 103513, 103519, 
103567, 103569, 103570, 103571, 103572, 103582, 103583, 103584, 103585, 
17598, 17594, 17591, 17590, 17571, 17559, 17557, 17552, 17379, 17378, 
17375, 17373, 17372, 17369, 17314, 17101, 17099, 17096, 53784, 53785, 
53786, 53787, 53792, 53852, 53853, 5772, 5771, 5770, 5769, 5768, 107205, 
107206, 8184, 8181, 8179, 8178, 8175, 8174, 8173, 8172, 7868, 7869, 
7870, 7722, 7721, 7720, 7719, 7708, 7126, 6964, 6928, 6923, 6922, 6909, 
6908, 6907, 6906, 6905, 6904, 6903, 30012, 30011, 30010, 30009, 33215, 
33214, 33213, 33212, 33211, 33210, 33209, 33208, 35833, 35834, 35835, 
35836, 35837, 35838, 35839, 124892, 124909, 124910, 124913, 124914, 
124915, 124916, 124917, 124918, 124919, 124920, 5535, 5466, 5213, 5210, 
5209, 5208, 3324, 16379, 16372, 16362, 16358, 16359, 16332, 16310, 
15959, 15871, 15833, 15801, 15786, 15640, 15637, 15620, 121371, 121372, 
121373, 121376, 121393, 121415, 121421, 121422, 121424, 121440, 40996, 
40997, 40998, 40999, 41000, 41001, 41002, 107014, 107015, 107016, 
102322, 102335, 102346, 102355, 102356, 102357, 102358, 102359, 102360, 
102361, 102364, 102365, 102367, 102368, 102369, 102370, 102371, 102372, 
102373, 102374, 37626, 37835, 38717, 38771, 38773, 38777, 38805, 38807, 
38810, 38817, 38820, 38821, 38846, 38848, 38875, 38915, 38919, 38920, 
38921, 38941, 38953, 38961, 38967, 42799, 42818, 42840, 42844, 32155, 
32154, 32153, 32152, 32151, 35794, 35795, 35796, 35802, 35803, 35804, 
35810, 35811, 35812, 35816, 35817, 35824, 35825, 35831, 35832, 66989, 
66990, 45257, 45258, 45260, 45261, 45262, 45465, 45467, 45479, 45480, 
45482, 45483, 46984, 46985, 47025, 47033, 47201, 47221, 48004, 48036, 
48096, 48098, 48286, 131192, 133603, 133604, 38709, 38884, 38930, 40159, 
40186, 40187, 1922, 1168, 1167, 1165, 1163, 1156, 1127, 1106, 749, 
31296, 31553, 31554, 31579, 31580, 31581, 33896, 33901, 33902, 33906, 
33915, 45540, 45547, 89445, 89446, 89449, 89450, 89451, 89452, 89453, 
89454, 89455, 89456, 89457, 89577, 89580, 89581, 89583, 89584, 89585, 
89588, 89873, 89875, 89880, 90001, 90002, 90039, 90231, 90239, 90243, 
90301, 90317, 90320, 90322, 90348, 90353, 90409, 90415, 90419, 90422, 
27490, 27488, 32137, 32136, 32135, 3997, 3993, 3992, 3991, 3985, 3984, 
3983, 3981, 3962, 101907, 101909, 101910, 101912, 101914, 101915, 
101916, 27963, 27962, 27961, 27960, 27959, 27958, 27957, 27956, 27955, 
27954, 131576, 131577, 131578, 131579, 131580, 131581, 131582, 131583, 
131584, 131585, 131586, 131587, 131588, 131589, 131590, 131591, 131592, 
131593, 131594, 131595, 131596, 131597, 131598, 131599, 131600, 131601, 
131602, 131603, 131605, 131606, 131607, 131608, 131609, 131610, 131611, 
131612, 131613, 131614, 131615, 131616, 131617, 131618, 131619, 131620, 
131621, 131622, 131623, 131624, 131625, 131626, 131627, 131628, 131629, 
131630, 106241, 106242, 106244, 106247, 106249, 106250, 106251, 106256, 
106257, 106258, 106265, 106266, 30879, 8502, 8501, 8500, 30040, 30041, 
30042, 37924, 38373, 41919, 41920, 44525, 44904, 45085, 45087, 45089, 
45112, 45150, 45196, 45198, 89570, 89993, 89994, 89996, 90364, 133165, 
133166, 133167, 133168, 133169, 35892, 35893, 35894, 35895, 35896, 
35897, 35898, 36385, 36386, 36387, 36388, 124499, 124500, 124501, 
124502, 124503, 124504, 124505, 124506, 124507, 124508, 124509, 124510, 
124511, 124512, 124513, 124514, 124515, 124516, 124518, 124519, 124524, 
124525, 124526, 124528, 124529, 124530, 124532, 124533, 124534, 124555, 
124556, 124557, 124559, 124560, 124561, 124562, 124563, 124564, 124565, 
124566, 124567, 124568, 124578, 124580, 124581, 124582, 124583, 124584, 
124586, 124587, 124588, 124589, 124590, 124591, 124592, 124593, 124594, 
124604, 124605, 124606, 124607, 124608, 124609, 124610, 124611, 124612, 
124613, 124614, 124615, 124616, 100088, 100089, 100090, 100091, 100092, 
100093, 100094, 100095, 100111, 100243, 100244, 100245, 51259, 51260, 
51261, 51262, 51263, 51264, 51265, 51266, 51267, 51268, 51269, 51270, 
51271, 51272, 51273, 51274, 51275, 51276, 51277, 51278, 4060, 4059, 
4058, 4055, 4051, 4050, 4032, 4028, 4024, 4023, 4012, 4011, 4002, 3989, 
3987, 3977, 3967, 49087, 49086, 49085, 49084, 49083, 49082, 49081, 
49080, 49079, 49078, 98067, 98068, 98069, 121241, 121242, 121243, 
121244, 121245, 121247, 121248, 121249, 121250, 121251, 121252, 121253, 
121256, 121257, 121259, 121260, 121262, 121263, 121264, 121266, 121267, 
121270, 121271, 121272, 121273, 121274, 121275, 121276, 121278, 121281, 
121282, 121284, 121286, 121287, 121288, 121289, 121291, 121292, 121293, 
121294, 121295, 121296, 121298, 121299, 121300, 121307, 121309, 135828, 
135829, 135830, 135831, 135832, 135833, 135834, 89476, 89477, 89478, 
89480, 89483, 89484, 89485, 89486, 89487, 89490, 89492, 89494, 89497, 
89832, 89833, 89834, 89835, 89836, 89942, 89945, 89946, 89948, 89949, 
89952, 89954, 90022, 90024, 90026, 90027, 90092, 90098, 90100, 90101, 
6818, 6815, 6811, 6242, 5827, 5797, 5796, 5794, 5716, 5699, 5698, 5696, 
5695, 5661, 5660, 5659, 5653, 5650, 5627, 5580, 102626, 102645, 102648, 
102649, 102650, 102651, 102652, 102661, 102662, 102663, 102664, 102665, 
102666, 43211, 43212, 96948, 96949, 96950, 102694, 102698, 102701, 
102703, 102704, 102705, 102706, 102707, 102708, 102709, 102710, 102711, 
102712, 102715, 102718, 102720, 102722, 102737, 50710, 50711, 50712, 
50713, 50714, 50715, 50716, 50717, 50718, 50719, 50720, 50721, 50722, 
50723, 50724, 50725, 50726, 50727, 50728, 50729, 50730, 50731, 50732, 
50733, 50734, 50735, 50736, 50737, 50738, 50739, 50740, 50741, 34935, 
34934, 34933, 34932, 34931, 34930, 34929, 34928, 34927, 34926, 34925, 
34924, 34923, 34922, 34921, 34920, 34919, 34918, 34917, 34916, 34915, 
34914, 34913, 34912, 34911, 34910, 6758, 10155, 10414, 10415, 10418, 
10419, 10420, 10446, 10451, 10453, 10455, 10456, 16460, 31838, 36332, 
36333, 36334, 36335, 36336, 36337, 36338, 36339, 36340, 36341, 36342, 
36343, 36344, 36345, 36346, 36347, 36348, 36349, 36350, 36351, 36352, 
36353, 36354, 36355, 36356, 36357, 36358, 36359, 36360, 36361, 36362, 
36363, 36364, 36365, 36366, 36367, 36368, 36369, 36370, 36371, 36372, 
36373, 97880, 97881, 97882, 97883, 97884, 97885, 97886, 97887, 97888, 
97898, 133135, 133136, 133137, 133138, 133139, 38910, 41705, 93063, 
93222, 93223, 93224, 93225, 93226, 93227, 93228, 93593, 93594, 93595, 
1178, 1176, 940, 926, 925, 924, 923, 919, 917, 916, 912, 809, 808, 807, 
806, 805, 803, 802, 800, 5201, 5200, 5167, 4645, 3319, 3318, 3317, 
135788, 135789, 135790, 135791, 135793, 135794, 135795, 135796, 135797, 
135798, 135799, 135800, 135801, 135802, 135803, 135804, 12297, 12287, 
12285, 12191, 11768, 11767, 11766, 10401, 10400, 10399, 10398, 10397, 
10396, 10395, 10394, 10181, 10180, 10179, 8787, 8740, 8739, 8729, 8708, 
8703, 8680, 8005, 8004, 8003, 8002, 8001, 8000, 7999, 7998, 7571, 7570, 
7569, 7568, 7567, 7557, 7556, 7555, 7554, 7539, 6666, 6665, 6664, 6663, 
6662, 6661, 6660, 6659, 6658, 6657, 4727, 4726, 4725, 4724, 4723, 4722, 
4721, 4720, 4719, 4718, 95073, 95122, 95243, 95288, 95340, 95406, 95493, 
95533, 95612, 95676, 95707, 95815, 95879, 95920, 96007, 96064, 96105, 
96187, 96226, 96335, 96394, 96434, 96519, 96580, 127058, 127059, 127060, 
127061, 127062, 127063, 124279, 124280, 124281, 124282, 124283, 124284, 
124285, 124286, 124287, 124288, 124289, 124290, 124291, 124292, 124293, 
124294, 124295, 124296, 98231, 98232, 98233, 98234, 98235, 95069, 95126, 
95210, 95283, 95369, 95390, 95495, 95551, 95620, 95691, 95758, 95808, 
95878, 95897, 96014, 96046, 96128, 96189, 96237, 96328, 96396, 96440, 
96512, 96581, 46630, 46626, 46625, 46620, 48153, 48170, 90737, 90738, 
90743, 90888, 91048, 91071, 129388, 129389, 129390, 129391, 5534, 5468, 
5212, 5211, 3327, 3325, 3323, 3321, 125815, 125816, 125817, 48895, 
49162, 49618, 51321, 51555, 51556, 51558, 51559, 52557, 52558, 52559, 
52560, 52561, 52562, 52563, 52564, 52578, 52579, 52580, 52581, 52582, 
52583, 84021, 84022, 84025, 84078, 89905, 89906, 90225, 90229, 90263, 
90324, 90329, 90349, 90407, 90431, 90434, 86198, 86200, 86201, 86202, 
86203, 86921, 86922, 87042, 87043, 88652, 89135, 89141, 89145, 89172, 
89173, 89175, 89176, 89177, 89200, 89201, 89202, 89203, 1395, 1392, 
1383, 1382, 1377, 1374, 1369, 1361, 1345, 1317, 1215, 1162, 1158, 
128091, 128092, 128093, 102229, 102230, 102231, 102232, 102233, 102236, 
102237, 102238, 102239, 102240, 102241, 102242, 102243, 102245, 102246, 
102247, 102249, 102250, 102251, 102252, 102253, 102254, 102255, 102257, 
102258, 102259, 102260, 102261, 102262, 102263, 102264, 102265, 102267, 
102268, 102269, 102270, 102271, 102272, 102273, 102274, 102275, 102276, 
102278, 102280, 102281, 102285, 102290, 102308, 102312, 102314, 102315, 
102316, 102318, 102319, 102320, 102321, 36848, 36849, 36850, 36851, 
36852, 36853, 36854, 36855, 36856, 36857, 36858, 36859, 36860, 36861, 
36862, 36863, 36864, 36865, 36866, 36867, 36868, 36869, 36870, 36871, 
36872, 36873, 36874, 36875, 36876, 36877, 36878, 36879, 36880, 36881, 
36882, 36883, 36884, 36885, 36886, 36887, 36888, 36889, 36890, 36891, 
36892, 36893, 36894, 36895, 36896, 21784, 21783, 21782, 21781, 21780, 
21779, 21777, 27102, 27101, 27100, 27099, 27098, 27097, 27096, 27095, 
27094, 27093, 27092, 27091, 27090, 27089, 27088, 27087, 27086, 27085, 
123539, 123540, 123541, 123542, 123543, 123544, 123545, 123546, 123547, 
123549, 123550, 123551, 123552, 123553, 123554, 123555, 123556, 123557, 
123558, 123559, 123561, 123563, 35797, 35798, 35799, 35800, 35801, 
35805, 35806, 35807, 35808, 35809, 35813, 35814, 35815, 35818, 35819, 
35820, 35821, 35822, 35823, 35826, 35827, 35828, 35829, 35830, 32023, 
40600, 40607, 41295, 43669, 43913, 44264, 44605, 44737, 44743, 44745, 
44748, 44754, 44759, 44761, 44769, 44774, 44775, 44778, 45027, 45033, 
45040, 45064, 45071, 45081, 45088, 45098, 45147, 45149, 45158, 45163, 
45164, 45180, 45184, 37995, 38088, 38110, 38131, 38149, 38150, 38151, 
38152, 38153, 38154, 38155, 38156, 38157, 38158, 137494, 137495, 35655, 
35656, 35657, 35672, 35673, 35674, 35675, 35689, 35690, 35702, 35703, 
35721, 35722, 35723, 35790, 35791, 35792, 103301, 103302, 103303, 
103304, 103305, 103306, 103307, 103308, 103309, 103310, 103311, 103312, 
103313, 103314, 103315, 103316, 103317, 103318, 103319, 103320, 103324, 
103325, 103326, 103327, 103328, 103329, 103330, 103331, 103332, 126967, 
126968, 126969, 126970, 126971, 126972, 126973, 126974, 126975, 126976, 
126977, 126978, 126979, 126980, 98098, 98099, 98100, 98101, 98102, 
98103, 98104, 98105, 98106, 98107, 98108, 98109, 9201, 9198, 9197, 9196, 
9195, 9060, 9023, 9011, 9010, 9009, 8999, 8953, 8950, 8948, 8947, 8897, 
8896, 8894, 8875, 8874, 8872, 8866, 8862, 8847, 8845, 8809, 8362, 8346, 
8345, 8342, 8327, 8269, 98798, 98799, 98800, 98801, 98802, 98807, 98808, 
98809, 98810, 98811, 98812, 98815, 98816, 92836, 92838, 123704, 123705, 
123706, 123707, 123708, 123709, 123714, 123715, 123716, 123718, 123719, 
123720, 123723, 123724, 123725, 123726, 123728, 8990, 8955, 8887, 8884, 
8859, 129155, 129156, 129157, 129158, 129159, 129160, 129161, 129162, 
129163, 21197, 21196, 21195, 21194, 21193, 21192, 21191, 21190, 21189, 
21188, 21186, 21185, 135674, 135673, 135672, 135671, 135670, 135669, 
135668, 135667, 135666, 135665, 135664, 135663, 135662, 135661, 135660, 
135659, 135658, 135657, 135656, 135655, 135654, 135653, 135652, 31760, 
38054, 38059, 38405, 41826, 41827, 6131, 5849, 5848, 5747, 5746, 5730, 
5728, 5727, 5726, 5722, 5325, 5234, 5230, 4566, 4565, 4562, 3757, 29446, 
29445, 29444, 29443, 29442, 29440, 29439, 29438, 29437, 29436, 29435, 
29434, 5471, 5270, 5264, 4609, 4608, 4604, 250, 129188, 129189, 129190, 
129191, 129192, 129193, 129194, 129195, 129196, 129197, 129198, 129199, 
129200, 129201, 36374, 36375, 36376, 36377, 36378, 36379, 36380, 27504, 
27503, 27502, 27501, 27500, 27499, 27498, 27497, 27496, 27495, 27470, 
27469, 27468, 27467, 27466, 27465, 27464, 27463, 27462, 27461, 27460, 
27459, 27458, 27457, 27456, 27455, 27454, 27453, 27452, 27451, 28991, 
28990, 28989, 28988, 28987, 28986, 28985, 28984, 28983, 28982, 28981, 
28980, 28979, 28978, 28977, 28976, 28975, 28974, 28973, 28972, 28971, 
28970, 28969, 28968, 28967, 28966, 28965, 28964, 28963, 28962, 28961, 
28960, 28959, 28958, 28957, 28956, 28955, 28954, 28953, 28952, 28951, 
28950, 28949, 28948, 28947, 28946, 28945, 28944, 28943, 28942, 28941, 
28940, 28939, 28938, 28937, 28936, 28935, 28934, 28933, 28932, 28931, 
28930, 28929, 28928, 28927, 28926, 28925, 28924, 28923, 28922, 28921, 
28920, 28919, 28918, 28916, 28915, 28914, 12854, 12853, 12852, 12851, 
3912, 3910, 3909, 3908, 3907, 3900, 3899, 3898, 3896, 3895, 3858, 3816, 
3700, 3082, 2987, 2835, 2737, 2645, 86373, 86376, 56700, 56701, 56703, 
56709, 56711, 56712, 56713, 56719, 56748, 125758, 128456, 32294, 32293, 
32292, 10572, 10315, 10050, 10047, 9946, 9945, 9865, 9863, 9861, 9860, 
9844, 9837, 9783, 9781, 9700, 9642, 9640, 9641, 9637, 9634, 9633, 37539, 
38688, 38741, 38864, 38968, 39535, 39546, 39547, 40185, 40198, 40204, 
40208, 40209, 6820, 6817, 6816, 6814, 6809, 10831, 10828, 10825, 10822, 
10819, 10046, 10041, 10039, 10028, 10026, 10019, 10015, 10005, 9913, 
19350, 84937, 84903, 20297, 19351, 19345, 19342, 17339, 105650, 105651, 
27122, 27121, 27120, 27119, 27118, 27117, 9267, 9265, 9081, 9080, 9077, 
8973, 8972, 8970, 8966, 8965, 8963, 8958, 8932, 8854, 8843, 8835, 8834, 
8833, 8813, 8705, 8340, 8261, 8260, 127815, 127816, 127817, 127818, 
127819, 127820, 127821, 32748, 32747, 32746, 32745, 32744, 32743, 32742, 
32741, 32740, 32739, 32738, 32737, 32736, 50423, 50424, 50425, 50426, 
50427, 50428, 50429, 50430, 50431, 50432, 50433, 50434, 50435, 50436, 
50437, 50438, 50439, 50440, 50441, 50442, 50443, 50444, 50445, 50446, 
50447, 50448, 50449, 50450, 13023, 13015, 13014, 13011, 13009, 13004, 
12999, 12989, 12983, 12981, 12975, 12971, 12962, 12961, 12958, 12957, 
12950, 12948, 12946, 12945, 12944, 12941, 12928, 12919, 12915, 12913, 
12836, 12405, 12383, 10296, 10295, 8520, 8519, 8518, 8517, 8516, 7940, 
7939, 7938, 7937, 7936, 7935, 7392, 6547, 6546, 6545, 6544, 6543, 6542, 
3365, 3364, 18003, 17920, 17919, 17610, 17862, 17859, 17727, 17724, 
17723, 17721, 18030, 18029, 18218, 18219, 18246, 18289, 18298, 18305, 
18319, 18324, 18326, 18328, 18501, 18519, 18522, 18994, 18998, 19162, 
19167, 19168, 19170, 19171, 27802, 132860, 132861, 30833, 30831, 30830, 
30829, 30827, 30825, 30823, 30696, 30691, 30689, 30687, 30685, 30684, 
30677, 30675, 30653, 8452, 38926, 38933, 28774, 28773, 28772, 28771, 
28770, 28769, 28768, 28767, 28766, 28765, 28764, 28763, 28762, 28761, 
131742, 131743, 131744, 131745, 131746, 131747, 1370, 1358, 1332, 1330, 
1233, 1190, 1159, 1155, 1099, 1098, 788, 38159, 38160, 38161, 38162, 
38163, 38164, 38165, 38166, 38167, 38169, 38170, 38171, 38172, 38173, 
38174, 38175, 21410, 21409, 21408, 21407, 21406, 21405, 21404, 21403, 
21402, 21401, 21400, 21399, 21398, 21397, 21396, 21395, 21394, 21393, 
21392, 21391, 21390, 21389, 45247, 45250, 45252, 104530, 104531, 104579, 
104580, 104581, 104582, 104583, 104584, 104585, 104586, 104588, 104589, 
104590, 104592, 104593, 104594, 104595, 104596, 104597, 104598, 104599, 
104601, 104602, 104603, 104604, 104605, 104606, 104607, 104608, 104609, 
104610, 104611, 104612, 13000, 12998, 12392, 12366, 12346, 12341, 12336, 
12302, 12300, 12298, 12296, 12295, 12294, 12276, 12275, 12267, 8408, 
7263, 2148, 2146, 2141, 2136, 2133, 2132, 2131, 2130, 2128, 395, 394, 
393, 127110, 127111, 127112, 107028, 107036, 107040, 107054, 107064, 
107065, 107066, 107067, 107105, 107106, 107107, 107108, 107109, 107110, 
107112, 107113, 107114, 107115, 107116, 107117, 107118, 132686, 132687, 
132688, 132689, 132690, 132691, 132692, 132693, 132694, 132695, 132696, 
132697, 132698, 132699, 132700, 132701, 132702, 132703, 132704, 132705, 
132706, 132707, 132708, 132709, 132710, 132711, 132712, 132713, 132714, 
132715, 132716, 132717, 132718, 132719, 95081, 95132, 95225, 95265, 
95321, 95374, 95481, 95525, 95623, 95672, 95721, 95799, 95873, 95909, 
95995, 96053, 96139, 96193, 96210, 96311, 96392, 96431, 96501, 96527, 
2778, 2776, 2712, 2708, 2706, 54440, 54441, 54442, 54596, 54598, 54599, 
54600, 54601, 54606, 54685, 54686, 57019, 59385, 61984, 62086, 89766, 
89767, 89768, 89769, 89770, 89771, 89772, 89910, 89913, 90394, 90395, 
89502, 89514, 89515, 89516, 89517, 89520, 89521, 89958, 89959, 89964, 
89965, 89966, 89967, 89971, 89973, 89976, 89977, 89978, 90115, 90149, 
90150, 90151, 16154, 16143, 16144, 16142, 16130, 16129, 16125, 16123, 
16121, 16110, 16102, 15819, 15603, 15495, 15490, 15488, 15422, 15416, 
15382, 15370, 23166, 23165, 23164, 23163, 23162, 23161, 23160, 29471, 
29470, 29469, 29468, 29467, 29466, 29465, 29464, 29463, 29462, 29461, 
29460, 29459, 29458, 29457, 29456, 29455, 29454, 29453, 29452, 29451, 
29450, 29449, 29448, 129474, 129475, 129476, 129477, 129478, 129479, 
102133, 102135, 13005, 12979, 12978, 12963, 12953, 12949, 12389, 11861, 
11860, 11859, 11857, 11787, 11786, 11783, 10449, 10448, 10447, 10445, 
10442, 10441, 10440, 10293, 10290, 8512, 8511, 8469, 8443, 7933, 7932, 
7929, 7928, 7391, 7389, 7387, 6540, 6539, 6537, 3363, 3361, 3360, 3359, 
100019, 100020, 100021, 100022, 100026, 100027, 4057, 4054, 4053, 4049, 
4045, 4034, 4022, 4021, 3988, 3979, 3966, 2543, 2516, 2035, 2004, 1997, 
1957, 1945, 1408, 1405, 1321, 1268, 1255, 1253, 1247, 1134, 1131, 857, 
100439, 100449, 100463, 100465, 100466, 100467, 100468, 100471, 100479, 
100564, 100580, 100768, 100838, 100843, 100845, 100846, 100848, 100851, 
100852, 100853, 100967, 100968, 100969, 100970, 100971, 100972, 100973, 
100974, 100975, 100990, 100991, 100992, 100993, 100994, 100995, 100996, 
100997, 100998, 101004, 101005, 101006, 101007, 101008, 101009, 101010, 
101011, 101012, 101013, 101019, 101020, 101021, 101022, 101023, 101024, 
101025, 18390, 19049, 19059, 19060, 19067, 19068, 19069, 19075, 19079, 
19080, 19082, 19083, 121854, 121855, 121856, 121857, 121858, 121859, 
121861, 121862, 121863, 121864, 121865, 121866, 121867, 121868, 121869, 
121870, 121871, 121872, 121873, 121874, 121875, 121876, 121877, 121878, 
121879, 121880, 121881, 121882, 121883, 121884, 121885, 121886, 121887, 
121888, 121889, 121890, 121891, 121892, 121893, 121894, 121895, 121896, 
121897, 121898, 121899, 121900, 121901, 121902, 121903, 121904, 121905, 
121906, 121907, 121908, 121909, 121910, 121911, 121912, 121913, 121914, 
121915, 121916, 121917, 121918, 121919, 121920, 121921, 121922, 121923, 
121924, 121925, 121926, 121927, 121928, 121929, 121930, 121931, 121932, 
121933, 121934, 121935, 121936, 121937, 121938, 121939, 121940, 121941, 
121942, 121943, 121944, 121945, 121946, 121947, 121948, 121949, 121950, 
121951, 121952, 121953, 121954, 121955, 121956, 121957, 121959, 121960, 
121961, 121962, 121963, 121964, 121965, 121966, 121967, 121968, 121969, 
121970, 121971, 121972, 121973, 121974, 121975, 121976, 121977, 121978, 
121979, 121980, 121981, 121982, 121983, 121984, 121985, 121986, 121987, 
121988, 121989, 121990, 121991, 121992, 121993, 121994, 121995, 121996, 
121997, 121998, 121999, 122000, 122001, 122002, 122003, 122004, 122005, 
122006, 122007, 122008, 122009, 122010, 122011, 122012, 122013, 122014, 
122015, 122016, 122017, 122018, 122019, 122020, 122021, 122022, 122023, 
122024, 122025, 122026, 122027, 122028, 122029, 122030, 122031, 122032, 
122033, 122034, 122035, 122036, 122037, 122038, 122039, 122040, 122041, 
122042, 122043, 122044, 122045, 122046, 122047, 122048, 122049, 122050, 
122051, 122052, 122053, 122054, 122055, 122056, 122057, 122058, 122059, 
122060, 122061, 122062, 122063, 122064, 122065, 122066, 122067, 122068, 
122069, 122070, 122071, 122072, 122073, 122074, 122075, 122076, 122077, 
122078, 122079, 122080, 122081, 122082, 122083, 122084, 122085, 122086, 
122087, 122088, 122089, 122090, 122091, 122092, 122093, 122094, 122095, 
122096, 122097, 122098, 122099, 122100, 122101, 122102, 122103, 122104, 
122105, 122106, 122107, 122108, 122109, 122110, 122111, 122112, 122113, 
122114, 122115, 122116, 122117, 122118, 122119, 122120, 122121, 122122, 
122123, 122124, 122125, 122126, 122127, 122128, 122129, 122130, 122131, 
122132, 122133, 122134, 122135, 122136, 122137, 122138, 122139, 122140, 
122141, 122142, 122143, 122144, 122145, 122146, 122147, 122148, 122149, 
122150, 122151, 122152, 122153, 122154, 122155, 122156, 122157, 122158, 
122159, 122160, 122161, 122162, 33120, 33119, 33118, 33117, 33116, 
33114, 5083, 5081, 5080, 5079, 5076, 5075, 5074, 5073, 5068, 5064, 5062, 
22554, 22553, 22552, 22551, 22550, 22549, 22548, 22547, 22546, 22545, 
22544, 22543, 22542, 22541, 22540, 22539, 22538, 22537, 22536, 22535, 
22534, 22533, 22532, 22531, 22530, 22529, 22528, 22527, 22526, 22525, 
22524, 22523, 22522, 22521, 22520, 22519, 22518, 22517, 22516, 22515, 
22514, 22513, 22512, 22511, 22510, 22509, 22508, 22507, 22506, 22505, 
22504, 22503, 22502, 22501, 22500, 22499, 22498, 22497, 22496, 22495, 
22494, 22493, 22492, 22490, 22489, 22488, 22487, 22486, 22485, 22484, 
22483, 22482, 22481, 22480, 22479, 22478, 22477, 22476, 22475, 22474, 
22472, 22471, 22470, 22469, 22468, 22467, 22466, 22465, 22464, 22463, 
22462, 22461, 22460, 22459, 22458, 22457, 22456, 22455, 22454, 22453, 
22452, 22450, 22449, 22448, 22447, 22446, 22445, 22444, 22443, 22442, 
22441, 22440, 22439, 22438, 22437, 22436, 22435, 22434, 22433, 22432, 
22431, 22430, 22429, 22428, 22427, 22426, 22425, 22424, 9310, 9308, 
9302, 9299, 9298, 9105, 9103, 9095, 8951, 8945, 8398, 16935, 16928, 
16909, 16907, 16903, 16893, 16890, 16888, 10269, 10267, 10264, 10256, 
10247, 10222, 10220, 10219, 10218, 10217, 10208, 10207, 9949, 9922, 
9921, 9920, 9815, 9632, 23228, 23227, 23226, 23225, 23224, 23223, 23222, 
23221, 23220, 23219, 23218, 23217, 23216, 23215, 120973, 120974, 120976, 
51237, 51238, 51239, 51240, 51241, 51242, 51243, 51244, 51245, 51246, 
51247, 51248, 51249, 51250, 51251, 51252, 51253, 51254, 51255, 51256, 
122688, 122689, 97446, 97447, 97448, 97449, 97450, 97451, 97452, 97453, 
97454, 97455, 97456, 97457, 97458, 3879, 3809, 3099, 3048, 3044, 3041, 
3039, 3035, 3034, 2896, 2849, 2846, 2845, 2807, 2804, 2751, 2750, 2748, 
2663, 2662, 13013, 12229, 12221, 12153, 12151, 12149, 12148, 12144, 
12139, 12136, 12134, 12130, 12120, 12116, 12086, 12068, 11855, 11853, 
11852, 11782, 11781, 11778, 11774, 10439, 10438, 10436, 10434, 10432, 
10286, 10285, 10284, 7923, 7922, 7921, 7366, 7361, 7360, 6489, 6488, 
6481, 124401, 124402, 124403, 124404, 33172, 33171, 33170, 33169, 33168, 
33167, 33166, 23462, 23461, 23460, 23459, 99014, 99015, 99016, 99017, 
99028, 99172, 121358, 32288, 32287, 32286, 32285, 32284, 32283, 32282, 
32281, 32280, 32279, 32278, 32277, 32276, 32275, 32274, 3929, 3928, 
3918, 3916, 3839, 32178, 32177, 32176, 32175, 32174, 43127, 43128, 
43129, 43130, 43131, 43132, 43133, 43134, 43135, 43136, 43137, 43138, 
43139, 43140, 43141, 43142, 43143, 43144, 43145, 41035, 41036, 41037, 
41038, 41039, 41040, 41041, 41042, 41043, 41044, 41045, 41046, 41047, 
41048, 41049, 95175, 95085, 95083, 95082, 95198, 95424, 95363, 95360, 
95345, 95307, 95303, 95300, 95215, 95201, 95178, 95176, 96488, 95845, 
95702, 95773, 96468, 96461, 95771, 96457, 96456, 96380, 96379, 95700, 
95698, 96377, 96310, 96296, 95768, 96291, 95655, 96271, 96266, 96263, 
95653, 96156, 96164, 95634, 96154, 96131, 96104, 95582, 96099, 95579, 
95577, 96081, 95563, 95557, 95553, 95470, 95966, 96066, 95963, 95472, 
95962, 95454, 95435, 95433, 95952, 95950, 95944, 95863, 95862, 96589, 
96588, 96587, 29984, 29983, 121739, 121740, 121746, 121747, 126440, 
126441, 126442, 126443, 126444, 126445, 126446, 126447, 54620, 56697, 
78269, 85510, 86416, 86510, 91845, 91848, 91849, 91879, 91887, 91893, 
91948, 91953, 92064, 92078, 92091, 92094, 92154, 92161, 92216, 92221, 
92228, 26346, 26345, 26344, 26284, 26283, 26282, 26279, 26273, 26272, 
26271, 26270, 26269, 26255, 26251, 16952, 16855, 16854, 16852, 16831, 
16830, 16828, 16827, 16825, 16826, 16824, 16821, 16820, 16819, 16817, 
16777, 16763, 16760, 16750, 16748, 16744, 16743, 16740, 16723, 16697, 
16696, 16695, 16694, 16692, 16684, 16683, 16682, 16681, 16680, 16679, 
16678, 16677, 16676, 16663, 16662, 16658, 16657, 16656, 16654, 16653, 
16652, 16651, 16650, 16645, 16640, 16641, 16639, 16638, 16637, 16636, 
16635, 16634, 16633, 16631, 16629, 16628, 16625, 16617, 16616, 16569, 
16095, 16091, 16090, 16089, 16087, 16085, 16086, 16066, 15560, 15561, 
15559, 15555, 15557, 15501, 15489, 15450, 15359, 31922, 3813, 3811, 
3810, 3047, 3042, 3032, 2895, 2894, 2892, 2891, 2890, 2852, 2851, 2850, 
2847, 2803, 2749, 2747, 2667, 2661, 2659, 116761, 116762, 116763, 70003, 
70002, 70001, 70000, 69996, 69995, 69992, 69990, 69976, 69973, 30262, 
30260, 30154, 30151, 30149, 30147, 56654, 56653, 56652, 56651, 56650, 
56649, 56648, 56647, 56646, 56644, 56643, 56642, 56641, 56640, 56639, 
56638, 56637, 56636, 56635, 56634, 56633, 56632, 56631, 56630, 56629, 
128061, 128062, 128063, 128064, 93002, 93099, 93174, 93177, 93195, 
93278, 93279, 93281, 93288, 93306, 93307, 93354, 93356, 93358, 93360, 
93364, 93474, 93525, 93534, 93543, 127237, 127238, 127239, 127240, 
127241, 127242, 127243, 127244, 127245, 127246, 127247, 127248, 127249, 
127250, 127251, 127252, 127253, 127254, 127255, 127256, 127257, 127258, 
127259, 127260, 127261, 127262, 127263, 127264, 127265, 127266, 127267, 
127268, 127269, 127270, 127271, 22116, 22115, 22114, 22113, 22112, 
22111, 22110, 22109, 22108, 22107, 22106, 22105, 22104, 22103, 22102, 
22101, 22100, 22099, 22098, 22097, 22096, 22095, 22094, 22093, 22092, 
22091, 22090, 22089, 22088, 22087, 22086, 22085, 22084, 22083, 22082, 
22081, 22080, 22079, 22078, 22077, 22076, 22075, 22074, 22073, 22072, 
22071, 22070, 22069, 22068, 22067, 22066, 22065, 22064, 22063, 126719, 
126720, 126721, 126722, 126723, 11167, 11160, 11158, 11126, 11039, 
11038, 11034, 11033, 11028, 11027, 11026, 10929, 10934, 10936, 10915, 
10914, 10913, 10912, 10824, 10814, 10813, 10321, 10320, 9715, 9604, 
129418, 129419, 129420, 129421, 129422, 129423, 129424, 129425, 129426, 
129427, 129428, 129429, 129430, 129431, 125759, 128457, 24378, 24377, 
24376, 24375, 24374, 24373, 24372, 24371, 24370, 24369, 24368, 24367, 
24366, 24365, 24364, 24363, 24362, 24361, 24360, 24359, 24358, 24357, 
24356, 24355, 24354, 24353, 24352, 131672, 131673, 131674, 131675, 
131676, 131677, 131678, 131679, 131680, 131681, 131682, 131683, 131684, 
131685, 131686, 131687, 131688, 131689, 131690, 131691, 131692, 131693, 
131694, 131695, 131696, 131697, 131698, 6842, 6837, 6835, 6824, 6792, 
6780, 6768, 6247, 6241, 6239, 6238, 6237, 6236, 6235, 6232, 6231, 6230, 
5855, 5834, 5824, 5821, 5687, 5608, 101964, 101968, 101969, 101970, 
101971, 101978, 101980, 101981, 101982, 101983, 101985, 101986, 101987, 
101988, 101989, 101990, 101991, 101992, 101993, 101994, 101995, 101996, 
102002, 102006, 102007, 102008, 102009, 102010, 102011, 102012, 102013, 
102014, 102015, 102016, 102017, 102018, 102019, 102020, 102021, 51211, 
51212, 51213, 51214, 51215, 51216, 51217, 51218, 51219, 51220, 51221, 
51222, 51223, 51224, 51225, 51226, 51227, 51228, 51229, 51230, 39121, 
39123, 39151, 39152, 39153, 39163, 39170, 39183, 39237, 39281, 39293, 
39399, 39563, 39573, 39619, 40511, 40616, 40624, 40809, 133638, 133639, 
133640, 133641, 133642, 133643, 133644, 133645, 89482, 89489, 89491, 
89493, 89495, 89496, 89506, 89509, 89510, 89837, 89838, 89839, 89941, 
89950, 89951, 89953, 89956, 89957, 89962, 89970, 90020, 90021, 90023, 
90025, 90095, 90096, 90097, 90102, 90103, 90104, 90109, 90110, 90111, 
45548, 45550, 45551, 45553, 45555, 54690, 56314, 56317, 59384, 62085, 
90293, 29973, 29972, 29971, 29970, 29969, 29968, 29967, 29966, 29965, 
29964, 29963, 29962, 29961, 29960, 30053, 30056, 30058, 38026, 38028, 
38384, 38385, 38387, 38388, 41760, 41930, 41997, 41998, 42000, 42001, 
42030, 42034, 42060, 42062, 42063, 42066, 42088, 42089, 42090, 42091, 
42105, 42107, 42109, 44817, 44819, 44820, 44828, 44836, 44838, 44855, 
44952, 15028, 15027, 15026, 15025, 15024, 15023, 15022, 15021, 15020, 
15019, 15018, 15017, 15016, 15015, 15014, 15013, 15012, 15011, 15010, 
15009, 15008, 15007, 15006, 15005, 15004, 15003, 15002, 15001, 15000, 
14999, 14998, 14997, 14996, 14995, 14994, 14993, 14992, 14991, 14990, 
14988, 14987, 92621, 92623, 92625, 92626, 92627, 92628, 54234, 54235, 
54236, 22159, 22158, 22157, 22156, 22155, 22154, 22153, 22152, 22151, 
22150, 22149, 22148, 22147, 22146, 22145, 22144, 22143, 22142, 22141, 
22140, 22139, 22138, 22137, 22136, 22135, 22134, 22133, 22132, 22131, 
22130, 22129, 22128, 22127, 22126, 22125, 22124, 22123, 22122, 22121, 
22120, 22119, 22118, 22117, 46629, 46627, 46621, 48094, 48152, 48168, 
48172, 90740, 90744, 90746, 90881, 90882, 90883, 90885, 90887, 90889, 
91011, 91012, 91013, 91014, 91015, 91016, 91017, 91018, 91019, 91045, 
91049, 91070, 14836, 14822, 14820, 14793, 123963, 123964, 123965, 
123966, 123967, 123981, 123990, 123991, 123993, 123994, 123996, 123997, 
123998, 132392, 132393, 132394, 132395, 132396, 132397, 132398, 132399, 
132400, 132401, 132403, 132404, 132405, 129325, 129326, 129327, 129328, 
129329, 129330, 129331, 129332, 129333, 129334, 129335, 129336, 129337, 
129338, 129339, 129340, 129341, 129342, 129343, 129344, 129345, 129346, 
129347, 129348, 129349, 129350, 129351, 129352, 129353, 129354, 129355, 
129356, 129357, 129358, 129359, 129360, 129361, 129362, 129363, 129364, 
129365, 129366, 129367, 129368, 129369, 129370, 129371, 129372, 129373, 
129374, 129375, 129376, 129377, 129378, 129379, 129380, 129381, 129382, 
129383, 129384, 129385, 129386, 43181, 43182, 43183, 43184, 43185, 
43186, 43187, 43188, 43189, 43190, 43191, 43192, 43193, 43194, 43195, 
43196, 43197, 43198, 43199, 25130, 25129, 25128, 25127, 25126, 25125, 
25124, 25123, 25122, 25121, 25120, 25119, 25118, 25117, 25116, 25115, 
25114, 25113, 25112, 25111, 25110, 25109, 25108, 25107, 25106, 25105, 
25104, 25103, 25102, 25101, 25099, 25098, 25097, 25096, 25095, 25094, 
25093, 25092, 25091, 25090, 25089, 25088, 25087, 25086, 25085, 25084, 
25083, 25082, 25081, 25080, 25079, 25078, 25077, 25076, 25075, 25074, 
25073, 25072, 25071, 25070, 25069, 25068, 25065, 25010, 24983, 24982, 
24981, 24980, 24979, 24978, 24977, 24975, 24974, 24973, 24972, 24971, 
24970, 24969, 24968, 24967, 24966, 24965, 24964, 24963, 24962, 24961, 
24960, 24959, 24958, 24957, 24956, 24955, 24954, 24953, 24952, 24951, 
24950, 107491, 107492, 131075, 131077, 19808, 19807, 19806, 19805, 
19804, 19803, 19802, 19801, 19800, 19799, 19798, 19797, 19796, 19795, 
19794, 19793, 19792, 19791, 19790, 19789, 19788, 19787, 19786, 19785, 
19784, 19783, 19782, 19781, 16198, 16197, 16196, 16195, 16194, 16193, 
16192, 15217, 127558, 127559, 127560, 102792, 102810, 102811, 102812, 
102813, 102814, 102815, 102816, 102817, 102818, 102819, 102820, 34205, 
34582, 37836, 37837, 38752, 38768, 38769, 38782, 38816, 38819, 38853, 
38898, 41703, 41712, 42110, 42115, 42122, 42823, 42825, 42828, 42832, 
42834, 42845, 42853, 42864, 42869, 130262, 130263, 130264, 130265, 
130266, 130267, 130268, 130269, 130270, 130271, 37379, 37380, 37381, 
37382, 37383, 37384, 3890, 2783, 2734, 2726, 2638, 2636, 102667, 102668, 
102669, 102670, 102671, 102674, 102675, 102676, 102677, 102678, 102679, 
102680, 102682, 102683, 102684, 102686, 121553, 121554, 121561, 21590, 
21589, 21588, 130112, 130113, 130114, 130115, 130116, 130117, 30396, 
30351, 30344, 30319, 30318, 30317, 30315, 30274, 30269, 30219, 30164, 
30156, 30155, 30400, 31797, 31993, 31997, 33448, 33449, 33453, 33476, 
33478, 137605, 137606, 137607, 137608, 137609, 137610, 42733, 42734, 
42735, 42736, 97565, 97566, 97567, 97568, 97569, 97570, 97571, 97572, 
97573, 97579, 97580, 97581, 97582, 97583, 97584, 97585, 97586, 97587, 
97588, 97594, 97595, 97596, 97597, 97598, 97599, 97600, 97602, 97603, 
97604, 97605, 97606, 97607, 97608, 97609, 97610, 97611, 97612, 97613, 
97614, 97615, 97616, 97617, 97618, 97619, 97620, 97621, 97622, 97623, 
97624, 97625, 97626, 97627, 97628, 97629, 97630, 97631, 31286, 31285, 
31284, 31283, 31282, 31281, 31280, 31279, 31278, 31277, 31270, 31267, 
31265, 31264, 31263, 31259, 31258, 31255, 31080, 31044, 30893, 30892, 
30891, 30890, 30765, 30764, 30763, 30762, 30535, 30515, 30493, 30492, 
30462, 25164, 31457, 31460, 31461, 31462, 33844, 33851, 33853, 33855, 
33858, 33859, 34020, 34096, 34135, 35245, 31317, 31182, 31177, 31071, 
30979, 18632, 31439, 31474, 31475, 31584, 31692, 33764, 34009, 106847, 
106848, 106849, 106850, 106851, 128565, 128566, 128567, 128568, 128569, 
128570, 128571, 128572, 128573, 128574, 128575, 128576, 5502, 5501, 
5477, 5474, 4628, 3286, 3285, 1077, 1050, 854, 853, 755, 629, 524, 
36897, 36898, 36899, 36900, 36901, 36902, 36903, 36904, 36905, 36906, 
36907, 36908, 36909, 36910, 36911, 36912, 36913, 36914, 36915, 36916, 
36917, 36918, 36919, 36920, 36921, 36922, 36923, 36924, 36925, 36926, 
36927, 36928, 36929, 36930, 36931, 36932, 36933, 36934, 36935, 36936, 
36937, 36938, 36939, 36940, 36941, 36942, 36943, 36944, 36945, 36946, 
36947, 36948, 36949, 36950, 36951, 36952, 36953, 36954, 36955, 36956, 
36957, 36958, 42899, 42900, 42901, 42902, 42903, 95088, 95093, 95094, 
95140, 95142, 95148, 95182, 95186, 95187, 95255, 95257, 95260, 95310, 
95312, 95384, 95398, 95401, 95437, 95443, 95445, 95502, 95508, 95515, 
95576, 95588, 95592, 95631, 95641, 95642, 95711, 95713, 95723, 95776, 
95778, 95779, 95828, 95832, 95840, 95910, 95913, 95915, 95968, 95976, 
95979, 96019, 96021, 96023, 96111, 96113, 96114, 96147, 96158, 96170, 
96243, 96244, 96245, 96282, 96286, 96295, 96342, 96353, 96404, 96405, 
96408, 96472, 96474, 96476, 96534, 96537, 96542, 37987, 37988, 37989, 
37990, 37991, 37992, 37993, 37994, 6099, 6094, 5001, 4981, 4978, 4965, 
4439, 32568, 32567, 32566, 32565, 32564, 32563, 32562, 32561, 32560, 
32559, 32558, 32557, 32556, 32555, 32554, 32553, 32552, 32551, 32550, 
32549, 32548, 32547, 32546, 32545, 32544, 32543, 32542, 32541, 32540, 
32539, 32538, 32537, 32536, 32535, 32534, 32533, 32532, 32531, 32530, 
32529, 14127, 103272, 103273, 103274, 103275, 103276, 103277, 103279, 
103280, 103281, 103282, 103283, 103284, 33225, 33224, 33223, 33222, 
33221, 33220, 33219, 33218, 33217, 33216, 30036, 30037, 37919, 37920, 
44749, 44758, 44878, 44880, 44885, 99765, 99766, 99767, 99768, 99769, 
99770, 99773, 99774, 99777, 99778, 99780, 99781, 99782, 99783, 99786, 
99787, 99789, 99791, 27706, 27705, 27704, 27701, 27700, 27699, 27698, 
27696, 27695, 27694, 27693, 27690, 27689, 135621, 135620, 135619, 
135618, 135617, 132974, 132975, 132976, 132977, 132978, 132979, 121788, 
121790, 121791, 121792, 121794, 121796, 121797, 121798, 121799, 121800, 
121801, 121802, 121803, 121804, 121805, 121807, 121808, 121810, 121811, 
121812, 121813, 121814, 121815, 121817, 121818, 121819, 121820, 121821, 
121822, 121823, 121824, 121825, 121826, 121827, 121828, 121829, 121830, 
121831, 133688, 133689, 133690, 133691, 133692, 133693, 34231, 34230, 
34229, 48884, 89895, 89896, 89897, 90055, 90056, 90059, 90143, 90154, 
90156, 90159, 90161, 90162, 90165, 90166, 90168, 90169, 90171, 90172, 
90175, 90269, 90270, 90274, 90276, 90287, 90294, 90299, 90300, 90306, 
90307, 90313, 90315, 90319, 90347, 90357, 31313, 31224, 31184, 30960, 
30919, 30836, 30820, 30819, 30790, 30789, 30496, 30495, 30467, 30466, 
18622, 18621, 18620, 7887, 31570, 31650, 31674, 33910, 37029, 20719, 
20718, 20717, 20716, 20715, 20712, 20711, 20710, 20702, 20701, 20700, 
20699, 20698, 20697, 20696, 20695, 20694, 20693, 20692, 20691, 20690, 
20689, 20688, 101172, 101173, 101174, 101175, 101176, 101177, 101178, 
101179, 101180, 101181, 101182, 101183, 101184, 101185, 101186, 101187, 
101188, 101189, 101190, 101191, 101192, 101193, 101194, 101195, 101196, 
101197, 101198, 101199, 101200, 101201, 101202, 101203, 101204, 101205, 
101206, 101207, 101208, 101209, 101210, 101211, 101212, 101213, 101214, 
101215, 101216, 101217, 101218, 101219, 101220, 101221, 101222, 101223, 
101224, 101225, 101226, 101227, 101228, 101229, 101230, 101231, 101232, 
101233, 101234, 101235, 101237, 101238, 101239, 101240, 101241, 101242, 
101243, 101244, 101245, 101246, 101247, 101248, 101249, 101250, 101251, 
101252, 101253, 101254, 101255, 101256, 101257, 101258, 101259, 101260, 
101261, 101262, 101263, 101264, 101265, 101266, 101267, 101268, 101269, 
101270, 101271, 101272, 101273, 101274, 101275, 101276, 101277, 101278, 
101279, 101280, 101281, 101282, 101283, 101284, 101285, 101286, 101287, 
101288, 101289, 101290, 101291, 101292, 44740, 44741, 40188, 40201, 
40203, 40207, 40215, 40216, 89263, 89264, 89268, 89271, 96942, 96943, 
96947, 96951, 96952, 96953, 96967, 97015, 97090, 97103, 97104, 97105, 
97106, 97107, 97108, 97109, 97110, 9263, 9262, 9260, 9257, 9253, 9251, 
9249, 9247, 9246, 9245, 9243, 9241, 9239, 9165, 9162, 9161, 9118, 9076, 
9074, 9058, 9057, 9054, 9053, 9050, 8944, 8942, 8941, 8940, 8931, 8817, 
8816, 8815, 8730, 8723, 8717, 8715, 8714, 8712, 8711, 8710, 8709, 8696, 
8695, 8689, 8341, 8338, 8307, 122544, 122545, 122546, 122547, 122548, 
122549, 122550, 122551, 123747, 123748, 123749, 123750, 123751, 123752, 
123753, 131793, 131794, 131795, 131796, 131797, 131807, 131808, 131809, 
131810, 131811, 131812, 131813, 31363, 31298, 31295, 31168, 31094, 
31042, 30938, 30885, 30779, 30766, 31444, 31429, 31675, 31677, 31679, 
33898, 33992, 33994, 34100, 35225, 37022, 37023, 37034, 37037, 31237, 
31236, 31599, 31602, 31603, 31605, 31676, 31681, 31708, 31712, 31718, 
33848, 33866, 33869, 13549, 13548, 13547, 13546, 13545, 13544, 13543, 
13542, 13541, 13540, 13539, 13538, 13537, 13536, 13535, 13534, 13533, 
13532, 13531, 13530, 13529, 13528, 13527, 13526, 13525, 13524, 13523, 
13522, 93261, 93263, 93266, 93282, 93284, 93502, 93506, 93507, 93510, 
93512, 93528, 93529, 93531, 56722, 56729, 56750, 56781, 56792, 56797, 
91257, 91261, 91265, 91268, 91277, 91286, 91290, 26986, 26985, 26984, 
26983, 26982, 26981, 26980, 26979, 26976, 26974, 127201, 127202, 127203, 
127204, 127205, 127206, 23097, 23096, 23095, 23094, 23093, 23092, 23091, 
23090, 23089, 23088, 52960, 52961, 52964, 52966, 54257, 54258, 54259, 
54262, 92073, 92074, 92331, 17974, 17930, 17925, 17924, 17923, 17912, 
17738, 18027, 18026, 18082, 18164, 18414, 19149, 85074, 85073, 88161, 
88162, 129587, 129588, 129589, 129590, 129591, 129592, 129593, 129594, 
129595, 129596, 129597, 129598, 129599, 129600, 129601, 129602, 129603, 
129604, 129605, 129606, 129607, 129608, 129609, 129610, 129611, 129612, 
129613, 129614, 129615, 129616, 129617, 129618, 129619, 129620, 129621, 
129622, 129623, 129624, 129625, 129626, 129627, 129628, 129629, 129630, 
129631, 129632, 129633, 129634, 129635, 129636, 129637, 16213, 16212, 
16211, 16210, 16209, 16208, 16206, 16205, 16204, 16203, 16214, 16215, 
16216, 16217, 16218, 16219, 16220, 16221, 16222, 16223, 16225, 39924, 
39925, 39926, 39928, 39929, 40069, 40228, 40229, 40233, 40234, 40236, 
40243, 40244, 40340, 40342, 40406, 40407, 40411, 99805, 99810, 99825, 
99826, 99827, 99828, 99829, 99830, 99831, 99832, 99833, 99834, 99835, 
99836, 99837, 99838, 99839, 99840, 99841, 99842, 99843, 99844, 99845, 
99846, 99847, 99848, 99849, 99850, 99851, 99857, 99864, 99866, 99867, 
99868, 99874, 99875, 99876, 99877, 99878, 99879, 99880, 99881, 99882, 
99883, 99884, 99885, 99886, 99887, 99888, 99889, 99890, 99891, 99892, 
99893, 99894, 99895, 99896, 99897, 99898, 99899, 99900, 99901, 99902, 
99903, 99904, 99905, 99906, 99909, 99910, 99911, 99912, 99913, 99914, 
99915, 99916, 99917, 99918, 99919, 99920, 99921, 99922, 99923, 99924, 
99925, 99926, 99927, 99928, 99929, 99930, 99931, 99932, 99933, 99934, 
99935, 99936, 99937, 99938, 99940, 99941, 99942, 99943, 99944, 99945, 
99946, 99947, 99948, 99949, 99950, 99951, 99952, 99953, 99954, 99956, 
99957, 99958, 99959, 99960, 99962, 99964, 99965, 99966, 99967, 99968, 
99969, 99970, 99971, 99972, 99973, 99974, 99975, 99976, 99977, 99978, 
99979, 99980, 99981, 99982, 99983, 99984, 99985, 99986, 99987, 99988, 
99989, 99990, 99991, 99992, 99993, 99994, 99995, 99996, 99997, 99998, 
99999, 100000, 100001, 100002, 100003, 100004, 100005, 100006, 100007, 
100012, 100013, 100014, 100015, 12187, 12186, 12185, 12183, 12182, 7344, 
41556, 41557, 41558, 41559, 41560, 41561, 41562, 41563, 41564, 41565, 
41566, 41567, 41568, 41569, 41570, 41571, 41572, 41573, 41574, 41575, 
41576, 41577, 41578, 41579, 41580, 41581, 41582, 41583, 41584, 41585, 
41586, 128042, 128043, 128044, 128045, 128046, 128047, 128048, 128049, 
128050, 128051, 128052, 128053, 11166, 11060, 11059, 10926, 10924, 
10923, 10922, 10921, 10728, 10626, 10331, 10202, 10201, 10004, 9899, 
9847, 9848, 9757, 9714, 9684, 9682, 9585, 9492, 23275, 23274, 15078, 
15077, 93091, 93338, 93346, 93366, 93367, 93484, 93504, 93514, 93517, 
38186, 38187, 38188, 38189, 38190, 38191, 38192, 38193, 38194, 38195, 
38196, 38197, 38198, 38199, 38200, 38201, 38203, 38204, 38205, 38209, 
38210, 38211, 38212, 38213, 38215, 38216, 107591, 107592, 107593, 
107594, 107595, 107596, 107601, 107603, 107604, 107606, 122780, 122781, 
122782, 122783, 122784, 122785, 122786, 122787, 122788, 122789, 47256, 
45932, 90586, 90590, 90595, 90812, 48804, 48803, 48802, 48801, 48800, 
48799, 48798, 48797, 48796, 48795, 48976, 48977, 4010, 4005, 3990, 3969, 
3959, 3958, 3951, 3950, 3949, 3948, 3947, 3946, 3945, 137542, 137543, 
137544, 137545, 137546, 124260, 124261, 124262, 124263, 104647, 104649, 
104650, 104651, 104652, 104653, 104655, 104656, 104657, 104658, 104659, 
104660, 104661, 104662, 104663, 104664, 104665, 104666, 104667, 104668, 
104669, 104670, 104671, 104672, 104673, 104675, 104676, 104677, 104678, 
104679, 104680, 104682, 104683, 104684, 104685, 104686, 104687, 104688, 
104689, 104690, 104691, 104692, 39559, 39562, 39564, 39566, 39567, 
39569, 39572, 40163, 40173, 40178, 40192, 40239, 98259, 98266, 98267, 
98271, 98273, 98282, 98285, 98286, 98288, 98303, 100257, 100270, 100271, 
100272, 100273, 100274, 100275, 100276, 100277, 100283, 100284, 100285, 
100286, 100287, 100288, 100289, 100290, 100291, 100292, 100293, 100294, 
100295, 100296, 100297, 100298, 100299, 100300, 100302, 100303, 100304, 
100305, 100306, 100307, 100308, 100309, 100310, 100311, 100312, 100313, 
100314, 100315, 100316, 100333, 100334, 100335, 100336, 121607, 121608, 
121609, 121610, 121611, 121612, 121613, 121615, 121616, 121617, 121618, 
121619, 121620, 121621, 121622, 121623, 121624, 121625, 121626, 121627, 
121628, 6781, 5766, 5750, 5328, 5327, 5326, 5324, 5239, 5238, 5237, 
5236, 5235, 5233, 5232, 5231, 4564, 4563, 3953, 3952, 3756, 3755, 2262, 
2194, 1320, 1302, 439, 97214, 97215, 97216, 97217, 97218, 97219, 97220, 
6112, 6101, 6097, 6092, 6091, 6080, 6077, 5939, 5936, 5935, 4906, 4829, 
4317, 4316, 104226, 104227, 104228, 104229, 104230, 104231, 104232, 
104233, 104234, 104235, 92620, 92622, 92624, 92629, 90237, 90342, 90352, 
90362, 90373, 90374, 90386, 90387, 90396, 90399, 30267, 30266, 30263, 
30261, 30259, 30152, 30148, 30146, 129901, 129902, 129903, 129904, 
100337, 100338, 100339, 100340, 100341, 100342, 100343, 100344, 100346, 
100350, 100351, 6744, 7457, 8308, 8310, 10158, 10168, 10173, 16461, 
16469, 17087, 17318, 17327, 17335, 17565, 17576, 17578, 17876, 17913, 
97397, 97399, 97400, 97409, 97410, 97411, 97412, 97413, 97414, 97415, 
97416, 97420, 97421, 97422, 97423, 97424, 97425, 97426, 97427, 25712, 
25711, 25710, 25709, 25708, 25707, 25706, 25705, 25704, 25703, 25702, 
25701, 25700, 25699, 25698, 25697, 25696, 25695, 25694, 25693, 25692, 
25691, 25690, 25689, 25688, 25687, 25686, 25685, 25684, 25683, 25682, 
25681, 25680, 25679, 25678, 25677, 25676, 25675, 25674, 25673, 25672, 
25671, 25670, 25669, 25668, 25667, 25666, 25665, 25664, 25663, 25662, 
25661, 25660, 25659, 25658, 25657, 25656, 25655, 25654, 25653, 25652, 
25651, 25650, 25649, 25648, 25647, 25646, 25645, 25644, 25643, 25642, 
25641, 25640, 25639, 25638, 25637, 25636, 25635, 25634, 25633, 25632, 
25631, 25630, 25629, 25628, 25627, 25626, 25625, 25624, 25623, 25622, 
25621, 25620, 25619, 25618, 25617, 25616, 25615, 25614, 25613, 25612, 
25611, 25610, 124923, 124924, 124925, 124926, 124927, 124928, 124929, 
124930, 124931, 124932, 124933, 124934, 124935, 124936, 124937, 31292, 
31289, 31200, 31197, 31170, 31142, 31011, 31009, 30954, 30800, 31498, 
31499, 31507, 31508, 31545, 17368, 17365, 17363, 17362, 17358, 17357, 
17354, 17345, 17342, 17305, 17304, 17299, 17298, 17290, 17114, 17111, 
17110, 17108, 17105, 17067, 17056, 17002, 16994, 16885, 16849, 16846, 
16844, 16843, 16842, 16841, 16800, 16799, 16798, 16783, 16782, 16781, 
16780, 16779, 16762, 16755, 16738, 16734, 16722, 16701, 16699, 16698, 
16686, 16672, 16632, 13022, 13002, 12988, 12980, 12977, 12970, 12969, 
12968, 12947, 12929, 12914, 12409, 12407, 12406, 12400, 12399, 12397, 
12376, 12334, 12321, 12319, 12277, 12264, 12196, 12167, 10478, 10477, 
10476, 10475, 10474, 10473, 10472, 10471, 10360, 10359, 10358, 10357, 
10356, 10355, 10354, 8535, 8534, 8533, 8532, 8531, 7957, 7956, 7955, 
7954, 7953, 7952, 7951, 7428, 7427, 7426, 7425, 7424, 7423, 7422, 6573, 
6572, 6571, 6570, 6569, 3403, 3402, 3401, 3400, 3399, 3398, 3397, 11188, 
11182, 11181, 11152, 11130, 11122, 11119, 11103, 11101, 11069, 11067, 
10938, 10888, 10887, 10874, 10867, 10860, 10859, 10852, 10844, 10840, 
10839, 10837, 10808, 10807, 10801, 10798, 10797, 10796, 10795, 10794, 
10793, 10792, 10786, 10751, 10750, 10749, 10748, 10741, 10737, 10716, 
10715, 10654, 10653, 10646, 10645, 10634, 10632, 10633, 10592, 10591, 
10326, 10327, 10325, 10324, 10323, 10322, 10241, 10239, 10191, 9977, 
9970, 9971, 9972, 9968, 9969, 9967, 9936, 9889, 9858, 9800, 9776, 9705, 
9701, 9681, 9651, 9542, 85011, 85010, 85009, 85008, 85007, 85006, 85005, 
49198, 49197, 49196, 49195, 5219, 5218, 5215, 5214, 3342, 3341, 3338, 
3336, 3334, 3332, 3333, 3330, 12938, 12937, 12935, 12281, 12280, 12279, 
12261, 12258, 12256, 12255, 12254, 12251, 7275, 4793, 4792, 103877, 
103878, 103879, 103880, 103881, 103882, 103883, 103884, 103885, 103886, 
103887, 103888, 103889, 103890, 103891, 103893, 103894, 103895, 103896, 
103897, 103898, 103899, 103900, 103901, 103902, 103903, 103904, 103905, 
103906, 103907, 103908, 103912, 103913, 103914, 103915, 103918, 103919, 
12408, 6468, 6465, 23054, 23053, 23052, 23051, 23050, 23049, 23048, 
23047, 23046, 23045, 23044, 23043, 23042, 23041, 23040, 23039, 23038, 
23037, 23036, 23035, 127825, 127826, 127827, 127828, 127829, 127830, 
127831, 127832, 127833, 127834, 127835, 127836, 127837, 127838, 127839, 
127841, 127842, 127843, 104340, 104343, 89121, 89189, 89190, 89193, 
89223, 89237, 89248, 98828, 98829, 98836, 98844, 98845, 98847, 98850, 
98851, 98852, 53752, 53753, 59514, 62988, 63144, 69694, 69695, 69696, 
69697, 81640, 82913, 84775, 84776, 84780, 84789, 84791, 84794, 84805, 
84808, 84810, 84818, 84959, 85498, 85501, 85573, 85586, 86328, 86408, 
86794, 86797, 90959, 90960, 91809, 91835, 91842, 91868, 91870, 91886, 
91935, 92029, 92036, 92039, 92063, 92096, 92125, 92126, 92129, 92131, 
92132, 92133, 92134, 92135, 92152, 92159, 92163, 92203, 92391, 128476, 
128477, 128478, 128479, 129823, 129824, 129825, 129826, 130414, 130415, 
130416, 130417, 41394, 41395, 41396, 41397, 41398, 41399, 41400, 41401, 
41402, 41403, 41404, 41405, 41406, 41407, 41408, 41409, 41410, 41411, 
41412, 41413, 41414, 41415, 41416, 41417, 41418, 126867, 126868, 126869, 
126870, 126871, 126872, 39141, 39416, 39417, 39419, 39420, 39421, 40638, 
40643, 40651, 66997, 67002, 68755, 68757, 81708, 89467, 89468, 89469, 
89471, 89472, 89474, 89475, 89479, 89481, 89488, 89914, 89916, 89920, 
89943, 89944, 89947, 90061, 90062, 90063, 90065, 90066, 90093, 90094, 
90099, 90145, 39378, 39384, 39654, 39655, 39660, 39669, 39673, 40293, 
40294, 40322, 40323, 40324, 40326, 40387, 85062, 85061, 131109, 131110, 
131111, 131112, 34691, 34690, 34689, 34688, 34687, 34686, 34685, 34684, 
34683, 34682, 34681, 34680, 34679, 34678, 34677, 34676, 34675, 34674, 
34673, 34672, 34671, 34670, 34669, 34668, 34667, 34666, 34665, 34664, 
34663, 34662, 34661, 34651, 34650, 34649, 34648, 34647, 34646, 34641, 
34640, 34639, 34638, 34637, 34636, 34635, 34634, 34633, 34632, 34631, 
34630, 34629, 34628, 34627, 34626, 34625, 34624, 34623, 34622, 34621, 
34620, 34619, 34618, 34617, 34616, 34615, 34614, 34613, 34612, 34611, 
34610, 34609, 99634, 99635, 99636, 99637, 99638, 99662, 99666, 99667, 
99668, 99669, 99670, 99671, 99672, 99673, 99674, 99675, 99676, 99677, 
99678, 86866, 86905, 86908, 86911, 89124, 89126, 89127, 89130, 89132, 
89197, 89216, 89217, 89235, 89236, 89242, 89252, 32129, 32128, 32127, 
32126, 32125, 32124, 32123, 32122, 32121, 32120, 32119, 32118, 32117, 
32116, 32115, 88228, 88229, 88230, 88231, 88232, 88233, 88234, 88235, 
88236, 88237, 28120, 28119, 28118, 28117, 28116, 28115, 28114, 28113, 
28112, 28111, 28110, 28109, 28108, 28107, 28106, 28105, 28104, 28103, 
28102, 28101, 28100, 28099, 28098, 28097, 28096, 28095, 28094, 28093, 
28092, 28091, 28090, 28089, 28088, 28087, 28086, 28085, 28084, 28083, 
28082, 28081, 28080, 28079, 28078, 28077, 28076, 28075, 28074, 28073, 
28072, 30418, 30417, 30416, 30415, 30414, 30413, 14601, 14596, 11637, 
100082, 100083, 100084, 100249, 100250, 100251, 100252, 100254, 17026, 
17019, 17014, 17008, 17001, 16930, 16927, 16908, 16892, 127064, 127065, 
127066, 21555, 21554, 21553, 21552, 21551, 124824, 124825, 124826, 
124827, 124828, 124829, 124830, 124831, 124832, 124833, 124834, 124835, 
124836, 124837, 124838, 124839, 124840, 124841, 124842, 124843, 124844, 
124845, 124846, 124847, 127681, 127682, 127683, 127684, 31427, 31426, 
31418, 31415, 31403, 31389, 31386, 31384, 31381, 31372, 31343, 31341, 
31228, 31160, 31124, 30878, 30877, 31450, 31433, 31518, 31724, 33769, 
33773, 133302, 133303, 133304, 133305, 103666, 103667, 103674, 103675, 
103676, 103678, 103686, 103687, 103688, 103689, 103690, 103691, 103692, 
103693, 103694, 35634, 35635, 35636, 35639, 35640, 35641, 35645, 35646, 
35647, 35648, 35649, 35650, 35651, 35652, 35653, 35654, 45282, 45287, 
45289, 45293, 45296, 45297, 45298, 45299, 45410, 45412, 45416, 45738, 
45873, 45919, 45921, 45922, 46228, 46229, 46232, 46233, 46234, 46235, 
46257, 46274, 46864, 46869, 46870, 47083, 47084, 47085, 47091, 47093, 
47094, 47097, 47099, 47100, 47190, 47276, 47307, 47308, 47318, 47437, 
47438, 48133, 48135, 53751, 53754, 53755, 53757, 53758, 54638, 54705, 
60857, 63143, 81888, 84774, 84777, 84779, 84790, 84792, 84804, 84807, 
84957, 84960, 84967, 84968, 84970, 84971, 85499, 85500, 85512, 86298, 
86299, 86377, 86388, 86407, 86410, 86795, 86798, 86799, 90950, 90952, 
90963, 90969, 91810, 91811, 91838, 91843, 91844, 91846, 91851, 91858, 
91871, 91878, 91883, 91900, 91908, 91923, 91938, 91984, 91991, 92030, 
92031, 92060, 92065, 92089, 92097, 92123, 92130, 92136, 92141, 92160, 
92162, 92179, 92180, 92704, 92711, 129311, 129313, 129315, 129316, 
129317, 129318, 129319, 129320, 129321, 129322, 129323, 129324, 130038, 
130042, 130043, 130044, 130045, 130046, 130047, 130048, 130049, 130050, 
130051, 130905, 130909, 130910, 130911, 130912, 130913, 130914, 130915, 
130916, 130917, 130918, 34503, 34502, 34498, 101443, 101444, 101499, 
101501, 101502, 101503, 101504, 101505, 101506, 101507, 101508, 101509, 
101510, 101511, 101512, 101513, 101514, 101523, 101524, 101525, 101528, 
101529, 101530, 101531, 101532, 101533, 101534, 101535, 101536, 101537, 
101538, 101539, 101540, 101541, 101542, 101543, 101544, 101545, 101546, 
101547, 101548, 101549, 101550, 101551, 101552, 101553, 101554, 101555, 
101556, 101557, 101558, 101559, 101560, 101561, 101562, 101563, 101564, 
101565, 101566, 101567, 101568, 101569, 101570, 101571, 101572, 101573, 
101574, 101575, 101576, 101577, 101578, 101579, 101580, 101581, 101582, 
101583, 101584, 101585, 101586, 101587, 101588, 101590, 101591, 101592, 
101593, 101594, 101595, 101596, 101597, 101598, 101600, 101601, 101602, 
101603, 101604, 101605, 101606, 101607, 101608, 101609, 101610, 101611, 
101612, 101613, 101614, 101615, 101616, 101617, 101618, 101619, 101620, 
101621, 101622, 101623, 101624, 101625, 101627, 101628, 101629, 101630, 
101631, 101632, 101633, 101634, 101635, 101636, 101637, 28146, 28145, 
28144, 28143, 28142, 28141, 28140, 28139, 28138, 28137, 28136, 28135, 
28134, 28133, 28132, 7312, 7310, 7309, 7307, 7305, 7201, 5262, 48793, 
48791, 48788, 48971, 91338, 91340, 37433, 37434, 37435, 37436, 37437, 
37438, 37439, 37440, 37441, 37442, 37443, 37444, 37445, 128220, 128221, 
128222, 128223, 128224, 128225, 128226, 128227, 128228, 128229, 128230, 
128231, 128232, 128233, 128234, 128235, 128236, 128237, 128238, 128239, 
128240, 128241, 128242, 128243, 128244, 128245, 128246, 128247, 128248, 
128249, 128250, 128251, 128252, 128253, 128254, 128255, 128256, 128257, 
125435, 125436, 125437, 125438, 125439, 125440, 125441, 125442, 125443, 
125444, 125445, 125446, 39147, 39148, 39178, 39179, 39222, 39233, 39234, 
39280, 39361, 39412, 39525, 39528, 39614, 39708, 101723, 101726, 101728, 
102277, 102286, 102287, 102288, 102294, 102295, 102296, 102297, 102298, 
102299, 102302, 102303, 102304, 102305, 102306, 2605, 2587, 2575, 2553, 
2210, 2198, 2195, 2188, 2125, 2071, 2068, 2067, 2064, 1635, 1116, 1101, 
992, 985, 983, 949, 15950, 15947, 15945, 15939, 15854, 15847, 15845, 
15844, 15841, 15663, 15613, 15594, 86425, 86426, 21016, 21015, 21014, 
21013, 21012, 21011, 21010, 21009, 21008, 21007, 21006, 21005, 21004, 
21003, 21002, 21001, 13085, 13083, 120908, 120913, 120917, 120918, 
120919, 120920, 120921, 120922, 32437, 32436, 32435, 32434, 32433, 
32432, 32430, 137767, 137766, 137765, 137764, 70950, 70551, 45303, 
45305, 45307, 45308, 46275, 46277, 47103, 47106, 47108, 47109, 47444, 
47453, 47459, 47463, 47479, 48143, 48154, 48156, 48379, 48589, 22246, 
22245, 22244, 22243, 22242, 22241, 22240, 22239, 22238, 22237, 22236, 
22235, 22234, 22233, 22232, 22231, 22230, 22229, 22228, 22227, 22226, 
22225, 22224, 22223, 22222, 22221, 22220, 22219, 22218, 22217, 22216, 
22215, 22214, 22213, 22212, 22211, 22210, 22209, 22208, 22207, 22206, 
22205, 22204, 22203, 22202, 22201, 22200, 22199, 22198, 22197, 22196, 
22195, 22194, 22193, 22192, 22191, 22190, 22189, 22187, 22186, 22185, 
22184, 22183, 22182, 22180, 22179, 22178, 22177, 22176, 22175, 22174, 
22173, 22172, 22171, 22170, 22169, 22168, 22167, 22166, 22165, 22164, 
22163, 22162, 22161, 22160, 27910, 27909, 27908, 27907, 27906, 9068, 
8935, 8929, 8903, 8902, 8795, 8734, 8726, 8725, 8724, 8365, 8364, 8354, 
8353, 8344, 8343, 8325, 8324, 8270, 6274, 6273, 6190, 6187, 6186, 6185, 
6183, 6182, 6181, 6180, 8655, 8656, 10091, 10097, 10098, 10099, 10100, 
10102, 11672, 11673, 11675, 31209, 30951, 38337, 39304, 39305, 39306, 
39307, 9873, 9871, 9857, 9856, 9852, 9589, 9493, 9440, 37731, 37732, 
37733, 37734, 37735, 37736, 37737, 37738, 37739, 37740, 37741, 37742, 
37743, 37744, 37745, 37746, 37747, 37748, 37749, 37750, 37751, 37752, 
37753, 37754, 37755, 37756, 37757, 37758, 37759, 37760, 37761, 37762, 
37763, 37764, 37765, 37766, 37767, 37768, 37769, 37770, 37771, 37772, 
37773, 37774, 37775, 37776, 37777, 37778, 37779, 37780, 37781, 54242, 
54243, 54244, 54245, 54251, 54252, 54253, 54268, 54276, 38861, 38929, 
38940, 38962, 38965, 40217, 42113, 2124, 2119, 2105, 2104, 1874, 1841, 
1838, 1830, 1325, 1310, 1250, 1249, 1246, 1225, 31379, 31375, 31371, 
31362, 33899, 34000, 42359, 42382, 42385, 42685, 42727, 21125, 21124, 
21123, 21122, 21121, 21120, 21119, 21118, 21117, 89539, 89540, 89541, 
89545, 89546, 6702, 6701, 7519, 8768, 8769, 8774, 8778, 8925, 9664, 
10056, 10101, 10136, 10137, 10148, 10149, 11676, 13333, 16323, 29891, 
30347, 31819, 31821, 127405, 127406, 127407, 127408, 127409, 4056, 4047, 
4046, 4043, 4027, 4026, 4019, 4000, 3986, 3978, 3976, 92858, 92860, 
92861, 92863, 92866, 92867, 92870, 92872, 92873, 92875, 92876, 92928, 
92930, 92931, 92933, 92934, 92937, 92939, 92940, 93052, 93053, 93249, 
16072, 16068, 15971, 15873, 15836, 15835, 15688, 15606, 15590, 15585, 
15554, 15483, 15478, 15451, 15352, 15350, 15343, 15344, 48856, 48855, 
48853, 48852, 48851, 107024, 107037, 107038, 107041, 13017, 12942, 
12932, 12921, 12920, 12917, 12344, 12343, 7441, 7439, 7438, 7437, 6592, 
6591, 6587, 6586, 3450, 3448, 3447, 105978, 105980, 105982, 105983, 
105984, 105985, 105986, 16199, 16202, 16201, 125885, 125884, 125883, 
125882, 125881, 125880, 125879, 125878, 125877, 125876, 125875, 125874, 
104624, 104625, 104626, 104627, 104628, 104629, 104630, 104631, 104632, 
104633, 104634, 104635, 104636, 104637, 104639, 104640, 104641, 104642, 
27530, 27527, 27522, 27514, 27511, 30093, 30099, 30101, 30104, 22787, 
22786, 22785, 36627, 36628, 36629, 36630, 36631, 36632, 36633, 36634, 
36635, 36636, 36637, 36638, 36639, 36640, 36641, 36642, 36643, 36644, 
36645, 36646, 36647, 36648, 36649, 36650, 36651, 36652, 36653, 36654, 
36655, 36656, 36657, 36658, 36659, 36660, 36661, 36662, 36663, 36664, 
36665, 36666, 36667, 36668, 36669, 36670, 36671, 36672, 36673, 36674, 
36675, 36676, 36677, 36678, 36679, 36680, 36681, 36682, 36683, 36684, 
36685, 36686, 36687, 36688, 36689, 36690, 36691, 36692, 36694, 36695, 
36696, 36697, 36698, 36699, 36700, 36701, 36702, 36703, 36704, 36705, 
36706, 36707, 36708, 36709, 36710, 36711, 36712, 36713, 36714, 36715, 
36716, 36717, 36718, 36719, 36720, 36721, 36722, 36723, 36724, 17589, 
17587, 17585, 17561, 17554, 17380, 17377, 17054, 17030, 17029, 16993, 
16913, 16838, 16836, 16834, 16832, 16745, 16739, 16727, 16726, 16721, 
16703, 16702, 16700, 16691, 16689, 16687, 30338, 30337, 30335, 30332, 
30258, 30253, 30130, 30128, 30126, 30123, 31984, 31986, 31987, 31988, 
33456, 33489, 33492, 13319, 16408, 16410, 16411, 16414, 16416, 16418, 
21300, 21299, 21298, 21297, 21296, 14491, 14489, 35233, 35232, 15893, 
15892, 15891, 135770, 135771, 135772, 126795, 126796, 126797, 126798, 
126799, 125078, 125079, 125080, 125081, 125082, 125083, 125084, 125085, 
125086, 125087, 125088, 125089, 125090, 125091, 125092, 125093, 125094, 
125095, 125096, 125097, 125098, 125099, 125100, 125101, 125102, 125103, 
125104, 125105, 125106, 125107, 99158, 99159, 127685, 127686, 127687, 
127688, 127689, 127690, 127691, 127692, 127693, 127694, 127695, 127696, 
127697, 127698, 127699, 127700, 127701, 127702, 127703, 127704, 127705, 
126717, 126718, 6848, 6763, 5919, 5859, 5820, 130394, 130395, 130396, 
130397, 130398, 130399, 12398, 11788, 11785, 10294, 8514, 7931, 7390, 
6541, 3362, 2786, 2785, 2784, 2735, 2728, 2643, 2640, 2637, 2635, 37386, 
37387, 37388, 37389, 37390, 37391, 37392, 37393, 37394, 37395, 37396, 
37397, 37398, 37399, 37400, 37401, 37402, 37403, 37404, 37405, 37406, 
37407, 37408, 37409, 37410, 37411, 37412, 37413, 37414, 37415, 37416, 
37417, 37418, 37419, 37420, 37421, 37422, 37423, 37424, 37425, 37426, 
37427, 37428, 37429, 37430, 37431, 14657, 14534, 14533, 14532, 14531, 
14530, 14527, 14526, 12098, 12080, 12078, 12077, 133090, 125597, 125596, 
125595, 125594, 125593, 133091, 30039, 38374, 41739, 41918, 44895, 
45096, 45151, 45160, 45162, 45165, 45200, 45203, 104107, 104108, 104109, 
104144, 104148, 104160, 104161, 104162, 104163, 104178, 104179, 104183, 
104195, 104196, 104197, 104198, 104199, 104868, 104895, 104897, 104902, 
104903, 104908, 104909, 104911, 104912, 104913, 104915, 104916, 124517, 
124520, 124521, 124522, 124523, 124531, 124535, 124536, 124537, 124538, 
124539, 124540, 124541, 124542, 124543, 124544, 124545, 124546, 124547, 
124548, 124549, 124550, 124551, 124552, 124553, 124554, 124558, 124569, 
124570, 124571, 124572, 124573, 124574, 124575, 124576, 124577, 124579, 
124585, 124595, 124596, 124597, 124598, 124599, 124600, 124601, 124602, 
124603, 30293, 30287, 30286, 30285, 30174, 30171, 32008, 124085, 124086, 
90494, 90495, 90496, 90498, 90499, 90508, 723, 385, 9369, 9366, 9218, 
9213, 9212, 12333, 12332, 12328, 8430, 7907, 7906, 7904, 7902, 7354, 
7353, 7352, 7351, 7350, 7349, 7347, 7345, 6453, 6451, 6449, 6448, 6447, 
6446, 6445, 6438, 6437, 22680, 22679, 22678, 22677, 22676, 22675, 22674, 
22673, 22672, 22671, 22670, 22669, 22668, 22667, 22666, 22665, 22664, 
22663, 22662, 27245, 27244, 27243, 27242, 27241, 27240, 27239, 27238, 
27237, 27236, 27235, 27234, 27233, 27232, 27231, 27230, 27229, 27228, 
27227, 27226, 27225, 27224, 27222, 89722, 89726, 89729, 89735, 89736, 
89740, 89743, 89756, 89757, 89760, 90257, 90267, 20174, 20173, 20172, 
20171, 20170, 20169, 20168, 20167, 20166, 20165, 20164, 20163, 20162, 
20161, 20160, 20159, 20158, 20157, 20156, 20155, 20154, 20153, 20152, 
20151, 20150, 20149, 20148, 20147, 20146, 20145, 20144, 20143, 53735, 
54288, 91839, 91840, 91841, 91862, 91863, 91866, 92183, 92184, 92191, 
92196, 92198, 92201, 31291, 31199, 31157, 31143, 31012, 30975, 30953, 
30846, 30704, 18634, 31484, 31500, 31506, 31509, 31510, 31511, 31512, 
31513, 31515, 31516, 31517, 33879, 42185, 42186, 42188, 42189, 42190, 
42191, 42192, 42193, 42194, 42195, 42196, 42197, 42198, 42199, 42200, 
5868, 5833, 5829, 5765, 5758, 5711, 121778, 121779, 121780, 121781, 
121782, 121783, 121784, 121786, 85247, 85248, 125818, 125819, 125820, 
38570, 38571, 38572, 38573, 38574, 38575, 38576, 38577, 38578, 38579, 
38580, 38581, 38582, 38583, 38584, 51684, 51685, 51686, 51687, 51688, 
51689, 51690, 51691, 51692, 86199, 89137, 89139, 89140, 124435, 124437, 
124438, 124439, 124440, 13046, 13036, 13033, 13026, 13024, 13020, 13019, 
13018, 13016, 13007, 12382, 12378, 12377, 12374, 12367, 100718, 100719, 
100720, 100721, 100722, 100723, 100724, 100725, 100726, 100727, 100728, 
100729, 85228, 85229, 85230, 85231, 85232, 85233, 85234, 85235, 6002, 
5994, 5993, 5991, 5990, 4895, 10906, 10905, 10904, 10903, 10902, 10901, 
10900, 10899, 10898, 10897, 10896, 10895, 10894, 10893, 10892, 10891, 
10890, 10889, 10882, 10880, 10879, 10878, 10877, 10876, 10875, 9758, 
9598, 9487, 9486, 9485, 9484, 9483, 9482, 9481, 9480, 9430, 9429, 9428, 
9427, 9426, 9425, 9424, 9423, 9422, 128508, 129832, 56690, 56691, 54089, 
54090, 54091, 54115, 54116, 54117, 54137, 54138, 54139, 31367, 31110, 
31005, 31004, 30961, 30926, 30925, 30908, 30896, 30895, 30894, 30749, 
30432, 18640, 18639, 18638, 18637, 18636, 18635, 8021, 8020, 31480, 
31483, 31514, 29539, 29538, 29537, 29536, 29535, 29534, 29533, 29532, 
29531, 29530, 29529, 29528, 29527, 29526, 29525, 29524, 29523, 29522, 
29521, 29520, 29519, 29518, 29517, 29516, 29515, 29514, 29513, 29512, 
29511, 29510, 29509, 29508, 29507, 29506, 29505, 29504, 29503, 29502, 
29501, 29500, 29499, 29498, 29497, 29496, 29495, 29494, 29493, 29492, 
29491, 29490, 29489, 29487, 29486, 29485, 29484, 29483, 29482, 29481, 
29480, 29479, 29478, 29477, 29476, 29475, 29474, 29473, 29472, 48554, 
48555, 48556, 48557, 48558, 48872, 48873, 48874, 127874, 127875, 127876, 
127877, 127878, 127879, 127880, 127881, 127882, 127883, 127884, 127885, 
127886, 127887, 127888, 127889, 127890, 127891, 127892, 127893, 127894, 
127895, 127896, 127897, 127898, 127899, 127900, 127901, 127902, 127903, 
127904, 127905, 127906, 127907, 127908, 127909, 127910, 127911, 127912, 
127913, 127914, 127915, 127916, 127917, 127918, 127919, 127920, 127921, 
127922, 127923, 127924, 127925, 127926, 127927, 127928, 127929, 127930, 
127931, 127932, 127933, 127934, 127935, 127936, 127937, 127938, 127939, 
127940, 127941, 127942, 127943, 127944, 127945, 127946, 127947, 127948, 
127949, 127950, 127951, 127952, 127953, 127954, 127955, 127956, 127957, 
127958, 127959, 127960, 127961, 127962, 127963, 127964, 127965, 127966, 
127967, 127968, 127969, 127970, 127971, 127972, 127973, 127974, 127975, 
127976, 127977, 127978, 2618, 2592, 2589, 2540, 944, 766, 750, 615, 444, 
379, 378, 377, 376, 375, 127618, 127619, 127620, 127621, 127622, 127623, 
127624, 127625, 127626, 127627, 127628, 127629, 127630, 36389, 36390, 
36391, 36392, 36393, 128500, 128501, 203227, 203228, 203229, 203230, 
203231, 203232, 203233, 203234, 203235, 203236, 203237, 203238, 203239, 
203240, 203241, 203242, 203243, 203244, 7162, 7135, 7039, 7033, 27524, 
27520, 27518, 27517, 27509, 27508, 108145, 108146, 108147, 203407, 
203408, 203409, 203410, 203411, 203412, 203413, 203414, 203415, 5447, 
5304, 5302, 4646, 4639, 3311, 3310, 3304, 132858, 132859, 14749, 14746, 
14741, 14505, 14504, 14503, 14502, 13279, 13278, 13269, 13261, 13256, 
11721, 11719, 200948, 200884, 104214, 104216, 104217, 104218, 104219, 
104220, 104221, 104222, 53905, 53931, 53932, 53934, 53935, 53936, 95068, 
95130, 95206, 95284, 95370, 95412, 95494, 95555, 95690, 95757, 95809, 
95881, 95898, 96016, 96071, 96120, 96185, 96239, 96336, 96400, 96513, 
96574, 137538, 137539, 137540, 137541, 38183, 38184, 38185, 104745, 
104746, 104747, 104751, 104752, 104753, 104754, 104755, 104756, 104757, 
104758, 104759, 104760, 40446, 40526, 42920, 46817, 52411, 39297, 39350, 
39362, 39363, 39364, 39372, 39374, 39375, 39382, 39383, 39391, 39393, 
39401, 39640, 39656, 39657, 39658, 39659, 39661, 39662, 39667, 39671, 
39672, 39683, 39713, 40316, 40317, 40318, 40319, 40320, 40321, 40325, 
40327, 40328, 40329, 40381, 16765, 16764, 9833, 9829, 9828, 9789, 9572, 
9571, 9567, 9538, 9534, 9533, 9531, 9529, 9467, 50342, 50343, 50344, 
50345, 50346, 50347, 50348, 50349, 50350, 50351, 2382, 2378, 2338, 2335, 
2330, 2328, 2326, 2324, 2258, 2252, 2230, 2110, 2046, 1921, 1875, 1869, 
1868, 1856, 1844, 1671, 1403, 1402, 813, 123950, 123951, 123952, 123953, 
123954, 123955, 123956, 123957, 123958, 123959, 123960, 123961, 123962, 
126806, 126807, 201126, 200930, 32472, 32471, 32470, 32469, 32468, 
27288, 27287, 27286, 27285, 27284, 27283, 27282, 6812, 6810, 6808, 6804, 
6799, 5757, 5756, 5753, 93552, 93554, 93638, 93640, 93642, 93648, 93656, 
93659, 11124, 11102, 10864, 10742, 10738, 10736, 10640, 10541, 10540, 
10538, 10244, 10242, 10237, 98563, 98615, 98616, 98637, 98644, 98651, 
98656, 98658, 98659, 98660, 98661, 98662, 98663, 98664, 98665, 98666, 
98667, 98668, 98669, 98670, 98671, 98672, 98673, 98674, 98675, 98676, 
98677, 98678, 98679, 98680, 98681, 98682, 98683, 98689, 98692, 98693, 
98694, 98695, 98696, 98697, 98698, 98699, 98700, 103614, 103642, 103662, 
103668, 103669, 103677, 103679, 103680, 103681, 103682, 103683, 103684, 
103685, 103695, 103696, 103697, 103698, 103699, 103700, 103701, 103702, 
103704, 103705, 103706, 103707, 100578, 100588, 100674, 100675, 100676, 
100677, 100678, 100679, 100680, 100681, 100682, 100683, 100684, 100685, 
100686, 100687, 100688, 133408, 133409, 133410, 133411, 133412, 133413, 
133414, 32591, 32590, 32589, 32588, 32587, 32586, 32582, 32581, 38231, 
38232, 38233, 38241, 38242, 38327, 38329, 38443, 38477, 38478, 38479, 
38480, 38481, 38482, 38483, 38484, 38485, 38486, 38487, 38488, 38489, 
38491, 91594, 91596, 91612, 91627, 91635, 91641, 91643, 91645, 91649, 
91650, 91660, 93328, 93331, 93333, 93334, 93339, 93340, 93341, 93381, 
93395, 93448, 93454, 93511, 93513, 93516, 93518, 93524, 93530, 93537, 
93538, 93539, 93540, 93541, 13040, 13003, 12997, 12991, 12930, 12602, 
8435, 8434, 8433, 8432, 8431, 8412, 7915, 7914, 7913, 7912, 7911, 7910, 
7909, 7642, 7641, 7640, 7637, 7636, 7635, 7634, 7633, 7631, 7628, 7359, 
7358, 7357, 7356, 7273, 7272, 7271, 7270, 7269, 7268, 7267, 7266, 7265, 
7264, 6478, 6477, 6476, 6475, 6474, 6473, 6472, 4784, 4783, 4782, 4781, 
4780, 4779, 4778, 4777, 4776, 4775, 49306, 49305, 49304, 49303, 49295, 
49800, 49810, 49814, 51344, 51580, 51581, 108311, 108312, 108315, 
108316, 108317, 108318, 7200, 7199, 7158, 7157, 7156, 7155, 7154, 7153, 
7152, 7151, 7150, 7149, 120929, 120930, 120931, 120933, 120934, 120935, 
120936, 120937, 120938, 120939, 120940, 120941, 120942, 120943, 120944, 
120945, 5443, 5442, 5441, 5306, 5305, 5203, 5202, 14757, 14630, 14623, 
14622, 14620, 14617, 14614, 14612, 14610, 14608, 14607, 11537, 21559, 
21558, 21557, 21556, 15220, 14893, 14855, 16015, 16008, 16007, 16006, 
16003, 16002, 16001, 15998, 15997, 15708, 15704, 15701, 15698, 15556, 
15441, 15413, 132814, 132815, 132816, 132817, 132818, 45928, 45927, 
45911, 47828, 31930, 38236, 38243, 38245, 38441, 38442, 38444, 43736, 
43910, 45024, 45025, 45026, 45030, 45041, 45043, 45044, 123326, 123327, 
123328, 123329, 123330, 123331, 123332, 123333, 123334, 123335, 123336, 
123337, 123338, 123339, 123340, 123341, 123342, 123343, 123344, 123345, 
123346, 123347, 123348, 123349, 123350, 123351, 123352, 123353, 123354, 
123355, 123356, 123357, 123358, 123359, 123360, 123361, 123362, 123363, 
123364, 123365, 123366, 123367, 123368, 123369, 123370, 123371, 123372, 
123373, 123374, 123375, 123376, 123377, 123378, 123379, 123380, 123381, 
123382, 123383, 123384, 123385, 123386, 123387, 123388, 123389, 123390, 
123391, 123392, 123393, 123394, 123395, 123396, 123397, 123398, 123399, 
123400, 123401, 123402, 123403, 123404, 123405, 123406, 123407, 123408, 
123409, 123410, 123411, 123412, 123413, 123414, 123415, 123416, 123417, 
123418, 123419, 123420, 123421, 123422, 123423, 123424, 123425, 123426, 
123427, 123428, 123429, 123430, 123431, 123432, 123433, 123434, 123435, 
123436, 123437, 123438, 123439, 123440, 123441, 123442, 123443, 131825, 
131826, 131827, 131828, 131829, 131830, 53856, 65527, 91804, 91805, 
92205, 92297, 92323, 92353, 92355, 92479, 92480, 92481, 92486, 92487, 
92503, 92581, 92583, 92594, 92600, 92638, 92641, 92722, 128036, 128037, 
128038, 128039, 128040, 128041, 126084, 126083, 126082, 126081, 126080, 
85300, 85301, 85302, 85303, 85304, 85305, 85306, 85307, 85308, 85309, 
85310, 85311, 85312, 85313, 85314, 85315, 27084, 27083, 27082, 27081, 
27080, 27079, 27078, 27077, 27076, 27075, 27074, 27073, 27072, 27071, 
27070, 27069, 27068, 27067, 27066, 27953, 27952, 27951, 27950, 27949, 
27947, 27946, 27945, 27944, 27943, 27942, 27941, 27940, 27939, 122591, 
122592, 122593, 122600, 122602, 122604, 122612, 122613, 122615, 122617, 
122618, 122622, 122623, 122626, 122632, 122638, 122639, 37897, 37898, 
44434, 44474, 44561, 44592, 44597, 44608, 44609, 44610, 44614, 44616, 
44667, 44668, 44671, 44672, 45187, 29919, 38356, 41294, 44157, 44263, 
44265, 44567, 44568, 44734, 44736, 44746, 44751, 44752, 44753, 44756, 
44768, 44776, 45034, 45036, 45037, 45053, 45058, 45060, 45070, 45072, 
45086, 45090, 45097, 45148, 45157, 45167, 45168, 45178, 45181, 45182, 
45183, 123292, 123293, 123294, 123295, 123296, 123297, 123298, 123299, 
123300, 123301, 123302, 123303, 123304, 123305, 123306, 123307, 123308, 
123309, 123310, 123311, 123312, 123313, 123314, 123315, 123316, 123317, 
123318, 123319, 123320, 123321, 123322, 123323, 123324, 123325, 49254, 
49253, 49252, 49251, 49249, 49248, 49247, 49246, 49244, 49243, 49242, 
49241, 49239, 49238, 49237, 49236, 49232, 49231, 49230, 49229, 49227, 
49226, 49225, 49224, 49771, 49772, 49773, 49774, 49775, 91445, 91446, 
32141, 32140, 17951, 17861, 17830, 17827, 17824, 17769, 18102, 18106, 
18107, 18108, 18186, 18202, 18203, 18282, 18336, 18371, 18372, 19111, 
19121, 19147, 19188, 22337, 28234, 29784, 29785, 29786, 34114, 38306, 
44442, 44521, 44522, 123266, 123267, 123268, 123269, 123270, 123271, 
123272, 123273, 51175, 51176, 51177, 51178, 51179, 51180, 51181, 51182, 
51183, 51184, 51185, 51186, 51187, 51188, 51189, 51190, 51191, 51192, 
51193, 51194, 51195, 51196, 51197, 51198, 48839, 48838, 48835, 48834, 
48831, 48830, 48829, 48826, 48825, 48824, 48821, 48820, 48819, 48815, 
48814, 48813, 48811, 48810, 48773, 48770, 48767, 48766, 48764, 48763, 
48762, 48586, 48575, 48570, 48479, 48470, 48980, 48981, 48982, 48986, 
48990, 48991, 48992, 48996, 48997, 48998, 49000, 49001, 91408, 91409, 
91410, 91413, 91416, 91417, 91418, 101331, 101332, 101333, 101334, 
101335, 101336, 101337, 101338, 101339, 101340, 101341, 101342, 101343, 
9404, 9395, 9391, 9388, 9380, 9379, 9292, 9289, 9256, 9233, 9160, 9144, 
9115, 9100, 9041, 9040, 9037, 9031, 9014, 8992, 8960, 8959, 8852, 8807, 
134529, 134528, 134527, 134526, 134525, 134524, 134523, 101740, 101746, 
101748, 101749, 101750, 101752, 101779, 101780, 101798, 101799, 101800, 
24720, 24719, 24718, 24717, 24716, 24715, 31349, 31348, 31347, 31179, 
31174, 31173, 31171, 31058, 30981, 30972, 30970, 30969, 30950, 30945, 
30866, 30865, 31557, 31574, 31576, 31633, 33760, 33794, 33800, 33833, 
33845, 39308, 39310, 12936, 12283, 12278, 12257, 12253, 12252, 12250, 
12249, 12233, 10424, 10423, 10270, 8414, 8413, 7646, 7278, 7276, 4794, 
121093, 121094, 121095, 121096, 121097, 121098, 21049, 21048, 21047, 
21046, 21045, 95070, 95123, 95228, 95273, 95329, 95407, 95476, 95562, 
95607, 95675, 95749, 95819, 95884, 95921, 96076, 96122, 96196, 96228, 
96325, 96367, 96433, 96518, 96577, 95056, 95115, 95223, 95264, 95314, 
95394, 95486, 95541, 95614, 95683, 95703, 95795, 95868, 95901, 96028, 
96108, 96178, 96233, 96312, 96383, 96423, 96521, 96565, 42803, 42806, 
42807, 42809, 42811, 42814, 106881, 106882, 106883, 106884, 137498, 
137499, 137500, 137501, 137502, 137503, 137504, 137505, 137506, 6297, 
9665, 9671, 9672, 10057, 10058, 10064, 10065, 16226, 51787, 51786, 
51785, 51784, 51783, 43777, 43779, 43780, 43781, 43782, 43783, 43784, 
43785, 43786, 43787, 43788, 43789, 43790, 43791, 43792, 43793, 43794, 
43795, 43796, 124493, 124494, 91131, 91132, 91133, 132865, 132866, 
132867, 132868, 132869, 48899, 48897, 48871, 48869, 48868, 14753, 14752, 
14743, 14718, 14500, 14499, 13373, 12027, 11986, 11984, 11983, 11981, 
11979, 11978, 11751, 11750, 11749, 11745, 11738, 11686, 11665, 11660, 
11659, 11653, 11649, 11648, 11625, 11620, 11615, 11609, 11605, 11572, 
11544, 11542, 11541, 11539, 11536, 11519, 11518, 11517, 11516, 11515, 
11513, 11512, 11427, 11400, 11392, 11377, 11376, 11374, 11375, 11373, 
11366, 11359, 11351, 11342, 11316, 11314, 11313, 11310, 11309, 11305, 
11304, 11267, 11248, 11247, 11229, 3944, 3943, 3939, 3937, 3936, 12775, 
12774, 12773, 12772, 12771, 12770, 12769, 12768, 41627, 41628, 41629, 
41630, 41631, 41632, 41633, 41634, 41635, 41636, 41639, 41640, 41641, 
11061, 11054, 10628, 10003, 9824, 37090, 37091, 37092, 37093, 37094, 
37095, 12850, 12849, 12848, 5532, 5531, 5530, 5529, 5524, 5523, 5522, 
5517, 9064, 9063, 9062, 9061, 8928, 8891, 8864, 8702, 8697, 8331, 8330, 
8329, 8328, 8286, 8285, 8284, 8283, 8282, 8281, 8211, 8210, 8209, 8208, 
8207, 8206, 8205, 6206, 6203, 6202, 6200, 27905, 27904, 27903, 27902, 
27901, 27900, 27899, 27898, 27897, 95108, 95162, 95190, 95291, 95320, 
95427, 95447, 95543, 95574, 95638, 95716, 95762, 95826, 95938, 95959, 
96029, 96091, 96159, 96260, 96287, 96360, 96450, 96484, 96560, 32717, 
32716, 32715, 32714, 32713, 32712, 32711, 32710, 32709, 32708, 32707, 
32706, 32705, 32704, 98865, 98914, 132368, 12956, 12951, 12202, 12195, 
12188, 6435, 12865, 12864, 12863, 12862, 12861, 12860, 12858, 12857, 
37855, 37856, 37857, 37858, 37859, 37860, 37861, 37862, 37863, 37864, 
37866, 37867, 37930, 37931, 37932, 37933, 37934, 37935, 37936, 37937, 
37938, 37939, 37940, 37941, 37942, 37943, 37944, 97661, 97662, 97663, 
97664, 97665, 97666, 97667, 97668, 97669, 97670, 97671, 97672, 97673, 
97674, 97675, 97697, 97698, 97699, 97700, 97701, 97702, 97703, 97704, 
97705, 97706, 97707, 97708, 91170, 91174, 91175, 91179, 91180, 91182, 
91183, 91199, 91200, 91202, 91203, 91204, 91205, 31412, 31410, 31407, 
31016, 31015, 31000, 30933, 30930, 30929, 30737, 30735, 30734, 30628, 
30627, 31690, 31691, 31694, 31695, 31704, 31713, 31717, 107122, 107123, 
107124, 107130, 1326, 1251, 1226, 27135, 27134, 27133, 27132, 27131, 
27130, 27129, 3931, 3919, 3917, 3915, 3914, 3880, 3876, 3871, 2788, 
45229, 45230, 45235, 45445, 45447, 45456, 45457, 45459, 45462, 45463, 
46877, 46879, 46980, 46983, 47191, 47200, 47992, 48282, 48283, 48284, 
48285, 48534, 48538, 48542, 48543, 48603, 48608, 48631, 49602, 49606, 
49989, 51651, 51734, 51737, 51856, 52123, 52241, 52257, 52543, 52625, 
100892, 100919, 100921, 100929, 100931, 100932, 100933, 101069, 101090, 
101498, 101729, 101730, 101731, 101813, 101816, 101821, 101822, 101826, 
101827, 101829, 101835, 101844, 101847, 101848, 101851, 101852, 101857, 
101861, 101864, 101865, 101869, 101870, 101873, 101874, 101880, 101881, 
101882, 101885, 101889, 101891, 101892, 101893, 101894, 49706, 49707, 
49708, 49709, 49710, 49711, 49712, 49713, 49718, 49719, 49720, 49721, 
51955, 51956, 51957, 51960, 51961, 91436, 91437, 91438, 91439, 91459, 
91460, 91461, 91462, 91463, 91480, 91481, 91482, 91483, 91484, 91485, 
91486, 91487, 91488, 91489, 91513, 91514, 91515, 91516, 91517, 92542, 
92543, 92545, 92549, 92550, 92552, 92555, 92556, 92559, 92564, 92656, 
89596, 89599, 89603, 89606, 89607, 89612, 89613, 89622, 89625, 89631, 
89634, 89636, 89642, 89646, 89649, 89654, 89656, 89657, 90295, 90298, 
90305, 90308, 99693, 99694, 99695, 99696, 99701, 99702, 99703, 99704, 
99707, 99708, 99709, 99710, 99711, 99712, 99713, 99721, 104028, 104029, 
104043, 104047, 104051, 104052, 104058, 104059, 32759, 32758, 32757, 
32756, 32755, 32754, 32753, 32752, 32751, 86616, 86620, 86624, 86657, 
86661, 86662, 86783, 86785, 86786, 86788, 86791, 86793, 87024, 87036, 
87037, 87085, 88748, 88749, 88751, 90326, 90328, 90332, 90335, 41218, 
41219, 41220, 41221, 41222, 41223, 41224, 41225, 41226, 41227, 41228, 
41229, 41230, 41231, 41232, 41233, 41234, 41235, 41236, 41237, 41238, 
51199, 51200, 51201, 51202, 51203, 51204, 51205, 51206, 103920, 103921, 
103922, 103924, 103925, 2153, 1982, 1978, 1475, 1466, 1218, 911, 908, 
900, 778, 672, 671, 670, 621, 619, 618, 442, 441, 30054, 30055, 38025, 
38027, 38030, 38386, 38389, 41750, 41754, 41756, 41933, 41934, 41996, 
41999, 42031, 42061, 42064, 42065, 42104, 42106, 42108, 42118, 42119, 
44262, 44675, 44691, 44792, 44797, 44802, 44814, 44966, 44968, 44981, 
17890, 17889, 17815, 17811, 17784, 17775, 17773, 19088, 19092, 19096, 
19097, 19098, 19099, 19100, 19101, 72218, 72217, 9854, 9851, 9497, 
37010, 37011, 37012, 37013, 37014, 37015, 24105, 24104, 24103, 24102, 
24101, 24100, 24099, 24098, 24097, 24096, 24095, 24094, 24093, 24092, 
2347, 2319, 2266, 2265, 2257, 2249, 136275, 136276, 136277, 136278, 
136279, 136280, 45393, 45395, 47892, 47978, 48596, 48618, 48621, 49599, 
51323, 51477, 52500, 51280, 51281, 51282, 51283, 51284, 51285, 51286, 
51287, 51288, 51289, 51290, 51291, 51292, 51293, 51294, 51295, 51296, 
51297, 51298, 51299, 33246, 33245, 33244, 33243, 33242, 33241, 33240, 
107125, 107126, 107127, 107132, 107133, 107135, 107136, 107137, 107138, 
107139, 107140, 107156, 107167, 107168, 86329, 86358, 5784, 5754, 5737, 
5735, 5734, 5732, 5609, 39560, 39561, 39565, 39568, 39575, 39639, 39644, 
39719, 39731, 40174, 40175, 40180, 40181, 40232, 40238, 40285, 40292, 
40295, 106191, 106192, 136446, 136447, 136448, 136449, 136450, 136451, 
136452, 56720, 56721, 56728, 56749, 56777, 56779, 56784, 56785, 56787, 
56801, 91256, 91272, 91274, 91275, 91280, 91284, 91285, 91293, 127638, 
127639, 127640, 127641, 127642, 127643, 127644, 127645, 127646, 127647, 
127648, 127649, 127650, 127651, 127652, 98797, 98805, 98813, 98817, 
98818, 98821, 98822, 98823, 131753, 131754, 131755, 131756, 131757, 
131758, 131759, 131760, 131761, 131762, 131763, 131764, 131765, 131766, 
131767, 131768, 131769, 131770, 131771, 131772, 131773, 131774, 131775, 
131776, 131777, 131779, 131780, 131781, 131782, 131783, 131784, 131785, 
131786, 131787, 131789, 131790, 131791, 131792, 102600, 102601, 17939, 
17937, 17934, 18119, 18135, 18139, 18195, 18196, 18197, 18234, 18288, 
18292, 18428, 18430, 18462, 18464, 18465, 18466, 18494, 19058, 19106, 
19113, 19129, 19189, 19191, 28232, 42942, 42943, 42944, 98684, 98685, 
98686, 98687, 98688, 129483, 129484, 129485, 129486, 129487, 129488, 
129489, 129490, 129491, 3851, 2775, 2711, 2710, 2709, 97432, 97433, 
97434, 97440, 97441, 97442, 97444, 97445, 131107, 131108, 41372, 41373, 
41374, 41375, 41376, 41377, 41378, 41379, 41380, 41381, 41382, 41383, 
41384, 41385, 41386, 41387, 41388, 41389, 41390, 41391, 41392, 41393, 
93119, 93123, 93124, 93125, 93126, 93131, 93132, 93134, 93136, 93138, 
93140, 93143, 93180, 93181, 93183, 93342, 93371, 93372, 93439, 93444, 
88701, 88702, 88703, 88704, 23870, 23869, 23868, 23867, 23866, 23865, 
23864, 23863, 23862, 23861, 23860, 23859, 23858, 23857, 23856, 23855, 
23854, 23853, 23852, 23851, 23850, 23849, 106816, 106817, 106818, 
106819, 106820, 106821, 106822, 106823, 106824, 106825, 106826, 31873, 
38094, 41772, 41773, 41774, 41777, 41778, 41782, 41784, 41785, 41786, 
41787, 41788, 41789, 41793, 41794, 41795, 41796, 41804, 41806, 41807, 
41810, 41815, 41816, 41818, 41878, 42127, 42163, 97997, 98018, 98019, 
98020, 98021, 98022, 98023, 30431, 30430, 30429, 30428, 30427, 30426, 
30425, 30424, 30423, 30422, 30421, 30420, 30419, 39690, 40305, 40308, 
40386, 40403, 40409, 40424, 40464, 40610, 40615, 40621, 40623, 92969, 
92970, 92982, 92986, 92987, 93017, 93019, 93073, 93075, 93109, 93189, 
93210, 93237, 93238, 93239, 93265, 93304, 93330, 93382, 93396, 93397, 
93405, 93437, 93464, 93468, 93472, 93480, 93481, 93485, 93488, 93535, 
93591, 135923, 135924, 135925, 135926, 135927, 135928, 135929, 135930, 
135931, 135932, 135933, 135934, 135935, 135936, 135937, 135938, 135939, 
135940, 135941, 135942, 135943, 135944, 135945, 135946, 135947, 135948, 
135949, 135950, 135951, 135952, 135953, 135954, 132684, 132685, 52412, 
52413, 52414, 52417, 84657, 84483, 84074, 84073, 81433, 81432, 81435, 
81434, 132026, 132027, 132028, 132029, 132030, 132031, 132032, 132033, 
132034, 132035, 132036, 132037, 132038, 132039, 132040, 132041, 132042, 
132043, 132044, 132045, 86417, 92027, 7867, 7851, 7847, 7713, 7707, 
7704, 7608, 7408, 7407, 7404, 7212, 7211, 7208, 7207, 7146, 7145, 7138, 
47169, 48533, 49596, 51741, 51742, 51750, 51998, 52243, 52244, 124407, 
124408, 124410, 124409, 124411, 45323, 45324, 45325, 45328, 45330, 
45331, 45332, 46684, 46686, 46692, 46749, 47126, 47129, 47130, 47131, 
131997, 131998, 131999, 132000, 132001, 132002, 132003, 132004, 132005, 
132006, 132007, 132008, 132009, 132010, 132011, 103865, 103926, 103927, 
103928, 103930, 15952, 15951, 15948, 15946, 15885, 15884, 15669, 15596, 
132274, 132275, 40728, 40768, 40774, 40823, 40828, 102519, 102520, 
102521, 102522, 102525, 102526, 102527, 102528, 102529, 102531, 102532, 
102533, 102534, 102535, 102536, 102537, 102538, 102539, 102540, 102541, 
102542, 102543, 102545, 102547, 102548, 102549, 102550, 102551, 102552, 
102553, 102554, 102555, 102556, 102557, 102558, 102559, 102560, 102561, 
102562, 102563, 102564, 102565, 102566, 102567, 102568, 102569, 102570, 
102571, 102572, 102573, 102574, 102575, 102576, 102577, 102578, 102579, 
102580, 102581, 102582, 102583, 102584, 102585, 102586, 102587, 102588, 
102589, 102590, 102591, 102592, 102593, 21354, 21353, 21352, 21351, 
21350, 21349, 21348, 21347, 21346, 21345, 21344, 21343, 21342, 21341, 
21340, 21339, 30340, 30256, 30255, 30254, 33460, 33472, 33496, 18111, 
18373, 18376, 19086, 19087, 19089, 19090, 19091, 19093, 19094, 19095, 
123256, 123257, 123258, 123259, 123260, 123261, 123262, 123263, 123264, 
123265, 123274, 123275, 123276, 123277, 123278, 123279, 123280, 105652, 
105653, 105654, 105671, 105672, 124342, 124343, 124344, 124345, 124346, 
124347, 124348, 124349, 124350, 124351, 124352, 124353, 124354, 124355, 
124356, 124357, 124358, 124359, 124360, 124361, 124362, 124363, 124364, 
124365, 124366, 124367, 124368, 124369, 124370, 124371, 124372, 124373, 
124374, 124375, 124376, 124377, 124378, 124379, 124380, 124381, 124382, 
124383, 124384, 124385, 124386, 124387, 124388, 124389, 124390, 124391, 
124392, 36107, 36108, 36109, 36110, 36111, 36112, 36113, 36114, 36115, 
36116, 36117, 36118, 36119, 36120, 36121, 36122, 36123, 36124, 28216, 
28215, 28214, 28213, 28212, 28211, 28210, 28209, 28208, 28207, 28206, 
28205, 28204, 28203, 28202, 28201, 28200, 28199, 28198, 28197, 28196, 
28195, 28194, 28193, 28192, 28191, 28190, 28189, 28188, 28187, 28186, 
28185, 28184, 28183, 28182, 28181, 28180, 28179, 28178, 28177, 28176, 
28175, 28174, 28173, 28172, 28171, 28170, 28169, 28168, 28167, 28166, 
28165, 28164, 28163, 28162, 28161, 28160, 28159, 28158, 28157, 28156, 
28155, 28154, 28153, 28152, 28151, 28150, 28148, 28147, 26362, 26361, 
26360, 26359, 26358, 26357, 26356, 93040, 93045, 93184, 93213, 93215, 
93220, 93231, 93573, 93689, 93694, 93700, 93714, 93716, 93718, 93721, 
98179, 98180, 98181, 98182, 98183, 98188, 98189, 98190, 98191, 98192, 
98193, 98194, 24059, 24058, 24057, 24056, 24055, 24054, 24053, 24047, 
24046, 24045, 24044, 24043, 24042, 24041, 24040, 24039, 24038, 24037, 
24036, 24035, 24034, 24033, 24032, 24031, 24030, 24029, 24028, 24027, 
24026, 24025, 24024, 24023, 24022, 24021, 24020, 24019, 24018, 24017, 
24013, 24012, 24011, 24010, 24009, 24008, 24007, 24006, 24005, 24004, 
24003, 24002, 24001, 24000, 95651, 95701, 95740, 135610, 135609, 135608, 
135607, 135700, 135699, 135698, 135697, 135696, 135695, 135694, 135693, 
135707, 135706, 135705, 135704, 135703, 135702, 135701, 135709, 135708, 
135710, 135711, 8747, 10086, 10092, 10123, 10140, 10150, 10152, 10153, 
10416, 16347, 16348, 31815, 125365, 125366, 125367, 125368, 125369, 
125370, 125371, 125372, 125373, 125374, 125375, 125376, 125377, 125378, 
125379, 125381, 125382, 44231, 44290, 89850, 89853, 89855, 89856, 89857, 
89858, 85257, 85258, 85259, 85260, 85261, 85262, 85263, 85264, 85265, 
85266, 85267, 85268, 85269, 85270, 85271, 85272, 85273, 85274, 85275, 
85276, 85277, 85278, 85279, 85280, 85281, 85282, 85283, 85284, 85285, 
85286, 85287, 85288, 85289, 85290, 85291, 85292, 85293, 85294, 85295, 
85296, 85297, 85298, 85299, 104114, 104115, 104116, 104117, 104118, 
104119, 104121, 104122, 104123, 104124, 104125, 104126, 104127, 104129, 
104131, 104132, 104133, 104134, 104135, 104136, 104137, 104138, 104139, 
104140, 104141, 104142, 104143, 104145, 104146, 104147, 104149, 104150, 
104151, 104152, 104153, 104154, 104155, 104156, 104157, 104158, 104159, 
104166, 104167, 104168, 104169, 104170, 104171, 104172, 104177, 127802, 
127803, 127804, 127805, 127806, 127807, 127808, 127809, 127810, 127811, 
127812, 127813, 47165, 47974, 48600, 51747, 53730, 53731, 53734, 56692, 
56693, 69688, 69689, 69705, 69706, 69708, 69709, 91836, 91925, 92378, 
92474, 92475, 92476, 92517, 92520, 92547, 92561, 92562, 92662, 92663, 
92672, 92677, 92705, 92709, 92793, 97155, 97157, 97158, 97159, 97160, 
97161, 97162, 97163, 97164, 97165, 97166, 97167, 97168, 97169, 97170, 
97171, 97172, 97173, 97174, 97175, 50306, 50307, 50308, 50309, 50310, 
50311, 50312, 50313, 50314, 50315, 50316, 50317, 50318, 50319, 50320, 
50321, 50048, 50049, 50050, 50051, 50052, 50053, 50054, 50607, 50642, 
27650, 27649, 27648, 27647, 27646, 27645, 27644, 27643, 27642, 27641, 
27639, 27638, 27632, 27631, 8870, 8849, 8844, 8829, 8826, 8825, 8824, 
8821, 8820, 8812, 8811, 8810, 8808, 8806, 8803, 8802, 8801, 8799, 8683, 
8395, 8393, 8392, 8378, 8348, 8321, 104736, 104737, 104742, 104743, 
104744, 104748, 104749, 104750, 104761, 104765, 104766, 104767, 104770, 
104776, 104777, 104778, 104781, 104793, 104802, 104803, 104804, 104805, 
36773, 36774, 36775, 36776, 36777, 36778, 36779, 36780, 36781, 36782, 
36783, 36784, 36785, 36786, 36787, 36788, 36789, 36790, 36791, 36792, 
36793, 36794, 36795, 36796, 36797, 36798, 36799, 36800, 36801, 36802, 
36803, 36804, 36805, 36806, 36807, 36808, 36809, 36810, 36811, 36812, 
36813, 36814, 36815, 36816, 36817, 36818, 36819, 36820, 36821, 36822, 
36823, 36824, 36825, 36826, 36827, 36828, 36829, 36830, 36831, 36832, 
36833, 30532, 30483, 30481, 30455, 25152, 8489, 21539, 21538, 21537, 
21536, 21535, 21534, 21533, 21532, 21531, 21530, 21529, 21528, 21527, 
21526, 21525, 21524, 21523, 21522, 21521, 21520, 21519, 21518, 21517, 
21516, 21515, 21514, 21513, 21512, 21511, 21510, 21509, 21508, 21507, 
21506, 21505, 21504, 21503, 21502, 21501, 106855, 106856, 106857, 
106858, 106859, 106860, 106861, 106862, 106863, 106864, 106865, 106866, 
106867, 106868, 106869, 106870, 106871, 106872, 106873, 106874, 106875, 
106876, 106877, 106878, 106887, 106888, 106889, 106890, 106891, 106892, 
106893, 106894, 106904, 106905, 106906, 106907, 106920, 106921, 106922, 
106923, 106924, 106926, 106927, 106928, 106929, 106933, 106934, 106935, 
106936, 106937, 106938, 106939, 106940, 106941, 106942, 106943, 106944, 
106945, 106946, 106947, 106948, 106949, 106950, 106951, 106952, 106953, 
106954, 106955, 106956, 106957, 106958, 132309, 132310, 132311, 132312, 
24454, 24453, 24452, 24451, 24450, 24449, 24448, 24447, 24446, 24445, 
6813, 6793, 6788, 6786, 5819, 5755, 5714, 45378, 45380, 45382, 45383, 
45384, 45385, 45386, 46775, 46776, 46777, 46778, 46779, 46781, 46782, 
46783, 46784, 47152, 47156, 47158, 47159, 47161, 47162, 47163, 47164, 
47891, 1166, 1135, 841, 831, 830, 602, 86699, 89261, 25948, 25947, 
25945, 25944, 25943, 25942, 25941, 25940, 25939, 25938, 25937, 25936, 
25935, 25934, 25933, 25932, 25931, 25930, 25929, 25928, 25927, 25926, 
25925, 25924, 25923, 25922, 25921, 25920, 25919, 25918, 25917, 25916, 
25915, 25914, 25913, 25912, 25911, 25910, 25909, 25908, 25907, 25906, 
25903, 25902, 25901, 25900, 25899, 36099, 36100, 36101, 36102, 36103, 
36104, 36105, 36106, 78268, 84800, 84801, 84965, 85496, 85508, 85509, 
86297, 91827, 91828, 91829, 91831, 91850, 91874, 91889, 91892, 91952, 
92028, 92055, 92056, 92082, 92087, 92090, 92227, 92234, 97273, 97274, 
97275, 97280, 97282, 97283, 97284, 14832, 14828, 14816, 14815, 14811, 
14788, 14784, 14783, 14782, 98843, 98846, 98848, 124304, 124305, 124306, 
124316, 106827, 106828, 106829, 106830, 106831, 122645, 121632, 121633, 
121634, 121635, 121636, 121637, 121638, 121639, 121640, 121641, 121642, 
121643, 121644, 121645, 121646, 121647, 121648, 121649, 121650, 121651, 
121652, 48882, 48885, 48886, 89898, 90057, 90058, 90160, 90164, 90167, 
90170, 90173, 90176, 90218, 90222, 90397, 90401, 129396, 129397, 129398, 
129399, 129400, 129405, 129406, 129407, 129408, 129409, 129410, 129411, 
129412, 129413, 129414, 129415, 129416, 129417, 132471, 132472, 132473, 
132474, 132475, 132476, 100146, 100161, 100204, 100223, 100253, 100255, 
95071, 95127, 95209, 95282, 95348, 95417, 95489, 95528, 95611, 95687, 
95755, 95811, 95882, 95899, 96015, 96045, 96102, 96186, 96257, 96333, 
96397, 96432, 96511, 96582, 88104, 88105, 107424, 107437, 107438, 
107439, 107440, 107441, 107442, 107443, 107476, 132748, 132749, 132750, 
132752, 132753, 132755, 132756, 132757, 132758, 102220, 102221, 102222, 
102223, 102224, 35087, 35086, 14364, 14363, 14362, 14361, 14360, 14359, 
14358, 14357, 14356, 14355, 14354, 14353, 14352, 14351, 13822, 13821, 
13820, 13819, 13818, 13817, 13816, 13815, 13814, 13811, 13809, 13808, 
13800, 13799, 13798, 13797, 13796, 13795, 13794, 27169, 27168, 27167, 
27166, 27165, 27164, 27163, 27162, 27161, 27160, 27159, 27158, 27157, 
27156, 27155, 27154, 27153, 27152, 27151, 27150, 27149, 27148, 131393, 
131394, 131395, 131396, 131397, 131398, 131399, 131400, 131401, 131402, 
131403, 131404, 131405, 131406, 131407, 131408, 131409, 131410, 131411, 
131412, 131413, 131414, 131415, 131416, 131417, 131418, 131419, 131420, 
131421, 131422, 131423, 131424, 131425, 131426, 131427, 131428, 131429, 
131430, 131431, 131432, 131433, 131434, 131435, 131436, 2323, 1319, 
1300, 438, 437, 43261, 43262, 43263, 43264, 43265, 43266, 43267, 43268, 
43269, 43270, 43271, 43272, 43273, 43274, 43275, 43276, 2238, 2121, 
2120, 2118, 2116, 2112, 2108, 2106, 2078, 2076, 2075, 562, 561, 560, 
559, 558, 557, 135957, 135958, 135959, 135960, 135961, 135962, 135963, 
135964, 29828, 29827, 29826, 29825, 29824, 29823, 29822, 29821, 29820, 
29819, 29818, 29817, 29816, 29815, 29814, 29813, 29772, 29771, 29770, 
29769, 29768, 29767, 29766, 29765, 29764, 29763, 29762, 29761, 29760, 
29759, 29758, 29757, 29756, 29755, 29754, 29753, 29752, 29751, 29750, 
29749, 29748, 29747, 29746, 29745, 29744, 29743, 29742, 29741, 29740, 
29739, 29738, 29737, 29736, 29735, 29734, 125843, 125844, 125845, 
125846, 125847, 125848, 125849, 125850, 128527, 128528, 128529, 128530, 
128531, 128532, 128533, 128534, 126120, 126119, 126118, 126117, 126116, 
126022, 126021, 126020, 126019, 126018, 126017, 127541, 127542, 127543, 
127544, 127545, 127546, 127547, 127548, 127549, 127550, 127551, 107301, 
107305, 107307, 107309, 107310, 107312, 107313, 107314, 107315, 107316, 
107321, 107322, 107360, 107365, 107370, 107380, 107381, 107386, 107387, 
132740, 132741, 132742, 132743, 132744, 132745, 132746, 132747, 31422, 
31420, 31416, 31331, 31320, 31312, 31310, 31309, 31308, 31306, 31301, 
31300, 31198, 31093, 30986, 30980, 30947, 30928, 30867, 30864, 30809, 
30787, 30731, 30730, 30729, 30728, 30494, 30464, 25278, 25171, 18619, 
3601, 1734, 31441, 31435, 31432, 31469, 31655, 31657, 31660, 31661, 
31662, 31687, 31693, 31696, 31728, 33683, 33847, 105841, 105842, 105843, 
105844, 5044, 5004, 5003, 4988, 4970, 4968, 4964, 4963, 4961, 46009, 
46010, 46011, 46012, 46013, 46014, 46015, 46016, 46017, 46018, 46019, 
46020, 46021, 46022, 46023, 46024, 46025, 46026, 46027, 46028, 46029, 
46030, 46031, 46032, 46033, 46034, 46035, 46036, 46037, 46038, 46039, 
46040, 46041, 46042, 46043, 46044, 46045, 46046, 46047, 46048, 46049, 
46050, 46051, 46052, 46053, 46054, 46055, 46056, 46057, 46058, 46059, 
46060, 46061, 46062, 46063, 46064, 46065, 46066, 46067, 46068, 46069, 
46070, 46071, 46072, 46073, 46074, 12365, 12363, 12360, 12353, 12224, 
8320, 8319, 7600, 7599, 7598, 7597, 7595, 7593, 7592, 7591, 7582, 6686, 
6685, 6684, 6683, 6682, 6681, 6680, 6679, 6678, 6677, 4748, 4747, 4746, 
4745, 4744, 4743, 4742, 4741, 4740, 4739, 38585, 38586, 38587, 38588, 
38589, 38590, 38591, 38592, 38593, 38594, 38595, 38596, 38597, 38598, 
38599, 38600, 38601, 106511, 106517, 106518, 106519, 106520, 106521, 
106522, 106524, 106525, 106526, 106527, 106528, 106529, 106530, 106531, 
106532, 106533, 106535, 106536, 106538, 106539, 106540, 106541, 106543, 
106547, 106548, 106549, 106550, 106551, 106552, 106553, 106555, 106556, 
106557, 106558, 106559, 106560, 106561, 106562, 106563, 106564, 106565, 
106566, 106567, 106586, 106587, 106588, 106589, 125838, 128514, 124940, 
124941, 124942, 124943, 124944, 124945, 124946, 124947, 124948, 124949, 
124950, 124951, 124952, 124953, 124954, 124955, 124956, 124957, 124958, 
124959, 124960, 124961, 124962, 124963, 124964, 104728, 104729, 104730, 
104731, 104732, 104733, 201067, 200942, 106035, 106036, 106037, 106038, 
106039, 106040, 106065, 106071, 106072, 106079, 106080, 106100, 106101, 
106105, 106106, 106107, 106108, 106109, 106110, 106112, 106113, 106115, 
106116, 106117, 106119, 106121, 106123, 106124, 106125, 106126, 106127, 
106128, 106129, 106130, 106131, 106132, 106133, 106136, 106137, 106138, 
106143, 106144, 106145, 106146, 106147, 106148, 106149, 106150, 106151, 
106153, 106154, 106155, 51104, 51105, 51106, 51107, 51114, 51116, 51117, 
51136, 51137, 51138, 51139, 51140, 51141, 51142, 48927, 48929, 48930, 
48931, 48932, 48933, 48934, 48935, 48936, 91294, 91297, 91298, 91299, 
91300, 91301, 91303, 91363, 91364, 91366, 91367, 91368, 91369, 103368, 
103369, 103370, 103371, 103372, 103373, 103374, 103375, 103376, 103377, 
103378, 103379, 103380, 103381, 103382, 103383, 103384, 103385, 103386, 
103392, 103397, 103399, 103413, 103418, 103419, 103420, 103421, 103422, 
103425, 103426, 103427, 103429, 103433, 103434, 103435, 103436, 103437, 
103438, 103439, 103440, 103441, 103442, 103443, 103445, 103446, 103447, 
103448, 103449, 103450, 103451, 103456, 103457, 103458, 103459, 103460, 
103461, 103463, 41419, 41420, 41421, 41422, 41423, 41424, 41425, 41426, 
41427, 41428, 41429, 41430, 41431, 41432, 41433, 41434, 41435, 41436, 
41437, 41438, 41439, 41440, 41441, 41442, 41443, 41444, 41445, 41446, 
41447, 41448, 41449, 41450, 41451, 41452, 41453, 41454, 128742, 128743, 
128744, 121367, 121370, 136256, 136257, 136258, 136259, 128289, 128290, 
128291, 128292, 128293, 128294, 128295, 128296, 128297, 128298, 128299, 
128300, 128301, 128302, 128303, 128304, 128305, 128306, 128307, 128308, 
128309, 128310, 6692, 6290, 6255, 6214, 6160, 6159, 7525, 7526, 7540, 
7585, 7589, 8751, 8752, 8753, 8754, 10134, 10172, 10192, 18387, 20709, 
22275, 22277, 28328, 29885, 29886, 29888, 13301, 11936, 11729, 11645, 
11631, 11548, 11474, 11458, 11452, 11451, 11444, 11442, 11433, 11312, 
11303, 11268, 11269, 11252, 32187, 32186, 32185, 32184, 32183, 32182, 
32181, 32180, 32179, 45274, 45276, 45280, 45729, 45730, 45732, 45737, 
47065, 47066, 47067, 47068, 47070, 47073, 47074, 47233, 47234, 47235, 
47236, 47239, 47241, 48122, 48124, 48131, 48301, 48302, 48303, 48347, 
48364, 48365, 48587, 48588, 97557, 97558, 97560, 97561, 97562, 97563, 
97564, 5554, 5542, 5370, 5368, 5365, 5284, 5282, 4624, 3273, 3271, 3268, 
17583, 17581, 17568, 17386, 17382, 17381, 16971, 16965, 16958, 16761, 
16756, 15607, 137564, 137565, 33542, 33551, 33560, 33586, 46995, 47441, 
38602, 38603, 38604, 38605, 38606, 38607, 38609, 38610, 38611, 38612, 
38613, 38614, 38615, 38616, 38617, 38618, 38619, 38620, 13577, 13576, 
13575, 13574, 13573, 28299, 28298, 28297, 28296, 28295, 28294, 28293, 
28292, 28291, 28290, 28289, 28288, 28287, 28286, 28285, 97232, 97233, 
97234, 97235, 97237, 97238, 97239, 2625, 2599, 2596, 2594, 2584, 2576, 
2571, 2567, 10855, 10854, 10691, 10687, 10683, 10680, 10677, 10675, 
10674, 10673, 10669, 10670, 10672, 10665, 10662, 10660, 10566, 10564, 
10554, 10038, 9999, 9995, 9996, 9992, 9991, 9987, 9866, 104495, 104496, 
33132, 33131, 33130, 33129, 51705, 51706, 51707, 51708, 51709, 51710, 
51711, 51712, 51713, 125572, 125573, 125574, 125575, 125945, 125944, 
125943, 125942, 125941, 86644, 86645, 86646, 86703, 86704, 86705, 86706, 
86707, 86708, 86709, 86710, 86711, 86712, 86713, 86714, 86715, 86716, 
86895, 86896, 86897, 86898, 86901, 86924, 87086, 88899, 90486, 90490, 
90492, 90493, 13750, 13749, 13748, 13747, 13746, 13745, 13744, 13743, 
13742, 13741, 13740, 13739, 13738, 13737, 13736, 13735, 13734, 13733, 
13732, 104359, 104360, 104361, 104362, 104363, 104364, 104365, 104366, 
104367, 104374, 104375, 104376, 104377, 104378, 104379, 104380, 104381, 
104382, 104383, 104387, 104388, 104389, 104390, 104391, 104392, 104393, 
104394, 104395, 104399, 126737, 126738, 122718, 122719, 122720, 122721, 
122722, 122723, 122724, 122725, 122726, 122727, 122737, 122738, 122739, 
122740, 122741, 122742, 122743, 122744, 122745, 122746, 122747, 122748, 
122749, 122750, 122751, 122752, 122753, 122754, 122755, 122756, 11117, 
11116, 11115, 11108, 11097, 11095, 11094, 11091, 9939, 9938, 9918, 9831, 
9799, 9798, 9797, 9722, 9709, 9638, 9593, 9478, 123619, 123620, 123621, 
123622, 123623, 123624, 123625, 123626, 123627, 123628, 123629, 123630, 
123631, 123632, 123633, 123634, 123635, 123636, 123637, 123638, 123639, 
123640, 123641, 123642, 123643, 123644, 123645, 123646, 123647, 123648, 
123649, 123650, 123651, 123652, 123653, 123654, 123655, 123656, 106619, 
106638, 106639, 106640, 106647, 106648, 106649, 106650, 106651, 106652, 
106653, 106661, 106666, 106667, 106670, 106671, 106672, 106673, 106674, 
106678, 106690, 106707, 106708, 106715, 106716, 106717, 106718, 106719, 
106729, 106743, 106776, 106777, 106778, 106779, 106783, 106784, 106785, 
106786, 106787, 106788, 106789, 106790, 106791, 106792, 106793, 106794, 
106795, 106807, 97752, 97754, 97759, 97760, 97761, 97762, 97764, 97765, 
97766, 97767, 97768, 97769, 97770, 97771, 97772, 97773, 97774, 97775, 
97776, 97777, 97778, 97779, 97780, 97781, 97782, 97783, 97784, 97785, 
97786, 97787, 97788, 97790, 97791, 97792, 97793, 97794, 97795, 97796, 
97797, 97798, 97799, 97800, 97801, 97802, 97803, 97804, 97805, 97806, 
97807, 97808, 97809, 97810, 97811, 97812, 97813, 97814, 97815, 97816, 
97817, 97818, 97819, 97820, 97821, 97822, 97823, 97824, 97825, 97826, 
97827, 97828, 97829, 97830, 97832, 47251, 45886, 47804, 47807, 47810, 
90695, 90854, 90897, 90899, 90902, 91027, 91028, 91029, 91031, 91053, 
91072, 91081, 91082, 91087, 91091, 91092, 91094, 91095, 91098, 2483, 
2274, 1434, 1304, 15189, 15188, 15187, 15186, 15185, 15184, 15183, 
15182, 15181, 15180, 15179, 15178, 15177, 15176, 15175, 15174, 15173, 
15172, 15171, 15170, 15168, 15167, 15166, 15165, 15164, 15163, 15162, 
15161, 15160, 15159, 15158, 15157, 15156, 15155, 15154, 15153, 15152, 
15151, 15150, 15148, 15147, 15146, 126835, 126836, 126837, 126838, 
126839, 126840, 126841, 126842, 126843, 126844, 126845, 126846, 126847, 
56344, 56627, 56821, 56824, 57014, 57157, 57158, 57159, 57160, 57161, 
57162, 57180, 57416, 59516, 59766, 60702, 99160, 99161, 99162, 3885, 
3873, 3870, 3788, 3786, 3781, 3771, 3707, 3678, 3650, 3072, 2985, 2979, 
2874, 2831, 2774, 2771, 2692, 1306, 1299, 1290, 1289, 1265, 856, 851, 
849, 847, 845, 844, 842, 821, 278, 277, 14739, 14723, 14722, 14721, 
14720, 14717, 14708, 13386, 13384, 13381, 13379, 13371, 11969, 11934, 
11904, 11748, 11638, 11611, 11610, 11607, 11596, 11590, 11586, 11585, 
11579, 11578, 11549, 11540, 11465, 11464, 11459, 11425, 11381, 11350, 
11327, 11325, 11321, 11319, 11318, 11308, 11285, 11284, 11249, 45469, 
47222, 131189, 131190, 131191, 133442, 133443, 133444, 133445, 11773, 
11772, 11771, 11770, 11769, 10409, 10408, 10407, 10406, 10405, 10404, 
10403, 10402, 10190, 10189, 10188, 10187, 10186, 10185, 10184, 10183, 
10182, 8407, 8406, 8405, 8404, 8403, 8402, 8401, 8400, 7624, 7619, 7617, 
7611, 7606, 7605, 7604, 7603, 7602, 7601, 7260, 7259, 7258, 7257, 7256, 
6969, 6689, 6688, 6687, 4758, 4757, 4756, 4755, 4754, 4753, 4752, 4751, 
4750, 4749, 125006, 125007, 125008, 125009, 125010, 125011, 125012, 
125013, 125014, 125015, 125016, 125017, 125018, 125019, 125020, 125021, 
125022, 125023, 125024, 125025, 125026, 125027, 125028, 125029, 125030, 
11147, 11148, 11146, 10941, 10744, 10726, 10725, 10724, 10723, 10722, 
10334, 10308, 10309, 10007, 9957, 9953, 9952, 9869, 9849, 9841, 9775, 
9755, 9599, 9596, 45942, 45941, 45940, 45938, 45936, 45909, 45908, 
45903, 45895, 45892, 45891, 45890, 45889, 45888, 47815, 47816, 47817, 
47819, 47837, 47839, 47840, 47842, 90689, 90692, 90702, 90704, 90706, 
90707, 90708, 90709, 90711, 90714, 90718, 90719, 90720, 90859, 90864, 
90866, 90869, 90874, 90875, 90876, 90912, 91036, 91038, 91040, 91042, 
91057, 91060, 91062, 91075, 91080, 91083, 91090, 91096, 91102, 91105, 
91106, 91107, 91166, 91197, 91198, 91206, 51733, 51752, 51753, 51754, 
51755, 51756, 24424, 24423, 24422, 24421, 24420, 24419, 24418, 24417, 
24416, 24415, 24413, 24412, 24411, 24410, 24409, 24408, 24407, 24406, 
24405, 24404, 24403, 24402, 24401, 24400, 24399, 24398, 24397, 24396, 
24395, 24394, 24393, 24392, 24391, 24390, 24389, 24388, 24387, 24386, 
24385, 24384, 24383, 24382, 24381, 51693, 51694, 51695, 51696, 51697, 
51698, 51699, 51700, 51701, 51702, 51703, 51704, 105232, 105242, 105252, 
105351, 98953, 98961, 98966, 98967, 98968, 98969, 98970, 98971, 98972, 
98973, 98974, 98975, 98987, 98988, 98989, 98990, 98991, 98992, 98993, 
98994, 98995, 98996, 98997, 98998, 98999, 99000, 99001, 99002, 99003, 
99004, 24076, 24075, 24074, 24073, 24072, 24071, 24070, 24069, 24068, 
24067, 3658, 2995, 2887, 2879, 2838, 2799, 2789, 2744, 2742, 2738, 2651, 
2649, 2647, 2501, 2396, 1927, 1878, 1385, 1148, 1137, 1129, 1122, 1112, 
1097, 1096, 1095, 1094, 1089, 1081, 839, 757, 2604, 2569, 2562, 2560, 
2556, 2211, 2209, 2206, 2205, 2203, 2191, 2187, 1123, 1104, 1103, 988, 
986, 982, 103499, 103502, 103503, 103504, 103505, 103506, 103507, 
103508, 103509, 12223, 12219, 12217, 12216, 12214, 12210, 12206, 12205, 
12200, 12198, 12197, 122164, 122165, 122166, 122167, 122168, 122169, 
122170, 122171, 122172, 122173, 122174, 122175, 122176, 122177, 122178, 
122179, 122180, 122181, 122182, 122183, 122184, 122185, 122186, 122187, 
122188, 122189, 122190, 122191, 122192, 122193, 122194, 122195, 122196, 
122197, 122198, 122199, 122200, 122201, 122202, 122203, 122204, 122205, 
122206, 122207, 122208, 122209, 122210, 122211, 122212, 122213, 122214, 
29092, 29091, 29090, 29089, 29088, 16272, 16271, 16270, 16269, 16266, 
16264, 16263, 18698, 18700, 18702, 18704, 18705, 18706, 18713, 136651, 
136652, 136653, 136654, 136655, 136656, 136657, 136658, 136659, 136660, 
136661, 136662, 136663, 53969, 54002, 54018, 54019, 38543, 38544, 38545, 
38546, 38547, 38548, 38549, 38550, 38551, 38552, 38553, 38554, 38555, 
38556, 38557, 38558, 38559, 38560, 38561, 38562, 38563, 38564, 38565, 
38566, 38567, 38568, 38569, 23116, 23115, 23114, 23113, 23112, 23109, 
23108, 23107, 23106, 23105, 132350, 132351, 132352, 132353, 132354, 
132355, 132356, 132357, 132358, 132359, 132360, 132361, 132362, 132364, 
132365, 132366, 5027, 5025, 4877, 4875, 4870, 4333, 4332, 4322, 4320, 
4319, 4318, 4289, 4288, 4282, 4280, 4278, 102732, 102733, 102735, 
102736, 15277, 15221, 16014, 16013, 16012, 16010, 16009, 16005, 16004, 
16000, 15999, 15798, 15719, 15712, 15707, 15706, 15295, 102856, 102866, 
102890, 102895, 102903, 102928, 102929, 102951, 102952, 102953, 102954, 
102955, 102956, 102957, 102958, 102959, 102960, 102961, 102962, 102963, 
102964, 102965, 102966, 102967, 102968, 102969, 102970, 102971, 102972, 
102973, 102974, 102975, 39070, 39071, 39074, 39076, 39109, 39110, 39113, 
39125, 39126, 39127, 39128, 39129, 39142, 39143, 39144, 39155, 39156, 
39157, 39165, 39172, 39174, 39176, 39177, 39184, 39185, 39186, 39187, 
39188, 39189, 39194, 39195, 39196, 39197, 39198, 39218, 39219, 39220, 
39226, 39227, 39229, 39230, 39231, 39232, 39238, 39239, 39241, 39242, 
39243, 39244, 39245, 39246, 39247, 39248, 39249, 39250, 39251, 39253, 
39254, 39255, 39256, 39262, 39264, 39265, 39270, 39272, 39273, 39274, 
39275, 39279, 39283, 39285, 39286, 39292, 39295, 39348, 39366, 39380, 
39381, 39388, 39390, 39394, 39397, 39408, 39409, 39410, 39415, 39432, 
39437, 39439, 39440, 39473, 39488, 39512, 39519, 39520, 39527, 39532, 
39551, 39552, 39571, 39591, 39592, 39593, 39594, 39641, 39645, 39678, 
39706, 39714, 40399, 40412, 40432, 102695, 102696, 127822, 127823, 
127824, 51303, 51304, 51305, 51306, 51307, 51308, 51309, 51310, 51311, 
51312, 51313, 51314, 51315, 51316, 105236, 105244, 105249, 105250, 
105251, 105253, 105254, 105255, 105256, 105257, 105258, 105259, 105260, 
105261, 105262, 105263, 105264, 105265, 105266, 105267, 105268, 105269, 
105270, 105271, 105272, 105273, 105274, 105275, 105276, 105281, 105282, 
105283, 105284, 105285, 105286, 105287, 105288, 105289, 105290, 105291, 
105292, 105293, 105294, 105295, 105296, 105297, 105298, 105299, 105300, 
105301, 105302, 105303, 105304, 105305, 105307, 105308, 105310, 105317, 
105319, 105320, 105321, 105322, 105324, 105325, 105326, 105327, 105328, 
105329, 105330, 105331, 105332, 105333, 105334, 105335, 105336, 105337, 
105338, 105339, 105340, 105341, 105342, 105343, 105344, 105345, 105346, 
105347, 105348, 105349, 105350, 105352, 105353, 68465, 68466, 68467, 
97176, 97177, 97178, 97179, 97180, 97181, 97182, 97183, 97184, 97185, 
85079, 85078, 126610, 126614, 126615, 126616, 126617, 126618, 49235, 
49234, 49219, 49218, 51391, 93545, 93735, 93736, 93737, 93739, 200873, 
200872, 53943, 53953, 53954, 22423, 22422, 22421, 22420, 22419, 22418, 
22417, 22416, 22415, 22414, 22413, 22412, 22411, 22410, 22409, 22408, 
22407, 22406, 22405, 22404, 22403, 22402, 22401, 22400, 22399, 22398, 
22397, 22396, 22395, 22394, 22393, 22392, 22391, 22390, 22389, 22388, 
22387, 22386, 22385, 22384, 22383, 22382, 22381, 22380, 22379, 22378, 
22377, 22376, 22375, 22374, 22373, 22372, 22371, 22370, 22369, 22368, 
22367, 22366, 22365, 22364, 22363, 32429, 32428, 32427, 32426, 32425, 
2586, 2581, 2574, 2572, 2570, 2568, 2565, 2549, 42228, 42229, 42230, 
42231, 42232, 42233, 42234, 42235, 42236, 42237, 42238, 42239, 42240, 
42241, 42242, 42243, 42244, 42245, 42246, 42247, 42248, 42249, 32132, 
32131, 32130, 7783, 7780, 7779, 7778, 7776, 7774, 7739, 7063, 7058, 
7057, 7056, 7782, 7784, 7785, 7786, 7787, 7789, 40838, 40839, 40840, 
40841, 40842, 40843, 40844, 40845, 40846, 40847, 40848, 40849, 40850, 
136664, 136665, 136666, 136667, 136668, 136669, 136670, 136671, 136672, 
136673, 136674, 136675, 136676, 136677, 136678, 136679, 136680, 136681, 
136682, 136683, 136684, 136685, 136686, 136687, 136688, 136689, 136690, 
136691, 136692, 136693, 136694, 136695, 136696, 136697, 136698, 136699, 
136700, 136701, 136702, 136703, 136704, 136705, 136706, 136707, 136708, 
136709, 136710, 136711, 136712, 136713, 136714, 136715, 136716, 136717, 
136718, 136719, 136720, 136721, 136722, 136723, 136724, 136725, 136726, 
136727, 136728, 136729, 137621, 137622, 137623, 137624, 137625, 137626, 
137627, 137628, 137629, 94529, 94530, 94531, 94532, 94533, 94534, 94535, 
94536, 94537, 94538, 94539, 94540, 94541, 94542, 94543, 94544, 94545, 
94546, 94547, 94548, 94549, 94550, 94551, 94552, 94553, 94554, 94555, 
94556, 94557, 94558, 94559, 94560, 94561, 94562, 94563, 94564, 94565, 
94566, 94567, 94568, 94569, 94570, 94571, 94572, 94573, 94574, 94575, 
94576, 94577, 94578, 94579, 94580, 94581, 94582, 94583, 94584, 94585, 
94586, 94587, 94588, 94589, 94590, 94591, 94592, 94593, 94594, 94595, 
94596, 94597, 94598, 94599, 94600, 94601, 94602, 94603, 94604, 94605, 
94606, 94607, 94608, 94609, 94610, 94611, 94612, 94613, 94614, 94615, 
94616, 94617, 94618, 94619, 94620, 94621, 94622, 94623, 94624, 94625, 
94626, 94627, 94628, 94629, 94630, 94631, 94632, 94633, 94634, 94635, 
94636, 94637, 94638, 94639, 94640, 94641, 94642, 94643, 94644, 94645, 
94646, 94647, 94648, 94649, 94650, 94651, 94652, 94653, 94654, 94655, 
94656, 94657, 94658, 94659, 94660, 94661, 94662, 94663, 94664, 94665, 
94666, 94667, 94668, 94669, 94670, 94671, 94672, 94673, 94674, 94675, 
94676, 94677, 94678, 94679, 94680, 94681, 94682, 94683, 94684, 94685, 
94686, 94687, 94688, 94689, 94690, 94691, 94692, 94693, 94694, 94695, 
94696, 94697, 94698, 94699, 94700, 94701, 94702, 94703, 94704, 94705, 
94706, 94707, 94708, 94709, 94710, 94711, 94712, 94713, 94714, 94715, 
94716, 94717, 94718, 94719, 94720, 94721, 94722, 94723, 94724, 94725, 
94726, 94727, 94728, 94729, 94730, 94731, 94732, 94733, 94734, 94735, 
94736, 94737, 94738, 94739, 94740, 94741, 94742, 94743, 94744, 94745, 
94746, 94747, 102751, 102752, 102754, 102755, 102762, 102763, 102764, 
102765, 102766, 102767, 102768, 102769, 102770, 2510, 2500, 2490, 2477, 
2383, 2374, 2342, 2270, 2259, 2253, 2247, 2240, 2236, 2231, 2123, 1999, 
1971, 1691, 1644, 1640, 1578, 1467, 914, 832, 21465, 21464, 21463, 
21462, 21461, 21460, 21459, 21458, 21457, 21456, 21455, 21454, 21453, 
21452, 21451, 21450, 21449, 21448, 21447, 21446, 38673, 38790, 38922, 
38924, 38927, 5014, 5013, 4876, 4871, 4869, 4867, 4863, 4862, 4831, 
4342, 4327, 4324, 4323, 4266, 4265, 4264, 124895, 124896, 124897, 
124898, 124899, 124900, 124901, 124902, 124903, 124904, 124905, 124906, 
124907, 124908, 124911, 124912, 136763, 136764, 136765, 136766, 1629, 
1624, 1623, 1622, 1621, 1620, 1460, 1459, 37601, 38705, 38706, 38707, 
38708, 38710, 38882, 38947, 38948, 38949, 38950, 38964, 39549, 40157, 
40158, 40183, 40199, 56724, 56731, 56775, 56783, 56794, 56799, 91259, 
91263, 91267, 91270, 91279, 91288, 91292, 29875, 29874, 29873, 29872, 
29871, 29870, 29869, 29868, 29867, 29866, 29865, 29864, 29863, 29862, 
29861, 29860, 29859, 29858, 29857, 29856, 29855, 29854, 29853, 29852, 
29851, 29850, 29849, 29848, 29847, 22949, 22948, 22947, 22946, 22945, 
22944, 22943, 22942, 22941, 22940, 22939, 22938, 22937, 22936, 22935, 
22934, 22933, 22932, 27054, 27053, 27052, 27051, 27050, 27049, 1851, 
1203, 1199, 1191, 793, 92856, 92868, 92926, 92935, 93048, 93049, 93247, 
91593, 91600, 91602, 91625, 91636, 91677, 91689, 24267, 24266, 24265, 
24264, 24263, 24262, 24261, 24260, 24259, 24258, 24257, 24256, 24255, 
27034, 27033, 27032, 27031, 27030, 27029, 27028, 27027, 27026, 27025, 
27024, 27023, 27022, 95074, 95166, 95188, 95296, 95325, 95426, 95442, 
95545, 95567, 95636, 95696, 95767, 95844, 95935, 95960, 96047, 96084, 
96149, 96264, 96279, 96343, 96452, 96482, 96559, 47737, 47748, 47754, 
47761, 90827, 90838, 122466, 122467, 122468, 122469, 122470, 122471, 
122472, 122475, 122476, 122477, 122478, 122479, 122480, 122481, 98080, 
98081, 98083, 98084, 98948, 98949, 98950, 98951, 98955, 98956, 98957, 
98960, 99005, 5959, 5942, 5933, 5932, 5931, 5178, 5164, 5163, 5162, 
5139, 5043, 5042, 4993, 4974, 4972, 4969, 4946, 4945, 4943, 4927, 4457, 
4456, 4455, 4454, 4438, 51714, 51715, 51716, 51717, 51718, 51719, 51720, 
23716, 23715, 23714, 23713, 23712, 136048, 136049, 136050, 136051, 
136052, 136053, 137532, 137533, 137534, 137535, 137536, 137537, 32173, 
32172, 32171, 32170, 32169, 32168, 32167, 32166, 32165, 32164, 32163, 
44233, 44289, 44292, 44294, 44295, 52597, 52811, 52851, 53858, 53859, 
53957, 53958, 53960, 53961, 54037, 54046, 54048, 54078, 54436, 54437, 
89591, 89594, 89660, 89661, 89663, 89664, 89666, 89668, 89669, 89670, 
89671, 89672, 89673, 89675, 89676, 89851, 89854, 90221, 90290, 90333, 
29982, 29981, 102380, 102381, 102382, 96497, 96498, 96499, 126171, 
126170, 126169, 126168, 126167, 126166, 126165, 24662, 24661, 24660, 
24659, 24658, 24657, 24656, 24655, 24654, 24653, 24652, 24651, 24650, 
24649, 24648, 24647, 24646, 24645, 24644, 24643, 24642, 24641, 24640, 
24639, 24638, 24637, 24636, 24635, 24634, 24633, 24632, 24631, 24630, 
24629, 24628, 24627, 24626, 24625, 24624, 24623, 24622, 24621, 24620, 
24617, 24616, 24615, 24614, 24613, 24612, 24611, 24610, 24609, 24608, 
24607, 24606, 24605, 24604, 24603, 24602, 24601, 137492, 137493, 120909, 
120910, 120911, 120912, 120914, 120915, 120916, 126934, 126935, 126936, 
126937, 126938, 126943, 126944, 16326, 16327, 21273, 21272, 21271, 
21270, 21269, 21268, 21267, 21266, 21265, 21264, 21263, 21262, 21261, 
21260, 21259, 21258, 21257, 21256, 21255, 21254, 21253, 21252, 21251, 
21250, 21249, 21248, 21247, 21246, 21245, 21244, 21243, 21242, 21241, 
21240, 21239, 21238, 21237, 21236, 21235, 21234, 21233, 95058, 95119, 
95200, 95268, 95368, 95386, 95473, 95526, 95615, 95684, 95752, 95797, 
95865, 96006, 96040, 96090, 96177, 96219, 96319, 96381, 96430, 96522, 
96562, 38698, 42800, 42802, 42804, 42805, 43607, 43612, 44171, 44173, 
131438, 131439, 131440, 131441, 131442, 131443, 131444, 131445, 131446, 
131447, 131448, 131449, 131450, 131451, 131452, 131453, 131454, 131455, 
131456, 131457, 120965, 120966, 120967, 120968, 120969, 120970, 120971, 
120972, 5071, 5070, 5067, 6705, 6704, 6696, 6272, 8654, 8770, 8772, 
8775, 8781, 8782, 8785, 8907, 9667, 9673, 10090, 10096, 10103, 10104, 
10106, 11674, 564, 563, 18385, 18443, 18445, 18451, 7842, 7841, 7194, 
7191, 98830, 98831, 98832, 98838, 98839, 98840, 47433, 47434, 47435, 
47436, 47443, 47447, 47458, 47460, 48222, 48223, 89892, 89893, 48866, 
48865, 93368, 93369, 93370, 93414, 93418, 93421, 93429, 93432, 93433, 
93442, 93459, 93477, 93478, 93479, 93482, 93487, 93489, 93491, 63141, 
95052, 95053, 95141, 95143, 95147, 95219, 95229, 95231, 95245, 95246, 
95247, 95350, 95353, 95357, 95377, 95382, 95383, 95458, 95462, 95464, 
95523, 95534, 95535, 95591, 95603, 95606, 95656, 95658, 95664, 95710, 
95712, 95720, 95788, 95794, 95801, 95827, 95830, 95841, 95904, 95908, 
95916, 95967, 95973, 95974, 96036, 96051, 96057, 96133, 96137, 96138, 
96200, 96202, 96216, 96220, 96222, 96303, 96304, 96305, 96341, 96350, 
96354, 96409, 96410, 96475, 96481, 96483, 96535, 96536, 96544, 35295, 
35296, 35297, 35298, 35299, 35300, 35301, 35302, 35303, 35304, 35305, 
35306, 35307, 35308, 35309, 35310, 35311, 35312, 35313, 35314, 35315, 
35316, 35317, 35318, 35319, 35320, 35321, 35322, 35323, 53749, 53750, 
53839, 54745, 54747, 57024, 69693, 69701, 78683, 84417, 84482, 84508, 
84802, 84803, 84815, 84956, 84966, 85497, 85504, 85511, 86411, 86412, 
86862, 86863, 90953, 91803, 91813, 91815, 91816, 91817, 91818, 91821, 
91822, 91823, 91983, 91989, 91997, 92002, 92010, 92020, 92079, 92112, 
92115, 92119, 92122, 92137, 92145, 92295, 92304, 92305, 92306, 92307, 
92309, 92312, 92313, 92325, 92350, 92358, 92366, 92465, 92488, 92490, 
92491, 92508, 92577, 92578, 92601, 92615, 92632, 92633, 92643, 92647, 
92658, 92661, 92717, 92719, 92728, 92731, 92737, 92742, 92744, 92750, 
92754, 92759, 92760, 92767, 92801, 92807, 92812, 92818, 92822, 9347, 
9346, 9345, 9344, 9049, 8930, 8793, 8792, 8791, 8735, 8732, 8731, 8388, 
8387, 8386, 8384, 8352, 8351, 8350, 8326, 8322, 8271, 24931, 24930, 
24929, 24928, 24927, 24926, 24925, 24924, 24923, 24922, 24921, 24920, 
24919, 24918, 1642, 1365, 1245, 1105, 840, 835, 92533, 92593, 92612, 
92619, 92631, 92712, 92715, 92837, 2573, 2557, 2552, 2546, 2542, 2044, 
2042, 2038, 2037, 2036, 1963, 1952, 1861, 1681, 1407, 1322, 1238, 1147, 
121050, 121051, 121052, 121053, 121054, 31266, 31261, 31260, 31257, 
30761, 30760, 30759, 30717, 30713, 30709, 30708, 18602, 31566, 31567, 
31575, 18160, 18162, 18468, 18481, 18503, 18506, 18509, 18511, 18512, 
18513, 18514, 18515, 18520, 18523, 19116, 102437, 102438, 102439, 
102440, 102441, 102442, 102452, 102471, 102472, 102473, 102474, 102475, 
102476, 102477, 102478, 102479, 102480, 102481, 102482, 102483, 102484, 
102485, 104009, 104010, 104083, 104085, 104086, 104089, 104090, 104091, 
104092, 104093, 104094, 104096, 104098, 104099, 104100, 104101, 104102, 
33101, 33100, 33099, 33098, 33097, 33096, 25238, 25237, 25236, 25235, 
25234, 25233, 25232, 25231, 25230, 25229, 25228, 25227, 25226, 25225, 
25224, 25223, 25221, 25220, 25219, 25218, 25217, 25216, 25215, 25214, 
25213, 25212, 25211, 25210, 25209, 25208, 25207, 25206, 25205, 25204, 
25203, 25202, 25201, 25200, 25199, 25198, 25197, 25196, 25195, 25194, 
25193, 25192, 25191, 25190, 25189, 25188, 25187, 25186, 25185, 25184, 
25183, 25182, 25181, 25180, 25179, 25178, 25177, 25176, 25175, 25174, 
25173, 25172, 25170, 25165, 25163, 25162, 25161, 25160, 25158, 25157, 
25155, 25149, 25148, 25146, 25145, 25144, 25143, 25142, 25141, 25140, 
25139, 25138, 25137, 25136, 25135, 25134, 25133, 25132, 25131, 104296, 
104320, 104330, 104347, 104348, 104349, 104351, 104352, 104353, 34909, 
34908, 34907, 34906, 34905, 34904, 34903, 34902, 34901, 34900, 34899, 
34898, 34897, 34896, 34895, 34894, 34893, 34892, 34891, 34890, 34889, 
34888, 34887, 34886, 34885, 34884, 34883, 34882, 125111, 125112, 125113, 
125114, 125115, 125116, 125117, 125118, 125119, 125120, 125121, 125122, 
125123, 125124, 125125, 125126, 125127, 125128, 125129, 125130, 125131, 
125132, 125133, 125134, 125135, 125136, 125137, 125138, 125139, 125140, 
125141, 125142, 125143, 125144, 125145, 125146, 125147, 125148, 125149, 
125150, 125151, 125152, 125153, 125154, 125156, 125157, 125158, 125159, 
125160, 125161, 125163, 125164, 125165, 125167, 125168, 125169, 125170, 
125171, 125172, 125173, 125174, 125175, 125176, 125177, 125178, 125179, 
125180, 125181, 125182, 125183, 125184, 125185, 125186, 125187, 125188, 
125189, 125190, 125191, 125192, 125193, 125194, 125195, 125197, 125198, 
125199, 125200, 125201, 125202, 125203, 125204, 125205, 125206, 125207, 
125208, 125209, 125210, 125211, 125212, 125213, 125214, 125215, 125216, 
125217, 125218, 125219, 125220, 125221, 125222, 125223, 125224, 125225, 
125226, 125227, 125228, 125229, 125230, 125231, 125232, 125233, 125234, 
125235, 125236, 125237, 125238, 125239, 125240, 125242, 125243, 125244, 
125245, 125246, 125247, 125248, 125249, 125250, 125251, 125252, 125253, 
125254, 125255, 125256, 125257, 125258, 125259, 125260, 125261, 125262, 
125263, 125264, 125265, 125266, 125267, 125268, 125269, 125270, 125271, 
125272, 125273, 125274, 125275, 125276, 125277, 125278, 125279, 125280, 
125281, 125282, 125283, 125284, 125285, 125286, 125287, 125288, 125289, 
125290, 125291, 125292, 125293, 125294, 125295, 125296, 125297, 125298, 
125299, 125300, 125301, 125302, 125303, 125304, 125305, 125306, 125307, 
125308, 125309, 125310, 125311, 125312, 125313, 125314, 125315, 125316, 
125317, 125318, 125319, 125320, 125321, 125322, 125323, 125324, 125325, 
125326, 125327, 125328, 125331, 125332, 125333, 125334, 125335, 125336, 
125337, 125338, 125339, 125340, 125341, 125342, 125343, 125344, 125345, 
125346, 125347, 125348, 125349, 125350, 125351, 125352, 121072, 121073, 
121074, 121075, 40196, 40290, 40301, 40302, 40671, 40680, 40712, 40715, 
40718, 56218, 56281, 15996, 15872, 15828, 15813, 15745, 15738, 15700, 
15692, 15671, 15638, 15629, 15574, 15551, 15552, 15550, 15548, 15484, 
15476, 15470, 15430, 15429, 15428, 15371, 15349, 15341, 15342, 95066, 
95124, 95227, 95287, 95335, 95415, 95490, 95530, 95609, 95681, 95745, 
95824, 95886, 95928, 96000, 96077, 96121, 96197, 96238, 96334, 96390, 
96438, 96517, 96583, 48833, 48828, 48823, 48822, 48817, 48808, 48771, 
48760, 48548, 48478, 48476, 48436, 48363, 48940, 48943, 48978, 48979, 
48984, 48985, 48988, 48989, 48994, 48995, 91304, 91306, 91414, 10573, 
10316, 10314, 10232, 10230, 10229, 10175, 9859, 9729, 9649, 14710, 
14706, 14701, 14695, 14692, 14690, 14689, 14683, 14658, 14524, 14523, 
14521, 13258, 13253, 13250, 11941, 11598, 11595, 11593, 11587, 11582, 
86165, 86163, 121760, 121761, 121762, 121763, 121764, 121765, 121766, 
121767, 121768, 121769, 121770, 121771, 121772, 121773, 121774, 25848, 
25847, 25846, 25845, 25844, 25843, 25842, 25841, 25840, 25839, 25838, 
25837, 25836, 25835, 25834, 25833, 25832, 25831, 25830, 38040, 38052, 
38396, 38398, 41776, 41825, 41935, 44499, 44500, 44502, 44504, 44528, 
44530, 44541, 44543, 44544, 44703, 44708, 44710, 27655, 27654, 27653, 
27652, 27651, 27640, 27637, 27636, 27635, 27634, 27633, 27630, 65522, 
65451, 34445, 34444, 34443, 34442, 34441, 34440, 34439, 34438, 34437, 
34436, 34435, 34434, 34433, 34432, 34431, 34430, 34429, 34428, 34427, 
34426, 34425, 34424, 34423, 34422, 34421, 34420, 34419, 34418, 34417, 
34416, 34415, 34414, 45232, 45233, 45442, 45444, 45448, 45450, 46874, 
46875, 46876, 46878, 46900, 47193, 47195, 48000, 48001, 48275, 48277, 
48279, 48536, 48601, 48602, 48605, 48606, 48607, 48629, 51649, 51735, 
51990, 51991, 51992, 51996, 52008, 52178, 52471, 52477, 52511, 52542, 
52546, 52586, 52587, 40865, 40866, 40867, 40868, 40869, 40870, 40871, 
40872, 40873, 40874, 40875, 40876, 40877, 40878, 40879, 40880, 40881, 
40882, 40883, 40884, 40885, 40886, 28482, 28483, 28484, 33824, 33944, 
33999, 38300, 38304, 39017, 39018, 39021, 41883, 41885, 41886, 41957, 
41958, 41959, 41962, 41963, 41965, 136422, 136423, 136424, 136425, 3670, 
3668, 2973, 2862, 2821, 122255, 122256, 133631, 133632, 133633, 133634, 
133635, 133636, 133637, 126848, 126849, 126850, 126851, 126852, 126853, 
126854, 126855, 126856, 126857, 126858, 126859, 126860, 126861, 126862, 
121175, 121176, 121177, 121178, 121179, 121180, 121181, 121182, 121183, 
121184, 121185, 121186, 121187, 121188, 121189, 121190, 121191, 53768, 
53769, 53770, 53771, 53772, 53773, 53774, 53775, 53776, 53833, 53834, 
27742, 27740, 27739, 27738, 27737, 27736, 27735, 27734, 27733, 27732, 
27731, 27729, 27727, 124259, 124264, 124265, 124266, 31405, 31404, 
31400, 31399, 31392, 31388, 31159, 31003, 30999, 30968, 30967, 30966, 
30965, 30964, 30874, 30799, 30798, 30797, 30796, 30795, 30754, 30718, 
30699, 30698, 30697, 30695, 30694, 30693, 30630, 30622, 30621, 30503, 
30475, 30433, 18641, 8023, 8022, 13580, 39311, 39312, 39313, 39314, 
39315, 39316, 52707, 36394, 36395, 36396, 36397, 36398, 36399, 36400, 
36401, 36402, 36403, 36404, 36405, 36406, 36407, 36408, 36409, 36410, 
31784, 31783, 31782, 31781, 31773, 31762, 31748, 31502, 31501, 30477, 
30476, 35263, 35262, 35261, 35260, 35259, 35258, 35257, 35256, 35255, 
35254, 35249, 35248, 35235, 35234, 128313, 128314, 128315, 128316, 
128317, 128318, 135759, 135760, 135761, 135762, 135763, 135764, 135765, 
135766, 135767, 135768, 135769, 6133, 6127, 39114, 39158, 39288, 39289, 
39576, 39577, 39583, 39585, 39589, 39590, 39601, 39602, 39605, 39610, 
40695, 40730, 40735, 40738, 40747, 40757, 40764, 40769, 40795, 40799, 
40800, 40802, 40806, 40820, 40824, 40829, 40835, 132819, 132820, 132821, 
132822, 132823, 132826, 132827, 132828, 132829, 132831, 132434, 132435, 
132436, 132437, 132438, 31074, 31072, 31050, 30923, 31639, 31641, 31645, 
128885, 128886, 128887, 128888, 128889, 128890, 128891, 128892, 128893, 
128894, 128895, 128896, 128897, 128898, 128899, 128900, 128901, 128902, 
128903, 128904, 128905, 128906, 128907, 128908, 128909, 103606, 103610, 
103613, 103615, 103618, 103619, 103620, 103621, 103622, 103623, 103624, 
103625, 103626, 103627, 103628, 103629, 103631, 103632, 103633, 103634, 
103635, 103636, 103637, 103641, 103643, 103644, 103645, 103646, 103647, 
103648, 103649, 103650, 103651, 103652, 103653, 103654, 103655, 103656, 
103657, 103658, 103659, 103660, 103661, 103663, 89635, 89637, 89638, 
89639, 89640, 89641, 89643, 89644, 89645, 89647, 89648, 89650, 89655, 
89682, 89683, 89686, 89687, 89688, 89690, 89693, 89859, 90241, 90272, 
90297, 90367, 90370, 127438, 127439, 127440, 127441, 93022, 93036, 
93115, 93117, 93128, 93133, 93139, 93144, 93250, 93251, 93324, 93373, 
93375, 93376, 93385, 93386, 93446, 93447, 93452, 93458, 33312, 33311, 
33310, 33309, 33308, 33307, 33306, 33305, 33304, 33303, 33302, 33300, 
33299, 33298, 33297, 33296, 33295, 33294, 38808, 38974, 38976, 38977, 
6822, 5918, 5917, 5916, 5914, 5912, 5910, 5909, 5903, 5882, 5880, 5877, 
5875, 5795, 5792, 5789, 5788, 5780, 5764, 5763, 5762, 5760, 5759, 5739, 
5689, 5668, 2385, 2333, 24203, 24202, 24201, 24200, 24199, 24198, 24197, 
24196, 24195, 24194, 24193, 24192, 132428, 132429, 132430, 132431, 
132432, 132433, 13601, 13597, 13596, 13595, 86610, 86611, 86612, 86695, 
86696, 86697, 136604, 136606, 136608, 37592, 38745, 38784, 38795, 38860, 
38894, 38897, 38900, 38901, 68754, 68756, 69492, 81709, 89463, 89465, 
89470, 89473, 89915, 89917, 89918, 89919, 89921, 89922, 89923, 90060, 
90064, 90067, 90075, 90078, 90082, 90085, 90147, 35574, 35575, 35576, 
35577, 35579, 35580, 35581, 35582, 35583, 35584, 35585, 35586, 30854, 
30853, 30852, 30850, 30848, 28810, 25889, 25817, 25461, 18623, 7894, 
7890, 98033, 98034, 98035, 98036, 98037, 98038, 9592, 9591, 9590, 9588, 
9587, 9586, 9582, 9577, 9550, 9547, 9500, 9499, 9498, 9496, 9495, 9442, 
9435, 101500, 101515, 101516, 101517, 101518, 101519, 101520, 101521, 
101522, 101526, 101527, 101626, 101638, 101639, 101654, 101656, 101660, 
101670, 101671, 101672, 101673, 101674, 101675, 101676, 101677, 101678, 
101679, 101680, 101681, 101682, 101683, 101684, 101685, 17918, 17604, 
17825, 18093, 18100, 18101, 18114, 18115, 18223, 18224, 18225, 18226, 
18293, 18340, 18342, 18343, 18427, 18480, 19136, 19137, 19140, 19187, 
19344, 22308, 22334, 22335, 26020, 26021, 26023, 26030, 26031, 26032, 
26033, 26034, 26035, 26036, 26037, 26038, 28233, 90920, 91009, 56723, 
56782, 56798, 91266, 91278, 91291, 2377, 2370, 2329, 2320, 2264, 2261, 
2244, 2221, 1232, 759, 16549, 16547, 16544, 16541, 16532, 16527, 16525, 
16523, 16522, 16519, 16514, 16509, 16506, 16485, 16483, 16482, 16479, 
16478, 16374, 16364, 16333, 16176, 16016, 35241, 35242, 35244, 38314, 
38315, 38316, 38317, 39035, 39036, 39037, 39038, 41897, 41898, 41899, 
41900, 41901, 41902, 41903, 41904, 41974, 44534, 44535, 44678, 44705, 
44712, 44714, 44716, 44719, 44722, 44729, 44730, 44731, 44732, 44733, 
44803, 44805, 44810, 44813, 44821, 44848, 91134, 91135, 91136, 91137, 
91138, 91139, 91140, 91141, 91142, 91143, 91188, 91189, 91190, 91218, 
91219, 91220, 91221, 91222, 91223, 91224, 91225, 91231, 91232, 91233, 
18188, 18190, 18191, 18192, 18194, 18461, 18471, 18474, 18476, 18477, 
18482, 19070, 19073, 19077, 31195, 31165, 31164, 31129, 31116, 31537, 
33843, 33916, 34015, 39302, 19780, 19779, 19778, 19777, 19776, 19775, 
19774, 19773, 19772, 19771, 19770, 19769, 19768, 19767, 19766, 19765, 
19764, 19763, 19762, 19761, 19760, 19759, 19758, 19757, 43693, 43698, 
43699, 43700, 43706, 43710, 43711, 43712, 43713, 43714, 43715, 43716, 
43717, 43718, 43719, 43720, 43721, 43722, 43723, 43724, 43725, 43726, 
43728, 43734, 43735, 43744, 43745, 43746, 43747, 18008, 17952, 17831, 
18015, 18014, 18059, 18098, 18109, 18129, 18136, 18151, 18177, 18180, 
18205, 18208, 18209, 18229, 18232, 18258, 18332, 18337, 18399, 18473, 
18479, 18483, 19011, 19105, 19108, 19110, 19112, 19114, 19117, 19118, 
19122, 19123, 19153, 28322, 28323, 28324, 28325, 135909, 135910, 135911, 
135912, 135913, 135914, 135915, 135916, 135917, 135918, 135919, 135920, 
98121, 98122, 98126, 98127, 98128, 98129, 98130, 98131, 98132, 98133, 
98134, 98135, 98136, 98137, 98138, 98139, 98140, 98141, 98142, 98143, 
98144, 98145, 98146, 98147, 98148, 98149, 98150, 98152, 98153, 98154, 
98155, 98156, 98157, 14758, 14751, 14750, 14747, 14715, 14711, 14512, 
14506, 14501, 13347, 13343, 13341, 13305, 13289, 13283, 13282, 13281, 
13271, 13267, 13265, 13264, 12072, 12059, 12036, 12035, 12031, 12026, 
12025, 12024, 12022, 11991, 11942, 11940, 11939, 11937, 11828, 11826, 
11815, 11811, 11756, 11755, 11752, 11736, 11730, 11702, 11691, 11662, 
11641, 11640, 11636, 11632, 11628, 11622, 11621, 11617, 11604, 11603, 
11592, 11576, 11575, 11574, 11573, 11571, 11570, 11557, 11555, 11554, 
11553, 11552, 11545, 11538, 11533, 11530, 11522, 11510, 11491, 11436, 
11432, 11431, 11430, 11429, 11428, 11426, 11422, 11419, 11413, 11395, 
11391, 11388, 11386, 11382, 11379, 11372, 11371, 11365, 11360, 11358, 
11349, 11344, 11339, 11333, 11322, 11320, 11317, 11307, 11306, 11280, 
11278, 11277, 11276, 11275, 11213, 15298, 33067, 33066, 33065, 33064, 
33063, 33062, 33061, 33060, 33059, 33058, 33057, 33056, 33055, 33054, 
33053, 33052, 33051, 33050, 33049, 33048, 33047, 11193, 11113, 11110, 
11109, 11096, 11092, 11090, 11076, 10772, 9941, 9930, 9886, 9846, 9830, 
9760, 9608, 9594, 9540, 53744, 54611, 54612, 54617, 91890, 91897, 91898, 
91906, 91910, 91911, 91913, 91915, 91916, 15215, 14869, 14856, 14147, 
132844, 132845, 132846, 132847, 132848, 123922, 123923, 123924, 135651, 
135650, 135649, 135648, 135647, 135646, 135645, 135644, 135643, 135642, 
135641, 135640, 135639, 135638, 135637, 135636, 135635, 135634, 135633, 
135632, 135631, 135630, 135629, 135628, 135627, 135626, 135625, 135624, 
135623, 135622, 17822, 18078, 18079, 18080, 18199, 18200, 18201, 18217, 
18245, 18290, 18300, 18320, 18322, 18325, 18327, 18329, 18508, 19065, 
19085, 19148, 19172, 28231, 761, 526, 522, 521, 20634, 20633, 20632, 
20631, 20630, 20629, 20628, 20627, 20626, 20625, 20624, 20623, 20622, 
20621, 20620, 20619, 20618, 20617, 20616, 20615, 54286, 54287, 54304, 
54413, 54414, 54415, 92066, 92067, 92072, 92075, 92083, 92098, 92099, 
92100, 92101, 92102, 92103, 92104, 92105, 92106, 92107, 92108, 92109, 
92110, 92111, 2532, 2519, 2341, 2273, 2163, 28303, 28302, 28301, 28300, 
33256, 33252, 33251, 33250, 38621, 38622, 38623, 38624, 38625, 38626, 
38627, 38628, 38629, 38630, 38631, 38632, 38633, 38634, 38635, 38636, 
38637, 38638, 38639, 38640, 47295, 47258, 47255, 46651, 46650, 46649, 
46646, 46645, 46644, 46643, 46642, 46640, 46639, 46638, 46632, 46631, 
46252, 46251, 47948, 90587, 90593, 90594, 90816, 90817, 56681, 56679, 
56678, 56682, 36156, 36157, 36164, 36165, 36166, 36167, 127498, 127499, 
127500, 127501, 127502, 127503, 127504, 127505, 127506, 29894, 29895, 
29896, 37872, 37873, 37874, 37876, 38332, 38333, 38334, 44484, 44485, 
44699, 44700, 44701, 44890, 44891, 44892, 44893, 44896, 44897, 44902, 
44903, 44905, 44907, 44911, 44914, 136471, 136472, 136473, 53740, 91825, 
91826, 91937, 92084, 92471, 92482, 92616, 43481, 43480, 1570, 1565, 
1482, 1477, 1331, 2267, 2263, 2248, 2234, 2220, 1913, 1901, 1876, 1653, 
1612, 1609, 1595, 1594, 1590, 1587, 1584, 54746, 69699, 84781, 84812, 
84820, 86389, 86398, 90966, 90971, 91819, 91990, 91996, 92004, 92011, 
92207, 92310, 92352, 92359, 92360, 92361, 92381, 92382, 92396, 92470, 
92497, 92499, 92504, 92506, 92507, 92511, 92512, 92541, 92582, 92586, 
92606, 92610, 92614, 92617, 92618, 92646, 92664, 92727, 92735, 92736, 
92740, 92752, 92756, 92758, 92762, 92769, 92789, 33921, 33922, 34162, 
34163, 38737, 38776, 38778, 38806, 38823, 38831, 38943, 38946, 38971, 
38998, 39202, 41803, 42821, 42824, 42827, 42839, 103791, 103792, 103793, 
103796, 103799, 103800, 103802, 103804, 103807, 103808, 103809, 103810, 
103811, 103812, 103813, 103825, 103826, 22722, 22721, 22720, 22719, 
22718, 22717, 22716, 22715, 22714, 22713, 22712, 22711, 22710, 22709, 
22708, 22707, 22706, 22705, 22704, 22703, 22702, 22701, 22700, 22699, 
22698, 22697, 22696, 22695, 22694, 22693, 22692, 22691, 22690, 22689, 
22688, 22687, 22686, 22685, 22684, 22683, 22682, 120352, 120359, 12993, 
12984, 12982, 12972, 12943, 12339, 12337, 12312, 12265, 12176, 12125, 
12124, 12123, 12103, 12102, 12101, 12097, 12096, 12094, 12092, 12091, 
12090, 12089, 11896, 11895, 11894, 11892, 11890, 11889, 11888, 11872, 
11871, 11870, 11869, 11868, 11867, 11866, 11865, 11864, 11863, 11839, 
11836, 11835, 11834, 11833, 11832, 11831, 11830, 11829, 10884, 10881, 
10863, 10843, 10529, 10505, 10503, 10480, 10479, 10370, 10369, 10368, 
10367, 10366, 10365, 10364, 10363, 10362, 10361, 8544, 8543, 8542, 8541, 
8540, 8539, 8538, 8537, 8536, 7967, 7966, 7965, 7964, 7963, 7962, 7961, 
7960, 7959, 7958, 7436, 7435, 7434, 7433, 7432, 7431, 7430, 7429, 6585, 
6584, 6583, 6582, 6581, 6580, 6579, 6578, 6577, 3441, 3440, 3439, 3438, 
3437, 3436, 3435, 3434, 3433, 3432, 41017, 41018, 41019, 41020, 41021, 
41022, 41023, 41024, 41025, 41026, 41027, 41028, 33340, 33339, 33338, 
33337, 33336, 33335, 33334, 33333, 33332, 33331, 122959, 122960, 122961, 
122962, 122963, 122964, 122965, 122966, 122967, 122968, 122970, 122971, 
122972, 122975, 122976, 122977, 122978, 122979, 122980, 122981, 122982, 
51764, 51765, 51766, 51767, 51768, 51769, 51770, 51771, 51772, 51773, 
51774, 51775, 51776, 51777, 51778, 13081, 13079, 13078, 13075, 13074, 
13072, 13071, 13069, 13053, 13052, 13049, 13048, 13044, 13034, 13031, 
13029, 13028, 12987, 12985, 12199, 10383, 10382, 10381, 10380, 10379, 
10378, 8663, 8662, 8661, 8660, 8659, 8658, 8552, 8551, 7984, 7983, 7982, 
7498, 7497, 7496, 7495, 7493, 6641, 6640, 6639, 6638, 6637, 6636, 6635, 
4698, 4697, 4696, 4695, 4694, 4693, 32424, 32423, 32422, 32421, 32420, 
32419, 32418, 32417, 32416, 32415, 32414, 32413, 32412, 32411, 32410, 
32409, 32408, 32407, 32406, 32405, 32404, 32403, 32402, 32401, 32400, 
32399, 32398, 32397, 32396, 32395, 32393, 32392, 32391, 2254, 2237, 
2229, 2222, 2122, 2113, 2109, 2074, 2060, 2059, 2057, 2056, 2054, 2051, 
2050, 2049, 1974, 1929, 1661, 1259, 5545, 5544, 5448, 5439, 5438, 5432, 
5428, 5427, 5426, 5414, 5412, 5410, 5409, 5393, 5391, 5390, 5388, 5361, 
5354, 5278, 5280, 5273, 5271, 4613, 2092, 1072, 943, 16239, 13353, 
13352, 3481, 3478, 2114, 18304, 18312, 125070, 125071, 125072, 125073, 
125074, 125075, 125076, 56628, 56626, 56622, 56620, 56619, 56616, 56610, 
48458, 48457, 48428, 48389, 48385, 48375, 48374, 48361, 48938, 48939, 
48941, 48942, 48944, 48945, 48947, 91305, 91307, 91308, 91309, 91310, 
91311, 50352, 50353, 50354, 50355, 50356, 50357, 50358, 50359, 50360, 
50361, 50362, 50363, 50364, 50365, 50366, 50367, 50368, 50369, 50370, 
50371, 50372, 50373, 50374, 50375, 50376, 50377, 50378, 50379, 50380, 
92992, 93006, 93055, 93077, 93096, 93241, 93244, 93407, 93496, 202698, 
202699, 202700, 202701, 202702, 202703, 202704, 34223, 34222, 34221, 
34220, 34219, 34218, 34217, 34216, 34215, 34214, 34213, 34212, 34211, 
34210, 34204, 34203, 34202, 34201, 34200, 34199, 34198, 34197, 34196, 
34195, 34194, 34193, 106102, 106103, 106104, 106111, 106163, 106164, 
106180, 106303, 106304, 106305, 106306, 106307, 106308, 106309, 106310, 
106311, 106312, 106313, 106314, 106315, 106316, 106317, 106318, 106319, 
30279, 30278, 30186, 32013, 125539, 125540, 125541, 126808, 126809, 
126810, 17674, 17643, 17641, 17870, 17869, 17868, 45139, 45172, 45195, 
28755, 28754, 28753, 28752, 28751, 28750, 100541, 100545, 100549, 
100550, 100551, 100552, 100553, 100554, 100555, 100556, 100558, 100560, 
100561, 100562, 100563, 102739, 102740, 102742, 102746, 102748, 102750, 
102756, 102757, 102758, 102759, 102760, 102761, 102771, 102772, 102773, 
102774, 102776, 102778, 102779, 102780, 102798, 102821, 102822, 102823, 
102824, 102825, 102826, 102827, 102828, 102829, 102830, 102831, 102832, 
102833, 102834, 102835, 102836, 102837, 49285, 49276, 49275, 49274, 
51453, 51454, 51455, 51462, 51564, 51565, 51566, 51567, 51568, 51569, 
51570, 51571, 51572, 51575, 51576, 51577, 51967, 51968, 51969, 51970, 
51971, 51972, 51977, 51978, 51979, 51980, 91492, 91494, 129166, 129167, 
129172, 129173, 129174, 129175, 129176, 129177, 129178, 129179, 129180, 
129181, 129182, 129183, 129184, 129185, 129186, 129187, 92244, 92245, 
92246, 92247, 92248, 92249, 92823, 92824, 92827, 92831, 89266, 89267, 
89272, 89275, 104994, 104995, 44863, 44864, 130297, 130298, 130299, 
130300, 130301, 130302, 130303, 130304, 130305, 130306, 130307, 130308, 
130309, 130310, 130311, 130312, 130313, 130314, 130315, 130316, 130317, 
130318, 130319, 130320, 130321, 130322, 130323, 130324, 130325, 130326, 
130327, 130328, 130330, 130331, 136474, 136475, 136476, 136477, 136478, 
136479, 136480, 136481, 136482, 136483, 136484, 136485, 136486, 136487, 
136488, 136489, 3815, 3814, 38724, 38734, 38735, 38736, 38824, 38851, 
38855, 38857, 38878, 40448, 41706, 41707, 41714, 41715, 41720, 41722, 
41768, 41801, 41802, 42857, 42858, 42881, 42890, 86764, 86765, 86766, 
86767, 86768, 86769, 86770, 49948, 49949, 49950, 49951, 49952, 49953, 
49954, 49955, 49956, 38641, 38642, 38643, 38644, 38645, 38646, 38647, 
38648, 38649, 38650, 38651, 38652, 38653, 38654, 38655, 38656, 38657, 
38658, 38659, 38660, 38661, 38662, 5500, 5499, 5489, 5476, 5440, 5291, 
5290, 5289, 4629, 4626, 3284, 3282, 3281, 3280, 95432, 95439, 95440, 
95448, 95449, 95450, 95451, 95452, 95453, 95455, 95456, 95459, 95465, 
95466, 95467, 95468, 95503, 95506, 95507, 95511, 95512, 95513, 95516, 
95517, 95520, 95521, 95529, 95549, 95550, 95552, 95558, 95578, 95580, 
95581, 95583, 95584, 95585, 95586, 95594, 95595, 95596, 95597, 95598, 
95610, 32735, 32734, 32733, 32732, 32731, 32730, 32729, 32728, 32727, 
32726, 32725, 32724, 32723, 32722, 2239, 2227, 2117, 2111, 1941, 1940, 
1937, 1936, 1669, 1668, 1657, 1656, 1654, 1652, 1647, 1263, 1258, 1257, 
93280, 93286, 93294, 93519, 93520, 93521, 93522, 93527, 93532, 14529, 
13257, 13254, 13252, 11956, 11954, 11952, 11951, 11949, 11948, 11947, 
11945, 11684, 11583, 24290, 24289, 24288, 24287, 24286, 24285, 24284, 
24283, 24282, 24281, 24280, 24279, 24278, 24277, 24276, 24275, 24274, 
24273, 24272, 24271, 24270, 24269, 26752, 26751, 26750, 26749, 26748, 
26747, 26746, 26745, 26744, 26743, 26742, 26741, 26740, 26739, 26738, 
26737, 26736, 26735, 26734, 26733, 26732, 26731, 26730, 26729, 26728, 
26727, 26726, 26725, 26724, 26723, 26722, 26721, 26720, 26719, 26718, 
26717, 26716, 26715, 26714, 26713, 26712, 26711, 26710, 26709, 26708, 
26707, 26706, 26705, 26704, 26703, 26702, 26701, 26700, 26699, 26698, 
26697, 26696, 26695, 26694, 26693, 26692, 26691, 26690, 26689, 26688, 
26687, 26686, 26685, 26684, 26683, 26682, 26681, 26680, 26679, 26678, 
26677, 26676, 26675, 26674, 26673, 26672, 26671, 26670, 26669, 26668, 
26667, 26666, 26665, 26664, 26663, 85098, 85118, 131657, 131658, 131659, 
131660, 131661, 131662, 131663, 131664, 131665, 131666, 131667, 131668, 
131669, 131670, 131671, 19324, 19323, 19322, 19321, 19320, 19319, 19318, 
19317, 19315, 19314, 19313, 19312, 19311, 19310, 19309, 19308, 19307, 
19306, 19305, 19304, 19303, 19302, 19301, 19300, 19299, 19298, 19297, 
19296, 19295, 19294, 19293, 19292, 19291, 19290, 19289, 19288, 19287, 
19286, 19285, 19284, 19283, 19282, 19281, 19280, 19279, 19278, 19277, 
19276, 19275, 19274, 19271, 19270, 19269, 19268, 19267, 19266, 19265, 
19264, 19263, 19262, 19261, 19260, 19259, 19258, 19257, 19256, 19255, 
19254, 19253, 19252, 19251, 19250, 19249, 19248, 19247, 19246, 19245, 
19244, 19243, 19242, 19241, 19240, 19239, 19238, 19237, 19236, 19235, 
19234, 19233, 19232, 19231, 19230, 18991, 34227, 34226, 34225, 136595, 
136596, 136597, 136598, 6205, 6204, 6201, 6199, 6198, 6189, 6188, 6184, 
6179, 6178, 10107, 10457, 40193, 40194, 40195, 40240, 40241, 40242, 
40284, 40288, 40289, 40291, 40296, 40365, 40677, 40678, 40713, 40714, 
133612, 133613, 133614, 133615, 44524, 44526, 44537, 44696, 44721, 
44725, 44727, 44735, 44840, 44842, 44846, 44849, 44851, 44854, 44856, 
44857, 44858, 44859, 44860, 44861, 97504, 97510, 97511, 97512, 97514, 
97515, 97516, 97533, 97542, 126600, 126601, 126602, 126603, 126604, 
126605, 126606, 126607, 126608, 126609, 40692, 40693, 40697, 40700, 
40719, 40723, 50775, 50776, 50777, 50778, 50779, 50780, 50781, 50782, 
50783, 50784, 50785, 50786, 50787, 50788, 50789, 50790, 50791, 50792, 
50793, 50794, 50795, 124694, 124695, 124696, 124697, 124698, 124699, 
124701, 124703, 124704, 124705, 124708, 124709, 124710, 124711, 124712, 
124713, 124714, 124715, 124716, 124717, 124718, 124719, 124720, 124721, 
124722, 91832, 91999, 92016, 92252, 92265, 92703, 92841, 13068, 13066, 
13061, 13051, 13043, 13041, 12286, 7988, 7986, 7985, 7506, 7504, 4707, 
4704, 4703, 4700, 128797, 128798, 128799, 7872, 7466, 7414, 7100, 7098, 
7090, 7089, 7082, 7080, 7043, 7020, 7019, 7018, 7017, 7015, 7009, 7007, 
7003, 7001, 7000, 6999, 6997, 6996, 6995, 6994, 6992, 6988, 6984, 6976, 
6960, 6959, 6958, 6957, 6955, 6953, 6952, 6951, 6939, 6919, 92257, 
92364, 92370, 92524, 92526, 92529, 92534, 92716, 30064, 30065, 30070, 
30071, 30072, 38039, 38397, 38399, 41808, 43921, 44501, 44503, 44505, 
44523, 44527, 44529, 44531, 44532, 44538, 44702, 44713, 54639, 54702, 
54719, 54744, 63138, 63140, 78791, 81897, 84593, 84788, 84806, 84809, 
84817, 84958, 84969, 85502, 85503, 85513, 85946, 86134, 86406, 86409, 
86562, 86796, 90949, 90951, 90961, 90962, 90964, 91806, 91808, 91834, 
91837, 91855, 91869, 91876, 91880, 91882, 91932, 92045, 92113, 92128, 
92155, 92286, 89230, 89231, 29111, 29110, 45315, 45319, 45322, 46291, 
46293, 46295, 46605, 47115, 47117, 47118, 47121, 47122, 47600, 47635, 
48177, 48179, 48184, 48186, 48433, 48440, 48442, 52636, 52661, 52663, 
3688, 3687, 3669, 3605, 3062, 3058, 2972, 2969, 2822, 2820, 2756, 2682, 
2679, 2676, 17693, 17656, 17657, 17639, 17638, 17989, 17987, 17986, 
17984, 17983, 17982, 17981, 17979, 17978, 17614, 17607, 17606, 17605, 
17854, 17813, 17808, 17800, 17799, 17797, 17779, 17778, 17777, 17776, 
17761, 17760, 17759, 17758, 17757, 17756, 17755, 17740, 17739, 17735, 
17734, 17733, 17732, 17708, 17707, 17706, 17705, 18070, 18103, 18104, 
28235, 28236, 28457, 38284, 39013, 39014, 41882, 44832, 29645, 29644, 
29643, 29642, 29641, 29640, 29639, 104504, 104505, 104506, 104507, 
104508, 104509, 104510, 104511, 104512, 104513, 104514, 104515, 104516, 
104517, 104518, 104519, 104520, 133460, 133461, 133462, 133463, 133464, 
51207, 51208, 51209, 51210, 126791, 126793, 122320, 122321, 122322, 
122323, 122324, 122325, 122326, 122327, 122328, 122329, 122330, 122331, 
122332, 122333, 122334, 122335, 122336, 122337, 122338, 122339, 122340, 
122341, 122342, 122343, 122344, 122345, 122346, 122347, 122348, 122349, 
122350, 122351, 122352, 122353, 122354, 122355, 122356, 122357, 122358, 
122359, 122360, 122361, 122362, 122363, 122364, 122365, 122366, 122367, 
122368, 122369, 122370, 122371, 122372, 122373, 122374, 122375, 122376, 
122377, 122378, 122379, 122380, 122381, 122382, 122383, 122384, 122385, 
122386, 122387, 122388, 122389, 122390, 122391, 122392, 122393, 122394, 
122395, 122396, 122397, 122398, 122399, 122400, 122401, 122402, 98092, 
98093, 98094, 98095, 98096, 98097, 37467, 37468, 37469, 37470, 37471, 
37472, 37473, 37474, 37475, 37476, 37477, 37478, 37479, 37480, 37481, 
106523, 106545, 106546, 106570, 106574, 106575, 106576, 106577, 106578, 
106579, 106580, 106581, 106582, 106583, 106584, 106585, 74751, 74750, 
74722, 31929, 31932, 31933, 32020, 38237, 38239, 38240, 38244, 38246, 
38247, 38440, 43732, 43911, 43912, 45021, 45023, 45028, 45029, 45032, 
45035, 45042, 45045, 45046, 126619, 126620, 126621, 126622, 126623, 
126624, 126625, 126626, 126627, 126628, 126629, 126630, 126631, 126632, 
126633, 126634, 126635, 126636, 126637, 126638, 126639, 126640, 126641, 
126642, 126643, 126644, 126645, 126646, 126647, 126648, 126649, 126650, 
126651, 126652, 126653, 126654, 126655, 126656, 126657, 126658, 126659, 
126660, 126661, 126662, 33207, 33206, 33205, 33204, 33203, 33202, 33201, 
33200, 33199, 33198, 33197, 33196, 33195, 33194, 33193, 33192, 33191, 
33190, 33189, 20082, 20081, 20080, 20079, 20078, 131543, 131544, 131545, 
131546, 131547, 131548, 131549, 131550, 131551, 131552, 131553, 131554, 
131555, 131556, 131557, 131558, 131559, 131560, 131561, 131562, 131563, 
131564, 131565, 131566, 131567, 131568, 131569, 131570, 131571, 131572, 
131573, 131574, 131575, 106834, 106836, 121530, 121531, 121536, 121537, 
121538, 121539, 121540, 121541, 15100, 7355, 99292, 99293, 99294, 99295, 
99296, 99297, 99298, 99299, 99300, 99301, 99302, 99303, 99304, 99305, 
123500, 123501, 123505, 123506, 123508, 123510, 123511, 123512, 123513, 
123514, 123515, 123516, 123517, 123518, 123519, 123520, 129948, 129949, 
27536, 27535, 30023, 30024, 30025, 30027, 30028, 30029, 41455, 41456, 
41457, 41458, 41459, 41460, 41461, 41462, 41463, 41464, 41465, 41466, 
41467, 41468, 41469, 41470, 41471, 41472, 126697, 126698, 126699, 1598, 
1597, 1464, 1210, 1206, 1204, 1198, 1197, 1196, 1192, 1186, 1184, 21940, 
21939, 21938, 21937, 21936, 21935, 21934, 21933, 21932, 21931, 21930, 
21929, 21928, 21927, 21926, 21925, 21924, 21923, 21922, 21921, 21920, 
21919, 21918, 21917, 21916, 21915, 21914, 21913, 21912, 21911, 21910, 
21906, 21905, 21904, 21903, 21902, 21901, 21900, 21899, 21888, 21887, 
21886, 21885, 21884, 21883, 21882, 21881, 21880, 21869, 21868, 21867, 
21866, 21865, 21864, 21863, 21852, 21851, 21850, 21849, 21848, 21847, 
21846, 21845, 21844, 21843, 21832, 21831, 21830, 21829, 21828, 21827, 
21826, 21825, 21824, 21338, 35637, 35638, 35642, 35643, 35644, 128735, 
128736, 128737, 136556, 136557, 39072, 39073, 39075, 39111, 39112, 
39145, 39154, 39166, 39173, 39175, 39221, 39240, 39252, 39263, 39268, 
39269, 39271, 39282, 39294, 39352, 39365, 39389, 39398, 39477, 39487, 
39521, 39526, 39550, 39596, 39597, 39617, 39653, 39707, 40400, 40837, 
130857, 130858, 130859, 130860, 130861, 130862, 130863, 130864, 130865, 
130866, 130867, 130868, 130869, 130870, 130871, 130872, 130873, 130874, 
130875, 130876, 130877, 130878, 33095, 33094, 33093, 33092, 33091, 
33090, 33089, 33088, 33087, 33086, 33085, 33084, 14427, 14426, 14425, 
14424, 14423, 14422, 14421, 14420, 23448, 23447, 23446, 23445, 23444, 
127403, 127404, 33538, 33539, 33540, 33541, 33543, 33545, 33546, 33547, 
33548, 33552, 33553, 33554, 33555, 33556, 33557, 33561, 33562, 33578, 
33579, 33580, 33581, 33582, 33583, 33584, 33585, 33587, 33594, 33595, 
33596, 33597, 35238, 48034, 128803, 128804, 128805, 128806, 128807, 
128808, 128809, 128810, 128811, 128812, 128813, 128814, 128815, 128816, 
128817, 128818, 128819, 128820, 128821, 128822, 128823, 128824, 128825, 
128826, 128827, 128828, 128829, 128830, 128831, 128832, 128833, 128834, 
128835, 128836, 128837, 128838, 128839, 128840, 128841, 128842, 128843, 
128844, 128845, 128846, 128847, 128848, 128849, 128850, 128851, 128852, 
128853, 128854, 128855, 128856, 128857, 128858, 128859, 39438, 39469, 
39471, 39472, 39474, 39513, 39514, 39516, 39517, 39649, 39650, 39651, 
3686, 2975, 7136, 7041, 7040, 126672, 126673, 126674, 126675, 126676, 
126677, 126678, 126679, 126680, 126681, 126682, 126683, 126684, 126685, 
126686, 126818, 126819, 126820, 126821, 126822, 126823, 126824, 126825, 
126826, 126827, 126828, 126829, 126830, 126831, 126832, 126833, 51009, 
51010, 51011, 51012, 51013, 51014, 51015, 51016, 51017, 51018, 51019, 
51020, 51021, 51022, 51023, 51028, 51030, 51031, 51032, 51033, 51034, 
51035, 51036, 51037, 86613, 90224, 90226, 90227, 90228, 89498, 89499, 
89500, 89829, 89830, 89831, 90204, 90205, 90234, 90236, 90338, 90368, 
90384, 136267, 136270, 48883, 89899, 89900, 89901, 90054, 90141, 90142, 
90144, 90152, 90153, 90155, 90157, 90158, 90163, 90174, 90275, 90277, 
90278, 90310, 90312, 90321, 90381, 90412, 90416, 90417, 90418, 90435, 
90436, 89458, 89459, 89461, 89464, 89466, 89934, 89936, 89938, 89939, 
89940, 90076, 90077, 90079, 90080, 90081, 90083, 90084, 90086, 90087, 
90088, 90089, 90090, 90385, 90390, 90405, 127054, 127055, 127056, 
127057, 86209, 89259, 89269, 89270, 89310, 2496, 2397, 2393, 2389, 2226, 
1221, 1220, 1144, 1142, 105008, 105009, 105010, 105017, 105018, 105019, 
105020, 105022, 105023, 105025, 105026, 105027, 105028, 105030, 105032, 
105035, 105040, 105047, 105051, 105098, 105108, 7829, 7820, 7143, 7142, 
7140, 41084, 41085, 41086, 41087, 41088, 41089, 41090, 41091, 41092, 
41093, 41094, 41095, 41096, 41097, 41098, 41099, 41100, 41101, 41102, 
41103, 41104, 41105, 41106, 41107, 41108, 41109, 41110, 41111, 41112, 
41113, 41114, 41115, 41116, 41117, 41118, 41119, 41120, 41121, 41122, 
41123, 41124, 41125, 41126, 41127, 41128, 41129, 41130, 41131, 41132, 
41133, 41134, 41135, 41136, 41137, 41138, 2431, 1208, 1207, 91884, 
91920, 91926, 92730, 9580, 9578, 9575, 9551, 9548, 9439, 9436, 100961, 
100962, 100988, 101002, 125577, 125578, 125579, 125580, 125581, 125582, 
54020, 54021, 54022, 54026, 54027, 54039, 54040, 54041, 54050, 14321, 
14320, 14319, 14318, 14317, 14316, 14315, 14314, 14313, 14312, 14311, 
14310, 14309, 14308, 14307, 14306, 14305, 14304, 14303, 14302, 14301, 
14300, 14299, 14298, 14297, 14296, 14295, 14294, 14293, 14292, 14291, 
14290, 14289, 14288, 14287, 14286, 14285, 14284, 14283, 14282, 14281, 
14280, 14279, 14278, 14277, 14276, 14275, 14273, 14272, 14271, 14270, 
14269, 14268, 14267, 14266, 14265, 14264, 14263, 37782, 37783, 37784, 
37785, 37786, 37787, 37788, 37789, 37790, 37791, 37792, 37793, 37794, 
37795, 37796, 37797, 37798, 37799, 37800, 37801, 37802, 37803, 37804, 
37805, 37806, 37807, 37808, 30870, 30498, 30497, 30470, 7891, 95049, 
95118, 95217, 95276, 95352, 95395, 95485, 95539, 95601, 95666, 95728, 
95793, 95871, 95918, 95993, 96031, 96093, 96195, 96223, 96317, 96352, 
96425, 96503, 96558, 24350, 24349, 24348, 24347, 24346, 24345, 24344, 
24343, 24342, 24341, 24340, 24339, 108508, 108509, 27841, 27840, 27839, 
27838, 27837, 27836, 27835, 27834, 27833, 27832, 27831, 27830, 27829, 
27828, 27827, 27826, 27278, 27277, 27276, 27275, 27274, 27273, 27272, 
27271, 27270, 27268, 27265, 27264, 27263, 27254, 27253, 27252, 27251, 
27250, 27249, 84383, 92255, 92369, 92373, 92375, 92376, 92377, 92385, 
92530, 92531, 92532, 92535, 92537, 92538, 92597, 92609, 24121, 24120, 
24119, 24118, 24117, 24116, 24115, 24114, 24113, 24112, 24111, 24110, 
24109, 24108, 24107, 24106, 126261, 126260, 9413, 9356, 9351, 9350, 
9349, 9348, 9338, 9337, 9335, 9334, 9331, 9329, 9320, 9316, 9315, 9313, 
9312, 9305, 9304, 9303, 9300, 9295, 9294, 9286, 9238, 9235, 9234, 9232, 
9231, 9159, 9108, 9104, 9096, 9093, 9089, 9088, 9087, 9086, 9066, 8998, 
8987, 8984, 8964, 135298, 135297, 135296, 135295, 7652, 7565, 7563, 
7489, 7160, 15280, 14858, 14861, 14877, 14878, 14882, 14884, 14889, 
14894, 14847, 14846, 14845, 14843, 14583, 17343, 17077, 16898, 16851, 
16823, 16813, 16789, 16786, 16752, 16725, 16724, 16716, 16713, 16706, 
16674, 16673, 16664, 16661, 16659, 16655, 16649, 16643, 16538, 16513, 
16486, 16108, 16039, 16038, 16032, 15920, 15905, 15866, 15859, 15857, 
15856, 15853, 15852, 15851, 15848, 15843, 15825, 15802, 15787, 15785, 
15760, 15740, 15737, 15721, 15716, 15693, 15658, 15615, 15610, 15600, 
15581, 15580, 15575, 15570, 15564, 15565, 15510, 15508, 15507, 15493, 
15492, 15491, 15487, 15486, 15485, 15475, 15472, 15468, 15466, 15463, 
15462, 15460, 15456, 15455, 15454, 15453, 15449, 15443, 15442, 15434, 
15433, 15432, 15427, 15418, 15415, 15410, 15407, 15406, 15404, 15401, 
15400, 15395, 15394, 15392, 15390, 15380, 15379, 15376, 15372, 15356, 
15337, 15338, 15339, 15336, 15335, 15334, 15309, 15294, 45306, 45311, 
46276, 46278, 46280, 46286, 47105, 47107, 47110, 47112, 47462, 48142, 
48144, 48158, 48370, 48376, 48380, 48386, 48387, 48390, 48590, 8171, 
6917, 6916, 6914, 6897, 6895, 132304, 132305, 132306, 132307, 132308, 
47742, 47767, 90646, 90650, 90834, 24214, 24213, 24212, 24211, 24210, 
24209, 24208, 24207, 24206, 24205, 24204, 21387, 21386, 21385, 21384, 
21383, 21382, 21381, 21380, 21379, 21378, 21377, 21376, 21375, 21374, 
21373, 21372, 21371, 21370, 21369, 21368, 21367, 21366, 21365, 21364, 
21363, 21362, 21361, 21360, 21359, 21358, 21357, 21356, 21355, 6845, 
6219, 5908, 5881, 5713, 5712, 5710, 5700, 5678, 5655, 5648, 5644, 5642, 
5639, 5638, 5637, 5636, 5634, 5633, 5632, 5624, 5619, 5617, 5606, 5603, 
5601, 5600, 5578, 5575, 5574, 5572, 5571, 5561, 5553, 5547, 5537, 5512, 
5510, 5449, 5420, 5418, 5415, 5405, 5401, 5399, 5385, 5384, 5346, 5344, 
5259, 5252, 4592, 4588, 4587, 49255, 49250, 49245, 49240, 49233, 49228, 
49770, 122792, 122794, 122799, 122802, 122803, 122804, 122816, 122817, 
122818, 122819, 122826, 122828, 122829, 122830, 122833, 122834, 122835, 
122836, 122838, 122840, 122849, 10268, 10263, 10255, 10254, 10251, 
10249, 10248, 10246, 45327, 45329, 46606, 46746, 46747, 46748, 47123, 
47124, 47125, 47127, 47128, 38669, 38721, 38723, 38753, 38755, 38756, 
38761, 38876, 38877, 42830, 43605, 129432, 129433, 129434, 130272, 
130273, 130274, 56685, 56699, 34497, 34496, 34495, 34494, 34493, 34492, 
34491, 34490, 34489, 34488, 34487, 34486, 34485, 34484, 34483, 34482, 
34481, 34480, 34468, 34467, 34466, 34465, 34464, 34463, 34462, 34461, 
34460, 34459, 34458, 34457, 34456, 34455, 34454, 34449, 34448, 34447, 
41173, 41174, 41175, 41176, 41177, 41178, 41179, 41180, 41181, 41182, 
41183, 41184, 41185, 41186, 41187, 41188, 41189, 41190, 41191, 41192, 
41193, 41194, 41195, 41196, 41197, 41198, 41199, 41200, 41201, 41202, 
41203, 41204, 41205, 41206, 41207, 41208, 41209, 41210, 41211, 41212, 
41213, 41214, 41215, 41216, 41217, 27896, 27895, 13701, 13700, 13699, 
13698, 13697, 13696, 13695, 13694, 13693, 13692, 855, 627, 625, 624, 
525, 276, 275, 274, 273, 93291, 93420, 93441, 93445, 93463, 93466, 
93483, 93492, 95051, 95128, 95226, 95286, 95361, 95410, 95496, 95554, 
95608, 95667, 95748, 95812, 95883, 95933, 95999, 96044, 96118, 96199, 
96236, 96330, 96371, 96437, 96507, 96571, 133720, 133721, 133722, 
133723, 133724, 133725, 133726, 133727, 133728, 133731, 133732, 133733, 
133734, 133735, 132019, 132020, 95089, 95090, 95091, 95138, 95139, 
95145, 95191, 95224, 95232, 95248, 95249, 95256, 95349, 95355, 95356, 
95389, 95399, 95457, 95461, 95463, 95509, 95510, 95514, 95589, 95590, 
95593, 95643, 95659, 95660, 95714, 95717, 95719, 95787, 95791, 95802, 
95829, 95836, 95837, 95911, 95912, 95969, 95977, 95978, 96038, 96048, 
96059, 96092, 96094, 96134, 96171, 96173, 96174, 96221, 96242, 96285, 
96288, 96289, 96339, 96344, 96347, 96403, 96406, 96407, 96469, 96471, 
96479, 96531, 96540, 96541, 6709, 6197, 6196, 6194, 6734, 6738, 10167, 
16468, 16470, 16471, 17972, 31824, 12830, 12829, 105238, 105239, 105240, 
105246, 105247, 105248, 31335, 31329, 31192, 31154, 31152, 31149, 31147, 
31146, 31144, 31140, 31138, 31119, 31063, 30976, 31577, 31631, 31643, 
31665, 33758, 34017, 34097, 34098, 37035, 37043, 37048, 38328, 33035, 
33034, 33033, 33032, 88140, 88141, 88142, 88143, 88144, 14519, 14518, 
13263, 13262, 13238, 12905, 12099, 11973, 11972, 11971, 11567, 11558, 
11556, 11385, 11384, 11383, 41342, 41343, 41344, 41345, 41346, 41347, 
41348, 41349, 41350, 41351, 41352, 41353, 41354, 41355, 41356, 41357, 
41358, 41359, 41360, 41361, 41362, 41363, 41364, 41365, 41366, 41367, 
41368, 41369, 41370, 41371, 7845, 7717, 7694, 7687, 7684, 7663, 7639, 
7632, 7622, 7618, 7616, 7615, 7612, 7564, 7559, 7494, 7531, 7492, 7477, 
7473, 7469, 7465, 7462, 7452, 7413, 7306, 7248, 7213, 7128, 7127, 7125, 
7124, 7123, 7121, 7120, 7119, 7116, 7115, 7110, 7109, 7105, 7103, 7101, 
6985, 7806, 7807, 96777, 96782, 96783, 124441, 124445, 124446, 124447, 
124449, 124450, 124451, 124452, 124453, 124454, 124455, 124456, 124457, 
124458, 124459, 124460, 124461, 124462, 124463, 124464, 124466, 124467, 
124468, 124469, 124470, 124471, 124472, 124473, 124474, 124475, 124476, 
124477, 124478, 124479, 124622, 124623, 124624, 124625, 124626, 124627, 
124628, 124629, 124630, 124631, 124632, 124633, 124634, 124635, 124636, 
124637, 124638, 124639, 124640, 124641, 124642, 124643, 124644, 124645, 
124646, 124647, 124648, 124649, 124650, 124651, 124653, 124654, 124655, 
124656, 124657, 124658, 124659, 124660, 2135, 1195, 32114, 32113, 32112, 
32111, 32110, 32109, 32108, 32106, 32105, 32090, 32089, 32019, 32018, 
32017, 32016, 32015, 31954, 31952, 31939, 31938, 31936, 31935, 31917, 
31914, 31913, 13624, 13623, 13622, 13621, 13620, 13619, 13618, 97513, 
97525, 97543, 97544, 97545, 97546, 97547, 97548, 97549, 97550, 97551, 
97552, 97553, 97554, 97555, 97559, 47300, 47296, 33369, 33368, 33367, 
33366, 33365, 33364, 33363, 33362, 33361, 33360, 33359, 33358, 33357, 
33356, 33355, 33354, 33353, 33352, 33351, 33350, 33349, 33348, 33347, 
33346, 33345, 33344, 33343, 33342, 33341, 136519, 136520, 102385, 
102413, 102465, 102468, 102486, 102598, 102753, 102896, 102897, 102898, 
102899, 102900, 34608, 34607, 34606, 34605, 34604, 34603, 34601, 34600, 
34599, 34598, 34597, 34596, 34595, 34594, 34580, 34579, 34578, 34577, 
34576, 34575, 34574, 34573, 34572, 34571, 34570, 34569, 34568, 34567, 
34566, 34565, 34564, 34563, 34562, 34561, 34560, 34559, 34558, 34557, 
34556, 34555, 34554, 34553, 34552, 34551, 34550, 34549, 34548, 34547, 
34546, 34545, 34544, 34543, 34542, 34541, 34540, 34539, 34538, 34537, 
34536, 34535, 34534, 34533, 34532, 34531, 34530, 34529, 34528, 34527, 
34526, 34525, 34514, 34513, 34512, 34511, 34510, 34509, 34508, 34507, 
34506, 34505, 34504, 94938, 94939, 94940, 94941, 94942, 94943, 94944, 
94945, 94946, 94947, 94948, 94949, 94950, 94951, 94952, 94953, 94954, 
94955, 94956, 94957, 94958, 94959, 94960, 94961, 94962, 94963, 94964, 
10856, 10686, 10666, 10568, 10567, 10561, 10562, 10559, 10558, 10557, 
10555, 10552, 10037, 10034, 10033, 10032, 9998, 9997, 9993, 9908, 9907, 
9905, 9906, 9903, 9904, 9895, 9892, 128258, 128259, 128260, 128261, 
128262, 128263, 128264, 128265, 128266, 128267, 128268, 128269, 128270, 
128271, 89432, 89440, 127758, 127759, 127760, 127761, 127762, 127763, 
104878, 104901, 104905, 104906, 104925, 104927, 104929, 104932, 104936, 
104937, 104938, 104941, 104944, 104945, 104946, 104947, 104948, 104949, 
104950, 104952, 104953, 104955, 104956, 104957, 104958, 104959, 104960, 
104961, 104962, 104963, 104964, 104965, 104966, 104967, 104968, 104969, 
104970, 104971, 85055, 85054, 126890, 126891, 126892, 126893, 126894, 
126896, 126897, 12939, 12933, 12284, 12242, 12241, 12240, 12239, 12227, 
10421, 10411, 7647, 7645, 7643, 2633, 2629, 2628, 2608, 2600, 2541, 622, 
447, 446, 445, 381, 380, 107382, 107383, 107384, 107385, 45266, 45267, 
45268, 45270, 45485, 45572, 45706, 45725, 45726, 47034, 47035, 47042, 
47043, 47063, 47064, 47223, 47224, 47225, 47226, 47227, 47228, 48100, 
48101, 48102, 48103, 48104, 48119, 48120, 48121, 48289, 48293, 48294, 
48295, 48545, 48546, 48580, 48582, 48583, 48610, 48612, 48613, 52671, 
52672, 34881, 34880, 34879, 34878, 34877, 34876, 34875, 34874, 34873, 
34872, 34871, 34870, 34869, 34868, 34867, 34866, 34865, 34864, 34863, 
34862, 34861, 34860, 34859, 34858, 34857, 34856, 34855, 34854, 34853, 
34852, 34851, 34850, 34849, 34848, 34847, 34846, 34845, 34844, 34843, 
34842, 34841, 34840, 34839, 34838, 34837, 34836, 34835, 34834, 34833, 
34832, 34831, 34830, 34829, 34828, 34827, 34826, 34825, 34824, 34823, 
34822, 34821, 34820, 34819, 34818, 34817, 34816, 34815, 34814, 34813, 
34812, 34811, 34810, 34809, 34808, 34807, 34806, 34805, 34804, 34803, 
34802, 34801, 34800, 34799, 34798, 34797, 34796, 34795, 34794, 34793, 
34792, 34791, 34790, 34789, 34788, 34787, 34786, 34785, 34784, 34783, 
34782, 34781, 34780, 34776, 34775, 34774, 34773, 34772, 34771, 20940, 
1618, 1615, 1613, 1605, 1603, 1574, 1457, 1455, 1452, 1446, 1445, 1443, 
1439, 5082, 5058, 5054, 5047, 51799, 51798, 51797, 51796, 51795, 51794, 
43841, 43842, 43843, 43844, 43845, 43846, 43847, 43848, 43849, 43850, 
43851, 43852, 43853, 43854, 43855, 43856, 43857, 43858, 43859, 43860, 
43861, 43862, 43863, 43864, 43865, 43866, 43867, 43868, 43869, 43870, 
43871, 43872, 43873, 43874, 43875, 43876, 43877, 128800, 128801, 128802, 
133718, 133719, 105883, 105884, 105885, 105886, 28284, 28283, 28282, 
28281, 28280, 28279, 28278, 28277, 28276, 28275, 28274, 28273, 28272, 
28271, 28270, 28269, 28268, 28267, 28266, 28265, 85326, 85327, 85328, 
85329, 85330, 85331, 85332, 85333, 85334, 85335, 85336, 85337, 85338, 
85339, 85340, 85341, 85342, 85343, 85344, 85345, 85346, 85347, 85348, 
85349, 85350, 85351, 85352, 85353, 85354, 85355, 85356, 85357, 85358, 
85359, 85360, 85361, 85362, 85363, 85364, 85365, 85366, 85367, 85368, 
85369, 85371, 85376, 85377, 85452, 85453, 85454, 85455, 85456, 85457, 
85458, 85459, 85460, 85461, 85462, 85463, 85464, 85465, 85466, 85467, 
85468, 85469, 85470, 85471, 85472, 85473, 85474, 85475, 85476, 85477, 
85479, 85480, 85481, 85482, 37191, 37192, 37193, 37194, 37195, 37196, 
37197, 37198, 37199, 37200, 37201, 37202, 37203, 37204, 37205, 37206, 
37207, 37208, 37209, 37210, 37211, 37212, 37213, 37214, 37215, 37216, 
37217, 37218, 37219, 37220, 37221, 37222, 37223, 37224, 37225, 37226, 
37227, 37228, 37229, 37230, 37231, 37232, 37233, 37234, 37235, 37236, 
37237, 37238, 37239, 37240, 37241, 37242, 37243, 37244, 37245, 37246, 
37247, 37248, 37249, 37250, 37251, 37252, 37253, 37254, 37255, 37256, 
37257, 37258, 37259, 37260, 37261, 37262, 37263, 37264, 37265, 37266, 
37267, 37268, 37269, 37270, 37271, 37272, 37273, 37274, 37275, 37276, 
37277, 37278, 37279, 37280, 37281, 37282, 37283, 37284, 37285, 37286, 
37287, 37288, 37289, 37290, 37291, 35094, 35093, 35092, 35091, 35090, 
35089, 35088, 12847, 12846, 12845, 12844, 51793, 51792, 51791, 51790, 
43807, 43808, 43809, 43810, 43811, 43812, 43813, 43814, 43815, 43816, 
43817, 43818, 43819, 43820, 43821, 43822, 43823, 43824, 43825, 43826, 
43827, 43828, 43829, 43830, 43831, 43832, 43833, 43834, 43835, 43836, 
43837, 43838, 43839, 43840, 39093, 39115, 39116, 39117, 39355, 39356, 
39357, 39358, 39717, 39718, 39722, 39725, 39726, 39728, 39729, 40366, 
105114, 105115, 105116, 121036, 121037, 121038, 121039, 121040, 100984, 
100985, 100986, 100987, 101016, 101017, 45526, 52594, 52595, 52596, 
84023, 84024, 84026, 86142, 86143, 86144, 86145, 86146, 89523, 89525, 
89530, 89784, 89785, 89786, 89787, 89788, 89789, 89790, 89799, 89800, 
89801, 89802, 89803, 89804, 89805, 89806, 89807, 89808, 89809, 90007, 
90008, 90009, 90216, 90244, 90245, 90246, 90248, 90279, 90280, 90318, 
90346, 90372, 90375, 90383, 26195, 26194, 26193, 26192, 26191, 26190, 
26189, 26188, 26187, 26186, 26185, 26184, 78684, 91812, 91987, 91992, 
91993, 91994, 91995, 91998, 92005, 92019, 92021, 92022, 92024, 92114, 
92117, 92118, 92173, 92222, 92260, 92293, 92308, 92315, 92316, 92318, 
92349, 92363, 92365, 92367, 92423, 92456, 92457, 92485, 92492, 92493, 
92494, 92502, 92570, 92572, 92574, 92575, 92576, 92580, 92720, 92721, 
92747, 92748, 92749, 92791, 92794, 92795, 92796, 92797, 92798, 92800, 
92802, 92803, 92811, 92815, 92816, 92819, 92825, 14851, 15974, 99212, 
99213, 99214, 99215, 99216, 99217, 99218, 99219, 99220, 99221, 6138, 
6132, 6128, 6084, 6083, 6082, 5024, 5023, 5022, 5021, 4959, 4958, 4952, 
4951, 4893, 4892, 4263, 4262, 4254, 4237, 4236, 105129, 105130, 122609, 
122610, 122611, 122641, 122642, 122643, 123703, 123710, 123711, 123712, 
123713, 123717, 123721, 123722, 123727, 123729, 123730, 123731, 123732, 
123733, 123734, 123735, 123736, 123737, 123738, 123739, 123740, 123741, 
123742, 123743, 124726, 124727, 124728, 31299, 31294, 31293, 31290, 
31287, 30963, 30946, 30943, 30917, 30873, 30705, 30446, 31624, 31629, 
31702, 33778, 33779, 100036, 100037, 100038, 100039, 100040, 100041, 
100042, 100043, 100044, 100047, 100048, 100049, 123853, 123854, 123855, 
123856, 123857, 123858, 123859, 123860, 123861, 123862, 123863, 123865, 
123866, 123867, 123868, 123869, 203520, 111726, 111742, 111746, 203457, 
100581, 100582, 100583, 6137, 6136, 6044, 6042, 6036, 6035, 6034, 6032, 
5963, 5962, 5934, 5177, 5032, 5016, 4938, 4881, 4873, 4872, 4868, 4859, 
4417, 4335, 4315, 4304, 4303, 4292, 4291, 4290, 4287, 4285, 4272, 4271, 
4268, 4257, 4253, 4240, 4225, 4220, 4219, 4218, 128561, 128563, 30341, 
30339, 30336, 30334, 30333, 30252, 30250, 30249, 30132, 30131, 30129, 
30127, 30125, 30124, 31981, 31983, 31985, 31989, 31990, 33454, 33455, 
33457, 33458, 33459, 33471, 33473, 33490, 33491, 33493, 33494, 33497, 
33498, 33499, 33500, 135966, 135967, 7843, 7799, 7798, 7797, 7710, 7476, 
7246, 7245, 7244, 7243, 7241, 7240, 7239, 7236, 7233, 7231, 7230, 7008, 
6993, 6990, 6982, 6950, 6949, 6946, 6945, 6944, 6942, 6940, 7794, 7795, 
9375, 9370, 9368, 9367, 9364, 9361, 9214, 9210, 9208, 9109, 9094, 9090, 
8798, 8367, 8257, 33330, 33329, 33328, 33327, 33326, 33325, 33324, 
33323, 33322, 33321, 33320, 33319, 33318, 33317, 33315, 33314, 33313, 
12842, 12841, 12840, 12839, 12838, 12837, 12835, 12834, 12833, 12832, 
12831, 100278, 100301, 100317, 100318, 100319, 100320, 100321, 100322, 
100323, 100324, 100325, 100327, 7614, 7253, 7252, 7251, 7137, 7006, 
6998, 120980, 120981, 120982, 120983, 120984, 1381, 1376, 1368, 1161, 
40422, 40431, 40439, 40463, 40679, 40691, 2622, 2611, 945, 781, 780, 
754, 752, 11858, 10288, 8515, 7388, 48903, 48848, 48847, 48845, 48844, 
48843, 48840, 49009, 49011, 91343, 91346, 91347, 91348, 91373, 91379, 
91382, 91393, 135835, 135836, 135837, 135838, 135839, 135840, 135841, 
135842, 34148, 34153, 86207, 86208, 89204, 89205, 89206, 51725, 51726, 
51727, 51728, 51729, 51730, 51731, 51732, 1284, 1283, 1282, 1279, 1062, 
1055, 1051, 991, 989, 987, 981, 954, 952, 946, 756, 614, 613, 612, 374, 
373, 372, 7470, 7468, 7467, 7403, 7402, 7401, 7313, 7308, 7254, 7203, 
50938, 50939, 50940, 50941, 50942, 50943, 50944, 50945, 50946, 50947, 
50948, 50949, 50950, 50951, 50952, 50953, 50954, 50955, 50956, 50957, 
50958, 50959, 50961, 50962, 50963, 50964, 50965, 93050, 93061, 93111, 
93112, 93122, 93129, 93199, 93234, 93235, 93236, 93305, 93312, 93314, 
93329, 93337, 93383, 93384, 93403, 93467, 93473, 93490, 93493, 93494, 
93495, 93499, 93536, 93546, 33813, 37600, 37613, 38713, 38746, 38747, 
38781, 38798, 38802, 38804, 38809, 38811, 38822, 38839, 38863, 38867, 
38879, 38888, 38890, 38892, 38893, 38916, 38917, 38918, 38945, 38966, 
38969, 40156, 41713, 41716, 41721, 41799, 42114, 42125, 42810, 42842, 
42843, 42848, 42855, 42859, 42861, 42862, 42863, 42883, 43428, 43592, 
104644, 104654, 104681, 104708, 47587, 90600, 92880, 92881, 8934, 8933, 
1607, 1430, 136783, 136784, 136785, 136786, 14058, 41767, 28130, 28129, 
28128, 28127, 28126, 28125, 28124, 28123, 28122, 28121, 42737, 42738, 
42739, 42740, 42741, 42742, 42743, 21689, 21688, 21687, 21686, 21685, 
21684, 126878, 126879, 126880, 126881, 126882, 126883, 126884, 126885, 
124276, 124277, 1638, 1378, 1375, 1371, 1364, 1363, 1340, 1185, 1152, 
2537, 2536, 2535, 2534, 2533, 2531, 2511, 2399, 2390, 2173, 30063, 
38034, 38035, 38036, 38038, 38393, 44432, 44435, 44437, 44439, 44511, 
44516, 39095, 39118, 39119, 39120, 39140, 39149, 39161, 39168, 39181, 
39554, 39574, 39668, 39670, 124866, 124867, 124868, 124869, 124883, 
124884, 124885, 124886, 124887, 124888, 124889, 85085, 85084, 126983, 
126984, 32935, 32934, 45272, 45273, 45275, 45277, 45278, 45279, 45281, 
45727, 45728, 45731, 45733, 45735, 45736, 47069, 47071, 47072, 47237, 
47238, 47240, 47242, 48123, 48125, 48126, 48127, 48128, 48129, 48130, 
48354, 48355, 48362, 48366, 48584, 7486, 7513, 7518, 7520, 10133, 10166, 
22273, 22276, 22278, 26168, 28361, 28375, 29887, 23196, 23195, 23194, 
23193, 23192, 23191, 23190, 23189, 23188, 23187, 23186, 23185, 23184, 
23183, 23182, 23181, 23180, 23179, 23178, 23177, 23176, 23175, 23174, 
23173, 23172, 23171, 23170, 23169, 23168, 23167, 27336, 27335, 27334, 
27333, 27332, 27331, 27330, 27329, 27328, 27327, 27326, 27325, 27324, 
132062, 132063, 132064, 132065, 132066, 132067, 132068, 132069, 132070, 
132071, 132072, 2379, 2151, 2150, 1863, 1862, 1855, 1307, 1293, 1291, 
1287, 1100, 795, 185, 9269, 9268, 9266, 9078, 8968, 8962, 8961, 8853, 
8848, 8841, 8839, 8838, 8831, 8830, 8719, 8339, 8337, 93105, 93201, 
93400, 93601, 93746, 93753, 93756, 93757, 93758, 28311, 28310, 28309, 
28308, 28307, 28306, 31010, 31486, 95076, 95077, 95079, 95173, 95174, 
95177, 95183, 95184, 95214, 95290, 95293, 95297, 95332, 95351, 95354, 
95419, 95428, 95434, 95446, 95469, 95471, 95538, 95542, 95548, 95566, 
95568, 95571, 95630, 95652, 95654, 95693, 95695, 95697, 95761, 95764, 
95766, 95825, 95842, 95843, 95934, 95940, 95942, 95956, 95957, 95961, 
96027, 96039, 96060, 96083, 96088, 96115, 96148, 96150, 96258, 96259, 
96265, 96280, 96284, 96306, 96375, 96376, 96378, 96446, 96447, 96451, 
96466, 96467, 96584, 96585, 96586, 136730, 136731, 136732, 136733, 
136734, 136735, 136736, 136737, 136738, 1634, 1633, 1632, 1631, 1627, 
1625, 1619, 1617, 1602, 1596, 1465, 1462, 1461, 1458, 906, 14975, 14974, 
14973, 14972, 14971, 14970, 14969, 14968, 14967, 14966, 14965, 14964, 
14963, 14962, 14961, 14960, 14959, 14958, 14957, 14956, 14955, 14954, 
14953, 14952, 14951, 14950, 14949, 14948, 14947, 14946, 14945, 14944, 
14943, 14942, 14941, 14940, 14939, 97345, 97348, 97349, 97350, 97351, 
97354, 97355, 97356, 97357, 97358, 97359, 97360, 97361, 97362, 97363, 
97364, 97365, 97366, 97367, 97368, 97369, 97370, 97371, 97372, 97373, 
97374, 97375, 97376, 97377, 97378, 97379, 97380, 97381, 97382, 97383, 
97384, 97385, 97386, 97387, 97388, 97389, 97390, 97391, 97392, 97393, 
97394, 97395, 101388, 101400, 101401, 101408, 101409, 101410, 101411, 
5078, 5077, 5072, 5069, 5065, 5063, 40721, 40756, 40758, 40772, 40773, 
40775, 40776, 40797, 40798, 40811, 40831, 132046, 132047, 132048, 
132049, 132050, 128272, 128273, 128274, 128275, 128276, 128277, 128278, 
128279, 128280, 128281, 128282, 128283, 128284, 128285, 128286, 128287, 
128288, 14770, 14767, 14766, 14764, 14763, 13307, 13284, 13243, 12911, 
12906, 12899, 12896, 12020, 11977, 102095, 102106, 102107, 102108, 
102109, 102111, 102112, 102113, 102114, 102115, 102116, 102117, 102118, 
102119, 102120, 102121, 102122, 2269, 1241, 827, 669, 668, 9414, 9409, 
9408, 9332, 9322, 9319, 9317, 9155, 9151, 9147, 9285, 9280, 9278, 9275, 
9274, 9184, 9172, 9170, 9169, 9143, 9138, 9133, 9131, 9123, 9122, 9120, 
9117, 9116, 9098, 9097, 9092, 9091, 9071, 9038, 9006, 9005, 8997, 8995, 
8986, 8983, 8981, 2564, 2561, 2559, 2551, 2548, 2547, 2545, 2544, 2539, 
2518, 2517, 2040, 2039, 2001, 2000, 1976, 1946, 1848, 1683, 1675, 1409, 
1406, 1323, 1318, 1242, 1239, 1138, 859, 858, 20206, 20205, 20204, 
20203, 20202, 20201, 20200, 20186, 20181, 12157, 12156, 12154, 12147, 
12141, 12135, 12119, 12118, 12084, 12066, 11887, 11886, 11881, 10433, 
10283, 8441, 8440, 7368, 7364, 7362, 6483, 6480, 23068, 23067, 23066, 
23065, 23064, 23063, 23062, 23061, 23060, 23059, 23058, 23057, 23055, 
20613, 20612, 20611, 20610, 20609, 20608, 20607, 20606, 20605, 20604, 
20603, 20602, 20601, 20600, 20599, 20598, 20597, 20596, 20595, 20594, 
20593, 20592, 20591, 20590, 20589, 31361, 31256, 31254, 31252, 31251, 
31167, 31102, 31098, 31088, 31087, 31083, 31082, 31023, 31020, 31013, 
30958, 30806, 30782, 30722, 31524, 31533, 31536, 31541, 33770, 33795, 
33797, 33874, 33880, 33884, 33887, 8780, 29890, 33179, 33178, 33177, 
33176, 33175, 33173, 42904, 42905, 42906, 42907, 42908, 42909, 42910, 
25467, 25466, 25465, 25464, 25463, 25462, 25460, 25459, 25458, 25457, 
25456, 25455, 25454, 25453, 25452, 25451, 25450, 25448, 25446, 25445, 
25444, 25443, 25442, 25441, 25440, 25439, 25438, 25437, 25436, 25435, 
25434, 25433, 25432, 25431, 25430, 25429, 25428, 25427, 25426, 25425, 
25424, 25423, 25422, 25421, 25420, 25419, 25418, 25417, 25416, 25415, 
25414, 25413, 25412, 25411, 25410, 25409, 25408, 25407, 25406, 25405, 
25404, 25403, 25402, 25401, 25400, 25399, 25398, 25397, 25396, 25395, 
25394, 25393, 25392, 25391, 25390, 25389, 25388, 25387, 25386, 25385, 
25384, 25383, 25382, 25381, 25380, 25379, 25378, 25376, 25375, 25374, 
25373, 25372, 25371, 25370, 25369, 25368, 25367, 25366, 25365, 25364, 
25363, 25362, 25361, 25360, 25359, 25358, 25357, 25356, 25355, 25354, 
25353, 25352, 25351, 25350, 25349, 25348, 25347, 25346, 14826, 15735, 
15730, 15727, 15722, 15714, 15659, 15655, 15654, 15653, 15651, 15650, 
15388, 15385, 15348, 15332, 15331, 15308, 121846, 121847, 121848, 
121849, 121850, 121851, 121852, 121853, 32501, 32500, 32499, 32498, 
32497, 32496, 32495, 32494, 32493, 32492, 32491, 32490, 32489, 32488, 
32487, 32486, 32485, 32484, 32483, 32482, 32481, 32480, 32479, 32478, 
32477, 32476, 32475, 32474, 32473, 91903, 91904, 104344, 104345, 104346, 
104354, 35104, 35103, 35102, 35101, 35100, 35099, 35098, 35097, 14074, 
14073, 14072, 14071, 14070, 14069, 14068, 14067, 14066, 14065, 14064, 
14063, 14062, 14061, 14060, 37969, 37970, 37972, 37973, 37974, 90391, 
90392, 90393, 86213, 86214, 86215, 86216, 86219, 86220, 86221, 86222, 
89098, 89099, 89100, 89104, 89105, 89106, 89147, 89149, 89150, 89151, 
89279, 5026, 4281, 4267, 1193, 791, 100887, 100888, 100889, 100890, 
100898, 100899, 133092, 133093, 133094, 133095, 133096, 133097, 133098, 
133099, 133100, 133101, 133102, 133103, 133104, 133105, 133106, 133107, 
133108, 133109, 133110, 133111, 133112, 133113, 133114, 133115, 133116, 
133117, 133118, 133119, 133120, 133121, 133122, 133123, 133124, 95931, 
95951, 95964, 96101, 96144, 96157, 96163, 96165, 96166, 96167, 96168, 
96169, 96172, 96175, 96176, 96203, 96205, 96206, 96227, 96231, 96234, 
124129, 124130, 124131, 124132, 124133, 124134, 124135, 124136, 124137, 
124138, 124139, 124140, 124141, 124142, 124143, 124144, 124145, 124146, 
124147, 124148, 124149, 124150, 124151, 28367, 28365, 27793, 27769, 
27763, 27473, 27472, 27471, 33511, 33512, 33518, 92857, 92859, 92862, 
92865, 92869, 92871, 92874, 92927, 92929, 92932, 92936, 92938, 93047, 
93051, 93248, 54081, 54083, 54084, 54085, 54086, 54087, 54088, 121775, 
121776, 121777, 27756, 27755, 27754, 27753, 27752, 27751, 27750, 27749, 
27748, 27747, 27746, 27745, 27744, 24600, 24599, 24598, 24597, 24596, 
24595, 24594, 24593, 24592, 24591, 24590, 24589, 24588, 24587, 24586, 
24585, 24584, 24583, 24582, 24581, 24580, 24579, 24578, 24577, 24576, 
24575, 107524, 107526, 107527, 107530, 107531, 107532, 107533, 107534, 
107535, 107536, 107537, 107539, 107540, 107541, 107542, 107543, 107544, 
107545, 107546, 107547, 107548, 107549, 107550, 85100, 85099, 200902, 
201155, 6806, 6805, 6802, 6798, 6795, 26246, 26245, 26244, 26243, 26242, 
26241, 26240, 26237, 26236, 26235, 26234, 56702, 56704, 56705, 56706, 
56707, 56708, 56710, 56714, 56715, 56716, 56717, 56718, 56747, 122533, 
122534, 122536, 122537, 122538, 122539, 122540, 50742, 50743, 50744, 
50745, 50746, 50747, 50748, 50749, 50750, 50751, 50752, 50753, 50754, 
50755, 50756, 50757, 50758, 50759, 50760, 50761, 50762, 50763, 50764, 
50765, 50766, 50767, 50768, 50769, 6045, 6031, 6015, 6013, 6012, 5189, 
5101, 5095, 5094, 4980, 4888, 4886, 4884, 4883, 4882, 4452, 4404, 4402, 
4341, 4340, 4339, 4337, 4336, 26233, 26232, 26231, 26214, 26213, 26212, 
26211, 26210, 104821, 104828, 104831, 104836, 104864, 104867, 104869, 
104870, 104871, 104872, 104873, 104874, 104876, 104877, 104879, 104885, 
104889, 104890, 104891, 104892, 104893, 104894, 104928, 104972, 104991, 
104992, 5556, 5555, 5538, 5484, 5475, 5473, 5456, 5454, 5338, 5337, 
5250, 5248, 4584, 4582, 4581, 122690, 122691, 122692, 122693, 122694, 
122696, 122697, 122698, 122699, 122700, 122701, 122702, 122703, 122704, 
122705, 7709, 7205, 7129, 7031, 6972, 6971, 6970, 6968, 6967, 6966, 
6965, 6963, 11050, 11047, 11048, 11046, 11044, 11037, 11036, 11035, 
11031, 11024, 11022, 10979, 10968, 10956, 105987, 105988, 105989, 
105990, 105991, 105992, 106042, 106043, 106044, 106045, 106165, 106166, 
106167, 106177, 106178, 106179, 32858, 32857, 32856, 32855, 32854, 
32853, 32852, 32851, 32850, 48908, 48907, 48902, 130338, 130339, 130340, 
130341, 130342, 130343, 84658, 84664, 84662, 84661, 84660, 84659, 3662, 
3660, 3659, 3657, 3098, 3097, 3095, 3090, 3089, 3087, 3086, 3084, 3021, 
2996, 2990, 2988, 2888, 2886, 2885, 2884, 2881, 2880, 2844, 2843, 2842, 
2841, 2840, 2839, 2837, 2836, 2800, 2798, 2797, 2795, 2791, 2790, 2745, 
2743, 2658, 2655, 2652, 2648, 27893, 27892, 27891, 27890, 136560, 
136561, 136562, 136563, 136564, 136565, 136566, 136567, 136568, 136569, 
136570, 136571, 136572, 136573, 136574, 136575, 6113, 6093, 5020, 5019, 
5018, 5017, 4975, 4261, 4260, 4259, 4258, 4239, 4238, 4233, 9341, 9340, 
9021, 9020, 9019, 9016, 9015, 9003, 9002, 8899, 8898, 8873, 8858, 8857, 
8856, 8721, 8718, 8687, 8686, 8397, 8391, 8390, 8389, 8382, 8381, 8375, 
8218, 18046, 18036, 18038, 18043, 18040, 18050, 18120, 18488, 18491, 
91648, 91653, 91659, 91673, 91675, 17695, 17673, 17671, 17672, 17670, 
17666, 17665, 17664, 17660, 17661, 17659, 17632, 18085, 18204, 18206, 
18207, 32773, 32772, 32771, 32770, 32769, 32768, 32767, 32766, 32765, 
32764, 32763, 32762, 32761, 24558, 24557, 24556, 24555, 24554, 24553, 
24552, 24551, 24550, 24549, 24548, 24547, 24546, 24545, 24544, 24543, 
24542, 24541, 24540, 24539, 24538, 24537, 24536, 24535, 24534, 24533, 
24532, 24531, 24530, 24529, 24528, 24527, 24526, 24525, 24524, 24523, 
24522, 24521, 24520, 24519, 24518, 24517, 24516, 24515, 24514, 24513, 
24512, 24511, 24510, 24509, 24508, 24507, 24506, 24505, 3690, 3666, 
2976, 2818, 2681, 100494, 100495, 100503, 100504, 100505, 100506, 
100507, 100534, 100544, 100557, 100559, 100565, 100566, 100567, 100568, 
100569, 100570, 100571, 100572, 100573, 86614, 86615, 86617, 86618, 
86619, 86621, 86622, 86623, 86658, 86659, 86660, 86781, 86782, 86784, 
86787, 86789, 86790, 87025, 89932, 90327, 90330, 90336, 90339, 90340, 
30082, 30086, 30087, 33519, 7190, 7188, 7186, 7165, 7032, 7030, 17662, 
17654, 17653, 17652, 17651, 17635, 17997, 17963, 17961, 17602, 17601, 
16646, 16627, 16624, 16623, 16613, 16614, 16615, 16612, 16566, 17829, 
17745, 18076, 18489, 33819, 38293, 38294, 38295, 39015, 39016, 127979, 
127980, 104243, 104244, 104245, 104246, 104247, 104248, 104249, 104251, 
104252, 104253, 104254, 104256, 104257, 104258, 104259, 104260, 104261, 
104262, 104263, 104264, 104265, 104266, 104267, 104268, 104269, 104270, 
104271, 104272, 104273, 104274, 104275, 104276, 104277, 104278, 104279, 
104280, 104283, 104284, 104306, 104307, 104308, 104310, 104314, 104316, 
104317, 104318, 104319, 104321, 104323, 104324, 104325, 104326, 104327, 
104328, 104329, 104331, 104332, 104333, 104334, 104335, 104336, 104337, 
104338, 104339, 104341, 104342, 6135, 6134, 6043, 6041, 6037, 6033, 
6024, 6014, 5967, 124484, 124485, 124486, 124487, 124488, 124489, 97036, 
97037, 97038, 97039, 97040, 97041, 97042, 97043, 97044, 97045, 97046, 
97047, 97048, 99059, 99060, 99061, 99062, 99063, 99064, 99065, 99066, 
99067, 99068, 99070, 99071, 99072, 99073, 99074, 99075, 99076, 99077, 
99080, 99081, 99082, 99119, 99120, 99121, 99122, 99123, 99124, 99125, 
99164, 99165, 99166, 99167, 99168, 99169, 99170, 99171, 99173, 99174, 
99175, 26990, 26988, 5090, 5089, 5088, 5002, 4991, 4983, 4982, 4880, 
4461, 4407, 4403, 4338, 4334, 131222, 131223, 131224, 131225, 131226, 
131227, 131228, 131229, 131230, 131231, 131232, 131233, 131234, 131235, 
131236, 131237, 131238, 131239, 131240, 131241, 131242, 131243, 131244, 
131245, 131246, 131247, 131248, 133802, 133803, 133804, 133805, 133808, 
133809, 133811, 133812, 133813, 133814, 133815, 133816, 133820, 133822, 
133823, 133824, 133826, 133828, 133830, 133831, 133834, 133835, 133837, 
133838, 133841, 133843, 133847, 133848, 133849, 133850, 133851, 133853, 
133854, 133855, 133856, 133859, 133861, 133862, 133864, 133865, 133866, 
133869, 133870, 133871, 52418, 52419, 52420, 52421, 52422, 52423, 52424, 
52425, 52426, 52427, 101926, 101927, 101928, 91595, 91597, 91599, 91601, 
91604, 91605, 91606, 91607, 91609, 91611, 91614, 91615, 99373, 99374, 
99375, 99376, 99377, 99378, 99379, 99380, 99381, 99382, 99383, 99384, 
99385, 99386, 99387, 99388, 99389, 99390, 99392, 99393, 99394, 99395, 
99396, 99397, 99398, 99399, 99400, 99401, 99402, 99403, 99404, 99405, 
99428, 99429, 99430, 99431, 99432, 99433, 99434, 99435, 99436, 99437, 
99438, 99439, 99440, 99441, 99442, 99443, 99444, 99445, 99446, 99447, 
132647, 132648, 86698, 86700, 89260, 89262, 124662, 124663, 124664, 
124665, 124666, 124667, 124668, 124669, 124670, 124671, 124672, 124673, 
124674, 124675, 124676, 124677, 124678, 124679, 124680, 124681, 124682, 
124683, 124684, 124685, 124686, 124687, 124688, 124689, 124690, 124691, 
124692, 124693, 89437, 89438, 89439, 89441, 89442, 14887, 14895, 16812, 
16554, 16543, 16517, 16476, 16152, 16149, 16128, 16112, 16109, 16050, 
16042, 16041, 16040, 15965, 15949, 15906, 15878, 15834, 15817, 15781, 
15777, 15775, 15774, 15773, 15771, 15770, 15769, 15768, 15766, 15764, 
15593, 15589, 15547, 15543, 15524, 15505, 15498, 15480, 15465, 15365, 
15340, 5061, 5059, 5057, 5055, 5048, 5046, 5028, 28529, 28528, 28527, 
28526, 28525, 28524, 28523, 121030, 121031, 121032, 121033, 121034, 
3812, 3808, 3033, 2893, 2889, 2848, 2810, 2809, 2808, 2806, 2805, 2802, 
2801, 2754, 2753, 2752, 2666, 2665, 2664, 2660, 38704, 38714, 38829, 
38832, 38834, 38837, 38843, 38845, 38849, 38880, 41805, 43775, 5445, 
5444, 5309, 5308, 5307, 5206, 5205, 5204, 87026, 87027, 87028, 87029, 
87030, 87031, 87032, 87033, 87034, 87035, 87083, 87084, 88750, 89597, 
89598, 89600, 89601, 89602, 89604, 89605, 89608, 89609, 89610, 89611, 
89619, 89620, 89621, 89623, 89624, 89626, 89627, 89628, 89629, 89630, 
89632, 89633, 89651, 89652, 89653, 89658, 89659, 90210, 90211, 90304, 
90309, 2538, 2481, 2401, 95092, 95100, 95104, 95144, 95146, 95163, 
95180, 95181, 95199, 95289, 95294, 95295, 95315, 95319, 95333, 95385, 
95418, 95421, 95438, 95441, 95504, 95505, 95518, 95570, 95572, 95575, 
95628, 95629, 95640, 95709, 95718, 95727, 95775, 95777, 95780, 95831, 
95834, 95838, 95936, 95937, 95939, 95970, 95971, 95975, 96022, 96052, 
96054, 96087, 96109, 96116, 96160, 96161, 96162, 96241, 96248, 96249, 
96273, 96275, 96281, 96345, 96351, 96444, 96448, 96453, 96470, 96477, 
96478, 96532, 96538, 96543, 52614, 52613, 52612, 52605, 52602, 52601, 
52600, 52599, 52258, 52249, 52248, 52235, 14719, 13296, 11666, 11630, 
11591, 11584, 11504, 11466, 11393, 11364, 11363, 11288, 11250, 11203, 
43907, 43908, 43920, 43924, 43926, 43927, 43928, 43929, 43930, 43931, 
43932, 43933, 43934, 43935, 43936, 43937, 43938, 43939, 43940, 43941, 
43942, 43943, 43944, 43945, 43946, 43947, 43948, 43949, 43950, 43951, 
43952, 43953, 43954, 43955, 43956, 43957, 43958, 43959, 43960, 43961, 
43962, 43963, 43964, 43965, 43966, 43967, 43968, 43969, 43970, 43971, 
43972, 43973, 43974, 43975, 43976, 43977, 43978, 43979, 43980, 43982, 
43983, 43984, 43985, 43986, 43987, 43988, 43989, 43990, 43991, 43992, 
43993, 43994, 43995, 43996, 43997, 43998, 43999, 44000, 44001, 51806, 
51805, 51804, 51803, 51802, 51801, 51800, 43878, 43879, 43880, 43881, 
43882, 43883, 43884, 43885, 43886, 43887, 43888, 43889, 43890, 43891, 
43892, 43893, 43894, 43895, 43896, 43897, 43898, 43899, 43900, 43901, 
43902, 43903, 43904, 43905, 43906, 2579, 1338, 1278, 1276, 1273, 1272, 
1270, 895, 775, 773, 772, 771, 371, 38854, 38859, 38902, 38903, 38904, 
38905, 38906, 38907, 40189, 40190, 40197, 40202, 42938, 42940, 42941, 
35918, 35919, 35920, 35921, 35922, 35923, 35924, 35925, 35926, 35927, 
35928, 35929, 35930, 35931, 35932, 35933, 35934, 35935, 49358, 49355, 
49352, 49351, 49349, 51387, 85163, 85164, 85165, 85166, 85167, 85168, 
85169, 85170, 20309, 20308, 20307, 20306, 20305, 20304, 20303, 20302, 
20301, 135852, 135853, 135854, 135855, 135856, 135857, 135858, 135859, 
135860, 135861, 89728, 89742, 134533, 134532, 134534, 134535, 134536, 
134537, 134538, 134539, 134540, 134541, 134542, 134543, 134544, 134545, 
134546, 134547, 134548, 134549, 134550, 134551, 134552, 134553, 134554, 
134555, 134556, 134557, 134558, 134559, 134560, 134561, 134562, 134563, 
134564, 134565, 134566, 134567, 134568, 134569, 134570, 134571, 134572, 
134573, 134574, 134575, 134576, 134577, 134578, 134579, 134580, 134581, 
134582, 134583, 134584, 134585, 134586, 134587, 134588, 134589, 134590, 
134591, 134592, 134593, 134594, 134595, 134596, 134597, 134598, 134599, 
134600, 134601, 134602, 134603, 134604, 134605, 134606, 134607, 134608, 
134609, 134610, 134611, 134612, 134613, 134614, 134615, 134616, 134617, 
134618, 134619, 134620, 134621, 134622, 134623, 134624, 134625, 134626, 
134627, 134628, 134629, 134630, 134631, 134632, 134633, 134634, 134635, 
134636, 134637, 134638, 134639, 134640, 134641, 134642, 134643, 134644, 
134645, 134646, 134647, 134648, 33113, 33112, 33111, 33110, 33109, 
33108, 33107, 33106, 33105, 11187, 11118, 11098, 11088, 11085, 11084, 
11079, 10030, 10024, 9794, 9792, 9791, 9702, 9597, 9539, 9477, 9476, 
49577, 49576, 49575, 49574, 49400, 49399, 49394, 49393, 49392, 49391, 
49386, 49380, 49379, 49378, 49377, 49369, 49368, 49367, 21819, 21818, 
21817, 21816, 21815, 21814, 21813, 21812, 21811, 21810, 21809, 21808, 
21807, 21806, 21805, 21804, 21803, 21802, 21801, 21800, 21799, 21798, 
21797, 17055, 16932, 16931, 16929, 16926, 16923, 16922, 16921, 16920, 
16919, 16918, 16914, 16911, 16910, 16906, 16904, 16902, 16897, 16896, 
16895, 16894, 16891, 16889, 16887, 16886, 16884, 16840, 16839, 16708, 
16688, 16685, 136435, 136436, 19469, 19468, 19467, 19466, 19465, 19463, 
19462, 19461, 19460, 19459, 19458, 19457, 19456, 19455, 19454, 19453, 
19452, 19451, 19450, 19449, 19448, 19447, 19446, 19445, 19444, 19443, 
19442, 19441, 19440, 19439, 19437, 19436, 19435, 19434, 19431, 19427, 
19426, 19420, 19419, 19418, 19417, 19416, 19410, 19409, 19408, 19407, 
19406, 19405, 19404, 19398, 19397, 19396, 19395, 19394, 19393, 19392, 
19391, 19390, 19389, 19388, 19378, 19377, 19376, 19375, 19374, 19373, 
19372, 19371, 19370, 19369, 19368, 19367, 19366, 19365, 19364, 19363, 
19339, 19338, 19337, 19336, 19335, 19334, 19333, 19332, 19331, 19330, 
19329, 19328, 19327, 131873, 131874, 131875, 131876, 131877, 131878, 
131879, 32254, 32253, 32252, 32251, 32250, 32249, 32248, 95063, 95117, 
95192, 95269, 95347, 95402, 95478, 95522, 95604, 95682, 95751, 95792, 
95870, 95895, 96012, 96032, 96086, 96181, 96256, 96320, 96387, 96419, 
96508, 96569, 12827, 12826, 2388, 2384, 2327, 2271, 2233, 2224, 1670, 
1341, 1337, 1234, 760, 17929, 17928, 17927, 17926, 17823, 17736, 18025, 
18028, 18081, 18163, 18165, 18166, 18415, 19152, 32150, 32149, 32148, 
32147, 32146, 32145, 32144, 32143, 124074, 124075, 124076, 124077, 
95064, 95121, 95221, 95267, 95318, 95396, 95487, 95546, 95617, 95671, 
95705, 95804, 95876, 95900, 96005, 96034, 96110, 96218, 96316, 96385, 
96429, 96520, 96563, 89681, 89684, 89685, 89689, 89691, 89692, 89694, 
89695, 89696, 89697, 89698, 89700, 89701, 89702, 89703, 89704, 89705, 
89707, 89710, 89713, 89714, 89715, 89717, 89718, 89719, 89720, 89749, 
89750, 89751, 89752, 90242, 90251, 90252, 90256, 90261, 90265, 90268, 
90271, 90371, 90376, 1928, 1637, 1298, 1173, 1114, 1069, 11189, 10658, 
10313, 10235, 10234, 10233, 10231, 10228, 10174, 10074, 10051, 10049, 
10048, 9976, 9944, 9883, 9864, 9836, 9782, 9745, 9699, 9698, 9647, 9648, 
9646, 9645, 200912, 200934, 201170, 201127, 201106, 200956, 200949, 
200939, 92990, 93046, 93185, 93233, 93562, 93563, 93564, 93578, 93709, 
93710, 93712, 13688, 13687, 13686, 13685, 13684, 13683, 13682, 13681, 
13680, 13679, 13678, 13677, 13676, 13675, 3831, 3830, 3829, 3828, 3827, 
3825, 3824, 3823, 2824, 2690, 2689, 33810, 33811, 33812, 34161, 34581, 
37616, 37624, 37625, 38732, 38759, 38770, 38772, 38779, 38780, 38783, 
38865, 38868, 38869, 38870, 38871, 38913, 42847, 42850, 42854, 42865, 
42866, 42882, 7866, 7848, 7844, 7712, 7702, 7560, 7471, 7250, 7247, 
7185, 7114, 7113, 7111, 7107, 7106, 7094, 7023, 7021, 6987, 6961, 6933, 
6929, 28427, 28428, 29906, 29907, 29908, 29911, 29912, 29914, 29915, 
30044, 30045, 30047, 30049, 30052, 32077, 32079, 32080, 32082, 32083, 
32084, 32085, 37882, 37884, 37886, 37887, 37890, 37893, 37895, 37926, 
38019, 38022, 38267, 38269, 38271, 38273, 38341, 38342, 38345, 38349, 
38352, 38355, 38377, 38378, 38380, 38461, 38462, 38463, 38496, 39001, 
39028, 39030, 39031, 40450, 40465, 40474, 40478, 40479, 40598, 40599, 
41745, 41749, 41859, 41862, 41864, 41866, 41908, 41910, 41911, 41922, 
41927, 41952, 41953, 41966, 41968, 41971, 41979, 41980, 41981, 41982, 
41983, 42013, 42023, 42024, 42025, 42026, 42028, 42029, 42052, 42053, 
42054, 42059, 42079, 42080, 42081, 42082, 42096, 42098, 42102, 42130, 
42132, 42133, 42867, 44062, 44063, 44073, 44074, 44146, 44155, 44222, 
44277, 44287, 44379, 44419, 44423, 44425, 44430, 44443, 44445, 44447, 
44448, 44449, 44453, 44459, 44496, 44497, 44498, 44519, 44545, 44553, 
44559, 44564, 44565, 44566, 44571, 44572, 44575, 44584, 44588, 44596, 
44636, 44648, 44650, 44651, 44652, 45022, 45063, 45066, 45068, 45080, 
45082, 45124, 45169, 45185, 45213, 45217, 45219, 137490, 137491, 51933, 
51934, 51935, 51936, 51937, 51938, 51939, 51940, 51941, 51942, 51943, 
51944, 89566, 89567, 89569, 89992, 90124, 90125, 11698, 11697, 11695, 
11690, 11688, 11687, 11685, 11508, 11503, 11500, 11496, 11495, 11494, 
11487, 11483, 11480, 11479, 11478, 11477, 11475, 11472, 11471, 11467, 
11332, 11331, 11330, 11328, 11326, 11266, 11265, 10042, 10021, 10010, 
10008, 9780, 9779, 9731, 9717, 9706, 9584, 9573, 9421, 6757, 6762, 7552, 
7583, 7590, 7767, 10417, 10452, 10454, 10458, 13332, 16148, 16207, 
16426, 16450, 16451, 16463, 16464, 17960, 18380, 122486, 122487, 122488, 
122489, 122490, 122491, 122492, 122493, 122494, 122495, 122496, 122497, 
122498, 122499, 122500, 122501, 122502, 122503, 122504, 122505, 122506, 
122507, 122508, 122509, 122510, 122511, 122512, 122513, 122514, 122515, 
122516, 122517, 122518, 122519, 122520, 122521, 122522, 122523, 122524, 
122525, 122526, 122527, 122528, 122529, 122530, 122531, 122532, 28447, 
28449, 28450, 28452, 28453, 28454, 30059, 30061, 33699, 33700, 33701, 
33702, 33703, 33704, 38033, 38340, 38392, 44276, 44483, 44517, 44573, 
44574, 44578, 44580, 44582, 44601, 44649, 44742, 44750, 44755, 44757, 
44760, 44783, 44798, 44865, 44874, 45057, 45059, 45065, 45067, 9156, 
9154, 9153, 53157, 53168, 54270, 54271, 56689, 92232, 92254, 92262, 
17570, 17569, 17549, 17387, 16972, 16970, 16969, 16968, 16967, 16960, 
16961, 121722, 121738, 30868, 30861, 30849, 28823, 25895, 25815, 33147, 
33146, 33145, 33144, 33143, 33142, 33141, 33140, 33139, 33137, 19716, 
27889, 27888, 27887, 27886, 27885, 27884, 27883, 27882, 27881, 27880, 
27879, 27878, 27877, 27876, 27875, 27874, 3884, 3855, 3806, 3805, 2721, 
2719, 2631, 2627, 2621, 2614, 2607, 2598, 2597, 941, 838, 785, 783, 782, 
753, 751, 519, 443, 2733, 2732, 2731, 2730, 2729, 2727, 2642, 2641, 
2639, 91572, 91608, 91613, 91626, 91632, 85111, 85110, 85109, 85108, 
85107, 85105, 85103, 85102, 85104, 31235, 31014, 31598, 31600, 31604, 
31680, 31683, 31684, 31706, 31710, 31719, 31720, 31721, 33852, 33856, 
33862, 127114, 127115, 127116, 127117, 127118, 127119, 127120, 127121, 
127122, 127123, 127124, 127125, 127126, 127127, 127128, 127129, 127130, 
127131, 127132, 127133, 127134, 127135, 127136, 127137, 127138, 127139, 
127140, 127141, 127142, 127143, 127144, 127145, 127146, 127147, 127148, 
127149, 127150, 127151, 127152, 127153, 127154, 127155, 127156, 127157, 
127158, 127159, 127160, 127161, 127162, 127163, 127164, 127165, 127166, 
127167, 127168, 127169, 127170, 127171, 127172, 127173, 127174, 127175, 
127176, 127177, 127178, 127179, 127180, 127181, 127182, 127183, 127184, 
127185, 127186, 127187, 127188, 127189, 127190, 127191, 127192, 127193, 
127194, 127195, 127196, 127197, 127198, 127199, 105887, 105888, 105889, 
105890, 105891, 105892, 105893, 105894, 105895, 105896, 105897, 105900, 
105901, 105902, 105913, 105979, 38797, 38799, 38886, 40200, 105524, 
105525, 105532, 105535, 105537, 105538, 105539, 105540, 200871, 200870, 
12386, 12371, 12370, 12368, 12359, 12355, 8318, 8013, 8012, 8011, 8010, 
8009, 8008, 8007, 8006, 7581, 7580, 7579, 7578, 7577, 7576, 7574, 7573, 
7572, 7370, 7369, 6676, 6675, 6674, 6673, 6672, 6671, 6670, 6669, 6668, 
6667, 4738, 4737, 4736, 4735, 4734, 4733, 4732, 4731, 4730, 4729, 52140, 
52139, 52138, 52137, 52136, 52135, 52134, 52133, 52132, 52131, 52130, 
52129, 52128, 52127, 52126, 52125, 52124, 92273, 92276, 92277, 92280, 
125871, 130545, 130118, 130119, 130120, 39627, 39628, 40367, 40405, 
40606, 40657, 40686, 40707, 127080, 127081, 127082, 14245, 11753, 11507, 
11485, 30238, 30231, 30230, 123671, 123672, 123673, 123674, 123675, 
123676, 123677, 123678, 131906, 131907, 131908, 131909, 131910, 131911, 
131912, 85323, 85324, 33103, 33102, 32134, 32133, 129436, 129438, 
129439, 130276, 130284, 130285, 21583, 15073, 15072, 100485, 100486, 
22062, 22061, 22060, 22059, 22058, 22057, 22056, 22055, 22054, 22053, 
22052, 22051, 22050, 22049, 22048, 22047, 22046, 22045, 22044, 22043, 
22042, 22041, 22040, 22039, 22038, 22037, 22036, 22035, 22034, 22033, 
22032, 22031, 22030, 22029, 22028, 22027, 22026, 22025, 22024, 22023, 
22022, 22021, 22020, 22019, 22018, 22017, 22016, 22015, 22014, 22013, 
22012, 22011, 22010, 22009, 22008, 22007, 22006, 22005, 22004, 22003, 
22002, 22001, 22000, 21999, 21998, 21997, 21996, 21995, 21994, 21993, 
21992, 21991, 21990, 21989, 21988, 21987, 21986, 21985, 21984, 21983, 
21982, 21981, 21980, 21979, 21978, 21977, 21976, 21975, 21974, 21973, 
21972, 21971, 21970, 21969, 21968, 21967, 21966, 21965, 21964, 21963, 
21962, 21961, 21960, 21959, 21958, 21957, 21956, 21955, 21954, 21953, 
21952, 21951, 21950, 21949, 21948, 21947, 21946, 21945, 21944, 21943, 
21942, 92955, 92968, 93015, 93079, 93087, 93107, 93113, 93127, 93130, 
93137, 93142, 93145, 93148, 93155, 93172, 93178, 93193, 93275, 93285, 
93287, 93293, 93295, 93308, 93309, 93322, 93349, 93352, 93353, 93355, 
93357, 93359, 93361, 93362, 93363, 93456, 93460, 93461, 93462, 93465, 
93469, 93470, 93471, 93475, 93476, 4039, 4037, 3998, 3975, 3973, 3971, 
26972, 26971, 26970, 26969, 26968, 26967, 26966, 26965, 26964, 26963, 
38372, 44787, 44900, 45119, 30392, 30391, 30386, 30385, 30384, 30309, 
33445, 33487, 16304, 16190, 16185, 16170, 16107, 16079, 16071, 16052, 
16043, 16031, 16026, 15838, 15796, 15793, 15788, 15511, 52434, 52435, 
52436, 52437, 52438, 52439, 31383, 31333, 31332, 31330, 31328, 31069, 
31065, 30948, 31555, 31571, 31572, 31666, 31667, 31668, 31671, 31723, 
31725, 31726, 31733, 31805, 31937, 31941, 31942, 31943, 33392, 33393, 
33394, 33682, 33684, 33691, 103408, 103415, 103430, 103452, 103453, 
103454, 103455, 124771, 124772, 124773, 124775, 124785, 124786, 124787, 
124788, 124789, 124790, 102309, 102311, 127476, 127477, 30412, 30411, 
30410, 30409, 30408, 30407, 30406, 30404, 30403, 30402, 30401, 30359, 
30026, 30021, 30020, 30017, 30016, 30015, 30014, 53098, 53097, 53096, 
53094, 53091, 53090, 53011, 53008, 53004, 53002, 53001, 52996, 52995, 
52994, 52993, 52992, 52838, 52652, 52651, 52648, 52646, 52645, 52623, 
52621, 52619, 52618, 52617, 52615, 122850, 122851, 122852, 122853, 
122854, 122855, 122856, 122858, 122859, 122860, 122861, 122862, 122863, 
122864, 122865, 122866, 122867, 122868, 122869, 122870, 122871, 122872, 
122873, 122874, 122875, 122876, 21071, 21070, 21069, 21068, 21063, 
21062, 21061, 21060, 21059, 21058, 7860, 7861, 7863, 7864, 7865, 7855, 
7856, 7857, 7858, 7859, 7853, 7854, 7852, 7850, 7846, 7703, 7788, 7792, 
100937, 100942, 100946, 100947, 100948, 100949, 100950, 100951, 100952, 
100953, 100954, 100955, 100956, 100957, 100958, 100959, 100960, 45334, 
45335, 45340, 46751, 46752, 46753, 46754, 46756, 46758, 47134, 47136, 
47137, 47138, 47874, 47887, 131637, 131638, 131639, 131640, 131641, 
131642, 131643, 131644, 131645, 131646, 3905, 3901, 3860, 25168, 25167, 
18607, 11164, 11165, 11032, 11020, 11019, 11018, 11012, 10995, 10992, 
10991, 10989, 10987, 10985, 10984, 10931, 10933, 10871, 10870, 10869, 
10868, 10806, 10805, 10804, 10734, 10710, 9718, 9719, 11921, 11920, 
11919, 11918, 35986, 35987, 35992, 35993, 35998, 36002, 36003, 36004, 
36005, 36006, 36007, 36008, 36009, 36010, 36011, 36012, 36013, 36014, 
36015, 36016, 36017, 36018, 36019, 36020, 41587, 41588, 41589, 41590, 
41591, 41592, 41593, 41594, 41595, 41596, 41597, 41598, 41599, 41600, 
41601, 41602, 41603, 41604, 41605, 41606, 41607, 41608, 41609, 41610, 
41611, 41612, 41613, 41614, 41615, 41616, 41617, 41618, 41619, 41620, 
41621, 41622, 41623, 41624, 41625, 41626, 94858, 94859, 94860, 94861, 
86386, 86387, 96835, 96836, 105868, 105869, 105870, 105871, 105872, 
3630, 3110, 3055, 3052, 2817, 6249, 6248, 6234, 6233, 6228, 6220, 5825, 
5798, 5793, 5790, 5748, 5709, 5708, 5707, 5706, 5705, 5704, 5691, 5667, 
5658, 5652, 5651, 5649, 5640, 5612, 5611, 26019, 26002, 26001, 21445, 
21444, 21443, 21442, 21441, 21440, 92879, 93269, 93270, 93271, 93273, 
93274, 93283, 93289, 93290, 93377, 93379, 93498, 13572, 13571, 13570, 
13569, 13568, 13567, 13566, 13565, 13563, 13562, 13561, 13560, 13559, 
13558, 13557, 13556, 13555, 13554, 13553, 12289, 12230, 7927, 7926, 
7925, 7924, 7385, 7384, 7383, 7382, 7381, 7380, 7379, 7378, 7377, 6533, 
6532, 6531, 6530, 6529, 6528, 3358, 3357, 3356, 3355, 3354, 3353, 3352, 
3351, 3350, 37107, 37109, 37110, 37111, 37113, 37114, 37115, 37116, 
37117, 37118, 37119, 37120, 37121, 37122, 37123, 37124, 37125, 37126, 
37127, 37128, 37129, 37130, 37131, 37132, 37133, 37134, 37135, 37136, 
37137, 37138, 37139, 37140, 37141, 37142, 37143, 37144, 37145, 37146, 
37147, 37148, 37149, 37150, 37151, 37152, 37153, 37154, 37155, 37156, 
37157, 37158, 37159, 37160, 37161, 37162, 37163, 37164, 37165, 37166, 
37167, 37168, 37170, 37171, 37172, 37173, 37174, 37175, 37176, 37177, 
37178, 37179, 37180, 37181, 37182, 37183, 37184, 37185, 37186, 37187, 
37188, 37189, 37190, 105509, 105516, 105517, 105518, 105519, 105520, 
105521, 105522, 105523, 11137, 11136, 11135, 11134, 10883, 10857, 10783, 
10782, 10781, 10780, 10779, 10700, 10614, 10613, 10570, 10569, 10533, 
10532, 10253, 10252, 10210, 10205, 9963, 9950, 9948, 9943, 9885, 9881, 
9845, 9834, 9806, 9713, 9650, 9643, 9631, 9431, 121515, 121516, 121517, 
121518, 121519, 121520, 121521, 121522, 121523, 121524, 121525, 121526, 
121527, 121528, 121529, 125905, 125904, 125903, 15281, 14898, 14859, 
14860, 14862, 14865, 14866, 14873, 14886, 14888, 14890, 14891, 14892, 
14850, 14844, 11580, 17309, 17307, 16975, 16810, 16788, 16784, 16767, 
16753, 16730, 16729, 16714, 16675, 16667, 16665, 16556, 16500, 16494, 
16489, 16484, 16458, 16454, 16074, 16055, 16037, 16036, 16034, 16022, 
16018, 15991, 15990, 15972, 15914, 15883, 15868, 15863, 15861, 15855, 
15849, 15846, 15842, 15837, 15823, 15820, 15739, 15723, 15709, 15680, 
15677, 15675, 15660, 15657, 15647, 15631, 15617, 15601, 15579, 15572, 
15563, 15513, 15506, 15496, 15494, 15482, 15467, 15464, 15459, 15458, 
15452, 15448, 15446, 15431, 15425, 15421, 15420, 15419, 15417, 15409, 
15402, 15399, 15396, 15393, 15391, 15389, 15381, 15378, 15377, 15375, 
15358, 15351, 15345, 15333, 15330, 15296, 51757, 51758, 51759, 51760, 
51761, 51762, 51763, 11180, 11177, 11178, 11179, 11174, 11175, 11176, 
11171, 11172, 11173, 11168, 11169, 11170, 11159, 11156, 10919, 10918, 
10917, 10916, 10911, 10910, 10908, 10907, 10886, 10885, 10836, 10835, 
10834, 10833, 10830, 10827, 10777, 10775, 10773, 10759, 10758, 10755, 
10754, 10753, 10752, 10619, 10544, 10542, 10240, 9884, 9882, 9827, 9767, 
9752, 9737, 9735, 9732, 9733, 9721, 9625, 9624, 9610, 29369, 29368, 
29367, 29366, 29365, 29364, 29363, 29362, 29361, 29360, 29359, 29358, 
29357, 29356, 29355, 29354, 29353, 29352, 29351, 29350, 29349, 29348, 
29347, 29346, 104521, 104522, 104523, 104524, 104525, 104527, 84750, 
84719, 84700, 35096, 35095, 86211, 89326, 11505, 11498, 11484, 11482, 
11481, 11476, 11470, 11469, 10020, 9541, 38733, 38744, 38774, 38803, 
38812, 38895, 38896, 38899, 106897, 106898, 106899, 106900, 106901, 
106902, 106903, 106908, 106909, 106910, 106911, 106912, 106913, 106914, 
106915, 106916, 106917, 106918, 7693, 7692, 7691, 7689, 7242, 7238, 
7237, 7235, 7234, 7232, 7229, 7206, 7204, 7183, 7182, 7181, 7180, 7179, 
7178, 7177, 7176, 7175, 7174, 7173, 7172, 7171, 7170, 7169, 11144, 
11141, 11140, 11138, 11139, 11133, 11131, 11132, 10853, 10799, 10743, 
10707, 10706, 10703, 10699, 10698, 10697, 10695, 10694, 10693, 10692, 
10690, 10689, 10685, 10684, 10682, 10681, 10679, 10678, 10676, 10671, 
10668, 10667, 10664, 10663, 10661, 10656, 10565, 10563, 10556, 10553, 
9994, 9820, 5084, 4971, 4966, 86242, 86243, 86244, 86245, 86246, 86247, 
86248, 86249, 86250, 86251, 86252, 86253, 86254, 86255, 86256, 86258, 
86259, 86260, 86261, 86262, 86264, 86265, 86266, 86267, 86268, 125872, 
130546, 30081, 30083, 30085, 30088, 30090, 33521, 33522, 33523, 133523, 
133524, 106839, 106840, 106841, 106842, 106843, 106844, 106845, 106846, 
85059, 85058, 51143, 51144, 51145, 51146, 51147, 51148, 51149, 51150, 
51151, 51152, 51153, 51154, 51155, 5060, 5053, 5051, 5050, 5033, 5030, 
5029, 56695, 91924, 91927, 92143, 92176, 92319, 92320, 92560, 92566, 
12759, 12758, 12757, 12756, 12755, 12754, 7837, 7836, 7835, 7834, 7196, 
18063, 18064, 18065, 18126, 18267, 18469, 19131, 19133, 19134, 19138, 
19142, 41050, 41051, 41052, 41053, 41054, 41055, 41056, 41057, 41058, 
41059, 41060, 41061, 41062, 41063, 41064, 49067, 49066, 49065, 49064, 
49063, 49062, 49061, 49060, 49059, 49057, 49055, 49054, 49053, 48887, 
48888, 48889, 48891, 48893, 48894, 52547, 52548, 52549, 52551, 52553, 
52554, 52555, 52556, 52572, 52573, 52574, 52575, 52576, 52577, 66980, 
66981, 66982, 66983, 66984, 66985, 81711, 84018, 84020, 84640, 89902, 
89904, 90202, 90208, 90213, 90217, 90223, 90303, 90337, 90341, 90410, 
90423, 90425, 90437, 3906, 3904, 3903, 3897, 3886, 3862, 3861, 3859, 
3822, 3683, 125762, 128460, 24171, 24170, 24169, 24168, 24167, 24166, 
24165, 24164, 24163, 24162, 24161, 24160, 24159, 24158, 24157, 24156, 
24155, 24154, 24153, 24152, 24151, 24150, 37566, 37567, 37568, 37569, 
47871, 47886, 1918, 1910, 1908, 1905, 42253, 42254, 42255, 42256, 42257, 
42258, 42259, 42260, 42261, 42262, 42263, 95072, 95131, 95234, 95280, 
95336, 95411, 95498, 95561, 95621, 95678, 95708, 95823, 95888, 95902, 
96008, 96061, 96126, 96188, 96229, 96329, 96395, 96441, 96523, 96576, 
29577, 29576, 29575, 29572, 29571, 29570, 29569, 29568, 29567, 29566, 
29565, 29564, 29563, 29562, 29561, 29560, 29559, 29558, 29557, 29556, 
29555, 29554, 29553, 29552, 29551, 29550, 29549, 29548, 29547, 29546, 
29545, 29544, 29543, 29542, 29541, 29540, 12600, 10496, 8510, 8509, 
8508, 8507, 8506, 8504, 8503, 27395, 27394, 27393, 27392, 27389, 27345, 
27344, 27343, 27342, 27341, 27340, 27339, 27338, 27337, 102923, 102924, 
33135, 33801, 33803, 33804, 33805, 33806, 33807, 34159, 21545, 21544, 
21543, 21542, 21541, 21540, 45543, 45544, 45546, 89876, 90042, 90127, 
90129, 127631, 127632, 127633, 127634, 127635, 127636, 127637, 105419, 
105420, 105421, 105422, 105423, 105424, 105425, 105426, 105437, 105438, 
105439, 105440, 12926, 7440, 6590, 6589, 6588, 3449, 3446, 52234, 52233, 
52229, 52228, 52227, 52225, 52224, 52223, 52222, 52221, 52220, 52219, 
52218, 27973, 27972, 27971, 27970, 27969, 27968, 27967, 27966, 27965, 
27964, 102843, 102844, 102845, 102846, 102847, 102848, 102849, 102857, 
102858, 102859, 102860, 102861, 102862, 102863, 102864, 102868, 102869, 
126876, 126877, 11369, 11368, 11367, 11345, 11251, 11232, 11230, 11231, 
16986, 16950, 16948, 16942, 16939, 16936, 16925, 16915, 16877, 16872, 
16870, 16869, 16865, 16859, 16856, 16853, 16835, 16829, 16797, 16666, 
123548, 123560, 123562, 123564, 123565, 123566, 123567, 123568, 123569, 
123570, 123571, 31899, 38108, 41842, 2158, 2134, 1877, 1847, 1840, 1733, 
1711, 1708, 1697, 1694, 1663, 1655, 1649, 1230, 1229, 37710, 37711, 
38750, 40182, 42815, 42816, 42819, 42820, 42829, 42833, 42841, 136609, 
136610, 29901, 37879, 38339, 44066, 44076, 44140, 44418, 44618, 44621, 
44623, 44628, 44920, 44931, 44934, 44937, 44939, 44947, 44950, 44972, 
45001, 45019, 21909, 21908, 21907, 21898, 21897, 21896, 21895, 21894, 
21893, 21892, 21891, 21890, 21889, 21879, 21878, 21877, 21876, 21875, 
21874, 21873, 21872, 21871, 21870, 21862, 21861, 21860, 21859, 21858, 
21857, 21856, 21855, 21854, 21853, 21842, 21841, 21840, 21839, 21838, 
21837, 21836, 21835, 21834, 21833, 3100, 2898, 2897, 2857, 2856, 2811, 
2673, 23999, 23998, 23997, 23996, 23995, 23994, 23993, 23992, 23991, 
23990, 23989, 23988, 23987, 23986, 23985, 23984, 23983, 23982, 23981, 
23980, 23979, 23978, 23977, 23976, 23975, 23974, 23973, 23972, 23971, 
23970, 23969, 23968, 23967, 23964, 13387, 13383, 13295, 13293, 13290, 
11741, 11734, 11733, 11709, 11704, 11701, 11411, 11397, 11396, 11380, 
11242, 28431, 28432, 28433, 28434, 28435, 28436, 28437, 28438, 28440, 
32025, 32026, 32086, 32087, 32088, 33379, 33384, 33385, 33386, 33695, 
33696, 33697, 38249, 38250, 38251, 38255, 38274, 38276, 38277, 38278, 
38279, 38280, 38283, 38446, 38448, 39004, 39006, 39007, 39008, 39009, 
39010, 39011, 39012, 41850, 41851, 41852, 41867, 41868, 41869, 41872, 
41873, 41874, 41879, 41955, 42667, 42796, 42872, 42873, 43426, 43427, 
43691, 120837, 120838, 120839, 120840, 120841, 120842, 120843, 120844, 
120845, 120846, 120847, 120848, 120849, 120850, 120851, 120852, 120853, 
120854, 120855, 120856, 120857, 120858, 120859, 120860, 120861, 120862, 
39402, 39405, 39406, 39407, 39411, 39413, 39414, 39470, 39478, 39648, 
40371, 40373, 40374, 40375, 40376, 40377, 40378, 40379, 40380, 40382, 
40383, 40384, 40385, 40392, 40395, 40396, 5207, 3326, 3322, 3320, 23962, 
23961, 23960, 23959, 23958, 23957, 23956, 23955, 23954, 23953, 23952, 
23951, 23950, 23949, 23948, 23947, 23946, 23945, 23944, 23943, 23942, 
23941, 23940, 23939, 23938, 23937, 23936, 23935, 23934, 23933, 23932, 
23931, 23930, 23929, 23928, 23927, 23926, 23925, 23924, 23923, 23922, 
23921, 23920, 23919, 23918, 23917, 23916, 23915, 23914, 23913, 23912, 
23911, 23910, 23909, 23908, 23907, 23906, 23905, 23904, 23903, 23902, 
23901, 23900, 23899, 23898, 14738, 14736, 14735, 14725, 13385, 13378, 
13377, 13376, 13374, 13372, 13367, 13351, 13348, 13345, 13344, 13342, 
13280, 13246, 13245, 13239, 12903, 11743, 11740, 11737, 11712, 11711, 
11708, 11705, 11703, 11597, 11594, 11421, 11409, 11406, 11405, 11403, 
53741, 91933, 91934, 91936, 92085, 103594, 103595, 103596, 103597, 
103598, 103599, 103600, 103601, 103602, 103603, 45568, 45569, 45705, 
45957, 45960, 46224, 46225, 46230, 46237, 46961, 46982, 46993, 47264, 
47291, 47306, 47311, 47432, 1836, 1835, 1834, 1831, 1827, 1712, 1710, 
1316, 1194, 953, 951, 947, 922, 921, 920, 918, 915, 913, 758, 89542, 
89543, 89544, 25609, 25608, 25607, 25606, 25605, 25604, 25603, 25602, 
25601, 25600, 25599, 25598, 25597, 25596, 25595, 25594, 25593, 25592, 
25591, 25590, 25589, 25588, 25587, 25586, 25585, 25584, 25583, 25582, 
25581, 25580, 25579, 25578, 25577, 25576, 25575, 25574, 25573, 25572, 
25571, 25570, 25569, 25568, 25567, 25566, 25565, 25564, 25563, 25562, 
25561, 25560, 25559, 25558, 25557, 25556, 25555, 25554, 25553, 25552, 
25551, 25550, 25549, 25548, 25547, 25546, 25545, 25544, 25543, 25542, 
25540, 25539, 25538, 25537, 25536, 25535, 25534, 25533, 25532, 25531, 
25530, 25529, 25528, 25527, 25526, 25525, 25524, 25523, 25522, 25521, 
25520, 25519, 25518, 25517, 25516, 25515, 25514, 25513, 25512, 25511, 
25510, 25509, 25508, 25507, 25506, 25505, 25504, 25503, 25502, 25501, 
25500, 25499, 25498, 25497, 25496, 25495, 25494, 25493, 25492, 25491, 
25490, 25489, 25488, 25487, 25486, 25485, 25484, 25483, 25482, 25481, 
25480, 25479, 25478, 25477, 25476, 25475, 25474, 25473, 25472, 25471, 
25470, 25469, 11190, 10657, 10648, 10236, 9947, 9862, 9835, 9817, 9744, 
9644, 9639, 9635, 9636, 48224, 48225, 48226, 48227, 48371, 48549, 48550, 
48551, 48552, 48553, 89840, 89841, 89842, 89843, 89844, 89845, 89846, 
89847, 89848, 89849, 90028, 90029, 99717, 99719, 99720, 99727, 99729, 
99731, 99733, 99734, 99735, 99736, 99737, 99738, 99739, 99740, 99741, 
99742, 99743, 99744, 99745, 99746, 99747, 99748, 99749, 99750, 53170, 
53172, 53173, 54273, 54274, 54275, 92775, 92846, 126611, 126612, 126613, 
127071, 127072, 127073, 127074, 127075, 127076, 127077, 127078, 127079, 
24948, 24947, 24946, 24945, 24944, 24943, 24942, 24941, 24940, 24939, 
24938, 24937, 24936, 24935, 5563, 5557, 5503, 5485, 5483, 5482, 5481, 
5479, 5478, 5378, 5377, 5376, 5244, 5240, 4578, 4577, 4576, 4574, 37945, 
37946, 37947, 37948, 37949, 37950, 37951, 37952, 37953, 37955, 37956, 
37957, 37958, 37959, 37960, 37961, 37962, 37963, 37964, 37965, 37966, 
37967, 37968, 12889, 12888, 12887, 12886, 12885, 12884, 100353, 100407, 
100408, 100422, 100423, 100424, 100425, 100426, 100427, 100428, 100429, 
100430, 100432, 100433, 100434, 100435, 100436, 100437, 100438, 100440, 
128352, 128353, 43277, 43278, 43279, 43281, 43282, 43283, 43284, 43285, 
43286, 43287, 43288, 43289, 43290, 43291, 43292, 43293, 43294, 43295, 
43296, 43297, 43298, 43299, 43300, 43301, 43302, 43303, 43304, 43305, 
43306, 43307, 43308, 43309, 43310, 43311, 43312, 43313, 43314, 43315, 
43316, 43317, 43318, 43319, 43320, 43321, 43324, 33155, 33154, 33153, 
33152, 33151, 33150, 33149, 133427, 133428, 133429, 38786, 38787, 38788, 
38789, 38794, 38800, 38801, 38866, 38891, 38911, 40206, 43589, 43590, 
26071, 26070, 26069, 26068, 26067, 26066, 26065, 26064, 26063, 26062, 
26061, 26060, 26059, 26058, 26057, 26056, 26054, 45536, 45539, 45541, 
45542, 45545, 89447, 89448, 89575, 89576, 89578, 89579, 89582, 89586, 
89587, 89589, 89871, 89872, 89874, 89877, 89878, 89879, 89997, 89998, 
89999, 90000, 90035, 90036, 90037, 90038, 90040, 90041, 90043, 90126, 
90128, 90130, 90230, 90232, 90343, 90344, 90350, 90354, 90355, 90414, 
90421, 122557, 122558, 122559, 122562, 122563, 122564, 122565, 122566, 
122567, 127981, 127982, 127983, 127984, 127985, 127986, 6116, 6114, 
6079, 6075, 6074, 6071, 6070, 6068, 6065, 6064, 6063, 6061, 5940, 5891, 
5889, 5199, 5198, 5196, 5190, 5174, 5172, 5009, 4956, 4949, 4913, 4879, 
4878, 4445, 5560, 5559, 5472, 5467, 5446, 5349, 5265, 251, 12725, 12724, 
12723, 12722, 12721, 12720, 12718, 7400, 18045, 18042, 18039, 18035, 
18048, 18049, 18484, 18486, 18487, 5911, 5907, 5906, 5905, 5904, 5902, 
5901, 5899, 5883, 5879, 5878, 5876, 5874, 86849, 86850, 26933, 26932, 
26931, 26930, 26929, 26928, 26927, 6693, 6296, 6279, 6275, 6254, 6253, 
6213, 6211, 6209, 6208, 6207, 6161, 6149, 6148, 6147, 7503, 7524, 7541, 
8314, 8701, 8755, 18450, 28359, 131193, 133606, 133607, 133608, 133609, 
133610, 25344, 25343, 25342, 25341, 25340, 25339, 25338, 25337, 25336, 
25335, 25334, 25333, 25332, 25331, 25330, 25329, 25328, 25327, 25326, 
25325, 25324, 25323, 25322, 25321, 25320, 25319, 25317, 25316, 25315, 
25314, 25313, 25312, 25311, 25310, 25309, 25308, 25307, 25306, 25305, 
25304, 25303, 25302, 25301, 25300, 25299, 25298, 25297, 25296, 25295, 
25294, 25293, 25292, 25291, 25290, 25289, 25288, 25287, 25286, 25285, 
25284, 25283, 25282, 25281, 25280, 25277, 25276, 25275, 25274, 25273, 
25272, 25271, 25270, 25269, 25268, 25267, 25266, 25265, 25264, 25263, 
25262, 25261, 25260, 25259, 25258, 25257, 25256, 25255, 25254, 25253, 
25252, 25251, 25250, 25249, 25248, 25247, 25246, 25245, 25244, 25243, 
25241, 25240, 25239, 13012, 13010, 13008, 13006, 12996, 12995, 12994, 
12992, 12990, 12352, 7740, 7679, 7678, 7677, 7676, 7675, 7317, 7316, 
7315, 7314, 7302, 7301, 7300, 7299, 6395, 6394, 6393, 6392, 6391, 6390, 
29584, 29583, 29582, 53835, 53836, 53871, 89226, 89227, 89228, 89300, 
89301, 89302, 89314, 89315, 89316, 89317, 89319, 89320, 89321, 89323, 
89328, 89332, 89333, 89334, 89335, 89336, 89337, 89338, 89339, 89340, 
89341, 89342, 89343, 89344, 89345, 89346, 89347, 89348, 89349, 89350, 
89351, 89352, 89353, 89354, 89355, 89356, 100574, 100575, 100576, 
100577, 100587, 100590, 100591, 100592, 100593, 100594, 100595, 100596, 
100598, 100599, 100600, 100601, 100602, 100603, 100604, 100605, 100606, 
100607, 100608, 100609, 100610, 100611, 100612, 100613, 100614, 100615, 
100616, 100617, 100618, 100619, 100620, 100621, 100622, 30657, 30654, 
23808, 23807, 23806, 23805, 23804, 23803, 23802, 23801, 23800, 23799, 
23798, 23797, 23796, 23795, 23794, 23793, 23792, 23791, 23790, 23789, 
23788, 23787, 23786, 23785, 23784, 23783, 23782, 23781, 23780, 23779, 
23778, 23777, 23776, 23775, 23774, 23773, 23772, 23771, 40980, 40981, 
40982, 40983, 40984, 40985, 40986, 40987, 40988, 40989, 40990, 40991, 
40992, 40993, 40994, 100983, 101028, 101029, 101030, 101031, 128557, 
128558, 128559, 26209, 26207, 26196, 118449, 118450, 118451, 118452, 
118453, 118454, 118455, 137557, 137558, 137559, 98123, 98158, 98160, 
98161, 98162, 98163, 98164, 98165, 98166, 98167, 98168, 98169, 98170, 
136282, 136283, 136284, 136285, 136286, 136287, 136288, 136289, 136290, 
136291, 136292, 136293, 136294, 136295, 136296, 136297, 136298, 136299, 
136300, 136301, 136302, 136303, 136304, 136305, 136306, 136307, 136308, 
136309, 136310, 136311, 136312, 136313, 136314, 136315, 136317, 136318, 
136319, 136320, 136321, 136322, 136323, 136324, 136325, 136326, 136327, 
136328, 136329, 136330, 136331, 136332, 136333, 136334, 136335, 136336, 
136337, 136338, 136339, 136340, 136341, 136342, 136343, 136344, 136345, 
136346, 32904, 32903, 32902, 32901, 32900, 32899, 32898, 32897, 94421, 
94475, 94477, 94485, 94486, 94487, 94488, 94489, 94509, 94510, 94511, 
94512, 94513, 94514, 94515, 94516, 94517, 94518, 94519, 94520, 94521, 
94522, 94523, 94524, 94525, 94526, 94527, 94528, 134518, 96368, 96369, 
96370, 96373, 85250, 85251, 85252, 85253, 85254, 85255, 85256, 617, 440, 
106895, 106896, 73492, 73491, 72964, 72942, 72601, 72485, 72408, 72407, 
72405, 7828, 7827, 7825, 7824, 7822, 7819, 7818, 7699, 7697, 7695, 7216, 
7141, 7133, 7131, 30381, 30380, 30379, 30378, 30376, 30375, 30374, 
30373, 30371, 30370, 30369, 30368, 30363, 30362, 30361, 30360, 30356, 
30355, 30354, 30353, 30300, 30299, 30298, 30297, 30291, 30290, 30289, 
30288, 30283, 30282, 30281, 30280, 30211, 30210, 30209, 30208, 30202, 
30201, 30200, 30199, 30197, 30196, 30195, 30194, 30190, 30189, 30188, 
30187, 30183, 30182, 30181, 30180, 30178, 30177, 30176, 30175, 30169, 
30168, 30167, 30166, 32001, 32002, 32003, 32004, 32014, 32103, 32104, 
33390, 33396, 33397, 33398, 33399, 33403, 33404, 33405, 33421, 33423, 
33426, 33427, 33428, 33433, 33434, 33435, 33436, 33438, 33439, 33440, 
33441, 33481, 33482, 33483, 33484, 50608, 50609, 50610, 50611, 50612, 
50613, 50614, 50615, 50616, 50617, 50618, 50619, 50620, 50621, 50622, 
50623, 50624, 50625, 50626, 50627, 50628, 50629, 50630, 50631, 50632, 
50633, 50634, 50635, 50636, 50637, 50638, 50639, 50640, 50641, 85081, 
85080, 8906, 8905, 8893, 8892, 8699, 8685, 8371, 8332, 8293, 8292, 8291, 
8290, 8289, 8288, 8287, 8217, 8216, 8215, 8214, 8213, 8212, 2251, 2235, 
2103, 2077, 2061, 2053, 2052, 1938, 1934, 1919, 1906, 1667, 1660, 1658, 
1404, 1390, 1262, 1256, 1254, 27484, 27483, 27481, 27480, 27479, 27478, 
27477, 27476, 27474, 32958, 32957, 32956, 32955, 32954, 32953, 32952, 
32951, 32950, 32949, 32948, 32947, 32946, 32945, 32944, 45116, 45120, 
45127, 45128, 45132, 45138, 45140, 45141, 45143, 45144, 37975, 37976, 
37977, 37978, 37979, 37981, 37982, 37983, 37984, 37985, 37986, 36022, 
36023, 36024, 36025, 36026, 36027, 36028, 36029, 36030, 36031, 36032, 
36033, 36034, 36035, 36036, 36037, 36038, 36039, 36040, 36041, 36042, 
36043, 36044, 36045, 36046, 36047, 91647, 91667, 91678, 91680, 91681, 
91682, 91683, 91684, 91685, 91686, 40887, 40888, 40889, 40890, 40891, 
40892, 40893, 40894, 40895, 40896, 40897, 40898, 40899, 40900, 40901, 
40902, 40903, 40904, 40905, 40906, 40907, 84787, 91814, 92000, 92116, 
92121, 92292, 92294, 92298, 92314, 92317, 92336, 92348, 92351, 92354, 
92409, 92425, 92455, 92463, 92478, 92483, 92484, 92573, 92579, 92584, 
92702, 92745, 92792, 92804, 92805, 92806, 92814, 92817, 92820, 92821, 
49958, 49959, 49960, 49961, 49962, 49963, 49964, 49965, 49966, 92546, 
92548, 92551, 92553, 92554, 92557, 92558, 92565, 18667, 18666, 18665, 
18664, 18663, 18662, 18661, 18660, 18659, 18658, 18657, 18656, 18655, 
18654, 18653, 18652, 18651, 18650, 18649, 18648, 18647, 18646, 18645, 
18644, 18581, 18573, 18572, 18571, 18570, 18569, 18568, 18567, 18566, 
18565, 18564, 18563, 18562, 18561, 18560, 18559, 18558, 18557, 18556, 
18555, 18554, 18553, 18552, 18551, 18550, 18549, 18548, 18547, 18546, 
18545, 18544, 18543, 18542, 18541, 18540, 18539, 18538, 18537, 18536, 
18535, 18534, 18533, 18532, 18531, 18530, 18529, 18528, 18527, 18526, 
18525, 18432, 18395, 18393, 18321, 18318, 18314, 18249, 18248, 18247, 
17968, 17510, 17509, 17508, 17507, 17506, 17505, 17504, 17503, 17502, 
17501, 17500, 17499, 17498, 17497, 17496, 17495, 17494, 17493, 17492, 
17491, 17490, 17489, 17488, 17487, 17486, 17485, 17484, 17483, 17482, 
17481, 17480, 17479, 17478, 17477, 17476, 17475, 17474, 17473, 17472, 
17470, 17469, 17468, 17467, 17466, 17465, 17464, 17463, 17462, 17461, 
17460, 17459, 17458, 17457, 17456, 17455, 17454, 17453, 17452, 17451, 
17450, 17449, 17448, 17447, 17446, 102594, 102596, 102597, 102599, 
45304, 45309, 45310, 45312, 46279, 46282, 46287, 46288, 47104, 47111, 
47451, 47455, 47456, 47476, 48150, 48155, 48159, 48176, 48384, 48388, 
48422, 34499, 34500, 38958, 38963, 38970, 38972, 39523, 39545, 40211, 
95080, 95133, 95222, 95272, 95324, 95378, 95477, 95544, 95622, 95673, 
95724, 95798, 95875, 95917, 95997, 96049, 96135, 96201, 96209, 96318, 
96388, 96424, 96500, 96528, 11053, 11052, 11051, 11049, 11045, 11025, 
11023, 11021, 10981, 16559, 16553, 16433, 16432, 16428, 16396, 16390, 
16381, 16370, 16363, 16317, 16312, 16308, 16307, 16150, 16023, 16021, 
15983, 15981, 15980, 15979, 15978, 15977, 15975, 15964, 15953, 15941, 
15900, 15896, 15889, 15887, 15840, 15783, 15682, 15616, 15614, 15611, 
15573, 15527, 15471, 15469, 15461, 15457, 15445, 15444, 98858, 98861, 
98862, 98867, 98868, 98869, 98870, 98871, 98872, 98875, 98876, 98877, 
98878, 98879, 98880, 98881, 98882, 98883, 98884, 98885, 203323, 203324, 
29845, 29844, 29843, 29842, 29841, 29840, 29839, 29838, 29837, 29836, 
29835, 29834, 29833, 29832, 29831, 29830, 29829, 102266, 102282, 102283, 
102284, 125973, 125972, 125971, 125970, 125969, 125968, 125967, 125966, 
125965, 125964, 125963, 125962, 125961, 125960, 125959, 125958, 125957, 
125956, 125955, 125954, 7193, 7083, 12057, 12056, 12053, 12052, 12051, 
12047, 11914, 11905, 11903, 11902, 11726, 11724, 11723, 11722, 11717, 
11716, 11715, 11713, 11357, 11356, 11355, 11352, 11336, 11335, 11334, 
11323, 127416, 127417, 127418, 127419, 127420, 127421, 23409, 92890, 
123757, 123759, 123761, 123762, 123763, 123764, 123765, 123766, 123767, 
123782, 123791, 123792, 123794, 123798, 123799, 123800, 123801, 123808, 
123811, 123812, 123813, 123814, 123815, 123816, 123817, 123818, 123819, 
123820, 123821, 123822, 123823, 123824, 137566, 137567, 137568, 10036, 
9988, 9910, 9900, 9893, 97189, 97190, 97191, 97192, 97193, 97194, 97195, 
97196, 97197, 97198, 97199, 97200, 97201, 97202, 97203, 97204, 97205, 
97206, 97207, 97208, 97209, 97210, 97211, 36125, 36126, 36127, 36128, 
36129, 36130, 36131, 36132, 36133, 36134, 36135, 36136, 36137, 36138, 
36139, 36140, 36141, 36142, 36143, 36144, 36145, 36146, 36147, 36148, 
36149, 30265, 30264, 30153, 30150, 30145, 12959, 12955, 12940, 12931, 
12927, 11862, 11784, 10444, 10443, 10292, 10291, 10289, 10287, 8513, 
7934, 7930, 7386, 6538, 6536, 6535, 6534, 127493, 127494, 127495, 
127496, 127497, 1394, 1391, 1380, 1373, 1360, 1344, 1264, 1213, 1157, 
200874, 200875, 39089, 39090, 39139, 39159, 39160, 39167, 39191, 39212, 
39213, 39215, 39216, 39223, 39260, 39261, 39266, 39276, 39277, 39278, 
39287, 39291, 39344, 39347, 39351, 39376, 39379, 39385, 39386, 39387, 
39476, 39480, 39484, 39558, 39622, 39623, 39652, 39674, 39677, 39679, 
39710, 39712, 40331, 40332, 40333, 40334, 40335, 40653, 40741, 40836, 
97717, 97719, 97720, 97721, 97723, 97725, 97726, 97727, 97728, 97729, 
97730, 97732, 97734, 97735, 97737, 97738, 97739, 97740, 97741, 97742, 
97743, 97744, 97745, 97746, 112058, 112059, 112088, 112089, 112091, 
112114, 112115, 112141, 112142, 112149, 112150, 112151, 112152, 112153, 
112154, 112155, 112156, 112157, 112158, 103534, 103535, 103542, 103548, 
103553, 103556, 103557, 103562, 103565, 103566, 103568, 103573, 103574, 
103575, 103576, 103577, 103578, 103586, 103587, 103588, 106611, 106612, 
106613, 106758, 106761, 106762, 106763, 106764, 106765, 106766, 106767, 
106768, 106769, 106770, 106771, 106772, 106773, 102072, 102076, 102077, 
102078, 102079, 102080, 102081, 102102, 102103, 102104, 93260, 93264, 
93267, 93268, 93272, 93276, 93277, 93292, 93297, 93378, 93380, 93508, 
93533, 5455, 5451, 5341, 5340, 5339, 5251, 5249, 5247, 5246, 4585, 4583, 
4580, 3920, 3874, 3849, 3835, 3833, 3832, 3826, 3807, 3080, 2736, 2644, 
50083, 50084, 50085, 50086, 50087, 50088, 50089, 50090, 50091, 50092, 
50093, 50094, 50095, 50096, 50097, 50098, 50099, 50100, 50101, 50102, 
50103, 50104, 50105, 50106, 50107, 31552, 31578, 33890, 33912, 33913, 
33929, 9207, 9200, 9199, 9193, 9186, 9181, 9024, 9008, 8946, 8895, 8879, 
8827, 8822, 8819, 8394, 8380, 8268, 95057, 95114, 95218, 95277, 95317, 
95400, 95479, 95524, 95602, 95674, 95725, 95805, 95874, 95914, 95994, 
96056, 96096, 96192, 96225, 96321, 96382, 96426, 96514, 96570, 4052, 
4044, 4031, 4029, 4020, 4018, 4016, 4004, 4003, 97990, 97994, 97996, 
97998, 97999, 98000, 98001, 98002, 98003, 98004, 98005, 98006, 98007, 
98008, 98009, 98010, 98011, 98012, 98013, 98014, 98015, 98016, 98017, 
91622, 91623, 91624, 91628, 91629, 91633, 91634, 91637, 91688, 6125, 
6124, 6121, 6120, 6119, 6118, 6117, 6115, 6111, 6110, 6109, 6108, 6107, 
6106, 6104, 6103, 6102, 6069, 6060, 5886, 5884, 5197, 5195, 5012, 5011, 
4957, 4449, 4447, 4446, 4437, 4435, 4434, 4433, 4432, 4430, 4429, 4428, 
4427, 4426, 4422, 4421, 4419, 4381, 4359, 4331, 4330, 4329, 4328, 4301, 
4300, 4299, 4298, 4297, 4296, 4295, 4250, 4249, 45552, 45554, 45556, 
45557, 54604, 54605, 54607, 54689, 89765, 89881, 89911, 89912, 90292, 
90388, 90389, 97636, 97637, 97638, 97639, 97640, 97641, 97642, 97643, 
97644, 97645, 97646, 23829, 23828, 23827, 23826, 23825, 23824, 23823, 
23822, 23821, 23820, 23819, 23818, 23817, 23816, 23815, 23814, 23813, 
23812, 23811, 23810, 23809, 47216, 47215, 47214, 47213, 47212, 47211, 
47210, 47209, 47207, 47206, 47205, 47087, 47086, 47081, 47080, 47079, 
47078, 47077, 47051, 47050, 47049, 47048, 47047, 47046, 47045, 46994, 
46992, 46991, 46990, 46979, 46978, 46977, 46970, 46969, 46967, 46966, 
46965, 46963, 46962, 46960, 46896, 46895, 46893, 46892, 46856, 46745, 
46744, 46743, 46742, 46741, 46740, 46739, 46738, 46737, 46736, 46735, 
46734, 46733, 46732, 46731, 46730, 46729, 46728, 46727, 46726, 46725, 
46724, 46690, 46673, 46672, 46671, 46670, 46669, 46668, 46667, 46666, 
46665, 46664, 46663, 46662, 46661, 46660, 46659, 46658, 46657, 46655, 
46654, 45959, 45958, 45956, 45955, 48173, 48174, 48203, 48209, 88903, 
88904, 88905, 88906, 88907, 88908, 88909, 88911, 90487, 90489, 90491, 
90513, 90515, 90516, 90517, 90519, 90520, 90521, 90522, 90523, 90524, 
90525, 90526, 90527, 90528, 90529, 90530, 90531, 90532, 90533, 90534, 
90535, 90536, 90537, 90538, 90539, 90540, 90541, 90542, 90543, 90544, 
90545, 90546, 90547, 90548, 90549, 90550, 90551, 90552, 90553, 90554, 
90555, 90556, 90557, 90558, 90559, 90560, 90561, 90562, 90563, 90564, 
90565, 90566, 90567, 90568, 90569, 90570, 90571, 90572, 90573, 90574, 
90575, 90576, 90577, 90578, 90579, 90580, 90581, 90582, 90583, 90584, 
90585, 90747, 90748, 90749, 90750, 90751, 90752, 90753, 90754, 90755, 
90756, 90757, 90758, 90759, 90760, 90761, 90762, 90763, 90764, 90765, 
90766, 90768, 90769, 90770, 90771, 90772, 90773, 90774, 90775, 90776, 
90777, 90778, 90779, 90780, 90784, 90786, 90787, 90788, 90789, 90790, 
90791, 90792, 90793, 90794, 90795, 90796, 90797, 90798, 90799, 90800, 
90801, 90802, 90803, 90804, 90806, 90807, 91108, 91109, 91110, 91112, 
907, 905, 904, 903, 902, 789, 768, 767, 648, 647, 588, 587, 586, 585, 
584, 583, 582, 581, 75, 74, 73, 72, 71, 70, 136491, 136492, 136493, 
136494, 136495, 136496, 136497, 136498, 136499, 136500, 136501, 136502, 
136503, 136504, 136505, 136506, 136507, 136508, 136509, 136510, 136511, 
136512, 136513, 136514, 136515, 136516, 136517, 136518, 95105, 95164, 
95194, 95292, 95311, 95422, 95444, 95519, 95569, 95637, 95730, 95763, 
95835, 95943, 95972, 96030, 96098, 96152, 96261, 96274, 96340, 96445, 
96473, 96539, 31151, 31139, 31136, 31128, 31122, 31121, 31117, 31647, 
31732, 37049, 133346, 133348, 133349, 133350, 133351, 136272, 136273, 
5983, 5982, 5981, 5979, 5978, 5977, 5976, 5975, 5971, 5970, 5969, 5966, 
5128, 5127, 5125, 4985, 4979, 4976, 4399, 4397, 4387, 5546, 5498, 5497, 
5496, 5495, 5490, 5487, 5336, 5335, 5334, 5333, 5332, 5331, 5330, 5329, 
5245, 5243, 5242, 5241, 4575, 27489, 27485, 86565, 86566, 86567, 86568, 
86569, 86570, 86571, 86572, 86573, 86574, 86575, 86651, 86652, 86654, 
11153, 11143, 11128, 11105, 11080, 10866, 10636, 10635, 10610, 10609, 
10605, 10604, 10603, 10602, 10600, 9961, 9962, 129562, 129563, 129564, 
129565, 129566, 129567, 129568, 129569, 129570, 129571, 97677, 97678, 
97679, 97680, 97681, 97682, 97684, 97687, 97688, 97689, 97690, 97693, 
97694, 97695, 97696, 11111, 11074, 10226, 9880, 9878, 9879, 9843, 9761, 
9720, 9692, 9661, 9657, 9658, 9655, 9654, 9653, 9622, 9623, 9619, 9617, 
9600, 9508, 22830, 22829, 22828, 22827, 22826, 22825, 22824, 22823, 
22822, 22821, 22820, 22819, 22818, 22817, 22816, 22815, 22814, 22813, 
22812, 22811, 22810, 22809, 22808, 22807, 22806, 22805, 22804, 22803, 
22802, 22801, 22800, 22799, 22798, 22797, 22796, 22795, 22794, 22793, 
22792, 22791, 22790, 22789, 123536, 123537, 123538, 103770, 103771, 
103772, 103773, 103774, 103775, 103776, 103777, 103778, 103779, 103780, 
103781, 103782, 103783, 103789, 103790, 103794, 103795, 103798, 103801, 
103803, 103805, 103806, 103821, 103822, 103823, 103852, 103853, 128186, 
128187, 128188, 128189, 128190, 128191, 128192, 128193, 128194, 128195, 
128196, 128197, 128198, 128199, 128200, 128201, 128202, 128203, 128204, 
128205, 128206, 128207, 128208, 128209, 128210, 128211, 128212, 128213, 
128214, 128215, 128216, 128217, 128218, 128219, 123844, 123864, 4226, 
792, 790, 774, 763, 97221, 97222, 97223, 97224, 97226, 2495, 2489, 2475, 
1935, 1915, 1833, 1829, 1826, 1825, 1709, 1705, 1700, 1689, 1630, 1416, 
1387, 1359, 1301, 1267, 1266, 1171, 901, 826, 816, 814, 673, 620, 24137, 
24136, 24135, 24134, 24133, 24132, 24131, 24130, 24129, 24128, 24127, 
24126, 24125, 24124, 24123, 24122, 125558, 125559, 125560, 125561, 
125562, 125563, 125564, 125565, 125567, 125568, 96663, 96664, 96671, 
96798, 96800, 96865, 30934, 30778, 30777, 30744, 30743, 31597, 51156, 
51157, 51158, 51159, 51160, 51161, 51162, 51163, 51164, 51165, 51166, 
51167, 51168, 51169, 51170, 51171, 51172, 51173, 51174, 21439, 21438, 
21437, 21436, 21435, 21434, 21433, 21432, 21431, 21430, 21429, 21428, 
21427, 21426, 21425, 21424, 21423, 21422, 21421, 21420, 21419, 21418, 
21417, 21416, 21415, 21414, 21413, 21412, 21411, 22784, 22783, 22782, 
22781, 50276, 50277, 50278, 50279, 50280, 50281, 50282, 50283, 50284, 
50285, 50286, 50287, 50288, 50289, 50290, 40950, 40951, 40952, 40953, 
40954, 40955, 40956, 40957, 40958, 40959, 40960, 40961, 40962, 40963, 
40964, 40965, 40966, 40967, 40968, 40969, 40970, 40971, 40972, 40973, 
40974, 35850, 35851, 35852, 35853, 35854, 35855, 35856, 35857, 35858, 
35859, 35860, 35861, 35862, 35863, 33231, 33230, 33229, 33228, 33227, 
33226, 39724, 40172, 40309, 40310, 40312, 40313, 40402, 40633, 40634, 
40635, 40637, 40640, 40642, 40649, 23104, 23103, 23102, 23101, 23100, 
122428, 122429, 122430, 122432, 122433, 122434, 122435, 122436, 122437, 
122438, 122439, 122440, 122441, 122442, 122443, 122445, 122446, 122447, 
122448, 122449, 122452, 122453, 122454, 122455, 122456, 122460, 131936, 
131937, 131938, 51047, 51048, 51049, 51050, 51051, 51052, 51053, 51054, 
51055, 51056, 51057, 51058, 51059, 51060, 51061, 51062, 51063, 51064, 
51065, 53840, 63145, 69698, 69700, 84080, 84782, 84795, 84796, 84797, 
84811, 84821, 84822, 84961, 84962, 85489, 86135, 86413, 90970, 90972, 
90973, 90974, 91807, 91820, 91853, 92299, 92300, 92301, 92302, 92303, 
92311, 92332, 92337, 92338, 92345, 92346, 92347, 92362, 92379, 92383, 
92384, 92472, 92496, 92498, 92509, 92539, 92587, 92588, 92589, 92590, 
92592, 92598, 92611, 92634, 92639, 92644, 92648, 92649, 92655, 92668, 
92673, 92714, 92723, 92724, 92732, 92733, 92734, 92738, 92739, 92741, 
92746, 92751, 92753, 92755, 92757, 92761, 92763, 92764, 92765, 92766, 
92768, 92770, 92771, 92773, 92774, 92787, 92788, 31424, 31421, 31419, 
31417, 31413, 31409, 31401, 31395, 31382, 31436, 31358, 31346, 31155, 
30905, 30876, 31443, 31428, 31431, 31491, 31494, 31495, 31496, 31503, 
31504, 31505, 31519, 31529, 33692, 33757, 33774, 33775, 33878, 33990, 
34010, 34014, 127232, 127233, 43206, 43207, 43208, 43209, 43213, 43214, 
43215, 43216, 43217, 43218, 43219, 43220, 35193, 35192, 136405, 136406, 
120726, 120727, 120728, 120932, 120946, 120947, 120948, 120949, 120950, 
120951, 18633, 13521, 13520, 13519, 13518, 13517, 13516, 13515, 13514, 
13513, 13512, 13511, 13510, 13509, 13508, 13507, 13506, 13505, 13504, 
13503, 13502, 13501, 13500, 13499, 13498, 13497, 13496, 13495, 13494, 
13493, 13492, 13491, 13490, 13489, 13488, 13487, 31664, 14146, 14145, 
14144, 14143, 14142, 14141, 11961, 11959, 125860, 125861, 125862, 
125863, 125864, 125865, 125866, 125867, 125868, 128545, 128546, 128547, 
128548, 128549, 128550, 128551, 128552, 128553, 120986, 120987, 120988, 
120989, 120990, 120991, 120992, 120993, 120994, 120995, 86701, 86702, 
86750, 86859, 86867, 86902, 86903, 86904, 89122, 89123, 89160, 89161, 
89162, 89163, 89167, 89286, 7683, 7662, 7653, 7638, 7623, 7621, 7613, 
7610, 7575, 7562, 7558, 7475, 7472, 6912, 19637, 19636, 19635, 19634, 
19633, 19632, 19631, 19630, 19629, 19628, 19627, 19626, 19625, 19624, 
29733, 29732, 29731, 29730, 29729, 29728, 29727, 29726, 29725, 29724, 
29723, 29722, 29721, 29720, 29719, 29718, 29717, 29716, 29715, 29714, 
29713, 29712, 29711, 29710, 29709, 29708, 29707, 29706, 29705, 29704, 
29703, 29702, 29701, 29700, 29699, 29698, 29697, 29696, 29695, 29694, 
29693, 29692, 29691, 29690, 29689, 31414, 31411, 31408, 31019, 31018, 
31002, 30936, 30932, 30931, 30736, 30617, 31430, 31697, 31700, 31707, 
31715, 31722, 100239, 100240, 100241, 100242, 100246, 100247, 100248, 
100279, 100349, 100371, 100372, 100373, 100374, 100375, 100377, 100380, 
100384, 100385, 100386, 100391, 100392, 100397, 100398, 100399, 100400, 
100402, 100404, 100405, 100406, 100409, 97116, 97117, 97118, 5964, 5175, 
5092, 5087, 5085, 5036, 16626, 16621, 16620, 16618, 16619, 16582, 16580, 
10709, 10708, 10705, 9839, 9826, 9778, 9678, 9595, 9415, 9042, 8978, 
8974, 8863, 8681, 8399, 8227, 34254, 34253, 34252, 34251, 34250, 34249, 
34248, 34247, 34246, 105016, 105048, 105077, 105078, 105082, 105083, 
105084, 105085, 105099, 105100, 105101, 105102, 105103, 105104, 105105, 
105106, 74475, 74178, 74136, 2525, 2343, 2334, 2325, 1303, 1261, 1223, 
1222, 126462, 126463, 126464, 126465, 126466, 126467, 126468, 100835, 
100836, 100837, 100839, 100840, 100844, 100847, 100850, 6278, 6269, 
7768, 7771, 8315, 8316, 8317, 8672, 8673, 8676, 8700, 95061, 95116, 
95193, 95270, 95367, 95381, 95484, 95536, 95616, 95686, 95754, 95789, 
95866, 95893, 96011, 96033, 96112, 96183, 96224, 96315, 96386, 96428, 
96509, 96568, 3894, 3857, 3853, 3817, 2780, 2717, 2716, 2715, 2714, 
24866, 24865, 24864, 24863, 24862, 24861, 24860, 24859, 24858, 24857, 
24856, 24855, 24854, 24853, 24852, 24851, 24850, 24849, 24848, 32162, 
32161, 32160, 32159, 32158, 32157, 32156, 10731, 10729, 27808, 27807, 
27806, 27805, 27804, 27803, 27795, 27788, 27787, 27786, 27785, 27784, 
27783, 27782, 27781, 5494, 5488, 5486, 5480, 5292, 5288, 5287, 4630, 
4627, 4625, 3283, 32881, 32880, 32878, 32877, 32876, 89547, 89553, 
30328, 30327, 30326, 30247, 30243, 30242, 30241, 30116, 30115, 53290, 
53291, 53292, 53293, 53294, 53295, 53296, 53298, 53299, 53300, 53587, 
53588, 53589, 53590, 53591, 53592, 53593, 53594, 53595, 53596, 53597, 
53598, 53599, 53600, 53601, 53650, 53654, 53669, 53672, 53673, 53674, 
53675, 53676, 53677, 24824, 24823, 24822, 24821, 24820, 24819, 24818, 
24817, 24816, 24815, 24814, 24813, 24812, 24811, 24810, 24809, 24808, 
24807, 24806, 24805, 24804, 24803, 24802, 24801, 24800, 86038, 86044, 
6123, 6122, 6105, 6078, 6073, 6072, 6067, 6066, 6062, 6059, 5890, 5888, 
5887, 5885, 4955, 4954, 4953, 4950, 4948, 4451, 4450, 4448, 4436, 4431, 
4420, 4380, 4355, 25898, 25897, 25896, 25894, 25893, 25892, 25891, 
25890, 25888, 25887, 25886, 25885, 25884, 25883, 25882, 25881, 25880, 
25879, 25878, 25877, 25876, 25875, 25874, 25873, 25872, 25871, 25870, 
25869, 25868, 25867, 25866, 25865, 25864, 25863, 25862, 25861, 25860, 
25859, 25858, 25857, 25856, 25855, 25854, 25853, 25852, 25851, 25850, 
27529, 30084, 30089, 33520, 100689, 100690, 100696, 100697, 100074, 
100075, 100076, 100077, 100078, 100079, 100080, 100081, 100096, 100097, 
100101, 100102, 100103, 137528, 137529, 137530, 137531, 14938, 14937, 
14936, 14935, 14934, 14933, 14932, 14931, 14930, 14929, 14928, 14927, 
14926, 14925, 14924, 14923, 14922, 14921, 14920, 14919, 14918, 14917, 
14916, 7371, 6522, 6521, 3889, 38701, 38702, 38712, 42835, 43443, 43445, 
43446, 43448, 43586, 43593, 43594, 43600, 43602, 43925, 44144, 15076, 
15075, 135779, 135780, 135781, 135782, 135784, 29980, 29979, 29978, 
29977, 29976, 29975, 29974, 21703, 21702, 46618, 46617, 46616, 14827, 
14819, 14817, 14812, 14813, 14787, 86671, 86757, 86758, 86759, 86760, 
86761, 86762, 51532, 51533, 51534, 51535, 51536, 51537, 51538, 51539, 
51540, 51541, 51542, 51543, 51544, 51545, 51546, 51547, 51548, 51549, 
51550, 51551, 51552, 51553, 33076, 33075, 33074, 33072, 133598, 133599, 
203363, 203364, 203365); 

DELETE FROM `creature_template_addon` WHERE `entry` IN
(29811, 23870, 28149, 11736, 930, 1087, 2505, 26621, 1181, 2971, 27362, 
1195, 4379, 589, 4850, 7372, 27686, 1013, 12076, 2761, 4368, 26124, 
3101, 32546, 26758, 11747, 4645, 8519, 33824, 5998, 5287, 1973, 3739, 
29240, 31833, 4352, 31738, 11745, 14758, 30058, 7068, 1161, 26075, 4632, 
3227, 6011, 1869, 9157, 11257, 1150, 1041, 1025, 1052, 8890, 17376, 
5430, 8956, 8881, 3771, 27230, 1097, 25355, 26258, 27633, 1185, 1781, 
26639, 25452, 24025, 30250, 30413, 29450, 11882, 33822, 17531, 25717, 
4684, 27673, 4024, 29517, 33468, 2929, 570, 30286, 1940, 15442, 4025, 
7136, 4370, 25396, 1797, 5680, 32479, 3863, 30947, 5276, 8958, 5993, 
3732, 32542, 26481, 742, 5427, 5451, 2967, 2561, 7455, 11661, 623, 531, 
4345, 9695, 34144, 24686, 7397, 7092, 2374, 30897, 7048, 9547, 9779, 
31262, 27164, 28833, 22848, 6509, 28417, 7670, 27688, 23885, 2165, 
10498, 4634, 34267, 3864, 11913, 4401, 3641, 3944, 863, 4714, 515, 2966, 
5462, 18429, 588, 26520, 7524, 98, 1941, 1908, 32925, 32250, 833, 23867, 
3804, 27452, 12859, 14356, 16530, 2646, 32149, 4658, 25887, 1528, 26170, 
4692, 33525, 740, 3386, 939, 3239, 28487, 6653, 21921, 22886, 29207, 
3108, 7320, 4093, 6507, 2376, 4729, 14883, 23677, 33561, 4250, 26663, 
4032, 5424, 11740, 33575, 1870, 1111, 26638, 3810, 1554, 4681, 34198, 
29966, 4376, 1508, 1040, 8551, 4284, 6116, 9700, 8716, 7864, 1543, 7462, 
2970, 1051, 26669, 26328, 6211, 2370, 4403, 3228, 29208, 29186, 7671, 
5991, 1190, 8534, 29027, 783, 1018, 2727, 26667, 5361, 7444, 11725, 
22876, 10491, 1957, 4344, 16020, 14825, 7138, 30071, 30599, 12298, 2375, 
4662, 31126, 16025, 1767, 6513, 7726, 5431, 686, 8530, 9878, 2732, 
26918, 27247, 6224, 34069, 7997, 28584, 26418, 440, 20054, 23131, 1114, 
32534, 7125, 3199, 1868, 3274, 31644, 33564, 11289, 30278, 12380, 4852, 
4158, 27635, 4653, 441, 3824, 29326, 3466, 27290, 772, 1785, 27286, 
11739, 10120, 26747, 29559, 33306, 4802, 1085, 34151, 977, 4475, 27163, 
517, 33140, 8718, 25914, 4316, 9163, 11727, 5286, 31555, 1144, 6504, 
28011, 4857, 1529, 26662, 23930, 30335, 750, 6188, 15692, 24440, 4682, 
1773, 33476, 22991, 25383, 4040, 32349, 9778, 25718, 11152, 13836, 
28500, 2628, 3098, 765, 23554, 7434, 32175, 10471, 7460, 1544, 922, 
6523, 24142, 5268, 2618, 5897, 14622, 28024, 28903, 29697, 26492, 9397, 
978, 2071, 4462, 10418, 3128, 24633, 15908, 29567, 4248, 25391, 698, 
27691, 1675, 4404, 4633, 33527, 11687, 1895, 23670, 3115, 7077, 10412, 
6554, 5337, 687, 3282, 22520, 1045, 8555, 9694, 25390, 6347, 27745, 
28242, 28001, 25728, 14718, 27544, 8904, 29754, 7034, 2654, 1958, 1826, 
4697, 4004, 27516, 27701, 670, 33809, 4389, 28583, 1553, 3765, 32874, 
1934, 4117, 5617, 2829, 3130, 6352, 10391, 3725, 29834, 30186, 16194, 
31075, 27513, 547, 2649, 7980, 15975, 31411, 4018, 26705, 4346, 3809, 
11577, 25719, 29030, 3236, 3384, 28351, 1008, 31780, 30290, 4699, 8883, 
31041, 1806, 23969, 33378, 27752, 3566, 4849, 5258, 6143, 22853, 1835, 
1202, 4872, 3249, 3297, 28769, 12800, 26456, 11043, 10477, 1142, 1794, 
29682, 1158, 28010, 433, 22889, 2962, 25675, 29479, 2440, 681, 32770, 
6503, 27402, 1536, 5334, 32236, 30576, 2360, 4659, 11738, 24613, 4166, 
3811, 30894, 33431, 8535, 28579, 24872, 28655, 10721, 9862, 579, 4711, 
26488, 26729, 4460, 28605, 2406, 33559, 2559, 23591, 1015, 26753, 27603, 
4953, 30066, 2337, 548, 27971, 1557, 15162, 25829, 26012, 23421, 23653, 
3206, 10659, 29189, 26458, 1400, 3784, 4412, 23919, 1824, 1504, 32298, 
1815, 32280, 29504, 29774, 30419, 23674, 1163, 3444, 701, 691, 26711, 
16529, 25431, 1007, 1547, 26752, 2585, 3742, 3250, 33748, 25975, 7157, 
3113, 5260, 26189, 1009, 23086, 13322, 27639, 30416, 14455, 12262, 2384, 
3112, 3111, 23337, 4051, 3279, 22883, 7086, 26760, 24177, 6349, 15128, 
4363, 35587, 33526, 3728, 3774, 1538, 30675, 39263, 6502, 26628, 7030, 
11669, 30898, 27306, 25687, 4636, 26743, 1021, 33820, 27641, 28005, 
26329, 2322, 11722, 5982, 4834, 16447, 943, 26113, 27957, 5646, 5978, 
2231, 2351, 34184, 27827, 4053, 29501, 11737, 2555, 28519, 16022, 1788, 
27251, 3808, 4366, 25429, 2250, 10408, 8442, 29562, 2725, 4019, 12474, 
8763, 30195, 9698, 2267, 31779, 7436, 24439, 24901, 858, 4037, 6202, 
7050, 1822, 27551, 5225, 1558, 23594, 504, 7290, 4031, 7369, 27640, 
4689, 30849, 26480, 23687, 4282, 624, 27671, 193, 6127, 30949, 28717, 
5319, 12377, 14826, 29461, 31263, 15547, 171, 5856, 25419, 15801, 24808, 
25677, 5272, 3821, 505, 6380, 27665, 761, 4468, 2521, 7031, 17316, 3126, 
26326, 29822, 29392, 27418, 26330, 9554, 28383, 7049, 32543, 199, 24064, 
756, 16021, 25668, 2069, 5645, 4641, 31140, 8762, 1526, 2207, 34273, 
6201, 27475, 28585, 25623, 1191, 30238, 10698, 31145, 1393, 28839, 4118, 
16492, 7395, 24818, 11918, 7037, 28856, 6125, 7078, 4728, 22875, 5988, 
25916, 11659, 29203, 4072, 1043, 745, 5840, 1157, 23971, 28523, 4644, 
1197, 16215, 3712, 5251, 3106, 1924, 28093, 4361, 5235, 4719, 27852, 
1108, 2208, 4142, 11873, 24673, 3129, 1094, 29838, 25464, 26765, 5975, 
122, 127, 2377, 5473, 3988, 28660, 26435, 3103, 29483, 7370, 696, 27636, 
27449, 1953, 31812, 3757, 212, 5426, 1176, 2245, 1033, 20069, 32264, 
5317, 31353, 26891, 6005, 5951, 32469, 4788, 19950, 29730, 4067, 5983, 
4042, 12178, 7440, 26309, 4016, 32320, 28231, 8523, 2976, 2408, 6004, 
29914, 34319, 6220, 11671, 16506, 2925, 32593, 5421, 27965, 1024, 28643, 
29205, 6557, 30877, 5854, 27456, 5308, 7099, 27824, 458, 121, 4014, 
1555, 3463, 11621, 10426, 5422, 9545, 7070, 31155, 27737, 28627, 11698, 
2955, 30078, 3252, 23397, 27871, 26446, 766, 28901, 2171, 6009, 23884, 
31786, 5523, 28887, 6206, 34145, 15616, 23821, 4388, 4347, 29301, 29521, 
9690, 678, 2070, 15185, 26740, 2206, 948, 3928, 26706, 3770, 1540, 
27689, 11578, 16489, 25808, 31043, 27836, 3803, 114, 4414, 3280, 28218, 
1660, 746, 23580, 29700, 1166, 25707, 31915, 27358, 27363, 4341, 4356, 
4129, 2693, 11666, 11788, 29920, 20055, 8520, 2054, 33743, 9396, 28935, 
23398, 28202, 3195, 7457, 16244, 1028, 5774, 2650, 10158, 25215, 8906, 
10488, 7376, 33819, 32202, 28002, 7101, 29466, 24110, 24819, 871, 32520, 
1270, 23644, 11620, 115, 6218, 29031, 27438, 4463, 25610, 2960, 30196, 
4394, 2252, 3125, 1417, 33463, 11373, 9044, 3117, 26200, 3226, 5458, 
15974, 20061, 23774, 23839, 8602, 32541, 7452, 29048, 7093, 513, 8961, 
33740, 27661, 3817, 24871, 24312, 4027, 34300, 4693, 4021, 2558, 29485, 
2318, 29826, 4429, 30960, 16154, 4324, 27713, 28246, 6200, 1791, 8598, 
28367, 3815, 28220, 4695, 2719, 11582, 2176, 16037, 32647, 7097, 32573, 
23876, 1564, 2372, 25921, 4097, 32771, 3919, 37133, 33558, 4472, 5423, 
4680, 1192, 578, 23620, 1047, 2185, 10463, 743, 685, 4378, 22902, 10761, 
594, 442, 26625, 12378, 12477, 2385, 10478, 24184, 3119, 29805, 22885, 
28419, 29793, 4853, 20027, 2321, 2407, 6234, 445, 4130, 2553, 6186, 
2284, 16540, 28055, 30718, 26658, 16156, 27964, 5860, 29191, 3105, 6007, 
2174, 2762, 24562, 4281, 26202, 24676, 31205, 6225, 30651, 26221, 15080, 
1183, 3114, 5428, 11562, 453, 3260, 8527, 4393, 14458, 5852, 32323, 
25843, 32545, 2233, 5357, 24530, 30430, 3207, 25651, 25534, 203, 1418, 
28476, 11885, 10420, 4415, 3989, 832, 15977, 1653, 16137, 6129, 29488, 
24058, 2892, 7321, 28041, 7032, 23225, 2760, 36807, 23643, 10413, 26331, 
33818, 10157, 28003, 23399, 8957, 2416, 2099, 5246, 682, 30642, 30899, 
36805, 3923, 4652, 5839, 2642, 2089, 27421, 25686, 29746, 27521, 12896, 
10160, 15897, 2923, 3122, 11360, 27530, 2791, 32772, 9777, 2583, 4430, 
2371, 23188, 8889, 1534, 26525, 26606, 8606, 16243, 26670, 23771, 4640, 
4688, 25201, 1674, 1525, 31900, 14532, 4034, 1765, 32155, 5305, 10485, 
29498, 1186, 24637, 7975, 23555, 3118, 32278, 10756, 26325, 26755, 741, 
24694, 33264, 1083, 11730, 32482, 18431, 31685, 10472, 2560, 5990, 
23087, 7459, 1026, 2156, 22874, 7029, 1193, 544, 4679, 26742, 14715, 
28960, 3196, 22877, 2202, 26126, 18312, 4359, 28025, 855, 4646, 5985, 
1795, 27638, 15043, 11291, 501, 24104, 26201, 3713, 500, 7446, 5306, 
28504, 905, 1549, 1956, 33562, 1046, 2338, 6517, 1490, 34135, 1827, 
5320, 12476, 23929, 25915, 5850, 7100, 29551, 32879, 11668, 16145, 
24862, 27869, 25417, 1866, 17766, 27165, 28662, 5976, 27403, 7451, 2686, 
26298, 6508, 23668, 5735, 7523, 26644, 4022, 7156, 2924, 22519, 28789, 
23400, 35473, 30172, 8547, 2831, 1832, 31701, 1793, 30114, 25432, 2373, 
29128, 7155, 28233, 4139, 6232, 1955, 31131, 23916, 32467, 6370, 4696, 
2977, 2647, 30233, 6512, 23809, 16485, 16525, 712, 25362, 1426, 23755, 
27226, 16211, 10608, 8542, 25350, 5241, 7727, 4664, 1194, 25699, 2323, 
4952, 4151, 29558, 30118, 9162, 5853, 1884, 781, 23542, 2965, 6369, 
8540, 29449, 6766, 24863, 29649, 25204, 31280, 480, 28642, 31127, 26413, 
26332, 24752, 25981, 28739, 3833, 6249, 3382, 4648, 30842, 873, 11723, 
689, 22523, 4007, 28489, 15475, 25468, 4343, 28268, 3, 11741, 3123, 
2234, 26482, 28486, 32502, 31330, 36811, 24174, 5299, 10678, 25428, 
7453, 29566, 31266, 33337, 16057, 568, 2578, 4044, 1821, 29708, 7025, 
2241, 33500, 7076, 2235, 8236, 4701, 26889, 1562, 1011, 30046, 3759, 
5359, 26047, 24082, 25962, 3380, 28254, 27970, 25722, 1017, 31142, 
25715, 27408, 8912, 2635, 3238, 28961, 34716, 25378, 5997, 709, 2565, 
1809, 29328, 3107, 32505, 1030, 8891, 18315, 5363, 6559, 5358, 27496, 
25377, 6514, 12396, 595, 1563, 29013, 3131, 31813, 13737, 3853, 32922, 
10416, 2232, 5466, 28169, 909, 27725, 2369, 23887, 10017, 24653, 16216, 
5327, 26472, 19144, 29958, 33744, 26792, 11338, 4469, 33384, 10414, 
5425, 8015, 1561, 10660, 4028, 4856, 7428, 32923, 33856, 16781, 23886, 
683, 4147, 5224, 215, 31731, 33699, 941, 5263, 11667, 4009, 5454, 4637, 
4458, 12479, 15898, 6551, 4635, 26744, 8922, 31077, 26646, 29729, 202, 
5360, 10541, 33292, 4041, 590, 4015, 25670, 28931, 26555, 9167, 34271, 
31747, 28838, 2264, 4124, 26756, 747, 30845, 32262, 1487, 422, 21045, 
4464, 2701, 27167, 831, 10486, 2651, 26741, 6189, 8603, 1189, 2953, 672, 
8531, 780, 31250, 23589, 1780, 25415, 25433, 3752, 2956, 23645, 3820, 
32255, 31251, 7108, 35106, 2348, 26307, 10481, 1044, 2572, 26123, 31042, 
2963, 1509, 11576, 33285, 3812, 1787, 7430, 13839, 34150, 6001, 31049, 
27823, 28965, 32284, 34907, 12347, 31690, 4397, 6130, 4023, 6187, 16067, 
16539, 10038, 7109, 24469, 27747, 23720, 28822, 26198, 124, 26636, 2653, 
4803, 5858, 1489, 6527, 27746, 3630, 23584, 33430, 757, 456, 6198, 4374, 
29973, 1050, 25660, 1778, 25980, 12100, 1488, 2266, 1512, 19306, 1770, 
4387, 3251, 11729, 1766, 17644, 28440, 2563, 11683, 1016, 8564, 22884, 
25501, 30640, 16491, 1923, 680, 3277, 10464, 17878, 587, 4702, 2236, 
8900, 11662, 6372, 26712, 1505, 32885, 8521, 30830, 979, 937, 8596, 
1084, 26199, 5429, 28157, 3099, 7438, 3781, 31887, 5366, 3124, 3917, 
671, 7033, 3861, 32507, 12099, 10480, 5247, 2639, 17478, 4054, 25454, 
29808, 6230, 25273, 28130, 7489, 4285, 4716, 26161, 28750, 14821, 28850, 
11288, 24217, 29285, 1531, 28905, 33141, 1082, 25224, 12801, 2237, 7047, 
25600, 3711, 660, 2694, 2574, 6552, 3035, 25422, 30876, 3244, 3801, 
34196, 545, 7107, 27553, 1890, 24076, 26782, 9879, 5278, 30952, 8525, 
3102, 28559, 2728, 8526, 1513, 8605, 24363, 6068, 4474, 7851, 1909, 
4003, 29792, 27283, 5307, 28234, 31836, 27927, 2178, 28274, 35117, 1530, 
26793, 6073, 30848, 28277, 31273, 3231, 27685, 32161, 28804, 7175, 7454, 
27961, 4461, 5419, 8760, 28530, 34190, 10016, 29104, 3750, 14717, 8667, 
26624, 7309, 28819, 7132, 6002, 6733, 32258, 11440, 481, 154, 34133, 36, 
126, 29820, 23581, 1713, 25701, 2723, 7443, 676, 17795, 1048, 26937, 
25286, 10417, 3426, 2187, 4364, 26751, 6556, 27787, 4673, 11563, 8548, 
6518, 30494, 1172, 16412, 2894, 2349, 1804, 2730, 30090, 8914, 9600, 
4140, 9699, 11370, 25216, 1031, 1796, 1088, 28390, 11672, 3814, 7445, 
4678, 3378, 679, 2652, 26324, 27607, 30418, 26739, 437, 23374, 28008, 
4382, 3746, 30177, 2592, 7450, 2729, 24684, 30687, 31718, 4457, 4026, 
3631, 29452, 10116, 3782, 33661, 30857, 3816, 26355, 1012, 16297, 15664, 
16165, 28260, 33738, 28835, 3116, 1565, 25724, 1816, 3819, 942, 892, 
11733, 28560, 27605, 23917, 4700, 24120, 2164, 3834, 22873, 11732, 
11516, 29798, 29710, 30265, 1109, 2972, 8601, 2347, 28452, 206, 27750, 
25713, 30633, 32490, 4351, 26411, 29614, 31400, 24114, 923, 29520, 6212, 
17660, 92, 1178, 3780, 22869, 29486, 2830, 30985, 784, 7126, 4506, 3141, 
10470, 15548, 865, 24047, 5362, 1551, 2720, 5288, 2927, 767, 29026, 
8903, 8276, 1222, 976, 33722, 5198, 4694, 15617, 9377, 28578, 31438, 
782, 694, 1532, 7098, 30194, 33746, 28920, 3740, 1817, 432, 5474, 4656, 
30181, 1151, 1164, 2640, 4705, 4390, 26745, 32924, 938, 3461, 28170, 
24635, 1251, 7154, 30173, 16056, 2589, 23874, 879, 1174, 1162, 667, 
10685, 5459, 3276, 4348, 14357, 4789, 15441, 2958, 2368, 31556, 3924, 
12322, 26461, 6144, 8016, 2204, 8096, 24396, 910, 4459, 30263, 24567, 
31233, 30920, 4860, 12478, 10419, 31554, 4668, 9166, 23678, 33749, 
36829, 8637, 2975, 11658, 30312, 5274, 1258, 785, 2974, 25700, 7043, 
25721, 2726, 1022, 25198, 3721, 10500, 28906, 35475, 8717, 4677, 34191, 
920, 1693, 1915, 15907, 2173, 3715, 9164, 6000, 25393, 117, 7022, 2740, 
6033, 15978, 24669, 628, 30689, 24919, 26402, 13837, 787, 27375, 23401, 
26942, 15891, 24614, 23582, 30951, 15685, 2350, 891, 4712, 31245, 6006, 
768, 9776, 123, 4260, 26738, 10385, 2579, 11735, 11734, 1550, 759, 
17765, 6348, 15091, 33272, 3265, 16595, 125, 28407, 3755, 2102, 14882, 
5647, 2243, 32875, 3245, 30277, 4057, 26759, 22855, 1491, 2053, 4036, 
30649, 26754, 452, 699, 1069, 36725, 2681, 3633, 769, 2734, 1548, 34014, 
35092, 625, 2595, 428, 31847, 1537, 1177, 12247, 2240, 26175, 4371, 
11697, 4676, 6010, 4505, 6008, 15895, 33243, 4357, 29630, 26477, 762, 
23915, 33383, 3127, 8477, 29588, 28889, 7114, 29832, 2552, 6407, 30887, 
30285, 31797, 3754, 4029, 28391, 10636, 24113, 5420, 2928, 7371, 11787, 
4280, 6226, 2260, 23403, 23979, 25684, 30701, 27460, 26675, 4020, 10390, 
25217, 10757, 2735, 29752, 1812, 30872, 5979, 23907, 1020, 15130, 6350, 
7458, 16818, 25920, 24690, 29549, 6003, 5857, 2968, 4144, 2691, 3110, 
2163, 28778, 1032, 31783, 24079, 2356, 5364, 1034, 11912, 31328, 35482, 
17406, 24059, 2596, 755, 27254, 2736, 1010, 218, 26401, 29589, 4861, 
27288, 23669, 33739, 5300, 889, 8550, 23339, 2906, 1772, 7441, 15111, 
834, 5984, 27928, 6521, 6789, 1813, 854, 10661, 26327, 3991, 23636, 
4657, 29395, 11198, 4154, 1236, 16400, 24681, 3120, 10384, 4690, 28751, 
28826, 2580, 2358, 31396, 5652, 736, 764, 34199, 1520, 14123, 7668, 
6511, 2557, 1545, 32257, 7139, 9697, 6510, 2556, 8522, 23638, 830, 690, 
619, 2959, 1042, 1216, 26408, 12202, 27048, 29830, 2954, 7041, 2203, 
23394, 29487, 29912, 11724, 3762, 25225, 760, 2969, 95, 25709, 15979, 
898, 7036, 23047, 1913, 9318, 23537, 11778, 429, 27552, 2957, 3121, 
3993, 34925, 23817, 28466, 4951, 6505, 7435, 28217, 29519, 2973, 23791, 
33838, 25880, 34137, 3733, 25994, 23810, 877, 24182, 33565, 2742, 7603, 
5262, 33745, 1224, 597, 7405, 3743, 1527, 2205, 6351, 15961, 7431, 8597, 
12802, 11290, 3242, 28745, 1802, 744, 26749, 1023, 2354, 23840, 4008, 
26948, 24084, 2715, 2582, 27909, 8885, 31147, 33772, 1014, 25351, 6371, 
6219, 3104, 28492, 669, 33382, 8959, 25615, 24747, 25685, 23667, 24642, 
2692, 7042, 8675, 5461, 23595, 1184, 26748, 12379, 24340, 15892, 205, 
449, 24077, 6506, 8901, 2544, 32892, 26724, 4385, 27517, 34134, 604, 
7040, 4848, 27748, 1039, 28933, 24846, 1019, 5441, 32164, 26455, 16036, 
31150, 688, 29960, 1152, 6519, 25276, 28932, 23637, 5304, 4143, 20026, 
5239, 7433, 8766, 12475, 7113, 5465, 31843, 30288, 11442, 8600, 4323, 
28733, 15545, 11276, 34146, 6237, 32260, 4128, 3424, 4062, 28491, 31754, 
23834, 2893, 3247, 4006, 4362, 28276, 29444, 949, 2098, 3807, 24677, 
8996, 702, 26728, 27702, 819, 26757, 5977, 2951, 4038, 1029, 4671, 9691, 
3730, 1726, 6223, 10405, 2949, 25173, 533, 2964, 4863, 24883, 26157, 
33528, 6020, 751, 7310, 16545, 5806, 7404, 10043, 6771, 23934, 5335, 
3748, 26780 ); 

INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(29811, 0, 0, 0, 1, 0, ''),
(23870, 0, 0, 0, 1, 0, ''),
(28149, 0, 0, 0, 1, 333, ''),
(11736, 0, 0, 0, 4097, 0, ''),
(930, 0, 0, 0, 4097, 0, ''),
(1087, 0, 0, 0, 4097, 0, ''),
(2505, 0, 0, 0, 4097, 0, ''),
(26621, 0, 0, 0, 1, 418, ''),
(1181, 0, 0, 0, 4097, 0, ''),
(2971, 0, 0, 0, 4097, 0, ''),
(27362, 0, 0, 0, 1, 0, '48460'),
(1195, 0, 0, 0, 4097, 0, ''),
(4379, 0, 0, 0, 4097, 0, ''),
(589, 0, 0, 0, 4097, 0, ''),
(4850, 0, 0, 33554432, 4097, 0, ''),
(7372, 0, 0, 0, 4097, 0, ''),
(27686, 0, 0, 0, 1, 0, ''),
(1013, 0, 0, 0, 4097, 0, ''),
(12076, 0, 0, 0, 4097, 0, ''),
(2761, 0, 0, 0, 4097, 0, ''),
(4368, 0, 0, 0, 4097, 0, ''),
(26124, 0, 0, 0, 4097, 0, ''),
(3101, 0, 0, 0, 4097, 0, ''),
(32546, 0, 0, 0, 1, 0, ''),
(26758, 0, 0, 0, 4097, 0, ''),
(11747, 0, 0, 0, 4097, 0, ''),
(4645, 0, 0, 0, 4097, 0, ''),
(8519, 0, 0, 0, 4097, 0, ''),
(33824, 0, 0, 0, 1, 0, ''),
(5998, 0, 0, 0, 4097, 0, ''),
(5287, 0, 0, 0, 4097, 0, ''),
(1973, 0, 0, 0, 4097, 0, ''),
(3739, 0, 0, 0, 4097, 0, ''),
(29240, 0, 0, 0, 1, 0, '52097'),
(31833, 0, 0, 0, 258, 0, ''),
(4352, 0, 0, 0, 4097, 0, ''),
(31738, 0, 0, 0, 1, 0, ''),
(11745, 0, 0, 0, 4097, 0, ''),
(14758, 0, 0, 0, 4097, 0, ''),
(30058, 0, 0, 0, 257, 0, ''),
(7068, 0, 0, 0, 4097, 0, ''),
(1161, 0, 0, 0, 4097, 0, ''),
(26075, 0, 0, 0, 4097, 0, ''),
(4632, 0, 0, 0, 4097, 0, ''),
(3227, 0, 0, 0, 4097, 0, ''),
(6011, 0, 0, 0, 4097, 0, ''),
(1869, 0, 0, 0, 4097, 0, ''),
(9157, 0, 0, 0, 4097, 0, ''),
(11257, 0, 0, 0, 4097, 0, ''),
(1150, 0, 0, 0, 4097, 0, ''),
(1041, 0, 0, 0, 4097, 0, ''),
(1025, 0, 0, 0, 4097, 0, ''),
(1052, 0, 0, 0, 4097, 0, ''),
(8890, 0, 0, 0, 4097, 0, ''),
(17376, 0, 0, 0, 4097, 0, ''),
(5430, 0, 0, 0, 4097, 0, ''),
(8956, 0, 0, 0, 4097, 0, ''),
(8881, 0, 0, 0, 4097, 0, ''),
(3771, 0, 0, 0, 4097, 0, ''),
(27230, 0, 0, 0, 1, 0, ''),
(1097, 0, 0, 0, 4097, 0, ''),
(25355, 0, 0, 0, 1, 0, ''),
(26258, 0, 0, 0, 4097, 0, ''),
(27633, 0, 0, 0, 1, 0, ''),
(1185, 0, 0, 0, 4097, 0, ''),
(1781, 0, 0, 0, 4097, 0, ''),
(26639, 0, 0, 8, 1, 0, ''),
(25452, 0, 0, 0, 1, 0, ''),
(24025, 0, 0, 0, 4097, 0, ''),
(30250, 0, 0, 0, 1, 0, ''),
(30413, 0, 0, 0, 1, 0, '56700'),
(29450, 0, 0, 0, 1, 0, ''),
(11882, 0, 0, 0, 4097, 193, '13236'),
(33822, 0, 0, 0, 1, 0, ''),
(17531, 0, 0, 0, 4097, 0, ''),
(25717, 0, 0, 0, 1, 0, ''),
(4684, 0, 0, 0, 4097, 0, ''),
(27673, 0, 0, 65536, 257, 0, ''),
(4024, 0, 0, 0, 4097, 0, ''),
(29517, 0, 0, 0, 1, 0, ''),
(33468, 0, 0, 1, 1, 0, ''),
(2929, 0, 0, 0, 4097, 0, ''),
(570, 0, 0, 0, 4097, 0, ''),
(30286, 0, 0, 0, 1, 0, ''),
(1940, 0, 0, 0, 4097, 0, ''),
(15442, 0, 0, 0, 4097, 0, ''),
(4025, 0, 0, 0, 4097, 0, ''),
(7136, 0, 0, 0, 4097, 0, '8279'),
(4370, 0, 0, 0, 4097, 0, ''),
(25396, 0, 0, 0, 1, 0, ''),
(1797, 0, 0, 0, 4097, 0, ''),
(5680, 0, 0, 0, 4097, 0, ''),
(32479, 0, 0, 0, 1, 0, ''),
(3863, 0, 0, 0, 4097, 0, ''),
(30947, 0, 0, 0, 1, 0, ''),
(5276, 0, 0, 0, 4097, 0, ''),
(8958, 0, 0, 0, 4097, 0, ''),
(5993, 0, 0, 0, 4097, 0, ''),
(3732, 0, 0, 0, 4097, 0, ''),
(32542, 0, 0, 0, 1, 0, ''),
(26481, 0, 0, 0, 1, 0, ''),
(742, 0, 0, 0, 4097, 0, ''),
(5427, 0, 0, 0, 4097, 0, ''),
(5451, 0, 0, 0, 4097, 0, ''),
(2967, 0, 0, 0, 4097, 0, ''),
(2561, 0, 0, 0, 4097, 0, ''),
(7455, 0, 0, 0, 4097, 0, ''),
(11661, 0, 0, 0, 4097, 0, ''),
(623, 0, 0, 0, 4097, 0, ''),
(531, 0, 0, 0, 4097, 0, ''),
(4345, 0, 0, 0, 4097, 0, ''),
(9695, 0, 0, 0, 4097, 0, ''),
(34144, 0, 0, 0, 1, 0, ''),
(24686, 0, 0, 0, 0, 69, ''),
(7397, 0, 0, 0, 4097, 0, ''),
(7092, 0, 0, 0, 4097, 0, ''),
(2374, 0, 0, 0, 4097, 0, ''),
(30897, 0, 0, 0, 1, 0, ''),
(7048, 0, 0, 0, 4097, 0, ''),
(9547, 0, 0, 0, 4097, 0, ''),
(9779, 0, 0, 0, 4097, 0, ''),
(31262, 0, 0, 0, 1, 0, ''),
(27164, 0, 0, 0, 257, 0, ''),
(28833, 0, 0, 0, 1, 0, ''),
(22848, 0, 0, 0, 4097, 0, ''),
(6509, 0, 0, 0, 4097, 0, ''),
(28417, 0, 0, 0, 1, 0, ''),
(7670, 0, 0, 0, 4097, 0, ''),
(27688, 0, 0, 0, 1, 0, ''),
(23885, 0, 0, 0, 1, 0, ''),
(2165, 0, 0, 0, 4097, 0, ''),
(10498, 0, 0, 0, 4097, 0, ''),
(4634, 0, 0, 0, 4097, 0, ''),
(34267, 0, 0, 0, 1, 0, ''),
(3864, 0, 0, 0, 4097, 0, ''),
(11913, 0, 0, 0, 4097, 0, ''),
(4401, 0, 0, 0, 4097, 0, ''),
(3641, 0, 0, 0, 4097, 0, ''),
(3944, 0, 0, 0, 4097, 0, ''),
(863, 0, 0, 0, 4097, 0, ''),
(4714, 0, 0, 0, 4097, 0, ''),
(515, 0, 0, 0, 4097, 0, ''),
(2966, 0, 0, 0, 4097, 0, ''),
(5462, 0, 0, 0, 4097, 0, ''),
(18429, 0, 0, 0, 4097, 0, ''),
(588, 0, 0, 0, 4097, 0, ''),
(26520, 0, 0, 0, 4097, 0, ''),
(7524, 0, 0, 0, 4097, 0, ''),
(98, 0, 0, 0, 4097, 0, ''),
(1941, 0, 0, 0, 4097, 0, ''),
(1908, 0, 0, 0, 4097, 0, ''),
(32925, 0, 0, 0, 1, 0, ''),
(32250, 0, 0, 0, 1, 0, ''),
(833, 0, 0, 0, 4097, 0, ''),
(23867, 0, 0, 0, 1, 0, ''),
(3804, 0, 0, 0, 4097, 0, ''),
(27452, 0, 0, 0, 1, 0, ''),
(12859, 0, 0, 8, 4097, 0, ''),
(14356, 0, 0, 0, 4097, 0, ''),
(16530, 0, 0, 0, 1, 0, ''),
(2646, 0, 0, 0, 4097, 0, ''),
(32149, 0, 0, 0, 1, 0, ''),
(4658, 0, 0, 0, 4097, 0, ''),
(25887, 0, 0, 0, 4097, 0, ''),
(1528, 0, 0, 0, 4097, 0, ''),
(26170, 0, 0, 0, 257, 0, ''),
(4692, 0, 0, 0, 4097, 0, ''),
(33525, 0, 0, 0, 1, 0, ''),
(740, 0, 0, 0, 4097, 0, ''),
(3386, 0, 0, 0, 4097, 0, ''),
(939, 0, 0, 0, 4097, 0, ''),
(3239, 0, 0, 0, 4097, 0, ''),
(28487, 0, 0, 50331648, 257, 0, ''),
(6653, 0, 0, 0, 4097, 0, ''),
(21921, 0, 0, 0, 1, 0, ''),
(22886, 0, 0, 1, 4097, 0, ''),
(29207, 0, 0, 0, 257, 0, ''),
(3108, 0, 0, 0, 4097, 0, ''),
(7320, 0, 0, 0, 4097, 0, ''),
(4093, 0, 0, 0, 4097, 0, ''),
(6507, 0, 0, 0, 4097, 0, ''),
(2376, 0, 0, 0, 4097, 0, ''),
(4729, 0, 0, 0, 4097, 0, ''),
(14883, 0, 0, 0, 4097, 10, ''),
(23677, 0, 0, 0, 1, 0, ''),
(33561, 0, 29043, 0, 1, 0, '62596 62852 64723'),
(4250, 0, 0, 0, 4097, 0, ''),
(26663, 0, 0, 0, 2, 0, ''),
(4032, 0, 0, 0, 4097, 0, ''),
(5424, 0, 0, 0, 4097, 0, ''),
(11740, 0, 0, 0, 4097, 0, ''),
(33575, 0, 0, 0, 1, 0, ''),
(1870, 0, 0, 0, 4097, 0, ''),
(1111, 0, 0, 0, 4097, 0, ''),
(26638, 0, 26751, 0, 1, 0, ''),
(3810, 0, 0, 0, 4097, 0, ''),
(1554, 0, 0, 0, 4097, 0, ''),
(4681, 0, 0, 0, 4097, 0, ''),
(34198, 0, 0, 0, 1, 0, ''),
(29966, 0, 17158, 0, 257, 0, ''),
(4376, 0, 0, 0, 4097, 0, ''),
(1508, 0, 0, 0, 4097, 0, ''),
(1040, 0, 0, 33554432, 4097, 0, '30831'),
(8551, 0, 0, 0, 4097, 0, ''),
(4284, 0, 0, 0, 4097, 0, ''),
(6116, 0, 0, 0, 4097, 0, ''),
(9700, 0, 0, 0, 4097, 0, ''),
(8716, 0, 0, 0, 4097, 0, ''),
(7864, 0, 0, 0, 4097, 0, ''),
(1543, 0, 0, 0, 4097, 0, ''),
(7462, 0, 0, 0, 4097, 0, ''),
(2970, 0, 0, 0, 4097, 0, ''),
(1051, 0, 0, 0, 4097, 0, ''),
(26669, 0, 0, 0, 1, 0, ''),
(26328, 0, 0, 0, 4097, 0, ''),
(6211, 0, 0, 0, 4097, 0, ''),
(2370, 0, 0, 0, 4097, 0, ''),
(4403, 0, 0, 0, 4097, 0, ''),
(3228, 0, 0, 0, 4097, 0, ''),
(29208, 0, 0, 0, 257, 0, ''),
(29186, 0, 0, 0, 1, 0, '53624'),
(7671, 0, 0, 0, 4097, 0, ''),
(5991, 0, 0, 0, 4097, 0, ''),
(1190, 0, 0, 0, 4097, 0, ''),
(8534, 0, 0, 0, 4097, 0, ''),
(29027, 0, 0, 0, 1, 0, ''),
(783, 0, 0, 0, 4097, 0, ''),
(1018, 0, 0, 0, 4097, 0, ''),
(2727, 0, 0, 0, 4097, 0, ''),
(26667, 0, 0, 1, 1, 0, ''),
(5361, 0, 0, 0, 4097, 0, ''),
(7444, 0, 0, 0, 4097, 0, ''),
(11725, 0, 0, 0, 4097, 0, ''),
(22876, 0, 0, 0, 4097, 0, ''),
(10491, 0, 0, 0, 4097, 0, ''),
(1957, 0, 0, 0, 4097, 0, ''),
(4344, 0, 0, 0, 4097, 0, ''),
(16020, 0, 0, 0, 1, 0, ''),
(14825, 0, 0, 0, 4097, 10, ''),
(7138, 0, 0, 0, 4097, 0, ''),
(30071, 0, 0, 0, 1, 0, ''),
(30599, 0, 0, 0, 1, 0, ''),
(12298, 0, 0, 0, 4097, 0, '19502'),
(2375, 0, 0, 0, 4097, 0, ''),
(4662, 0, 0, 0, 4097, 0, ''),
(31126, 0, 0, 0, 1, 0, ''),
(16025, 0, 0, 0, 1, 0, ''),
(1767, 0, 0, 0, 4097, 0, ''),
(6513, 0, 0, 0, 4097, 0, ''),
(7726, 0, 0, 0, 234885121, 0, '19030'),
(5431, 0, 0, 0, 4097, 0, ''),
(686, 0, 0, 0, 4097, 0, ''),
(8530, 0, 0, 0, 4097, 0, ''),
(9878, 0, 0, 0, 4097, 0, ''),
(2732, 0, 0, 0, 4097, 0, ''),
(26918, 0, 0, 0, 1, 0, '48019'),
(27247, 0, 0, 0, 1, 0, ''),
(6224, 0, 0, 0, 4097, 0, ''),
(34069, 0, 0, 0, 1, 0, ''),
(7997, 0, 0, 0, 4097, 0, ''),
(28584, 0, 0, 0, 1, 0, ''),
(26418, 0, 0, 0, 1, 0, ''),
(440, 0, 0, 0, 4097, 0, ''),
(20054, 0, 0, 0, 4097, 0, '34712'),
(23131, 0, 0, 0, 4097, 0, ''),
(1114, 0, 0, 0, 4097, 0, ''),
(32534, 0, 0, 50331648, 1, 0, ''),
(7125, 0, 0, 0, 4097, 0, ''),
(3199, 0, 0, 0, 4097, 0, ''),
(1868, 0, 0, 0, 4097, 0, ''),
(3274, 0, 0, 0, 4097, 0, ''),
(31644, 0, 0, 0, 1, 0, ''),
(33564, 0, 28612, 0, 1, 0, '63426 62852 64723'),
(11289, 0, 0, 0, 4097, 0, '17327'),
(30278, 0, 0, 0, 1, 0, ''),
(12380, 0, 0, 0, 4097, 0, ''),
(4852, 0, 0, 0, 4097, 0, ''),
(4158, 0, 0, 0, 4097, 0, ''),
(27635, 0, 0, 0, 1, 0, ''),
(4653, 0, 0, 0, 4097, 0, ''),
(441, 0, 0, 0, 4097, 0, ''),
(3824, 0, 0, 0, 4097, 0, ''),
(29326, 0, 0, 0, 1, 0, ''),
(3466, 0, 0, 0, 4097, 0, ''),
(27290, 0, 0, 0, 1, 0, ''),
(772, 0, 0, 0, 4097, 0, ''),
(1785, 0, 0, 0, 4097, 0, ''),
(27286, 0, 0, 0, 1, 0, ''),
(11739, 0, 0, 0, 4097, 0, ''),
(10120, 0, 0, 0, 4097, 0, '10255'),
(26747, 0, 0, 0, 4097, 0, ''),
(29559, 0, 0, 0, 1, 0, ''),
(33306, 0, 14335, 0, 1, 0, '63432 62852 64723'),
(4802, 0, 0, 0, 4097, 0, ''),
(1085, 0, 0, 0, 4097, 0, ''),
(34151, 0, 0, 0, 1, 0, ''),
(977, 0, 0, 0, 4097, 0, ''),
(4475, 0, 0, 0, 4097, 0, ''),
(27163, 0, 0, 0, 257, 0, ''),
(517, 0, 0, 0, 4097, 0, ''),
(33140, 0, 0, 0, 1, 0, ''),
(8718, 0, 0, 0, 4097, 0, ''),
(25914, 0, 0, 0, 4097, 0, ''),
(4316, 0, 0, 0, 4097, 0, ''),
(9163, 0, 0, 0, 4097, 0, ''),
(11727, 0, 0, 0, 4097, 0, ''),
(5286, 0, 0, 0, 4097, 0, ''),
(31555, 0, 0, 0, 1, 233, ''),
(1144, 0, 0, 0, 4097, 0, ''),
(6504, 0, 0, 0, 4097, 0, ''),
(28011, 0, 0, 0, 1, 0, ''),
(4857, 0, 0, 0, 4097, 0, '10255'),
(1529, 0, 0, 0, 4097, 0, ''),
(26662, 0, 0, 0, 1, 0, ''),
(23930, 0, 0, 0, 1, 0, ''),
(30335, 0, 0, 0, 1, 0, ''),
(750, 0, 0, 0, 4097, 0, ''),
(6188, 0, 0, 0, 4097, 0, ''),
(15692, 0, 0, 0, 4097, 0, ''),
(24440, 0, 0, 0, 1, 0, ''),
(4682, 0, 0, 0, 4097, 0, ''),
(1773, 0, 0, 0, 4097, 0, ''),
(33476, 0, 0, 1, 1, 0, ''),
(22991, 0, 0, 0, 1, 0, ''),
(25383, 0, 0, 0, 1, 0, ''),
(4040, 0, 0, 0, 4097, 0, ''),
(32349, 0, 0, 0, 1, 0, ''),
(9778, 0, 0, 0, 4097, 0, ''),
(25718, 0, 0, 0, 1, 0, ''),
(11152, 0, 0, 0, 4097, 0, ''),
(13836, 0, 0, 0, 4097, 0, ''),
(28500, 1285770, 0, 0, 1, 0, ''),
(2628, 0, 0, 0, 4097, 0, ''),
(3098, 0, 0, 0, 4097, 0, ''),
(765, 0, 0, 0, 4097, 0, ''),
(23554, 0, 0, 0, 4097, 0, ''),
(7434, 0, 0, 0, 4097, 0, ''),
(32175, 0, 0, 8, 1, 0, ''),
(10471, 0, 0, 0, 4097, 0, '16592'),
(7460, 0, 0, 0, 4097, 0, ''),
(1544, 0, 0, 0, 4097, 0, ''),
(922, 0, 0, 0, 4097, 0, ''),
(6523, 0, 0, 0, 4097, 0, ''),
(24142, 0, 0, 0, 257, 0, ''),
(5268, 0, 0, 0, 4097, 0, ''),
(2618, 0, 0, 0, 4097, 0, ''),
(5897, 0, 0, 0, 4097, 0, ''),
(14622, 0, 0, 0, 4097, 0, ''),
(28024, 0, 0, 0, 1, 0, ''),
(28903, 0, 0, 0, 1, 0, ''),
(29697, 0, 0, 0, 1, 0, ''),
(26492, 0, 0, 0, 1, 0, ''),
(9397, 0, 0, 0, 4097, 0, '12550'),
(978, 0, 0, 0, 4097, 0, ''),
(2071, 0, 0, 0, 4097, 0, ''),
(4462, 0, 0, 0, 4097, 0, ''),
(10418, 0, 0, 0, 4097, 0, ''),
(3128, 0, 0, 0, 4097, 0, ''),
(24633, 0, 0, 0, 1, 0, ''),
(15908, 0, 0, 0, 4097, 0, ''),
(29567, 0, 0, 8, 1, 0, '54612'),
(4248, 0, 0, 0, 4097, 0, ''),
(25391, 0, 0, 0, 1, 0, ''),
(698, 0, 0, 0, 4097, 0, ''),
(27691, 0, 0, 50397184, 1, 0, ''),
(1675, 0, 0, 0, 4097, 0, ''),
(4404, 0, 0, 0, 4097, 0, ''),
(4633, 0, 0, 0, 4097, 0, ''),
(33527, 0, 0, 0, 1, 0, ''),
(11687, 0, 0, 0, 4097, 0, ''),
(1895, 0, 0, 0, 4097, 0, ''),
(23670, 0, 0, 0, 1, 0, ''),
(3115, 0, 0, 0, 4097, 0, ''),
(7077, 0, 0, 0, 4097, 0, '10255'),
(10412, 0, 0, 0, 4097, 0, ''),
(6554, 0, 0, 0, 4097, 0, ''),
(5337, 0, 0, 0, 4097, 0, ''),
(687, 0, 0, 0, 4097, 0, ''),
(3282, 0, 0, 0, 4097, 0, ''),
(22520, 0, 0, 0, 1, 0, ''),
(1045, 0, 0, 0, 4097, 0, ''),
(8555, 0, 0, 0, 4097, 0, ''),
(9694, 0, 0, 0, 4097, 0, ''),
(25390, 0, 0, 0, 1, 0, ''),
(6347, 0, 0, 0, 4097, 0, ''),
(27745, 0, 0, 0, 1, 0, ''),
(28242, 0, 0, 0, 1, 0, ''),
(28001, 0, 0, 0, 1, 0, ''),
(25728, 0, 0, 0, 1, 0, ''),
(14718, 0, 0, 0, 4097, 0, ''),
(27544, 0, 0, 65536, 1, 0, '46998'),
(8904, 0, 0, 0, 4097, 0, ''),
(29754, 0, 0, 50331648, 1, 0, ''),
(7034, 0, 0, 0, 4097, 0, ''),
(2654, 0, 0, 0, 4097, 0, ''),
(1958, 0, 0, 0, 4097, 0, ''),
(1826, 0, 0, 0, 4097, 0, ''),
(4697, 0, 0, 0, 4097, 0, ''),
(4004, 0, 0, 0, 4097, 0, ''),
(27516, 0, 0, 65536, 257, 0, ''),
(27701, 0, 0, 0, 1, 173, ''),
(670, 0, 0, 0, 4097, 0, ''),
(33809, 0, 0, 0, 1, 0, ''),
(4389, 0, 0, 0, 4097, 0, ''),
(28583, 0, 0, 0, 1, 0, '52530'),
(1553, 0, 0, 0, 4097, 0, ''),
(3765, 0, 0, 0, 4097, 0, ''),
(32874, 0, 0, 0, 1, 0, ''),
(1934, 0, 0, 0, 4097, 0, ''),
(4117, 0, 0, 0, 4097, 0, ''),
(5617, 0, 0, 0, 4097, 0, ''),
(2829, 0, 0, 0, 4097, 0, ''),
(3130, 0, 0, 0, 4097, 0, ''),
(6352, 0, 0, 0, 4097, 0, ''),
(10391, 0, 0, 0, 4097, 0, ''),
(3725, 0, 0, 0, 4097, 0, ''),
(29834, 0, 0, 0, 1, 0, '54913'),
(30186, 0, 0, 1, 1, 0, ''),
(16194, 0, 0, 0, 1, 0, ''),
(31075, 0, 0, 0, 1, 0, ''),
(27513, 0, 0, 0, 1, 0, ''),
(547, 0, 0, 0, 4097, 0, ''),
(2649, 0, 0, 0, 4097, 0, ''),
(7980, 0, 0, 0, 4097, 0, '18950'),
(15975, 0, 0, 0, 1, 0, ''),
(31411, 0, 0, 0, 1, 0, ''),
(4018, 0, 0, 0, 4097, 0, ''),
(26705, 0, 0, 0, 1, 0, ''),
(4346, 0, 0, 0, 4097, 0, ''),
(3809, 0, 0, 0, 4097, 0, ''),
(11577, 0, 0, 0, 4097, 0, ''),
(25719, 0, 0, 0, 1, 0, ''),
(29030, 0, 0, 65536, 1, 0, ''),
(3236, 0, 0, 0, 4097, 0, ''),
(3384, 0, 0, 0, 4097, 0, ''),
(28351, 0, 0, 0, 1, 0, ''),
(1008, 0, 0, 0, 4097, 0, ''),
(31780, 0, 0, 0, 1, 0, ''),
(30290, 0, 0, 0, 257, 0, ''),
(4699, 0, 0, 0, 4097, 0, ''),
(8883, 0, 0, 0, 4097, 0, ''),
(31041, 0, 0, 0, 1, 0, ''),
(1806, 0, 0, 0, 4097, 0, ''),
(23969, 0, 0, 0, 4097, 0, ''),
(33378, 0, 0, 0, 1, 0, ''),
(27752, 0, 0, 0, 1, 0, ''),
(3566, 0, 0, 0, 4097, 0, ''),
(4849, 0, 0, 0, 4097, 0, ''),
(5258, 0, 0, 0, 4097, 0, ''),
(6143, 0, 0, 0, 4097, 0, ''),
(22853, 0, 0, 0, 4097, 0, '39839'),
(1835, 0, 0, 0, 4097, 0, ''),
(1202, 0, 0, 0, 4097, 0, ''),
(4872, 0, 0, 0, 4097, 0, ''),
(3249, 0, 0, 0, 4097, 0, ''),
(3297, 0, 0, 0, 4097, 0, ''),
(28769, 0, 0, 0, 1, 0, ''),
(12800, 0, 0, 0, 4097, 0, ''),
(26456, 0, 0, 0, 257, 0, ''),
(11043, 0, 0, 0, 4097, 0, ''),
(10477, 0, 0, 0, 4097, 0, ''),
(1142, 0, 0, 0, 4097, 0, ''),
(1794, 0, 0, 0, 4097, 0, ''),
(29682, 0, 0, 0, 1, 0, ''),
(1158, 0, 0, 0, 4097, 0, ''),
(28010, 0, 0, 0, 1, 0, ''),
(433, 0, 0, 0, 4097, 0, ''),
(22889, 0, 0, 0, 4097, 0, ''),
(2962, 0, 0, 0, 4097, 0, ''),
(25675, 0, 0, 0, 1, 0, ''),
(29479, 0, 0, 0, 1, 0, ''),
(2440, 0, 0, 0, 4097, 0, ''),
(681, 0, 0, 0, 4097, 0, ''),
(32770, 0, 0, 0, 1, 0, ''),
(6503, 0, 0, 0, 4097, 0, ''),
(27402, 0, 0, 0, 1, 0, ''),
(1536, 0, 0, 0, 4097, 0, ''),
(5334, 0, 0, 0, 4097, 0, ''),
(32236, 0, 0, 0, 1, 0, ''),
(30576, 0, 0, 0, 1, 0, ''),
(2360, 0, 0, 0, 4097, 0, ''),
(4659, 0, 0, 0, 4097, 0, ''),
(11738, 0, 0, 0, 4097, 0, ''),
(24613, 0, 0, 0, 1, 0, ''),
(4166, 0, 0, 0, 4097, 0, ''),
(3811, 0, 0, 0, 4097, 0, ''),
(30894, 0, 0, 0, 1, 0, ''),
(33431, 0, 0, 0, 1, 0, ''),
(8535, 0, 0, 0, 4097, 0, ''),
(28579, 0, 0, 0, 0, 0, '61367'),
(24872, 0, 0, 0, 1, 0, ''),
(28655, 0, 0, 0, 1, 0, ''),
(10721, 0, 0, 1, 4097, 0, ''),
(9862, 0, 0, 0, 4097, 0, ''),
(579, 0, 0, 33554432, 4097, 0, '30831'),
(4711, 0, 0, 0, 4097, 0, ''),
(26488, 0, 0, 0, 1, 0, ''),
(26729, 0, 0, 0, 1, 0, ''),
(4460, 0, 0, 0, 4097, 0, '12544'),
(28605, 0, 0, 0, 1, 0, ''),
(2406, 0, 0, 0, 4097, 0, ''),
(33559, 0, 14333, 0, 1, 0, '63405 62852 64723'),
(2559, 0, 0, 0, 4097, 0, ''),
(23591, 0, 0, 0, 4097, 0, ''),
(1015, 0, 0, 0, 4097, 0, ''),
(26753, 0, 0, 0, 4097, 0, ''),
(27603, 0, 0, 65536, 1, 0, ''),
(4953, 0, 0, 0, 4097, 0, ''),
(30066, 0, 0, 0, 1, 0, ''),
(2337, 0, 0, 0, 4097, 0, ''),
(548, 0, 0, 0, 4097, 0, ''),
(27971, 0, 0, 0, 1, 0, ''),
(1557, 0, 0, 0, 4097, 0, ''),
(15162, 0, 0, 0, 4097, 69, ''),
(25829, 0, 0, 0, 1, 0, ''),
(26012, 0, 0, 0, 4097, 0, ''),
(23421, 0, 0, 0, 4097, 0, ''),
(23653, 0, 0, 0, 1, 27, ''),
(3206, 0, 0, 0, 4097, 0, ''),
(10659, 0, 0, 0, 4097, 0, ''),
(29189, 0, 0, 0, 1, 0, ''),
(26458, 0, 0, 0, 1, 0, ''),
(1400, 0, 0, 0, 4097, 0, ''),
(3784, 0, 0, 0, 4097, 0, ''),
(4412, 0, 0, 0, 4097, 0, ''),
(23919, 0, 0, 0, 1, 0, ''),
(1824, 0, 0, 0, 4097, 0, ''),
(1504, 0, 0, 0, 4097, 0, ''),
(32298, 0, 0, 50331648, 1, 0, ''),
(1815, 0, 0, 0, 4097, 0, ''),
(32280, 0, 0, 0, 1, 0, ''),
(29504, 0, 0, 0, 1, 0, ''),
(29774, 0, 0, 0, 1, 0, ''),
(30419, 0, 0, 0, 1, 0, ''),
(23674, 0, 0, 0, 1, 0, ''),
(1163, 0, 0, 0, 4097, 0, ''),
(3444, 0, 0, 0, 4097, 0, ''),
(701, 0, 0, 0, 4097, 0, ''),
(691, 0, 0, 0, 4097, 0, ''),
(26711, 0, 0, 0, 1, 0, ''),
(16529, 0, 0, 0, 1, 0, ''),
(25431, 0, 0, 0, 1, 0, ''),
(1007, 0, 0, 0, 4097, 0, ''),
(1547, 0, 0, 0, 4097, 0, ''),
(26752, 0, 0, 0, 4097, 0, ''),
(2585, 0, 0, 0, 4097, 0, ''),
(3742, 0, 0, 0, 4097, 0, ''),
(3250, 0, 0, 0, 4097, 0, ''),
(33748, 0, 29259, 0, 1, 0, '63436 62852 64723'),
(25975, 0, 0, 0, 4097, 0, ''),
(7157, 0, 0, 0, 4097, 0, ''),
(3113, 0, 0, 0, 4097, 0, ''),
(5260, 0, 0, 0, 4097, 0, ''),
(26189, 0, 0, 0, 1, 0, ''),
(1009, 0, 0, 0, 4097, 0, ''),
(23086, 0, 0, 0, 4097, 0, ''),
(13322, 0, 0, 0, 4097, 0, ''),
(27639, 0, 0, 0, 1, 0, ''),
(30416, 0, 0, 0, 1, 0, ''),
(14455, 0, 0, 0, 4097, 0, ''),
(12262, 0, 0, 0, 4097, 0, ''),
(2384, 0, 0, 0, 4097, 0, ''),
(3112, 0, 0, 0, 4097, 0, ''),
(3111, 0, 0, 0, 4097, 0, ''),
(23337, 0, 0, 0, 4097, 375, ''),
(4051, 0, 0, 0, 4097, 0, ''),
(3279, 0, 0, 131072, 4097, 0, '30831'),
(22883, 0, 0, 0, 4097, 0, ''),
(7086, 0, 0, 0, 4097, 0, ''),
(26760, 0, 0, 0, 4097, 0, ''),
(24177, 0, 0, 0, 1, 0, ''),
(6349, 0, 0, 0, 4097, 0, ''),
(15128, 0, 0, 0, 4097, 0, ''),
(4363, 0, 0, 0, 4097, 0, ''),
(35587, 0, 22471, 0, 257, 0, ''),
(33526, 0, 0, 0, 1, 0, ''),
(3728, 0, 0, 0, 4097, 0, ''),
(3774, 0, 0, 0, 4097, 0, ''),
(1538, 0, 0, 0, 4097, 0, ''),
(30675, 0, 0, 0, 1, 0, ''),
(39263, 0, 0, 0, 1, 0, '29266'),
(6502, 0, 0, 0, 4097, 0, ''),
(26628, 0, 0, 0, 1, 0, ''),
(7030, 0, 0, 0, 4097, 0, ''),
(11669, 0, 0, 0, 4097, 0, ''),
(30898, 0, 0, 0, 1, 0, ''),
(27306, 0, 0, 0, 1, 0, '48387'),
(25687, 0, 0, 0, 1, 0, ''),
(4636, 0, 0, 0, 285216769, 0, '7165'),
(26743, 0, 0, 0, 4097, 0, ''),
(1021, 0, 0, 0, 4097, 0, ''),
(33820, 0, 0, 0, 1, 0, ''),
(27641, 0, 0, 0, 1, 0, ''),
(28005, 0, 0, 0, 1, 0, ''),
(26329, 0, 0, 0, 4097, 0, ''),
(2322, 0, 0, 0, 4097, 0, ''),
(11722, 0, 0, 0, 4097, 0, ''),
(5982, 0, 0, 0, 4097, 0, ''),
(4834, 0, 0, 33554432, 4097, 0, '30831'),
(16447, 0, 0, 0, 1, 0, '19818'),
(943, 0, 0, 0, 4097, 0, ''),
(26113, 0, 0, 0, 4097, 0, ''),
(27957, 0, 0, 65536, 1, 0, ''),
(5646, 0, 0, 0, 4097, 0, ''),
(5978, 0, 0, 0, 4097, 0, ''),
(2231, 0, 0, 0, 4097, 0, ''),
(2351, 0, 0, 0, 4097, 0, ''),
(34184, 0, 0, 0, 1, 0, ''),
(27827, 0, 0, 0, 1, 0, ''),
(4053, 0, 0, 0, 4097, 0, ''),
(29501, 0, 0, 50331648, 1, 0, ''),
(11737, 0, 0, 0, 4097, 0, ''),
(2555, 0, 0, 0, 4097, 0, ''),
(28519, 0, 0, 0, 1, 0, ''),
(16022, 0, 0, 0, 1, 0, ''),
(1788, 0, 0, 0, 4097, 0, ''),
(27251, 0, 0, 0, 257, 379, ''),
(3808, 0, 0, 0, 4097, 0, ''),
(4366, 0, 0, 0, 4097, 0, ''),
(25429, 0, 0, 0, 1, 0, ''),
(2250, 0, 0, 0, 4097, 0, ''),
(10408, 0, 0, 0, 4097, 0, ''),
(8442, 0, 0, 0, 4097, 0, ''),
(29562, 0, 0, 0, 1, 0, ''),
(2725, 0, 0, 0, 4097, 0, ''),
(4019, 0, 0, 0, 4097, 0, ''),
(12474, 0, 0, 0, 4097, 0, ''),
(8763, 0, 0, 0, 4097, 0, ''),
(30195, 0, 0, 1, 1, 0, ''),
(9698, 0, 0, 0, 4097, 0, ''),
(2267, 0, 0, 0, 4097, 0, ''),
(31779, 0, 0, 0, 1, 0, ''),
(7436, 0, 0, 0, 4097, 0, ''),
(24439, 0, 0, 0, 1, 0, ''),
(24901, 0, 0, 0, 1, 0, ''),
(858, 0, 0, 0, 4097, 0, ''),
(4037, 0, 0, 0, 4097, 0, ''),
(6202, 0, 0, 0, 4097, 0, ''),
(7050, 0, 0, 0, 4097, 0, ''),
(1822, 0, 0, 0, 4097, 0, ''),
(27551, 0, 0, 0, 1, 0, ''),
(5225, 0, 0, 0, 4097, 0, ''),
(1558, 0, 0, 0, 4097, 0, ''),
(23594, 0, 0, 0, 4097, 0, ''),
(504, 0, 0, 0, 4097, 0, ''),
(7290, 0, 0, 0, 4097, 0, ''),
(4031, 0, 0, 0, 4097, 0, ''),
(7369, 0, 0, 0, 4097, 0, ''),
(27640, 0, 0, 0, 1, 0, ''),
(4689, 0, 0, 0, 4097, 0, ''),
(30849, 0, 0, 0, 1, 0, '42617'),
(26480, 0, 0, 0, 1, 0, ''),
(23687, 0, 0, 0, 4097, 0, ''),
(4282, 0, 0, 0, 4097, 0, ''),
(624, 0, 0, 0, 4097, 0, ''),
(27671, 0, 0, 65536, 257, 0, ''),
(193, 0, 0, 0, 4097, 0, ''),
(6127, 0, 0, 0, 4097, 0, ''),
(30949, 0, 0, 0, 1, 233, ''),
(28717, 0, 0, 0, 1, 0, ''),
(5319, 0, 0, 0, 4097, 0, ''),
(12377, 0, 0, 0, 4097, 0, ''),
(14826, 0, 0, 0, 4097, 10, ''),
(29461, 0, 0, 0, 1, 0, ''),
(31263, 0, 0, 50331648, 1, 0, ''),
(15547, 0, 0, 0, 1, 0, ''),
(171, 0, 0, 0, 4097, 0, ''),
(5856, 0, 0, 0, 4097, 0, ''),
(25419, 0, 0, 0, 1, 0, ''),
(15801, 0, 0, 0, 4097, 0, ''),
(24808, 0, 0, 0, 1, 0, '29266'),
(25677, 0, 0, 0, 1, 0, ''),
(5272, 0, 0, 0, 4097, 0, ''),
(3821, 0, 0, 0, 4097, 0, ''),
(505, 0, 0, 0, 4097, 0, ''),
(6380, 0, 0, 0, 4097, 0, ''),
(27665, 0, 0, 65536, 257, 0, ''),
(761, 0, 0, 0, 4097, 0, ''),
(4468, 0, 0, 0, 4097, 0, ''),
(2521, 0, 0, 0, 4097, 0, ''),
(7031, 0, 0, 0, 4097, 0, ''),
(17316, 0, 0, 0, 1, 0, ''),
(3126, 0, 0, 0, 4097, 0, ''),
(26326, 0, 0, 0, 4097, 0, ''),
(29822, 0, 0, 0, 1, 0, ''),
(29392, 0, 0, 0, 1, 0, ''),
(27418, 0, 0, 0, 1, 0, ''),
(26330, 0, 0, 0, 4097, 0, ''),
(9554, 0, 0, 0, 4097, 0, ''),
(28383, 0, 0, 0, 257, 0, ''),
(7049, 0, 0, 0, 4097, 0, ''),
(32543, 0, 0, 0, 1, 0, ''),
(199, 0, 0, 0, 4097, 0, ''),
(24064, 0, 0, 0, 4097, 0, ''),
(756, 0, 0, 0, 4097, 0, ''),
(16021, 0, 0, 0, 1, 0, ''),
(25668, 0, 0, 0, 1, 0, ''),
(2069, 0, 0, 0, 4097, 0, ''),
(5645, 0, 0, 0, 4097, 0, ''),
(4641, 0, 0, 0, 4097, 0, ''),
(31140, 0, 0, 0, 1, 0, ''),
(8762, 0, 0, 0, 4097, 0, ''),
(1526, 0, 0, 0, 4097, 0, ''),
(2207, 0, 0, 0, 4097, 0, ''),
(34273, 0, 0, 0, 1, 0, ''),
(6201, 0, 0, 0, 4097, 0, ''),
(27475, 0, 0, 0, 257, 0, ''),
(28585, 0, 0, 0, 1, 0, ''),
(25623, 0, 0, 0, 1, 0, ''),
(1191, 0, 0, 0, 4097, 0, ''),
(30238, 0, 0, 0, 258, 0, ''),
(10698, 0, 0, 0, 4097, 0, ''),
(31145, 0, 0, 0, 1, 0, ''),
(1393, 0, 0, 0, 4097, 0, ''),
(28839, 0, 0, 0, 1, 0, ''),
(4118, 0, 0, 0, 4097, 0, ''),
(16492, 0, 0, 0, 1, 0, ''),
(7395, 0, 0, 0, 4097, 0, ''),
(24818, 0, 0, 0, 4097, 0, '13589'),
(11918, 0, 0, 0, 4097, 0, ''),
(7037, 0, 0, 0, 4097, 0, ''),
(28856, 0, 0, 0, 1, 333, '48356'),
(6125, 0, 0, 0, 4097, 0, ''),
(7078, 0, 0, 0, 4097, 0, ''),
(4728, 0, 0, 0, 4097, 0, ''),
(22875, 0, 0, 0, 4097, 0, ''),
(5988, 0, 0, 0, 4097, 0, ''),
(25916, 0, 0, 0, 4097, 0, ''),
(11659, 0, 0, 0, 4097, 0, ''),
(29203, 0, 0, 0, 257, 0, ''),
(4072, 0, 0, 1, 4097, 0, ''),
(1043, 0, 0, 0, 4097, 0, ''),
(745, 0, 0, 0, 4097, 0, ''),
(5840, 0, 0, 0, 4097, 0, ''),
(1157, 0, 0, 0, 4097, 0, ''),
(23971, 0, 0, 0, 4097, 0, ''),
(28523, 0, 0, 0, 1, 0, ''),
(4644, 0, 0, 0, 4097, 0, ''),
(1197, 0, 0, 0, 4097, 0, ''),
(16215, 0, 0, 0, 1, 0, ''),
(3712, 0, 0, 0, 4097, 0, ''),
(5251, 0, 0, 0, 4097, 0, ''),
(3106, 0, 0, 0, 4097, 0, ''),
(1924, 0, 0, 0, 4097, 0, ''),
(28093, 0, 0, 50331648, 1, 0, '50628'),
(4361, 0, 0, 0, 4097, 0, ''),
(5235, 0, 0, 0, 4097, 0, ''),
(4719, 0, 0, 0, 4097, 0, ''),
(27852, 0, 0, 0, 1, 0, ''),
(1108, 0, 0, 0, 4097, 0, ''),
(2208, 0, 0, 0, 4097, 0, ''),
(4142, 0, 0, 0, 4097, 0, ''),
(11873, 0, 0, 0, 4097, 0, ''),
(24673, 0, 0, 0, 1, 0, ''),
(3129, 0, 0, 0, 4097, 0, ''),
(1094, 0, 0, 0, 4097, 233, ''),
(29838, 0, 0, 0, 1, 0, '46598'),
(25464, 0, 0, 0, 1, 0, ''),
(26765, 0, 0, 0, 4097, 0, ''),
(5975, 0, 0, 0, 4097, 0, ''),
(122, 0, 0, 0, 4097, 0, ''),
(127, 0, 0, 0, 4097, 0, ''),
(2377, 0, 0, 0, 4097, 0, ''),
(5473, 0, 0, 0, 4097, 0, ''),
(3988, 0, 0, 0, 4097, 0, ''),
(28660, 0, 0, 0, 1, 0, ''),
(26435, 0, 0, 0, 1, 0, ''),
(3103, 0, 0, 0, 4097, 0, ''),
(29483, 0, 0, 0, 1, 0, ''),
(7370, 0, 0, 0, 4097, 0, ''),
(696, 0, 0, 0, 4097, 0, ''),
(27636, 0, 0, 0, 1, 0, ''),
(27449, 0, 0, 0, 1, 0, ''),
(1953, 0, 0, 0, 4097, 0, ''),
(31812, 0, 0, 0, 1, 0, ''),
(3757, 0, 0, 0, 4097, 0, ''),
(212, 0, 0, 0, 4097, 0, ''),
(5426, 0, 0, 0, 4097, 0, ''),
(1176, 0, 0, 0, 4097, 0, ''),
(2245, 0, 0, 0, 4097, 0, ''),
(1033, 0, 0, 0, 4097, 0, ''),
(20069, 0, 0, 0, 4097, 0, '34712'),
(32264, 0, 0, 0, 1, 0, ''),
(5317, 0, 0, 0, 4097, 0, ''),
(31353, 0, 0, 0, 1, 0, ''),
(26891, 0, 0, 0, 1, 0, ''),
(6005, 0, 0, 0, 4097, 0, ''),
(5951, 0, 0, 0, 4097, 0, ''),
(32469, 0, 0, 0, 1, 0, ''),
(4788, 0, 0, 0, 4097, 0, ''),
(19950, 0, 0, 0, 4097, 0, ''),
(29730, 0, 0, 0, 1, 0, ''),
(4067, 0, 0, 0, 4097, 0, ''),
(5983, 0, 0, 0, 4097, 0, ''),
(4042, 0, 0, 0, 4097, 0, ''),
(12178, 0, 0, 0, 4097, 0, ''),
(7440, 0, 0, 0, 4097, 0, '17205'),
(26309, 0, 0, 0, 4097, 0, ''),
(4016, 0, 0, 0, 4097, 0, ''),
(32320, 0, 0, 0, 1, 234, ''),
(28231, 0, 0, 0, 1, 0, ''),
(8523, 0, 0, 0, 4097, 0, ''),
(2976, 0, 0, 0, 4097, 0, ''),
(2408, 0, 0, 0, 4097, 0, ''),
(6004, 0, 0, 0, 4097, 0, ''),
(29914, 0, 0, 7, 0, 0, ''),
(34319, 0, 0, 0, 1, 0, ''),
(6220, 0, 0, 0, 4097, 0, ''),
(11671, 0, 0, 0, 4097, 0, ''),
(16506, 0, 0, 0, 1, 0, ''),
(2925, 0, 0, 0, 4097, 0, ''),
(32593, 0, 0, 0, 1, 0, ''),
(5421, 0, 0, 0, 4097, 0, ''),
(27965, 0, 0, 0, 1, 0, ''),
(1024, 0, 0, 0, 4097, 0, ''),
(28643, 0, 0, 0, 1, 0, ''),
(29205, 0, 0, 0, 257, 0, ''),
(6557, 0, 0, 0, 4097, 0, ''),
(30877, 0, 0, 33554432, 1, 0, ''),
(5854, 0, 0, 0, 4097, 0, ''),
(27456, 0, 0, 0, 257, 0, ''),
(5308, 0, 0, 0, 4097, 0, ''),
(7099, 0, 0, 0, 4097, 0, ''),
(27824, 0, 0, 0, 1, 0, ''),
(458, 0, 0, 0, 4097, 0, ''),
(121, 0, 0, 0, 4097, 0, ''),
(4014, 0, 0, 0, 4097, 0, ''),
(1555, 0, 0, 0, 4097, 0, ''),
(3463, 0, 0, 0, 4097, 0, ''),
(11621, 0, 0, 7, 4097, 0, '17327'),
(10426, 0, 0, 0, 4097, 0, '17151'),
(5422, 0, 0, 0, 4097, 0, ''),
(9545, 0, 0, 0, 4097, 0, ''),
(7070, 0, 0, 0, 4097, 0, ''),
(31155, 0, 0, 0, 1, 0, ''),
(27737, 0, 0, 0, 1, 0, ''),
(28627, 0, 0, 0, 1, 0, ''),
(11698, 0, 0, 0, 4097, 0, ''),
(2955, 0, 0, 0, 4097, 0, ''),
(30078, 0, 0, 0, 1, 0, ''),
(3252, 0, 0, 0, 4097, 0, ''),
(23397, 0, 0, 0, 4097, 0, ''),
(27871, 0, 0, 0, 1, 418, ''),
(26446, 0, 0, 0, 1, 0, ''),
(766, 0, 0, 0, 4097, 0, ''),
(28901, 0, 0, 0, 1, 0, ''),
(2171, 0, 0, 0, 4097, 0, ''),
(6009, 0, 0, 0, 4097, 0, ''),
(23884, 0, 0, 0, 1, 0, ''),
(31786, 0, 0, 0, 1, 0, ''),
(5523, 0, 0, 0, 4097, 0, ''),
(28887, 0, 0, 0, 1, 0, '29266'),
(6206, 0, 0, 0, 4097, 0, ''),
(34145, 0, 0, 0, 1, 0, ''),
(15616, 0, 0, 0, 4097, 0, ''),
(23821, 0, 0, 0, 1, 0, ''),
(4388, 0, 0, 0, 4097, 0, ''),
(4347, 0, 0, 0, 4097, 0, ''),
(29301, 0, 0, 0, 1, 0, ''),
(29521, 0, 0, 0, 1, 0, ''),
(9690, 0, 0, 0, 4097, 0, ''),
(678, 0, 0, 0, 4097, 0, ''),
(2070, 0, 0, 0, 4097, 0, ''),
(15185, 0, 0, 0, 4097, 0, ''),
(26740, 0, 0, 0, 4097, 0, ''),
(2206, 0, 0, 0, 4097, 0, ''),
(948, 0, 0, 0, 4097, 0, ''),
(3928, 0, 0, 0, 4097, 0, ''),
(26706, 0, 0, 0, 1, 0, ''),
(3770, 0, 0, 131072, 4097, 0, '30831'),
(1540, 0, 0, 0, 4097, 0, ''),
(27689, 0, 0, 0, 1, 0, ''),
(11578, 0, 0, 0, 4097, 0, ''),
(16489, 0, 0, 0, 1, 0, ''),
(25808, 0, 0, 0, 257, 0, ''),
(31043, 0, 0, 0, 1, 0, ''),
(27836, 0, 0, 0, 1, 0, ''),
(3803, 0, 0, 0, 4097, 0, ''),
(114, 0, 0, 0, 4097, 0, ''),
(4414, 0, 0, 0, 4097, 0, ''),
(3280, 0, 0, 0, 4097, 0, ''),
(28218, 0, 0, 0, 1, 0, ''),
(1660, 0, 0, 0, 4097, 0, ''),
(746, 0, 0, 0, 4097, 0, ''),
(23580, 0, 22467, 0, 4097, 0, ''),
(29700, 0, 0, 0, 1, 0, ''),
(1166, 0, 0, 0, 4097, 0, ''),
(25707, 0, 0, 0, 1, 0, ''),
(31915, 0, 0, 0, 1, 0, ''),
(27358, 0, 0, 0, 1, 0, ''),
(27363, 0, 0, 0, 1, 0, ''),
(4341, 0, 0, 0, 4097, 0, ''),
(4356, 0, 0, 0, 4097, 0, ''),
(4129, 0, 0, 0, 4097, 0, ''),
(2693, 0, 0, 0, 4097, 0, ''),
(11666, 0, 0, 0, 4097, 0, ''),
(11788, 0, 0, 0, 4097, 0, ''),
(29920, 0, 0, 0, 1, 0, ''),
(20055, 0, 0, 0, 4097, 234, '34712'),
(8520, 0, 0, 0, 4097, 0, ''),
(2054, 0, 0, 0, 4097, 0, ''),
(33743, 0, 29258, 0, 1, 0, '63427 62852 64723'),
(9396, 0, 0, 0, 1, 0, ''),
(28935, 0, 0, 0, 1, 0, ''),
(23398, 0, 0, 0, 4097, 0, '35841'),
(28202, 0, 0, 0, 1, 0, ''),
(3195, 0, 0, 0, 4097, 0, ''),
(7457, 0, 0, 0, 4097, 0, ''),
(16244, 0, 0, 0, 1, 0, ''),
(1028, 0, 0, 0, 4097, 0, ''),
(5774, 0, 0, 0, 4097, 0, ''),
(2650, 0, 0, 0, 4097, 0, ''),
(10158, 0, 0, 0, 4097, 0, ''),
(25215, 0, 0, 0, 1, 0, ''),
(8906, 0, 0, 0, 4097, 0, '10255'),
(10488, 0, 0, 0, 4097, 0, ''),
(7376, 0, 0, 0, 4097, 0, ''),
(33819, 0, 0, 0, 1, 0, ''),
(32202, 0, 0, 0, 1, 0, ''),
(28002, 0, 0, 0, 1, 0, ''),
(7101, 0, 0, 0, 4097, 0, ''),
(29466, 0, 0, 0, 1, 0, ''),
(24110, 0, 0, 0, 1, 0, ''),
(24819, 0, 0, 0, 4097, 0, ''),
(871, 0, 0, 0, 4097, 0, ''),
(32520, 0, 0, 0, 1, 0, ''),
(1270, 0, 0, 0, 4097, 0, ''),
(23644, 0, 0, 0, 1, 0, ''),
(11620, 0, 0, 0, 4097, 0, ''),
(115, 0, 0, 0, 4097, 0, ''),
(6218, 0, 0, 0, 4097, 0, ''),
(29031, 0, 0, 65536, 1, 0, ''),
(27438, 0, 0, 0, 1, 0, ''),
(4463, 0, 0, 0, 4097, 0, ''),
(25610, 0, 0, 0, 1, 0, ''),
(2960, 0, 0, 0, 4097, 0, ''),
(30196, 0, 0, 1, 1, 0, ''),
(4394, 0, 0, 0, 4097, 0, ''),
(2252, 0, 0, 0, 4097, 0, ''),
(3125, 0, 0, 0, 4097, 0, ''),
(1417, 0, 0, 0, 4097, 0, ''),
(33463, 0, 0, 1, 1, 0, ''),
(11373, 0, 0, 0, 4097, 0, ''),
(9044, 0, 0, 0, 4097, 0, ''),
(3117, 0, 0, 0, 4097, 0, ''),
(26200, 0, 0, 0, 1, 0, ''),
(3226, 0, 0, 0, 4097, 0, ''),
(5458, 0, 0, 0, 4097, 0, ''),
(15974, 0, 0, 0, 1, 0, ''),
(20061, 0, 0, 0, 1, 0, ''),
(23774, 0, 0, 0, 4097, 0, ''),
(23839, 0, 0, 0, 257, 0, ''),
(8602, 0, 0, 0, 4097, 0, ''),
(32541, 0, 0, 0, 1, 0, ''),
(7452, 0, 0, 0, 4097, 0, ''),
(29048, 0, 0, 0, 1, 0, ''),
(7093, 0, 0, 0, 4097, 0, ''),
(513, 0, 0, 0, 4097, 0, ''),
(8961, 0, 0, 0, 4097, 0, ''),
(33740, 0, 28571, 0, 1, 0, '63396 62852 64723'),
(27661, 0, 0, 0, 257, 0, '46598'),
(3817, 0, 0, 0, 4097, 0, ''),
(24871, 0, 0, 0, 1, 0, ''),
(24312, 0, 0, 0, 4097, 0, ''),
(4027, 0, 0, 0, 4097, 0, ''),
(34300, 0, 0, 0, 1, 0, ''),
(4693, 0, 0, 0, 4097, 0, ''),
(4021, 0, 0, 0, 4097, 0, ''),
(2558, 0, 0, 0, 4097, 0, ''),
(29485, 0, 0, 0, 1, 0, ''),
(2318, 0, 0, 0, 4097, 0, ''),
(29826, 0, 0, 0, 1, 0, ''),
(4429, 0, 0, 0, 4097, 0, ''),
(30960, 0, 0, 0, 1, 0, ''),
(16154, 0, 0, 0, 1, 0, ''),
(4324, 0, 0, 0, 4097, 0, ''),
(27713, 0, 0, 0, 257, 333, ''),
(28246, 0, 0, 0, 1, 0, ''),
(6200, 0, 0, 0, 4097, 0, ''),
(1791, 0, 0, 0, 4097, 0, ''),
(8598, 0, 0, 0, 4097, 0, ''),
(28367, 0, 0, 0, 1, 0, ''),
(3815, 0, 0, 0, 4097, 0, ''),
(28220, 0, 0, 0, 1, 0, ''),
(4695, 0, 0, 0, 4097, 0, ''),
(2719, 0, 0, 0, 4097, 0, ''),
(11582, 0, 0, 0, 4097, 0, ''),
(2176, 0, 0, 0, 4097, 0, ''),
(16037, 0, 0, 0, 1, 0, ''),
(32647, 0, 0, 0, 1, 0, ''),
(7097, 0, 0, 0, 4097, 0, ''),
(32573, 0, 0, 8, 1, 0, ''),
(23876, 0, 0, 0, 1, 0, ''),
(1564, 0, 0, 0, 4097, 0, ''),
(2372, 0, 0, 0, 4097, 0, ''),
(25921, 0, 0, 0, 4097, 0, ''),
(4097, 0, 0, 0, 4097, 0, ''),
(32771, 0, 0, 0, 1, 0, ''),
(3919, 0, 0, 0, 4097, 0, ''),
(37133, 0, 0, 0, 1, 0, '71244'),
(33558, 0, 14375, 0, 1, 0, '63395 62852 64723'),
(4472, 0, 0, 0, 4097, 0, ''),
(5423, 0, 0, 0, 4097, 0, ''),
(4680, 0, 0, 0, 4097, 0, ''),
(1192, 0, 0, 0, 4097, 0, ''),
(578, 0, 0, 0, 4097, 0, ''),
(23620, 0, 0, 0, 4097, 0, ''),
(1047, 0, 0, 0, 4097, 0, ''),
(2185, 0, 0, 0, 4097, 0, ''),
(10463, 0, 0, 0, 4097, 0, ''),
(743, 0, 0, 0, 4097, 0, ''),
(685, 0, 0, 0, 4097, 0, ''),
(4378, 0, 0, 0, 4097, 0, ''),
(22902, 0, 0, 0, 4097, 0, ''),
(10761, 0, 0, 0, 4097, 0, ''),
(594, 0, 0, 0, 4097, 0, ''),
(442, 0, 0, 0, 4097, 0, ''),
(26625, 0, 0, 0, 1, 0, ''),
(12378, 0, 0, 0, 4097, 0, ''),
(12477, 0, 0, 0, 4097, 0, ''),
(2385, 0, 0, 0, 4097, 0, ''),
(10478, 0, 0, 0, 4097, 0, ''),
(24184, 0, 0, 0, 1, 0, ''),
(3119, 0, 0, 0, 4097, 0, ''),
(29805, 0, 0, 0, 1, 0, ''),
(22885, 0, 0, 0, 4097, 0, ''),
(28419, 0, 0, 0, 1, 0, ''),
(29793, 0, 0, 50331648, 1, 0, ''),
(4853, 0, 0, 0, 4097, 0, ''),
(20027, 0, 0, 0, 4097, 0, '34712'),
(2321, 0, 0, 0, 4097, 0, ''),
(2407, 0, 0, 0, 4097, 0, ''),
(6234, 0, 0, 0, 4097, 0, ''),
(445, 0, 0, 0, 4097, 0, ''),
(4130, 0, 0, 0, 4097, 0, ''),
(2553, 0, 0, 0, 4097, 0, ''),
(6186, 0, 0, 0, 4097, 0, ''),
(2284, 0, 0, 0, 4097, 0, ''),
(16540, 0, 0, 0, 1, 69, ''),
(28055, 0, 0, 0, 1, 0, '50549'),
(30718, 0, 0, 0, 1, 417, ''),
(26658, 0, 0, 0, 1, 0, ''),
(16156, 0, 0, 0, 1, 0, ''),
(27964, 0, 0, 0, 1, 69, ''),
(5860, 0, 0, 0, 4097, 0, ''),
(29191, 0, 0, 0, 257, 0, ''),
(3105, 0, 0, 0, 4097, 0, ''),
(6007, 0, 0, 0, 4097, 0, ''),
(2174, 0, 0, 0, 4097, 0, ''),
(2762, 0, 0, 0, 4097, 0, ''),
(24562, 0, 0, 0, 1, 0, ''),
(4281, 0, 0, 0, 4097, 0, ''),
(26202, 0, 0, 0, 1, 0, ''),
(24676, 0, 0, 0, 1, 0, ''),
(31205, 0, 0, 0, 1, 0, ''),
(6225, 0, 0, 0, 4097, 0, ''),
(30651, 0, 0, 0, 1, 0, ''),
(26221, 0, 0, 0, 4097, 0, ''),
(15080, 0, 0, 0, 4097, 0, ''),
(1183, 0, 0, 0, 4097, 0, ''),
(3114, 0, 0, 0, 4097, 0, ''),
(5428, 0, 0, 0, 4097, 0, ''),
(11562, 0, 0, 0, 4097, 0, ''),
(453, 0, 0, 0, 4097, 0, ''),
(3260, 0, 0, 0, 4097, 0, ''),
(8527, 0, 0, 0, 4097, 0, ''),
(4393, 0, 0, 0, 4097, 0, ''),
(14458, 0, 0, 0, 4097, 0, ''),
(5852, 0, 0, 0, 4097, 0, ''),
(32323, 0, 0, 50331648, 1, 0, ''),
(25843, 0, 0, 0, 1, 0, ''),
(32545, 0, 0, 0, 1, 0, ''),
(2233, 0, 0, 0, 4097, 0, ''),
(5357, 0, 0, 0, 4097, 0, ''),
(24530, 0, 0, 0, 4097, 0, ''),
(30430, 0, 0, 0, 1, 0, ''),
(3207, 0, 0, 0, 4097, 0, ''),
(25651, 0, 0, 0, 1, 0, ''),
(25534, 0, 0, 0, 1, 0, ''),
(203, 0, 0, 0, 4097, 0, ''),
(1418, 0, 0, 0, 4097, 0, ''),
(28476, 0, 0, 0, 1, 0, '51738'),
(11885, 0, 0, 0, 4097, 0, '16577'),
(10420, 0, 0, 0, 4097, 0, ''),
(4415, 0, 0, 0, 4097, 0, ''),
(3989, 0, 0, 0, 4097, 0, ''),
(832, 0, 0, 0, 4097, 0, ''),
(15977, 0, 0, 0, 1, 0, '53668'),
(1653, 0, 0, 0, 4097, 0, ''),
(16137, 0, 0, 0, 1, 0, ''),
(6129, 0, 0, 0, 4097, 0, ''),
(29488, 0, 0, 50331648, 1, 0, ''),
(24058, 0, 0, 0, 0, 234, ''),
(2892, 0, 0, 0, 4097, 0, ''),
(7321, 0, 0, 0, 4097, 0, ''),
(28041, 0, 0, 0, 1, 333, ''),
(7032, 0, 0, 0, 4097, 0, ''),
(23225, 0, 0, 0, 1, 0, ''),
(2760, 0, 0, 0, 4097, 0, ''),
(36807, 0, 0, 0, 1, 468, ''),
(23643, 0, 0, 0, 1, 0, ''),
(10413, 0, 0, 0, 4097, 0, ''),
(26331, 0, 0, 0, 4097, 0, ''),
(33818, 0, 0, 0, 1, 0, ''),
(10157, 0, 0, 0, 4097, 0, ''),
(28003, 0, 0, 0, 1, 0, ''),
(23399, 0, 0, 0, 4097, 0, ''),
(8957, 0, 0, 0, 4097, 0, ''),
(2416, 0, 0, 0, 4097, 0, ''),
(2099, 0, 0, 0, 4097, 0, ''),
(5246, 0, 0, 0, 4097, 0, ''),
(682, 0, 0, 0, 4097, 0, ''),
(30642, 0, 0, 0, 1, 0, ''),
(30899, 0, 0, 0, 1, 0, ''),
(36805, 0, 0, 8, 1, 0, ''),
(3923, 0, 0, 0, 4097, 0, ''),
(4652, 0, 0, 0, 4097, 0, ''),
(5839, 0, 0, 0, 4097, 0, ''),
(2642, 0, 0, 0, 4097, 0, ''),
(2089, 0, 0, 0, 4097, 0, ''),
(27421, 0, 0, 0, 1, 0, ''),
(25686, 0, 0, 0, 1, 0, ''),
(29746, 0, 0, 0, 1, 0, ''),
(27521, 0, 24688, 65536, 257, 0, ''),
(12896, 0, 0, 0, 4097, 0, ''),
(10160, 0, 0, 0, 4097, 0, ''),
(15897, 0, 0, 0, 4097, 0, '25824'),
(2923, 0, 0, 0, 4097, 0, ''),
(3122, 0, 0, 0, 4097, 0, ''),
(11360, 0, 0, 0, 4097, 0, ''),
(27530, 0, 0, 50331648, 0, 0, '49132 55795 61204 49334'),
(2791, 0, 0, 0, 4097, 0, ''),
(32772, 0, 0, 0, 1, 0, ''),
(9777, 0, 0, 0, 4097, 0, ''),
(2583, 0, 0, 0, 4097, 0, ''),
(4430, 0, 0, 0, 4097, 0, ''),
(2371, 0, 0, 0, 4097, 0, ''),
(23188, 0, 16314, 0, 1, 0, ''),
(8889, 0, 0, 0, 4097, 0, '13589'),
(1534, 0, 0, 0, 4097, 0, ''),
(26525, 0, 0, 0, 1, 0, ''),
(26606, 0, 0, 0, 1, 0, ''),
(8606, 0, 0, 0, 4097, 0, ''),
(16243, 0, 0, 0, 1, 0, '7743'),
(26670, 0, 0, 0, 1, 0, ''),
(23771, 0, 0, 0, 1, 0, ''),
(4640, 0, 0, 0, 4097, 0, ''),
(4688, 0, 0, 0, 4097, 0, ''),
(25201, 0, 0, 0, 1, 0, ''),
(1674, 0, 0, 0, 4097, 0, ''),
(1525, 0, 0, 0, 4097, 0, ''),
(31900, 0, 0, 0, 1, 0, ''),
(14532, 0, 0, 0, 4097, 0, ''),
(4034, 0, 0, 0, 4097, 0, ''),
(1765, 0, 0, 0, 4097, 0, ''),
(32155, 0, 0, 0, 1, 0, ''),
(5305, 0, 0, 0, 4097, 0, ''),
(10485, 0, 0, 0, 4097, 0, ''),
(29498, 0, 26388, 0, 0, 0, ''),
(1186, 0, 0, 0, 4097, 0, ''),
(24637, 0, 0, 0, 1, 0, ''),
(7975, 0, 0, 0, 4097, 0, '18950'),
(23555, 0, 0, 0, 4097, 0, ''),
(3118, 0, 0, 0, 4097, 0, ''),
(32278, 0, 0, 0, 1, 0, ''),
(10756, 0, 0, 0, 4097, 0, ''),
(26325, 0, 0, 0, 4097, 0, ''),
(26755, 0, 0, 0, 4097, 0, ''),
(741, 0, 0, 0, 4097, 0, ''),
(24694, 0, 0, 0, 1, 0, ''),
(33264, 0, 0, 0, 257, 0, ''),
(1083, 0, 0, 0, 4097, 0, ''),
(11730, 0, 0, 131072, 4097, 0, '30831'),
(32482, 0, 0, 0, 1, 0, ''),
(18431, 0, 0, 0, 4097, 0, '32368'),
(31685, 0, 0, 0, 1, 0, ''),
(10472, 0, 0, 0, 4097, 0, ''),
(2560, 0, 0, 0, 4097, 0, ''),
(5990, 0, 0, 0, 4097, 0, ''),
(23087, 0, 0, 0, 4097, 0, ''),
(7459, 0, 0, 0, 4097, 0, ''),
(1026, 0, 0, 0, 4097, 0, ''),
(2156, 0, 0, 0, 4097, 0, ''),
(22874, 0, 0, 0, 4097, 0, ''),
(7029, 0, 0, 0, 4097, 0, ''),
(1193, 0, 0, 0, 4097, 0, ''),
(544, 0, 0, 0, 4097, 0, ''),
(4679, 0, 0, 0, 4097, 0, ''),
(26742, 0, 0, 0, 4097, 0, ''),
(14715, 0, 0, 0, 4097, 0, ''),
(28960, 0, 0, 0, 1, 0, ''),
(3196, 0, 0, 0, 4097, 0, ''),
(22877, 0, 0, 0, 4097, 0, ''),
(2202, 0, 0, 0, 4097, 0, ''),
(26126, 0, 0, 0, 1, 0, ''),
(18312, 0, 0, 0, 4097, 0, ''),
(4359, 0, 0, 0, 4097, 0, ''),
(28025, 0, 0, 0, 1, 0, ''),
(855, 0, 0, 0, 4097, 0, ''),
(4646, 0, 0, 0, 4097, 0, ''),
(5985, 0, 0, 0, 4097, 0, ''),
(1795, 0, 0, 0, 4097, 0, ''),
(27638, 0, 0, 50331648, 1, 0, ''),
(15043, 0, 0, 0, 4097, 0, ''),
(11291, 0, 0, 0, 4097, 0, ''),
(501, 0, 0, 0, 4097, 0, ''),
(24104, 0, 0, 0, 1, 0, ''),
(26201, 0, 0, 0, 1, 0, ''),
(3713, 0, 0, 0, 4097, 0, ''),
(500, 0, 0, 0, 4097, 0, ''),
(7446, 0, 0, 0, 4097, 0, ''),
(5306, 0, 0, 0, 4097, 0, ''),
(28504, 0, 0, 0, 1, 0, ''),
(905, 0, 0, 0, 4097, 0, ''),
(1549, 0, 0, 0, 4097, 0, ''),
(1956, 0, 0, 0, 4097, 0, ''),
(33562, 0, 28606, 0, 1, 0, '63422 62852 64723'),
(1046, 0, 0, 0, 4097, 0, ''),
(2338, 0, 0, 0, 4097, 0, ''),
(6517, 0, 0, 0, 4097, 0, ''),
(1490, 0, 0, 0, 4097, 0, ''),
(34135, 0, 0, 0, 1, 0, ''),
(1827, 0, 0, 0, 4097, 0, ''),
(5320, 0, 0, 0, 4097, 0, ''),
(12476, 0, 0, 0, 4097, 0, ''),
(23929, 0, 0, 0, 1, 0, ''),
(25915, 0, 0, 0, 4097, 0, ''),
(5850, 0, 0, 0, 4097, 0, ''),
(7100, 0, 0, 0, 4097, 0, ''),
(29551, 0, 0, 0, 1, 0, ''),
(32879, 0, 0, 0, 1, 0, ''),
(11668, 0, 0, 0, 4097, 0, ''),
(16145, 0, 0, 0, 1, 0, ''),
(24862, 0, 0, 0, 1, 0, ''),
(27869, 0, 0, 0, 1, 0, ''),
(25417, 0, 0, 0, 1, 0, ''),
(1866, 0, 0, 0, 4097, 0, ''),
(17766, 0, 0, 0, 4097, 0, '18950'),
(27165, 0, 0, 0, 1, 0, ''),
(28662, 0, 0, 0, 1, 0, ''),
(5976, 0, 0, 0, 4097, 0, ''),
(27403, 0, 0, 0, 1, 0, ''),
(7451, 0, 0, 0, 4097, 0, ''),
(2686, 0, 0, 0, 4097, 0, ''),
(26298, 0, 0, 0, 1, 0, '52485 51666'),
(6508, 0, 0, 0, 4097, 0, ''),
(23668, 0, 0, 0, 1, 0, ''),
(5735, 0, 0, 0, 4097, 0, ''),
(7523, 0, 0, 0, 4097, 0, ''),
(26644, 0, 0, 0, 1, 0, ''),
(4022, 0, 0, 0, 4097, 0, ''),
(7156, 0, 0, 0, 4097, 0, ''),
(2924, 0, 0, 0, 4097, 0, ''),
(22519, 0, 0, 0, 1, 0, ''),
(28789, 0, 0, 0, 1, 0, ''),
(23400, 0, 0, 0, 4097, 0, ''),
(35473, 0, 0, 0, 1, 0, ''),
(30172, 0, 0, 0, 1, 0, ''),
(8547, 0, 0, 0, 4097, 0, '8734'),
(2831, 0, 0, 0, 4097, 0, ''),
(1832, 0, 0, 0, 4097, 0, ''),
(31701, 0, 0, 0, 258, 0, ''),
(1793, 0, 0, 0, 4097, 0, ''),
(30114, 0, 0, 8, 1, 0, ''),
(25432, 0, 0, 0, 1, 0, ''),
(2373, 0, 0, 0, 4097, 0, ''),
(29128, 0, 0, 0, 1, 0, ''),
(7155, 0, 0, 0, 4097, 0, ''),
(28233, 0, 0, 0, 1, 0, ''),
(4139, 0, 0, 0, 4097, 0, ''),
(6232, 0, 0, 0, 4097, 0, ''),
(1955, 0, 0, 0, 4097, 0, ''),
(31131, 0, 0, 0, 1, 0, ''),
(23916, 0, 0, 0, 1, 0, ''),
(32467, 0, 0, 0, 1, 27, ''),
(6370, 0, 0, 0, 4097, 0, ''),
(4696, 0, 0, 0, 4097, 0, ''),
(2977, 0, 0, 0, 4097, 0, ''),
(2647, 0, 0, 0, 4097, 0, ''),
(30233, 0, 0, 0, 258, 0, ''),
(6512, 0, 0, 0, 4097, 0, ''),
(23809, 0, 0, 0, 1, 0, ''),
(16485, 0, 0, 0, 1, 0, ''),
(16525, 0, 0, 0, 1, 0, ''),
(712, 0, 0, 0, 4097, 0, ''),
(25362, 0, 0, 0, 1, 0, ''),
(1426, 0, 0, 0, 4097, 0, ''),
(23755, 0, 0, 0, 1, 0, ''),
(27226, 0, 0, 0, 1, 234, ''),
(16211, 0, 0, 0, 1, 0, ''),
(10608, 0, 0, 0, 4097, 0, ''),
(8542, 0, 0, 0, 4097, 0, ''),
(25350, 0, 0, 0, 1, 0, ''),
(5241, 0, 0, 0, 4097, 0, ''),
(7727, 0, 0, 0, 4097, 0, ''),
(4664, 0, 0, 0, 4097, 0, ''),
(1194, 0, 0, 0, 4097, 0, ''),
(25699, 0, 0, 0, 1, 0, ''),
(2323, 0, 0, 0, 4097, 0, ''),
(4952, 0, 0, 0, 4097, 0, ''),
(4151, 0, 0, 0, 4097, 0, ''),
(29558, 0, 0, 0, 1, 0, ''),
(30118, 0, 0, 50331648, 1, 0, '55949'),
(9162, 0, 0, 0, 4097, 0, ''),
(5853, 0, 0, 0, 4097, 0, ''),
(1884, 0, 0, 0, 4097, 0, ''),
(781, 0, 0, 0, 4097, 0, ''),
(23542, 0, 0, 0, 4097, 0, ''),
(2965, 0, 0, 0, 4097, 0, ''),
(6369, 0, 0, 0, 4097, 0, ''),
(8540, 0, 0, 0, 4097, 0, ''),
(29449, 0, 0, 0, 1, 0, ''),
(6766, 0, 0, 0, 4097, 0, ''),
(24863, 0, 0, 0, 1, 0, ''),
(29649, 0, 0, 0, 1, 383, ''),
(25204, 0, 0, 0, 1, 0, ''),
(31280, 0, 0, 0, 1, 0, ''),
(480, 0, 0, 0, 4097, 0, ''),
(28642, 0, 0, 0, 2, 384, '52147'),
(31127, 0, 0, 0, 1, 0, ''),
(26413, 0, 0, 0, 1, 0, ''),
(26332, 0, 0, 0, 4097, 0, ''),
(24752, 0, 0, 1, 1, 0, ''),
(25981, 0, 0, 0, 1, 0, ''),
(28739, 0, 0, 0, 1, 0, ''),
(3833, 0, 0, 0, 4097, 0, ''),
(6249, 0, 0, 0, 4097, 0, ''),
(3382, 0, 0, 0, 4097, 0, ''),
(4648, 0, 0, 0, 4097, 0, ''),
(30842, 0, 0, 0, 1, 0, ''),
(873, 0, 0, 0, 4097, 0, ''),
(11723, 0, 0, 131072, 4097, 0, '30831'),
(689, 0, 0, 0, 4097, 0, ''),
(22523, 0, 0, 0, 1, 0, ''),
(4007, 0, 0, 0, 4097, 0, ''),
(28489, 0, 0, 0, 257, 0, ''),
(15475, 0, 0, 0, 1, 0, ''),
(25468, 0, 0, 0, 1, 0, ''),
(4343, 0, 0, 0, 4097, 0, ''),
(28268, 0, 0, 0, 1, 0, ''),
(3, 0, 0, 0, 4097, 0, ''),
(11741, 0, 0, 0, 4097, 0, ''),
(3123, 0, 0, 0, 4097, 0, ''),
(2234, 0, 0, 0, 4097, 0, ''),
(26482, 0, 0, 0, 1, 0, ''),
(28486, 0, 0, 0, 257, 0, ''),
(32502, 0, 0, 0, 1, 0, ''),
(31330, 0, 0, 0, 1, 0, ''),
(36811, 0, 0, 8, 1, 0, ''),
(24174, 0, 0, 0, 1, 0, ''),
(5299, 0, 0, 0, 4097, 0, ''),
(10678, 0, 0, 0, 4097, 0, ''),
(25428, 0, 0, 0, 1, 0, ''),
(7453, 0, 0, 0, 4097, 0, ''),
(29566, 0, 0, 8, 1, 0, '54612'),
(31266, 0, 0, 0, 1, 0, ''),
(33337, 0, 0, 0, 1, 0, ''),
(16057, 0, 0, 0, 1, 0, ''),
(568, 0, 0, 0, 4097, 0, ''),
(2578, 0, 0, 0, 4097, 0, ''),
(4044, 0, 0, 0, 4097, 0, ''),
(1821, 0, 0, 0, 4097, 0, ''),
(29708, 0, 0, 50331648, 1, 0, ''),
(7025, 0, 0, 0, 4097, 0, ''),
(2241, 0, 0, 0, 4097, 0, ''),
(33500, 0, 0, 0, 1, 0, ''),
(7076, 0, 0, 0, 4097, 0, '10255'),
(2235, 0, 0, 0, 4097, 0, ''),
(8236, 0, 0, 0, 4097, 0, ''),
(4701, 0, 0, 0, 4097, 0, ''),
(26889, 0, 0, 0, 1, 0, ''),
(1562, 0, 0, 0, 4097, 0, ''),
(1011, 0, 0, 0, 4097, 0, ''),
(30046, 0, 0, 0, 1, 0, ''),
(3759, 0, 0, 0, 4097, 0, ''),
(5359, 0, 0, 0, 4097, 0, ''),
(26047, 0, 0, 0, 1, 0, ''),
(24082, 0, 0, 0, 1, 0, ''),
(25962, 0, 0, 0, 4097, 0, ''),
(3380, 0, 0, 0, 4097, 0, ''),
(28254, 0, 0, 0, 1, 0, ''),
(27970, 0, 0, 0, 1, 0, ''),
(25722, 0, 0, 0, 1, 0, ''),
(1017, 0, 0, 0, 4097, 0, ''),
(31142, 0, 0, 0, 1, 0, ''),
(25715, 0, 0, 0, 1, 0, ''),
(27408, 0, 0, 0, 1, 0, ''),
(8912, 0, 0, 0, 4097, 0, ''),
(2635, 0, 0, 0, 4097, 0, ''),
(3238, 0, 0, 0, 4097, 0, ''),
(28961, 0, 0, 0, 1, 0, '16245'),
(34716, 0, 0, 0, 1, 0, ''),
(25378, 0, 0, 0, 1, 0, ''),
(5997, 0, 0, 0, 4097, 0, ''),
(709, 0, 0, 0, 4097, 0, ''),
(2565, 0, 0, 0, 4097, 0, ''),
(1809, 0, 0, 0, 4097, 0, ''),
(29328, 0, 0, 0, 1, 0, ''),
(3107, 0, 0, 0, 4097, 0, ''),
(32505, 0, 0, 0, 1, 0, ''),
(1030, 0, 0, 0, 4097, 0, ''),
(8891, 0, 0, 0, 4097, 0, ''),
(18315, 0, 0, 0, 4097, 0, ''),
(5363, 0, 0, 0, 4097, 0, ''),
(6559, 0, 0, 0, 4097, 0, ''),
(5358, 0, 0, 0, 4097, 0, ''),
(27496, 0, 0, 0, 1, 0, ''),
(25377, 0, 0, 0, 1, 0, ''),
(6514, 0, 0, 0, 4097, 0, ''),
(12396, 0, 0, 0, 4097, 0, ''),
(595, 0, 0, 0, 4097, 0, ''),
(1563, 0, 0, 0, 4097, 0, ''),
(29013, 0, 0, 0, 1, 0, ''),
(3131, 0, 0, 0, 4097, 0, ''),
(31813, 0, 0, 0, 1, 0, ''),
(13737, 0, 0, 0, 4097, 0, ''),
(3853, 0, 0, 0, 4097, 0, ''),
(32922, 0, 0, 0, 1, 0, ''),
(10416, 0, 0, 0, 4097, 0, ''),
(2232, 0, 0, 0, 4097, 0, ''),
(5466, 0, 0, 0, 4097, 0, ''),
(28169, 0, 0, 0, 1, 0, ''),
(909, 0, 0, 0, 4097, 0, ''),
(27725, 0, 0, 0, 1, 0, ''),
(2369, 0, 0, 0, 4097, 0, ''),
(23887, 0, 0, 0, 1, 0, ''),
(10017, 0, 0, 0, 4097, 0, ''),
(24653, 0, 0, 0, 1, 0, ''),
(16216, 0, 0, 0, 1, 0, ''),
(5327, 0, 0, 0, 4097, 0, ''),
(26472, 0, 0, 0, 1, 0, ''),
(19144, 0, 0, 7, 4097, 0, ''),
(29958, 0, 0, 0, 1, 0, ''),
(33744, 0, 29260, 0, 1, 0, '63433 62852 64723'),
(26792, 0, 0, 0, 1, 0, ''),
(11338, 0, 0, 0, 4097, 0, ''),
(4469, 0, 0, 0, 4097, 0, ''),
(33384, 0, 29257, 0, 1, 50, '63429 62852'),
(10414, 0, 0, 0, 4097, 0, '16345'),
(5425, 0, 0, 0, 4097, 0, ''),
(8015, 0, 0, 0, 4097, 0, ''),
(1561, 0, 0, 0, 4097, 0, ''),
(10660, 0, 0, 0, 4097, 0, ''),
(4028, 0, 0, 0, 4097, 0, ''),
(4856, 0, 0, 0, 4097, 0, ''),
(7428, 0, 0, 0, 4097, 0, ''),
(32923, 0, 0, 0, 1, 0, ''),
(33856, 0, 0, 0, 1, 0, ''),
(16781, 0, 0, 0, 4097, 0, ''),
(23886, 0, 0, 0, 1, 0, ''),
(683, 0, 0, 0, 4097, 0, ''),
(4147, 0, 0, 0, 4097, 0, ''),
(5224, 0, 0, 0, 4097, 0, ''),
(215, 0, 0, 33554432, 4097, 0, '30831'),
(31731, 0, 0, 0, 1, 0, ''),
(33699, 0, 0, 0, 1, 0, ''),
(941, 0, 0, 0, 4097, 0, ''),
(5263, 0, 0, 0, 4097, 0, ''),
(11667, 0, 0, 0, 4097, 0, ''),
(4009, 0, 0, 0, 4097, 0, ''),
(5454, 0, 0, 0, 4097, 0, ''),
(4637, 0, 0, 0, 4097, 0, ''),
(4458, 0, 0, 0, 4097, 0, ''),
(12479, 0, 0, 0, 4097, 0, ''),
(15898, 0, 0, 0, 4097, 0, ''),
(6551, 0, 0, 0, 4097, 0, ''),
(4635, 0, 0, 0, 4097, 0, ''),
(26744, 0, 0, 0, 4097, 0, ''),
(8922, 0, 0, 0, 4097, 0, '8279'),
(31077, 0, 0, 0, 1, 0, ''),
(26646, 0, 0, 0, 1, 0, ''),
(29729, 0, 0, 0, 257, 0, ''),
(202, 0, 0, 0, 4097, 0, ''),
(5360, 0, 0, 0, 4097, 0, ''),
(10541, 0, 0, 0, 4097, 0, ''),
(33292, 0, 0, 50331648, 1, 0, ''),
(4041, 0, 0, 0, 4097, 0, ''),
(590, 0, 0, 0, 4097, 0, ''),
(4015, 0, 0, 0, 4097, 0, ''),
(25670, 0, 0, 0, 1, 0, ''),
(28931, 0, 0, 0, 1, 0, ''),
(26555, 0, 0, 0, 1, 0, ''),
(9167, 0, 0, 0, 4097, 0, ''),
(34271, 0, 0, 0, 1, 0, ''),
(31747, 0, 0, 0, 1, 0, ''),
(28838, 0, 0, 0, 1, 0, '18950'),
(2264, 0, 0, 0, 4097, 0, ''),
(4124, 0, 0, 0, 4097, 0, ''),
(26756, 0, 0, 0, 4097, 0, ''),
(747, 0, 0, 0, 4097, 0, ''),
(30845, 0, 0, 0, 1, 0, ''),
(32262, 0, 0, 0, 1, 0, ''),
(1487, 0, 0, 0, 4097, 0, ''),
(422, 0, 0, 0, 4097, 0, ''),
(21045, 0, 0, 0, 4097, 0, ''),
(4464, 0, 0, 0, 4097, 0, ''),
(2701, 0, 0, 0, 4097, 0, ''),
(27167, 0, 0, 0, 257, 0, ''),
(831, 0, 0, 0, 4097, 0, ''),
(10486, 0, 0, 0, 4097, 0, ''),
(2651, 0, 0, 0, 4097, 0, ''),
(26741, 0, 0, 0, 4097, 0, ''),
(6189, 0, 0, 0, 4097, 0, ''),
(8603, 0, 0, 0, 4097, 0, ''),
(1189, 0, 0, 0, 4097, 0, ''),
(2953, 0, 0, 0, 4097, 0, ''),
(672, 0, 0, 0, 4097, 0, ''),
(8531, 0, 0, 0, 4097, 0, ''),
(780, 0, 0, 0, 4097, 0, ''),
(31250, 0, 0, 0, 1, 0, ''),
(23589, 0, 0, 0, 4097, 0, ''),
(1780, 0, 0, 0, 4097, 0, ''),
(25415, 0, 0, 0, 1, 0, ''),
(25433, 0, 0, 0, 1, 0, ''),
(3752, 0, 0, 0, 4097, 0, ''),
(2956, 0, 0, 0, 4097, 0, ''),
(23645, 0, 0, 0, 1, 0, ''),
(3820, 0, 0, 0, 4097, 0, ''),
(32255, 0, 0, 0, 1, 0, ''),
(31251, 0, 0, 0, 1, 0, ''),
(7108, 0, 0, 0, 4097, 0, ''),
(35106, 0, 0, 0, 1, 0, ''),
(2348, 0, 0, 0, 4097, 0, ''),
(26307, 0, 0, 0, 4097, 0, ''),
(10481, 0, 0, 0, 4097, 0, ''),
(1044, 0, 0, 0, 4097, 0, ''),
(2572, 0, 0, 0, 4097, 0, ''),
(26123, 0, 0, 0, 4097, 0, ''),
(31042, 0, 25280, 0, 1, 0, ''),
(2963, 0, 0, 0, 4097, 0, ''),
(1509, 0, 0, 0, 4097, 0, ''),
(11576, 0, 0, 0, 4097, 0, ''),
(33285, 0, 14343, 0, 1, 0, '63398 62852 64723'),
(3812, 0, 0, 0, 4097, 0, ''),
(1787, 0, 0, 0, 4097, 0, ''),
(7430, 0, 0, 0, 4097, 0, ''),
(13839, 0, 0, 0, 4097, 0, ''),
(34150, 0, 0, 0, 1, 0, ''),
(6001, 0, 0, 0, 4097, 0, ''),
(31049, 0, 0, 0, 1, 0, ''),
(27823, 0, 0, 0, 1, 0, ''),
(28965, 0, 0, 0, 1, 0, '16245'),
(32284, 0, 0, 0, 1, 0, ''),
(34907, 0, 0, 0, 1, 0, ''),
(12347, 0, 0, 0, 4097, 0, ''),
(31690, 0, 0, 50331648, 1, 0, ''),
(4397, 0, 0, 0, 4097, 0, ''),
(6130, 0, 0, 0, 4097, 0, ''),
(4023, 0, 0, 0, 4097, 0, ''),
(6187, 0, 0, 0, 4097, 0, ''),
(16067, 0, 0, 0, 1, 0, ''),
(16539, 0, 0, 0, 1, 0, ''),
(10038, 0, 0, 0, 4097, 0, ''),
(7109, 0, 0, 0, 4097, 0, ''),
(24469, 0, 0, 0, 1, 0, ''),
(27747, 0, 0, 0, 1, 0, ''),
(23720, 0, 0, 0, 4097, 0, ''),
(28822, 0, 0, 0, 1, 0, '48356'),
(26198, 0, 0, 0, 1, 375, ''),
(124, 0, 0, 0, 4097, 0, ''),
(26636, 0, 0, 0, 1, 0, ''),
(2653, 0, 0, 1114112, 4097, 0, '7165'),
(4803, 0, 0, 0, 4097, 0, ''),
(5858, 0, 0, 0, 4097, 0, ''),
(1489, 0, 0, 0, 4097, 0, ''),
(6527, 0, 0, 0, 4097, 0, ''),
(27746, 0, 0, 0, 1, 0, ''),
(3630, 0, 0, 0, 4097, 0, ''),
(23584, 0, 0, 0, 4097, 0, ''),
(33430, 0, 0, 0, 1, 0, ''),
(757, 0, 0, 0, 4097, 0, ''),
(456, 0, 0, 0, 4097, 0, ''),
(6198, 0, 0, 0, 4097, 0, ''),
(4374, 0, 0, 0, 4097, 0, ''),
(29973, 0, 0, 0, 257, 0, ''),
(1050, 0, 0, 0, 4097, 0, ''),
(25660, 0, 0, 0, 1, 0, ''),
(1778, 0, 0, 0, 4097, 0, ''),
(25980, 0, 0, 0, 4097, 0, ''),
(12100, 0, 0, 0, 4097, 0, ''),
(1488, 0, 0, 0, 4097, 0, ''),
(2266, 0, 0, 0, 4097, 0, ''),
(1512, 0, 0, 0, 4097, 0, ''),
(19306, 0, 0, 0, 4097, 0, ''),
(1770, 0, 0, 0, 4097, 0, ''),
(4387, 0, 0, 0, 4097, 0, ''),
(3251, 0, 0, 0, 4097, 0, ''),
(11729, 0, 0, 0, 4097, 0, ''),
(1766, 0, 0, 0, 4097, 0, ''),
(17644, 0, 0, 0, 1, 0, ''),
(28440, 0, 0, 0, 1, 0, ''),
(2563, 0, 0, 0, 4097, 0, ''),
(11683, 0, 0, 0, 4097, 0, ''),
(1016, 0, 0, 0, 4097, 0, ''),
(8564, 0, 0, 0, 4097, 0, ''),
(22884, 0, 0, 0, 4097, 0, ''),
(25501, 0, 0, 0, 1, 0, ''),
(30640, 0, 0, 0, 1, 0, ''),
(16491, 0, 0, 0, 1, 0, ''),
(1923, 0, 0, 0, 4097, 0, ''),
(680, 0, 0, 0, 4097, 0, ''),
(3277, 0, 0, 0, 4097, 0, ''),
(10464, 0, 0, 0, 4097, 0, ''),
(17878, 0, 0, 0, 4097, 0, ''),
(587, 0, 0, 0, 4097, 0, ''),
(4702, 0, 0, 0, 4097, 0, ''),
(2236, 0, 0, 0, 4097, 0, ''),
(8900, 0, 0, 0, 4097, 0, ''),
(11662, 0, 0, 0, 4097, 0, ''),
(6372, 0, 0, 0, 4097, 0, ''),
(26712, 0, 0, 0, 1, 0, ''),
(1505, 0, 0, 0, 4097, 0, ''),
(32885, 0, 0, 0, 1, 0, ''),
(8521, 0, 0, 0, 4097, 0, ''),
(30830, 434800, 0, 0, 1, 0, ''),
(979, 0, 0, 0, 4097, 0, ''),
(937, 0, 0, 0, 4097, 0, ''),
(8596, 0, 0, 0, 4097, 0, ''),
(1084, 0, 0, 0, 4097, 0, ''),
(26199, 0, 0, 0, 1, 0, ''),
(5429, 0, 0, 0, 4097, 0, ''),
(28157, 0, 0, 0, 2, 0, ''),
(3099, 0, 0, 0, 4097, 0, ''),
(7438, 0, 0, 0, 4097, 0, '17205'),
(3781, 0, 0, 0, 4097, 0, ''),
(31887, 0, 0, 0, 1, 0, '59919'),
(5366, 0, 0, 0, 4097, 0, ''),
(3124, 0, 0, 0, 4097, 0, ''),
(3917, 0, 0, 0, 4097, 0, ''),
(671, 0, 0, 0, 4097, 0, ''),
(7033, 0, 0, 0, 4097, 0, ''),
(3861, 0, 0, 0, 4097, 0, ''),
(32507, 0, 0, 0, 1, 0, ''),
(12099, 0, 0, 0, 4097, 0, ''),
(10480, 0, 0, 0, 4097, 0, ''),
(5247, 0, 0, 0, 4097, 0, ''),
(2639, 0, 0, 0, 4097, 0, ''),
(17478, 0, 0, 0, 2, 0, ''),
(4054, 0, 0, 0, 4097, 0, ''),
(25454, 0, 0, 0, 1, 0, ''),
(29808, 0, 0, 50331648, 1, 0, ''),
(6230, 0, 0, 0, 4097, 0, ''),
(25273, 0, 0, 0, 257, 0, ''),
(28130, 0, 0, 0, 1, 0, ''),
(7489, 0, 0, 0, 4097, 0, ''),
(4285, 0, 0, 0, 4097, 0, ''),
(4716, 0, 0, 0, 4097, 0, ''),
(26161, 0, 0, 0, 1, 0, ''),
(28750, 0, 0, 0, 1, 0, ''),
(14821, 0, 0, 0, 4097, 0, ''),
(28850, 0, 0, 0, 1, 0, ''),
(11288, 0, 0, 0, 4097, 0, ''),
(24217, 0, 0, 0, 4097, 0, ''),
(29285, 0, 0, 0, 256, 0, ''),
(1531, 0, 0, 0, 4097, 0, ''),
(28905, 0, 0, 0, 1, 0, ''),
(33141, 0, 0, 0, 1, 0, ''),
(1082, 0, 0, 0, 4097, 0, ''),
(25224, 0, 0, 0, 1, 0, '25039 50106'),
(12801, 0, 0, 0, 4097, 0, ''),
(2237, 0, 0, 0, 4097, 0, ''),
(7047, 0, 0, 0, 4097, 0, ''),
(25600, 0, 0, 0, 1, 0, ''),
(3711, 0, 0, 0, 4097, 0, ''),
(660, 0, 0, 0, 4097, 0, ''),
(2694, 0, 0, 0, 4097, 0, ''),
(2574, 0, 0, 0, 4097, 0, ''),
(6552, 0, 0, 0, 4097, 0, ''),
(3035, 0, 0, 0, 4097, 0, ''),
(25422, 0, 0, 0, 1, 0, ''),
(30876, 0, 0, 33554432, 1, 0, ''),
(3244, 0, 0, 0, 4097, 0, ''),
(3801, 0, 0, 0, 4097, 0, ''),
(34196, 0, 0, 0, 1, 0, ''),
(545, 0, 0, 0, 4097, 0, ''),
(7107, 0, 0, 0, 4097, 0, ''),
(27553, 0, 0, 65536, 1, 0, ''),
(1890, 0, 0, 0, 4097, 0, ''),
(24076, 0, 0, 0, 1, 0, ''),
(26782, 0, 0, 0, 1, 0, '47699'),
(9879, 0, 0, 0, 4097, 0, ''),
(5278, 0, 0, 0, 4097, 0, ''),
(30952, 0, 0, 0, 1, 0, ''),
(8525, 0, 0, 0, 4097, 0, ''),
(3102, 0, 0, 0, 4097, 0, ''),
(28559, 0, 0, 0, 1, 0, ''),
(2728, 0, 0, 0, 4097, 0, ''),
(8526, 0, 0, 0, 4097, 0, ''),
(1513, 0, 0, 0, 4097, 0, ''),
(8605, 0, 0, 0, 4097, 0, ''),
(24363, 0, 0, 0, 4097, 0, ''),
(6068, 0, 0, 0, 4097, 0, ''),
(4474, 0, 0, 0, 4097, 0, ''),
(7851, 0, 0, 0, 4097, 0, ''),
(1909, 0, 0, 0, 4097, 0, ''),
(4003, 0, 0, 0, 4097, 0, ''),
(29792, 0, 0, 50331648, 1, 0, ''),
(27283, 0, 0, 0, 1, 0, ''),
(5307, 0, 0, 0, 4097, 0, ''),
(28234, 0, 0, 0, 1, 0, ''),
(31836, 0, 0, 0, 1, 0, ''),
(27927, 0, 0, 0, 1, 0, ''),
(2178, 0, 0, 0, 4097, 0, ''),
(28274, 0, 0, 0, 1, 0, ''),
(35117, 0, 0, 1, 1, 0, ''),
(1530, 0, 0, 0, 4097, 0, ''),
(26793, 0, 0, 0, 1, 0, ''),
(6073, 0, 0, 0, 4097, 0, ''),
(30848, 0, 0, 0, 1, 0, ''),
(28277, 0, 0, 0, 1, 0, ''),
(31273, 0, 0, 7, 257, 0, ''),
(3231, 0, 0, 0, 4097, 0, ''),
(27685, 0, 0, 0, 1, 0, ''),
(32161, 0, 0, 0, 1, 0, ''),
(28804, 0, 0, 0, 1, 0, ''),
(7175, 0, 0, 0, 4097, 0, ''),
(7454, 0, 0, 0, 4097, 0, ''),
(27961, 0, 0, 0, 1, 233, ''),
(4461, 0, 0, 0, 4097, 0, ''),
(5419, 0, 0, 0, 4097, 0, ''),
(8760, 0, 0, 0, 4097, 0, ''),
(28530, 0, 2404, 0, 1, 0, ''),
(34190, 0, 0, 0, 1, 0, ''),
(10016, 0, 0, 0, 4097, 0, ''),
(29104, 0, 0, 0, 1, 0, ''),
(3750, 0, 0, 0, 4097, 0, ''),
(14717, 0, 0, 0, 4097, 0, ''),
(8667, 0, 0, 0, 4097, 0, ''),
(26624, 0, 0, 0, 1, 0, '16345'),
(7309, 0, 0, 0, 4097, 0, '10255'),
(28819, 0, 0, 0, 1, 233, '48356'),
(7132, 0, 0, 0, 4097, 0, ''),
(6002, 0, 0, 0, 4097, 0, ''),
(6733, 0, 0, 0, 4097, 0, ''),
(32258, 0, 0, 0, 1, 0, ''),
(11440, 0, 0, 0, 4097, 0, ''),
(481, 0, 0, 0, 4097, 0, ''),
(154, 0, 0, 0, 4097, 0, ''),
(34133, 0, 0, 0, 1, 0, ''),
(36, 0, 0, 0, 4097, 0, ''),
(126, 0, 0, 0, 4097, 0, ''),
(29820, 0, 0, 0, 1, 0, ''),
(23581, 0, 0, 0, 4097, 0, ''),
(1713, 0, 0, 33554432, 4097, 0, '30831'),
(25701, 0, 0, 0, 1, 0, ''),
(2723, 0, 0, 0, 4097, 0, ''),
(7443, 0, 0, 0, 4097, 0, ''),
(676, 0, 0, 0, 4097, 0, ''),
(17795, 0, 0, 0, 4097, 0, ''),
(1048, 0, 0, 0, 4097, 0, ''),
(26937, 0, 0, 0, 1, 0, ''),
(25286, 0, 23056, 0, 257, 0, ''),
(10417, 0, 0, 0, 4097, 0, ''),
(3426, 0, 0, 0, 4097, 0, ''),
(2187, 0, 0, 0, 4097, 0, ''),
(4364, 0, 0, 0, 4097, 0, ''),
(26751, 0, 0, 0, 4097, 0, ''),
(6556, 0, 0, 0, 4097, 0, ''),
(27787, 0, 0, 0, 1, 0, '29266'),
(4673, 0, 0, 0, 4097, 0, ''),
(11563, 0, 0, 0, 4097, 0, ''),
(8548, 0, 0, 0, 4097, 0, ''),
(6518, 0, 0, 0, 4097, 0, ''),
(30494, 0, 0, 0, 1, 0, '56911'),
(1172, 0, 0, 0, 4097, 0, ''),
(16412, 0, 0, 0, 1, 0, ''),
(2894, 0, 0, 0, 4097, 0, ''),
(2349, 0, 0, 0, 4097, 0, ''),
(1804, 0, 0, 0, 4097, 0, ''),
(2730, 0, 0, 0, 4097, 0, ''),
(30090, 0, 0, 50331648, 1, 0, '55883'),
(8914, 0, 0, 0, 4097, 0, '15288'),
(9600, 0, 0, 0, 4097, 0, ''),
(4140, 0, 0, 0, 4097, 0, ''),
(9699, 0, 0, 0, 4097, 0, ''),
(11370, 0, 0, 0, 4097, 0, ''),
(25216, 0, 0, 0, 1, 0, ''),
(1031, 0, 0, 0, 4097, 0, ''),
(1796, 0, 0, 0, 4097, 0, ''),
(1088, 0, 0, 0, 4097, 0, ''),
(28390, 0, 0, 0, 257, 0, '29266'),
(11672, 0, 0, 0, 4097, 0, '20553'),
(3814, 0, 0, 0, 4097, 0, ''),
(7445, 0, 0, 0, 4097, 0, ''),
(4678, 0, 0, 0, 4097, 0, ''),
(3378, 0, 0, 0, 4097, 0, ''),
(679, 0, 0, 0, 4097, 0, ''),
(2652, 0, 0, 0, 4097, 0, ''),
(26324, 0, 0, 0, 4097, 0, ''),
(27607, 0, 0, 0, 1, 0, ''),
(30418, 0, 0, 0, 1, 0, ''),
(26739, 0, 0, 0, 4097, 0, ''),
(437, 0, 0, 0, 4097, 0, ''),
(23374, 0, 0, 0, 4097, 0, ''),
(28008, 0, 0, 0, 1, 0, ''),
(4382, 0, 0, 0, 4097, 0, ''),
(3746, 0, 0, 0, 4097, 0, ''),
(30177, 0, 0, 0, 1, 0, '31261'),
(2592, 0, 0, 0, 4097, 0, ''),
(7450, 0, 0, 0, 4097, 0, ''),
(2729, 0, 0, 0, 4097, 0, ''),
(24684, 0, 0, 0, 0, 69, ''),
(30687, 0, 0, 0, 1, 0, ''),
(31718, 0, 0, 0, 1, 0, ''),
(4457, 0, 0, 0, 4097, 0, ''),
(4026, 0, 0, 0, 4097, 0, ''),
(3631, 0, 0, 0, 4097, 0, ''),
(29452, 0, 0, 0, 1, 0, ''),
(10116, 0, 0, 0, 4097, 0, ''),
(3782, 0, 0, 0, 4097, 0, ''),
(33661, 0, 0, 0, 1, 0, ''),
(30857, 0, 0, 0, 1, 0, ''),
(3816, 0, 0, 0, 4097, 0, ''),
(26355, 0, 0, 0, 4097, 0, ''),
(1012, 0, 0, 0, 4097, 0, ''),
(16297, 0, 0, 0, 1, 0, ''),
(15664, 0, 0, 0, 4097, 0, ''),
(16165, 0, 0, 0, 1, 0, ''),
(28260, 0, 0, 7, 1, 0, ''),
(33738, 0, 29256, 0, 1, 0, '63406 62852 64723'),
(28835, 0, 0, 0, 1, 0, ''),
(3116, 0, 0, 0, 4097, 0, ''),
(1565, 0, 0, 0, 4097, 0, ''),
(25724, 0, 0, 0, 1, 0, ''),
(1816, 0, 0, 0, 4097, 0, ''),
(3819, 0, 0, 0, 4097, 0, ''),
(942, 0, 0, 0, 4097, 0, ''),
(892, 0, 0, 0, 4097, 0, ''),
(11733, 0, 0, 0, 4097, 0, ''),
(28560, 0, 0, 0, 1, 0, ''),
(27605, 0, 0, 65536, 1, 0, ''),
(23917, 0, 0, 0, 1, 0, ''),
(4700, 0, 0, 0, 4097, 0, ''),
(24120, 0, 0, 7, 1, 0, ''),
(2164, 0, 0, 0, 4097, 0, ''),
(3834, 0, 0, 0, 4097, 0, ''),
(22873, 0, 0, 0, 4097, 0, ''),
(11732, 0, 0, 0, 4097, 0, ''),
(11516, 0, 0, 0, 4097, 0, ''),
(29798, 0, 0, 0, 1, 0, ''),
(29710, 0, 0, 0, 1, 0, ''),
(30265, 0, 19483, 0, 257, 0, ''),
(1109, 0, 0, 0, 4097, 0, ''),
(2972, 0, 0, 0, 4097, 0, ''),
(8601, 0, 0, 0, 4097, 0, ''),
(2347, 0, 0, 0, 4097, 0, ''),
(28452, 0, 0, 0, 1, 0, ''),
(206, 0, 0, 0, 4097, 0, ''),
(27750, 0, 0, 65536, 1, 0, ''),
(25713, 0, 0, 0, 1, 0, ''),
(30633, 0, 0, 0, 1, 0, ''),
(32490, 0, 0, 0, 1, 0, ''),
(4351, 0, 0, 0, 4097, 0, ''),
(26411, 0, 0, 0, 1, 0, ''),
(29614, 0, 0, 0, 1, 0, ''),
(31400, 0, 0, 0, 1, 0, '59055'),
(24114, 0, 0, 7, 1, 0, ''),
(923, 0, 0, 0, 4097, 0, ''),
(29520, 0, 0, 8, 1, 0, '54612'),
(6212, 0, 0, 0, 4097, 0, ''),
(17660, 0, 0, 0, 1, 0, ''),
(92, 0, 0, 0, 4097, 0, ''),
(1178, 0, 0, 0, 4097, 0, ''),
(3780, 0, 0, 0, 4097, 0, ''),
(22869, 0, 0, 0, 4097, 0, ''),
(29486, 0, 0, 0, 1, 0, ''),
(2830, 0, 0, 0, 4097, 0, ''),
(30985, 0, 0, 0, 1, 0, ''),
(784, 0, 0, 0, 4097, 0, ''),
(7126, 0, 0, 0, 4097, 0, ''),
(4506, 0, 0, 0, 4097, 0, ''),
(3141, 0, 0, 0, 4097, 0, ''),
(10470, 0, 0, 0, 4097, 0, ''),
(15548, 0, 0, 0, 1, 0, ''),
(865, 0, 0, 0, 4097, 0, ''),
(24047, 0, 0, 0, 4097, 0, ''),
(5362, 0, 0, 0, 4097, 0, ''),
(1551, 0, 0, 0, 4097, 0, ''),
(2720, 0, 0, 0, 4097, 0, ''),
(5288, 0, 0, 0, 4097, 0, ''),
(2927, 0, 0, 0, 4097, 0, ''),
(767, 0, 0, 0, 4097, 0, ''),
(29026, 0, 0, 0, 1, 0, ''),
(8903, 0, 0, 0, 4097, 0, ''),
(8276, 0, 0, 0, 4097, 0, ''),
(1222, 0, 0, 0, 4097, 0, ''),
(976, 0, 0, 0, 4097, 0, ''),
(33722, 0, 0, 0, 1, 0, ''),
(5198, 0, 0, 0, 4097, 0, ''),
(4694, 0, 0, 0, 4097, 0, ''),
(15617, 0, 0, 0, 4097, 0, ''),
(9377, 0, 0, 0, 4097, 0, ''),
(28578, 0, 0, 0, 0, 0, '52642'),
(31438, 0, 0, 0, 1, 0, ''),
(782, 0, 0, 0, 4097, 0, ''),
(694, 0, 0, 0, 4097, 0, ''),
(1532, 0, 0, 0, 4097, 0, ''),
(7098, 0, 0, 0, 4097, 0, ''),
(30194, 0, 0, 1, 1, 0, ''),
(33746, 0, 29262, 0, 1, 0, '63403 62852 64723'),
(28920, 0, 0, 0, 1, 0, ''),
(3740, 0, 0, 0, 4097, 0, ''),
(1817, 0, 0, 0, 4097, 0, ''),
(432, 0, 0, 0, 4097, 0, ''),
(5474, 0, 0, 0, 4097, 0, ''),
(4656, 0, 0, 0, 4097, 0, ''),
(30181, 0, 0, 0, 1, 0, ''),
(1151, 0, 0, 0, 4097, 0, ''),
(1164, 0, 0, 0, 4097, 0, ''),
(2640, 0, 0, 0, 4097, 0, ''),
(4705, 0, 0, 0, 4097, 0, ''),
(4390, 0, 0, 0, 4097, 0, ''),
(26745, 0, 0, 0, 4097, 0, ''),
(32924, 0, 0, 0, 1, 0, ''),
(938, 0, 0, 33554432, 4097, 0, '30831'),
(3461, 0, 0, 0, 4097, 0, ''),
(28170, 0, 0, 0, 1, 0, ''),
(24635, 0, 0, 0, 1, 0, ''),
(1251, 0, 0, 0, 4097, 0, ''),
(7154, 0, 0, 0, 4097, 0, ''),
(30173, 0, 0, 0, 1, 0, ''),
(16056, 0, 0, 0, 1, 0, ''),
(2589, 0, 0, 0, 4097, 0, ''),
(23874, 0, 0, 0, 1, 0, ''),
(879, 0, 0, 0, 4097, 0, ''),
(1174, 0, 0, 0, 4097, 0, ''),
(1162, 0, 0, 0, 4097, 0, ''),
(667, 0, 0, 0, 4097, 0, ''),
(10685, 0, 0, 0, 4097, 0, ''),
(5459, 0, 0, 0, 4097, 0, ''),
(3276, 0, 0, 0, 4097, 0, ''),
(4348, 0, 0, 0, 4097, 0, ''),
(14357, 0, 0, 0, 4097, 0, ''),
(4789, 0, 0, 131072, 4097, 0, '30831'),
(15441, 0, 0, 0, 4097, 0, ''),
(2958, 0, 0, 0, 4097, 0, ''),
(2368, 0, 0, 0, 4097, 0, ''),
(31556, 0, 0, 0, 1, 0, ''),
(3924, 0, 0, 0, 4097, 0, ''),
(12322, 0, 0, 0, 4097, 0, ''),
(26461, 0, 0, 0, 1, 0, ''),
(6144, 0, 0, 0, 4097, 0, ''),
(8016, 0, 0, 0, 4097, 0, ''),
(2204, 0, 0, 0, 4097, 0, ''),
(8096, 0, 0, 0, 4097, 0, ''),
(24396, 0, 0, 0, 4097, 0, ''),
(910, 0, 0, 0, 4097, 0, ''),
(4459, 0, 0, 0, 4097, 0, ''),
(30263, 0, 2410, 0, 257, 0, ''),
(24567, 0, 0, 0, 1, 0, ''),
(31233, 0, 0, 0, 1, 0, ''),
(30920, 0, 0, 0, 1, 0, ''),
(4860, 0, 0, 0, 4097, 0, ''),
(12478, 0, 0, 0, 4097, 0, ''),
(10419, 0, 0, 0, 4097, 0, ''),
(31554, 0, 0, 0, 1, 0, ''),
(4668, 0, 0, 0, 4097, 0, ''),
(9166, 0, 0, 0, 4097, 0, ''),
(23678, 0, 0, 0, 1, 0, ''),
(33749, 0, 29257, 0, 1, 0, '63430 62852 64723'),
(36829, 0, 0, 0, 1, 0, ''),
(8637, 0, 0, 0, 4097, 0, ''),
(2975, 0, 0, 0, 4097, 0, ''),
(11658, 0, 0, 0, 4097, 0, ''),
(30312, 0, 0, 0, 1, 0, ''),
(5274, 0, 0, 0, 4097, 0, ''),
(1258, 0, 0, 0, 4097, 0, ''),
(785, 0, 0, 0, 4097, 0, ''),
(2974, 0, 0, 0, 4097, 0, ''),
(25700, 0, 0, 0, 1, 0, ''),
(7043, 0, 0, 0, 4097, 0, ''),
(25721, 0, 0, 0, 1, 0, ''),
(2726, 0, 0, 0, 4097, 0, ''),
(1022, 0, 0, 0, 4097, 0, ''),
(25198, 0, 0, 0, 1, 0, ''),
(3721, 0, 0, 0, 4097, 0, ''),
(10500, 0, 0, 0, 4097, 0, ''),
(28906, 0, 0, 0, 1, 0, ''),
(35475, 0, 0, 1, 0, 0, ''),
(8717, 0, 0, 0, 4097, 0, ''),
(4677, 0, 0, 0, 4097, 0, ''),
(34191, 0, 0, 0, 1, 0, ''),
(920, 0, 0, 0, 4097, 0, ''),
(1693, 0, 0, 0, 4097, 0, ''),
(1915, 0, 0, 0, 4097, 0, ''),
(15907, 0, 0, 0, 4097, 0, ''),
(2173, 0, 0, 0, 4097, 0, ''),
(3715, 0, 0, 0, 4097, 0, ''),
(9164, 0, 0, 0, 4097, 0, ''),
(6000, 0, 0, 0, 4097, 0, ''),
(25393, 0, 0, 0, 1, 0, ''),
(117, 0, 0, 0, 4097, 0, ''),
(7022, 0, 0, 0, 4097, 0, ''),
(2740, 0, 0, 0, 4097, 0, ''),
(6033, 0, 0, 0, 4097, 0, ''),
(15978, 0, 0, 0, 1, 0, '56604'),
(24669, 0, 0, 0, 1, 417, ''),
(628, 0, 0, 0, 4097, 0, ''),
(30689, 0, 0, 0, 1, 0, ''),
(24919, 0, 0, 0, 4097, 0, ''),
(26402, 0, 0, 0, 1, 0, ''),
(13837, 0, 0, 0, 4097, 0, ''),
(787, 0, 0, 0, 4097, 0, ''),
(27375, 0, 0, 0, 1, 0, ''),
(23401, 0, 0, 0, 4097, 0, '41248'),
(26942, 0, 0, 0, 1, 69, ''),
(15891, 0, 0, 0, 4097, 0, ''),
(24614, 0, 0, 0, 1, 0, ''),
(23582, 0, 0, 0, 4097, 0, ''),
(30951, 0, 0, 0, 1, 0, ''),
(15685, 0, 0, 0, 4097, 0, ''),
(2350, 0, 0, 0, 4097, 0, ''),
(891, 0, 0, 0, 4097, 0, ''),
(4712, 0, 0, 0, 4097, 0, ''),
(31245, 0, 0, 0, 1, 0, ''),
(6006, 0, 0, 0, 4097, 0, ''),
(768, 0, 0, 33554432, 4097, 0, '30831'),
(9776, 0, 0, 0, 4097, 0, ''),
(123, 0, 0, 0, 4097, 0, ''),
(4260, 0, 0, 0, 4097, 0, ''),
(26738, 0, 0, 0, 4097, 0, ''),
(10385, 0, 0, 0, 4097, 0, ''),
(2579, 0, 0, 0, 4097, 0, ''),
(11735, 0, 0, 0, 4097, 0, ''),
(11734, 0, 0, 0, 4097, 0, ''),
(1550, 0, 0, 0, 4097, 0, ''),
(759, 0, 0, 0, 4097, 0, ''),
(17765, 0, 0, 0, 4097, 0, '18950'),
(6348, 0, 0, 0, 4097, 0, ''),
(15091, 0, 0, 0, 4097, 0, ''),
(33272, 0, 0, 0, 1, 0, '64100'),
(3265, 0, 0, 0, 4097, 0, ''),
(16595, 0, 0, 0, 1, 0, ''),
(125, 0, 0, 0, 4097, 0, ''),
(28407, 0, 0, 0, 1, 0, ''),
(3755, 0, 0, 0, 4097, 0, ''),
(2102, 0, 0, 0, 4097, 0, ''),
(14882, 0, 0, 0, 4097, 10, ''),
(5647, 0, 0, 0, 4097, 0, ''),
(2243, 0, 0, 0, 4097, 0, ''),
(32875, 0, 0, 0, 1, 0, ''),
(3245, 0, 0, 0, 4097, 0, ''),
(30277, 0, 0, 0, 1, 0, ''),
(4057, 0, 0, 0, 4097, 0, ''),
(26759, 0, 0, 0, 4097, 0, ''),
(22855, 0, 0, 0, 4097, 0, ''),
(1491, 0, 0, 0, 4097, 0, ''),
(2053, 0, 0, 0, 4097, 0, ''),
(4036, 0, 0, 0, 4097, 0, ''),
(30649, 0, 0, 0, 1, 0, ''),
(26754, 0, 0, 0, 4097, 0, ''),
(452, 0, 0, 0, 4097, 0, ''),
(699, 0, 0, 0, 4097, 0, ''),
(1069, 0, 0, 0, 4097, 0, ''),
(36725, 0, 0, 50331648, 1, 0, ''),
(2681, 0, 0, 0, 4097, 0, ''),
(3633, 0, 0, 0, 4097, 0, ''),
(769, 0, 0, 0, 4097, 0, ''),
(2734, 0, 0, 0, 4097, 0, ''),
(1548, 0, 0, 0, 4097, 0, ''),
(34014, 0, 0, 0, 1, 0, ''),
(35092, 0, 0, 0, 1, 468, '66857'),
(625, 0, 0, 0, 4097, 0, ''),
(2595, 0, 0, 0, 4097, 0, ''),
(428, 0, 0, 0, 4097, 0, ''),
(31847, 0, 0, 0, 1, 0, ''),
(1537, 0, 0, 0, 4097, 0, ''),
(1177, 0, 0, 0, 4097, 0, ''),
(12247, 0, 0, 0, 4097, 0, ''),
(2240, 0, 0, 0, 4097, 0, ''),
(26175, 0, 0, 0, 1, 0, ''),
(4371, 0, 0, 0, 4097, 0, ''),
(11697, 0, 0, 0, 4097, 0, ''),
(4676, 0, 0, 0, 4097, 0, ''),
(6010, 0, 0, 0, 4097, 0, ''),
(4505, 0, 0, 0, 4097, 0, ''),
(6008, 0, 0, 0, 4097, 0, ''),
(15895, 0, 0, 0, 4097, 0, ''),
(33243, 0, 0, 0, 1, 0, '64101 62719 63132'),
(4357, 0, 0, 0, 4097, 0, ''),
(29630, 0, 0, 0, 1, 0, ''),
(26477, 0, 0, 7, 1, 0, ''),
(762, 0, 0, 0, 4097, 0, ''),
(23915, 0, 0, 0, 1, 0, ''),
(33383, 0, 29259, 0, 1, 50, '63435 62852'),
(3127, 0, 0, 0, 4097, 0, ''),
(8477, 0, 0, 0, 4097, 0, ''),
(29588, 0, 0, 0, 1, 0, '54742'),
(28889, 0, 0, 0, 257, 0, ''),
(7114, 0, 0, 0, 4097, 0, ''),
(29832, 0, 0, 0, 1, 0, ''),
(2552, 0, 0, 0, 4097, 0, ''),
(6407, 0, 0, 0, 4097, 0, ''),
(30887, 0, 0, 0, 1, 0, ''),
(30285, 0, 0, 0, 1, 0, '56572'),
(31797, 0, 0, 0, 1, 0, ''),
(3754, 0, 0, 0, 4097, 0, ''),
(4029, 0, 0, 0, 4097, 0, ''),
(28391, 0, 0, 0, 257, 0, '29266'),
(10636, 0, 0, 0, 4097, 0, ''),
(24113, 0, 0, 7, 1, 0, ''),
(5420, 0, 0, 0, 4097, 0, ''),
(2928, 0, 0, 0, 4097, 0, ''),
(7371, 0, 0, 0, 4097, 0, ''),
(11787, 0, 0, 0, 4097, 0, ''),
(4280, 0, 0, 0, 4097, 0, ''),
(6226, 0, 0, 0, 4097, 0, ''),
(2260, 0, 0, 0, 4097, 0, ''),
(23403, 0, 0, 0, 4097, 0, ''),
(23979, 0, 0, 0, 4097, 0, ''),
(25684, 0, 0, 0, 1, 0, ''),
(30701, 0, 0, 0, 1, 0, ''),
(27460, 0, 0, 0, 1, 0, ''),
(26675, 0, 0, 0, 1, 0, ''),
(4020, 0, 0, 0, 4097, 0, ''),
(10390, 0, 0, 0, 4097, 0, ''),
(25217, 0, 0, 0, 1, 0, ''),
(10757, 0, 0, 0, 4097, 0, ''),
(2735, 0, 0, 0, 4097, 0, ''),
(29752, 0, 0, 0, 1, 0, ''),
(1812, 0, 0, 0, 4097, 0, ''),
(30872, 0, 0, 33554432, 1, 0, '55086'),
(5979, 0, 0, 0, 4097, 0, ''),
(23907, 0, 0, 0, 4097, 0, ''),
(1020, 0, 0, 0, 4097, 0, ''),
(15130, 0, 0, 0, 4097, 0, ''),
(6350, 0, 0, 0, 4097, 0, ''),
(7458, 0, 0, 0, 4097, 0, ''),
(16818, 0, 0, 0, 4097, 0, ''),
(25920, 0, 0, 0, 4097, 0, ''),
(24690, 0, 0, 1, 0, 0, ''),
(29549, 0, 0, 0, 1, 0, ''),
(6003, 0, 0, 0, 4097, 0, ''),
(5857, 0, 0, 0, 4097, 0, ''),
(2968, 0, 0, 0, 4097, 0, ''),
(4144, 0, 0, 0, 4097, 0, ''),
(2691, 0, 0, 0, 4097, 0, ''),
(3110, 0, 0, 0, 4097, 0, ''),
(2163, 0, 0, 0, 4097, 0, ''),
(28778, 0, 0, 0, 1, 0, ''),
(1032, 0, 0, 0, 4097, 0, ''),
(31783, 0, 0, 0, 1, 0, ''),
(24079, 0, 0, 0, 1, 416, ''),
(2356, 0, 0, 0, 4097, 0, ''),
(5364, 0, 0, 0, 4097, 0, ''),
(1034, 0, 0, 0, 4097, 0, ''),
(11912, 0, 0, 0, 4097, 0, ''),
(31328, 0, 0, 0, 1, 0, ''),
(35482, 0, 0, 0, 1, 0, ''),
(17406, 0, 0, 0, 4097, 234, ''),
(24059, 0, 0, 0, 4097, 0, ''),
(2596, 0, 0, 0, 4097, 0, ''),
(755, 0, 0, 0, 4097, 0, ''),
(27254, 0, 0, 0, 1, 0, ''),
(2736, 0, 0, 0, 4097, 0, ''),
(1010, 0, 0, 0, 4097, 0, ''),
(218, 0, 0, 0, 4097, 0, ''),
(26401, 0, 0, 0, 4097, 0, ''),
(29589, 0, 0, 0, 1, 0, '54745'),
(4861, 0, 0, 0, 4097, 0, ''),
(27288, 0, 0, 0, 1, 0, '50689'),
(23669, 0, 0, 0, 1, 0, ''),
(33739, 0, 29255, 0, 1, 0, '63423 62852 64723'),
(5300, 0, 0, 0, 4097, 0, ''),
(889, 0, 0, 0, 4097, 0, ''),
(8550, 0, 0, 0, 4097, 0, '16592'),
(23339, 0, 0, 0, 4097, 0, ''),
(2906, 0, 0, 0, 4097, 0, ''),
(1772, 0, 0, 0, 4097, 0, ''),
(7441, 0, 0, 0, 4097, 0, ''),
(15111, 0, 0, 0, 4097, 0, ''),
(834, 0, 0, 0, 4097, 0, ''),
(5984, 0, 0, 0, 4097, 0, ''),
(27928, 0, 25280, 0, 256, 0, ''),
(6521, 0, 0, 0, 4097, 0, ''),
(6789, 0, 0, 0, 4097, 0, ''),
(1813, 0, 0, 0, 4097, 0, ''),
(854, 0, 0, 0, 4097, 0, ''),
(10661, 0, 0, 0, 4097, 0, ''),
(26327, 0, 0, 0, 4097, 0, ''),
(3991, 0, 0, 0, 4097, 0, ''),
(23636, 0, 0, 0, 4097, 0, ''),
(4657, 0, 0, 0, 4097, 0, ''),
(29395, 0, 0, 0, 1, 0, ''),
(11198, 0, 0, 0, 4097, 0, ''),
(4154, 0, 0, 0, 4097, 0, ''),
(1236, 0, 0, 0, 4097, 0, ''),
(16400, 0, 0, 0, 1, 0, '28370'),
(24681, 0, 0, 0, 1, 0, ''),
(3120, 0, 0, 0, 4097, 0, ''),
(10384, 0, 0, 0, 4097, 0, ''),
(4690, 0, 0, 0, 4097, 0, ''),
(28751, 0, 0, 0, 1, 0, ''),
(28826, 0, 0, 0, 1, 0, ''),
(2580, 0, 0, 0, 4097, 0, ''),
(2358, 0, 0, 0, 4097, 0, ''),
(31396, 0, 0, 50331648, 1, 0, ''),
(5652, 0, 0, 0, 4097, 0, ''),
(736, 0, 0, 0, 4097, 0, ''),
(764, 0, 0, 0, 4097, 0, ''),
(34199, 0, 0, 0, 1, 333, ''),
(1520, 0, 0, 0, 4097, 0, ''),
(14123, 0, 0, 0, 4097, 0, ''),
(7668, 0, 0, 0, 4097, 0, ''),
(6511, 0, 0, 0, 4097, 0, ''),
(2557, 0, 0, 0, 4097, 0, ''),
(1545, 0, 0, 0, 4097, 0, ''),
(32257, 0, 0, 0, 1, 0, ''),
(7139, 0, 0, 0, 4097, 0, ''),
(9697, 0, 0, 0, 4097, 0, ''),
(6510, 0, 0, 0, 4097, 0, ''),
(2556, 0, 0, 0, 4097, 0, ''),
(8522, 0, 0, 0, 4097, 0, ''),
(23638, 0, 0, 0, 1, 0, ''),
(830, 0, 0, 0, 4097, 0, ''),
(690, 0, 0, 0, 4097, 0, ''),
(619, 0, 0, 0, 4097, 0, '12544'),
(2959, 0, 0, 0, 4097, 0, ''),
(1042, 0, 0, 0, 4097, 0, ''),
(1216, 0, 0, 0, 4097, 0, ''),
(26408, 0, 0, 0, 1, 233, ''),
(12202, 0, 0, 0, 4097, 0, ''),
(27048, 0, 0, 0, 1, 0, '47842'),
(29830, 0, 0, 0, 1, 0, ''),
(2954, 0, 0, 0, 4097, 0, ''),
(7041, 0, 0, 0, 4097, 0, ''),
(2203, 0, 0, 0, 4097, 0, ''),
(23394, 0, 0, 0, 4097, 0, ''),
(29487, 0, 0, 0, 1, 0, ''),
(29912, 0, 0, 0, 1, 0, ''),
(11724, 0, 0, 0, 4097, 0, ''),
(3762, 0, 0, 0, 4097, 0, ''),
(25225, 0, 0, 0, 1, 0, ''),
(760, 0, 0, 0, 4097, 0, ''),
(2969, 0, 0, 0, 4097, 0, ''),
(95, 0, 0, 0, 4097, 0, ''),
(25709, 0, 0, 0, 1, 0, ''),
(15979, 0, 0, 0, 1, 0, ''),
(898, 0, 0, 0, 4097, 0, ''),
(7036, 0, 0, 0, 4097, 0, ''),
(23047, 0, 0, 0, 4097, 0, ''),
(1913, 0, 0, 0, 4097, 0, ''),
(9318, 0, 0, 0, 4097, 0, ''),
(23537, 0, 0, 0, 4097, 0, ''),
(11778, 0, 0, 0, 4097, 0, ''),
(429, 0, 0, 0, 4097, 0, ''),
(27552, 0, 0, 0, 1, 0, ''),
(2957, 0, 0, 0, 4097, 0, ''),
(3121, 0, 0, 0, 4097, 0, ''),
(3993, 0, 0, 0, 4097, 0, ''),
(34925, 0, 0, 0, 1, 0, '66521'),
(23817, 0, 0, 0, 4097, 0, ''),
(28466, 0, 0, 0, 1, 0, ''),
(4951, 0, 0, 0, 4097, 0, ''),
(6505, 0, 0, 0, 4097, 0, ''),
(7435, 0, 0, 0, 4097, 0, ''),
(28217, 0, 0, 0, 1, 0, ''),
(29519, 0, 0, 8, 1, 0, '54612'),
(2973, 0, 0, 0, 4097, 0, ''),
(23791, 0, 0, 0, 0, 173, ''),
(33838, 0, 0, 0, 1, 0, ''),
(25880, 0, 0, 0, 1, 0, ''),
(34137, 0, 0, 0, 1, 0, ''),
(3733, 0, 0, 0, 4097, 0, ''),
(25994, 0, 0, 0, 4097, 0, ''),
(23810, 0, 0, 0, 1, 0, ''),
(877, 0, 0, 0, 4097, 0, ''),
(24182, 0, 0, 0, 1, 0, ''),
(33565, 0, 0, 1, 1, 0, ''),
(2742, 0, 0, 0, 4097, 0, ''),
(7603, 0, 0, 0, 4097, 0, ''),
(5262, 0, 0, 0, 4097, 0, ''),
(33745, 0, 29261, 0, 1, 0, '63399 62852 64723'),
(1224, 0, 0, 0, 4097, 0, ''),
(597, 0, 0, 0, 4097, 0, ''),
(7405, 0, 0, 0, 4097, 0, ''),
(3743, 0, 0, 0, 4097, 0, ''),
(1527, 0, 0, 0, 4097, 0, ''),
(2205, 0, 0, 0, 4097, 0, ''),
(6351, 0, 0, 0, 4097, 0, ''),
(15961, 0, 0, 0, 4097, 0, '18950'),
(7431, 0, 0, 0, 4097, 0, ''),
(8597, 0, 0, 0, 4097, 0, ''),
(12802, 0, 0, 0, 4097, 0, ''),
(11290, 0, 0, 0, 4097, 0, ''),
(3242, 0, 0, 0, 4097, 0, ''),
(28745, 0, 0, 0, 1, 0, ''),
(1802, 0, 0, 0, 4097, 0, ''),
(744, 0, 0, 0, 4097, 0, ''),
(26749, 0, 0, 0, 4097, 0, ''),
(1023, 0, 0, 0, 4097, 0, ''),
(2354, 0, 0, 0, 4097, 0, ''),
(23840, 0, 0, 0, 258, 214, ''),
(4008, 0, 0, 0, 4097, 0, ''),
(26948, 0, 0, 0, 1, 0, ''),
(24084, 0, 0, 0, 1, 0, ''),
(2715, 0, 0, 0, 4097, 0, ''),
(2582, 0, 0, 0, 4097, 0, ''),
(27909, 0, 0, 0, 1, 0, ''),
(8885, 0, 0, 0, 4097, 0, ''),
(31147, 0, 0, 0, 1, 0, ''),
(33772, 0, 0, 0, 1, 0, ''),
(1014, 0, 0, 0, 4097, 0, ''),
(25351, 0, 0, 0, 1, 0, ''),
(6371, 0, 0, 0, 4097, 0, ''),
(6219, 0, 0, 0, 4097, 0, ''),
(3104, 0, 0, 0, 4097, 0, ''),
(28492, 0, 0, 0, 1, 0, ''),
(669, 0, 0, 0, 4097, 0, ''),
(33382, 0, 29262, 0, 1, 50, '63402 62852'),
(8959, 0, 0, 0, 4097, 0, ''),
(25615, 0, 0, 0, 1, 0, ''),
(24747, 0, 0, 1, 1, 0, ''),
(25685, 0, 0, 0, 1, 0, ''),
(23667, 0, 0, 0, 1, 0, ''),
(24642, 0, 0, 0, 1, 0, ''),
(2692, 0, 0, 0, 4097, 0, ''),
(7042, 0, 0, 0, 4097, 0, ''),
(8675, 0, 0, 0, 4097, 0, ''),
(5461, 0, 0, 0, 4097, 0, ''),
(23595, 0, 0, 0, 4097, 0, ''),
(1184, 0, 0, 0, 4097, 0, ''),
(26748, 0, 0, 0, 4097, 0, ''),
(12379, 0, 0, 0, 4097, 0, ''),
(24340, 0, 0, 0, 1, 0, ''),
(15892, 0, 0, 0, 4097, 0, ''),
(205, 0, 0, 0, 4097, 0, ''),
(449, 0, 0, 0, 4097, 0, ''),
(24077, 0, 0, 7, 1, 0, ''),
(6506, 0, 0, 0, 4097, 0, ''),
(8901, 0, 0, 0, 4097, 0, ''),
(2544, 0, 0, 0, 4097, 0, ''),
(32892, 0, 0, 0, 1, 0, ''),
(26724, 0, 0, 0, 4097, 0, ''),
(4385, 0, 0, 0, 4097, 0, ''),
(27517, 0, 0, 65539, 1, 0, ''),
(34134, 0, 0, 0, 1, 0, ''),
(604, 0, 0, 0, 4097, 0, ''),
(7040, 0, 0, 0, 4097, 0, ''),
(4848, 0, 0, 0, 4097, 0, ''),
(27748, 0, 14334, 0, 257, 0, ''),
(1039, 0, 0, 0, 4097, 0, ''),
(28933, 0, 0, 8, 1, 0, ''),
(24846, 0, 0, 0, 1, 0, ''),
(1019, 0, 0, 0, 4097, 0, ''),
(5441, 0, 0, 0, 4097, 0, ''),
(32164, 0, 0, 0, 1, 234, ''),
(26455, 0, 0, 0, 1, 0, ''),
(16036, 0, 0, 0, 1, 0, ''),
(31150, 0, 0, 0, 1, 0, ''),
(688, 0, 0, 0, 4097, 0, ''),
(29960, 0, 0, 0, 1, 0, ''),
(1152, 0, 0, 0, 4097, 0, ''),
(6519, 0, 0, 0, 4097, 0, ''),
(25276, 0, 0, 0, 257, 173, ''),
(28932, 0, 0, 0, 1, 0, ''),
(23637, 0, 0, 0, 4097, 0, ''),
(5304, 0, 0, 0, 4097, 0, ''),
(4143, 0, 0, 0, 4097, 0, ''),
(20026, 0, 0, 0, 4097, 0, '34712'),
(5239, 0, 0, 0, 4097, 0, ''),
(7433, 0, 0, 0, 4097, 0, ''),
(8766, 0, 0, 0, 4097, 0, ''),
(12475, 0, 0, 0, 4097, 0, ''),
(7113, 0, 0, 0, 4097, 0, ''),
(5465, 0, 0, 0, 4097, 0, ''),
(31843, 0, 0, 0, 1, 233, ''),
(30288, 0, 0, 0, 1, 0, '56571'),
(11442, 0, 0, 0, 4097, 0, ''),
(8600, 0, 0, 0, 4097, 0, ''),
(4323, 0, 0, 0, 4097, 0, ''),
(28733, 0, 0, 0, 1, 0, ''),
(15545, 0, 6080, 0, 4097, 0, ''),
(11276, 0, 0, 0, 4097, 0, ''),
(34146, 0, 0, 0, 1, 0, ''),
(6237, 0, 0, 0, 257, 0, ''),
(32260, 0, 0, 0, 1, 0, ''),
(4128, 0, 0, 0, 4097, 0, ''),
(3424, 0, 0, 0, 4097, 0, ''),
(4062, 0, 0, 0, 4097, 0, ''),
(28491, 0, 0, 0, 257, 0, ''),
(31754, 0, 0, 0, 1, 0, ''),
(23834, 0, 0, 0, 4097, 0, ''),
(2893, 0, 0, 0, 4097, 0, ''),
(3247, 0, 0, 0, 4097, 0, ''),
(4006, 0, 0, 0, 4097, 0, ''),
(4362, 0, 0, 0, 4097, 0, ''),
(28276, 0, 0, 50331648, 1, 0, ''),
(29444, 0, 0, 0, 1, 0, ''),
(949, 0, 0, 0, 4097, 0, ''),
(2098, 0, 0, 0, 4097, 0, ''),
(3807, 0, 0, 0, 4097, 0, ''),
(24677, 0, 0, 0, 1, 0, ''),
(8996, 0, 0, 0, 1, 0, ''),
(702, 0, 0, 0, 4097, 0, ''),
(26728, 0, 0, 0, 1, 0, ''),
(27702, 0, 0, 0, 1, 0, ''),
(819, 0, 0, 0, 4097, 0, ''),
(26757, 0, 0, 0, 4097, 0, ''),
(5977, 0, 0, 0, 4097, 0, ''),
(2951, 0, 0, 0, 4097, 0, ''),
(4038, 0, 0, 0, 4097, 0, ''),
(1029, 0, 0, 0, 4097, 0, ''),
(4671, 0, 0, 0, 4097, 0, ''),
(9691, 0, 0, 0, 4097, 0, ''),
(3730, 0, 0, 0, 4097, 0, ''),
(1726, 0, 0, 0, 4097, 0, ''),
(6223, 0, 0, 0, 4097, 0, ''),
(10405, 0, 0, 0, 4097, 0, '18950'),
(2949, 0, 0, 0, 4097, 0, ''),
(25173, 0, 0, 0, 4097, 0, ''),
(533, 0, 0, 0, 4097, 0, ''),
(2964, 0, 0, 0, 4097, 0, ''),
(4863, 0, 0, 0, 4097, 0, ''),
(24883, 0, 0, 0, 1, 0, ''),
(26157, 0, 0, 0, 257, 0, ''),
(33528, 0, 0, 33554432, 1, 0, ''),
(6020, 0, 0, 0, 4097, 0, ''),
(751, 0, 0, 0, 4097, 0, ''),
(7310, 0, 0, 0, 4097, 0, ''),
(16545, 0, 0, 0, 1, 0, ''),
(5806, 0, 0, 0, 4097, 0, ''),
(7404, 0, 0, 0, 4097, 0, ''),
(10043, 0, 0, 0, 4097, 0, ''),
(6771, 0, 0, 0, 4097, 0, ''),
(23934, 0, 0, 0, 1, 0, ''),
(5335, 0, 0, 0, 4097, 0, ''),
(3748, 0, 0, 0, 4097, 0, ''),
(26780, 0, 0, 0, 257, 333, '');
DELETE FROM `creature_addon` WHERE `guid` IN
(54574, 54567, 54566, 54477, 54476, 54465, 54327, 54326, 39982, 39961,
39948, 39945, 39980, 39972, 39965, 39964, 39954, 89085, 89086, 89088,
80388, 80412, 81159, 81160, 81164, 81165, 81167, 81172, 81174, 81294,
81299, 81311, 81320, 80381, 80384, 80386, 80392, 80393, 80394, 80404,
80706, 80723, 80725, 80733, 80742, 80746, 80747, 80835, 80836, 80864,
80866, 80868, 81106, 81415, 81423, 81427, 75655, 75657, 75664, 75665,
71902, 71904, 65283, 65274, 47972, 47973, 48023, 48024, 48025, 48026,
48027, 48028, 48029, 48030, 48031, 88827, 88831, 88832, 88834, 88836,
136537, 136538, 136539, 136540, 136541, 136542, 136545, 136546, 136548,
136549, 136550, 136552, 136553, 77155, 77157, 77159, 77160, 77162,
77165, 77169, 47574, 47576, 47577, 47580, 47581, 47584, 47585, 47596,
47604, 47609, 47610, 47615, 47616, 47617, 47619, 47620, 73962, 73963,
14676, 13270, 13249, 11814, 11799, 11728, 11588, 11543, 11418, 11353,
11324, 11290, 11286, 11279, 11246, 11245, 11244, 11226, 11227, 11224,
11225, 11201, 11202, 24759, 24758, 24757, 24756, 24755, 24754, 24753,
24751, 24750, 24749, 24748, 24747, 24746, 24745, 24744, 24743, 24742,
24741, 24740, 24739, 24738, 24737, 24736, 24735, 24734, 24733, 24732,
24731, 24730, 13978, 13977, 13976, 13975, 13974, 13973, 13972, 13971,
13970, 13969, 13968, 13967, 13966, 13965, 13963, 13962, 13961, 13960,
13959, 13958, 13957, 13956, 13955, 13954, 13953, 13952, 13951, 45527,
45528, 45533, 89863, 89866, 90032, 90034, 90345, 90403, 47575, 47614,
94864, 94865, 94866, 94867, 94868, 94869, 94870, 94871, 94872, 94873,
94874, 94875, 94876, 94877, 94878, 94879, 94880, 94881, 94882, 94883,
94884, 94885, 94886, 94887, 94888, 94889, 94890, 94891, 94892, 94893,
94894, 94895, 94896, 94897, 94898, 94899, 94900, 94901, 94902, 94903,
94904, 94905, 94906, 94907, 94908, 94909, 94910, 94911, 94912, 94913,
94914, 94915, 94916, 94917, 94918, 94919, 78745, 78746, 78749, 78750,
78751, 78752, 136438, 136439, 136440, 136441, 136442, 136443, 136444,
136445, 63987, 63992, 103719, 103720, 103721, 103722, 201010, 201033,
200881, 201182, 125544, 125547, 125549, 125550, 131198, 131199, 131200,
74842, 74844, 62249, 62261, 72390, 72391, 72392, 72393, 72397, 72398,
72399, 72400, 14806, 24048, 57297, 57304, 47388, 47389, 47390, 47392,
47393, 47394, 47395, 47396, 47397, 47398, 47399, 47400, 47401, 47402,
47403, 47404, 47405, 47406, 47407, 47408, 47409, 47410, 47411, 47412,
47446, 47448, 47450, 47452, 47457, 47461, 47464, 47467, 47468, 47469,
47480, 47481, 55623, 55624, 55626, 55639, 55672, 55682, 55683, 47314,
47315, 47316, 47317, 47319, 47320, 47321, 47322, 47324, 47325, 47326,
47327, 47328, 47329, 47330, 47331, 47332, 47333, 47334, 47335, 47336,
47337, 47338, 47339, 47340, 47341, 47342, 47343, 47344, 47345, 47346,
79139, 79188, 79245, 65833, 65836, 65837, 65840, 65841, 65844, 73128,
73132, 73134, 73135, 73136, 73137, 73138, 73139, 49550, 49551, 49552,
49553, 49554, 49555, 49556, 49557, 49558, 46958, 46968, 46971, 46972,
46974, 46981, 46996, 46997, 46998, 46999, 47000, 47001, 47002, 47003,
47004, 47005, 47006, 47007, 47008, 47009, 47010, 47011, 47012, 47013,
47014, 47015, 47016, 47017, 47018, 47019, 47020, 47021, 47022, 47023,
47024, 47029, 47030, 47031, 47037, 47038, 47039, 47052, 47053, 47054,
47055, 47056, 47057, 47058, 47059, 47060, 47061, 47062, 47208, 47249,
47262, 47263, 47266, 47267, 47268, 47269, 47270, 47271, 63428, 63439,
49454, 49455, 49456, 49457, 49458, 85204, 85205, 56083, 56086, 56104,
77883, 77884, 77887, 77892, 77894, 77896, 77897, 77899, 77900, 77901,
77902, 77903, 77905, 77907, 56464, 56466, 19987, 19986, 19985, 19984,
19983, 19982, 19981, 19980, 19979, 19978, 19977, 19976, 19975, 19974,
19973, 19972, 19971, 19970, 19969, 19968, 19967, 19966, 19965, 19964,
19963, 19962, 19961, 19960, 19959, 19958, 19957, 19956, 19955, 19954,
19953, 19952, 19951, 19950, 19949, 19948, 19947, 19946, 19945, 19944,
19943, 19942, 19941, 19940, 19939, 19938, 19937, 19936, 19935, 19934,
19933, 19932, 19931, 19930, 19929, 19928, 19927, 19926, 19925, 19924,
19923, 19922, 19921, 19920, 19919, 19918, 19917, 19916, 19915, 19914,
19913, 19912, 19911, 19910, 19909, 19908, 19907, 19906, 19905, 19904,
19903, 19902, 19901, 19900, 19899, 19898, 19897, 19896, 19895, 19894,
19893, 19892, 19891, 19890, 19889, 19888, 19887, 19886, 19885, 19884,
19883, 19882, 19881, 19880, 19879, 19878, 19877, 19876, 19875, 19874,
19873, 19872, 19871, 19870, 19869, 19868, 19867, 19866, 19865, 19864,
19863, 19862, 19861, 19860, 19859, 19858, 19857, 19856, 19855, 19854,
19853, 19852, 19851, 19850, 19849, 19848, 19847, 19846, 19845, 19844,
19843, 19842, 19841, 19840, 19839, 19838, 19837, 19836, 19835, 19834,
19833, 19832, 19831, 19830, 19829, 19828, 19827, 19826, 19825, 19824,
19823, 19822, 19821, 19820, 19819, 63380, 63382, 107194, 107193, 107197,
107195, 107196, 69846, 69847, 63371, 63370, 64080, 64081, 64083, 64085,
64089, 64093, 57487, 57488, 32326, 32324, 32323, 32322, 32321, 32320,
32319, 29206, 29205, 29204, 29203, 26919, 26918, 26917, 26916, 26915,
26914, 26913, 31067, 30962, 30959, 30752, 30750, 30700, 30616, 30605,
30590, 30580, 30579, 30570, 30558, 30550, 30543, 30536, 30531, 30518,
30517, 30516, 30474, 29256, 18630, 8016, 8014, 13091, 13090, 13089,
13088, 13087, 13086, 13084, 13082, 13035, 12986, 12145, 12142, 12138,
12132, 12131, 12122, 12117, 12115, 12087, 12082, 11884, 11882, 11856,
11777, 11775, 10437, 8442, 7918, 7917, 7625, 6487, 6485, 6482, 34101,
36534, 36535, 36536, 36538, 36539, 36540, 36541, 36542, 36543, 36544,
36545, 36546, 36547, 36548, 36549, 36550, 36551, 36552, 36553, 36554,
36555, 36556, 36557, 36558, 36559, 36560, 36561, 36562, 36563, 36564,
36565, 126306, 126305, 126304, 126303, 126302, 126301, 126300, 126299,
126298, 126297, 126296, 126295, 126294, 126293, 126292, 126291, 126290,
126289, 126288, 126287, 126286, 126285, 126284, 126283, 126282, 126281,
126280, 126279, 126278, 126277, 126276, 126275, 126274, 126273, 126272,
126271, 126270, 126269, 126268, 126267, 126266, 126265, 126264, 126263,
126262, 126307, 126308, 126309, 126310, 126311, 126312, 126313, 126314,
126315, 126316, 126317, 126318, 126319, 126320, 126321, 126322, 126323,
126324, 126325, 126326, 126327, 126328, 126329, 126330, 126331, 126332,
126333, 126334, 126335, 126336, 126337, 126338, 126339, 126340, 126341,
126342, 126343, 126344, 126345, 126346, 126347, 126348, 126349, 126350,
126351, 126352, 126353, 126354, 126355, 126356, 126357, 126358, 126359,
126360, 126361, 126362, 126363, 126364, 126365, 126366, 126367, 126368,
126369, 126370, 126371, 126372, 126373, 126374, 126375, 126376, 126377,
126378, 126379, 126380, 126381, 126382, 126383, 126384, 126385, 126386,
126387, 126388, 126389, 19347, 19348, 19349, 11007, 20298, 20299, 11005,
11011, 11000, 64124, 64125, 64128, 64129, 64131, 64132, 64133, 64137,
65351, 65327, 100775, 100782, 100783, 100796, 100798, 100799, 100800,
100801, 100802, 100804, 100805, 100806, 100808, 100811, 100812, 100813,
100814, 100816, 100817, 100818, 100819, 100820, 100821, 85202, 85203,
47964, 47965, 47966, 47967, 47968, 47969, 47970, 47971, 68640, 68641,
68644, 68662, 68663, 68664, 68666, 68667, 68669, 68670, 71363, 71366,
82657, 82658, 82741, 82742, 82743, 82770, 136380, 136381, 136382,
136383, 77088, 77090, 77091, 77092, 77093, 77094, 77095, 77097, 77105,
77110, 77111, 77115, 77116, 77118, 77119, 77123, 77124, 77126, 77127,
77128, 77129, 77135, 77138, 77139, 77140, 65814, 65819, 65823, 65825,
65830, 65832, 71983, 71984, 71986, 96998, 96995, 96997, 72638, 72639,
72640, 72641, 72650, 72651, 78460, 78461, 78462, 78464, 78465, 87421,
87488, 48048, 48049, 48050, 48051, 48052, 48053, 48054, 48055, 48056,
48057, 48058, 48059, 48060, 68875, 68877, 40035, 40026, 40028, 39994,
39996, 39989, 39983, 39978, 39959, 59208, 59209, 59210, 59212, 59214,
59215, 75393, 75392, 75175, 60501, 60507, 60519, 60521, 60531, 60546,
60594, 104493, 104494, 12817, 12816, 12815, 12814, 49512, 49513, 49514,
49515, 49516, 49517, 49518, 49520, 49521, 49522, 49523, 49524, 14807,
8465, 82514, 82527, 82531, 82536, 82537, 82538, 82540, 82547, 74829,
74833, 74835, 68456, 68461, 68462, 68464, 53036, 84825, 86149, 73923,
73925, 73926, 73928, 73930, 73932, 73933, 73937, 73939, 73940, 73941,
73944, 73945, 73947, 48197, 48199, 48200, 48201, 48202, 48207, 48208,
48210, 48211, 48212, 48213, 48214, 48215, 48216, 48259, 48266, 48271,
48272, 48273, 48298, 48299, 48328, 48329, 48330, 48331, 48332, 48333,
48344, 48346, 48349, 48350, 48351, 48352, 48353, 48356, 48357, 48368,
48377, 48378, 48382, 48421, 48426, 48429, 48434, 48438, 48449, 48450,
57856, 57873, 63336, 63337, 63342, 63343, 63344, 63347, 63348, 63350,
63351, 63352, 63355, 47939, 47940, 47941, 47942, 47946, 47947, 47949,
47953, 58414, 58415, 2916, 2932, 2946, 56349, 56350, 56351, 56352,
56353, 56354, 56355, 56356, 56357, 56358, 56359, 56360, 70248, 70249,
70250, 70251, 78939, 78940, 78945, 101687, 101697, 101701, 101703,
101704, 101705, 101706, 101707, 101708, 101709, 101710, 101711, 101712,
76795, 76796, 76804, 76805, 56238, 56242, 56243, 56244, 56247, 56251,
56252, 56257, 56258, 56260, 56263, 56266, 56268, 56269, 56270, 56271,
56278, 56279, 56282, 56286, 56288, 56293, 56296, 56299, 56302, 56303,
56304, 56305, 56306, 56308, 56310, 57417, 57418, 57419, 57422, 57424,
57431, 57433, 57434, 57435, 75648, 75652, 46212, 46213, 46214, 46215,
59141, 59142, 59146, 59147, 59149, 59150, 59151, 59152, 59158, 59160,
59162, 59163, 59165, 59166, 59167, 59169, 73325, 73327, 73330, 73331,
73333, 73336, 73338, 73339, 73341, 73343, 73344, 73352, 73353, 73355,
73356, 73358, 73361, 73362, 73363, 73364, 73366, 73367, 73368, 73369,
73370, 73375, 73377, 73381, 73383, 73384, 73386, 73388, 73389, 60471,
60475, 60491, 63776, 63778, 63779, 63780, 63782, 63789, 63790, 63792,
63795, 63796, 63800, 64197, 64198, 64200, 64203, 64212, 59224, 59228,
59229, 59230, 59232, 59234, 14803, 9530, 24015, 20938, 20937, 20936,
20935, 20934, 20933, 20932, 20931, 20930, 20929, 20928, 20927, 20926,
20925, 20924, 20923, 20922, 20921, 20920, 20919, 20918, 20917, 20916,
20915, 20914, 20913, 20912, 20911, 20910, 20909, 20908, 20907, 20906,
20905, 20904, 20903, 20902, 20901, 20900, 20899, 20898, 20897, 20896,
20895, 20894, 20893, 20892, 20891, 20890, 20889, 20888, 20887, 20886,
20885, 20884, 20883, 20882, 20881, 20880, 20879, 20878, 12387, 12372,
12345, 12329, 12310, 12180, 12179, 12155, 12152, 12150, 12146, 12143,
12140, 12137, 12133, 12121, 12114, 12085, 12083, 11885, 11883, 11854,
11851, 11850, 11849, 11780, 11779, 11776, 10435, 10431, 10282, 10281,
8439, 8438, 8437, 8436, 7920, 7919, 7916, 7367, 7365, 7363, 6486, 6484,
91149, 91211, 60692, 60699, 6011, 5955, 5953, 5950, 5944, 5943, 5927,
5926, 5924, 5923, 5922, 5913, 5896, 5895, 5894, 5193, 5192, 5155, 5152,
5151, 5148, 5146, 5145, 5143, 5142, 5133, 5132, 5131, 5123, 5119, 5118,
5117, 5099, 5098, 5097, 4348, 4311, 72543, 72544, 72545, 72548, 72549,
72550, 72552, 72553, 72557, 72561, 72562, 72563, 72440, 72441, 72442,
57325, 57326, 57332, 57333, 57334, 14808, 24014, 72950, 72961, 58078,
58104, 72966, 72971, 64014, 64016, 64022, 64025, 64027, 64032, 64034,
64037, 64038, 64039, 46805, 46806, 46808, 59484, 59486, 59487, 59489,
59490, 59491, 59492, 59498, 59499, 59505, 59509, 59511, 68002, 68003,
68007, 68008, 74962, 74963, 74964, 74965, 74966, 74967, 74968, 74969,
74970, 74971, 74972, 74973, 74673, 74676, 74678, 74682, 71388, 71391,
71392, 71394, 71395, 71396, 71397, 71398, 74350, 74351, 74353, 74355,
126865, 127030, 127031, 127032, 127033, 127034, 127035, 136354, 82164,
82178, 82184, 82187, 82189, 82200, 82205, 82208, 136268, 136269, 54226,
54149, 54097, 54098, 54661, 54656, 54654, 54590, 54588, 54150, 54118,
54100, 74562, 74563, 74564, 74566, 74570, 74572, 6169, 6168, 137507,
137508, 137509, 66928, 66930, 66936, 74939, 74941, 74943, 70107, 70108,
70111, 70117, 70125, 70127, 70132, 70133, 70140, 87285, 87287, 87292,
87297, 87302, 68782, 68783, 76646, 76647, 76649, 76650, 76651, 67767,
67769, 67770, 67771, 67773, 67777, 67778, 67780, 67781, 67783, 67785,
67786, 67787, 67792, 67793, 67794, 67795, 67797, 67798, 67800, 67801,
67802, 67804, 67805, 67809, 67810, 67815, 67817, 67821, 67822, 67823,
67826, 67827, 67829, 67830, 68565, 68566, 68567, 68568, 70948, 70959,
67063, 67064, 67065, 67066, 97019, 97020, 97021, 97016, 97017, 97018,
97014, 97004, 97005, 97006, 97007, 97008, 97009, 97010, 97011, 97012,
97013, 97003, 97002, 97022, 97000, 97001, 67907, 67909, 49901, 49902,
49904, 49905, 49906, 49907, 49908, 49909, 49910, 49911, 49912, 49913,
49914, 49915, 49916, 49917, 49918, 49919, 49920, 49921, 49922, 49923,
49924, 49925, 49926, 49927, 49928, 49929, 49930, 49931, 49932, 49933,
75167, 75180, 75181, 75183, 75184, 75186, 75189, 75191, 75192, 71825,
71826, 71828, 71829, 71831, 67070, 67071, 67072, 67074, 67076, 67077,
67078, 67080, 67081, 67083, 126416, 126417, 126418, 126419, 126420,
126421, 48710, 48687, 48717, 48718, 48720, 48722, 48727, 48734, 48735,
48737, 48746, 48751, 101713, 101714, 101715, 101801, 121713, 73966,
73968, 73969, 73972, 73973, 73974, 73976, 73980, 62155, 62169, 13299,
13298, 13294, 13291, 13287, 13286, 15643, 15635, 15633, 15599, 15549,
15546, 15438, 15437, 15436, 15435, 16338, 90178, 90215, 63236, 63129,
75717, 75718, 75719, 75720, 75722, 74088, 74101, 74103, 74106, 59104,
59109, 59111, 59112, 59121, 59122, 74836, 74839, 74840, 47482, 47483,
47484, 47485, 47486, 47487, 47488, 47489, 47490, 47491, 47492, 47493,
47494, 88816, 88817, 88818, 88821, 88823, 88824, 48032, 48033, 48035,
48041, 48042, 48043, 48044, 48045, 48046, 48047, 137593, 137594, 137595,
137596, 137597, 137598, 74120, 74122, 74123, 74125, 74126, 74129, 80924,
80927, 80928, 80930, 80931, 47954, 47955, 47956, 47957, 47958, 47959,
47960, 47961, 47962, 47963, 86848, 20424, 68111, 68112, 68114, 68116,
68117, 17906, 26045, 45404, 45406, 46797, 47177, 47180, 47181, 47985,
47987, 48261, 79189, 79244, 79273, 79296, 79361, 49860, 49861, 49862,
49863, 49864, 49865, 49866, 49867, 49868, 49869, 49870, 49871, 49872,
49873, 49874, 49875, 49876, 49877, 49878, 49879, 49880, 49881, 49882,
49883, 49884, 49885, 49886, 49887, 49888, 49889, 49890, 49891, 49892,
49893, 49894, 49895, 49896, 49897, 49898, 49899, 49900, 47533, 47534,
47535, 47537, 47538, 47539, 47540, 47541, 47542, 47543, 47544, 47545,
47546, 47547, 47548, 47549, 47550, 47551, 47552, 47553, 47554, 47555,
47556, 47557, 47558, 47559, 47560, 47567, 47571, 47573, 48693, 48721,
48738, 48744, 97113, 97114, 97115, 97119, 97120, 97121, 97122, 97123,
97124, 97125, 97126, 97127, 136924, 136926, 136927, 136928, 136929,
136930, 136931, 136932, 136933, 136934, 136935, 136936, 136937, 136938,
136939, 136940, 136941, 136942, 136943, 136944, 136945, 136946, 136947,
136948, 136949, 136950, 136951, 136952, 136953, 136954, 136955, 136956,
136957, 136958, 136959, 136960, 136961, 136962, 136963, 136964, 136965,
136966, 136967, 136968, 136969, 136970, 136971, 136972, 136973, 136974,
136975, 136976, 136977, 136978, 136979, 136980, 136981, 136982, 136983,
136984, 136985, 136986, 136987, 136988, 136989, 136990, 136991, 136992,
136993, 136994, 136995, 136996, 136997, 136998, 136999, 137000, 137001,
137002, 137003, 137004, 137005, 137006, 137007, 137008, 137009, 137010,
137011, 137012, 137013, 137014, 137015, 137016, 137017, 137018, 137019,
137020, 137021, 137022, 137023, 137024, 14804, 9469, 23965, 79653,
79887, 79890, 79893, 79897, 79898, 80264, 80268, 80276, 80277, 80279,
80282, 80377, 80396, 80402, 80405, 74009, 74012, 74013, 74016, 74020,
74021, 74023, 74024, 74027, 74028, 74030, 74031, 74032, 74034, 48061,
48062, 48063, 48064, 48065, 48066, 48067, 48068, 48069, 48070, 48071,
48072, 48073, 48074, 48075, 48076, 48077, 48078, 48079, 48080, 48081,
48082, 48083, 48084, 48085, 48086, 48087, 48088, 48089, 48157, 48163,
48164, 48175, 48185, 71068, 71069, 71070, 71071, 71072, 71076, 71078,
71079, 71080, 71082, 19713, 19712, 19711, 19710, 19709, 19708, 19707,
19706, 19705, 19704, 19703, 19702, 19701, 19700, 19699, 19698, 19697,
19696, 19695, 19694, 19693, 19692, 19691, 19690, 19689, 19688, 19687,
19686, 19685, 19684, 19683, 19682, 19681, 19680, 19679, 19678, 19677,
19676, 19675, 19674, 19673, 19672, 19671, 19670, 19669, 19668, 19667,
19666, 19665, 19664, 19663, 19662, 19661, 19660, 19659, 19658, 19657,
19656, 19655, 19654, 19653, 19652, 19651, 19650, 19649, 19648, 19647,
19646, 19645, 19644, 19643, 19642, 19641, 19640, 19639, 58595, 58597,
58598, 58599, 58600, 58601, 58603, 58604, 58605, 58606, 70325, 70328,
70330, 70332, 70334, 70335, 70341, 70342, 70345, 70347, 70348, 70349,
54693, 54673, 54659, 136093, 136094, 60643, 60647, 60648, 60649, 60652,
60654, 60657, 58428, 58429, 58435, 49428, 49429, 49430, 49431, 49432,
49433, 49434, 49435, 49436, 49437, 49438, 49439, 49440, 49441, 49442,
49443, 49444, 49445, 49447, 49448, 46306, 46307, 46310, 46311, 46314,
46315, 46316, 46317, 46318, 67032, 67035, 72979, 72981, 102377, 102378,
102387, 102388, 102389, 102392, 102393, 102394, 102395, 102396, 102397,
102398, 78345, 78347, 78349, 78350, 78351, 78352, 78357, 94855, 94856,
94857, 74584, 74588, 74589, 74591, 74593, 74158, 74159, 74160, 74162,
6305, 6310, 49822, 49823, 49824, 49825, 49826, 49827, 49828, 49829,
49830, 49831, 49832, 49833, 49834, 49835, 49836, 78629, 78631, 78633,
79292, 79305, 79307, 79308, 79316, 79324, 79330, 79348, 79384, 60112,
60115, 73813, 73817, 73820, 73823, 40108, 40093, 40111, 40105, 40099,
40095, 40086, 40085, 103951, 103952, 103953, 103954, 136817, 136818,
136819, 136820, 136821, 136822, 136823, 136824, 136825, 136826, 136827,
136828, 136829, 136830, 136831, 136832, 136833, 136834, 136835, 136836,
136837, 136838, 136839, 136840, 136841, 136842, 136843, 136844, 136845,
136846, 136847, 136848, 136849, 136850, 136851, 136852, 136853, 136854,
136855, 136856, 136857, 136858, 136859, 136860, 136861, 136862, 136863,
136864, 136865, 136866, 136867, 136868, 136869, 136870, 136871, 136872,
136873, 136874, 136875, 136876, 136877, 136878, 136879, 136880, 136881,
136882, 136883, 136884, 136885, 136886, 136887, 136888, 136889, 136890,
136891, 136892, 136893, 136894, 136895, 136896, 136897, 136898, 136899,
136900, 136901, 136902, 136903, 136904, 136905, 136906, 136907, 136908,
136909, 136910, 136911, 136912, 136913, 136914, 136915, 136916, 136917,
136918, 136919, 136920, 136921, 136922, 136923, 66006, 66007, 66009,
66011, 66012, 66014, 66018, 66020, 66021, 66022, 66027, 66035, 66036,
66038, 66043, 66047, 66048, 136558, 136559, 136576, 136577, 66914,
66916, 66917, 66918, 60194, 60196, 49470, 49471, 49472, 49473, 49474,
49475, 49476, 49477, 49478, 49479, 49480, 49481, 49482, 89548, 89549,
89550, 89551, 89552, 49460, 49461, 49462, 49463, 49464, 49465, 49466,
49467, 49468, 49469, 136263, 136264, 136265, 136266, 49626, 49627,
49628, 49629, 49630, 49631, 49632, 49633, 49634, 49635, 49636, 49637,
49638, 49639, 49640, 49641, 49642, 49643, 49644, 49645, 49646, 49647,
49648, 69947, 69949, 69952, 69954, 46912, 46913, 46915, 46916, 46917,
46918, 46919, 46920, 46921, 46922, 46923, 46924, 46925, 46926, 46927,
46928, 46929, 46930, 46931, 46932, 46933, 46934, 46935, 46936, 49527,
49528, 49529, 49530, 49531, 49532, 49533, 49534, 49535, 49536, 49537,
49538, 158, 252, 3637, 81717, 81718, 81723, 81743, 49406, 49407, 49408,
49409, 49410, 57188, 57189, 57190, 57191, 57192, 57194, 57195, 57196,
57197, 57199, 57201, 57202, 57203, 57204, 57205, 6052, 6048, 6040, 6039,
6038, 6010, 6009, 6008, 5952, 5949, 5948, 5945, 5925, 5898, 5897, 5893,
5892, 5194, 5154, 5153, 5150, 5149, 5147, 5144, 5141, 5129, 5124, 4960,
4919, 4356, 4293, 58609, 58613, 58614, 58617, 58620, 58621, 73172,
73174, 73177, 73181, 73183, 73187, 73188, 73191, 131355, 131356, 131357,
131358, 131359, 131360, 131361, 131362, 131363, 131364, 131365, 131366,
131367, 131368, 131369, 131370, 131371, 131372, 131373, 131374, 20425,
19346, 17338, 100831, 100830, 100829, 100828, 100827, 100807, 100803,
13486, 13485, 13484, 13483, 13482, 13481, 13480, 13479, 13478, 13477,
13476, 13475, 13474, 13473, 13472, 13471, 13470, 13469, 13468, 13467,
13466, 13465, 13464, 13463, 13462, 13461, 13460, 13459, 13458, 13457,
13456, 13455, 13454, 13453, 13452, 13451, 13450, 13449, 13448, 13447,
13446, 13445, 13444, 13443, 13442, 13441, 13440, 13439, 13438, 13437,
13436, 13435, 13434, 13433, 13432, 13431, 13430, 13422, 13421, 13420,
13237, 13229, 13228, 13227, 13226, 13225, 13224, 13223, 13222, 13221,
13220, 13219, 13218, 13217, 13216, 13215, 13214, 13213, 13212, 13211,
13210, 13209, 13208, 13207, 13206, 13205, 13204, 13203, 13202, 13201,
13200, 13199, 13198, 13197, 13196, 13195, 13194, 13193, 13192, 13191,
13190, 13189, 13188, 13187, 13186, 13185, 13184, 13183, 6029, 6016,
5956, 5951, 5947, 5186, 5185, 5184, 5183, 5181, 5180, 5156, 4920, 4857,
4441, 4411, 4409, 4343, 4308, 4307, 4306, 4276, 4275, 4241, 49212,
49213, 49215, 49216, 49217, 49264, 49265, 49266, 49267, 49404, 49405,
14805, 9564, 8466, 72567, 72568, 72575, 72576, 72594, 136239, 136240,
69669, 69670, 69672, 136521, 136522, 136523, 136524, 136525, 136527,
136528, 136529, 136530, 136385, 136386, 136387, 136388, 136389, 136390,
136391, 136392, 136393, 136394, 136395, 136396, 136397, 136398, 136399,
136400, 136401, 136402, 136403, 136404, 123658, 123659, 123660, 123661,
123662, 123663, 123664, 123665, 123666, 123667, 123668, 123669, 73412,
73413, 73414, 73415, 73418, 73419, 73424, 49560, 49561, 49562, 49563,
49564, 49565, 49566, 49567, 49568, 49569, 49570, 49571, 49572, 49610,
49611, 49612, 49613, 49614, 49615, 49616, 49617, 49620, 49621, 49622,
49623, 56374, 56375, 56376, 56381, 56382, 56386, 56390, 56391, 56395,
56396, 52674, 52675, 52676, 65285, 65284, 71595, 71596, 71597, 137590,
137591, 137592, 9471, 13182, 37925, 41742, 65901, 65526, 69283, 69285,
69293, 20966, 20965, 20964, 20963, 20962, 20961, 20960, 20959, 20958,
20957, 20956, 90982, 90981, 90980, 90979, 90978, 138110, 138109, 138108,
138107, 138106, 63313, 63316, 63317, 63320, 63321, 63324, 63328, 63330,
136060, 136061, 136062, 136063, 136064, 136065, 136066, 136067, 136068,
136069, 136070, 136071, 136072, 136075, 136076, 136077, 136078, 136079,
136080, 136081, 136082, 136083, 136084, 136085, 136086, 136091, 136092,
64370, 64384, 64397, 66846, 66848, 66850, 79214, 79233, 103855, 103856,
103857, 103858, 137614, 137615, 137616, 6026, 6020, 5957, 5954, 5946,
5930, 5929, 5187, 5179, 5159, 5158, 5157, 5135, 5134, 5007, 5006, 4896,
4866, 4860, 4858, 4855, 4425, 4418, 4410, 4325, 4314, 4309, 4305, 4302,
4294, 4284, 4283, 70580, 70581, 9565, 13181, 38375, 41741, 71616, 71617,
71618, 78189, 78191, 78192, 78194, 78196, 78203, 78205, 78206, 77959,
77966, 77967, 73268, 73271, 47351, 47352, 47353, 47354, 47355, 47356,
47357, 47359, 47360, 47361, 47362, 47363, 47364, 47365, 47366, 47367,
47368, 47369, 47370, 47371, 47372, 47373, 47374, 47375, 47376, 47377,
47378, 47379, 47380, 47381, 47382, 47383, 47384, 47385, 47386, 47387,
46395, 46396, 46397, 46398, 46399, 46400, 46401, 46402, 46403, 46404,
46405, 46406, 46407, 46408, 46409, 48527, 48528, 48529, 48530, 48547,
48561, 48562, 48564, 48576, 48578, 48636, 49021, 49148, 49160, 49165,
49166, 49168, 49169, 49170, 49171, 49172, 49173, 49174, 49175, 49176,
53955, 53963, 53968, 56222, 56223, 56229, 56231, 56232, 56236, 54691,
54154, 15133, 15132, 15131, 15130, 15129, 15128, 15127, 15126, 15125,
15124, 15123, 15122, 15121, 15120, 15119, 15118, 15117, 15116, 15115,
15114, 15113, 15112, 15110, 15107, 15106, 15105, 56169, 56174, 56176,
56177, 56181, 56189, 56190, 56192, 56193, 56194, 56195, 56196, 56197,
56198, 56199, 56203, 56204, 56206, 56208, 56210, 56211, 56213, 56214,
56215, 56216, 56219, 79299, 79385, 79390, 17658, 17851, 18252, 47176,
47178, 47183, 47982, 47983, 47986, 46937, 46938, 46939, 46940, 46941,
46942, 46943, 46944, 46945, 46946, 46947, 46948, 46949, 46950, 46951,
46952, 46953, 46954, 46955, 46957, 67152, 67153, 73909, 73910, 73913,
73914, 73917, 78698, 78700, 78703, 78706, 86774, 86775, 86776, 86777,
86778, 86874, 86875, 86876, 86877, 74430, 74432, 97924, 97925, 97926,
97933, 97934, 97935, 97936, 97937, 97938, 97939, 97941, 97943, 97944,
97946, 97947, 97948, 97949, 97950, 97951, 97952, 97953, 97954, 97955,
97956, 97957, 97958, 97959, 97960, 97961, 97962, 97963, 97964, 97965,
97966, 97967, 97969, 97970, 97971, 97972, 97973, 97974, 97975, 97976,
97977, 97979, 97980, 97981, 71092, 71094, 75461, 75463, 75466, 49837,
49838, 49839, 49840, 49841, 49842, 102417, 102418, 102419, 102420,
102425, 102426, 102427, 102428, 102429, 102430, 102431, 102432, 102433,
102434, 78966, 78967, 78996, 135976, 135977, 135978, 135979, 135980,
135981, 135982, 135983, 135984, 135985, 135986, 135987, 135988, 135989,
135990, 135991, 135992, 135993, 135994, 135995, 135996, 135997, 135998,
135999, 136000, 136001, 136002, 136003, 136004, 136005, 136006, 136007,
136008, 136009, 136010, 136011, 136012, 136013, 136014, 136015, 136016,
136017, 136018, 136019, 136020, 136021, 136022, 136023, 136024, 136025,
136026, 136027, 136028, 136029, 136030, 136031, 136032, 136033, 136034,
136035, 136036, 136037, 136038, 136039, 136040, 136041, 136042, 136043,
136044, 136045, 136046, 136047, 137618, 100171, 100169, 100168, 100167,
100166, 100165, 126422, 126423, 126424, 126425, 126426, 126427, 126428,
126429, 126430, 126431, 126432, 126433, 99182, 99186, 99187, 99188,
99189, 99190, 77969, 77974, 77977, 77978, 77981, 77984, 19623, 19622,
19621, 19620, 19619, 19618, 19617, 19616, 19615, 19614, 19613, 19612,
19611, 19610, 19609, 19608, 19607, 19606, 19605, 19604, 19603, 19602,
19601, 19600, 19599, 19598, 19597, 19596, 19595, 19594, 19593, 19592,
19591, 19590, 19589, 19588, 19587, 19586, 19585, 19584, 19583, 19582,
19581, 19580, 19579, 19578, 19577, 19576, 19575, 19574, 19573, 19572,
19571, 19570, 19569, 19568, 19567, 19566, 19565, 19564, 19563, 19562,
19561, 19560, 19559, 19558, 19557, 19556, 19555, 19554, 19553, 19552,
19551, 19550, 19549, 19548, 19547, 19546, 19545, 19544, 19543, 19542,
19541, 19540, 19539, 19538, 19537, 19536, 19535, 19534, 19533, 19532,
19531, 19530, 19529, 19528, 19527, 19526, 19525, 19524, 19523, 19522,
19521, 19520, 19519, 19518, 19517, 19516, 19515, 19514, 19513, 19512,
19511, 19510, 19509, 19508, 19507, 19502, 19501, 19500, 19499, 19498,
19497, 19496, 19495, 19494, 19493, 19492, 19491, 19486, 19485, 19484,
19483, 19482, 19481, 19480, 19479, 19478, 19477, 19476, 19475, 19474,
19473, 19472, 19471, 49411, 49412, 49417, 49419, 49420, 49422, 49423,
49424, 49425, 49426, 49427, 67174, 67177, 82175, 82176, 82188, 82191,
82194, 82195, 82196, 82201, 82204, 82209, 82210, 82242, 39988, 39955,
39950, 39986, 39971, 39962, 89072, 89066, 89094, 12743, 12742, 12741,
12740, 12739, 12738, 12737, 49483, 49484, 49485, 49486, 49487, 49488,
49489, 49490, 49491, 49492, 49493, 49494, 49495, 49496, 49497, 49498,
49499, 49500, 49501, 49502, 49503, 49504, 49505, 49506, 49507, 49508,
49509, 49510, 72851, 72852, 72853, 72854, 66788, 66741, 47621, 47912,
47914, 47918, 101690, 101691, 101692, 101693, 101694, 101695, 101696,
101698, 101699, 101700, 101702, 136361, 136362, 136363, 136364, 136365,
136366, 136367, 136368, 136369, 69406, 69407, 69408, 69411, 69413,
69414, 69416, 69417, 69418, 69419, 69420, 69421, 69422, 69423, 69424,
69425, 69426, 69427, 69428, 69429, 69430, 69431, 69432, 69433, 69434,
69435, 69436, 69437, 69438, 69439, 69440, 69441, 69442, 69443, 48451,
48452, 48453, 48454, 48455, 48456, 48471, 48472, 48473, 48475, 48486,
48487, 48488, 48489, 48490, 48491, 48492, 48493, 48494, 48495, 48496,
48497, 48498, 48499, 48500, 48501, 48502, 48503, 48504, 48505, 48506,
48507, 48508, 48509, 48510, 48511, 48512, 48513, 48514, 48515, 48516,
48517, 48518, 48519, 48520, 48521, 48522, 48523, 48524, 48525, 48526,
78584, 78585, 78586, 78587, 78588, 78589, 78591, 78593, 78595, 78599,
78600, 78601, 78603, 47495, 47496, 47497, 47498, 47500, 47501, 47502,
47503, 47504, 47505, 47506, 47507, 47508, 47509, 47510, 47511, 47512,
47513, 47514, 47515, 47516, 47517, 47518, 47519, 47520, 47521, 47522,
47523, 47524, 47525, 47526, 47527, 47528, 47529, 47530, 47531, 47532,
65724, 65728, 65731, 65733, 65745, 65747, 65748, 65754, 65755, 65756,
65758, 65761, 65765, 65770, 65776, 65778, 65780, 65784, 49177, 49178,
49179, 49180, 49181, 49182, 49184, 49205, 49206, 49207, 49208, 49209,
49210, 49211, 68987, 68947, 49541, 49542, 49543, 49544, 49545, 49546,
49547, 49548, 49549, 68440, 68443, 105109, 105004, 47280, 47281, 47282,
47283, 47284, 47285, 47286, 47287, 47288, 47289, 47290, 47310, 47312,
72004, 72005, 78468, 78470, 78471, 78474, 72920, 72921, 72922, 72924,
72925, 72928, 72929, 72932, 75602, 75473, 75472, 6055, 6054, 6053, 6047,
6046, 6030, 6028, 6027, 6025, 6023, 6022, 6021, 6019, 6018, 6017, 5928,
5182, 5136, 5100, 5045, 4861, 4856, 4833, 4832, 4443, 4442, 4424, 4423,
4413, 4412, 4406, 4350, 4349, 4347, 4326);
DELETE FROM `creature_addon` WHERE `guid` IN
(79195, 79207, 79222, 79227, 126407, 126408, 126409, 126410, 126411,
126412, 71567, 71570, 71575, 71576, 71577, 102518, 102524, 54194, 54195,
54196, 54197, 54198, 54199, 54209, 54254, 54255, 54256, 54809, 54859,
55363, 56312, 56313, 56318, 92035, 101717, 101718, 101739, 101742,
101743, 101744, 101745, 101747, 101751, 101753, 101754, 101755, 101761,
101762, 101764, 101765, 101766, 101767, 101768, 101769, 101773, 101774,
101775, 101776, 101778, 101781, 101782, 101783, 101784, 101785, 101786,
101787, 101788, 101789, 101791, 101792, 101793, 101794, 101795, 101796,
101797, 126391, 126392, 126393, 126394, 126395, 70671, 70679, 70683,
70685, 68923, 68924, 68925, 68926, 68927, 68928, 68929, 135402, 135401,
135400, 135399, 135398, 135397, 135396, 135395, 135394, 135393, 75032,
75034, 75035, 75036, 75038, 75039, 75041, 75044, 75045, 75046, 75047,
75048, 75049, 75052, 75054, 75055, 75056, 75057, 75058, 75059, 75062,
75063, 75069, 75070, 75073, 75074, 75075, 75077, 75078, 75080, 75081,
75082, 75083, 75084, 75085, 75086, 75087, 75088, 75089, 75091, 75095,
75096, 75097, 75098, 75102, 73687, 73688, 73690, 73692, 71705, 71706,
67246, 67247, 133044, 133045, 133046, 133047, 133048, 133049, 133050,
132870, 132871, 132872, 132873, 132874, 132875, 132876, 132877, 132878,
132879, 132880, 132881, 132882, 132883, 132884, 132885, 132886, 132887,
132888, 132889, 132890, 132891, 132892, 132893, 132894, 132895, 132896,
132897, 132898, 132899, 132900, 132901, 132902, 132903, 132904, 132905,
132906, 132907, 79345, 79346, 203436, 203437, 203438, 203439, 203440,
41517, 41518, 41520, 41521, 41522, 41523, 41524, 41525, 41526, 41527,
41528, 41529, 41530, 41531, 41533, 41534, 41535, 41536, 41537, 41538,
41539, 41540, 41541, 41542, 41543, 41544, 41545, 41546, 41547, 41548,
41549, 41550, 41551, 41552, 41553, 41554, 41555, 129911, 129929, 129935,
71272, 71276, 71277, 71279, 71281, 71282, 65563, 65564, 60256, 60258,
60271, 60273, 60274, 60277, 60278, 60279, 72457, 72460, 101350, 101351,
101352, 101353, 101354, 101365, 101366, 101367, 101368, 101369, 101371,
101372, 101373, 101374, 101375, 101376, 101377, 101378, 101379, 101380,
101381, 101382, 101383, 101384, 101385, 101386, 101387, 101389, 101390,
101391, 101392, 101393, 101394, 101395, 101396, 101397, 101398, 101399,
101402, 101403, 101404, 101405, 101407, 101412, 71189, 71190, 70656,
70646, 70644, 70643, 70641, 70635, 70633, 70632, 70624, 70623, 70622,
105663, 105679, 105680, 105697, 105698, 105701, 105703, 105704, 105705,
105706, 105707, 105708, 105709, 105710, 105724, 105726, 105729, 109729,
109730, 109731, 71055, 71061, 71064, 82576, 82583, 82584, 82586, 82593,
82594, 82595, 82598, 28363, 27800, 27798, 27796, 27765, 27728, 27692,
27691, 27568, 33513, 33514, 33515, 33516, 135432, 135431, 135430,
135429, 135428, 135427, 28671, 28670, 28669, 28668, 118222, 118223,
118226, 118227, 118228, 118229, 131095, 131098, 131102, 131104, 71163,
71166, 71167, 71168, 71169, 71171, 58162, 58167, 58170, 58172, 58173,
58183, 58187, 58188, 58193, 58194, 31822, 43670, 56612, 135493, 135492,
135491, 135490, 135488, 135487, 135486, 135485, 135484, 135483, 135482,
135481, 135480, 135479, 135478, 70835, 70839, 66766, 66777, 67386,
67388, 67389, 9365, 9363, 9362, 107198, 107199, 132455, 132456, 135606,
135605, 135604, 135603, 135602, 132650, 132651, 64158, 64159, 64162,
64163, 64170, 64186, 64191, 64195, 64196, 124849, 124850, 124851,
124852, 124853, 124854, 124855, 124856, 124857, 124858, 124859, 124860,
124861, 124862, 124863, 124864, 124865, 124870, 124871, 124872, 124873,
124874, 124875, 124876, 124877, 124878, 124879, 124880, 124881, 124882,
60305, 60330, 60331, 60332, 126397, 126398, 126399, 126400, 135426,
135425, 135424, 135423, 135422, 51560, 51561, 51562, 51563, 51648,
51826, 52055, 52117, 52118, 52120, 52565, 52566, 52567, 52568, 52569,
52570, 52571, 52588, 52589, 52590, 52591, 52592, 52593, 84081, 84263,
84278, 84327, 84595, 84596, 86148, 86151, 86226, 88910, 89436, 89443,
89907, 89908, 89909, 90198, 90199, 90201, 90220, 90255, 90420, 90424,
6001, 5999, 5998, 5995, 68142, 68143, 68144, 68151, 68154, 68157, 68162,
68164, 68166, 68170, 68176, 68177, 68181, 68184, 68185, 69399, 69402,
69404, 62073, 62074, 62075, 62080, 135421, 135420, 14575, 14574, 97435,
97436, 97437, 97438, 97439, 97443, 66878, 66879, 123933, 123936, 123937,
84989, 135438, 135437, 135436, 135435, 135434, 135433, 67912, 67914,
67915, 67917, 67919, 67920, 67924, 135921, 135922, 135681, 135680,
135679, 135678, 135677, 135676, 135675, 74885, 74888, 11056, 10920,
103444, 103474, 135601, 135600, 135599, 135598, 135597, 81249, 81250,
81349, 123754, 123755, 123756, 123758, 123760, 123768, 123769, 123770,
123771, 123772, 123773, 123774, 123775, 123776, 123777, 123778, 123779,
123780, 123781, 123783, 123784, 123785, 123786, 123787, 123788, 123789,
123790, 123793, 123795, 123796, 123797, 123802, 123803, 123804, 123805,
123806, 123807, 123809, 123810, 123825, 123826, 7376, 7375, 7374, 7373,
7372, 6527, 6526, 6525, 6524, 6523, 3348, 3347, 3346, 3345, 39097,
39124, 39150, 39162, 39169, 39171, 39182, 39193, 39217, 39224, 39225,
39235, 39236, 39334, 39337, 39404, 39492, 39495, 39502, 39503, 39504,
39505, 39507, 39508, 39509, 39511, 39692, 39693, 39694, 39695, 39698,
39700, 39702, 39711, 40588, 40614, 40622, 40746, 40771, 40777, 40803,
40805, 40808, 40814, 40815, 40817, 40818, 40821, 122419, 122420, 122421,
122422, 70799, 70800, 84363, 84612, 86147, 86150, 86197, 86383, 89524,
89526, 89527, 89528, 89529, 89774, 89775, 89776, 89777, 89778, 89779,
89780, 89781, 89782, 89783, 89791, 89792, 89793, 89794, 89795, 89796,
89797, 89798, 89810, 89811, 89812, 89813, 89814, 89815, 89816, 89817,
89818, 89819, 90003, 90004, 90005, 90006, 90010, 90011, 90012, 90013,
90235, 90325, 90360, 90361, 90363, 90365, 90369, 77395, 77396, 77397,
77398, 77399, 77400, 77412, 77413, 77415, 77416, 77420, 77421, 77422,
77423, 77424, 77425, 77431, 77446, 77447, 77454, 77455, 77456, 77457,
77458, 77459, 77460, 77462, 77464, 77465, 77466, 77467, 77468, 77469,
77470, 77471, 77472, 77473, 77474, 77475, 77476, 77477, 77478, 82587,
82591, 82596, 82601, 126401, 126402, 126403, 126404, 126405, 126406,
43680, 43674, 56326, 57163, 98042, 98043, 128319, 128320, 128321,
128322, 128323, 128324, 128325, 128326, 128327, 128328, 128329, 128330,
128331, 128332, 128333, 128334, 128335, 128336, 128337, 128338, 128339,
128340, 128341, 128342, 128343, 128344, 128345, 128346, 128347, 128348,
128349, 128350, 135494, 135503, 135502, 135501, 135500, 135499, 135498,
135497, 135496, 135495, 70697, 70698, 103482, 103483, 103485, 103488,
58673, 58684, 58685, 72498, 72499, 72502, 58937, 58938, 58939, 58943,
58946, 58948, 58949, 58952, 58953, 58954, 58955, 135419, 135418, 135417,
135416, 135415, 135414, 135413, 135412, 135411, 135410, 135409, 135408,
135407, 135406, 135405, 135404, 135403, 128137, 128138, 128139, 128140,
128141, 128142, 128143, 128144, 128145, 128146, 128147, 128148, 128149,
128150, 128151, 128152, 128153, 128154, 128155, 128156, 128157, 128158,
128159, 128160, 128161, 128162, 128163, 128164, 128165, 128166, 128167,
128168, 128169, 128170, 202639, 202638, 202637, 135616, 135615, 135614,
135613, 135612, 135611, 85072, 85071, 85070, 85069, 85068, 85067, 85066,
85065, 14740, 49852, 132542, 132544, 132545, 132546, 132543, 132539,
132547, 132540, 132541, 132550, 132548, 132549, 132551, 132552, 68045,
68057, 68068, 46355, 46356, 46357, 46358, 46359, 46360, 46361, 46362,
46363, 46364, 46365, 46366, 46367, 46368, 46369, 46370, 46371, 46372,
46373, 46374, 46375, 46376, 46377, 46378, 46379, 46380, 46381, 46382,
46383, 46384, 46385, 46386, 46387, 46388, 46389, 46390, 46391, 46392);

DELETE FROM `creature_template_addon` WHERE `entry` IN
(641, 30682, 20089, 30281, 16117, 28221, 30648, 19755, 19337, 16171,
21419, 20929, 20140, 18830, 21728, 22986, 636, 18815, 7456, 29038,
19984, 18272, 17149, 20453, 17467, 19961, 19740, 29036, 24467, 19944,
16335, 7396, 16177, 18207, 27629, 19952, 16867, 14864, 16459, 19792,
18595, 18858, 1179, 890, 16482, 21804, 18117, 32498, 17151, 30680,
16176, 454, 48, 18975, 19415, 17282, 16175, 2738, 18955, 18638, 10928,
16178, 18912, 17645, 17260, 21405, 1027, 32596, 16481, 11328, 6827,
10556, 8960, 31070, 19784, 157, 22082, 16334, 30681, 14869, 26645,
16068, 16460, 19762, 26965, 16912, 20474, 16943, 16174, 16173, 16030,
17269, 16488, 33229, 15351, 21763, 18952, 3681);

INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(641, 0, 0, 0, 4097, 0, ''),
(30682, 0, 0, 0, 1, 0, '57740'),
(20089, 0, 0, 0, 4097, 0, '34827'),
(30281, 0, 0, 1, 257, 0, ''),
(16117, 0, 0, 0, 4097, 0, ''),
(28221, 0, 0, 0, 1, 0, ''),
(30648, 0, 0, 0, 1, 0, '57560'),
(19755, 0, 0, 0, 4097, 0, ''),
(19337, 0, 0, 0, 4098, 0, ''),
(16171, 0, 0, 0, 1, 0, ''),
(21419, 0, 0, 0, 4097, 0, ''),
(20929, 0, 0, 0, 4097, 333, ''),
(20140, 0, 0, 0, 4097, 0, ''),
(18830, 0, 0, 8, 4097, 0, ''),
(21728, 0, 0, 0, 1, 0, ''),
(22986, 0, 0, 0, 1, 0, ''),
(636, 0, 0, 33554432, 4097, 0, '6408'),
(18815, 0, 0, 0, 257, 0, ''),
(7456, 0, 0, 0, 4097, 0, ''),
(29038, 0, 0, 65536, 1, 0, ''),
(19984, 0, 0, 2, 4097, 0, ''),
(18272, 0, 0, 0, 4097, 28, ''),
(17149, 0, 0, 0, 4097, 0, ''),
(20453, 0, 0, 0, 4097, 28, ''),
(17467, 0, 0, 0, 1, 0, ''),
(19961, 0, 0, 0, 4097, 0, ''),
(19740, 0, 0, 0, 4097, 27, ''),
(29036, 0, 0, 0, 1, 0, ''),
(24467, 0, 0, 7, 0, 0, ''),
(19944, 0, 0, 2, 4097, 333, ''),
(16335, 0, 0, 0, 4097, 233, ''),
(7396, 0, 0, 0, 4097, 0, ''),
(16177, 0, 0, 0, 1, 0, ''),
(18207, 0, 0, 8, 4097, 0, ''),
(27629, 0, 0, 50331648, 0, 0, ''),
(19952, 0, 0, 0, 4097, 0, '12544'),
(16867, 0, 0, 0, 4097, 0, ''),
(14864, 0, 0, 0, 4097, 0, ''),
(16459, 0, 0, 0, 1, 0, ''),
(19792, 0, 0, 8, 4097, 0, ''),
(18595, 0, 0, 0, 4097, 0, ''),
(18858, 0, 0, 0, 4097, 333, ''),
(1179, 0, 0, 0, 4097, 0, ''),
(890, 0, 0, 0, 1, 0, ''),
(16482, 0, 0, 0, 1, 0, ''),
(21804, 0, 0, 0, 1, 0, ''),
(18117, 0, 0, 0, 4097, 0, ''),
(32498, 0, 0, 0, 1, 0, ''),
(17151, 0, 0, 0, 4097, 0, ''),
(30680, 0, 0, 0, 1, 0, '57740'),
(16176, 0, 0, 0, 1, 0, ''),
(454, 0, 0, 0, 4097, 0, ''),
(48, 0, 0, 0, 4097, 0, ''),
(18975, 0, 0, 0, 4097, 0, ''),
(19415, 0, 0, 0, 4097, 0, '13864'),
(17282, 0, 0, 0, 4096, 0, ''),
(16175, 0, 0, 0, 1, 0, ''),
(2738, 0, 2410, 0, 4097, 0, ''),
(18955, 0, 0, 0, 1, 0, ''),
(18638, 0, 0, 8, 4097, 0, ''),
(10928, 0, 0, 0, 1, 0, ''),
(16178, 0, 0, 0, 1, 0, ''),
(18912, 0, 0, 0, 4097, 0, '35230'),
(17645, 0, 0, 0, 1, 0, ''),
(17260, 0, 0, 0, 1, 0, ''),
(21405, 0, 0, 0, 4097, 173, ''),
(1027, 0, 0, 0, 4097, 0, ''),
(32596, 0, 27913, 0, 257, 0, ''),
(16481, 0, 0, 0, 1, 0, ''),
(11328, 0, 0, 0, 4097, 0, ''),
(6827, 0, 0, 0, 1, 0, ''),
(10556, 0, 0, 0, 4096, 0, ''),
(8960, 0, 0, 0, 4097, 0, ''),
(31070, 0, 0, 50331649, 1, 0, ''),
(19784, 0, 0, 7, 4097, 0, ''),
(157, 0, 0, 0, 4097, 0, ''),
(22082, 0, 0, 0, 4097, 333, ''),
(16334, 0, 0, 0, 4097, 233, ''),
(30681, 0, 0, 0, 1, 0, '57740'),
(14869, 0, 0, 0, 4097, 0, ''),
(26645, 0, 0, 0, 257, 69, ''),
(16068, 0, 0, 0, 1, 0, ''),
(16460, 0, 0, 0, 1, 0, ''),
(19762, 0, 0, 7, 4097, 0, ''),
(26965, 0, 0, 0, 1, 0, '31261'),
(16912, 0, 207, 0, 4097, 0, ''),
(20474, 0, 0, 0, 4097, 0, ''),
(16943, 0, 0, 0, 4097, 233, ''),
(16174, 0, 0, 0, 1, 0, ''),
(16173, 0, 0, 0, 1, 0, ''),
(16030, 0, 0, 0, 1, 0, ''),
(17269, 0, 0, 0, 2, 0, ''),
(16488, 0, 0, 0, 1, 0, ''),
(33229, 0, 0, 0, 1, 0, ''),
(15351, 0, 0, 0, 4097, 0, ''),
(21763, 0, 0, 65536, 1, 0, ''),
(18952, 0, 0, 0, 4097, 69, ''),
(3681, 0, 0, 0, 4097, 0, '');
-- Spell Target Positions
DELETE FROM `spell_target_position` WHERE `id` IN (17863,17939,17943,17944,17946,17948);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(17863,289,274.8774,1.333659,85.31167,3.228859),
(17939,289,182.423,-95.8264,85.2284,1.589842),
(17943,289,83.2952,-1.70237,85.2284,0.01745329),
(17944,289,266.774,0.886003,75.2501,3.071779),
(17946,289,179.141,-91.118,71.5433,1.64061),
(17948,289,103.305,-1.677517,75.21828,6.178465);

-- Spell Script Names
DELETE FROM `spell_script_names` WHERE `spell_id` IN (17950);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(17950, 'spell_shadow_portal');

-- Spell Script Names
DELETE FROM `spell_script_names` WHERE `spell_id` IN (17863,17939,17943,17944,17946,17948);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(17863, 'spell_shadow_portal_rooms'),
(17939, 'spell_shadow_portal_rooms'),
(17943, 'spell_shadow_portal_rooms'),
(17944, 'spell_shadow_portal_rooms'),
(17946, 'spell_shadow_portal_rooms'),
(17948, 'spell_shadow_portal_rooms');

-- Texts for Darkmaster Gandling
DELETE FROM `creature_text` WHERE `entry`= 1853;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(1853,0,0, 'School is in session!',14,0,100,0,0,0, 'Darkmaster Gandling - Say on summon');

-- Risen Guardian SAI
SET @ENTRY := 11598;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,37600,71200,14300,32700,11,7068,0,0,0,0,0,2,0,0,0,0,0,0,0,"Risen Guardian - Combat - Cast Veil of Shadow"),
(@ENTRY,0,1,0,0,0,100,2,12500,28100,11900,37000,11,16583,0,0,0,0,0,2,0,0,0,0,0,0,0,"Risen Guardian - Combat - Cast Shadow Shock"),
(@ENTRY,0,2,0,0,0,60,2,12300,45800,6000,34100,11,7289,0,0,0,0,0,2,0,0,0,0,0,0,0,"Risen Guardian - Combat - Cast Shrink"),
(@ENTRY,0,3,0,0,0,60,2,24100,41300,20300,38100,11,11443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Risen Guardian - Combat - Cast Cripple"),
(@ENTRY,0,4,0,0,0,100,3,0,40,0,0,11,4974,0,0,0,0,0,2,0,0,0,0,0,0,0,"Risen Guardian - 40% HP - Cast Wither Touch"),
(@ENTRY,0,5,0,38,0,100,2,0,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Risen Guardian - On Data Set 0 1 - Set Phase 1"),
(@ENTRY,0,6,0,38,0,100,2,0,2,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Risen Guardian - On Data Set 0 1 - Set Phase 2"),
(@ENTRY,0,7,0,38,0,100,2,0,3,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Risen Guardian - On Data Set 0 1 - Set Phase 3"),
(@ENTRY,0,8,0,38,0,100,2,0,4,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Risen Guardian - On Data Set 0 1 - Set Phase 4"),
(@ENTRY,0,9,0,38,0,100,2,0,5,0,0,22,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Risen Guardian - On Data Set 0 1 - Set Phase 5"),
(@ENTRY,0,10,0,38,0,100,2,0,6,0,0,22,6,0,0,0,0,0,1,0,0,0,0,0,0,0,"Risen Guardian - On Data Set 0 1 - Set Phase 6"),
(@ENTRY,0,11,0,6,1,100,2,0,0,0,0,45,0,1,0,0,0,0,14,177372,100,0,0,0,0,0,"Risen Guardian - On Death - Set Data on go"),
(@ENTRY,0,12,0,6,2,100,2,0,0,0,0,45,0,1,0,0,0,0,14,177377,100,0,0,0,0,0,"Risen Guardian - On Death - Set Data on go"),
(@ENTRY,0,13,0,6,4,100,2,0,0,0,0,45,0,1,0,0,0,0,14,177371,100,0,0,0,0,0,"Risen Guardian - On Death - Set Data on go"),
(@ENTRY,0,14,0,6,8,100,2,0,0,0,0,45,0,1,0,0,0,0,14,177375,100,0,0,0,0,0,"Risen Guardian - On Death - Set Data on go"),
(@ENTRY,0,15,0,6,16,100,2,0,0,0,0,45,0,1,0,0,0,0,14,177373,100,0,0,0,0,0,"Risen Guardian - On Death - Set Data on go"),
(@ENTRY,0,16,0,6,32,100,2,0,0,0,0,45,0,1,0,0,0,0,14,177376,100,0,0,0,0,0,"Risen Guardian - On Death - Set Data on go");

-- Gate SAI
SET @ENTRY := 177372;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,38,0,100,2,0,1,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - On Data Set - Increment Phase"),
(@ENTRY,1,1,2,38,2,100,2,0,1,0,0,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Deactivate"),
(@ENTRY,1,2,0,61,0,100,2,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Set phase 0 (Phase 3)");

-- Gate SAI
SET @ENTRY := 177377;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,38,0,100,2,0,1,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - On Data Set - Increment Phase"),
(@ENTRY,1,1,2,38,2,100,2,0,1,0,0,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Deactivate"),
(@ENTRY,1,2,0,61,0,100,2,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Set phase 0 (Phase 3)");

-- Gate SAI
SET @ENTRY := 177371;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,38,0,100,2,0,1,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - On Data Set - Increment Phase"),
(@ENTRY,1,1,2,38,2,100,2,0,1,0,0,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Deactivate"),
(@ENTRY,1,2,0,61,0,100,2,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Set phase 0 (Phase 3)");

-- Gate SAI
SET @ENTRY := 177375;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,38,0,100,2,0,1,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - On Data Set - Increment Phase"),
(@ENTRY,1,1,2,38,2,100,2,0,1,0,0,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Deactivate"),
(@ENTRY,1,2,0,61,0,100,2,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Set phase 0 (Phase 3)");

-- Gate SAI
SET @ENTRY := 177373;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,38,0,100,2,0,1,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - On Data Set - Increment Phase"),
(@ENTRY,1,1,2,38,2,100,2,0,1,0,0,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Deactivate"),
(@ENTRY,1,2,0,61,0,100,2,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Set phase 0 (Phase 3)");

-- Gate SAI
SET @ENTRY := 177376;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,38,0,100,2,0,1,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - On Data Set - Increment Phase"),
(@ENTRY,1,1,2,38,2,100,2,0,1,0,0,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Deactivate"),
(@ENTRY,1,2,0,61,0,100,2,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, "Gate - Ready - Set phase 0 (Phase 3)");
DELETE FROM `creature_text` WHERE `entry`=15369;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(15369,0,0,'%s goes into a frenzy!',16,0,100,0,0,0,'Ayamiss frenzy');
UPDATE `creature_template` SET ScriptName='npc_hive_zara_larva' WHERE entry=15555;
DELETE FROM `spell_script_names` WHERE `spell_id`=36554;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=36554;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 36554, 0, 0, 21, 0, 1024, 0, 0, 1, 103, 0, '', 'Shadowstep - not using Shadowstep while rooted');
-- Colonel Zerran SAI
SET @ENTRY := 15385;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,10000,11000,8000,9000,11,24317,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Colonel Zerran - In Combat - Cast Sunder Armor'),
(@ENTRY,0,1,0,0,0,100,2,12000,13000,8000,9000,11,25462,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Colonel Zerran - In Combat - Cast Enlarge'),
(@ENTRY,0,2,0,0,0,100,2,13000,17000,14000,18000,23,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Colonel Zerran - In Combat - Increment phase'),
(@ENTRY,0,3,0,0,1,100,2,1000,1000,1000,1000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Colonel Zerran - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,4,0,0,1,100,2,2000,2000,2000,2000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Colonel Zerran - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,5,0,0,1,100,2,3000,3000,3000,3000,23,0,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Colonel Zerran - In Combat - Decrement phase (Phase 1)');

-- Major Yeggeth SAI
SET @ENTRY := 15386;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,10000,11000,8000,9000,11,24317,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Major Yeggeth - In Combat - Cast Sunder Armor'),
(@ENTRY,0,1,0,0,0,100,2,12000,13000,8000,9000,11,25282,0,0,0,0,0,6,0,0,0,0,0,0,0, 'Major Yeggeth - In Combat - Cast Shield of Rajaxx'),
(@ENTRY,0,2,0,0,0,100,2,13000,17000,14000,18000,23,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Major Yeggeth - In Combat - Increment phase'),
(@ENTRY,0,3,0,0,1,100,2,1000,1000,1000,1000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Major Yeggeth - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,4,0,0,1,100,2,2000,2000,2000,2000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Major Yeggeth - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,5,0,0,1,100,2,3000,3000,3000,3000,23,0,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Major Yeggeth - In Combat - Decrement phase (Phase 1)');

-- Qiraji Warrior SAI
SET @ENTRY := 15387;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removedDELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,2,0,100,3,0,25,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Qiraji Warrior - @25%HP - Cast Enrage'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Qiraji Warrior - @20%HP - Say 0');

-- Add aura for Qiraji Warrior
DELETE FROM `creature_template_addon` WHERE `entry`=15387;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES
(15387,1, '18950');

-- NPC talk text for Qiraji Warrior
DELETE FROM `creature_text` WHERE `entry` IN (15387);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(15387,0,0, '%s goes into a frenzy!',16,0,100,0,0,0, 'Qiraji Warrior');

-- Major Pakkon SAI
SET @ENTRY := 15388;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,10000,11000,8000,9000,11,24317,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Major Pakkon - In Combat - Cast Sunder Armor'),
(@ENTRY,0,1,0,0,0,100,2,12000,13000,14000,15000,11,25322,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Major Pakkon - In Combat - Cast Sweeping Slam'),
(@ENTRY,0,2,0,0,0,100,2,13000,17000,14000,18000,23,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Major Pakkon - In Combat - Increment phase'),
(@ENTRY,0,3,0,0,1,100,2,1000,1000,1000,1000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Major Pakkon - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,4,0,0,1,100,2,2000,2000,2000,2000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Major Pakkon - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,5,0,0,1,100,2,3000,3000,3000,3000,23,0,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Major Pakkon - In Combat - Decrement phase (Phase 1)');

-- Captain Drenn SAI
SET @ENTRY := 15389;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,10000,11000,8000,9000,11,24317,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Drenn - In Combat - Cast Sunder Armor'),
(@ENTRY,0,1,0,0,0,100,2,12000,13000,14000,15000,11,26550,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Captain Drenn - In Combat - Cast Lightning Cloud'),
(@ENTRY,0,2,0,0,0,100,2,13000,17000,14000,18000,23,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Drenn - In Combat - Increment phase'),
(@ENTRY,0,3,0,0,1,100,2,1000,1000,1000,1000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Drenn - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,4,0,0,1,100,2,2000,2000,2000,2000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Drenn - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,5,0,0,1,100,2,3000,3000,3000,3000,23,0,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Drenn - In Combat - Decrement phase (Phase 1)');

-- Captain Xurrem SAI
SET @ENTRY := 15390;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,10000,11000,8000,9000,11,24317,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Xurrem - In Combat - Cast Sunder Armor'),
(@ENTRY,0,1,0,0,0,100,2,12000,13000,14000,15000,11,25425,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Captain Xurrem - In Combat - Cast Shockwave'),
(@ENTRY,0,2,0,0,0,100,2,13000,17000,14000,18000,23,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Xurrem - In Combat - Increment phase'),
(@ENTRY,0,3,0,0,1,100,2,1000,1000,1000,1000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Xurrem - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,4,0,0,1,100,2,2000,2000,2000,2000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Xurrem - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,5,0,0,1,100,2,3000,3000,3000,3000,23,0,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Xurrem - In Combat - Decrement phase (Phase 1)');

-- Captain Qeez SAI
SET @ENTRY := 15391;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,10000,11000,8000,9000,11,24317,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Qeez - In Combat - Cast Sunder Armor'),
(@ENTRY,0,1,0,0,0,100,2,12000,13000,14000,15000,11,19134,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Captain Qeez - In Combat - Cast Frightening Shout'),
(@ENTRY,0,2,0,0,0,100,2,13000,17000,14000,18000,23,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Qeez - In Combat - Increment phase'),
(@ENTRY,0,3,0,0,1,100,2,1000,1000,1000,1000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Qeez - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,4,0,0,1,100,2,2000,2000,2000,2000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Qeez - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,5,0,0,1,100,2,3000,3000,3000,3000,23,0,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Qeez - In Combat - Decrement phase (Phase 1)');

-- Captain Tuubid SAI
SET @ENTRY := 15392;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,10000,11000,8000,9000,11,24317,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Tuubid - In Combat - Cast Sunder Armor'),
(@ENTRY,0,1,0,0,0,100,2,12000,13000,14000,15000,11,25471,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Captain Tuubid - In Combat - Cast Attack Order'), -- Needs scripting
(@ENTRY,0,2,0,0,0,100,2,13000,17000,14000,18000,23,1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Tuubid - In Combat - Increment phase'),
(@ENTRY,0,3,0,0,1,100,2,1000,1000,1000,1000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Tuubid - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,4,0,0,1,100,2,2000,2000,2000,2000,11,40504,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Tuubid - In Combat - Cast Cleave (Phase 1)'),
(@ENTRY,0,5,0,0,1,100,2,3000,3000,3000,3000,23,0,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Captain Tuubid - In Combat - Decrement phase (Phase 1)');
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid`=24683 AND `id`=13;
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid`=24696 AND `id`=12;
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid`=23689 AND `id`=5;
UPDATE `smart_scripts` SET `link`=0, `action_param2`=1 WHERE `entryorguid`=16357 AND `id`=3;
DELETE FROM `smart_scripts` WHERE `entryorguid`=16357 AND `id`=4;
-- NPC talk text for Gatewatcher Gyro-Kill
DELETE FROM `creature_text` WHERE `entry`=19218;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(19218,0,0, 'I predict a painful death.',14,0,100,0,0,11101, 'Gatewatcher Gyro-Kill - Aggro'),
(19218,1,0, 'Your strategy was flawed.',14,0,100,0,0,11102, 'Gatewatcher Gyro-Kill - On Kill'),
(19218,1,1, 'Yes, the only logical outcome.',12,0,100,0,0,11103, 'Gatewatcher Gyro-Kill - On Kill'),
(19218,2,0, 'Measure twice; cut once.',14,0,100,0,0,11104, 'Gatewatcher Gyro-Kill - Sawblades'),
(19218,2,1, 'If my division is correct you should be quite dead.',14,0,100,0,0,11105, 'Gatewatcher Gyro-Kill - Sawblades'),
(19218,3,0, 'An unforeseen... contingency.',14,0,100,0,0,11106, 'Gatewatcher Gyro-Kill - On Death');

-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=19218; 4.x removed
-- DELETE FROM `creature_ai_texts` WHERE `entry` BETWEEN -86 AND -81; 4.x removed
UPDATE `creature_template` SET `AIName`='', `ScriptName`= 'Boss_Gatewatcher_Gyrokill' WHERE `entry`=19218;
-- Hulking Abomination
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=31140;
DELETE FROM `smart_scripts` WHERE `entryorguid`=31140 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`event_type`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`target_type`,`comment`) VALUES
(31140,0,6,0,0,0,0,0,11,58995,2,1,'Hulking Abomination - Just died - Cast Exploding Corpse'),
(31140,1,9,1,8,40,0,0,11,50335,0,7,'Hulking Abomination - Invoker in range of 8 to 40 yards - Cast Scourge Hook'),
(31140,2,0,0,3000,3000,7000,7000,11,40504,0,2,'Hulking Abomination - In combat - Cast Cleave');
DELETE FROM `trinity_string` WHERE `entry`=2029;
INSERT INTO `trinity_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES
(2029,'|cff00ff00Ticket Response|r: [%s]|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE `creature_template` SET `ScriptName`= 'boss_gatewatcher_gyrokill' WHERE `entry`=19218;
-- Add missing doors to mechanar
SET @GUID := 6032;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @GUID AND @GUID+2;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(@GUID,184632,554,3,1,236.4597,52.36356,1.653544,3.141593,0,0,-1,0,120,0,1),
(@GUID+1,184322,554,3,1,242.874,52.314810,1.596334,3.141593,0,0,-1,0,120,0,1),
(@GUID+2,184449,554,3,1,267.9281,52.31481,27.04254,3.141593,0,0,-1,0,120,0,1);
-- Pathing for Mechano-Lord Capacitus Entry: 19219
SET @NPC := 83160;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=207.2308,`position_y`=-14.30226,`position_z`=-2.192125 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,207.2308,-14.30226,-2.192125,0,7000,0,0,100,0),
(@PATH,2,204.4302,-15.78992,-2.192125,0,1000,0,0,100,0),
(@PATH,3,207.7613,-18.93377,-2.192125,0,0,0,0,100,0),
(@PATH,4,208.2819,-16.48228,-2.192125,0,1000,0,0,100,0),
(@PATH,5,228.1113,-0.829701,-0.8854336,0,0,0,0,100,0),
(@PATH,6,226.6032,19.45208,-1.726556,0,14000,0,0,100,0),
(@PATH,7,209.7744,-12.69758,-2.192125,0,1000,0,0,100,0),
(@PATH,8,209.7744,-12.69758,-2.192125,3.141593,1000,0,0,100,0),
(@PATH,9,228.1113,-0.829701,-0.8854336,0,0,0,0,100,0),
(@PATH,10,226.6032,19.45208,-1.726556,0,0,0,0,100,0),
(@PATH,11,204.9646,26.38312,-0.005853632,0,13000,0,0,100,0),
(@PATH,12,209.7744,-12.69758,-2.192125,0,1000,0,0,100,0),
(@PATH,13,209.7744,-12.69758,-2.192125,3.141593,1000,0,0,100,0),
(@PATH,14,224.3664,-23.35326,-2.192125,0,0,0,0,100,0),
(@PATH,15,231.1084,-38.22675,8.909556E-07,0,15000,0,0,100,0),
(@PATH,16,209.7744,-12.69758,-2.192125,0,0,0,0,100,0),
(@PATH,17,209.7744,-12.69758,-2.192125,3.141593,1000,0,0,100,0),
(@PATH,18,189.2316,-17.36449,-2.192126,0,0,0,0,100,0),
(@PATH,19,185.7177,-4.297129,-1.142366,0,0,0,0,100,0),
(@PATH,20,191.9589,6.435908,-0.7838742,0,0,0,0,100,0),
(@PATH,21,196.1359,21.01234,-1.426585,0,0,0,0,100,0),
(@PATH,22,207.8954,18.24695,-2.192125,0,0,0,0,100,0),
(@PATH,23,213.9077,10.01895,-2.192125,0,11000,0,0,100,0),
(@PATH,24,209.7744,-12.69758,-2.192125,0,0,0,0,100,0),
(@PATH,25,209.7744,-12.69758,-2.192125,3.141593,2000,0,0,100,0),
(@PATH,26,203.706,-11.63055,-2.192125,0,10000,0,0,100,0),
(@PATH,27,206.4484,-14.27736,-2.192125,0,0,0,0,100,0),
(@PATH,28,208.3172,-13.38252,-2.192125,0,0,0,0,100,0),
(@PATH,29,209.3133,-12.82924,-2.192125,0,7000,0,0,100,0),
(@PATH,30,204.3208,-10.91346,-2.192125,0,0,0,0,100,0),
(@PATH,31,207.38,-13.36442,-2.192125,0,0,0,0,100,0),
(@PATH,32,207.7303,-11.56095,-2.192125,0,7000,0,0,100,0),
(@PATH,33,195.6332,-15.0944,-2.192125,0,0,0,0,100,0),
(@PATH,34,195.4723,-29.45176,-2.192125,0,0,0,0,100,0),
(@PATH,35,202.765,-41.79265,-2.192125,0,7000,0,0,100,0),
(@PATH,36,209.7744,-12.69758,-2.192125,0,1000,0,0,100,0),
(@PATH,37,209.7744,-12.69758,-2.192125,3.141593,1000,0,0,100,0),
(@PATH,38,189.2316,-17.36449,-2.192126,0,0,0,0,100,0),
(@PATH,39,185.7177,-4.297129,-1.142366,0,0,0,0,100,0),
(@PATH,40,191.9589,6.435908,-0.7838742,0,0,0,0,100,0),
(@PATH,41,196.1359,21.01234,-1.426585,0,0,0,0,100,0),
(@PATH,42,207.8954,18.24695,-2.192125,0,0,0,0,100,0),
(@PATH,43,213.9077,10.01895,-2.192125,0,6000,0,0,100,0),
(@PATH,44,209.7744,-12.69758,-2.192125,0,20000,0,0,100,0),
(@PATH,45,210.4122,-9.19214,-2.192125,0,0,0,0,100,0);
UPDATE `creature_template` SET `AIName` = '',`ScriptName` = 'boss_mechano_lord_capacitus' WHERE `entry` =19219;
UPDATE `creature_template` SET `unit_flags`=`unit_flags` |2 |33554432 WHERE `entry` IN (20405,21534); -- Nether Charge

-- DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (19219,20405); 4.x removed
-- DELETE FROM `creature_ai_texts` WHERE `entry` BETWEEN -92 AND -87; 4.x removed

DELETE FROM `creature_template_addon` WHERE `entry` IN (20405,21534);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(20405,0,0,0,0,0,'37670 35150'), -- Nether Charge
(21534,0,0,0,0,0,'37670 35150'); -- Nether Charge (1)

SET @ENTRY := 20405; -- Nether Charge

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,0,0,100,0,14000,14000,1000,1000,11,35151,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"Nether Bomb - Nether Charge Pulse"),
(@ENTRY,0,1,0,0,0,100,0,0,0,0,0,20,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"Nether Charge - No Melee"),
(@ENTRY,0,2,0,0,0,100,0,0,0,14000,14000,21,0,0,0,0,0,0,0,0,0,0,0.0,0.0,0.0,0.0,"Nether Charge - Prevent Combat Movement When Start...");

DELETE FROM `creature_text` WHERE `entry` = 19219;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(19219, 0, 0, 'You should split while you can.', 14, 0, 100, 0, 0, 11162, 'Mechano-Lord Capacitus - Aggro'),
(19219, 1, 0, 'Go ahead, gimme your best shot. I can take it!', 14, 0, 100, 0, 0, 11166, 'Mechano-Lord Capacitus - Yells'), -- Reflective Damage Shield
(19219, 2, 0, 'Think you can hurt me, huh? Think I''m afraid a'' you?', 14, 0, 100, 0, 0, 11165, 'Mechano-Lord Capacitus - Yells'), -- Reflective Magic Shield
(19219, 3, 0, 'Can''t say I didn''t warn you!', 14, 0, 100, 0, 0, 11163, 'Mechano-Lord Capacitus - Killing a player'),
(19219, 3, 1, 'Damn, I''m good!', 14, 0, 100, 0, 0, 11164, 'Mechano-Lord Capacitus - Killing a player'),
(19219, 4, 0, 'Bully!', 14, 0, 100, 0, 0, 11167, 'Mechano-Lord Capacitus - Death');
DELETE FROM `waypoint_scripts` WHERE `id` = 8316001;
UPDATE `gameobject_template` SET `ScriptName`='' WHERE `entry`=130511;
SET @CONTROL_WATCHER := 58524;
SET @ETHREAL         := 58548;
SET @GOSSIP          := 10028;
SET @EYE             := 193058;
SET @WATCHER         := 31110;
SET @MIRROR_NPC      := 31005;
SET @FIGMENT_SPELL   := 57530; 
SET @PLAYER_MIRROR   := 58122;
SET @CONTROL_START   := 58120;
SET @MIRROR_SPELL    := 57528;
SET @WEAPON_COPY     := 41055;
SET @COPY_OFF_HAND   := 45205;

UPDATE `creature_template` SET `spell1` = 58541, `spell2` = 58544, `spell3` = 58543, `spell4` = 58562, `spell5` = 58563, `spell6` = 58658 WHERE `entry` = @WATCHER;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@MIRROR_NPC;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`= @EYE;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @WATCHER;
DELETE FROM `smart_scripts` WHERE `entryorguid`= @EYE;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@EYE,1,0,1,62,0,100,0,@GOSSIP,0,0,0,85,@CONTROL_WATCHER,2,0,0,0,0,7,0,0,0,0,0,0,0, 'On Gossip Option Select - Cast Control Eidolon Watcher - Action Invoker'),
(@EYE,1,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Eye of Dominion - On link - Close Gossip Option'),
(@EYE,1,2,3,61,0,100,0,0,0,0,0,85,@PLAYER_MIRROR,2,0,0,0,0,7,0,0,0,0,0,0,0, 'Eye of Dominion - On link - Summon Player Mirror'),
(@EYE,1,3,0,61,0,100,0,0,0,0,0,15,13168,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Eye of Dominion - On link - Complete quest');
DELETE FROM `smart_scripts` WHERE `entryorguid`= @MIRROR_NPC;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@MIRROR_NPC,0,0,1,54,0,100,1,0,0,0,0,85,@MIRROR_SPELL,2,0,0,0,0,1,0,0,0,0,0,0,0, 'On spawn - Cast Mirror Spell - Action Invoker'),
(@MIRROR_NPC,0,1,2,61,0,100,1,0,0,0,0,85,@WEAPON_COPY,2,0,0,0,0,1,0,0,0,0,0,0,0,'On Link - Copy Main Hand - Action Invoker'),
(@MIRROR_NPC,0,2,3,61,0,100,1,0,0,0,0,85,@COPY_OFF_HAND,2,0,0,0,0,1,0,0,0,0,0,0,0,'On Link - Copy Offhand - Action Invoker'),
(@MIRROR_NPC,0,3,0,61,0,100,1,0,0,0,0,11,@CONTROL_START,2,0,0,0,0,1,0,0,0,0,0,0,0,'On Spawn - Cast Start Control - Action Invoker');

DELETE FROM `smart_scripts` WHERE `entryorguid`=@WATCHER;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@WATCHER,0,0,0,54,0,100,1,0,0,0,0,11,@ETHREAL,2,0,0,0,0,1,0,0,0,0,0,0,0, 'On spawn - Cast Ethreal Aura - On self');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = @EYE;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22,4,@EYE,1,0,9,0,13168,0,0,0,0,'','Execute SAI line only if player has quest active');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@MIRROR_SPELL;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,7,@MIRROR_SPELL,0,0,31,0,3,@MIRROR_NPC,0,0,0,'','Spell target Mirror npc');
-- Quest: Gluttonous Lurkers (12527)
-- Zul'drak Rat: Spellclick spells
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=28202;
INSERT INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`cast_flags`) VALUE
(28202,50926,1),
(28202,50927,2);

-- Zul'drak Rat: SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=28202;
DELETE FROM `smart_scripts` WHERE `entryorguid`=28202 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`event_type`,`event_param1`,`action_type`,`target_type`,`comment`) VALUES
(28202,8,50926,41,1,'Zuldrak Rat - On spell hit of Gluttonous Lurkers: Create ZulDrak Rat Cover - Despawn');

-- Zul'drak Rat spell: Script assignment
DELETE FROM `spell_script_names` WHERE `spell_id`=50894;
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUE
(50894,'spell_zuldrak_rat');

-- Zul'drak Rat spell: Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=50894;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ErrorType`,`Comment`) VALUE
(17,50894,31,1,3,28145,12,'Zuldrak Rat - Target has to be Lurking Basilisk');

-- Lurking Basilisk: SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=28145;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=28145; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=28145 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`event_type`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`target_type`,`comment`) VALUE
(28145,0,5000,5000,17000,27000,11,54470,2,'Lurking Basilisk - In Combat - Cast Venemous Bite');

-- Gorged Lurking Basilisk: SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=28203;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=28203; 4.x removed
DELETE FROM `smart_scripts` WHERE `entryorguid`=28203 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`event_type`,`event_param1`,`action_type`,`target_type`,`comment`) VALUES
(28203,8,50918,41,1,'Gorged Lurking Basilisk - On Spell Hit of Create Basilisk Crystals Cover - Despawn');
-- Zul'drak Rat spell: Script assignment
DELETE FROM `spell_script_names` WHERE `spell_id`=50894;
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUE
(50894,'spell_q12527_zuldrak_rat');
SET @EYE := 193058;
SET @MIRROR_SPELL := 57528;
SET @MIRROR_NPC := 31005;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = @EYE;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (13,17) AND `SourceEntry`=@MIRROR_SPELL;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22,1,@EYE,1,0,9,0,13168,0,0,0,0,'','Execute SAI line only if player has quest active'),
(17,0,@MIRROR_SPELL,0,0,31,0,3,@MIRROR_NPC,0,0,0,'','Spell target Mirror npc');
-- UPDATE `version` SET `db_version`='TDB 335.50', `cache_id`=50 LIMIT 1; 4.x removed
UPDATE `game_event` SET `start_time`='2013-01-27 00:01:00',`length`=20160 WHERE `eventEntry`=7; -- Lunar Festival
UPDATE `game_event` SET `start_time`='2013-02-10 00:01:00' WHERE `eventEntry`=8;  -- Love is in the Air
UPDATE `game_event` SET `start_time`='2013-03-31 00:01:00' WHERE `eventEntry`=9;  -- Noblegarden
UPDATE `game_event` SET `start_time`='2013-04-28 00:01:00' WHERE `eventEntry`=10; -- Children's Week
UPDATE `game_event` SET `start_time`='2013-06-21 00:01:00' WHERE `eventEntry`=1;  -- Midsummer Fire Festival
UPDATE `game_event` SET `start_time`='2013-09-13 00:01:00' WHERE `eventEntry`=11; -- Harvest Festival
UPDATE `game_event` SET `start_time`='2013-09-19 00:01:00' WHERE `eventEntry`=50; -- Pirates' Day
UPDATE `game_event` SET `start_time`='2013-09-20 00:01:00' WHERE `eventEntry`=24; -- Brewfest
UPDATE `game_event` SET `start_time`='2013-10-18 01:00:00' WHERE `eventEntry`=11; -- Hallow's End
UPDATE `game_event` SET `start_time`='2013-11-01 01:00:00' WHERE `eventEntry`=51; -- Day of the Dead
UPDATE `game_event` SET `start_time`='2013-11-24 01:00:00' WHERE `eventEntry`=26; -- Pilgrim's Bounty
UPDATE `game_event` SET `start_time`='2013-12-15 06:00:00' WHERE `eventEntry`=2;  -- Winter Veil
RENAME TABLE ip2nationcountries TO ip2nationcountries_temp,
             ip2nationcountries_temp TO ip2nationCountries;
-- Valves
UPDATE `gameobject` SET `spawntimesecs`=300,`animprogress`=100,`state`=1 WHERE `guid`=151895;
UPDATE `gameobject` SET `spawntimesecs`=300,`animprogress`=100 WHERE `guid`=221;

-- Max Blasto: Spawn point
UPDATE `event_scripts` SET `x`=4029.0,`y`=4883.078,`z`=-12.71482,`o`=1.310609 WHERE `id`=17207 AND `command`=10 AND `datalong`=25832;
-- Max Blasto: SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=25832;
DELETE FROM `smart_scripts` WHERE `entryorguid`=25832 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`event_type`,`action_type`,`action_param1`,`target_type`,`target_param1`,`comment`) VALUE
(25832,0,54,49,0,21,20,'Max Blasto - Just summoned - Start attack'),
(25832,1,4,1,0,0,0,'Max Blasto - On aggro - Say');
-- Max Blasto: Texts
DELETE FROM `creature_text` WHERE `entry`=25832;
INSERT INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`probability`,`comment`) VALUE
(25832,0,0,'I am the herald of Mechazod. You will be decursed!',12,100,'Max Blasto - Just summoned'); -- Proofed from video: https://www.youtube.com/watch?v=-hi6a70U3gM

-- The Grinder: Spawn point
UPDATE `event_scripts` SET `x`=3781.2,`y`=4832.596,`z`=-13.04141,`o`=5.141372 WHERE `id`=17208 AND `command`=10 AND `datalong`=25833;
-- The Grinder: SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=25833;
DELETE FROM `smart_scripts` WHERE `entryorguid`=25833 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`event_type`,`action_type`,`action_param1`,`target_type`,`target_param1`,`comment`) VALUE
(25833,0,54,49,0,21,20,'The Grinder - Just summoned - Start attack'),
(25833,1,4,1,0,0,0,'The Grinder - On aggro - Say');
-- The Grinder: Texts
DELETE FROM `creature_text` WHERE `entry`=25833;
INSERT INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`probability`,`comment`) VALUE
(25833,0,0,'Your meddling is at an end. Mechazod will relieve your curse once I am done with you.',12,100,'The Grinder - Just summoned');

-- ED-210: Spawn point
UPDATE `event_scripts` SET `x`=4208.38,`y`=4807.071,`z`=-12.7529,`o`=5.809316 WHERE `id`=16909 AND `command`=10 AND `datalong`=25831;
-- ED-210: SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=25831;
DELETE FROM `smart_scripts` WHERE `entryorguid`=25831 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`event_type`,`action_type`,`action_param1`,`target_type`,`target_param1`,`comment`) VALUE
(25831,0,54,49,0,21,20,'ED-210 - Just summoned - Start attack'),
(25831,1,4,1,0,0,0,'ED-210 - On aggro - Say');
-- ED-210: Texts
DELETE FROM `creature_text` WHERE `entry`=25831;
INSERT INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`probability`,`comment`) VALUE
(25831,0,0,'ED-210 online!',12,100,'ED-210 - Just summoned');

-- Twonky: Spawn point
UPDATE `event_scripts` SET `x`=4118.113,`y`=5087.803,`z`=-1.433036,`o`=2.253069 WHERE `id`=16904 AND `command`=10 AND `datalong`=25830;
-- Twonky: SAI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=25830;
DELETE FROM `smart_scripts` WHERE `entryorguid`=25830 AND `source_type`=0;
INSERT INTO `smart_scripts`(`entryorguid`,`id`,`event_type`,`action_type`,`action_param1`,`target_type`,`target_param1`,`comment`) VALUE
(25830,0,54,49,0,21,20,'Twonky - Just summoned - Start attack'),
(25830,1,4,1,0,0,0,'Twonky - On aggro - Say');
-- Twonky: Texts
DELETE FROM `creature_text` WHERE `entry`=25830;
INSERT INTO `creature_text`(`entry`,`groupid`,`id`,`text`,`type`,`probability`,`comment`) VALUE
(25830,0,0,'Twonky!',12,100,'Twonky - On aggro');
SET @CGUID :=43501;
SET @ENTRY :=25233; -- Lunk-tusk

UPDATE `creature_template` SET `unit_flags`=33536 WHERE `entry`=@ENTRY;

DELETE FROM `creature` WHERE `id`=@ENTRY;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID, @ENTRY, 571, 1, 1, 1230.617, -3349.278, 203.7188, 3.385939, 120, 0, 0);

DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(@ENTRY, 0, 0x1, 0x1, '');
-- Vilebranch Speaker
UPDATE `creature_template` SET `AIName`= '', `ScriptName`= 'mob_vilebranch_speaker' WHERE `entry`=11391;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=11391;

-- NPC talk text for Bloodlord Mandokir from sniff
DELETE FROM `creature_text` WHERE `entry`=11382 AND `groupid`=4;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(11382,4,0, '%s goes into a rage after seeing his raptor fall in battle!',16,0,100,0,0,0, 'Bloodlord Mandokir - Ohgan Dead');


UPDATE `game_event` SET `start_time`='2013-10-18 01:00:00' WHERE `eventEntry`=12; -- Hallow's End
-- Reconnaissance Flight (12671)

SET @QUEST          := 12671;
SET @PLANE          := 28710; -- Vic's Flying Machine
SET @PILOT          := 28646; -- Pilot Vic
SET @VIC            := 28746; -- Pilot Vic
SET @SPELL_PLANE    := 52256; -- Vic's Flying Machine Validate (must have condition to target player)
SET @SPELL_ROCKETS  := 52254; -- Air-to-Air Rockets
SET @NPC_SCREECHER  := 28170; -- Frosthowl Screecher
SET @TEMP_LANDING   := 300215; -- TEMP Landing Pad

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@VIC;
UPDATE `creature_template` SET `spell1`='52254',`spell2`='52226',`ScriptName`='npc_vics_flying_machine' WHERE `entry`=@PLANE;

DELETE FROM `creature_template_addon` WHERE `entry`=@PLANE;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@PLANE,0,0,0,1,0,'52211 52260'); -- Flight -- Vic's Flying Machine Aggro Periodic

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@VIC,@PLANE) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@VIC,0,0,0,19,0,100,0,@QUEST,0,0,0,11,@SPELL_PLANE,0,0,0,0,0,7,0,0,0,0,0,0,0,"On quest accept - Cast spell - Invoker");

DELETE FROM `waypoint_data` WHERE `id`=@PLANE;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PLANE,1,5494.87,4747.031,-187.8783,0,0,0,0,100,0),
(@PLANE,2,5485.906,4740.681,-184.5172,0,0,0,0,100,0),
(@PLANE,3,5472.882,4732.441,-172.1562,0,0,0,0,100,0),
(@PLANE,4,5460.913,4712.542,-157.8784,0,0,0,0,100,0),
(@PLANE,5,5452.147,4673.518,-137.8906,0,0,0,0,100,0),
(@PLANE,6,5449.777,4630.711,-126.6684,0,0,0,0,100,0),
(@PLANE,7,5507.432,4506.089,-126.6684,0,0,0,0,100,0),
(@PLANE,8,5586.811,4465.319,-126.6684,0,0,0,0,100,0),
(@PLANE,9,5676.111,4437.874,-126.6684,0,0,0,0,100,0),
(@PLANE,10,5756.449,4391.051,-91.25155,0,0,0,0,100,0),
(@PLANE,11,5817.163,4269.269,-91.25155,0,0,0,0,100,0),
(@PLANE,12,5856.145,4202.824,-68.29334,0,0,0,0,100,0),
(@PLANE,13,5921.523,4105.534,-68.29334,0,0,0,0,100,0),
(@PLANE,14,5995.021,4029.883,-13.97897,0,0,0,0,100,0),
(@PLANE,15,6118.298,3883.733,94.11866,0,0,0,0,100,0),
(@PLANE,16,6132.932,3750.75,176.5123,0,0,0,0,100,0),
(@PLANE,17,6165.863,3748.196,198.9567,0,0,0,0,100,0),
(@PLANE,18,6208.277,3782.189,196.8455,0,0,0,0,100,0),
(@PLANE,19,6227.615,3836.871,191.6234,0,0,0,0,100,0),
(@PLANE,20,6218.483,3885.17,191.6234,0,0,0,0,100,0),
(@PLANE,21,6197.045,3890.053,191.6234,0,0,0,0,100,0),
(@PLANE,22,6168.752,3864.161,191.6234,0,0,0,0,100,0),
(@PLANE,23,6204.037,3807.239,191.6234,0,0,0,0,100,0),
(@PLANE,24,6232.975,3820.852,191.6234,0,0,0,0,100,0),
(@PLANE,25,6219.879,3854.341,166.6234,0,0,0,0,100,0),
(@PLANE,26,6210.428,3855.185,154.4848,0,0,0,0,100,0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@PLANE;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(@PLANE,46598,1,1);

DELETE FROM `vehicle_template_accessory` WHERE `entry`=@PLANE;
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(@PLANE,@PILOT,0,1,'Pilot Vic',7,0);

DELETE FROM `creature_text` WHERE `entry` IN (@PILOT,@PLANE);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@PILOT,0,0,'We''re off!  Watch out for those vines!',12,0,100,0,0,0,'Pilot Vic to Vic''s Flying Machine'),
(@PILOT,1,0,'Looks like the Scourge have hit the area ahead pretty bad...',12,0,100,0,0,0,'Pilot Vic to Vic''s Flying Machine'),
(@PILOT,2,0,'You see that?  She''s... huge!',12,0,100,0,0,0,'Pilot Vic to Vic''s Flying Machine'),
(@PILOT,3,0,'Here we go!  Hold on tight -- there''s rough wind ahead!',12,0,100,0,0,0,'Pilot Vic to Vic''s Flying Machine'),
(@PILOT,4,0,'The glacier is seeping in from Icecrown... and undead everywhere!  Wait ''til the professor gets a hold of this!',12,0,100,0,0,0,'Pilot Vic to Vic''s Flying Machine'),
(@PILOT,5,0,'They''re coming at us!  Be quick with those rockets!',12,0,100,0,0,0,'Pilot Vic to Vic''s Flying Machine'),
(@PILOT,6,0,'Aggggh!  I''m hit!  You''re going to have to get us back!  Quick, before the plane explodes!',12,0,100,0,0,0,'Pilot Vic to Vic''s Flying Machine'),
(@PLANE,0,0,'The engine''s blown!  Fly Vic''s Flying Machine back to Lakeside Landing!',41,0,100,0,0,0,'Vic''s Flying Machine to Pilot Vic');

DELETE FROM `conditions` WHERE `SourceEntry`=@SPELL_ROCKETS AND `SourceTypeOrReferenceId`=13;
DELETE FROM `conditions` WHERE `SourceEntry`=52226 AND `SourceTypeOrReferenceId`=17;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_ROCKETS,0,0,31,0,3,28170,0,0,0,0,'','Air-to-Air Rockets can target Frosthowl Screecher'),
-- because vehicles ignore spell focus we add an extra condition to fill in for this
(17,0,52226,0,0,30,0,300215,10,0,0,0,0,'','Requires TEMP Landing Pad near to cast Land Flying Machine');

-- guessed position
DELETE FROM `gameobject` WHERE `id`=@TEMP_LANDING;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(290,@TEMP_LANDING,571,1,1,5505.58,4748.35,-194.434,0,0,0,0,0,300,0,1);

-- Frosthowl Screecher
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@NPC_SCREECHER;
-- DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@NPC_SCREECHER; 4.x removed
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC_SCREECHER;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@NPC_SCREECHER,0,0,0,0,0,100,0,3000,4000,3000,4000,11,52257,0,0,0,0,0,2,0,0,0,0,0,0,0,'Cast Shadow Bolt');
UPDATE `game_event` SET `start_time`='2013-09-13 00:01:00' WHERE `eventEntry`=11; -- Harvest Festival
DELETE FROM `creature_addon` WHERE guid=49286;
DELETE FROM `spell_script_names` WHERE `spell_id`=24314;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(24314, 'spell_threatening_gaze');
-- Add some missing go gossip
DELETE FROM `gossip_menu` WHERE `entry` IN (6448,6449,6450,6451);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(6448,7669),(6449,7670),(6450,7673),(6451,7674);
-- Text for Crushridge Warmonger
SET @ENTRY := 2287;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,'Raaar!!! Me smash $R',12,0,100,0,0,0,'Crushridge Warmonger'),
(@ENTRY,0,1,'Me smash! You die!',12,0,100,0,0,0,'Crushridge Warmonger'),
(@ENTRY,0,2,'I''ll crush you!',12,0,100,0,0,0,'Crushridge Warmonger');
-- proper faction for Bran in Halls of Stone
UPDATE `creature_template` SET `faction_A`=1665,`faction_H`=1665 WHERE `entry` IN (28070,31366);
-- Spawn 4 missing Zul'Gurub Panther Triggers
SET @GUID := 48311;
DELETE FROM `creature` WHERE `guid` IN (@GUID,@GUID+1,@GUID+2,@GUID+3);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`, `position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID,15091,309,1,1,0,0,-11518.29,-1649.965,41.38264,5.131268,7200,0,0,1,0,0,0,0,0),
(@GUID+1,15091,309,1,1,0,0,-11518.51,-1649.303,41.38264,5.864306,7200,0,0,1,0,0,0,0,0),
(@GUID+2,15091,309,1,1,0,0,-11518.46,-1651.542,41.38264,0.2617994,7200,0,0,1,0,0,0,0,0),
(@GUID+3,15091,309,1,1,0,0,-11516.86,-1604.25,41.38264,5.288348,7200,0,0,1,0,0,0,0,0);
SET @BRANN  := 29579;
SET @SNOW_TARGET := 29599;
SET @QUEST  := 12920;
SET @GOSSIP := 9853;

UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP, `minlevel`=80,`maxlevel`=80,`npcflag`=`npcflag`|1,`unit_flags`=`unit_flags`|32776, `AIName` = 'SmartAI', `equipment_id`=2485 WHERE `entry`=@BRANN;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry`=@SNOW_TARGET;
UPDATE `creature_model_info` SET `bounding_radius`=0.347,`combat_reach`=1.5,`gender`=0 WHERE `modelid`=26356;
DELETE FROM `creature_template_addon` WHERE `entry` IN (@BRANN,@SNOW_TARGET);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@BRANN,0,0,2,0, ''),
(@SNOW_TARGET,0,0,1,0, '54717');
DELETE FROM `creature_equip_template` WHERE `entry`=2485;
INSERT INTO `creature_equip_template` (`entry`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(2485,0,0,25972);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@BRANN;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(@BRANN,46598,1,1);
DELETE FROM `vehicle_template_accessory` WHERE `entry`=@BRANN;
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(@BRANN,@SNOW_TARGET,0,1,'Brann Snow Target',7,0);

DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=13641;
DELETE FROM `gossip_menu` WHERE `entry`=10145 AND `text_id`=14089;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(@GOSSIP,13641),(10145,14089);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP AND `id` IN (0,1);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,0,'Do you understand me? We should be able to understand each other now.',1,1,0,0,0,0,''),
(@GOSSIP,1,0,'What kind of help do you require?',1,1,10145,0,0,0,'');

DELETE FROM `creature_text` WHERE `entry`=@BRANN;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@BRANN,0,0,"I... I can understand you now! Well, now that we can talk to each other, you have some explaining to do!",12,0,100,5,0,0,'Brann Bronzebeard text0'),
(@BRANN,1,0,"How did you get my communicator from the Explorers League?",12,0,100,5,0,0,'Brann Bronzebeard text1'),
(@BRANN,2,0,"If the Explorers League sent men, I didn't see any trace of them. I found your note buried in a camp overrun by iron dwarves.",12,0,100,0,0,0,'Player text2'),
(@BRANN,3,0,"You have my thanks for dispatching the iron dwarves. But why would the Horde have an interest in me?",12,0,100,6,0,0,'Brann Bronzebeard text3'),
(@BRANN,4,0,"A scout found the remains of your journal in Thor Modan. We've been looking for you ever since.",12,0,100,0,0,0,'Player text4'),
(@BRANN,5,0,"That wouldn't be Scout Vor'takh, would it? Even I know of his reputation for ruthlessness. He means to abduct me, then?",12,0,100,5,0,0,'Brann Bronzebeard text5'),
(@BRANN,6,0,"If you've seen the journal, then you know what I've been discovering. The titans' own creations are at war with each other!",12,0,100,5,0,0,'Brann Bronzebeard text6'),
(@BRANN,7,0,"Loken and his iron dwarf minions have ousted the Earthen from Ulduar and taken over the city.",12,0,100,5,0,0,'Brann Bronzebeard text7'),
(@BRANN,8,0,"If we spend our time and strength fighting with each other, Loken will use Ulduar's resources to destroy both Horde and Alliance.",12,0,100,6,0,0,'Brann Bronzebeard text8'),
(@BRANN,9,0,"Speak to the commander at your post, lad, and persuade him to abandon Vor'takh's foolish plan.",12,0,100,6,0,0,'Brann Bronzebeard Text10');

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@BRANN,@SNOW_TARGET);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@BRANN*100;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@BRANN,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,55579,2,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard - On gossip select - Spellcast Trigger Brann Signal'),
(@BRANN,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard - On gossip select - Close gossip'),
(@BRANN,0,2,0,8,0,100,0,55578,0,0,0,80,@BRANN*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Brann Bronzebeard - On spellhit Brann Signal to Self - Start script'),
(@SNOW_TARGET,0,0,0,11,0,100,0,0,0,0,0,3,0,26241,0,0,0,0,1,0,0,0,0,0,0,0,'Brann Snow Target - On spawn - Morph to model'),
(@BRANN*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,23,0,0,0,0,0,0,0,'Brann Bronzebeard script - Say text0'),
(@BRANN*100,9,1,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Say text0'),
(@BRANN*100,9,2,0,0,0,100,0,3100,3100,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,'Brann Bronzebeard script - Play emote point'),
(@BRANN*100,9,3,0,0,0,100,0,3200,3200,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Say text1'),
(@BRANN*100,9,4,0,0,0,100,0,5600,5600,0,0,84,2,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Player say text2'),
(@BRANN*100,9,5,0,0,0,100,0,6300,6300,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Say text3'),
(@BRANN*100,9,6,0,0,0,100,0,7200,7200,0,0,84,4,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Player say text4'),
(@BRANN*100,9,7,0,0,0,100,0,6400,6400,0,0,1,5,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Say text5'),
(@BRANN*100,9,8,0,0,0,100,0,7200,7200,0,0,1,6,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Say text6'),
(@BRANN*100,9,9,0,0,0,100,0,7200,7200,0,0,1,7,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Say text7'),
(@BRANN*100,9,10,0,0,0,100,0,7200,7200,0,0,1,8,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Say text8'),
(@BRANN*100,9,11,0,0,0,100,0,7100,7100,0,0,1,9,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Say text9'),
(@BRANN*100,9,12,0,0,0,100,0,3000,3000,0,0,33,@BRANN,0,0,0,0,0,7,0,0,0,0,0,0,0,'Brann Bronzebeard script - Quest credit');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=55578;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,55578,0,31,3,@BRANN,0,0,'', 'Spell Brann Signal to Self targets Brann'),
(15,@GOSSIP,0,0,9,@QUEST,0,0,0,'', 'Show gossip menu option if player has quest 12920'),
(15,@GOSSIP,1,0,9,12926,0,0,0,'', 'Show gossip menu option if player has quest 12926');
-- remove auras that are already applied in SAI
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry` IN (
215, -- Defias Night Runner
579, -- Shadowhide Assassin
938, -- Kurzen Commando
1040, -- Fen Creeper
8550, -- Shadowmage
9299, -- Gaeriyan
10414, -- Patchwork Horror
10426, -- Crimson Inquisitor
10471, -- Scholomance Acolyte
11885, -- Blighthound
16017, -- Patchwork Golem
16375, -- Sewage Slime
21080, -- Dormant Infernal
22853, -- Illidari Defiler
24818, -- Anvilrage Taskmaster
25596, -- Infected Kodo Beast
25781, -- Oil Pool
26624, -- Wretched Belcher
26782, -- Crystalline Keeper
28161); -- Chicken Escapee
-- delete 632 creature_template_addon data that contain no information (bytes2=1 is the default)
DELETE FROM `creature_template_addon` WHERE `entry` IN (
890, -- Fawn
6827, -- Crab
8996, -- Voidwalker Minion
9396, -- Ground Pounder
10928, -- Succubus Minion
15475, -- Beetle
15547, -- Spectral Charger
15548, -- Spectral Stallion
15974, -- Dread Creeper
15975, -- Carrion Spinner
15979, -- Tomb Horror
16017, -- Patchwork Golem
16020, -- Mad Scientist
16021, -- Living Monstrosity
16022, -- Surgical Assistant
16025, -- Stitched Giant
16030, -- Maggot
16036, -- Frenzied Bat
16037, -- Plagued Bat
16056, -- Diseased Maggot
16057, -- Rotting Maggot
16067, -- Deathcharger Steed
16068, -- Larva
16137, -- Naxxramas Military Sub-Boss Trigger
16145, -- Death Knight Captain
16154, -- Risen Squire
16156, -- Dark Touched Warrior
16165, -- Necro Knight
16171, -- Coldmist Widow
16173, -- Shadowbat
16174, -- Greater Shadowbat
16175, -- Vampiric Shadowbat
16176, -- Shadowbeast
16177, -- Dreadbeast
16178, -- Phase Hound
16194, -- Unholy Axe
16211, -- Naxxramas Combat Dummy
16215, -- Unholy Staff
16216, -- Unholy Swords
16244, -- Infectious Ghoul
16297, -- Mutated Grub
16375, -- Sewage Slime
16412, -- Ghostly Baker
16459, -- Wanton Hostess
16460, -- Night Mistress
16481, -- Ghastly Haunt
16482, -- Trapped Soul
16485, -- Arcane Watchman
16488, -- Arcane Anomaly
16489, -- Chaotic Sentience
16491, -- Mana Feeder
16492, -- Syphoner
16506, -- Naxxramas Worshipper
16525, -- Spell Shade
16529, -- Magical Horror
16530, -- Mana Warp
16539, -- Homunculus
16545, -- Ethereal Spellfilcher
16595, -- Fleshbeast
17260, -- Nightbane Helper Target
17316, -- Chess Square, OUTSIDE BLACK (DND)
17467, -- Skunk
17644, -- Infernal Target
17645, -- Infernal Relay
17660, -- Skeletal Gryphon
18955, -- Camera Shaker - 30-90 seconds
20061, -- Frostbite Invisible Stalker
21080, -- Dormant Infernal
21728, -- Skettis Surger
21804, -- Skettis Kaliri
21921, -- Chess - Sound Bunny
22519, -- Chess Piece: Karazhan Invisible Stalker
22520, -- Chess Piece: Status Bar
22523, -- Karazhan - Chess, Victory Dummy Tool
22986, -- Skettis - Invis Raven Stone
22991, -- Monstrous Kaliri Egg Trigger
23225, -- Netherwing Drake Escape Point
23638, -- Longtusk Fisherman
23643, -- Unstable Mur'ghoul
23644, -- Mur'ghoul Flesheater
23645, -- Mur'ghoul Corrupter
23667, -- Winterskorn Rune-Seer
23668, -- Winterskorn Rune-Caster
23669, -- Winterskorn Oracle
23670, -- Winterskorn Elder
23674, -- Iron Rune Sage
23677, -- Frost Nymph
23678, -- Chill Nymph
23755, -- Blockade Pirate
23771, -- Blockade Cannon
23809, -- Vengeance Landing Cannoneer
23810, -- Blockade Explosion Bunny
23821, -- Valgarde Harpoon Target
23867, -- Vengeance Landing Combatant Trigger
23870, -- Ember Clutch Ancient
23874, -- Thornvine Creeper
23876, -- Spore
23884, -- Vengeance Landing Crossbow Trigger
23885, -- Lyana Trigger
23886, -- Bull Lion Seal
23887, -- Lion Seal
23915, -- Westguard Cannon Trigger
23916, -- Westguard Cannon Trigger (Water)
23917, -- Cannon Source Trigger
23919, -- Ice Elemental
23929, -- Giant Tidecrawler
23930, -- Trained Plaguehound
23934, -- North Fleet Salvager
24076, -- Winterskorn Worg
24082, -- Proto-Drake Handler
24084, -- Tunneling Ghoul
24104, -- New Agamand Deathguard
24110, -- ELM General Purpose Bunny Large
24174, -- Fjord Rat
24177, -- Decomposing Ghoul
24182, -- Winterskorn Dwelling Credit
24184, -- Winterskorn Barracks Credit
24340, -- Rampaging Earth Elemental
24439, -- Sack of Relics
24440, -- Gjalerbron Gargoyle
24469, -- Magnataur Huntress
24562, -- Nerub'ar Invader
24567, -- Den Vermin
24613, -- Mammoth Calf
24614, -- Wooly Mammoth
24633, -- Rabid Brown Bear
24635, -- Dragonflayer Harpooner
24637, -- Great Reef Shark
24642, -- Drunken Northsea Pirate
24653, -- Flying Machine
24673, -- Frostwing Chimaera
24676, -- Crazed Northsea Slaver
24677, -- Spearfang Worg
24681, -- Island Shoveltusk
24694, -- Vrykul Harpoon Gun (Wyrmskull)
24846, -- Iron Dwarf
24862, -- Mage Hunter Target
24863, -- Frosthorn Kid
24871, -- Risen Vrykul Ancestor
24872, -- Blood Shade
24883, -- Rodin Lightning Enabler
24901, -- Maddened Frosthorn
25198, -- Winterfin Gatherer
25201, -- Winterfin Tadpole
25204, -- Glimmer Bay Orca
25215, -- Winterfin Shorestriker
25216, -- Winterfin Oracle
25217, -- Winterfin Warrior
25225, -- Practice Dummy
25350, -- Risen Longrunner
25351, -- Ghostly Sage
25355, -- Beryl Hound
25362, -- Warsong Swine
25377, -- Brittle Skeleton
25378, -- En'kilah Necromancer
25383, -- En'kilah Abomination
25390, -- En'kilah Hatchling
25391, -- En'kilah Focus Crystal
25393, -- En'kilah Ghoul
25396, -- Naxxanar Skeletal Mage
25415, -- Enraged Tempest
25417, -- Raging Boiler
25419, -- Boiling Spirit
25422, -- Mystical Webbing
25428, -- Magmoth Shaman
25429, -- Magmoth Forager
25431, -- Kaskala Ancestor
25432, -- Mate of Magmothregar
25433, -- Offspring of Magmothregar
25452, -- Scourged Mammoth
25454, -- Tundra Crawler
25464, -- Bloodspore Moth
25468, -- Bloodspore Roaster
25501, -- Gammoth Tender
25534, -- En'kilah Blood Globe
25600, -- Unliving Swine
25610, -- Scourge Prisoner
25615, -- Plagued Magnataur
25623, -- Harvest Collector
25651, -- Cultist Necrolyte
25660, -- Festering Ghoul
25668, -- Vengeful Taunka Spirit
25670, -- ELM General Purpose Bunny (scale x3)
25675, -- Tundra Wolf
25677, -- Borean Frog
25684, -- Talramas Abomination
25685, -- Gorloc Waddler
25686, -- Gorloc Gibberer
25687, -- Gorloc Steam Belcher
25699, -- Gorloc Mud Splasher
25700, -- Gorloc Hunter
25701, -- Gorloc Dredger
25707, -- Magic-bound Ancient
25709, -- Glacial Ancient
25713, -- Blue Drakonid Supplicant
25715, -- Frozen Elemental
25717, -- Coldarra Scalesworn
25718, -- Coldarra Mage Slayer
25719, -- Coldarra Spellbinder
25721, -- Arcane Serpent
25722, -- Coldarra Spellweaver
25724, -- Ascended Mage Hunter
25728, -- Coldarra Wyrmkin
25781, -- Oil Pool
25829, -- Marsh Fawn
25843, -- Northsea Thug
25880, -- Minion of Kaw
25981, -- Scourged Footman
26047, -- Warsong Worg
26126, -- Bone Warrior
26161, -- Farshire Grain Credit
26175, -- Coldarra - Drake Hunt Invisman
26189, -- Fleeing Cultist
26199, -- Snowfall Glade Den Mother
26200, -- Snowfall Glade Pup
26201, -- Snowfall Glade Shaman
26202, -- Ziggurat Defender
26402, -- Anub'ar Ambusher
26411, -- Deranged Indu'le Villager
26413, -- Anub'ar Dreadweaver
26418, -- Longhoof Grazer
26435, -- Taunka Move Trigger
26446, -- Ice Serpent
26455, -- Moonrest Highborne
26458, -- Drakkari Plaguebringer
26461, -- Scourge Corpserender
26472, -- Highland Mustang
26480, -- Magnataur Youngling
26481, -- Magnataur Alpha
26482, -- Arctic Grizzly
26488, -- Taunka Pack Kodo
26492, -- Wastes Digger
26525, -- Cockroach
26555, -- Scourge Hulk
26606, -- Anub'ar Slayer
26624, -- Wretched Belcher
26625, -- Darkweb Recluse
26628, -- Drakkari Scytheclaw
26636, -- Risen Drakkari Soulmage
26644, -- Ursus Mauler
26646, -- Saronite Horror
26658, -- Reckless Scavenger
26662, -- Azjol-anak Battleguard
26669, -- Ymirjar Savage
26670, -- Ymirjar Flesh Hunter
26675, -- Spider Summon Target
26705, -- Snowplain Disciple
26706, -- Infected Grizzly Bear
26711, -- Injured Mammoth
26712, -- Crystal Channel Target
26728, -- Mage Hunter Initiate
26729, -- Steward
26782, -- Crystalline Keeper
26792, -- Crystalline Protector
26793, -- Crystalline Frayer
26889, -- The End of the Line Area Trigger Kill Credit Bunny
26891, -- Undead Miner
26937, -- Gong Bunny
26948, -- Hulking Atrocity
27165, -- Drained Moonrest Highborne
27230, -- Silvercoat Stag
27247, -- Devout Bodyguard
27254, -- Emerald Lasher
27283, -- Risen Wintergarde Mage
27286, -- Dreadbone Invader
27290, -- Hungering Dead
27358, -- Burning Depths Necromancer
27363, -- Smoldering Geist
27375, -- Risen Gryphon Rider Target
27402, -- Bone Target Bunny
27403, -- Strange Ore Target
27408, -- Duskhowl Prowler
27418, -- Rothin's Spell Bunny
27421, -- Fern Feeder Moth
27438, -- Rainbow Trout
27449, -- Neltharion's Flame Fire Bunny
27452, -- Invisible Stalker Grizzly Hills
27460, -- Mother of Bambina
27496, -- Refurbished Shredder
27513, -- Covetous Geist
27551, -- Enraged Apparition
27552, -- Reanimated Noble
27607, -- Plague Wagon
27633, -- Azure Inquisitor
27635, -- Azure Spellbinder
27636, -- Azure Ley-Whelp
27639, -- Ring-Lord Sorceress
27640, -- Ring-Lord Conjurer
27641, -- Centrifuge Construct
27685, -- Frigid Ghoul Attacker
27686, -- Frigid Geist Attacker
27688, -- Alliance Lumberboat
27689, -- Alliance Lumberboat Explosions
27702, -- Horde Lumberboat
27725, -- Ruby Guardian
27737, -- Risen Zombie
27745, -- Lordaeron Footman
27746, -- Lordaeron Knight
27747, -- High Elf Mage-Priest
27752, -- High Elf Sorceress
27823, -- Naxxramas Dreadguard
27824, -- Naxxramas Shade
27827, -- Grain Crate Helper
27836, -- Wailing Soul
27852, -- Wintergrasp Control Arms
27869, -- Wintergrasp Detection Unit
27909, -- Darkweb Victim
27927, -- Dragonflayer Guardian
27965, -- Dark Rune Shaper
27970, -- Raging Construct
27971, -- Unrelenting Construct
28001, -- Dreadsaber
28002, -- Mangal Crocolisk
28003, -- Bittertide Hydra
28005, -- Wastes Scavenger
28008, -- Galakrond Spell Dummy
28010, -- Stranded Thresher
28011, -- Emperor Cobra
28016, -- Drakuru
28024, -- Rainspeaker Warrior
28025, -- Rainspeaker Oracle
28130, -- Invis Lightning Stalker
28161, -- Chicken Escapee
28169, -- Stratholme Resident
28170, -- Frosthowl Screecher
28202, -- Zul'Drak Rat
28217, -- Injured Rainspeaker Oracle
28218, -- Snowblind Ghoul
28220, -- Frostbitten Corpse
28221, -- Trapdoor Crawler
28231, -- Crystalline Tender
28233, -- Zul'Drak Bat
28234, -- Tribunal of the Ages
28242, -- Risen Reaver
28246, -- Sky Terror
28254, -- Mistwhisper Lightning Target
28268, -- Scourged Argent Footman
28274, -- Plague Sprayer
28277, -- Harry's Bomber
28351, -- Flame Breath Trigger (Skadi)
28367, -- Acherus Dummy
28407, -- Fjord Penguin
28417, -- Priest of Rhunok
28419, -- Frenzied Geist
28440, -- Tundra Penguin
28452, -- Elemental Rift
28466, -- Fruit Tosser
28492, -- Drak'Tharon - Drakuru Event Invisman 00
28498, -- The Lich King
28504, -- Jin'Alai Medicine Man
28519, -- Withered Troll
28523, -- Nass Target KC Bunny
28559, -- Citizen of New Avalon
28560, -- Citizen of New Avalon
28584, -- Unbound Firestorm
28585, -- Slag
28605, -- Havenshire Stallion
28627, -- Wood Pile Dummy
28643, -- Rain of Darkness Dummy
28655, -- Sky Darkener Target
28660, -- Citizen of Havenshire
28662, -- Citizen of Havenshire
28717, -- Overlord Drakuru
28733, -- Anub'ar Shadowcaster
28739, -- Blight Cauldron Bunny 00
28745, -- Alarmed Blightguard
28750, -- Blight Geist
28751, -- Geist WP Bunny
28769, -- Shadowy Tormentor
28778, -- Scourgewagon Bunny
28789, -- Explosion Guy
28804, -- Plague Spreader
28826, -- Stormfury Revenant
28833, -- Scarlet Cannon
28835, -- Stormforged Construct
28839, -- Scarlet Cover Dummy
28850, -- Scarlet Land Cannon
28901, -- Acherus Deathcharger
28903, -- Scourge Plaguehound
28905, -- Gluttonous Geist
28906, -- Scourge Gryphon
28920, -- Stormforged Giant
28931, -- Blightblood Troll
28932, -- Blight Effect Bunny
28935, -- Acherus Dummy
28960, -- Totally Generic Bunny (JSB)
29013, -- Perch Guardian
29026, -- Kolramas Slime
29027, -- Wild Growth Stalker
29036, -- Servant of Freya
29048, -- Ulduar Monitor
29104, -- Scarlet Ballista
29128, -- Anub'ar Prime Guard
29189, -- Howling Geist
29301, -- Camp Winterhoof Wayfarer
29326, -- Ichoron Summon Target
29328, -- Arctic Hare
29392, -- Ravenous Jaws
29395, -- Erekem Guard
29444, -- Drakkari Snake
29449, -- Vargul Deathwaker
29450, -- Vargul Runelord
29452, -- Vargul Blighthound
29461, -- Icetip Crawler
29466, -- Goblin Prisoner
29479, -- Shoveltusk Forager
29483, -- K3 Perimeter Turret
29485, -- Dolomite Giant
29486, -- Tamed Shoveltusk
29487, -- Wild Shoveltusk
29504, -- Seething Revenant
29517, -- Darkmender's Ghoul
29521, -- Unworthy Initiate Anchor
29549, -- Brunnhildar Riding Bear
29551, -- Brunnhildar Bearhandler
29558, -- Frost Giant Target Bunny
29559, -- Lion Seal Whelp
29562, -- Icemaw Bear
29614, -- Onslaught Darkweaver
29630, -- Fanged Pit Viper
29682, -- Slad'ran Summon Target
29697, -- Drakuru Prophet
29700, -- Drakuru Shackles
29710, -- Onslaught Destrier
29730, -- Frostborn Stormrider
29746, -- Databank
29752, -- Databank Core
29774, -- Spitting Cobra
29798, -- Hyldsmeet Proto-Drake
29805, -- Captive Proto Drake Beam Bunny
29811, -- Frostborn Scout
29820, -- Drakkari God Hunter
29822, -- Drakkari Fire Weaver
29826, -- Drakkari Medicine Man
29830, -- Living Mojo
29832, -- Drakkari Golem
29912, -- Obedience Crystal
29920, -- Ruins Dweller
29958, -- Tundra Ram
29960, -- Earthen Stoneguard
30012, -- Victorious Challenger
30046, -- Yulda the Stormspeaker
30066, -- Valkyrion Harpoon Gun
30071, -- Stitched Colossus
30078, -- [DND]Wyrmrest Temple Beam Target
30172, -- Ahn'kahar Swarm Egg
30173, -- Ahn'kahar Guardian Egg
30181, -- Jedoga Controller
30236, -- Argent Cannon
30250, -- Valhalas Vargul
30277, -- Ahn'kahar Slasher
30278, -- Ahn'kahar Spell Flinger
30286, -- Frostbringer
30298, -- Invisible Stalker (Float, Uninteractible, LargeAOI)
30312, -- Shadow Vault Boneguard
30335, -- Shadow Vault Gryphon
30416, -- Bound Fire Elemental
30418, -- Bound Air Elemental
30419, -- Bound Water Elemental
30430, -- Sentry Worg
30576, -- Vile Like Fire! Kill Credit Bunny
30599, -- Vile Like Fire! Fire Bunny
30633, -- Water Terror
30640, -- [DND] Icecrown Airship (A) - Cannon Target
30642, -- Water Terror
30649, -- [DND] Icecrown Airship (H) - Cannon Target
30651, -- [DND] Icecrown Airship (A) - Cannon, Odd
30675, -- Argent Champion
30687, -- Skeletal Constructor
30689, -- Chained Abomination
30701, -- Vile Creeper
30842, -- Wandering Shadow
30845, -- Living Lasher
30848, -- Whispering Wind
30857, -- Defense Dummy Target
30887, -- Scourge Package
30894, -- Lithe Stalker
30897, -- Marnak
30898, -- Kaddrak
30899, -- Abedneum
30900, -- Argent Mason
30920, -- Lumbering Atrocity
30947, -- Eidolon Watcher
30951, -- Restless Lookout
30952, -- Hungering Plaguehound
30960, -- Risen Soldier
30985, -- Summoned Soldier
31041, -- Dispirited Ent
31043, -- Reanimated Crusader
31049, -- Geist Return Bunny
31075, -- Scourge Bomb
31077, -- Safirdrang's Chill Target
31126, -- Agitated Stratholme Citizen
31127, -- Agitated Stratholme Resident
31131, -- Containment Crystal
31140, -- Hulking Abomination
31142, -- Icy Ghoul
31145, -- Shadow Adept
31147, -- Vicious Geist
31150, -- Plagued Fiend
31155, -- Malefic Necromancer
31205, -- Risen Alliance Soldier
31233, -- Sinewy Wolf
31245, -- Invisible Ooze Stalker
31250, -- Ebon Blade Defender
31251, -- Shadow Vault Skirmisher
31262, -- Blight Falconer
31266, -- Shadow Vault Assaulter
31280, -- Ymirheim Spear Gun
31328, -- Fleeing Horde Soldier
31330, -- Fleeing Horde Soldier
31353, -- [DND] Icecrown Airship (N) - Attack Controller
31411, -- Hulking Horror
31438, -- Shadow Vault Abomination
31554, -- Restless Lookout
31556, -- Hungering Plaguehound
31644, -- Cosmetic Trigger - Phase 1 - LAB
31685, -- Borean Marmot
31718, -- Frostbrood Whelp
31731, -- Wyrm Reanimator
31738, -- Cultist Corrupter
31747, -- Necrotic Webspinner
31754, -- Glacial Bonelord
31779, -- Skeletal Archmage
31780, -- Fallen Spiderlord
31783, -- Vrykul Necrolord
31786, -- Oil Slick
31797, -- Ancient Sentinel
31812, -- Decomposed Ghoul
31813, -- Frostskull Magus
31836, -- Blue Dragon Egg
31847, -- Scavenging Geist
31900, -- Scourge Banner-Bearer
31915, -- Horde Transport Dropoff Bunny
32149, -- Fallen Hero's Spirit
32155, -- Destroyed War Machine
32161, -- Scourge War Engineer
32202, -- Desolation KC Bunny
32236, -- Dark Subjugator
32250, -- Overseer Faedris
32255, -- Converted Hero
32257, -- Scourge Converter
32258, -- Gold Beetle
32260, -- Enslaved Minion
32262, -- Shadow Channeler
32264, -- Aldur'thar Channel Bunny
32278, -- Harbinger of Horror
32280, -- Corp'rethar Guardian
32284, -- Scourge Soulbinder
32349, -- Cultist Shard Watcher
32469, -- Ebon Blade Geist
32479, -- Bone Guard
32482, -- Pustulent Colossus
32490, -- Scourge Deathcharger
32498, -- Glacier Penguin
32502, -- Ravaged Ghoul
32505, -- Vargul Wanderer
32507, -- Cultist Acolyte
32520, -- Totally Generic Bunny (All Phase)
32541, -- Initiate's Training Dummy
32542, -- Disciple's Training Dummy
32543, -- Veteran's Training Dummy
32545, -- Initiate's Training Dummy
32546, -- Ebon Knight's Training Dummy
32593, -- Skittering Swarmer
32647, -- Warsong Hold Practice Dummy
32720, -- Violetta
32770, -- Enraged Fleshrender
32771, -- Stitched Brute
32772, -- Skeletal Footsoldier
32874, -- Iron Ring Guard
32875, -- Iron Honor Guard
32879, -- Thorim Controller
32885, -- Captured Mercenary Soldier
32892, -- Thorim Event Bunny
32922, -- Dark Rune Champion
32923, -- Dark Rune Commoner
32924, -- Dark Rune Evoker
32925, -- Dark Rune Warbringer
33140, -- Thorim Golem Right Hand Bunny
33141, -- Thorim Golem Left Hand Bunny
33229, -- Melee Target
33337, -- XT-Toy Pile
33378, -- Thunder Orb
33430, -- Guardian Lasher
33431, -- Forest Swarmer
33500, -- Vezax Bunny
33525, -- Mangrove Ent
33526, -- Ironroot Lasher
33527, -- Nature's Blade
33575, -- Channel Stalker Freya
33661, -- Armsweep Stalker Kologarn
33699, -- Storm Tempered Keeper
33722, -- Storm Tempered Keeper
33772, -- Faceless Horror
33809, -- Rubble Stalker Kologarn
33818, -- Twilight Adherent
33819, -- Twilight Frost Mage
33820, -- Twilight Pyromancer
33822, -- Twilight Guardian
33824, -- Twilight Shadowblade
33838, -- Enslaved Fire Elemental
33856, -- Bot Summon Trigger
34014, -- Sanctum Sentry
34069, -- Molten Colossus
34133, -- Champion of Hodir
34134, -- Winter Revenant
34135, -- Winter Rumbler
34137, -- Winter Jormungar
34144, -- Expedition Mercenary
34145, -- Expedition Engineer
34146, -- Snow Mound (4)
34150, -- Snow Mound (6)
34151, -- Snow Mound (8)
34184, -- Clockwork Mechanic
34190, -- Hardened Iron Golem
34191, -- Trash
34196, -- Rune Etched Sentry
34198, -- Iron Mender
34267, -- Parts Recovery Technician
34271, -- XD-175 Compactobot
34273, -- XB-488 Disposalbot
34300, -- Mature Lasher
34319, -- [DND] Champion Go-To Bunny
34716, -- Captive Aspirant
34907, -- Kvaldir Harpooner
35106, -- Black Knight Caster
35473, -- Argent Tournament Post
35482, -- Hungry Jormungar
36829, -- Deathspeaker High Priest
40091, -- Orb Rotation Focus
40146); -- Halion Controller
UPDATE `creature_text` SET `sound`=5802 WHERE `entry`=4832 AND `groupid`=0;
UPDATE `creature_text` SET `text`='Just...Dust…',`sound`=5803 WHERE `entry`=4832 AND `groupid`=2;
UPDATE `creature_text` SET `text`='Who dares disturb my meditation!' WHERE `entry`=4832 AND `groupid`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=35475;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 7, 35475, 0, 0, 27, 0, 80, 2, 0, 0, 0, 0, '', 'Drums of War - level restriction');
UPDATE `creature_text` SET `text`='Just...Dust...' WHERE `entry`=4832 AND `groupid`=2;
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (
9785,9784,9771, -- Devotion Aura On Dragonmaw Swamprunner, Centurion, Bonewarder
5056, -- Unholy Shield on Morbent Fel
16707,16719,16733,16735,16737,16751,16754,16771,16796,16863,16962,16963,16987,17004,17005,17006,17010,17013,17017,17018,17021,17028, -- Stealth on Syndicate Spy
16709,16880,16881,16882,16883,16901,16985,17031,17032,17044,17047,17048,17051,17097, -- Stealth on Syndicate Assassin
11547,11550,11577,11608,11612,11654,11696,11812,11976,12904,12910,12912,13251,13303,13304,13310,13311,13313,13315, -- Stealth on Syndicate Highwayman
14652, -- Shadow Channeling on Marez Cowl
13594,13598, -- Defensive Stance on Bael'dun Excavator
14055, -- Stealth on Mad Magglish
33157,33158,33159,33160,33161,33162, -- Stealth on Felmusk Shadowstalker
34187,34189,34191, -- Bear form on Cenarion Protector
32349, -- Sleep visual on Relara Whitemoon
40101,40087,40055,40050,40042,40030,40012,40001, -- Inner Fire on Scarlet Chaplain
31208,31214,31360,31385,31387,31390,31391,31393,31463,31473,31607,31608,31617,31619,31622, -- Fire Shield on Fireman Scalebane
81447,81446,81444,81440,43695,42624,42622,42607,42605, -- Demon Skin on Sandfury Shadowcaster
91931,92324,92513,92665,92670,92671, -- Disease Cloud on Stiched Golem
48477,48563,48585,48761,48765,48768,48769,48772,48809,48816,48818,48827,48832,48836,48837,48921,48922,48923,48924,48926,48983,48987,48993,48999,91411,91412,91415, -- Disease Cloud on Diseased Ghoul
81927,81931,81940,81987,81995,82301,82316,82341,82355,82378,82394,82396,82397,82413,82426,82479,82510,82611,82612,82613,82615,82662,82763,82771, -- Draining Touch on Vampiric Mistbat
61856,61928,61931,61940, -- Thorns on Barbed Crawler
67462,67465,67468,67469, -- Arcane Shield on Warp Aberration
74883, -- Freeze Anim on Legion Hold Fel Reaver
132572, -- Shroud of Death on Time-Lost Skettis High Priest
76348,76349,76351,76353,76355,76356,76358,76359,76360,76362,76363,76364,76365,76366,76368,76369,76370,76371,76372,76373,76374,76376, -- Ghostly Facade on Cleric of Karabor
12803,12802,12801,12800,12799,12798, -- Lightning Shield on Ashtongue Stormcaller
132849,132850,132852,132853,132855,132851,132854,132856,132857, -- Phasing Invisibility on Blackwind Warp Chaser
32943, -- Cat form on Becanna Edune
132863, -- Oil coat on Oil-Stained Wolf
126539,126542,126553,126556,126562,126564,126567,126568,126569,126572,126574,126579,126582, -- Arcane Missiles on Crazed Mana-Wraith
127067); -- Head Crack on Drakkari Earthhshaker
UPDATE `creature_text` SET `text`='Who dares disturb my meditation?' WHERE `entry`=4832 AND `groupid`=0;
-- delete 31 creature_addon data that contain no information (bytes2=1 is the default)
DELETE FROM `creature_addon` WHERE `guid` IN (132572,126539,126542,126553,126556,126562,126564,126567,126568,126569,126572,126574,126579,126582,127067,132849,132850,132851,132852,132853,132854,132855,132856,132857,132863,108034,108035,108036,108037,203372,203373);
UPDATE `quest_template` SET `PrevQuestId`=12872 WHERE `Id` IN (12871,12885);
UPDATE `quest_template` SET `PrevQuestId`=12928 WHERE `Id` IN (12929,13273);

UPDATE `gameobject_template` SET `flags`=`flags`|4 WHERE `entry` IN 
(188364,188501,188502,188503,186684,186390,186950,186954,186955,186912,186662,186618,186587,186595,186607,186938,187027,186427,187026,187022,187023,188702,188703,188705,189983,186632,186619,186591,186397,
186640,186679,186828,186830,186832,186885,186886,187033,187381,187577,187683,187684,187685,187686,187687,187885,187886,188015,188016,188017,188066,188120,188462,188489,188646,188650,188658,188659,189288,
189293,189295,189298,189306,190127,190189,190354,190483,190484,190578,190612,190613,190614,190623,190624,190625,190643,190696,190720,191179,191567,191814,191815,192058,192171,192172,192556,192676,192693,
193091,193092,193196,193197,193404,193560,193561,193767,193792,193793,193943,193945,193946,194158,194159,194238,194340,194341,194423,194424,195022,195037,195274,195344,201367,201384,201794,201937);

UPDATE `gameobject_template` SET `flags`=`flags`|16 WHERE `entry` IN
(193603,193905,193967,194158,194159,195046,195047,195323,195324,195374,195375,195631,195632,195633,195635,195709,195710,201710,201959);

UPDATE `gameobject_template` SET `faction`=94 WHERE `entry` IN (195046,195047,195631,195632,195633,195635);
UPDATE `gameobject_template` SET `faction`=35 WHERE `entry` IN (201710,201959);
-- Intro Areatrigger
DELETE FROM `areatrigger_scripts` WHERE `entry`=7246;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(7246, 'at_alizabal_intro');

UPDATE `creature_template` SET `scriptname` = 'boss_alizabal' WHERE `entry`=55869;

-- Todo: Find the Rest of the Texts and their meanings
DELETE FROM `creature_text` WHERE `entry`=55869;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(55869, 1, 0, 'How I HATE this place. My captors may be long-dead, but don\'t think I won\'t take it all out on you miserable treasure-hunters.', 14, 0, 100, 0, 0, 25779, 'Alizabal - Intro'),
(55869, 2, 0, 'I hate adventurers.', 14, 0, 100, 0, 0, 25777, 'Alizabal - Aggro'),
(55869, 3, 0, 'I hate martyrs.', 14, 0, 100, 0, 0, 25786, 'Alizabal - Seething Hate'),
(55869, 4, 0, 'I hate armor.', 14, 0, 100, 0, 0, 25785, 'Alizabal - Skewer'),
(55869, 5, 0, 'Alizabal nailed $N firmly on the ground.', 41, 0, 100, 0, 0, 0, 'Alizabal - Skewer Announce'),
(55869, 6, 0, 'I hate standing still.', 14, 0, 100, 0, 0, 25791, 'Alizabal - Blade Dance'),
(55869, 7, 0, 'Feel my hatred!', 14, 0, 100, 0, 0, 25787, 'Alizabal - ???'),
(55869, 8, 0, 'My hate will consume you!', 14, 0, 100, 0, 0, 25789, 'Alizabal - ???'),
(55869, 9, 0, 'I hate you all.', 14, 0, 100, 0, 0, 25790, 'Alizabal - ???'),
(55869, 10, 0, 'I hate mercy.', 14, 0, 100, 0, 0, 25783, 'Alizabal - Slay 1'),
(55869, 11, 0, 'My hatred burns!', 14, 0, 100, 0, 0, 25788, 'Alizabal - ???'),
(55869, 12, 0, 'I hate... every one of you...', 14, 0, 100, 0, 0, 25778, 'Alizabal - Death');
-- NPC Hira Snowdawn no longer sells Tome of Cold Weather Flight
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=31238;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=10723 AND `id`=1;
DELETE FROM `npc_vendor` WHERE `entry`=31238 AND `item`=49177;
-- Malfurion's Gift
DELETE FROM `spell_proc_event` WHERE `entry` IN ('92363', '92364');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`)
VALUES
(92363, 0, 7, 0, 16, 0, 278528, 0, 0, 2, 0),
(92364, 0, 7, 0, 16, 0, 278528, 0, 0, 4, 0);
