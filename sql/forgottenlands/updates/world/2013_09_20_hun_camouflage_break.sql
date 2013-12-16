DELETE FROM spell_script_names WHERE ScriptName='spell_hun_camouflage_ignore' AND 
spell_id in(83254, 83244, 83243, 83242, 883, 2641, 34026, 19434, 1130, 1543, 
			1499, 13809, 13813, 13795, 34600, 60192, 82941, 82939, 82945, 82948, 
			136, 19577, 19574, 80168, 80169, 13165, 82661, 5118, 13159, 20043);
INSERT INTO `spell_script_names` VALUES (83254, 'spell_hun_camouflage_ignore'); -- Call Pet 5
INSERT INTO `spell_script_names` VALUES (83244, 'spell_hun_camouflage_ignore'); -- Call Pet 4
INSERT INTO `spell_script_names` VALUES (83243, 'spell_hun_camouflage_ignore'); -- Call Pet 3
INSERT INTO `spell_script_names` VALUES (83242, 'spell_hun_camouflage_ignore'); -- Call Pet 2
INSERT INTO `spell_script_names` VALUES (883, 'spell_hun_camouflage_ignore'); -- Call Pet 1
INSERT INTO `spell_script_names` VALUES (2641, 'spell_hun_camouflage_ignore'); -- Dismiss Pet
INSERT INTO `spell_script_names` VALUES (34026, 'spell_hun_camouflage_ignore'); -- Kill Command
INSERT INTO `spell_script_names` VALUES (19434, 'spell_hun_camouflage_ignore'); -- Aimed Shot
INSERT INTO `spell_script_names` VALUES (1130, 'spell_hun_camouflage_ignore'); -- Hunter's Mark
INSERT INTO `spell_script_names` VALUES (1543, 'spell_hun_camouflage_ignore'); -- Flare
INSERT INTO `spell_script_names` VALUES (1499, 'spell_hun_camouflage_ignore'); -- Freezing Trap
INSERT INTO `spell_script_names` VALUES (13809, 'spell_hun_camouflage_ignore'); -- Ice Trap
INSERT INTO `spell_script_names` VALUES (13813, 'spell_hun_camouflage_ignore'); -- Explosive Trap
INSERT INTO `spell_script_names` VALUES (13795, 'spell_hun_camouflage_ignore'); -- Immolation Trap
INSERT INTO `spell_script_names` VALUES (34600, 'spell_hun_camouflage_ignore'); -- Snake Trap
INSERT INTO `spell_script_names` VALUES (60192, 'spell_hun_camouflage_ignore'); -- Freezing Trap (with launcher)
INSERT INTO `spell_script_names` VALUES (82941, 'spell_hun_camouflage_ignore'); -- Ice Trap (with launcher)
INSERT INTO `spell_script_names` VALUES (82939, 'spell_hun_camouflage_ignore'); -- Explosive Trap (with launcher)
INSERT INTO `spell_script_names` VALUES (82945, 'spell_hun_camouflage_ignore'); -- Immolation Trap (with launcher)
INSERT INTO `spell_script_names` VALUES (82948, 'spell_hun_camouflage_ignore'); -- Snake Trap (with launcher)
INSERT INTO `spell_script_names` VALUES (136, 'spell_hun_camouflage_ignore'); -- Mend Pet
INSERT INTO `spell_script_names` VALUES (19577, 'spell_hun_camouflage_ignore'); -- Intimidation
INSERT INTO `spell_script_names` VALUES (80168, 'spell_hun_camouflage_ignore'); -- Food lv. 80
INSERT INTO `spell_script_names` VALUES (80169, 'spell_hun_camouflage_ignore'); -- Food lv. 85
INSERT INTO `spell_script_names` VALUES (13165, 'spell_hun_camouflage_ignore'); -- Aspect of the Hawk
INSERT INTO `spell_script_names` VALUES (82661, 'spell_hun_camouflage_ignore'); -- Aspect of the Fox
INSERT INTO `spell_script_names` VALUES (5118, 'spell_hun_camouflage_ignore'); -- Aspect of the Cheetah
INSERT INTO `spell_script_names` VALUES (13159, 'spell_hun_camouflage_ignore'); -- Aspect of the Pack
INSERT INTO `spell_script_names` VALUES (20043, 'spell_hun_camouflage_ignore'); -- Aspect of the Wild

-- No longer needed
DELETE FROM spell_proc_event WHERE entry=51755;
DELETE FROM spell_script_names where spell_id=51755 AND ScriptName='spell_hun_camouflage_base';

-- Camouflage ignores enemies Flares
DELETE FROM spell_script_names where spell_id=94528 AND ScriptName='spell_hun_flare';
INSERT INTO `spell_script_names` VALUES (94528, 'spell_hun_flare');

-- Mass Dispel removes Camouflage
DELETE FROM spell_script_names where spell_id=32592 AND ScriptName='spell_pri_mass_dispel';
INSERT INTO `spell_script_names` VALUES (32592, 'spell_pri_mass_dispel');
