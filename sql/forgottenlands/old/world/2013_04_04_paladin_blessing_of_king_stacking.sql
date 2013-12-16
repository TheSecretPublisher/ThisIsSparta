-- Blessing of Kings & Blessing of Might FIX
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN(79063,79102);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(79063,-79102,1,"Blessing of Kings"),
(79102,-79063,1,"Blessing of Might");