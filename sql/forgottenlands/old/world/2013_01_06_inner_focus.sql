DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 2061 AND `spell_effect` = -89485;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 2060 AND `spell_effect` = -89485;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 596 AND `spell_effect` = -89485;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 32546 AND `spell_effect` = -89485;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
(2061, -89485, 'Flash Heal Remove Inner Focus'),
(2060, -89485, 'Greater Heal Remove Inner Focus'),
(596, -89485, 'Prayer of Healing Remove Inner Focus'),
(32546, -89485, 'Bindg Heal Remove Inner Focus');