BugContestantPointers:
	dw BugContestant_BugCatcherDon ; This reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_SchoolboyJohnny
	dw BugContestant_SchoolboyKipp

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw YANMA,     300
	dbw YANMA,    285
	dbw YANMA,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw YANMA,      286
	dbw YANMA, 	251
	dbw YANMA,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw SCYTHER,    357
	dbw YANMA, 349
	dbw YANMA,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw YANMA,   332
	dbw YANMA, 324
	dbw YANMA,    321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BENNY
	dbw YANMA, 318
	dbw YANMA,     295
	dbw YANMA,   285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw YANMA,     366
	dbw YANMA,    329
	dbw YANMA,     314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw YANMA, 341
	dbw YANMA,    301
	dbw YANMA,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw SCYTHER,    326
	dbw YANMA, 292
	dbw YANMA,    282

BugContestant_SchoolboyJohnny:
	db SCHOOLBOY, JOHNNY
	dbw YANMA,     270
	dbw YANMA,     282
	dbw YANMA,   251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw YANMA,    267
	dbw YANMA,      254
	dbw YANMA,     259
