-- Small fix to elwynn forrest quest
DELETE FROM `creature_questrelation` WHERE (`id`='197') AND (`quest`='29078');
DELETE FROM `creature_questrelation` WHERE (`id`='197') AND (`quest`='29079');