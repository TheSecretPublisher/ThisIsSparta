UPDATE `creature_template` SET `minlevel`=85, `maxlevel`=85, `ScriptName`='npc_flaming_orb' WHERE `entry`=44214;

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 82731 AND `spell_effect` = 84765;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES (82731, 84765, 'Flame Orb Summon');