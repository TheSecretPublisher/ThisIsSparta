-- Jinx: Curse of the Elements
DELETE FROM spell_script_names WHERE spell_id=1490;
DELETE FROM spell_linked_spell WHERE spell_trigger in(702, 18223, 1714, 1490) AND spell_effect=-85547;
DELETE FROM spell_linked_spell WHERE spell_trigger in(702, 18223, 1714, 1490) AND spell_effect=-86105;

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (1490, 'spell_warl_curse_of_the_elements');

-- Rank 1
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (702, -85547, 1, 'Warlock Jinx rank 1: Weakness removes jinx');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (18223, -85547, 1, 'Warlock Jinx rank 1: Exhaustion removes jinx');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (1714, -85547, 1, 'Warlock Jinx rank 1: Tongues removes jinx');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (1490, -85547, 1, 'Warlock Jinx rank 1: Elements removes jinx');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (702, -85547, 2, 'Warlock Jinx rank 1: cannot override the Weakness');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (18223, -85547, 2, 'Warlock Jinx rank 1: cannot override the Exhaustion');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (1714, -85547, 2, 'Warlock Jinx rank 1: cannot override the Tongues');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (1490, -85547, 2, 'Warlock Jinx rank 1: cannot override the Elements');

-- Rank 2
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (702, -86105, 1, 'Warlock Jinx rank 2: Weakness removes jinx');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (18223, -86105, 1, 'Warlock Jinx rank 2: Exhaustion removes jinx');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (1714, -86105, 1, 'Warlock Jinx rank 2: Tongues removes jinx');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (1490, -86105, 1, 'Warlock Jinx rank 2: Elements removes jinx');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (702, -86105, 2, 'Warlock Jinx rank 2: cannot override the Weakness');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (18223, -86105, 2, 'Warlock Jinx rank 2: cannot override the Exhaustion');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (1714, -86105, 2, 'Warlock Jinx rank 2: cannot override the Tongues');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (1490, -86105, 2, 'Warlock Jinx rank 2: cannot override the Elements');


-- Jinx: Curse of Weakness
DELETE FROM spell_script_names WHERE spell_id=702;
DELETE FROM spell_linked_spell WHERE spell_trigger=-702 AND spell_effect in(-85539, -85540, -85541, -85542);

INSERT INTO `spell_script_names` VALUES (702, 'spell_warl_curse_of_weakness');
INSERT INTO `spell_linked_spell` VALUES (-702, -85539, 0, 'Warlock Weakness Jinx removes rage debuff');
INSERT INTO `spell_linked_spell` VALUES (-702, -85540, 0, 'Warlock Weakness Jinx removes energy debuff');
INSERT INTO `spell_linked_spell` VALUES (-702, -85541, 0, 'Warlock Weakness Jinx removes runic power debuff');
INSERT INTO `spell_linked_spell` VALUES (-702, -85542, 0, 'Warlock Weakness Jinx removes focus debuff');
