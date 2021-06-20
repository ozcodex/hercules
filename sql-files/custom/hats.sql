/*Change hats scripts to match client description*/

/*Lunatic Hat*/
UPDATE item_db
SET script = "bonus bLuk,3; bonus bCritical,5; bonus2 bAddRace,RC_Plant,20;"
WHERE id = 5527;

/*Grand Peco Headdress*/
UPDATE item_db
SET script = "bonus2 bAddRace,RC_Brute,7; bonus2 bMagicAddRace,RC_Brute,7; bonus2 bAddRace,RC_DemiHuman,7; bonus2 bMagicAddRace,RC_DemiHuman,7; bonus3 bAddEff,Eff_Curse,10,ATF_SHORT;"
WHERE id = 5476;

/*Hunting Cap*/
UPDATE item_db
SET script = "bonus bLuk,1; bonus2 bAddRace,RC_Brute,10; bonus2 bMagicAddRace,RC_Brute,5;"
WHERE id = 5383;

/*Dragon Arhat Mask*/
UPDATE item_db
SET script = "bonus2 bAddRace,RC_DemiHuman,10;"
WHERE id = 5565;

/*Engineer Cap*/
UPDATE item_db
SET script = 'bonus2 bAddRace,RC_Formless,10;'
WHERE id = 5679;

/*Fancy Phantom Mask*/
UPDATE item_db
SET script = 'bonus bStr,1; bonus2 bAddClass,Class_All,5; bonus bDelayRate,-1; bonus bMaxHP,getrefine()*100; bonus2 bSkillAtk,"MC_MAMMONITE",20; bonus2 bSkillAtk,"NJ_ZENYNAGE",20;'
WHERE id = 18534;

/*Frog Hat*/
UPDATE item_db
SET script = 'bonus bMdef,1; bonus2 bAddRace,RC_Insect,12; bonus2 bMagicAddRace,RC_Insect,12;'
WHERE id = 5447;

/*General Helmet*/
UPDATE item_db
SET script = 'bonus bMdef,3; bonus2 bAddRace,RC_Dragon,5; bonus2 bMagicAddRace,RC_Dragon,5; bonus2 bSubRace,RC_Dragon,5; bonus3 bAddMonsterDropItem,7444,RC_Dragon,2;'
WHERE id = 18555;

/*Gryphon Hat*/
UPDATE item_db
SET script = 'bonus bAgi,2; if (getrefine() > 6) { bonus bAgi,2; } if (getrefine() > 8) { bonus2 bAddRace,RC_Demon,10; bonus2 bAddRace,RC_Undead,10; }'
WHERE id = 5660;

/*Refined Bongun Hat*/
UPDATE item_db
SET script = 'bonus2 bSubRace,RC_Demon,10; if(getrefine()>=7) bonus2 bAddRace,RC_Demon,10;'
WHERE id = 18770;

/*Refined Munak Hat*/
UPDATE item_db
SET script = 'bonus2 bSubRace,RC_Undead,10; if(getrefine()>=7) bonus2 bAddRace,RC_Undead,10;'
WHERE id = 18769;

/*Korean Judge Hat*/
UPDATE item_db
SET script = 'bonus bMdef,2; bonus bVariableCastrate,-6; bonus bAspdRate,6; .@r = getrefine(); if(.@r>6){ bonus2 bSubRace,RC_DemiHuman,2;bonus2 bSubRace,RC_Player,2; } if(BaseClass==Job_Swordman || BaseClass==Job_Merchant || BaseClass==Job_Thief || Class==Job_Taekwon || Class==Job_Star_Gladiator || Class==Job_Star_Gladiator2 || Class==Job_Monk || Class==Job_Champion || Class==Job_Sura || Class==Job_Sura_T) bonus2 bAddClass,Class_All,(.@r/2);if(BaseClass==Job_Mage || BaseClass==Job_Acolyte || Class==Job_Ninja || Class==Job_Soul_Linker) bonus bMatkRate,(.@r/2); if(BaseClass==Job_Archer || Class==Job_Gunslinger) bonus bBaseAtk,.@r;'
WHERE id = 18572;

/*Lunatic Hat*/
UPDATE item_db
SET script = 'bonus bLuk,3; bonus bCritical,5; bonus2 bAddRace,RC_Plant,20;'
WHERE id = 5527;

/*Shower Cap*/
UPDATE item_db
SET script = 'bonus bMdef,3; bonus bFlee,3; bonus2 bAddEle,Ele_Water,10; bonus2 bSubRace,RC_Fish,10;'
WHERE id = 5510;

/*Flame Dragon Armor*/
UPDATE item_db
SET script = '.@r = getrefine(); if (.@r>=9) .@val = 20; else if (.@r>=7) .@val = 10; bonus bAllStats,1; bonus bHit,10+.@val; bonus2 bAddClass,Class_Boss,.@val;'
WHERE id = 15175;

/*Observer*/
UPDATE item_db
SET script = 'skill "WZ_ESTIMATION",1;'
WHERE id = 5315;

/*Ayothaya King's Hat*/
UPDATE item_db
SET script = 'bonus bStr,1; bonus2 bAddRace,RC_DemiHuman,5; bonus2 bAddRace,RC_Player,5;'
WHERE id = 5312;

/*Classic Hat*/
UPDATE item_db
SET script = 'bonus bStr,1; bonus2 bSubSize,Size_All,5;'
WHERE id = 5815;

/*Mercury Riser*/
UPDATE item_db
SET script = 'bonus2 bSubRace,RC_DemiHuman,10; bonus2 bAddRace,RC_DemiHuman,10; bonus bAspdRate,3; bonus bDelayrate,-3; .@r = getrefine(); if(.@r >= 7) { bonus bAspdRate,2; bonus bDelayrate,-2; } if(.@r >= 9) { bonus bAspdRate,2; bonus bDelayrate,-2;'
WHERE id = 18597;

/*Garuda Hat*/
UPDATE item_db
SET script = 'bonus bLuk,5; bonus bMdef,3; bonus2 bSubEle,Ele_All,5; bonus bHit,10; bonus bDelayRate,-5; .@r = getrefine(); if(.@r>=7) bonus2 bAddMonsterDropItem,522,100*(.@r-6);'
WHERE id = 18508;

/*Evil Marching Hat*/
UPDATE item_db
SET script = 'bonus bStr,2; bonus bMdef,1; .@r = getrefine(); if(.@r>=7) { bonus bCritAtkRate,10; }; bonus2 bAddClass,Class_All,(.@r>=9?7:2); if(.@r>=9) { bonus bLongAtkRate,5; };'
WHERE id = 18522;

/*Anubis Helm*/
UPDATE item_db
SET script = 'bonus bMdef,5; bonus2 bSubClass,Class_Boss,10; bonus bHealpower2,10; bonus bAddItemHealRate,10;'
WHERE id = 5490;

/*Amistr Cap*/
UPDATE item_db
SET script = 'bonus bVit,1+(getrefine()/2); bonus5 bAutoSpell,"KN_PIERCE",5,10,BF_WEAPON,1;'
WHERE id = 5766;

/*Scarlet Rose*/
UPDATE item_db
SET script = 'bonus2 bAddClass,Class_All,1; bonus bMatkRate,1; bonus bMaxSP,30;'
WHERE id = 5548;

/*Toast*/
UPDATE item_db
SET script = 'bonus bMaxHP,100;'
WHERE id = 5107;

/*Lord of Death*/
UPDATE item_db
SET script = 'bonus bMdef,5; .@r = getrefine(); bonus2 bAddClass,Class_Boss,(.@r>5?.@r+5:10); bonus2 bMagicAddClass,Class_Boss,(.@r>5?.@r+5:10); bonus2 bSubClass,Class_Normal,-5;'
WHERE id = 18574;

/*Shield Of Death*/
UPDATE item_db
SET script = 'bonus2 bAddClass,Class_Boss,2; bonus2 bMagicAddClass,Class_Boss,2; bonus2 bSubClass,Class_Normal,-10;'
WHERE id = 2177;

/*Witch's Pumpkin Hat*/
UPDATE item_db
SET script = 'bonus bMdef,10; bonus bStr,2; bonus bInt,2; bonus2 bMagicAddRace,RC_Undead,15; bonus2 bMagicAddRace,RC_Undead,15; bonus2 bMagicAddRace,RC_Demon,15; bonus2 bMagicAddRace,RC_Demon,15;'
WHERE id = 18656;

/*Gozarian Mask*/
UPDATE item_db
SET script = 'bonus bAllStats,1;'
WHERE id = 5475;

/*Hahoe Mask*/
UPDATE item_db
SET script = 'if(BaseClass==Job_Taekwon){ bonus bLuk,1; bonus bFlee2,2;'
WHERE id = 5176;

/*Cat Ear Beret*/
UPDATE item_db
SET script = 'bonus2 bAddClass,Class_All,5; .@r = getrefine(); if(.@r < 5) .@r = 5; bonus2 bSubRace,RC_DemiHuman,(.@r - 5); bonus2 bAddRace,RC_DemiHuman,(.@r - 5); bonus2 bSubRace,RC_Player,(.@r - 5); bonus2 bAddRace,RC_Player,(.@r - 5);'
WHERE id = 18600;
