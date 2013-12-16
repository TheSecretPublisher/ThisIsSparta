DELETE FROM `spell_bonus_data` WHERE `entry`=94447;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `comments`) VALUES (94447, 0.284, 0.0234, 'Druid - Lifebloom (Tree of Life)');

DELETE FROM `spell_script_names` WHERE `spell_id`=94447;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (94447, 'spell_dru_lifebloom');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33891 AND `spell_effect`= 81098;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (33891, 81098, 2, 'Druid: Tree of life wrath and lifebloom bonuses');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33763 AND `spell_effect`= -94447;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (33763, -94447, 'Lifebloom singletarget removes Lifebloom multitarget');
