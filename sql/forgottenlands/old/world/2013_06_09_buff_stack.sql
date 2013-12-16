-- Attack Power (Multiplier)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=53137 AND `spell_effect` IN (-19506, -30802, -30808, -79102);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53137, -19506, 2, 'Abomination\'s Might (rank 1) immune to Trueshot Aura');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53137, -30802, 2, 'Abomination\'s Might (rank 1) immune to Unleashed Rage (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53137, -30808, 2, 'Abomination\'s Might (rank 1) immune to Unleashed Rage (rank 2)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=53138 AND `spell_effect` IN (-19506, -30802, -30808, -79102);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53138, -19506, 2, 'Abomination\'s Might (rank 2) immune to Trueshot Aura');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53138, -30802, 2, 'Abomination\'s Might (rank 2) immune to Unleashed Rage (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53138, -30808, 2, 'Abomination\'s Might (rank 2) immune to Unleashed Rage (rank 2)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=19506 AND `spell_effect` IN (-53137, -53138, -30802, -30808, -79102);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (19506, -53137, 2, 'Trueshot Aura immune to Abomination\'s Might (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (19506, -53138, 2, 'Trueshot Aura immune to Abomination\'s Might (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (19506, -30802, 2, 'Trueshot Aura immune to Unleashed Rage (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (19506, -30808, 2, 'Trueshot Aura immune to Unleashed Rage (rank 2)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=30802 AND `spell_effect` IN (-53137, -53138, -19506, -79102);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (30802, -53137, 2, 'Unleashed Rage (rank 1) immune to Abomination\'s Might (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (30802, -53138, 2, 'Unleashed Rage (rank 1) immune to Abomination\'s Might (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (30802, -19506, 2, 'Unleashed Rage (rank 1) immune to Trueshot Aura');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=30808 AND `spell_effect` IN (-53137, -53138, -19506, -79102);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (30808, -53137, 2, 'Unleashed Rage (rank 2) immune to Abomination\'s Might (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (30808, -53138, 2, 'Unleashed Rage (rank 2) immune to Abomination\'s Might (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (30808, -19506, 2, 'Unleashed Rage (rank 2) immune to Trueshot Aura');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79102 AND `spell_effect` IN (-53137, -53138, -19506, -30802, -30808, -79101, -79102);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -53137, 1, 'Blessing of Might (raid) removes Abomination\'s Might (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -53138, 1, 'Blessing of Might (raid) removes Abomination\'s Might (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -19506, 1, 'Blessing of Might (raid) removes Trueshot Aura');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -30802, 1, 'Blessing of Might (raid) removes Unleashed Rage (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -30808, 1, 'Blessing of Might (raid) removes Unleashed Rage (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -53137, 2, 'Blessing of Might (raid) immune to Abomination\'s Might (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -53138, 2, 'Blessing of Might (raid) immune to Abomination\'s Might (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -19506, 2, 'Blessing of Might (raid) immune to Trueshot Aura');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -30802, 2, 'Blessing of Might (raid) immune to Unleashed Rage (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -30808, 2, 'Blessing of Might (raid) immune to Unleashed Rage (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -79101, 2, 'Blessing of Might (raid) immune to Blessing of Might (single)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79101 AND `spell_effect` IN (-53137, -53138, -19506, -30802, -30808, -79102, -79101);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -53137, 1, 'Blessing of Might (single) removes Abomination\'s Might (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -53138, 1, 'Blessing of Might (single) removes Abomination\'s Might (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -19506, 1, 'Blessing of Might (single) removes Trueshot Aura');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -30802, 1, 'Blessing of Might (single) removes Unleashed Rage (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -30808, 1, 'Blessing of Might (single) removes Unleashed Rage (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -53137, 2, 'Blessing of Might (single) immune to Abomination\'s Might (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -53138, 2, 'Blessing of Might (single) immune to Abomination\'s Might (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -19506, 2, 'Blessing of Might (single) immune to Trueshot Aura');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -30802, 2, 'Blessing of Might (single) immune to Unleashed Rage (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -30808, 2, 'Blessing of Might (single) immune to Unleashed Rage (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -79102, 2, 'Blessing of Might (single) immune to Blessing of Might (raid)');

-- Critical strike
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=24932 AND `spell_effect` IN (-24604, -51698, -51700, -51701, -29801, -51466, -51470);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24932, -51698, 2, 'Leader of the Pack immune to Honor Among Thieves (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24932, -51700, 2, 'Leader of the Pack immune to Honor Among Thieves (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24932, -51701, 2, 'Leader of the Pack immune to Honor Among Thieves (rank 3)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24932, -29801, 2, 'Leader of the Pack immune to Rampage');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24932, -51466, 2, 'Leader of the Pack immune to Elemental Oath (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24932, -51470, 2, 'Leader of the Pack immune to Elemental Oath (rank 2)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51698 AND `spell_effect` IN (-24604, -24932, -29801, -51466, -51470);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51698, -24932, 2, 'Honor Among Thieves (rank 1) immune to Leader of the Pack');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51698, -29801, 2, 'Honor Among Thieves (rank 1) immune to Rampage');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51698, -51466, 2, 'Honor Among Thieves (rank 1) immune to Elemental Oath (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51698, -51470, 2, 'Honor Among Thieves (rank 1) immune to Elemental Oath (rank 2)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51700 AND `spell_effect` IN (-24604, -24932, -29801, -51466, -51470);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51700, -24932, 2, 'Honor Among Thieves (rank 2) immune to Leader of the Pack');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51700, -29801, 2, 'Honor Among Thieves (rank 2) immune to Rampage');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51700, -51466, 2, 'Honor Among Thieves (rank 2) immune to Elemental Oath (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51700, -51470, 2, 'Honor Among Thieves (rank 2) immune to Elemental Oath (rank 2)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51701 AND `spell_effect` IN (-24604, -24932, -29801, -51466, -51470);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51701, -24932, 2, 'Honor Among Thieves (rank 3) immune to Leader of the Pack');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51701, -29801, 2, 'Honor Among Thieves (rank 3) immune to Rampage');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51701, -51466, 2, 'Honor Among Thieves (rank 3) immune to Elemental Oath (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51701, -51470, 2, 'Honor Among Thieves (rank 3) immune to Elemental Oath (rank 2)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=29801 AND `spell_effect` IN (-24604, -51698, -51700, -51701, -24932, -51466, -51470);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (29801, -51698, 2, 'Rampage immune to Honor Among Thieves (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (29801, -51700, 2, 'Rampage immune to Honor Among Thieves (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (29801, -51701, 2, 'Rampage immune to Honor Among Thieves (rank 3)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (29801, -24932, 2, 'Rampage immune to Leader of the Pack');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (29801, -51466, 2, 'Rampage immune to Elemental Oath (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (29801, -51470, 2, 'Rampage immune to Elemental Oath (rank 2)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51466 AND `spell_effect` IN (-24604, -51698, -51700, -51701, -24932, -29801);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51466, -51698, 2, 'Elemental Oath (rank 1) immune to Honor Among Thieves (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51466, -51700, 2, 'Elemental Oath (rank 1) immune to Honor Among Thieves (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51466, -51701, 2, 'Elemental Oath (rank 1) immune to Honor Among Thieves (rank 3)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51466, -24932, 2, 'Elemental Oath (rank 1) immune to Leader of the Pack');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51466, -29801, 2, 'Elemental Oath (rank 1) immune to Rampage');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51470 AND `spell_effect` IN (-24604, -51698, -51700, -51701, -24932, -29801);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51470, -51698, 2, 'Elemental Oath (rank 2) immune to Honor Among Thieves (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51470, -51700, 2, 'Elemental Oath (rank 2) immune to Honor Among Thieves (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51470, -51701, 2, 'Elemental Oath (rank 2) immune to Honor Among Thieves (rank 3)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51470, -24932, 2, 'Elemental Oath (rank 2) immune to Leader of the Pack');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (51470, -29801, 2, 'Elemental Oath (rank 2) immune to Rampage');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=90309 AND `spell_effect` IN (-51466, -51470, -51698, -51700, -51701, -24932, -29801, -24604);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -51466, 1, 'Terrifying Roar removes Elemental Oath (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -51470, 1, 'Terrifying Roar removes Elemental Oath (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -51698, 1, 'Terrifying Roar removes Honor Among Thieves (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -51700, 1, 'Terrifying Roar removes Honor Among Thieves (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -51701, 1, 'Terrifying Roar removes Honor Among Thieves (rank 3)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -24932, 1, 'Terrifying Roar removes Leader of the Pack');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -29801, 1, 'Terrifying Roar removes Rampage');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -24604, 1, 'Terrifying Roar removes Furious Howl');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -51466, 2, 'Terrifying Roar immune to Elemental Oath (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -51470, 2, 'Terrifying Roar immune to Elemental Oath (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -51698, 2, 'Terrifying Roar immune to Honor Among Thieves (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -51700, 2, 'Terrifying Roar immune to Honor Among Thieves (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -51701, 2, 'Terrifying Roar immune to Honor Among Thieves (rank 3)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -24932, 2, 'Terrifying Roar immune to Leader of the Pack');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90309, -29801, 2, 'Terrifying Roar immune to Rampage');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=24604 AND `spell_effect` IN (-51466, -51470, -51698, -51700, -51701, -24932, -29801, -90309);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -51466, 1, 'Furious Howl removes Elemental Oath (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -51470, 1, 'Furious Howl removes Elemental Oath (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -51698, 1, 'Furious Howl removes Honor Among Thieves (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -51700, 1, 'Furious Howl removes Honor Among Thieves (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -51701, 1, 'Furious Howl removes Honor Among Thieves (rank 3)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -24932, 1, 'Furious Howl removes Leader of the Pack');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -29801, 1, 'Furious Howl removes Rampage');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -90309, 1, 'Furious Howl removes Terrifying Roar');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -51466, 2, 'Furious Howl immune to Elemental Oath (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -51470, 2, 'Furious Howl immune to Elemental Oath (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -51698, 2, 'Furious Howl immune to Honor Among Thieves (rank 1)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -51700, 2, 'Furious Howl immune to Honor Among Thieves (rank 2)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -51701, 2, 'Furious Howl immune to Honor Among Thieves (rank 3)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -24932, 2, 'Furious Howl immune to Leader of the Pack');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24604, -29801, 2, 'Furious Howl immune to Rampage');

-- Agility and Strength
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=6673 AND `spell_effect` IN (-93435, -57330, -8076);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (6673, -93435, 1, 'Battle Shout removes Roar of Courage');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (6673, -57330, 1, 'Battle Shout removes Horn of Winter');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (6673, -8076, 1, 'Battle Shout removes Strength of Earth Totem');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (6673, -8076, 2, 'Battle Shout immune to Strength of Earth Totem');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=93435 AND `spell_effect` IN (-6673, -57330, -8076);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (93435, -6673, 1, 'Roar of Courage removes Battle Shout');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (93435, -57330, 1, 'Roar of Courage removes Horn of Winter');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (93435, -8076, 1, 'Roar of Courage removes Strength of Earth Totem');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (93435, -8076, 2, 'Roar of Courage immune to Strength of Earth Totem');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=57330 AND `spell_effect` IN (-6673, -93435, -8076);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (57330, -6673, 1, 'Horn of Winter removes Battle Shout');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (57330, -93435, 1, 'Horn of Winter removes Roar of Courage');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (57330, -8076, 1, 'Horn of Winter removes Strength of Earth Totem');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (57330, -8076, 2, 'Horn of Winter immune to Strength of Earth Totem');

-- Water walking (ends in combat)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=3714 AND `spell_effect` IN (-546, -1706);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (3714, -546, 1, 'Path of Frost removes Water Walking');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (3714, -1706, 1, 'Path of Frost removes Levitate');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=546 AND `spell_effect` IN (-3714, -1706);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (546, -3714, 1, 'Water Walking removes Path of Frost');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (546, -1706, 1, 'Water Walking removes Levitate');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=1706 AND `spell_effect` IN (-3714, -546);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (1706, -3714, 1, 'Levitate removes Path of Frost');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (1706, -546, 1, 'Levitate removes Water Walking');

-- Mana
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=54424 AND `spell_effect` = -79058;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (54424, -79058, 1, 'Fel Intelligence removes Arcane Brilliance');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79058 AND `spell_effect` = -54424;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79058, -54424, 1, 'Arcane Brilliance removes Fel Intelligence');

-- Spell Power (6%)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=52109 AND `spell_effect` IN (-79058, -79039);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79058 AND `spell_effect` IN (-52109, -79039);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79058, -52109, 1, 'Arcane Brilliance removes Flametongue Totem');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79058, -52109, 2, 'Arcane Brilliance immune to Flametongue Totem');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79058, -79039, 1, 'Arcane Brilliance removes Dalaran Brilliance');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79039 AND `spell_effect` IN (-79058, -52109);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79039, -79058, 1, 'Dalaran Brilliance removes Arcane Brilliance');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79039, -52109, 1, 'Dalaran Brilliance removes Flametongue Totem');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79039, -52109, 2, 'Dalaran Brilliance immune to Flametongue Totem');

-- Spell power (10%)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=77747 AND `spell_effect` = -53646;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (77747, -53646, 2, 'Totemic Wrath immune to Demonic Pact');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=53646 AND `spell_effect` = -77747;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53646, -77747, 2, 'Demonic Pact immune to Totemic Wrath');

-- Stats
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79062 AND `spell_effect` IN (-79062, -79063, -79060, -79061, -90363);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79062, -79063, 1, 'Blessing of Kings (single) removes Blessing of Kings (raid)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79062, -79060, 1, 'Blessing of Kings (single) removes Mark of the Wild (single)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79062, -79061, 1, 'Blessing of Kings (single) removes Mark of the Wild (raid)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79062, -90363, 1, 'Blessing of Kings (single) removes Embrace of the Shale Spider');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79063 AND `spell_effect` IN (-79062, -79063, -79060, -79061, -90363);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79063, -79062, 1, 'Blessing of Kings (raid) removes Blessing of Kings (single)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79063, -79060, 1, 'Blessing of Kings (raid) removes Mark of the Wild (single)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79063, -79061, 1, 'Blessing of Kings (raid) removes Mark of the Wild (raid)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79063, -90363, 1, 'Blessing of Kings (raid) removes Embrace of the Shale Spider');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79060 AND `spell_effect` IN (-79062, -79063, -79060, -79061, -90363);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79060, -79062, 1, 'Mark of the Wild (single) removes Blessing of Kings (single)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79060, -79063, 1, 'Mark of the Wild (single) removes Blessing of Kings (raid)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79060, -79061, 1, 'Mark of the Wild (single) removes Mark of the Wild (raid)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79060, -90363, 1, 'Mark of the Wild (single) removes Embrace of the Shale Spider');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79061 AND `spell_effect` IN (-79062, -79063, -79060, -79061, -90363);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79061, -79062, 1, 'Mark of the Wild (raid) removes Blessing of Kings (single)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79061, -79063, 1, 'Mark of the Wild (raid) removes Blessing of Kings (raid)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79061, -79060, 1, 'Mark of the Wild (raid) removes Mark of the Wild (single)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79061, -90363, 1, 'Mark of the Wild (raid) removes Embrace of the Shale Spider');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=90363 AND `spell_effect` IN (-79062, -79063, -79060, -79061, -90363);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90363, -79062, 1, 'Embrace of the Shale Spider removes Blessing of Kings (single)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90363, -79063, 1, 'Embrace of the Shale Spider removes Blessing of Kings (raid)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90363, -79060, 1, 'Embrace of the Shale Spider removes Mark of the Wild (single)');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90363, -79061, 1, 'Embrace of the Shale Spider removes Mark of the Wild (raid)');

-- Stamina
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=6307 AND `spell_effect` = -90364;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (6307, -90364, 2, 'Blood Pact immune to Qiraji Fortitude');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=90364 AND `spell_effect` = -6307;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (90364, -6307, 2, 'Qiraji Fortitude immune to Blood Pact');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=21562 AND `spell_effect` IN (-90364, -6307, -469);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (21562, -90364, 1, 'Power Word: Fortitude removes Qiraji Fortitude');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (21562, -6307, 1, 'Power Word: Fortitude removes Blood Pact');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (21562, -469, 1, 'Power Word: Fortitude removes Commanding Shout');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (21562, -90364, 2, 'Power Word: Fortitude immune to Qiraji Fortitude');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (21562, -6307, 2, 'Power Word: Fortitude immune to Blood Pact');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=469 AND `spell_effect` IN (-90364, -6307, -21562);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (469, -90364, 1, 'Commanding Shout removes Qiraji Fortitude');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (469, -6307, 1, 'Commanding Shout removes Blood Pact');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (469, -21562, 1, 'Commanding Shout removes Power Word: Fortitude');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (469, -90364, 2, 'Commanding Shout immune to Qiraji Fortitude');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (469, -6307, 2, 'Commanding Shout immune to Blood Pact');

-- Mana regen
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=54424 AND `spell_effect` = -5677;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (54424, -5677, 2, 'Fel Intelligence immune to Mana Spring Totem');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=5677 AND `spell_effect` = -54424;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (5677, -54424, 2, 'Mana Spring Totem immune to Fel Intelligence');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79102 AND `spell_effect` IN (-5677, -54424);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -5677, 1, 'Blessing of Might (raid) removes Mana Spring Totem');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -5677, 2, 'Blessing of Might (raid) immune to Mana Spring Totem');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -54424, 1, 'Blessing of Might (raid) removes Fel Intelligence');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79102, -54424, 2, 'Blessing of Might (raid) immune to Fel Intelligence');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79101 AND `spell_effect` IN (-5677, -54424);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -5677, 1, 'Blessing of Might (single) removes Mana Spring Totem');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -5677, 2, 'Blessing of Might (single) immune to Mana Spring Totem');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -54424, 1, 'Blessing of Might (single) removes Fel Intelligence');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (79101, -54424, 2, 'Blessing of Might (single) immune to Fel Intelligence');

-- Spell Haste
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=24907 AND `spell_effect` IN (-49868, -2895);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24907, -49868, 2, 'Moonkin Aura immune to Mind Quickening');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (24907, -2895, 2, 'Moonkin Aura immune to Wrath of Air Totem');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=49868 AND `spell_effect` IN (-24907, -2895);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (49868, -24907, 2, 'Mind Quickening immune to Moonkin Aura');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (49868, -2895, 2, 'Mind Quickening immune to Wrath of Air Totem');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=2895 AND `spell_effect` IN (-24907, -49868);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (2895, -24907, 2, 'Wrath of Air Totem immune to Moonkin Aura');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (2895, -49868, 2, 'Wrath of Air Totem immune to Mind Quickening');

-- Damage
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=75447 AND `spell_effect` IN (-82930, -31876);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (75447, -82930, 2, 'Ferocious Inspiration immune to Arcane Tactics');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (75447, -31876, 2, 'Ferocious Inspiration immune to Communion');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=82930 AND `spell_effect` IN (-75447, -31876);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (82930, -75447, 2, 'Arcane Tactics immune to Ferocious Inspiration');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (82930, -31876, 2, 'Arcane Tactics immune to Communion');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=31876 AND `spell_effect` IN (-75447, -82930);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (31876, -75447, 2, 'Communion immune to Ferocious Inspiration');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (31876, -82930, 2, 'Communion immune to Arcane Tactics');

-- Attack Speed
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=53290 AND `spell_effect` IN (-55610, -8515);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53290, -55610, 2, 'Hunting Party immune to Improved Icy Talons');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (53290, -8515, 2, 'Hunting Party immune to Windfury Totem');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=55610 AND `spell_effect` IN (-53290, -8515);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (55610, -53290, 2, 'Improved Icy Talons immune to Hunting Party');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (55610, -8515, 2, 'Improved Icy Talons immune to Windfury Totem');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=8515 AND `spell_effect` IN (-55610, -53290);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (8515, -55610, 2, 'Windfury Totem immune to Improved Icy Talons');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (8515, -53290, 2, 'Windfury Totem immune to Hunting Party');

-- Spell Critical
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=22959 AND `spell_effect` IN (-17800);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (22959, -17800, 1, 'Critical Mass removes Shadow and Flame');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=17800 AND `spell_effect` IN (-22959);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (17800, -22959, 1, 'Shadow and Flame removes Critical Mass');