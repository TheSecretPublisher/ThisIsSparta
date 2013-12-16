-- Glyph of Backstab (56800)
DELETE FROM spell_proc_event WHERE entry = 56800;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (56800, 0, 8, 8388612, 0, 0, 16, 2, 0, 0, 0);

-- 