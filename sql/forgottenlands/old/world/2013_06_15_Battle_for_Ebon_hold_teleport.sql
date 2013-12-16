-- Fix Battle for ebon hold teleport
UPDATE `gameobject` SET `phaseMask`=65535 WHERE (`guid`=79612);
UPDATE `gameobject` SET `phaseMask`=65535 WHERE (`guid`=79613);

