-- Fix priority buff
DELETE FROM `spell_group` WHERE `spell_id` IN (79468, 79474, 79477, 79481, 79632, 79635, 79637, 80532, 63729, 79640, 79639, 79638) AND id = 1;
insert into `spell_group` (`id`, `spell_id`) values('1','79468');
insert into `spell_group` (`id`, `spell_id`) values('1','79474');
insert into `spell_group` (`id`, `spell_id`) values('1','79477');
insert into `spell_group` (`id`, `spell_id`) values('1','79481');
insert into `spell_group` (`id`, `spell_id`) values('1','79632');
insert into `spell_group` (`id`, `spell_id`) values('1','79635');
insert into `spell_group` (`id`, `spell_id`) values('1','79637');
insert into `spell_group` (`id`, `spell_id`) values('1','80532');
insert into `spell_group` (`id`, `spell_id`) values('1','63729');
insert into `spell_group` (`id`, `spell_id`) values('1','79640');
insert into `spell_group` (`id`, `spell_id`) values('1','79639');
insert into `spell_group` (`id`, `spell_id`) values('1','79638');

DELETE FROM `spell_group` WHERE `spell_id` IN (79480, 79631, 79637, 79640, 12608, 79639, 79638) AND id = 2;
insert into `spell_group` (`id`, `spell_id`) values('2','79480');
insert into `spell_group` (`id`, `spell_id`) values('2','79631');
insert into `spell_group` (`id`, `spell_id`) values('2','79637');
insert into `spell_group` (`id`, `spell_id`) values('2','79640');
insert into `spell_group` (`id`, `spell_id`) values('2','12608');
insert into `spell_group` (`id`, `spell_id`) values('2','79639');
insert into `spell_group` (`id`, `spell_id`) values('2','79638');

UPDATE `spell_group` SET `id`='1' WHERE (`id`='2') AND (`spell_id`='53764');
UPDATE `spell_group` SET `id`='1' WHERE (`id`='2') AND (`spell_id`='53747');
UPDATE `spell_group` SET `id`='1' WHERE (`id`='2') AND (`spell_id`='28509');
UPDATE `spell_group` SET `id`='1' WHERE (`id`='2') AND (`spell_id`='39627');
UPDATE `spell_group` SET `id`='1' WHERE (`id`='2') AND (`spell_id`='24363');
UPDATE `spell_group` SET `id`='1' WHERE (`id`='2') AND (`spell_id`='17535');
UPDATE `spell_group` SET `id`='1' WHERE (`id`='2') AND (`spell_id`='11396');
UPDATE `spell_group` SET `id`='1' WHERE (`id`='2') AND (`spell_id`='3166');