/*Change hats scripts to match client description*/

/*Lunatic Hat*/
UPDATE item_db
SET script = "bonus bLuk,3; bonus bCritical,5; bonus2 bAddRace,RC_Plant,20;"
WHERE id = 5527;
