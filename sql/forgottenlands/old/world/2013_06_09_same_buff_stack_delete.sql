-- Attack Power Buff (Multiplier)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=53137 AND `spell_effect` IN (-53137);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=53138 AND `spell_effect` IN (-53138);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=19506 AND `spell_effect` IN (-19506);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=30802 AND `spell_effect` IN (-30802);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=30808 AND `spell_effect` IN (-30808);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79102 AND `spell_effect` IN (-79102);

-- Agility and Strength Buff
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=6673 AND `spell_effect` = -6673;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=93435 AND `spell_effect` = -93435;

-- Critical Buff
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=24604 AND `spell_effect` IN (-24604);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=24932 AND `spell_effect` IN (-24932);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51698 AND `spell_effect` IN (-51698);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51700 AND `spell_effect` IN (-51700);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51701 AND `spell_effect` IN (-51701);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=29801 AND `spell_effect` IN (-29801);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51466 AND `spell_effect` IN (-51466);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=51470 AND `spell_effect` IN (-51470);

-- Water walking (ends in combat)
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=3714 AND `spell_effect` IN (-3714);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=546 AND `spell_effect` IN (-546);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=1706 AND `spell_effect` IN (-1706);

-- Mana
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=54424 AND `spell_effect` IN (-54424);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79058 AND `spell_effect` IN (-79058);

-- Spell Power buff
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=79058 AND `spell_effect` IN (-79058);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=52109 AND `spell_effect` IN (-52109);
