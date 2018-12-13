APPEND BTASHI25

// Child LT

IF WEIGHT #0 ~Global("LE#TashiaChildLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaChildLoveTalk
   SAY @0
   IF ~~ THEN REPLY @1 DO ~SetGlobal("LE#TashiaChildLoveTalk","GLOBAL",2)~ GOTO LE#TashiaChildLoveTalkA
   IF ~~ THEN REPLY @2 DO ~SetGlobal("LE#TashiaChildLoveTalk","GLOBAL",2)~ GOTO LE#TashiaChildLoveTalkB
   IF ~~ THEN REPLY @3 DO ~SetGlobal("LE#TashiaChildLoveTalk","GLOBAL",2)~ GOTO LE#TashiaChildLoveTalkC
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA
   SAY @4
   = @5
   IF ~~ THEN REPLY @6 GOTO LE#TashiaChildLoveTalkA1
   IF ~~ THEN REPLY @7 GOTO LE#TashiaChildLoveTalkA2
   IF ~~ THEN REPLY @8 GOTO LE#TashiaChildLoveTalkA3
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA1
   SAY @9
	= @10
   IF ~~ THEN REPLY @11 GOTO LE#TashiaChildLoveTalkA1A
   IF ~~ THEN REPLY @12 GOTO LE#TashiaChildLoveTalkA1C
   IF ~~ THEN REPLY @13 GOTO LE#TashiaChildLoveTalkA3
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA1A
   SAY @14
   = @15
   IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA1C
   SAY @16
   = @17
   IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA2
   SAY @18
   = @19
   = @20
   IF ~~ THEN REPLY @21 GOTO LE#TashiaChildLoveTalkA1
   IF ~~ THEN REPLY @22 GOTO LE#TashiaChildLoveTalkA2A
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA2A
   SAY @23 
	IF ~~ THEN DO ~RestParty()~ EXIT 
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA3
   SAY @24
   = @25
   IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkB
   SAY @26
   IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkC
   SAY @27
   = @28
   IF ~~ THEN REPLY @29 GOTO LE#TashiaChildLoveTalkA
   IF ~~ THEN REPLY @30 DO ~SetGlobal("LE#TashiaChildLoveTalk","GLOBAL",3) RestParty()~ EXIT
END

IF WEIGHT #0 ~Global("LE#TashiaChildLoveTalk","GLOBAL",4)~ THEN BEGIN LE#TashiaChildLoveTalkCEnd
   SAY @31
   IF ~~ THEN DO ~SetGlobal("LE#TashiaChildLoveTalk","GLOBAL",5)~ EXIT
END

// First Challenge LoveTalk
IF WEIGHT #0 ~Global("LE#TashiaFirstChallengeLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaFCLT
	SAY @32
	IF ~~ THEN REPLY @33 DO ~SetGlobal("LE#TashiaFirstChallengeLoveTalk","GLOBAL",2)~ GOTO LE#TashiaFCLTA
	IF ~~ THEN REPLY @34 DO ~SetGlobal("LE#TashiaFirstChallengeLoveTalk","GLOBAL",2)~  GOTO LE#TashiaFCLTB
	IF ~~ THEN REPLY @35 DO ~SetGlobal("LE#TashiaFirstChallengeLoveTalk","GLOBAL",2)~  GOTO LE#TashiaFCLTC
END

IF ~~ THEN BEGIN LE#TashiaFCLTA
	SAY @36
	IF ~~ THEN REPLY @37 GOTO LE#TashiaFCLTA1
	IF ~~ THEN REPLY @38 GOTO LE#TashiaFCLTA2
END

IF ~~ THEN BEGIN LE#TashiaFCLTA1
	SAY @39
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaFCLTA2
	SAY @40
	IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaFCLTB
	SAY @41
	IF ~~ THEN REPLY @42 GOTO LE#TashiaFCLTB1
	IF ~~ THEN REPLY @43 GOTO LE#TashiaFCLTB2
END

IF ~~ THEN BEGIN LE#TashiaFCLTB1
	SAY @44
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaFCLTB2
	SAY @45
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaFCLTC
	SAY @46
	= @47
	IF ~~ THEN REPLY @48 GOTO LE#TashiaFCLTC1
	IF ~~ THEN REPLY @49 GOTO LE#TashiaFCLTC2
END

IF ~~ THEN BEGIN LE#TashiaFCLTC1
	SAY @50
	IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaFCLTC2
	SAY @51
	IF ~~ THEN EXIT
END

// Nightmare LT
IF WEIGHT #0 ~Global("LE#TashiaNightmareLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaNMLT
	SAY @52
	IF ~~ THEN REPLY @53 DO ~SetGlobal("LE#TashiaNightmareLoveTalk","GLOBAL",2)~ GOTO LE#TashiaNMLTA
	IF ~~ THEN REPLY @54 DO ~SetGlobal("LE#TashiaNightmareLoveTalk","GLOBAL",2)~ GOTO LE#TashiaNMLTB
	IF ~~ THEN REPLY @55 DO ~SetGlobal("LE#TashiaNightmareLoveTalk","GLOBAL",2)~ GOTO LE#TashiaNMLTC
	IF ~~ THEN REPLY @56 DO ~SetGlobal("LE#TashiaNightmareLoveTalk","GLOBAL",2)~ GOTO LE#TashiaNMLTD
END

IF ~~ THEN BEGIN LE#TashiaNMLTA
	SAY @57
	= @58
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaNMLTD
	SAY @59
	IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaNMLTB
	SAY @60
	= @61
	= @62
	IF ~~ THEN REPLY @63 GOTO LE#TashiaNMLTC
	IF ~~ THEN REPLY @64 GOTO LE#TashiaNMLTB1
END

IF ~~ THEN BEGIN LE#TashiaNMLTB1
	SAY @65
	IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaNMLTC
	SAY @66
	= @67
	IF ~~ THEN REPLY @68 GOTO LE#TashiaNMLTC1
	IF ~~ THEN REPLY @69 GOTO LE#TashiaNMLTC2
	IF ~~ THEN REPLY @70 GOTO LE#TashiaNMLTC3
END

IF ~~ THEN BEGIN LE#TashiaNMLTC1
	SAY @71
	IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaNMLTC2
	SAY @72
	IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaNMLTC3
	SAY @73
	IF ~~ THEN DO ~RestParty()~ EXIT
END

// Race LoveTalk

IF WEIGHT #0 ~Global("LE#TashiaRaceLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaRaceLoveTalk
   SAY @74
   = @75
   IF ~~ THEN REPLY @76 DO ~SetGlobal("LE#TashiaRaceLoveTalk","GLOBAL",2)~ GOTO LE#TashiaRLTA
   IF ~~ THEN REPLY @77 DO ~SetGlobal("LE#TashiaRaceLoveTalk","GLOBAL",2)~ GOTO LE#TashiaRLTB
   IF ~~ THEN REPLY @78 DO ~SetGlobal("LE#TashiaRaceLoveTalk","GLOBAL",2)~ GOTO LE#TashiaRLTC
END

IF ~~ THEN BEGIN LE#TashiaRLTB
   SAY @79
   = @80
   = @81
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRLTC
   SAY @82
   = @83
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRLTA
   SAY @84
   = @85
   IF ~~ THEN REPLY @86 GOTO LE#TashiaRLTA1
   IF ~~ THEN REPLY @87 GOTO LE#TashiaRLTA2
	IF ~~ THEN REPLY @88 GOTO LE#TashiaRLTA3
END

IF ~~ THEN BEGIN LE#TashiaRLTA1
   SAY @89
   = @90
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRLTA2
   SAY @91
   IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRLTA3
	SAY @92
	IF ~~ THEN EXIT
END
END

// Banters

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("HaerDalis") Global("LE#TashiaHaerBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaHaerBanterTOB
@93 DO ~SetGlobal("LE#TashiaHaerBanterTOB","GLOBAL",1)~
== BHAERD25 @94
== BTASHI25 @95
== BHAERD25 @96
== BTASHI25 @97
== BHAERD25 @98
== BTASHI25 @99
== BHAERD25 @100
== BTASHI25 @101
== BHAERD25 @102
== BTASHI25 @103
== BHAERD25 @104
== BTASHI25 @105
== BHAERD25 @106
== BTASHI25 @107
== BHAERD25 @108
EXIT

CHAIN IF~InParty("Tashia") Global("LE#TashiaCerndBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Cernd",CD_STATE_NOTVALID)~
THEN BCERND25 LE#TashiaCerndBanter
@109 DO ~SetGlobal("LE#TashiaCerndBanterTOB","GLOBAL",1)~
== BTASHI25 @110
== BCERND25 @111
== BTASHI25 @112
== BCERND25 @113
== BTASHI25 @114
== BCERND25 @115
== BTASHI25 @116
== BCERND25 @117
== BTASHI25 @118
== BCERND25 @119
== BTASHI25 @120
== BCERND25 @121
== BTASHI25 @122
== BCERND25 @123
== BTASHI25 @124
== BCERND25 @125
== BTASHI25 @126
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Korgan") Global("LE#TashiaKorganBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaKorganBanterTOB
@127 DO ~SetGlobal("LE#TashiaKorganBanterTOB","GLOBAL",1)~
== BKORGA25 @128
== BTASHI25 @129
== BKORGA25 @130
== BTASHI25 @131
== BKORGA25 @132
== BTASHI25 @133
== BKORGA25 @134
== BTASHI25 @135
== BKORGA25 @136
== BTASHI25 @137
== BKORGA25 @138
== BTASHI25 @139
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Valygar") Global("LE#TashiaValygarBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID)!StateCheck("Valygar",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaValygarBanterTOB
@140 DO ~SetGlobal("LE#TashiaValygarBanterTOB","GLOBAL",1)~
== BVALYG25 @141
== BTASHI25 @142
== BVALYG25 @143
== BTASHI25 @144
== BVALYG25 @145
== BTASHI25 @146
== BVALYG25 @147
== BTASHI25 @148
== BVALYG25 @149
== BTASHI25 @150
== BVALYG25 @118
== BTASHI25 @151
== BVALYG25 @152
== BTASHI25 @153
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaNaliaBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~
THEN BNALIA25 LE#TashiaNaliaBanterTOB
@154 DO ~SetGlobal("LE#TashiaNaliaBanterTOB","GLOBAL",1)~
== BTASHI25 @155
== BNALIA25 @156
== BTASHI25 @157
== BNALIA25 @158
== BTASHI25 @159
== BNALIA25 @160
== BTASHI25 @161
== BNALIA25 IF ~GlobalGT("PCKeepOwner","GLOBAL",0)~ THEN @162
== BTASHI25 IF ~GlobalGT("PCKeepOwner","GLOBAL",0)~ THEN @163
== BNALIA25 IF ~GlobalGT("PCKeepOwner","GLOBAL",0)~ THEN @164
== BNALIA25 IF ~Global("PCKeepOwner","GLOBAL",0)~ THEN @165
== BTASHI25 IF ~Global("PCKeepOwner","GLOBAL",0)~ THEN @166
== BNALIA25 IF ~Global("PCKeepOwner","GLOBAL",0)~ THEN @167
== BTASHI25 @168
== BNALIA25 @169
== BTASHI25 @170
== BNALIA25 @171
== BTASHI25 @172
== BNALIA25 @173
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Keldorn") Global("LE#TashiaKeldornBanterTOB","GLOBAL",0) !StateCheck("Keldorn",CD_STATE_NOTVALID) !StateCheck("Tashia",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaKeldornBanterTOB
@174 DO ~SetGlobal("LE#TashiaKeldornBanterTOB","GLOBAL",1)~
== BKELDO25 @175
== BTASHI25 @176
== BKELDO25 @177
== BTASHI25 @178
== BKELDO25 @179
== BTASHI25 @180
== BKELDO25 @181
== BTASHI25 @182
== BKELDO25 @183
== BTASHI25 @184
== BKELDO25 @185
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaHaerBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
THEN BHAERD25 LE#TashiaHaerBanterTOB2
@186 DO ~SetGlobal("LE#TashiaHaerBanterTOB2","GLOBAL",1)~
== BTASHI25 @187
== BHAERD25 @188
== BTASHI25 @189
== BHAERD25 @190
== BTASHI25 @191
== BHAERD25 @192
== BTASHI25 @193
== BHAERD25 @194
== BTASHI25 @195
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Mazzy") Global("LE#TashiaMazzyBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaMazzyBanterTOB
@196 DO ~SetGlobal("LE#TashiaMazzyBanterTOB","GLOBAL",1)~
== BMAZZY25 @197
== BTASHI25 @198
== BMAZZY25 @199
== BTASHI25 @200
== BMAZZY25 @201
== BTASHI25 @202
== BMAZZY25 @203
== BTASHI25 @204
== BMAZZY25 @205
== BTASHI25 @206
== BMAZZY25 @207
== BTASHI25 @208
== BMAZZY25 @209
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Imoen2") Global("LE#TashiaImoenBanterTOB","GLOBAL",0) !StateCheck("Imoen2",CD_STATE_NOTVALID) !StateCheck("Tashia",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaImoenBanterTOB
@210 DO ~SetGlobal("LE#TashiaImoenBanterTOB","GLOBAL",1)~
== BIMOEN25 @211
== BTASHI25 @212
== BIMOEN25 @213
== BTASHI25 @214
== BIMOEN25 @215
== BTASHI25 @216
== BIMOEN25 @217
== BTASHI25 @218
== BIMOEN25 @219
== BTASHI25 @220
== BIMOEN25 @221
== BTASHI25 @222
== BIMOEN25 @223
== BTASHI25 @224
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Keldorn") Global("LE#TashiaKeldornBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Keldorn",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaKeldornBanterTOB2
@225 DO ~SetGlobal("LE#TashiaKeldornBanterTOB2","GLOBAL",1)~
== BKELDO25 @226
== BTASHI25 @227
== BKELDO25 @228
== BTASHI25 @229
== BKELDO25 @230
== BTASHI25 @231
== BKELDO25 @232
== BTASHI25 @233
== BKELDO25 @234
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaViconiaBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BVICON25 LE#TashiaViconiaBanterTOB
@235 DO ~SetGlobal("LE#TashiaViconiaBanterTOB","GLOBAL",1)~
== BTASHI25 @236
== BVICON25 @237
== BTASHI25 @238
== BVICON25 @239
== BTASHI25 @240
== BVICON25 @241
== BTASHI25 @242
== BVICON25 @243
== BTASHI25 @244
== BVICON25 @245
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Mazzy") Global("LE#TashiaMazzyBanterTOB2","GLOBAL",0) !StateCheck("Mazzy",CD_STATE_NOTVALID) !StateCheck("Tashia",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaMazzyBanterTOB2
@246 DO ~SetGlobal("LE#TashiaMazzyBanterTOB2","GLOBAL",1)~
== BMAZZY25 @247
== BTASHI25 @248
== BMAZZY25 @249
== BTASHI25 @250
== BMAZZY25 @251
== BTASHI25 @252
== BMAZZY25 @253
== BTASHI25 @254
== BMAZZY25 @255
== BTASHI25 @256
== BMAZZY25 @257
== BTASHI25 @258
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Nalia") Global("LE#TashiaNaliaBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaNaliaBanterTOB2
@259 DO ~SetGlobal("LE#TashiaNaliaBanterTOB2","GLOBAL",1)~
== BNALIA25 @260
== BTASHI25 @261
== BNALIA25 @262
== BTASHI25 @263
== BNALIA25 @264
== BTASHI25 @265
== BNALIA25 @266
== BTASHI25 @267
== BNALIA25 @268
== BTASHI25 @269
== BNALIA25 @270
== BTASHI25 @271
== BNALIA25 @272
== BTASHI25 @273
== BNALIA25 @273
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Jaheira") Global("LE#TashiaJaheiraBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaJaheiraBanterTOB
@274 DO ~SetGlobal("LE#TashiaJaheiraBanterTOB","GLOBAL",1)~
== BJAHEI25 @275 
== BTASHI25 @276 
== BJAHEI25 @277 
== BTASHI25 @278 
== BJAHEI25 @279
== BTASHI25 @280 
== BJAHEI25 @281 
== BTASHI25 @282 
== BJAHEI25 @283 
== BTASHI25 @284 
== BJAHEI25 @285 
== BTASHI25 @286 
== BJAHEI25 @287 
== BTASHI25 @288 
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Jaheira") Global("LE#TashiaJaheiraBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaJaheiraBanterTOB2
@289 DO ~SetGlobal("LE#TashiaJaheiraBanterTOB2","GLOBAL",1)~
== BJAHEI25 @290 
== BTASHI25 @291 
== BJAHEI25 @292 
== BTASHI25 @293 
== BJAHEI25 @294 
== BTASHI25 @295 
== BJAHEI25 @296 
== BTASHI25 @297 
== BJAHEI25 @298 
== BTASHI25 @299 
== BJAHEI25 @300 
== BTASHI25 @301 
== BJAHEI25 @302 
== BTASHI25 @303 
== BJAHEI25 @304 
== BTASHI25 @305 
== BJAHEI25 @306 
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Anomen") Global("LE#TashiaAnomenBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaAnomenBanterTOB
@307 DO ~SetGlobal("LE#TashiaAnomenBanterTOB","GLOBAL",0)~
== BANOME25 @308 
== BTASHI25 @309 
== BANOME25 @310 
== BTASHI25 @311 
== BANOME25 @312 
== BTASHI25 @313 
== BANOME25 @314 
== BTASHI25 @315 
== BANOME25 @316 
== BTASHI25 @317 
== BANOME25 @318 
== BTASHI25 @319 
== BANOME25 @320
== BTASHI25 @321 
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Anomen") Global("LE#TashiaAnomenBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaAnomenBanterTOB2
@322 DO ~SetGlobal("LE#TashiaAnomenBanterTOB2","GLOBAL",0)~
== BANOME25 @323 
== BTASHI25 @324 
== BANOME25 @325 
== BTASHI25 @326 
== BANOME25 @327 
== BTASHI25 @328 
== BANOME25 @329 
== BTASHI25 @330 
== BANOME25 @331 
== BTASHI25 @332 
== BANOME25 @333 
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaEdwinBanterTOB","GLOBAL",0) !StateCheck("Edwin",CD_STATE_NOTVALID) !StateCheck("Tashia",CD_STATE_NOTVALID)~
THEN BEDWIN25 LE#TashiaEdwinBanterTOB
@334 DO ~SetGlobal("LE#TashiaEdwinBanterTOB","GLOBAL",1)~
== BTASHI25 @335 
== BEDWIN25 @336 
== BTASHI25 @337 
== BEDWIN25 @338 
== BTASHI25 @339
== BEDWIN25 @340 
== BTASHI25 @341
== BEDWIN25 @342 
== BTASHI25 @343 
== BEDWIN25 @344 
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Edwin") Global("LE#TashiaEdwinBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaEdwinBanterTOB2
@345  DO ~SetGlobal("LE#TashiaEdwinBanterTOB2","GLOBAL",1)~
== BEDWIN25 @346
== BTASHI25 @347
== BEDWIN25 @348 
== BTASHI25 @349 
== BEDWIN25 @350 
== BTASHI25 @351 
== BEDWIN25 @352 
== BTASHI25 @353 
== BEDWIN25 @354 
EXIT

CHAIN 
IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") !Global("LE#TashiaFirstChallengeLoveTalk","GLOBAL",1) Global("LE#TashiaSarevokBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Sarevok",CD_STATE_NOTVALID)~
THEN BSAREV25 LE#TashiaSarevokBanter
@355 DO ~SetGlobal("LE#TashiaSarevokBanter","GLOBAL",1)~
== BTASHI25 @356
== BSAREV25 @357
== BTASHI25 @358
== BSAREV25 @359
== BTASHI25 @360
== BSAREV25 @361
== BTASHI25 @362
== BSAREV25 @363
== BTASHI25 @364
== BSAREV25 @365
= @366
EXIT
