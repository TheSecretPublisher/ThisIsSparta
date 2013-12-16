-- Fix Seafood Magnifique Feast
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='87806');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('87806', '94714', 'spell with condition int');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('87806', '72237', 'spell with condition spi');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('87806', '84316', 'spell with condition agi');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('87806', '92686', 'spell with condition str');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='94714');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('94714', '87587', 'spell give intellect');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='72237');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('72237', '87588', 'spell give spirit');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='84316');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('84316', '87586', 'spell give agility');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='92686');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('92686', '87584', 'spell give strength');

DELETE FROM `conditions` WHERE (`SourceEntry`='94714');
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 1, 1, 0, 16913, 0, 0, 0, 0, 0, '', 'Spell Intellect for Druid Balance'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 2, 1, 0, 87327, 0, 0, 0, 0, 0, '', 'Spell Intellect for Priest Shadow'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 3, 1, 0, 84732, 0, 0, 0, 0, 0, '', 'Spell Intellect for Priest Discipline'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 4, 1, 0, 85102, 0, 0, 0, 0, 0, '', 'Spell Intellect for Paladin Holy'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 5, 1, 0, 62099, 0, 0, 0, 0, 0, '', 'Spell Intellect for Shaman Elemental'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 6, 1, 0, 84669, 0, 0, 0, 0, 0, '', 'Spell Intellect for Mage Frost'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 7, 1, 0, 84668, 0, 0, 0, 0, 0, '', 'Spell Intellect for Mage Fire'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 8, 1, 0, 84671, 0, 0, 0, 0, 0, '', 'Spell Intellect for Mage Arcane'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 9, 1, 0, 84739, 0, 0, 0, 0, 0, '', 'Spell Intellect for Warlock Destruction'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 10, 1, 0, 84740, 0, 0, 0, 0, 0, '', 'Spell Intellect for Warlock Demonology'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 94714, 0, 11, 1, 0, 87339, 0, 0, 0, 0, 0, '', 'Spell Intellect for Warlock Affliction'); -- OK
DELETE FROM `conditions` WHERE (`SourceEntry`='72237');
INSERT INTO `conditions` VALUES (17, 0, 72237, 0, 1, 1, 0, 85101, 0, 0, 0, 0, 0, '', 'Spell Spirit for Druid Resto'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 72237, 0, 2, 1, 0, 87336, 0, 0, 0, 0, 0, '', 'Spell Spirit for Priest Holy'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 72237, 0, 3, 1, 0, 16213, 0, 0, 0, 0, 0, '', 'Spell Spirit for Shaman Restoration'); -- OK
DELETE FROM `conditions` WHERE (`SourceEntry`='84316');
INSERT INTO `conditions` VALUES (17, 0, 84316, 0, 1, 1, 0, 84735, 0, 0, 0, 0, 0, '', 'Spell Agility for Druid Feral'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 84316, 0, 2, 1, 0, 30814, 0, 0, 0, 0, 0, '', 'Spell Agility for Shaman Ehnancement'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 84316, 0, 3, 1, 0, 31223, 0, 0, 0, 0, 0, '', 'Spell Agility for Rogue Subtley'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 84316, 0, 4, 1, 0, 13852, 0, 0, 0, 0, 0, '', 'Spell Agility for Rogue Combat'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 84316, 0, 5, 1, 0, 84601, 0, 0, 0, 0, 0, '', 'Spell Agility for Rogue Assassination'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 84316, 0, 6, 1, 0, 84729, 0, 0, 0, 0, 0, '', 'Spell Agility for Hunter Survival'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 84316, 0, 7, 1, 0, 87326, 0, 0, 0, 0, 0, '', 'Spell Agility for Hunter Markshamanship'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 84316, 0, 8, 1, 0, 87325, 0, 0, 0, 0, 0, '', 'Spell Agility for Hunter Beast Mastery'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 84316, 0, 9, 1, 0, 5487, 0, 0, 0, 0, 0, '', 'Spell Agility for Druid Feral Bear Form'); -- OK
DELETE FROM `conditions` WHERE (`SourceEntry`='92686');
INSERT INTO `conditions` VALUES (17, 0, 92686, 0, 1, 1, 0, 29592, 0, 0, 0, 0, 0, '', 'Spell strength for Fury warrior'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 92686, 0, 2, 1, 0, 12296, 0, 0, 0, 0, 0, '', 'Spell strength for Arms warrior'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 92686, 0, 3, 1, 0, 52143, 0, 0, 0, 0, 0, '', 'Spell strength for DK Unholy'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 92686, 0, 4, 1, 0, 50887, 0, 0, 0, 0, 0, '', 'Spell strength for DK Frost'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 92686, 0, 5, 1, 0, 20113, 0, 0, 0, 0, 0, '', 'Spell strength for Paladin Retribution'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 92686, 0, 6, 1, 0, 29144, 0, 0, 0, 0, 0, '', 'Spell strength for Protection Warrior'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 92686, 0, 7, 1, 0, 50029, 0, 0, 0, 0, 0, '', 'Spell strength for DK Blood'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 92686, 0, 8, 1, 0, 53592, 0, 0, 0, 0, 0, '', 'Spell strength for Paladin Protection'); -- OK

-- Fix Broiled Dragon Feast
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='87763');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('87763', '86924', 'spell with condition int');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('87763', '63600', 'spell with condition spi');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('87763', '64105', 'spell with condition agi');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('87763', '72519', 'spell with condition str');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='86924');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('86924', '87567', 'spell give intellect');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='63600');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('63600', '87568', 'spell give spirit');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='64105');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('64105', '87566', 'spell give agility');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='72519');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('72519', '87544', 'spell give strength');

DELETE FROM `conditions` WHERE (`SourceEntry`='86924');
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 1, 1, 0, 16913, 0, 0, 0, 0, 0, '', 'Spell Intellect for Druid Balance'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 2, 1, 0, 87327, 0, 0, 0, 0, 0, '', 'Spell Intellect for Priest Shadow'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 3, 1, 0, 84732, 0, 0, 0, 0, 0, '', 'Spell Intellect for Priest Discipline'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 4, 1, 0, 85102, 0, 0, 0, 0, 0, '', 'Spell Intellect for Paladin Holy'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 5, 1, 0, 62099, 0, 0, 0, 0, 0, '', 'Spell Intellect for Shaman Elemental'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 6, 1, 0, 84669, 0, 0, 0, 0, 0, '', 'Spell Intellect for Mage Frost'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 7, 1, 0, 84668, 0, 0, 0, 0, 0, '', 'Spell Intellect for Mage Fire'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 8, 1, 0, 84671, 0, 0, 0, 0, 0, '', 'Spell Intellect for Mage Arcane'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 9, 1, 0, 84739, 0, 0, 0, 0, 0, '', 'Spell Intellect for Warlock Destruction'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 10, 1, 0, 84740, 0, 0, 0, 0, 0, '', 'Spell Intellect for Warlock Demonology'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 86924, 0, 11, 1, 0, 87339, 0, 0, 0, 0, 0, '', 'Spell Intellect for Warlock Affliction'); -- OK
DELETE FROM `conditions` WHERE (`SourceEntry`='63600');
INSERT INTO `conditions` VALUES (17, 0, 63600, 0, 1, 1, 0, 85101, 0, 0, 0, 0, 0, '', 'Spell Spirit for Druid Resto'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 63600, 0, 2, 1, 0, 87336, 0, 0, 0, 0, 0, '', 'Spell Spirit for Priest Holy'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 63600, 0, 3, 1, 0, 16213, 0, 0, 0, 0, 0, '', 'Spell Spirit for Shaman Restoration'); -- OK
DELETE FROM `conditions` WHERE (`SourceEntry`='64105');
INSERT INTO `conditions` VALUES (17, 0, 64105, 0, 1, 1, 0, 84735, 0, 0, 0, 0, 0, '', 'Spell Agility for Druid Feral'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 64105, 0, 2, 1, 0, 30814, 0, 0, 0, 0, 0, '', 'Spell Agility for Shaman Ehnancement'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 64105, 0, 3, 1, 0, 31223, 0, 0, 0, 0, 0, '', 'Spell Agility for Rogue Subtley'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 64105, 0, 4, 1, 0, 13852, 0, 0, 0, 0, 0, '', 'Spell Agility for Rogue Combat'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 64105, 0, 5, 1, 0, 84601, 0, 0, 0, 0, 0, '', 'Spell Agility for Rogue Assassination'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 64105, 0, 6, 1, 0, 84729, 0, 0, 0, 0, 0, '', 'Spell Agility for Hunter Survival'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 64105, 0, 7, 1, 0, 87326, 0, 0, 0, 0, 0, '', 'Spell Agility for Hunter Markshamanship'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 64105, 0, 8, 1, 0, 87325, 0, 0, 0, 0, 0, '', 'Spell Agility for Hunter Beast Mastery'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 64105, 0, 9, 1, 0, 5487, 0, 0, 0, 0, 0, '', 'Spell Agility for Druid Feral Bear Form'); -- OK
DELETE FROM `conditions` WHERE (`SourceEntry`='72519');
INSERT INTO `conditions` VALUES (17, 0, 72519, 0, 1, 1, 0, 29592, 0, 0, 0, 0, 0, '', 'Spell strength for Fury warrior'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 72519, 0, 2, 1, 0, 12296, 0, 0, 0, 0, 0, '', 'Spell strength for Arms warrior'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 72519, 0, 3, 1, 0, 52143, 0, 0, 0, 0, 0, '', 'Spell strength for DK Unholy'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 72519, 0, 4, 1, 0, 50887, 0, 0, 0, 0, 0, '', 'Spell strength for DK Frost'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 72519, 0, 5, 1, 0, 20113, 0, 0, 0, 0, 0, '', 'Spell strength for Paladin Retribution'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 72519, 0, 6, 1, 0, 29144, 0, 0, 0, 0, 0, '', 'Spell strength for Protection Warrior'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 72519, 0, 7, 1, 0, 50029, 0, 0, 0, 0, 0, '', 'Spell strength for DK Blood'); -- OK
INSERT INTO `conditions` VALUES (17, 0, 72519, 0, 8, 1, 0, 53592, 0, 0, 0, 0, 0, '', 'Spell strength for Paladin Protection'); -- OK

-- Fix Goblin Barbecue
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='87916');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('87916', '87763', 'spell same of Broiled Dragon Feast');

-- Fix Stack cooking food
DELETE FROM `spell_group` WHERE (`id`='1001');
insert into `spell_group` (`id`, `spell_id`) values('1001','18125');
insert into `spell_group` (`id`, `spell_id`) values('1001','18141');
insert into `spell_group` (`id`, `spell_id`) values('1001','19705');
insert into `spell_group` (`id`, `spell_id`) values('1001','19706');
insert into `spell_group` (`id`, `spell_id`) values('1001','19708');
insert into `spell_group` (`id`, `spell_id`) values('1001','19709');
insert into `spell_group` (`id`, `spell_id`) values('1001','19710');
insert into `spell_group` (`id`, `spell_id`) values('1001','19711');
insert into `spell_group` (`id`, `spell_id`) values('1001','23697');
insert into `spell_group` (`id`, `spell_id`) values('1001','24799');
insert into `spell_group` (`id`, `spell_id`) values('1001','24870');
insert into `spell_group` (`id`, `spell_id`) values('1001','25694');
insert into `spell_group` (`id`, `spell_id`) values('1001','25941');
insert into `spell_group` (`id`, `spell_id`) values('1001','33254');
insert into `spell_group` (`id`, `spell_id`) values('1001','33256');
insert into `spell_group` (`id`, `spell_id`) values('1001','33257');
insert into `spell_group` (`id`, `spell_id`) values('1001','33259');
insert into `spell_group` (`id`, `spell_id`) values('1001','33261');
insert into `spell_group` (`id`, `spell_id`) values('1001','33263');
insert into `spell_group` (`id`, `spell_id`) values('1001','33265');
insert into `spell_group` (`id`, `spell_id`) values('1001','33268');
insert into `spell_group` (`id`, `spell_id`) values('1001','33272');
insert into `spell_group` (`id`, `spell_id`) values('1001','35272');
insert into `spell_group` (`id`, `spell_id`) values('1001','40323');
insert into `spell_group` (`id`, `spell_id`) values('1001','42293');
insert into `spell_group` (`id`, `spell_id`) values('1001','43764');
insert into `spell_group` (`id`, `spell_id`) values('1001','43771');
insert into `spell_group` (`id`, `spell_id`) values('1001','44097');
insert into `spell_group` (`id`, `spell_id`) values('1001','44098');
insert into `spell_group` (`id`, `spell_id`) values('1001','44099');
insert into `spell_group` (`id`, `spell_id`) values('1001','44100');
insert into `spell_group` (`id`, `spell_id`) values('1001','44101');
insert into `spell_group` (`id`, `spell_id`) values('1001','44102');
insert into `spell_group` (`id`, `spell_id`) values('1001','44104');
insert into `spell_group` (`id`, `spell_id`) values('1001','44105');
insert into `spell_group` (`id`, `spell_id`) values('1001','44106');
insert into `spell_group` (`id`, `spell_id`) values('1001','45245');
insert into `spell_group` (`id`, `spell_id`) values('1001','45619');
insert into `spell_group` (`id`, `spell_id`) values('1001','46682');
insert into `spell_group` (`id`, `spell_id`) values('1001','46687');
insert into `spell_group` (`id`, `spell_id`) values('1001','46899');
insert into `spell_group` (`id`, `spell_id`) values('1001','53284');
insert into `spell_group` (`id`, `spell_id`) values('1001','57079');
insert into `spell_group` (`id`, `spell_id`) values('1001','57097');
insert into `spell_group` (`id`, `spell_id`) values('1001','57100');
insert into `spell_group` (`id`, `spell_id`) values('1001','57102');
insert into `spell_group` (`id`, `spell_id`) values('1001','57107');
insert into `spell_group` (`id`, `spell_id`) values('1001','57111');
insert into `spell_group` (`id`, `spell_id`) values('1001','57139');
insert into `spell_group` (`id`, `spell_id`) values('1001','57286');
insert into `spell_group` (`id`, `spell_id`) values('1001','57288');
insert into `spell_group` (`id`, `spell_id`) values('1001','57291');
insert into `spell_group` (`id`, `spell_id`) values('1001','57294');
insert into `spell_group` (`id`, `spell_id`) values('1001','57325');
insert into `spell_group` (`id`, `spell_id`) values('1001','57327');
insert into `spell_group` (`id`, `spell_id`) values('1001','57329');
insert into `spell_group` (`id`, `spell_id`) values('1001','57332');
insert into `spell_group` (`id`, `spell_id`) values('1001','57334');
insert into `spell_group` (`id`, `spell_id`) values('1001','57356');
insert into `spell_group` (`id`, `spell_id`) values('1001','57358');
insert into `spell_group` (`id`, `spell_id`) values('1001','57360');
insert into `spell_group` (`id`, `spell_id`) values('1001','57363');
insert into `spell_group` (`id`, `spell_id`) values('1001','57365');
insert into `spell_group` (`id`, `spell_id`) values('1001','57367');
insert into `spell_group` (`id`, `spell_id`) values('1001','57371');
insert into `spell_group` (`id`, `spell_id`) values('1001','57373');
insert into `spell_group` (`id`, `spell_id`) values('1001','57399');
insert into `spell_group` (`id`, `spell_id`) values('1001','58468');
insert into `spell_group` (`id`, `spell_id`) values('1001','58479');
insert into `spell_group` (`id`, `spell_id`) values('1001','59230');
insert into `spell_group` (`id`, `spell_id`) values('1001','59690');
insert into `spell_group` (`id`, `spell_id`) values('1001','59699');
insert into `spell_group` (`id`, `spell_id`) values('1001','62349');
insert into `spell_group` (`id`, `spell_id`) values('1001','64057');
insert into `spell_group` (`id`, `spell_id`) values('1001','65247');
insert into `spell_group` (`id`, `spell_id`) values('1001','65365');
insert into `spell_group` (`id`, `spell_id`) values('1001','65410');
insert into `spell_group` (`id`, `spell_id`) values('1001','65412');
insert into `spell_group` (`id`, `spell_id`) values('1001','65414');
insert into `spell_group` (`id`, `spell_id`) values('1001','65415');
insert into `spell_group` (`id`, `spell_id`) values('1001','65416');
insert into `spell_group` (`id`, `spell_id`) values('1001','66623');
insert into `spell_group` (`id`, `spell_id`) values('1001','66624');
insert into `spell_group` (`id`, `spell_id`) values('1001','69559');
insert into `spell_group` (`id`, `spell_id`) values('1001','84354');
insert into `spell_group` (`id`, `spell_id`) values('1001','87545');
insert into `spell_group` (`id`, `spell_id`) values('1001','87546');
insert into `spell_group` (`id`, `spell_id`) values('1001','87547');
insert into `spell_group` (`id`, `spell_id`) values('1001','87548');
insert into `spell_group` (`id`, `spell_id`) values('1001','87549');
insert into `spell_group` (`id`, `spell_id`) values('1001','87550');
insert into `spell_group` (`id`, `spell_id`) values('1001','87551');
insert into `spell_group` (`id`, `spell_id`) values('1001','87552');
insert into `spell_group` (`id`, `spell_id`) values('1001','87554');
insert into `spell_group` (`id`, `spell_id`) values('1001','87555');
insert into `spell_group` (`id`, `spell_id`) values('1001','87556');
insert into `spell_group` (`id`, `spell_id`) values('1001','87557');
insert into `spell_group` (`id`, `spell_id`) values('1001','87558');
insert into `spell_group` (`id`, `spell_id`) values('1001','87559');
insert into `spell_group` (`id`, `spell_id`) values('1001','87560');
insert into `spell_group` (`id`, `spell_id`) values('1001','87561');
insert into `spell_group` (`id`, `spell_id`) values('1001','87562');
insert into `spell_group` (`id`, `spell_id`) values('1001','87563');
insert into `spell_group` (`id`, `spell_id`) values('1001','87564');
insert into `spell_group` (`id`, `spell_id`) values('1001','87565');
insert into `spell_group` (`id`, `spell_id`) values('1001','87634');
insert into `spell_group` (`id`, `spell_id`) values('1001','87635');
insert into `spell_group` (`id`, `spell_id`) values('1001','87697');
insert into `spell_group` (`id`, `spell_id`) values('1001','87699');
