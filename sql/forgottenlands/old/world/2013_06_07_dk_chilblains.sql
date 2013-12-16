-- Quando si dispella la frostfeaver dispella anche Chilblains rank 1 e 2
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=-55095;
INSERT INTO `spell_linked_spell` VALUES
(-55095,-50435,0,'Frost Feaver & Chilblains Rank 2'),
(-55095,-50434,0,'Frost Feaver & Chilblains Rank 1');
