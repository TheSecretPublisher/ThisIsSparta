CREATE TABLE `creature_onkill_currency` (
	`creature_id` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Creature Identifier',
	`CurrencyId1` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
	`CurrencyId2` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
	`CurrencyId3` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
	`CurrencyCount1` MEDIUMINT(9) NOT NULL DEFAULT '0',
	`CurrencyCount2` MEDIUMINT(9) NOT NULL DEFAULT '0',
	`CurrencyCount3` MEDIUMINT(9) NOT NULL DEFAULT '0',
	PRIMARY KEY (`creature_id`)
)
COMMENT='Forgotten DB Creature Onkill Currency'
COLLATE='utf8_general_ci'
ENGINE=MyISAM;