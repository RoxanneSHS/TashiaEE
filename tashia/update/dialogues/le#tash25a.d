APPEND BTASHI25

IF WEIGHT #0 ~Global("LE#TashiaChildLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaChildLoveTalk
   SAY @0
   IF ~~ THEN REPLY @1 DO ~SetGlobal("LE#TashiaChildLoveTalk","GLOBAL",2)~ GOTO LE#TashiaChildLoveTalkA
   IF ~~ THEN REPLY @2 DO ~SetGlobal("LE#TashiaChildLoveTalk","GLOBAL",2)~ GOTO LE#TashiaChildLoveTalkB
   IF ~~ THEN REPLY @3 DO ~SetGlobal("LE#TashiaChildLoveTalk","GLOBAL",2)~ GOTO LE#TashiaChildLoveTalkC
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA
   SAY @4
   = @5
   = @6
   IF ~~ THEN REPLY @7 GOTO LE#TashiaChildLoveTalkA1
   IF ~~ THEN REPLY @8 GOTO LE#TashiaChildLoveTalkA2
   IF ~~ THEN REPLY @9 GOTO LE#TashiaChildLoveTalkA3
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA1
   SAY @10
   = @11
   IF ~~ THEN REPLY @12 GOTO LE#TashiaChildLoveTalkA1A
   IF ~~ THEN REPLY @13 GOTO LE#TashiaChildLoveTalkA1C
   IF ~~ THEN REPLY @14 GOTO LE#TashiaChildLoveTalkA3
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA1A
   SAY @15
   = @16
   IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA1C
   SAY @17
   = @18
   IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA2
   SAY @19
   = @20
   = @21
   = @22
   IF ~~ THEN REPLY @23 GOTO LE#TashiaChildLoveTalkA1
   IF ~~ THEN REPLY @24 GOTO LE#TashiaChildLoveTalkA2A
	 IF ~~ THEN REPLY @25 GOTO LE#TashiaChildLoveTalkA2C
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA2A
   SAY @26
   IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA2C
   SAY @27
   IF ~~ THEN DO ~RestParty()~ EXIT
END


IF ~~ THEN BEGIN LE#TashiaChildLoveTalkA3
   SAY @28
   = @29
   IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkB
   SAY @30
   IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaChildLoveTalkC
   SAY @31
   = @32
   = @33
   IF ~~ THEN REPLY @34 GOTO LE#TashiaChildLoveTalkA
   IF ~~ THEN REPLY @35 DO ~SetGlobal("LE#TashiaChildLoveTalk","GLOBAL",3) RestParty()~ EXIT
END

IF WEIGHT #0 ~Global("LE#TashiaChildLoveTalk","GLOBAL",4)~ THEN BEGIN LE#TashiaChildLoveTalkCEnd
   SAY @36
   = @37
   IF ~~ THEN DO ~SetGlobal("LE#TashiaChildLoveTalk","GLOBAL",5)~ EXIT
END

IF WEIGHT #0 ~Global("LE#TashiaFirstChallengeComment","GLOBAL",1) !Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#TashiaFirstChallengeComment
    SAY @38
    IF ~~ THEN DO ~SetGlobal("LE#TashiaFirstChallengeComment","GLOBAL",2)~ EXIT
END

IF WEIGHT #0 ~Global("LE#TashiaFirstChallengeComment","GLOBAL",1) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#TashiaFirstChallengeRomanceComment
    SAY @39
    IF ~~ THEN DO ~SetGlobal("LE#TashiaFirstChallengeComment","GLOBAL",2)~ EXIT
END

IF WEIGHT #0 ~Global("LE#TashiaThirdChallengeComment","GLOBAL",1) !Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#TashiaThirdChallengeComment
    SAY @40
    IF ~~ THEN DO ~SetGlobal("LE#TashiaThirdChallengeComment","GLOBAL",2)~ EXIT
END

IF WEIGHT #0 ~Global("LE#TashiaThirdChallengeComment","GLOBAL",1) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#TashiaThirdChallengeRomanceComment
    SAY @41
    = @42
    IF ~~ THEN DO ~SetGlobal("LE#TashiaThirdChallengeComment","GLOBAL",2)~ EXIT
END

// First Challenge LoveTalk
IF WEIGHT #0 ~Global("LE#TashiaFirstChallengeLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaFCLT
	SAY @43
	= @44
	= @45
	IF ~~ THEN REPLY @46 DO ~SetGlobal("LE#TashiaFirstChallengeLoveTalk","GLOBAL",2)~ GOTO LE#TashiaFCLTA
	IF ~~ THEN REPLY @47 DO ~SetGlobal("LE#TashiaFirstChallengeLoveTalk","GLOBAL",2)~  GOTO LE#TashiaFCLTB
	IF ~~ THEN REPLY @48 DO ~SetGlobal("LE#TashiaFirstChallengeLoveTalk","GLOBAL",2)~  GOTO LE#TashiaFCLTC
END

IF ~~ THEN BEGIN LE#TashiaFCLTA
	SAY @49
	= @50
	IF ~~ THEN REPLY @51 GOTO LE#TashiaFCLTA1
	IF ~~ THEN REPLY @52 GOTO LE#TashiaFCLTA2
END

IF ~~ THEN BEGIN LE#TashiaFCLTA1
	SAY @53
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaFCLTA2
	SAY @54
	IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaFCLTB
	SAY @55
	= @56
	IF ~~ THEN REPLY @57 GOTO LE#TashiaFCLTB1
	IF ~~ THEN REPLY @58 GOTO LE#TashiaFCLTB2
END

IF ~~ THEN BEGIN LE#TashiaFCLTB1
	SAY @59
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaFCLTB2
	SAY @60
	= @61
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaFCLTC
	SAY @62
	= @63
	= @64
	IF ~~ THEN REPLY @65 GOTO LE#TashiaFCLTC1
	IF ~~ THEN REPLY @66 GOTO LE#TashiaFCLTC2
END

IF ~~ THEN BEGIN LE#TashiaFCLTC1
	SAY @67
	= @68
	IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaFCLTC2
	SAY @69
	= @70
	IF ~~ THEN EXIT
END

// Nightmare LT

IF WEIGHT #0 ~Global("LE#TashiaNightmareLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaNMLT
	SAY @71
	= @72
	= @73
	IF ~~ THEN REPLY @74 DO ~SetGlobal("LE#TashiaNightmareLoveTalk","GLOBAL",2)~ GOTO LE#TashiaNMLTA
	IF ~~ THEN REPLY @75 DO ~SetGlobal("LE#TashiaNightmareLoveTalk","GLOBAL",2)~ GOTO LE#TashiaNMLTB
	IF ~~ THEN REPLY @76 DO ~SetGlobal("LE#TashiaNightmareLoveTalk","GLOBAL",2)~ GOTO LE#TashiaNMLTC
	IF ~~ THEN REPLY @77 DO ~SetGlobal("LE#TashiaNightmareLoveTalk","GLOBAL",2)~ GOTO LE#TashiaNMLTD
END

IF ~~ THEN BEGIN LE#TashiaNMLTA
	SAY @78
	= @79
	= @80
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaNMLTD
	SAY @81
	= @82
	= @83
	= @84
	IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaNMLTB
	SAY @85
	= @86
	= @87
	= @88
	IF ~~ THEN REPLY @89 GOTO LE#TashiaNMLTC
	IF ~~ THEN REPLY @90 GOTO LE#TashiaNMLTB1
END

IF ~~ THEN BEGIN LE#TashiaNMLTB1
	SAY @91
	= @92
	= @93
	IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaNMLTC
	SAY @94
	= @95
	IF ~~ THEN REPLY @96 GOTO LE#TashiaNMLTC1
	IF ~~ THEN REPLY @97 GOTO LE#TashiaNMLTC2
	IF ~~ THEN REPLY @98 GOTO LE#TashiaNMLTC3
END

IF ~~ THEN BEGIN LE#TashiaNMLTC1
	SAY @99
	= @100
	IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaNMLTC2
	SAY @101
	= @102
	= @103
	IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaNMLTC3
	SAY @104
	= @105
	= @106
	= @107
	IF ~~ THEN DO ~RestParty()~ EXIT
END

// Race LoveTalk

IF WEIGHT #0 ~Global("LE#TashiaRaceLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaRaceLoveTalk
   SAY @108
   = @109
   IF ~~ THEN REPLY @110 DO ~SetGlobal("LE#TashiaRaceLoveTalk","GLOBAL",2)~ GOTO LE#TashiaRLTA
   IF ~~ THEN REPLY @111 DO ~SetGlobal("LE#TashiaRaceLoveTalk","GLOBAL",2)~ GOTO LE#TashiaRLTB
   IF ~~ THEN REPLY @112 DO ~SetGlobal("LE#TashiaRaceLoveTalk","GLOBAL",2)~ GOTO LE#TashiaRLTC
END

IF ~~ THEN BEGIN LE#TashiaRLTB
   SAY @113
   = @114
   = @115
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRLTC
   SAY @116
   = @117
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRLTA
   SAY @118
   = @119
   = @120
   = @121
   IF ~~ THEN REPLY @122 GOTO LE#TashiaRLTA1
   IF ~~ THEN REPLY @123 GOTO LE#TashiaRLTA2
	IF ~~ THEN REPLY @124 GOTO LE#TashiaRLTA3
END

IF ~~ THEN BEGIN LE#TashiaRLTA1
   SAY @125
   = @126
   = @127
   = @128
   = @129
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRLTA2
   SAY @130
   = @131
   IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRLTA3
	SAY @132
	= @133
	IF ~~ THEN EXIT
END

END


// Banters

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("HaerDalis") Global("LE#TashiaHaerBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaHaerBanterTOB
@134 DO ~SetGlobal("LE#TashiaHaerBanterTOB","GLOBAL",1)~
== BHAERD25 @135
== BTASHI25 @136
== BHAERD25 @137
== BTASHI25 @138
== BHAERD25 @139
== BTASHI25 @140
== BHAERD25 @141
== BTASHI25 @142
== BHAERD25 @143
== BTASHI25 @144
== BHAERD25 @145
== BTASHI25 @146
== BHAERD25 @147
== BTASHI25 @148
== BHAERD25 @149
EXIT

CHAIN IF~InParty("Tashia") Global("LE#TashiaCerndBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Cernd",CD_STATE_NOTVALID)~
THEN BCERND25 LE#TashiaCerndBanter
@150 DO ~SetGlobal("LE#TashiaCerndBanterTOB","GLOBAL",1)~
== BTASHI25 @151
== BCERND25 @152
== BTASHI25 @153
== BCERND25 @154
== BTASHI25 @155
== BCERND25 @156
== BTASHI25 @157
== BCERND25 @158
== BTASHI25 @159
== BCERND25 @160
== BTASHI25 @161
== BCERND25 @162
== BTASHI25 @163
== BCERND25 @164
== BTASHI25 @165
== BCERND25 @166
== BTASHI25 @167
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Korgan") Global("LE#TashiaKorganBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaKorganBanterTOB
@168 DO ~SetGlobal("LE#TashiaKorganBanterTOB","GLOBAL",1)~
== BKORGA25 @169
== BTASHI25 @170
== BKORGA25 @171
== BTASHI25 @172
== BKORGA25 @173
== BTASHI25 @174
== BKORGA25 @175
== BTASHI25 @176
== BKORGA25 @177
== BTASHI25 @178
== BKORGA25 @179
== BTASHI25 @180
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Valygar") Global("LE#TashiaValygarBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID)!StateCheck("Valygar",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaValygarBanterTOB
@181 DO ~SetGlobal("LE#TashiaValygarBanterTOB","GLOBAL",1)~
== BVALYG25 @182
== BTASHI25 @183
== BVALYG25 @184
== BTASHI25 @185
== BVALYG25 @186
== BTASHI25 @187
== BVALYG25 @188
== BTASHI25 @189
== BVALYG25 @190
== BTASHI25 @191
== BVALYG25 @159
== BTASHI25 @192
== BVALYG25 @193
== BTASHI25 @194
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaNaliaBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~
THEN BNALIA25 LE#TashiaNaliaBanterTOB
@195 DO ~SetGlobal("LE#TashiaNaliaBanterTOB","GLOBAL",1)~
== BTASHI25 @196
== BNALIA25 @197
== BTASHI25 @198
== BNALIA25 @199
== BTASHI25 @200
== BNALIA25 @201
== BTASHI25 @202
== BNALIA25 IF ~GlobalGT("PCKeepOwner","GLOBAL",0)~ THEN @203
== BTASHI25 IF ~GlobalGT("PCKeepOwner","GLOBAL",0)~ THEN @204
== BNALIA25 IF ~GlobalGT("PCKeepOwner","GLOBAL",0)~ THEN @205
== BNALIA25 IF ~Global("PCKeepOwner","GLOBAL",0)~ THEN @206
== BTASHI25 IF ~Global("PCKeepOwner","GLOBAL",0)~ THEN @207
== BNALIA25 IF ~Global("PCKeepOwner","GLOBAL",0)~ THEN @208
== BTASHI25 @209
== BNALIA25 @210
== BTASHI25 @211
== BNALIA25 @212
== BTASHI25 @213
== BNALIA25 @214
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Keldorn") Global("LE#TashiaKeldornBanterTOB","GLOBAL",0) !StateCheck("Keldorn",CD_STATE_NOTVALID) !StateCheck("Tashia",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaKeldornBanterTOB
@215 DO ~SetGlobal("LE#TashiaKeldornBanterTOB","GLOBAL",1)~
== BKELDO25 @216
== BTASHI25 @217
== BKELDO25 @218
== BTASHI25 @219
== BKELDO25 @220
== BTASHI25 @221
== BKELDO25 @222
== BTASHI25 @223
== BKELDO25 @224
== BTASHI25 @225
== BKELDO25 @226
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaHaerBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
THEN BHAERD25 LE#TashiaHaerBanterTOB2
@227 DO ~SetGlobal("LE#TashiaHaerBanterTOB2","GLOBAL",1)~
== BTASHI25 @228
== BHAERD25 @229
== BTASHI25 @230
== BHAERD25 @231
== BTASHI25 @232
== BHAERD25 @233
== BTASHI25 @234
== BHAERD25 @235
== BTASHI25 @236
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Mazzy") Global("LE#TashiaMazzyBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaMazzyBanterTOB
@237 DO ~SetGlobal("LE#TashiaMazzyBanterTOB","GLOBAL",1)~
== BMAZZY25 @238
== BTASHI25 @239
== BMAZZY25 @240
== BTASHI25 @241
== BMAZZY25 @242
== BTASHI25 @243
== BMAZZY25 @244
== BTASHI25 @245
== BMAZZY25 @246
== BTASHI25 @247
== BMAZZY25 @248
== BTASHI25 @249
== BMAZZY25 @250
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Imoen2") Global("LE#TashiaImoenBanterTOB","GLOBAL",0) !StateCheck("Imoen2",CD_STATE_NOTVALID) !StateCheck("Tashia",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaImoenBanterTOB
@251 DO ~SetGlobal("LE#TashiaImoenBanterTOB","GLOBAL",1)~
== BIMOEN25 @252
== BTASHI25 @253
== BIMOEN25 @254
== BTASHI25 @255
== BIMOEN25 @256
== BTASHI25 @257
== BIMOEN25 @258
== BTASHI25 @259
== BIMOEN25 @260
== BTASHI25 @261
== BIMOEN25 @262
== BTASHI25 @263
== BIMOEN25 @264
== BTASHI25 @265
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Keldorn") Global("LE#TashiaKeldornBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Keldorn",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaKeldornBanterTOB2
@266 DO ~SetGlobal("LE#TashiaKeldornBanterTOB2","GLOBAL",1)~
== BKELDO25 @267
== BTASHI25 @268
== BKELDO25 @269
== BTASHI25 @270
== BKELDO25 @271
== BTASHI25 @272
== BKELDO25 @273
== BTASHI25 @274
== BKELDO25 @275
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaViconiaBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BVICON25 LE#TashiaViconiaBanterTOB
@276 DO ~SetGlobal("LE#TashiaViconiaBanterTOB","GLOBAL",1)~
== BTASHI25 @277
== BVICON25 @278
== BTASHI25 @279
== BVICON25 @280
== BTASHI25 @281
== BVICON25 @282
== BTASHI25 @283
== BVICON25 @284
== BTASHI25 @285
== BVICON25 @286
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Mazzy") Global("LE#TashiaMazzyBanterTOB2","GLOBAL",0) !StateCheck("Mazzy",CD_STATE_NOTVALID) !StateCheck("Tashia",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaMazzyBanterTOB2
@287 DO ~SetGlobal("LE#TashiaMazzyBanterTOB2","GLOBAL",1)~
== BMAZZY25 @288
== BTASHI25 @289
== BMAZZY25 @290
== BTASHI25 @291
== BMAZZY25 @292
== BTASHI25 @293
== BMAZZY25 @294
== BTASHI25 @295
== BMAZZY25 @296
== BTASHI25 @297
== BMAZZY25 @298
== BTASHI25 @299
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Nalia") Global("LE#TashiaNaliaBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaNaliaBanterTOB2
@300 DO ~SetGlobal("LE#TashiaNaliaBanterTOB2","GLOBAL",1)~
== BNALIA25 @301
== BTASHI25 @302
== BNALIA25 @303
== BTASHI25 @304
== BNALIA25 @305
== BTASHI25 @306
== BNALIA25 @307
== BTASHI25 @308
== BNALIA25 @309
== BTASHI25 @310
== BNALIA25 @311
== BTASHI25 @312
== BNALIA25 @313
== BTASHI25 @314
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Jaheira") Global("LE#TashiaJaheiraBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaJaheiraBanterTOB
@315 DO ~SetGlobal("LE#TashiaJaheiraBanterTOB","GLOBAL",1)~
== BJAHEI25 @316 
== BTASHI25 @317 
== BJAHEI25 @318 
== BTASHI25 @319 
== BJAHEI25 @320
== BTASHI25 @321 
== BJAHEI25 @322 
== BTASHI25 @323 
== BJAHEI25 @324 
== BTASHI25 @325 
== BJAHEI25 @326 
== BTASHI25 @327 
== BJAHEI25 @328 
== BTASHI25 @329 
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Jaheira") Global("LE#TashiaJaheiraBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaJaheiraBanterTOB2
@330 DO ~SetGlobal("LE#TashiaJaheiraBanterTOB2","GLOBAL",1)~
== BJAHEI25 @331 
== BTASHI25 @332 
== BJAHEI25 @333 
== BTASHI25 @334 
== BJAHEI25 @335 
== BTASHI25 @336 
== BJAHEI25 @337
== BTASHI25 @338 
== BJAHEI25 @339 
== BTASHI25 @340 
== BJAHEI25 @341 
== BTASHI25 @342 
== BJAHEI25 @343 
== BTASHI25 @344 
== BJAHEI25 @345 
== BTASHI25 @346 
== BJAHEI25 @347 
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Anomen") Global("LE#TashiaAnomenBanterTOB","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaAnomenBanterTOB
@348 DO ~SetGlobal("LE#TashiaAnomenBanterTOB","GLOBAL",0)~
== BANOME25 @349 
== BTASHI25 @350 
== BANOME25 @351 
== BTASHI25 @352 
== BANOME25 @353 
== BTASHI25 @354 
== BANOME25 @355 
== BTASHI25 @356 
== BANOME25 @357 
== BTASHI25 @358 
== BANOME25 @359 
== BTASHI25 @360 
== BANOME25 @361
== BTASHI25 @362 
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Anomen") Global("LE#TashiaAnomenBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaAnomenBanterTOB2
@363 DO ~SetGlobal("LE#TashiaAnomenBanterTOB2","GLOBAL",0)~
== BANOME25 @364 
== BTASHI25 @365 
== BANOME25 @366 
== BTASHI25 @367 
== BANOME25 @368 
== BTASHI25 @369 
== BANOME25 @370 
== BTASHI25 @371 
== BANOME25 @372 
== BTASHI25 @373 
== BANOME25 @374 
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaEdwinBanterTOB","GLOBAL",0) !StateCheck("Edwin",CD_STATE_NOTVALID) !StateCheck("Tashia",CD_STATE_NOTVALID)~
THEN BEDWIN25 LE#TashiaEdwinBanterTOB
@375 DO ~SetGlobal("LE#TashiaEdwinBanterTOB","GLOBAL",1)~
== BTASHI25 @376 
== BEDWIN25 @377 
== BTASHI25 @378 
== BEDWIN25 @379 
== BTASHI25 @380
== BEDWIN25 @381 
== BTASHI25 @382
== BEDWIN25 @383 
== BTASHI25 @384 
== BEDWIN25 @385 
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Edwin") Global("LE#TashiaEdwinBanterTOB2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaEdwinBanterTOB2
@386  DO ~SetGlobal("LE#TashiaEdwinBanterTOB2","GLOBAL",1)~
== BEDWIN25 @387
== BTASHI25 @388
== BEDWIN25 @389 
== BTASHI25 @390 
== BEDWIN25 @391 
== BTASHI25 @392 
== BEDWIN25 @393 
== BTASHI25 @394
== BEDWIN25 @395 
EXIT

CHAIN 
IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") !Global("LE#TashiaFirstChallengeLoveTalk","GLOBAL",1) Global("LE#TashiaSarevokBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Sarevok",CD_STATE_NOTVALID)~
THEN BSAREV25 LE#TashiaSarevokBanter
@396 DO ~SetGlobal("LE#TashiaSarevokBanter","GLOBAL",1)~
== BTASHI25 @397
== BSAREV25 @398
== BTASHI25 @399
== BSAREV25 @400
== BTASHI25 @401
== BSAREV25 @402
== BTASHI25 @403
== BSAREV25 @404
== BTASHI25 @405
== BSAREV25 @406
= @407
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaAerieBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN BAERIE25 LE#TashiaAerieBanterTOB
@408 DO ~SetGlobal("LE#TashiaAerieBanter2","GLOBAL",1)~
== BTASHI25 @409
== BAERIE25 @410
== BTASHI25 @411
== BAERIE25 @412
== BTASHI25 @413
== BAERIE25 @414
== BTASHI25 @415
== BAERIE25 @416
= @417
== BTASHI25 @418
== BAERIE25 @419
== BTASHI25 @420
== BAERIE25 @421
== BTASHI25 @422
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Cernd") Global("LE#TashiaCerndBanter3","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Cernd",CD_STATE_NOTVALID)~
THEN BTASHI25 LE#TashiaCerndBanter3
@423 DO ~SetGlobal("LE#TashiaCerndBanter3","GLOBAL",1)~
== BCERND @424
== BTASHIA @425
== BCERND @426
== BTASHIA @427
== BCERND @428
== BTASHIA @429
== BCERND @430
== BTASHIA @431
EXIT
