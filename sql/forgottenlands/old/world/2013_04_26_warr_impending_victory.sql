DELETE FROM spell_proc_event WHERE entry IN (80128,80129);
INSERT INTO spell_proc_event() VALUES
(80128,0,4,0,64,0,16,3,0,25,0),
(80129,0,4,0,64,0,16,3,0,50,0);

DELETE FROM spell_linked_spell WHERE spell_trigger=34428;
INSERT INTO spell_linked_spell() VALUES (34428,-82368,1,"Warrior - Victorious remove");
