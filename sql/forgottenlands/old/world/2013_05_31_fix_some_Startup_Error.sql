-- Fix 170+ startup error
-- Fix Gameobject_template startup error
-- campo data7 puntava allo stesso id del gob
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=759);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=2087);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=152620);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=152631);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=177964);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=201971);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=204399);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=203090);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=205422);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=201924);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=203230);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=202959);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=204346);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=206391);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=205827);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=205826);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=205828);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=202957);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=202960);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=202958);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=194202);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=204398);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=204336);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=194349);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=203197);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=203132);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=205197);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=207383);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=207381);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=207384);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=202619);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=202968);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=202969);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=206675);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=206674);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=206786);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=1953610);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=1945630);
UPDATE `gameobject_template` SET `data7`=0 WHERE (`entry`=2063210);
-- valori sbagliati del gob
UPDATE `gameobject_template` SET `type`=6, `data3`=46961, `data5`=65000 WHERE (`entry`=188187);
-- spellfocus id 2061 inesistente, settata a 4 come da suggerimento di arkdb 4.3.4
UPDATE `gameobject_template` SET `data0`=4 WHERE `type` = 8 AND `data0` = 2061;
-- campo data2 puntava allo stesso id del gob
UPDATE `gameobject_template` SET `data2`=0 WHERE (`entry`=195043);
UPDATE `gameobject_template` SET `data2`=0 WHERE (`entry`=207103);
-- campo data12 puntava allo stesso id del gob
UPDATE `gameobject_template` SET `data12`=0 WHERE (`entry`=196486);
UPDATE `gameobject_template` SET `data12`=0 WHERE (`entry`=203208);
UPDATE `gameobject_template` SET `data12`=0 WHERE (`entry`=203221);
UPDATE `gameobject_template` SET `data12`=0 WHERE (`entry`=202596);
UPDATE `gameobject_template` SET `data12`=0 WHERE (`entry`=142220);
UPDATE `gameobject_template` SET `data12`=0 WHERE (`entry`=206742);
UPDATE `gameobject_template` SET `data12`=0 WHERE (`entry`=206743);
-- spell inesistente associata al gob
UPDATE `gameobject_template` SET `data0`=724 WHERE (`entry`=181105);
UPDATE `gameobject_template` SET `data0`=724 WHERE (`entry`=181106);
UPDATE `gameobject_template` SET `data0`=724 WHERE (`entry`=181165);
UPDATE `gameobject_template` SET `data0`=29886 WHERE (`entry`=183510);
UPDATE `gameobject_template` SET `data0`=29886 WHERE (`entry`=183511);
UPDATE `gameobject_template` SET `data0`=29886 WHERE (`entry`=193169);
UPDATE `gameobject_template` SET `data0`=29886 WHERE (`entry`=193170);
UPDATE `gameobject_template` SET `data0`=29886 WHERE (`entry`=193171);
UPDATE `gameobject_template` SET `data0`=17334 WHERE (`entry`=205272);
UPDATE `gameobject_template` SET `data0`=17609 WHERE (`entry`=205273);
UPDATE `gameobject_template` SET `data0`=17334 WHERE (`entry`=209080);
UPDATE `gameobject_template` SET `data0`=17609 WHERE (`entry`=209081);
UPDATE `gameobject_template` SET `data0`=86986 WHERE (`entry`=207073);
UPDATE `gameobject_template` SET `data0`=99710 WHERE (`entry`=207078);
UPDATE `gameobject_template` SET `data0`=86986 WHERE (`entry`=205876);
UPDATE `gameobject_template` SET `data0`=86986 WHERE (`entry`=205877);
UPDATE `gameobject_template` SET `data0`=75747 WHERE (`entry`=208325);
-- item non presente ingame che causa un errore
DELETE FROM `gameobject_template` WHERE (`entry`=206195);
DELETE FROM `gameobject_template` WHERE (`entry`=202357);
-- GOB 203221 buggato
UPDATE `gameobject_template` SET `type`=1, `faction`=0, `data1`=1897, `data5`=1, `data12`=0 WHERE (`entry`=203221);
-- GOB 204422 buggato
UPDATE `gameobject_template` SET `type`=5, `data0`=0, `data1`=0, `data5`=0 WHERE (`entry`=204422);

-- Fix Crature_template startup error
UPDATE `creature_template` SET `AIName`='' WHERE `entry` IN
(49323, 49318, 49320, 49324, 49326, 49333, 49330, 49319, 49322, 49325, 49327, 49317, 49328, 49334, 49321);
UPDATE `creature_template` SET `InhabitType`=1 WHERE `entry` IN
(341245, 341741, 341753, 341757, 341742, 341738, 341749, 341745, 341754, 341758, 341746, 341750, 341735, 341739, 341743, 341747, 341751, 341755, 341759,341736, 341740, 341779, 341774, 341748, 341245, 341752, 341756,341737);
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry` IN(200000, 341780, 120000);
UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE (`entry`=41280);
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE (`entry`=34285);
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry` IN
(21551, 21590, 21537, 22682, 22658, 22644, 22577, 31469, 21560, 21626, 22646, 31749, 22698, 36088, 21582, 21624, 22648, 31451, 21562, 38157, 49624, 21581, 22651, 22654, 22655, 31457, 22730, 36087, 35560, 21558, 22734, 21533, 22567, 22660, 22652, 21601, 21561);
UPDATE `creature_template` SET `MovementType`=0 WHERE (`entry`=48434);
UPDATE `creature_template` SET `VehicleId`=0, `mingold`=5, `maxgold`=15 WHERE (`entry`=34855);
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry` IN(33832, 38479, 48951, 33828);
UPDATE `creature_template` SET `unit_class`=2 WHERE `entry` IN(22585, 22584, 22586, 37605, 37564, 35743, 33827, 33729, 22581, 33737);
UPDATE `creature_template` SET `unit_class`=4 WHERE `entry` IN(38078, 33831);
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=37603;
