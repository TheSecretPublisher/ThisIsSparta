CREATE TABLE `character_currency_weekcap` (
	`guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`source` SMALLINT(3) UNSIGNED NOT NULL DEFAULT '0',
	`max_week_rating` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`week_cap` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`guid`, `source`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB;
