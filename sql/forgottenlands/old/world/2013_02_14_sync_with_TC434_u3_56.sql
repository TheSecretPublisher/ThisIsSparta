UPDATE `creature_template` SET `equipment_id`=36561 WHERE `entry` IN (36561,36571);

DELETE FROM `creature_equip_template` WHERE `entry`=36561;
INSERT INTO `creature_equip_template` (`entry`, `itemEntry1`, `itemEntry2`, `itemEntry3`) VALUES
(36561, 38488, 0, 0); -- Onyxian Lair Guard
DELETE FROM `areatrigger_teleport` WHERE `id` IN (4233, 4267);
INSERT INTO `areatrigger_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `name`) VALUES
(4233, 530, 9331.49, -7812.27, 136.569, 5.23599, 'Eversong Woods - Duskwither UP Target'),
(4267, 530, 9334.03, -7880.02, 74.9095, 2.35619, 'Eversong Woods - Duskwither DOWN Target');
DELETE FROM `player_factionchange_spells` WHERE `alliance_id`=3565 AND `horde_id`=3566;
INSERT INTO `player_factionchange_spells` (`alliance_id`, `horde_id`) VALUES
(3565, 3566); -- Teleport: Darnassus / Teleport: Thunder Bluff
DELETE FROM `areatrigger_teleport` WHERE `id`=4304;
INSERT INTO `areatrigger_teleport` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `name`) VALUES
(4304, 530, -233.33, 3199.71, -50, 0.785398, 'Hellfire Ramparts - Omor Exit Target');
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry` IN (
  17413, -- Sedai Quest Credit Marker
  21121, -- Bonechewer Quest credit marker
  24887, -- Fengir Quest Credit
  24888, -- Isuldof Quest Credit
  24889, -- Rodin Quest Credit
  24890, -- Windan Quest Credit
  27471, -- Forgotten Rifleman Quest Credit
  27472, -- Forgotten Peasant Quest Credit
  27473, -- Forgotten Knight Quest Credit
  27474, -- Captain Luc D'Merud Quest Credit
  27879, -- Frostmourne Cavern Quest Credit
  38503, -- Blood Infusion Quest Credit Bunny
  38546, -- Frost Infusion Quest Credit
  38547, -- Sindragosa Quest Credit
  39355, -- [DND] Salute Quest Credit Bunny
  39356, -- [DND] Roar Quest Credit Bunny	
  39361, -- [DND] Dance Quest Credit Bunny
  39362, -- [DND] Cheer Quest Credit Bunny
  39683, -- [DND] Quest Credit Bunny - Eject
  39691, -- [DND] Quest Credit Bunny - Move 1
  39692, -- [DND] Quest Credit Bunny - Move 2
  39695, -- [DND] Quest Credit Bunny - Move 3
  39703, -- [DND] Quest Credit Bunny - Attack
  40428  -- [DND] Quest Credit Bunny - ET Battle
);
