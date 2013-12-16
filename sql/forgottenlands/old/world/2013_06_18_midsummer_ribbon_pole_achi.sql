DELETE FROM spell_script_names WHERE spell_id=45390 AND ScriptName='spell_gen_ribbon_pole_dancer_check';
DELETE FROM spell_linked_spell WHERE spell_trigger=29531 AND spell_effect=45390;
DELETE FROM spell_linked_spell WHERE spell_trigger=45390 AND spell_effect=45406;
DELETE FROM spell_dbc WHERE Id in(29710, 58934);
DELETE FROM gameobject_template where entry = 181605;

INSERT INTO `gameobject_template` (`entry`,`type`,`displayId`,`name`,`IconName`,`castBarCaption`,`unk1`,`faction`,`flags`,`size`,`questItem1`,`questItem2`,`questItem3`,`questItem4`,`questItem5`,`questItem6`,`data0`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`data8`,`data9`,`data10`,`data11`,`data12`,`data13`,`data14`,`data15`,`data16`,`data17`,`data18`,`data19`,`data20`,`data21`,`data22`,`data23`,`data24`,`data25`,`data26`,`data27`,`data28`,`data29`,`data30`,`data31`,`unkInt32`,`AIName`,`ScriptName`,`WDBVerified`) VALUES (181605,10,6771,'Ribbon Pole','','','',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','go_ribbon_pole',15595);