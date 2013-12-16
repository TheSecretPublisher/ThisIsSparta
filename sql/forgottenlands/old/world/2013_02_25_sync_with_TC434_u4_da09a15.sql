UPDATE `areatrigger_tavern` SET `name`='Feathermoon Stronghold' WHERE `id`=1024;
UPDATE `areatrigger_tavern` SET `name`='Farwatcher''s Glen - 01' WHERE `id`=6164;

DELETE FROM `areatrigger_tavern` WHERE `id` IN (6087, 6088, 6089, 6090, 6091, 6092, 6093, 6111, 6131, 6133, 6156, 6165, 6166, 6173, 6203, 6204, 6313, 6463, 6471, 6473, 6475, 6484, 6657);
INSERT INTO `areatrigger_tavern` (`id`, `name`) VALUES
(6087, 'Zoram''gar Outpost'),
(6088, 'Hellscream''s Watch - 01'),
(6089, 'Hellscream''s Watch - 02'),
(6090, 'Hellscream''s Watch - 03'),
(6091, 'Silverwind Refuge - 01'),
(6092, 'Silverwind Refuge - 02'),
(6093, 'Silverwind Refuge - 03'),
(6111, 'Bilgewater Harbor'),
(6131, 'Nozzlepot''s Outpost'),
(6133, 'Grol''dom Farm'),
(6156, 'Krom''gar Fortress'),
(6165, 'Farwatcher''s Glen - 02'),
(6166, 'Fort Livingston'),
(6173, 'Hardwrench Hideaway'),
(6203, 'Dreamer''s Rest'),
(6204, 'Camp Ataya'),
(6313, 'The Bulwark'),
(6463, 'Wildheart Point'),
(6471, 'Schnottz''s Landing - 01'),
(6473, 'Iron Summit'),
(6475, 'Schnottz''s Landing - 02'),
(6484, 'Dragon''s Mouth'),
(6657, 'Duskhaven');
DELETE FROM `gossip_menu_option` WHERE (`menu_id`=11473 AND `id`=0) OR (`menu_id`=7628 AND `id`=0) OR (`menu_id`=7676 AND `id`=1) OR (`menu_id`=7725 AND `id`=0) OR (`menu_id`=7729 AND `id`=0) OR (`menu_id`=7730 AND `id`=0) OR (`menu_id`=7732 AND `id`=0) OR (`menu_id`=7731 AND `id`=0) OR (`menu_id`=7981 AND `id`=0) OR (`menu_id`=9460 AND `id`=0) OR (`menu_id`=9478 AND `id`=0) OR (`menu_id`=9478 AND `id`=1) OR (`menu_id`=9742 AND `id`=0) OR (`menu_id`=9724 AND `id`=0) OR (`menu_id`=9575 AND `id`=4) OR (`menu_id`=9574 AND `id`=3) OR (`menu_id`=9574 AND `id`=5) OR (`menu_id`=5048 AND `id`=0) OR (`menu_id`=9763 AND `id`=0) OR (`menu_id`=10324 AND `id`=0) OR (`menu_id`=9755 AND `id`=0) OR (`menu_id`=9762 AND `id`=0) OR (`menu_id`=9800 AND `id`=0) OR (`menu_id`=1951 AND `id`=16) OR (`menu_id`=8368 AND `id`=0) OR (`menu_id`=9761 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `box_coded`, `box_money`, `box_text`) VALUES
(11473, 0, 0, 'I would like to start the Blood Ritual, Lynnore.', 0, 0, ''), -- Bloodmage Lynnore
(7628, 0, 1, 'I would like to buy from you.', 0, 0, ''), -- Pilot Marsha
(7676, 1, 0, 'What do I need to do?', 0, 0, ''), -- Lantresor of the Blade
(7725, 0, 0, 'Altruis sent me. He said that you could help me.', 0, 0, ''), -- Sal'salabim
(7729, 0, 0, 'I have been sent by Sal''salabim to collect a debt that you owe. Pay up or I''m going to have to hurt you.', 0, 0, ''), -- Raliq the Drunk
(7730, 0, 0, 'I have been sent by Sal''salabim to collect a debt that you owe. Pay up or I''m going to have to hurt you.', 0, 0, ''), -- Coosh'coosh
(7732, 0, 0, 'I have been sent by Sal''salabim to collect a debt that you owe. Pay up or I''m going to have to hurt you.', 0, 0, ''), -- Floon
(7731, 0, 0, 'He wants his \"golds.\" Pay up or die... again...', 0, 0, ''), -- Floon
(7981, 0, 0, 'I''ve lost Archmage Vargoth''s Staff. Can you replace it?', 0, 0, ''), -- Ravandwyr
(9460, 0, 5, 'Make this inn your home.', 0, 0, ''), -- Barracks Master Harga
(9478, 0, 5, 'Make this inn your home.', 0, 0, ''), -- Caregiver Mumik
(9478, 1, 1, 'Let me browse your goods.', 0, 0, ''), -- Caregiver Mumik
(9742, 0, 0, 'I need to find Lafoo, do you have his bug bag?', 0, 0, ''), -- High-Oracle Soo-say
(9724, 0, 0, 'Can you spare an orange?', 0, 0, ''), -- Adventurous Dwarf
(9575, 4, 0, 'What is the ultimate ability of the Ruby Drake?', 0, 0, ''), -- Belgaristrasz
(9574, 3, 0, 'I want to exchange my Ruby Essence for Amber Essence.', 0, 0, ''), -- Eternos
(9574, 5, 0, 'What is the ultimate ability of the amber drake?', 0, 0, ''), -- Eternos
(5048, 0, 0, 'I will be your wingman!', 0, 0, ''), -- Wing Commander Mulverick
(9763, 0, 5, 'Make this inn your home.', 0, 0, ''), -- Purser Boulian
(10324, 0, 0, 'Lend us your aid, keeper. Together we will defeat Yogg-Saron.', 0, 0, ''), -- Freya
(9755, 0, 1, 'I wish to make a purchase, Fineous.', 0, 0, ''), -- Fineous
(9762, 0, 0, 'Koltira, let''s get out of here!', 0, 0, ''), -- Koltira Deathweaver
(9800, 0, 4, 'Return me to life.', 0, 0, ''), -- Spirit Healer
(8368, 0, 0, 'Control Warchief Blackhand', 0, 0, ''), -- Warchief Blackhand
(9761, 0, 0, 'I require water breathing, Garren.', 0, 0, ''); -- Librarian Garren
DELETE FROM `creature_equip_template` WHERE `entry` IN (15354, 54141, 53977, 10682, 51918, 16976, 16994, 16996, 51880, 18475, 22462, 22483, 22452, 18501, 18500, 18498, 18478, 18397, 19493, 20409, 20410, 19543, 20685, 20803, 20564, 25496, 25270, 27389, 21104, 21137, 17892, 17835, 21148, 21136, 17839, 21140, 17879, 18994, 21138, 18995, 21139, 26568, 27753, 27709, 30892, 30661, 30666, 30667, 30668, 30660, 30961, 32191, 13088, 13316, 27983, 27984, 51870, 26786, 26814, 51785, 28327, 28105, 25801, 43090, 43100, 43022, 41618, 30997, 39926, 35330, 35030, 35332, 34702, 34703, 34657, 51777, 40093, 37670, 39846, 46925, 41114, 41234, 40185, 40956, 40563, 40805, 43652, 43847, 12918, 3735, 30954, 40979, 39040, 28654, 28768, 28846, 33458, 49345, 47630, 34635, 21416, 33388, 33453, 32877, 32878, 32876, 32875, 33125, 36662, 28884, 28912, 29001, 29053, 29076, 28891, 14028, 51804, 50350, 51078, 15550, 16152, 45379, 45378, 32417, 30481, 34782, 6240, 34790, 41200, 21047, 21046, 21048, 23053, 23052);
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(15354, 1906, 12851, 0), -- Rachelle Gothena
(54141, 2703, 0, 0), -- Edgar Goodwin
(53977, 13069, 0, 0), -- Darkcaller Yanka
(10682, 12593, 0, 0), -- Raider Kerr
(51918, 10612, 12452, 5260), -- Stonard Grunt
(16976, 2813, 0, 0), -- Ghostly Denizen
(16994, 2176, 0, 0), -- Draenei Anchorite
(16996, 14533, 0, 0), -- Draenei Vindicator
(51880, 10611, 12452, 5262), -- Zabra'jin Guard
(18475, 3326, 0, 0), -- Mug'gok
(22462, 29655, 0, 30580), -- Vindicator Haylen
(22483, 6680, 0, 0), -- Sand Gnome
(22452, 24016, 0, 0), -- Reanimated Exarch
(18501, 10617, 0, 14105), -- Unliving Stalker
(18500, 12591, 0, 0), -- Unliving Cleric
(18498, 2178, 24331, 0), -- Unliving Soldier
(18478, 13160, 0, 0), -- Avatar of the Martyred
(18397, 17383, 0, 0), -- Kil'sorrow Invader
(19493, 28456, 0, 0), -- Ekkorash the Inquisitor
(20409, 1901, 13611, 0), -- Kirin'Var Apprentice
(20410, 1903, 13611, 0), -- Rhonsus
(19543, 23741, 0, 0), -- Battle-Mage Dathric
(20685, 10613, 10613, 0), -- Overseer Azarad
(20803, 21465, 21465, 0), -- Overmaster Grindgarr
(20564, 29462, 29462, 0), -- Image of Agent Ya-six
(25496, 34816, 34819, 0), -- Kvaldir Mist Lord
(25270, 12629, 0, 0), -- Warsong Peon
(27389, 2559, 0, 0), -- Dalronn the Controller
(21104, 13622, 0, 0), -- Rift Keeper
(21137, 12993, 0, 0), -- Infinite Assassin
(17892, 14837, 0, 0), -- Infinite Chronomancer
(17835, 19924, 0, 0), -- Infinite Assassin
(21148, 20719, 0, 0), -- Rift Keeper
(21136, 14837, 0, 0), -- Infinite Chronomancer
(17839, 12403, 0, 0), -- Rift Lord
(21140, 22199, 0, 0), -- Rift Lord
(17879, 22391, 0, 0), -- Chrono Lord Deja
(18994, 17383, 0, 0), -- Infinite Executioner
(21138, 17383, 0, 0), -- Infinite Executioner
(18995, 28739, 0, 0), -- Infinite Vanquisher
(21139, 28739, 0, 0), -- Infinite Vanquisher
(26568, 6232, 0, 0), -- Zebu'tan
(27753, 14874, 0, 0), -- Drakkari Invader
(27709, 14874, 0, 0), -- Drakkari Invader
(30892, 43487, 0, 0), -- Portal Guardian
(30661, 43477, 0, 0), -- Azure Invader
(30666, 44227, 0, 0), -- Azure Captain
(30667, 44238, 0, 0), -- Azure Sorceror
(30668, 44232, 44233, 0), -- Azure Raider
(30660, 43487, 0, 0), -- Portal Guardian
(30961, 43477, 0, 0), -- Azure Invader
(32191, 43479, 43479, 0), -- Azure Stalker
(13088, 10617, 17283, 0), -- Masha Swiftcut
(13316, 1910, 0, 0), -- Coldmine Peon
(27983, 39754, 0, 0), -- Dark Rune Protector
(27984, 39750, 0, 0), -- Dark Rune Stormcaller
(51870, 37123, 0, 0), -- Ebon Watch Guardian
(26786, 27986, 0, 0), -- Iron Rune Avenger
(26814, 0, 2081, 0), -- Harrison Jones
(51785, 19015, 0, 25280), -- Nesingwary Game Warden
(28327, 5303, 0, 0), -- Shaman Vekjik
(28105, 5305, 0, 0), -- Warlord Tartek
(25801, 30795, 0, 34326), -- Nedar, Lord of Rhinos
(43090, 5289, 0, 0), -- Hellscream's Vanguard
(43100, 30848, 0, 0), -- Legionnaire Nazgrim
(43022, 2717, 0, 0), -- Mack Fearsen
(41618, 51898, 0, 0), -- Erunak Stonespeaker
(30997, 12591, 0, 0), -- Chromie
(39926, 52060, 0, 0), -- Twilight Inciter
(35330, 46090, 29821, 0), -- Exodar Champion
(35030, 7612, 0, 0), -- Memory of Herod
(35332, 46090, 14825, 0), -- Darnassus Champion
(34702, 45129, 0, 0), -- Ambrose Boltspark
(34703, 49024, 49024, 0), -- Lana Stouthammer
(34657, 35779, 0, 52058), -- Jaelyne Evensong
(51777, 56004, 0, 0), -- Druid of the Talon
(40093, 40606, 0, 0), -- Subjugated Inferno Lord
(37670, 49864, 0, 0), -- Frostblade
(39846, 28487, 0, 0), -- Leyden Copperkleist
(46925, 12902, 0, 0), -- Ashbearer
(41114, 5285, 0, 0), -- Thisalee Crow
(41234, 5285, 0, 0), -- Thisalee Crow
(40185, 3187, 0, 0), -- Twilight Initiate
(40956, 31253, 0, 0), -- Nordrassil Druid
(40563, 4439, 0, 0), -- Twilight Enforcer
(40805, 13339, 0, 0), -- Arch Druid Hamuul Runetotem
(43652, 57035, 0, 0), -- Stone Trogg Rockmagus
(43847, 43967, 0, 0), -- Needlerock Pummeller
(12918, 11087, 0, 0), -- Chief Murgut
(3735, 4993, 0, 0), -- Apothecary Falthis
(30954, 41371, 0, 0), -- Rokir
(40979, 53008, 0, 0), -- Windwalk
(39040, 2178, 39660, 0), -- Alliance Field Defender
(28654, 38633, 0, 0), -- Dark Rider of Acherus
(28768, 38633, 0, 0), -- Dark Rider of Acherus
(28846, 1910, 0, 0), -- Scarlet Ghost
(33458, 13165, 0, 5258), -- Ashenvale Stalker
(49345, 43967, 0, 0), -- Salhet
(47630, 56050, 0, 0), -- Twilight Jailer
(34635, 38296, 0, 0), -- Kurak
(21416, 13061, 0, 0), -- Lakaan
(33388, 34637, 34637, 0), -- Dark Rune Guardian
(33453, 43474, 0, 0), -- Dark Rune Watcher
(32877, 35727, 39716, 0), -- Dark Rune Warbringer
(32878, 41180, 0, 0), -- Dark Rune Evoker
(32876, 40435, 0, 0), -- Dark Rune Champion
(32875, 41177, 39384, 0), -- Iron Honor Guard
(33125, 41177, 39384, 0), -- Iron Honor Guard
(36662, 5287, 0, 5262), -- Gorek
(28884, 38723, 12932, 11021), -- Scarlet Fleet Guardian
(28912, 38633, 0, 0), -- Koltira Deathweaver
(29001, 28739, 0, 0), -- High Inquisitor Valroth
(29053, 38707, 0, 0), -- Knight Commander Plaguefist
(29076, 12856, 12932, 5262), -- Scarlet Courier
(28891, 1910, 0, 0), -- Scarlet Miner
(14028, 14706, 0, 0), -- Trigger Jeztor
(51804, 10611, 12452, 0), -- Swamprat Guard
(50350, 57188, 0, 0), -- Brightwing
(51078, 6233, 6233, 0), -- Kitt
(15550, 11591, 0, 0), -- Attumen the Huntsman
(16152, 11591, 0, 0), -- Attumen the Huntsman
(45379, 60957, 0, 60764), -- Augh
(45378, 60957, 0, 0), -- Augh
(32417, 38175, 12932, 0), -- Scarlet Highlord Daion
(30481, 19053, 0, 0), -- Darkmoon Fortune Teller
(34782, 1897, 10616, 0), -- Alicia Cuthbert
(6240, 1899, 0, 0), -- Affray Challenger
(34790, 1897, 0, 2552), -- Southsea Mutineer
(41200, 1896, 37119, 0), -- Generic Bunny - PRK
(21047, 5276, 0, 0), -- Boulder'mok Shaman
(21046, 2809, 0, 0), -- Boulder'mok Brute
(21048, 3361, 3361, 0), -- Boulder'mok Chieftain
(23053, 2703, 0, 0), -- Bladespire Supplicant
(23052, 2703, 0, 0); -- Bloodmaul Supplicant

UPDATE `creature_equip_template` SET `itemEntry1`=0 WHERE `entry`=29505; -- Imindril Spearsong
UPDATE `creature_equip_template` SET `itemEntry1`=0 WHERE `entry`=39268; -- Northwatch Sharpshooter
UPDATE `creature_equip_template` SET `itemEntry1`=0, `itemEntry2`=0, `itemEntry3`=12523 WHERE `entry`=1111; -- Leech Stalker
UPDATE `creature_equip_template` SET `itemEntry1`=0, `itemEntry2`=0, `itemEntry3`=12523 WHERE `entry`=664; -- Benjamin Carevin
UPDATE `creature_equip_template` SET `itemEntry1`=0, `itemEntry2`=0, `itemEntry3`=12523 WHERE `entry`=752; -- Marsh Oracle
UPDATE `creature_equip_template` SET `itemEntry1`=12856 WHERE `entry`=27566; -- Unu'pe Villager
UPDATE `creature_equip_template` SET `itemEntry1`=12951 WHERE `entry`=1841; -- Scarlet Executioner
UPDATE `creature_equip_template` SET `itemEntry1`=14707 WHERE `entry`=1289; -- Gunther Weller
UPDATE `creature_equip_template` SET `itemEntry1`=14707, `itemEntry3`=0 WHERE `entry`=1312; -- Ardwyn Cailen
UPDATE `creature_equip_template` SET `itemEntry1`=14870, `itemEntry2`=0 WHERE `entry`=27500; -- Conquest Hold Berserker
UPDATE `creature_equip_template` SET `itemEntry1`=14877, `itemEntry2`=0 WHERE `entry`=16582; -- Thrallmar Marksman
UPDATE `creature_equip_template` SET `itemEntry1`=14877, `itemEntry2`=0 WHERE `entry`=41431; -- Grimtotem Invader
UPDATE `creature_equip_template` SET `itemEntry1`=17942 WHERE `entry`=18260; -- Boulderfist Invader
UPDATE `creature_equip_template` SET `itemEntry1`=18062 WHERE `entry`=44792; -- Forsaken Trooper
UPDATE `creature_equip_template` SET `itemEntry1`=1896, `itemEntry2`=37119 WHERE `entry`=305; -- White Stallion
UPDATE `creature_equip_template` SET `itemEntry1`=1899 WHERE `entry`=39005; -- Northwatch Rifleman
UPDATE `creature_equip_template` SET `itemEntry1`=1899, `itemEntry2`=0 WHERE `entry`=16831; -- Nethergarde Infantry
UPDATE `creature_equip_template` SET `itemEntry1`=1901, `itemEntry2`=0 WHERE `entry`=1381; -- Krakk
UPDATE `creature_equip_template` SET `itemEntry1`=1902, `itemEntry2`=12860 WHERE `entry`=306; -- Palomino
UPDATE `creature_equip_template` SET `itemEntry1`=1903 WHERE `entry`=18278; -- Pilot Marsha
UPDATE `creature_equip_template` SET `itemEntry1`=1903 WHERE `entry`=19610; -- Irradiated Worker
UPDATE `creature_equip_template` SET `itemEntry1`=1903 WHERE `entry`=21405; -- Ethereal Arcanist
UPDATE `creature_equip_template` SET `itemEntry1`=1906, `itemEntry2`=0, `itemEntry3`=6088 WHERE `entry`=859; -- Guard Berton
UPDATE `creature_equip_template` SET `itemEntry1`=1906, `itemEntry3`=6088 WHERE `entry`=755; -- Lost One Mudlurker
UPDATE `creature_equip_template` SET `itemEntry1`=1908, `itemEntry2`=0 WHERE `entry`=1123; -- Frostmane Headhunter
UPDATE `creature_equip_template` SET `itemEntry1`=1910 WHERE `entry`=19048; -- Stonebreaker Peon
UPDATE `creature_equip_template` SET `itemEntry1`=1910 WHERE `entry`=42650; -- Goblin Siegeworker
UPDATE `creature_equip_template` SET `itemEntry1`=1911 WHERE `entry`=1257; -- Keldric Boucher
UPDATE `creature_equip_template` SET `itemEntry1`=1911 WHERE `entry`=3382; -- Southsea Cannoneer
UPDATE `creature_equip_template` SET `itemEntry1`=1911, `itemEntry2`=0 WHERE `entry`=1502; -- Wretched Ghoul
UPDATE `creature_equip_template` SET `itemEntry1`=2023 WHERE `entry`=17139; -- Windyreed Scavenger
UPDATE `creature_equip_template` SET `itemEntry1`=21465, `itemEntry2`=12452 WHERE `entry`=16580; -- Thrallmar Grunt
UPDATE `creature_equip_template` SET `itemEntry1`=21551, `itemEntry3`=52579 WHERE `entry`=345; -- Bellygrub
UPDATE `creature_equip_template` SET `itemEntry1`=21573, `itemEntry2`=0 WHERE `entry`=1114; -- Jungle Thunderer
UPDATE `creature_equip_template` SET `itemEntry1`=21573, `itemEntry2`=0 WHERE `entry`=749; -- Marsh Murkdweller
UPDATE `creature_equip_template` SET `itemEntry1`=21573, `itemEntry2`=21573, `itemEntry3`=0 WHERE `entry`=1412; -- Squirrel
UPDATE `creature_equip_template` SET `itemEntry1`=2176, `itemEntry3`=0 WHERE `entry`=910; -- Defias Enchanter
UPDATE `creature_equip_template` SET `itemEntry1`=2182, `itemEntry2`=59484, `itemEntry3`=0 WHERE `entry`=750; -- Marsh Inkspewer
UPDATE `creature_equip_template` SET `itemEntry1`=2703 WHERE `entry`=34653; -- Bountiful Table Hostess
UPDATE `creature_equip_template` SET `itemEntry1`=2703 WHERE `entry`=55347; -- Alliance Citizen
UPDATE `creature_equip_template` SET `itemEntry1`=28488, `itemEntry3`=34326 WHERE `entry`=24938; -- Shattered Sun Marksman
UPDATE `creature_equip_template` SET `itemEntry1`=2901, `itemEntry3`=0 WHERE `entry`=1443; -- Fel'zerul
UPDATE `creature_equip_template` SET `itemEntry1`=30178, `itemEntry2`=0 WHERE `entry`=1379; -- Miran
UPDATE `creature_equip_template` SET `itemEntry1`=30178, `itemEntry3`=0 WHERE `entry`=1622; -- Priest 1
UPDATE `creature_equip_template` SET `itemEntry1`=30848, `itemEntry2`=0 WHERE `entry`=1110; -- Skeletal Raider
UPDATE `creature_equip_template` SET `itemEntry1`=30848, `itemEntry2`=0 WHERE `entry`=1158; -- Cursed Marine
UPDATE `creature_equip_template` SET `itemEntry1`=31824 WHERE `entry`=13000; -- Gnome Engineer
UPDATE `creature_equip_template` SET `itemEntry1`=31824, `itemEntry2`=2028 WHERE `entry`=1131; -- Winter Wolf
UPDATE `creature_equip_template` SET `itemEntry1`=31824, `itemEntry2`=2028 WHERE `entry`=1714; -- SAVE Defias Lifer
UPDATE `creature_equip_template` SET `itemEntry1`=31824, `itemEntry3`=0 WHERE `entry`=42775; -- Bilgewater Dockworker
UPDATE `creature_equip_template` SET `itemEntry1`=3346 WHERE `entry`=15551; -- Spectral Stable Hand
UPDATE `creature_equip_template` SET `itemEntry1`=3351, `itemEntry2`=2197 WHERE `entry`=27359; -- Trapped Wintergarde Villager
UPDATE `creature_equip_template` SET `itemEntry1`=3367, `itemEntry3`=0 WHERE `entry`=699; -- Bloodscalp Beastmaster
UPDATE `creature_equip_template` SET `itemEntry1`=34682 WHERE `entry`=27557; -- Warsong Elite
UPDATE `creature_equip_template` SET `itemEntry1`=34682 WHERE `entry`=27573; -- Taunka Huntsman
UPDATE `creature_equip_template` SET `itemEntry1`=34682 WHERE `entry`=27665; -- Kor'kron Pillager
UPDATE `creature_equip_template` SET `itemEntry1`=34682, `itemEntry2`=34682 WHERE `entry`=25243; -- Warsong Honor Guard
UPDATE `creature_equip_template` SET `itemEntry1`=39447 WHERE `entry`=43232; -- Earthen Champion
UPDATE `creature_equip_template` SET `itemEntry1`=41261 WHERE `entry`=344; -- Magistrate Solomon
UPDATE `creature_equip_template` SET `itemEntry1`=41980 WHERE `entry`=43138; -- Stonehearth Defender
UPDATE `creature_equip_template` SET `itemEntry1`=45061 WHERE `entry`=48912; -- Stormpike Trainee
UPDATE `creature_equip_template` SET `itemEntry1`=45123, `itemEntry3`=89315 WHERE `entry`=683; -- Young Panther
UPDATE `creature_equip_template` SET `itemEntry1`=49072, `itemEntry3`=42776 WHERE `entry`=464; -- Guard Parker
UPDATE `creature_equip_template` SET `itemEntry1`=49719, `itemEntry2`=49616, `itemEntry3`=0 WHERE `entry`=747; -- Marsh Murloc
UPDATE `creature_equip_template` SET `itemEntry1`=49721, `itemEntry2`=21572 WHERE `entry`=1112; -- Leech Widow
UPDATE `creature_equip_template` SET `itemEntry1`=49721, `itemEntry2`=21572 WHERE `entry`=751; -- Marsh Flesheater
UPDATE `creature_equip_template` SET `itemEntry1`=49721, `itemEntry2`=49616, `itemEntry3`=0 WHERE `entry`=516; -- [UNUSED] Riverpaw Hunter
UPDATE `creature_equip_template` SET `itemEntry1`=4994 WHERE `entry`=304; -- Felsteed
UPDATE `creature_equip_template` SET `itemEntry1`=4994 WHERE `entry`=346; -- Barkeep Daniels
UPDATE `creature_equip_template` SET `itemEntry1`=52278 WHERE `entry`=347; -- Grizzle Halfmane
UPDATE `creature_equip_template` SET `itemEntry1`=5288 WHERE `entry`=17138; -- Warmaul Reaver
UPDATE `creature_equip_template` SET `itemEntry1`=5289, `itemEntry2`=0 WHERE `entry`=1309; -- Wynne Larson
UPDATE `creature_equip_template` SET `itemEntry1`=5289, `itemEntry3`=0 WHERE `entry`=1098; -- Watcher Merant
UPDATE `creature_equip_template` SET `itemEntry1`=57007, `itemEntry2`=58941 WHERE `entry`=39990; -- Twilight Zealot
UPDATE `creature_equip_template` SET `itemEntry1`=57021, `itemEntry2`=57021 WHERE `entry`=1716; -- Bazil Thredd
UPDATE `creature_equip_template` SET `itemEntry1`=5956 WHERE `entry`=31152; -- Undying Minion
UPDATE `creature_equip_template` SET `itemEntry1`=60209 WHERE `entry`=44847; -- Twilight Armsman
UPDATE `creature_equip_template` SET `itemEntry1`=60765, `itemEntry3`=5258 WHERE `entry`=1613; -- Paladin 20
UPDATE `creature_equip_template` SET `itemEntry1`=8178 WHERE `entry`=25242; -- Warsong Battleguard
UPDATE `creature_equip_template` SET `itemEntry2`=0 WHERE `entry`=27301; -- Apprentice Trotter
UPDATE `creature_equip_template` SET `itemEntry2`=0 WHERE `entry`=44299; -- Beathan Firebrew
UPDATE `creature_equip_template` SET `itemEntry3`=44635 WHERE `entry`=32710; -- Garl Grimgrizzle
DELETE FROM `creature_equip_template` WHERE `itemEntry3` IN (89315, 8192, 16777215);
DELETE FROM `creature_equip_template` WHERE `itemEntry2`=43171;

-- Other spells were wrong
DELETE FROM `npc_trainer` WHERE `entry`=200301;
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
(200301, 34092, 2500000, 762, 150, 60), -- Expert Riding
(200301, 33392, 500000, 762, 75, 40), -- Journeyman Riding
(200301, 33389, 40000, 0, 0, 20), -- Apprentice Riding
(200301, 34093, 50000000, 762, 225, 70), -- Artisan Riding
(200301, 54198, 5000000, 762, 225, 68), -- Cold Weather Flying
(200301, 90269, 2500000, 762, 225, 60), -- Flight Master's License
(200301, 90266, 50000000, 762, 300, 80); -- Master Riding

UPDATE `creature_template` SET `npcflag`=49 WHERE `entry` IN (16279, 16679, 16680, 43004, 49793);
UPDATE `creature_template` SET `npcflag`=51 WHERE `entry` IN (16681, 3033, 3034, 43870);
UPDATE `creature_template` SET `npcflag`=81 WHERE `entry`=19180;
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=201760; -- The Halls of Reflection Gate
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=201759; -- The Forge of Souls Portcullis
UPDATE `gameobject_template` SET `flags`=32 WHERE `entry`=201761; -- The Pit of Saron Portcullis
DELETE FROM `spell_target_position` WHERE `id` IN (94689, 3561, 84073);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(94689, 730, 529.838, 842.595, 36.1126, 1.570796), -- Teleport Player
(3561, 0, -8998.14, 861.254, 29.6206, 2.249991), -- Teleport: Stormwind
(84073, 646, 1040.91, 544.689, 681.86, 3.97935); -- Deepholm Intro Teleport
DELETE FROM `npc_trainer` WHERE `entry` IN (200300, 200302, 200303, 200304, 200305);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES
-- Riding
(200300, 33389, 32000, 0, 0, 20), -- Apprentice Riding
(200300, 33392, 400000, 762, 75, 40), -- Journeyman Riding
-- Fishing
(200302, 54084, 80000, 356, 275, 0), -- Master Fishing
(200302, 18249, 20000, 356, 200, 0), -- Artisan Fishing
(200302, 7733, 80, 0, 0, 5), -- Apprentice Fishing
(200302, 7734, 400, 356, 50, 0), -- Journeyman Fishing
(200302, 54083, 8000, 356, 125, 0), -- Expert Fishing
(200302, 88869, 400000, 356, 425, 0), -- Illustrious Grand Master Fishing
(200302, 51293, 120000, 356, 350, 0), -- Grand Master Fishing
-- First Aid
(200303, 10841, 8000, 129, 240, 0), -- Heavy Mageweave Bandage
(200303, 18629, 16000, 129, 260, 0), -- Runecloth Bandage
(200303, 18630, 16000, 129, 290, 0), -- Heavy Runecloth Bandage
(200303, 10847, 20000, 129, 200, 35), -- Artisan First Aid
(200303, 10840, 8000, 129, 210, 0), -- Mageweave Bandage
(200303, 7929, 4000, 129, 180, 0), -- Heavy Silk Bandage
(200303, 7928, 4000, 129, 150, 0), -- Silk Bandage
(200303, 54254, 800, 129, 125, 0), -- Expert First Aid
(200303, 3277, 200, 129, 80, 0), -- Wool Bandage
(200303, 3278, 800, 129, 115, 0), -- Heavy Wool Bandage
(200303, 7934, 200, 129, 80, 0), -- Anti-Venom
(200303, 3280, 400, 129, 50, 0), -- Journeyman First Aid
(200303, 3279, 80, 0, 0, 0), -- Apprentice First Aid
(200303, 3276, 80, 129, 40, 0), -- Heavy Linen Bandage
(200303, 27033, 32000, 129, 330, 0), -- Heavy Netherweave Bandage
(200303, 54255, 80000, 129, 275, 50), -- Master First Aid
(200303, 27032, 16000, 129, 300, 0), -- Netherweave Bandage
(200303, 45546, 48000, 129, 400, 0), -- Heavy Frostweave Bandage
(200303, 50299, 120000, 129, 350, 65), -- Grand Master First Aid
(200303, 45545, 32000, 129, 350, 0), -- Frostweave Bandage
(200303, 88893, 64000, 129, 525, 0), -- Dense Embersilk Bandage
(200303, 74560, 200000, 129, 425, 75), -- Illustrious Grand Master First Aid
(200303, 74556, 48000, 129, 425, 0), -- Embersilk Bandage
(200303, 74557, 64000, 129, 475, 0), -- Heavy Embersilk Bandage
(200303, 74558, 12000, 129, 525, 0), -- Field Bandage: Dense Embersilk
-- Archaeology
(200304, 80836, 800, 0, 0, 20), -- Apprentice Archaeology
(200304, 89129, 800, 794, 50, 20), -- Journeyman Archaeology
(200304, 89724, 20000, 794, 200, 35), -- Artisan Archaeology
(200304, 89726, 120000, 794, 350, 65), -- Grand Master Archaeology
(200304, 89723, 800, 794, 125, 20), -- Expert Archaeology
(200304, 89725, 80000, 794, 275, 50), -- Master Archaeology
(200304, 89727, 200000, 794, 425, 75), -- Illustrious Grand Master Archaeology
-- Cooking
(200305, 45551, 16000, 185, 350, 0), -- Worm Delight
(200305, 51295, 280000, 185, 350, 0), -- Grand Master Cook
(200305, 45552, 16000, 185, 350, 0), -- Roasted Worg
(200305, 45560, 8000, 185, 350, 0), -- Smoked Rockfin
(200305, 45564, 16000, 185, 350, 0), -- Smoked Salmon
(200305, 45549, 16000, 185, 350, 0), -- Mammoth Meal
(200305, 45553, 16000, 185, 350, 0), -- Rhino Dogs
(200305, 45561, 8000, 185, 350, 0), -- Grilled Bonescale
(200305, 45565, 16000, 185, 350, 0), -- Poached Nettlefish
(200305, 45569, 16000, 185, 350, 0), -- Baked Manta Ray
(200305, 58065, 16000, 185, 350, 0), -- Dalaran Clam Chowder
(200305, 45550, 16000, 185, 350, 0), -- Shoveltusk Steak
(200305, 45554, 40000, 185, 375, 0), -- Great Feast
(200305, 45562, 8000, 185, 350, 0), -- Sauteed Goby
(200305, 45566, 16000, 185, 350, 0), -- Pickled Fangtooth
(200305, 64358, 40000, 185, 400, 0), -- Black Jelly
(200305, 45563, 16000, 185, 350, 0), -- Grilled Sculpin
(200305, 42296, 12000, 185, 320, 0), -- Stewed Trout
(200305, 42302, 16000, 185, 350, 0), -- Fisherman's Feast
(200305, 42305, 16000, 185, 350, 0), -- Hot Buttered Trout
(200305, 54256, 80000, 185, 275, 0), -- Master Cook
(200305, 88006, 28000, 185, 425, 0), -- Blackened Surprise
(200305, 88015, 24000, 185, 415, 0), -- Darkbrew Lager
(200305, 88054, 400000, 185, 425, 0), -- Illustrious Grand Master Cook
(200305, 18261, 20000, 185, 200, 0), -- Artisan Cook
(200305, 46688, 5200, 185, 250, 0), -- Juicy Bear Burger
(200305, 46684, 5200, 185, 250, 0), -- Charred Bear Kabobs
(200305, 18240, 4800, 185, 240, 0), -- Grilled Squid
(200305, 18243, 5200, 185, 250, 0), -- Nightfin Soup
(200305, 18244, 5200, 185, 250, 0), -- Poached Sunscale Salmon
(200305, 4094, 400, 185, 175, 0), -- Barbecued Buzzard Wing
(200305, 54257, 8000, 185, 125, 0), -- Expert Cook
(200305, 21175, 3200, 185, 200, 0), -- Spider Sausage
(200305, 3400, 400, 185, 175, 0), -- Soothing Turtle Bisque
(200305, 18238, 4000, 185, 225, 0), -- Spotted Yellowtail
(200305, 2546, 120, 185, 80, 0), -- Dry Pork Ribs
(200305, 6500, 240, 185, 125, 0), -- Goblin Deviled Clams
(200305, 3399, 360, 185, 150, 0), -- Tasty Lion Steak
(200305, 3412, 400, 185, 50, 0), -- Journeyman Cook
(200305, 37836, 8, 185, 1, 0), -- Spice Bread
(200305, 2539, 40, 185, 10, 0), -- Spiced Wolf Meat
(200305, 2541, 80, 185, 50, 0), -- Coyote Steak
(200305, 2544, 160, 185, 75, 0), -- Crab Cake
(200305, 6499, 80, 185, 50, 0), -- Boiled Clams
(200305, 6415, 80, 185, 50, 0), -- Fillet of Frenzy
(200305, 6412, 40, 185, 10, 0), -- Kaldorei Spider Kabob
(200305, 2551, 80, 0, 0, 0), -- Apprentice Cook
(200305, 93741, 64, 185, 40, 0); -- Venison Jerky


-- These cost have a reputation reduction
UPDATE `npc_trainer` SET `spellcost`=`spellcost`*1.25 WHERE `entry` IN (200300, 200302, 200303, 200304, 200305);
