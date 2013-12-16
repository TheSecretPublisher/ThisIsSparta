-- Violet Hold door fix
UPDATE `gameobject_template` SET `type`=0, `flags`=32 WHERE `entry`=193019; 

-- Gnomeregan elevator fix
UPDATE gameobject_template SET flags =40 WHERE entry =205079;