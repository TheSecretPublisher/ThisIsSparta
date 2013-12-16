-- Faerie Fire
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=770 AND `spell_effect`=91565;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES (770,91565,0,'Faerie fire');

-- Faerie fire and Cyclone under Cylcone
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33786 AND `spell_effect`=-91565;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33786 AND `spell_effect`=-33786;

INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (33786, -91565, 2, 'Druid - Prevent Faerie Fire under Cyclone');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (33786, -33786, 2, 'Druid - Prevent Cyclone under Cyclone');