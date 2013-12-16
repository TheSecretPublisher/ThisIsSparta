DELETE FROM `command` WHERE `name` = 'flusharenapoints';
INSERT INTO `command` (`name`, `security`, `help`) VALUES 
('flusharenapoints', 4, 'Syntax: .flusharenapoints ');