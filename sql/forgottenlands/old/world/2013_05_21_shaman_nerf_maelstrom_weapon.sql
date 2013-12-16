-- Nerf Maelstrom Weapon rank 1,2,3
DELETE FROM `spell_proc_event` WHERE `entry`IN(51528,51529,51530);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('51528','0','0','0','0','0','12582932','7','3','0','0'),
('51529','0','0','0','0','0','12582932','7','6','0','0'),
('51530','0','0','0','0','0','12582932','7','10','0','0');
