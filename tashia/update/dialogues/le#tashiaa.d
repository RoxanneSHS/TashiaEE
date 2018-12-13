APPEND BTASHIA

  // Brynnlaw Lovetalk
  IF ~Global("LE#TashiaBrynnlawTalk","GLOBAL",1)~ THEN BEGIN LE#1
     SAY @3
     = @4
     = @5
     = @6
     IF ~~ THEN REPLY @7 DO ~SetGlobal("LE#TashiaBrynnlawTalk","GLOBAL",2)~ GOTO LE#2
     IF ~~ THEN REPLY @8 DO ~SetGlobal("LE#TashiaBrynnlawTalk","GLOBAL",2)~ GOTO LE#3
     IF ~~ THEN REPLY @9 DO ~SetGlobal("LE#TashiaBrynnlawTalk","GLOBAL",2)~ GOTO LE#4
     IF ~~ THEN REPLY @10 DO ~SetGlobal("LE#TashiaBrynnlawTalk","GLOBAL",2)~ GOTO LE#5
     IF ~~ THEN REPLY @11 DO ~SetGlobal("LE#TashiaBrynnlawTalk","GLOBAL",2)~ GOTO LE#6
  END

  IF ~~ THEN BEGIN LE#2
     SAY @12
     = @13
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#3
     SAY @14
     = @15
     = @16
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#4
     SAY @17
     = @18
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#5
     SAY @19
     = @20
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#6
     SAY @21
     = @22
     IF ~~ THEN EXIT
  END

  // Underdark Lovetalk

  IF ~Global("LE#TashiaUnderdarkTalk","GLOBAL",1)~ THEN BEGIN LE#UD1
     SAY @23
     = @24
     IF ~~ THEN REPLY @25 DO ~SetGlobal("LE#TashiaUnderdarkTalk","GLOBAL",2)~ GOTO LE#UD2
     IF ~~ THEN REPLY @26 DO ~SetGlobal("LE#TashiaUnderdarkTalk","GLOBAL",2)~ GOTO LE#UD3
     IF ~~ THEN REPLY @27 DO ~SetGlobal("LE#TashiaUnderdarkTalk","GLOBAL",2)~ GOTO LE#UD4
     IF ~~ THEN REPLY @28 DO ~SetGlobal("LE#TashiaUnderdarkTalk","GLOBAL",2)~ GOTO LE#UD5
  END

  IF ~~ THEN BEGIN LE#UD2
     SAY @29
     = @30
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#UD3
     SAY @31
     = @32
     = @33
     = @34
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#UD4
     SAY @35
     = @36
     = @37
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#UD5
     SAY @38
     IF ~~ THEN EXIT
  END

  // Imoen Talk

  IF ~Global("LE#TashiaImoenTalk","GLOBAL",1)~ THEN BEGIN LE#IT1
     SAY @39
     IF ~~ THEN REPLY @40 DO ~SetGlobal("LE#TashiaImoenTalk","GLOBAL",2)~ EXIT
     IF ~~ THEN REPLY @41 DO ~SetGlobal("LE#TashiaImoenTalk","GLOBAL",2)~ GOTO LE#IT2
  END

  IF ~~ THEN BEGIN LE#IT2
     SAY @42
     IF ~~ THEN REPLY @43 GOTO LE#IT3
     IF ~~ THEN REPLY @44 GOTO LE#IT4
  END

  IF ~~ THEN BEGIN LE#IT3
     SAY @45
     = @46
     IF ~~ THEN REPLY @47 GOTO LE#IT3A
     IF ~~ THEN REPLY @48 GOTO LE#IT3B
  END

  IF ~~ THEN BEGIN LE#IT3A
     SAY @49
     = @50
     IF ~~ THEN DO ~LeaveParty() GivePartyAllEquipment() EscapeArea()~ EXIT
  END

  IF ~~ THEN BEGIN LE#IT3B
     SAY @51
     = @52
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#IT4
     SAY @53
     = @54
     IF ~~ THEN REPLY @55 EXTERN IMOEN2J LE#IT4A
     IF ~~ THEN REPLY @56 EXTERN IMOEN2J LE#IT4B
  END

  IF ~~ THEN BEGIN LE#IT4A2
     SAY @57
     = @58
     IF ~~ THEN EXIT
  END


  // Tashia buries her memories of Arilistan

  IF ~Global("Lovetalk","LOCALS",50) Global("TashiaMatch","GLOBAL",1) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#LT48
     SAY @59
     = @60
     = @61
     = @62
     = @63
     = @64
     = @65
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  // Tashia thanks the gods for your love

  IF ~Global("Lovetalk","LOCALS",52) Global("TashiaMatch","GLOBAL",1) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#LT50
     SAY @66
     = @67
     = @68
     = @69
     = @70
     = @71
     = @72
     = @73
     = @74
     = @75
     = @76
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  // Arilistan Lovetalk

  IF ~Global("Lovetalk","LOCALS",54) Global("TashiaMatch","GLOBAL",1) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#LT52
     SAY @77
     = @78
     IF ~~ THEN REPLY @79 GOTO LE#LT52A
     IF ~~ THEN REPLY @80 GOTO LE#LT52B
  END

  IF ~~ THEN BEGIN LE#LT52A
     SAY @81
     = @82
     IF ~~ THEN REPLY @83 GOTO LE#LT52A1
     IF ~~ THEN REPLY @84 GOTO LE#LT52A2
  END

  IF ~~ THEN BEGIN LE#LT52A1
     SAY @85
     = @86
     = @87
     = @88
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT52A2
     SAY @89
     = @90
     = @91
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT52B
     SAY @92
     = @93
     = @94
     IF ~~ THEN REPLY @95 GOTO LE#LT52B1
     IF ~~ THEN REPLY @96 GOTO LE#LT52B2
  END

  IF ~~ THEN BEGIN LE#LT52B2
     SAY @97
     = @98
     = @99
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT52B1
     SAY @100
     = @101
     = @102
     IF ~~ THEN REPLY @103 GOTO LE#LT52B2
     IF ~~ THEN REPLY @104 GOTO LE#LT52B1A
  END

  IF ~~ THEN BEGIN LE#LT52B1A
     SAY @105
     = @106
     = @107
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  // Cooking / Massage LoveTalk

  IF ~  Global("LE#TashiaCookingTalk","GLOBAL",1) Global("TashiaMatch","GLOBAL",1) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#LT54
    SAY @108
    IF ~~ THEN REPLY @109 DO ~SetGlobal("LE#TashiaCookingTalk","GLOBAL",2)~ GOTO LE#LT54A
    IF ~~ THEN REPLY @110 DO ~SetGlobal("LE#TashiaCookingTalk","GLOBAL",2)~ GOTO LE#LT54B
    IF ~~ THEN REPLY @111 DO ~SetGlobal("LE#TashiaCookingTalk","GLOBAL",2)~ GOTO LE#LT54C
  END

  IF ~~ THEN BEGIN LE#LT54A // Brush her off
     SAY @112
     = @113
     IF ~~ THEN DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54B // Cooking Part
     SAY @114
     IF ~~ THEN REPLY @115 GOTO LE#LT54B1
     IF ~~ THEN REPLY @116 GOTO LE#LT54B2
     IF ~~ THEN REPLY @117 GOTO LE#LT54B3
  END

  IF ~~ THEN BEGIN LE#LT54B1 // Player Cooks
     SAY @118
     = @119
     IF ~~ THEN EXTERN PLAYER1 LE#LT54B1A
  END

  IF ~~ THEN BEGIN LE#LT54B1A1
     SAY @120
     = @121
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54B1A2
     SAY @122
     = @123
     = @124
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54B2 // Tashia Cooks
     SAY @125
     IF ~~ THEN GOTO LE#LT54BFood
  END

  IF ~~ THEN BEGIN LE#LT54B3
     SAY @126
     = @127
     IF ~~ THEN GOTO LE#LT54BFood
  END

  IF ~~ THEN BEGIN LE#LT54BFood
     SAY @128
     = @129
     = @130
     IF ~~ THEN REPLY @131 GOTO LE#LT54BFoodGood
     IF ~~ THEN REPLY @132 GOTO LE#LT54BFoodBad
  END

  IF ~~ THEN BEGIN LE#LT54BFoodGood
     SAY @133
     = @134
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END
  
  IF ~~ THEN BEGIN LE#LT54BFoodBad
     SAY @135
     = @136
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END
  
  IF ~~ THEN BEGIN LE#LT54C // Up the bet
     SAY @137
     IF ~~ THEN REPLY @138 GOTO LE#LT54B
     IF ~~ THEN REPLY @139 GOTO LE#LT54C2
     IF ~~ THEN REPLY @140 GOTO LE#LT54C3
  END
  
  IF ~~ THEN BEGIN LE#LT54C3
     SAY @141
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END


  IF ~~ THEN BEGIN LE#LT54C2
     SAY @142
     = @143
     IF ~~ THEN REPLY @144 GOTO LE#LT54C2A
     IF ~~ THEN REPLY @145 GOTO LE#LT54C2B
     IF ~~ THEN REPLY @146 GOTO LE#LT54C2C
  END

  IF ~~ THEN BEGIN LE#LT54C2A
     SAY @147
     = @148
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54C2B
     SAY @149
     = @150
     = @151
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54C2C
     SAY @152
     = @153
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  // Past Lovetalk

  IF ~Global("LoveTalk","LOCALS",58) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#LT56
     SAY @154
     = @155
     = @156
     = @157
     IF ~~ THEN REPLY @158 GOTO LE#LT56A
     IF ~~ THEN REPLY @159 GOTO LE#LT56B
     IF ~~ THEN REPLY @160 GOTO LE#LT56C
  END

  IF ~~ THEN BEGIN LE#LT56A
     SAY @161
     = @162
     = @163
     = @164
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56B
     SAY @165
     = @166
     = @167
     IF ~~ THEN REPLY @168 GOTO LE#LT56B1
     IF ~~ THEN REPLY @169 GOTO LE#LT56B2
     IF ~~ THEN REPLY @170 GOTO LE#LT56B3
  END

  IF ~~ THEN BEGIN LE#LT56B1
     SAY @171
     = @172
     = @173
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56B2
     SAY @174
     = @175
     = @176
     = @177
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56B3
     SAY @178
     = @179
     = @180
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56C
     SAY @181
     = @182
     = @183
     = @184
     IF ~~ THEN REPLY @185 GOTO LE#LT56C1
     IF ~~ THEN REPLY @186 GOTO LE#LT56C2
     IF ~~ THEN REPLY @187 GOTO LE#LT56C3
  END
  
  IF ~~ THEN BEGIN LE#LT56C1
     SAY @188
     = @189
     = @190
     = @191
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56C2
     SAY @192
     = @193
     = @194
     = @195
     = @196
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56C3
     SAY @197
     = @198
     = @199
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  // Pet name LoveTalk
  IF ~Global("LoveTalk","LOCALS",60) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#PetNameLT
     SAY @200
     IF ~~ THEN REPLY @201 DO ~IncrementGlobal("LoveTalk","LOCALS",1)~ GOTO LE#PetNameLTA
     IF ~~ THEN REPLY @202 DO ~IncrementGlobal("LoveTalk","LOCALS",1)~ GOTO LE#PetNameLTB
  END

  IF ~~ THEN BEGIN LE#PetNameLTA
     SAY @203
     IF ~~ THEN DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#PetNameLTB
     SAY @204
     = @205
     IF ~~ THEN REPLY @206 GOTO LE#PetNameLTB1
     IF ~~ THEN REPLY @207 GOTO LE#PetNameLTB2
     IF ~~ THEN REPLY @208 GOTO LE#PetNameLTB3
  END

  IF ~~ THEN BEGIN LE#PetNameLTB1
     SAY @209
     = @210
     = @211
     IF ~~ THEN DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#PetNameLTB2
     SAY @212
     = @213
     IF ~~ THEN DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#PetNameLTB3
     SAY @214
     IF ~~ THEN DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END


	// Belt of Gender Change LT
	IF ~Global("LE#TashiaBeltLT","GLOBAL",1)~ THEN BEGIN LE#BeltLT
			SAY @215
  		= @216
  		= @217
  		= @218
  		= @219
  		IF ~~ THEN REPLY @220 DO ~SetGlobal("LE#TashiaBeltLT","GLOBAL",2)~ GOTO LE#BeltLTA
  		IF ~~ THEN REPLY @221 DO ~SetGlobal("LE#TashiaBeltLT","GLOBAL",2)~ GOTO LE#BeltLTB
  		IF ~~ THEN REPLY @222 DO ~SetGlobal("LE#TashiaBeltLT","GLOBAL",2)~ GOTO LE#BeltLTC
  END

	IF ~~ THEN BEGIN LE#BeltLTA
			SAY @223
			= @224
			= @225
			= @226
			IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
	END

	IF ~~ THEN BEGIN LE#BeltLTB
			SAY @227
			= @228
			= @229
			= @230
			= @231
			= @232
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#BeltLTC
			SAY @233
			= @234
			= @235
			= @236
			= @237
			IF ~~ THEN DO ~RestParty()~ EXIT
	END

	// Spellhold LT
	IF ~Global("LE#TashiaSpellholdLT","GLOBAL",1)~ THEN BEGIN LE#TashiaSHLT
			SAY @238
			= @239
			= @240
			= @241
			IF ~~ THEN REPLY @242 DO ~SetGlobal("LE#TashiaSpellholdLT", "GLOBAL",2)~ GOTO LE#TashiaSHLTA
			IF ~~ THEN REPLY @243 DO ~SetGlobal("LE#TashiaSpellholdLT", "GLOBAL",2)~ GOTO LE#TashiaSHLTB
			IF ~~ THEN REPLY @244 DO ~SetGlobal("LE#TashiaSpellholdLT", "GLOBAL",2)~ GOTO LE#TashiaSHLTC
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTB
			SAY @245
			= @246
			= @247
			IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTC
			SAY @248
			= @249
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTA
			SAY @250
			= @251
			= @252
			IF ~~ THEN REPLY @253 GOTO LE#TashiaSHLTA1
			IF ~~ THEN REPLY @254 GOTO LE#TashiaSHLTA2
			IF ~~ THEN REPLY @255 GOTO LE#TashiaSHLTA3
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTA1
			SAY @256
			= @257
			= @258
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTA2
			SAY @259
			= @260
			= @261
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTA3
			SAY @262
			= @263
			= @264
			IF ~~ THEN EXIT
	END

	// Simulacrum Lovetalk
	IF ~Global("LE#TashiaSimulacrumLT","GLOBAL",1)~ THEN BEGIN LE#TashiaSimulacrumLT
			SAY @265
			= @266
			IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("LE#tsics")~ EXIT
	END

	IF ~Global("LE#TashiaSimulacrumLT","GLOBAL",3)~ THEN BEGIN LE#TashiaSimulacrumLT2
			SAY @267
			= @268
			IF ~~ THEN REPLY @269 DO ~SetGlobal("LE#TashiaSimulacrumLT","GLOBAL",4)~ GOTO LE#TSLTA
			IF ~~ THEN REPLY @270 DO ~SetGlobal("LE#TashiaSimulacrumLT","GLOBAL",4)~ GOTO LE#TSLTB
			IF ~~ THEN REPLY @271 DO ~SetGlobal("LE#TashiaSimulacrumLT","GLOBAL",4)~ GOTO LE#TSLTC
			IF ~~ THEN REPLY @272 DO ~SetGlobal("LE#TashiaSimulacrumLT","GLOBAL",4)~ GOTO LE#TSLTD
	END

	IF ~~ THEN BEGIN LE#TSLTD
			SAY @273
			= @274
			= @275
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TSLTB
			SAY @276
			= @277
			= @278
			IF ~~ THEN DO ~RestParty()~ EXIT
	END
	
	IF ~~ THEN BEGIN LE#TSLTA
			SAY @279
			= @280
			IF ~~ THEN REPLY @281 GOTO LE#TSLTA1
			IF ~~ THEN REPLY @282 GOTO LE#TSLTA2
	END

	IF ~~ THEN BEGIN LE#TSLTA1
			SAY @283
			= @284
			IF ~~ THEN DO ~RestParty()~ EXIT
	END

	IF ~~ THEN BEGIN LE#TSLTA2
			SAY @285
			= @286
			= @287
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TSLTC
			SAY @288
			= @289
			= @290
			IF ~~ THEN REPLY @291 GOTO LE#TSLTA1
			IF ~~ THEN REPLY @292 GOTO LE#TSLTA2
	END

	// SoA Capper LoveTalk

	IF ~Global("LoveTalk","LOCALS",62)~ THEN BEGIN LE#TashiaSoACapperLT
			SAY @293
			= @294
			= @295
			IF ~~ THEN REPLY @296 DO ~IncrementGlobal("LoveTalk","LOCALS",1)~ GOTO LE#TashiaSOACLTA
			IF ~~ THEN REPLY @297 GOTO LE#TashiaSOACLTB
			IF ~~ THEN REPLY @298  GOTO LE#TashiaSOACLTC
			IF ~~ THEN REPLY @299  GOTO LE#TashiaSOACLTD
			IF ~~ THEN REPLY @300  GOTO LE#TashiaSOACLTE
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTE
			SAY @301
			= @302
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTA
			SAY @303
			= @304
			IF ~~ THEN REPLY @305 GOTO LE#TashiaSOACLTC
			IF ~~ THEN REPLY @306 GOTO LE#TashiaSOACLTB
			IF ~~ THEN REPLY @307 GOTO LE#TashiaSOACLTF
			IF ~~ THEN REPLY @308 GOTO LE#TashiaSOACLTG
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTF
			SAY @309
			= @310
			IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN LE#TashiaSOACLTG
			SAY @311
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTB
			SAY @312
			IF ~~ THEN REPLY @313 GOTO LE#TashiaSOACLTM
			IF ~~ THEN REPLY @314 GOTO LE#TashiaSOACLTN
			IF ~~ THEN REPLY @315 GOTO LE#TashiaSOACLTO
			IF ~~ THEN REPLY @316  GOTO LE#TashiaSOACLTG
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTM
			SAY @317
			= @318
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTN
			SAY @319
			= @320
			= @321
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTO
			SAY @322
			= @323
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTC
			SAY @324
			IF ~~ THEN REPLY @325 GOTO LE#TashiaSOACLTJ
			IF ~~ THEN REPLY @326 GOTO LE#TashiaSOACLTK
			IF ~~ THEN REPLY @327 GOTO LE#TashiaSOACLTL
			IF ~~ THEN REPLY @328 GOTO LE#TashiaSOACLTB
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTJ
			SAY @329
			= @330
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTK
			SAY @331
			= @332
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTL
			SAY @333
			= @334
			IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
	END
	
	IF ~~ THEN BEGIN LE#TashiaSOACLTD
			SAY @335
			IF ~~ THEN REPLY @336 GOTO LE#TashiaSOACLTB
			IF ~~ THEN REPLY @337 GOTO LE#TashiaSOACLTH
			IF ~~ THEN REPLY @338 GOTO LE#TashiaSOACLTI
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTH
			SAY @339
			= @340
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTI
			SAY @341
			= @342
			IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END

  // Class-based Lovetalks

  // Monk
  IF ~~ THEN BEGIN LE#MONKTALK
     SAY @343
     = @344
     IF ~~ THEN REPLY @345 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ EXTERN PLAYER1 LE#MONKTALKA
     IF ~~ THEN REPLY @346 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ EXTERN PLAYER1 LE#MONKTALKB
     IF ~~ THEN REPLY @347 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#MONKTALKC
     IF ~~ THEN REPLY @348 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#MONKTALKD
  END

  IF ~~ THEN BEGIN LE#MONKTALKA
     SAY @349
     = @350
     IF ~~ THEN REPLY @351 EXTERN PLAYER1 LE#MONKBREATH2
     IF ~~ THEN REPLY @352 GOTO LE#MONKTALKEND
  END

  IF ~~ THEN BEGIN LE#MONKTALKBREATHEND
     SAY @353
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#MONKTALKEND
     SAY @354
     = @355
     = @356
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#MONKTALKB
     SAY @357
     = @358
     = @359
     = @360
     IF ~~ THEN REPLY @361 EXTERN PLAYER1 LE#MONKBREATH1
     IF ~~ THEN REPLY @362 GOTO LE#MONKTALKC
     IF ~~ THEN REPLY @363 GOTO LE#MONKTALKEND
  END

  IF ~~ THEN BEGIN LE#MONKTALKD
     SAY @364
     = @365
     = @366
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#MONKTALKC
     SAY @367
     = @368
     IF ~~ THEN REPLY @369 GOTO LE#MONKTALKC1
     IF ~~ THEN REPLY @370 GOTO LE#MONKTALKC2
     IF ~~ THEN REPLY @371 GOTO LE#MONKTALKC3
  END

  IF ~~ THEN BEGIN LE#MONKTALKC1
     SAY @372
     = @373
     = @374
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#MONKTALKC2
     SAY @375
     = @376
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#MONKTALKC3
     SAY @377
     = @378
     IF ~~ THEN EXIT
  END

  //Barbarian
  IF ~Class(Player1,FIGHTER) Kit(Player1,BARBARIAN) Global("LE#TashiaClassLoveTalk","GLOBAL",1)~ THEN BEGIN LE#BARBARIANTALK
     SAY @379
     = @380
     = @381
     = @382
     = @383
     IF ~~ THEN REPLY @384 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#BARBARIANTALKA
     IF ~~ THEN REPLY @385 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#BARBARIANTALKB
     IF ~~ THEN REPLY @386 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#BARBARIANTALKC
     IF ~~ THEN REPLY @387 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#BARBARIANTALKD
  END
  
  IF ~~ THEN BEGIN LE#BARBARIANTALKA
     SAY @388
     = @389
     IF ~~ THEN REPLY @390 GOTO LE#BARBTALKA1
     IF ~~ THEN REPLY @391 GOTO LE#BARBTALKA2
     IF ~~ THEN REPLY @392 GOTO LE#BARBTALKA3
  END
  
  IF ~~ THEN BEGIN LE#BARBTALKA1
     SAY @393
     = @394
     = @395
     = @396
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#BARBTALKA2
     SAY @397
     = @398
     = @399
     = @400
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#BARBTALKA3
     SAY @401
     = @402
     = @403
     IF ~~ THEN DO ~RestParty()~ EXIT
  END
  
  IF ~~ THEN BEGIN LE#BARBARIANTALKB
     SAY @404
     = @405
     = @406
     = @407
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#BARBARIANTALKC
     SAY @408
     = @409
     = @410
     = @411
     = @412
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#BARBARIANTALKD
     SAY @413
     = @414
     = @415
     = @416
     = @417
     = @418
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END


  //Sorcerer
  IF ~Class(Player1,SORCERER) Global("LE#TashiaClassLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaSorcTalk
    SAY @419
    = @420
    = @421
    = @422
    IF ~~ THEN REPLY @423 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaSorcTalkA
    IF ~~ THEN REPLY @424 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaSorcTalkB
    IF ~~ THEN REPLY @425 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaSorcTalkC
    IF ~~ THEN REPLY @426 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaSorcTalkD
  END

  IF ~~ THEN BEGIN LE#TashiaSorcTalkA
     SAY @427
     = @428
     = @429
     = @430
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaSorcTalkB
     SAY @431
     = @432
     = @433
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaSorcTalkD
     SAY @434
     = @435
     = @436
     = @437
     = @438
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaSorcTalkC
     SAY @439
     IF ~~ THEN REPLY @440 GOTO LE#TashiaSorcTalkC1
     IF ~~ THEN REPLY @441 GOTO LE#TashiaSorcTalkC2
  END
  
  IF ~~ THEN BEGIN LE#TashiaSorcTalkC1
     SAY @442
     = @443
     = @444
     IF ~~ THEN DO ~RestParty()~ EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaSorcTalkC2
     SAY @445
     = @446
     = @447
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  // Paladin

  IF ~AreaCheck("AR0903") GlobalGT("PaladinOrder","GLOBAL",0) Global("LE#TashiaClassLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaPalTalk
     SAY @448
     = @449
     = @450
     IF ~~ THEN REPLY @451 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaPalTalkA
     IF ~~ THEN REPLY @452 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaPalTalkB
     IF ~~ THEN REPLY @453 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaPalTalkC
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkA
     SAY @454
     = @455
     = @456
     IF ~~ THEN REPLY @457 GOTO LE#TashiaPalTalkA1
     IF ~~ THEN REPLY @458 GOTO LE#TashiaPalTalkA2
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkA1
     SAY @459
     = @460
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkA2
     SAY @461
     = @462
     IF ~~ THEN DO ~SetGlobal("LE#TashiaRomanceActive","GLOBAL",3)~ EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaPalTalkB
     SAY @463
     = @464
     IF ~~ THEN REPLY @465 GOTO LE#TashiaPalTalkB1
     IF ~~ THEN REPLY @466 GOTO LE#TashiaPalTalkB2
  END
  
  IF ~~ THEN BEGIN LE#TashiaPalTalkB1
     SAY @467
     = @468
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaPalTalkB2
     SAY @469
     = @470
     = @471
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaPalTalkC
     SAY @472
     IF ~~ THEN REPLY @473 GOTO LE#TashiaPalTalkC1
     IF ~~ THEN REPLY @474 EXTERN PLAYER1 LE#TashiaPalTalkC2
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkC1
     SAY @475
     = @476
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkC2End
     SAY @477
     = @478
     = @479
     IF ~~ THEN EXIT
  END
  
  // Thief
  IF ~AreaCheck("AR0322") Global("LE#TashiaClassLoveTalk","GLOBAL",1) GlobalGT("PlayerThiefGuild","GLOBAL",0)~ THEN BEGIN LE#TashiaThiefTalk
     SAY @480
     = @481
     = @482
     = @483
     IF ~~ THEN REPLY @484 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaThiefTalkA
     IF ~~ THEN REPLY @485 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaThiefTalkB
     IF ~~ THEN REPLY @486 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaThiefTalkC
  END

  IF ~~ THEN BEGIN LE#TashiaThiefTalkA
     SAY @487
     = @488
     = @489
     = @490
     = @491
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaThiefTalkB
     SAY @492
     = @493
     = @494
     = @495
     = @496
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaThiefTalkC
    SAY @497
    = @498
    = @499
    = @500
    IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END
  
  // Bard
  IF ~AreaCheck("AR0523") Global("LE#TashiaClassLoveTalk","GLOBAL",1) GlobalGT("Playhouse","GLOBAL",0)~ THEN BEGIN LE#TashiaBardTalk
    SAY @501
    = @502
    IF ~~ THEN REPLY @503 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaBardTalkA
    IF ~~ THEN REPLY @504 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaBardTalkB
    IF ~~ THEN REPLY @505 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaBardTalkC
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkA
     SAY @506
     = @507
     = @508
     IF ~~ THEN REPLY @509 GOTO LE#TashiaBardTalkA1
     IF ~~ THEN REPLY @510 GOTO LE#TashiaBardTalkA2
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkA1
     SAY @511
     = @512
     = @513
     = @514
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkA2
     SAY @515
     = @516
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkB
     SAY @517
     = @518
     = @519
     = @520
     IF ~~ THEN REPLY @521 GOTO LE#TashiaBardTalkB1
     IF ~~ THEN REPLY @522 GOTO LE#TashiaBardTalkB2
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkB1
     SAY @523
     = @524
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaBardTalkB2
     SAY @525
     = @526
     = @527
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaBardTalkC
     SAY @528
     = @529
     IF ~~ THEN EXIT
  END

  // Fighter
  IF ~AreaCheck("AR1306") Global("LE#TashiaClassLoveTalk","GLOBAL",1) GlobalGT("PCKeepOwner","GLOBAL",0) !Class(Player1,MONK) !Kit(Player1,BARBARIAN)~ THEN BEGIN LE#TashiaFighterTalk
     SAY @530
     = @531
     = @532
     IF ~~ THEN REPLY @533 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaFighterTalkA
     IF ~~ THEN REPLY @534 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaFighterTalkB
     IF ~~ THEN REPLY @535 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaFighterTalkC
  END
  
  IF ~~ THEN BEGIN LE#TashiaFighterTalkA
     SAY @536
     = @537
     = @538
     = @539
     IF ~~ THEN REPLY @540 GOTO LE#TashiaFighterTalkA1
     IF ~~ THEN REPLY @541 GOTO LE#TashiaFighterTalkA2
  END
  
  IF ~~ THEN BEGIN LE#TashiaFighterTalkA1
     SAY @542
     = @543
     = @544
     = @545
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaFighterTalkA2
     SAY @546
     = @547
     = @548
     = @549
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaFighterTalkB
     SAY @550
     = @551
     IF ~~ THEN REPLY @552 GOTO LE#TashiaFighterTalkB1
     IF ~~ THEN REPLY @553 GOTO LE#TashiaFighterTalkB2
     IF ~~ THEN REPLY @554 GOTO LE#TashiaFighterTalkB3
  END
  
  IF ~~ THEN BEGIN LE#TashiaFighterTalkB1
     SAY @555
     = @556
     = @557
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaFighterTalkB2
     SAY @558
     = @559
     = @560
     = @561
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaFighterTalkB3
     SAY @562
     = @563
     = @564
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaFighterTalkC
     SAY @565
     = @566
     = @567
     IF ~~ THEN REPLY @568 GOTO LE#TashiaFighterTalkB
     IF ~~ THEN REPLY @569 GOTO LE#TashiaFighterTalkC1
  END
  
  IF ~~ THEN BEGIN LE#TashiaFighterTalkC1
     SAY @570
     = @571
     = @572
     IF ~~ THEN EXIT
  END
  
  // Mage
  IF ~AreaCheck("AR0411") Global("LE#TashiaClassLoveTalk","GLOBAL",1) GlobalGT("PCSphere","GLOBAL",0)~ THEN BEGIN LE#TashiaMageTalk
     SAY @573
     = @574
     = @575
     IF ~~ THEN REPLY @576 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaMageTalkA
     IF ~~ THEN REPLY @577 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaMageTalkB
     IF ~~ THEN REPLY @578 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaMageTalkC
  END

  IF ~~ THEN BEGIN LE#TashiaMageTalkA
     SAY @579
     IF ~~ THEN REPLY @580 GOTO LE#TashiaMageTalkA1
     IF ~~ THEN REPLY @581 GOTO LE#TashiaMageTalkA2
     IF ~~ THEN REPLY @582 GOTO LE#TashiaMageTalkA3
  END
  
  IF ~~ THEN BEGIN LE#TashiaMageTalkA1
     SAY @583
     = @584
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaMageTalkA2
     SAY @585
     = @586
     = @587
     = @588
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaMageTalkA3
     SAY @589
     = @590
     = @591
     = @592
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaMageTalkB
     SAY @593
     = @594
     = @595
     = @596
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaMageTalkC
     SAY @597 
     = @598
     = @599
     = @600
     IF ~~ THEN EXIT
  END
  
  // Druid
  IF ~Global("LE#TashiaClassLoveTalk","GLOBAL",1) GlobalGT("DruidStrongHold","GLOBAL",0) AreaCheck("AR1900")~ THEN BEGIN LE#TashiaDruidTalk
     SAY @601
     = @602
     = @603
     = @604
     IF ~~ THEN REPLY @605 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaDruidTalkA
     IF ~~ THEN REPLY @606 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaDruidTalkB
     IF ~~ THEN REPLY @607 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaDruidTalkC
     IF ~~ THEN REPLY @608 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaDruidTalkD
  END
  
  IF ~~ THEN BEGIN LE#TashiaDruidTalkA
     SAY @609
     = @610
     IF ~~ THEN REPLY @611 GOTO LE#TashiaDruidTalkA1
     IF ~~ THEN REPLY @612 GOTO LE#TashiaDruidTalkA2
     IF ~~ THEN REPLY @613 GOTO LE#TashiaDruidTalkD
  END
  
  IF ~~ THEN BEGIN LE#TashiaDruidTalkA1
     SAY @614
     = @615
     = @616
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaDruidTalkA2
     SAY @617
     = @618
     IF ~~ THEN REPLY @619 GOTO LE#TashiaDruidTalkC
     IF ~~ THEN REPLY @620 GOTO LE#TashiaDruidTalkB
     IF ~~ THEN REPLY @621 GOTO LE#TashiaDruidTalkD
  END
  
  IF ~~ THEN BEGIN LE#TashiaDruidTalkB
     SAY @622 
     = @623
     IF ~~ THEN REPLY @624 GOTO LE#TashiaDruidTalkB1
     IF ~~ THEN REPLY @625 GOTO LE#TashiaDruidTalkB2
     IF ~~ THEN REPLY @626 GOTO LE#TashiaDruidTalkD
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkB1
     SAY @627
     = @628
     = @629
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkB2
     SAY @630
     = @631
     = @632
     IF ~~ THEN DO ~RestParty()~ EXIT
   END

 IF ~Global("LE#TashiaClassLoveTalk","GLOBAL",4)~ THEN BEGIN LE#TashiaDruidTalkB2END
     SAY @633
     = @634
     = @635
     = @636
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaDruidTalkC
     SAY @637
     IF ~~ THEN REPLY @638 GOTO LE#TashiaDruidTalkC1
     IF ~~ THEN REPLY @639 GOTO LE#TashiaDruidTalkC2
     IF ~~ THEN REPLY @640 GOTO LE#TashiaDruidTalkC3
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkC1
     SAY @641
     = @642
     = @643
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaDruidTalkC2
     SAY @644
     = @645
     = @646
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkC3
     SAY @647
     = @648
     = @649
     = @650
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaDruidTalkD
     SAY @651
     = @652
     = @653
     IF ~~ THEN EXIT
  END
  
  // Cleric Talk
  IF ~~ THEN BEGIN LE#TashiaClericTalk
     SAY @654
     = @655
     = @656
     IF ~~ THEN REPLY @657 GOTO LE#TashiaClericTalkA
     IF ~~ THEN REPLY @658 GOTO LE#TashiaClericTalkB
     IF ~~ THEN REPLY @659 GOTO LE#TashiaClericTalkC
  END
  
  IF ~~ THEN BEGIN LE#TashiaClericTalkB
     SAY @660
     = @661
     = @662
     = @663
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaClericTalkC
     SAY @664
     = @665
     = @666
     = @667
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA
     SAY @668
     = @669
     = @670
     = @671
     = @672
     = @673
     IF ~~ THEN REPLY @674 GOTO LE#TashiaClericTalkC
     IF ~~ THEN REPLY @675 GOTO LE#TashiaClericTalkA1
     IF ~~ THEN REPLY @676 GOTO LE#TashiaClericTalkA2
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA2
     SAY @677
     = @678
     = @679
     = @680
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA1
     SAY @681
     = @682
     IF ~~ THEN REPLY @683 GOTO LE#TashiaClericTalkA1A
     IF ~~ THEN REPLY @684 GOTO LE#TashiaClericTalkA1B
     IF ~~ THEN REPLY @685 GOTO LE#TashiaClericTalkA1C
  END
  
  IF ~~ THEN BEGIN LE#TashiaClericTalkA1A
     SAY @686
     = @687
     = @688
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA1B
     SAY @689
     = @690
     = @691
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA1C
     SAY @692
     = @693
     IF ~~ THEN DO ~RestParty()~ EXIT
  END
  
  // Ranger Talk
  IF ~Global("LE#TashiaClassLoveTalk","GLOBAL",1) AreaCheck("AR1100") GlobalGT("RangerProtector","GLOBAL",0)~ THEN BEGIN LE#TashiaRangerTalk
     SAY @694
     = @695
     = @696
     = @697
		 IF ~~ THEN REPLY @698 GOTO LE#TashiaRangerTalkA
     IF ~~ THEN REPLY @699 GOTO LE#TashiaRangerTalkB
     IF ~~ THEN REPLY @700 GOTO LE#TashiaRangerTalkC
     IF ~~ THEN REPLY @701 GOTO LE#TashiaRangerTalkD
  END

	IF ~~ THEN BEGIN LE#TashiaRangerTalkA
		 SAY @702
		 = @703
		 = @704
		 = @705
		 = @706
		 IF ~~ THEN EXIT
	END

  IF ~~ THEN BEGIN LE#TashiaRangerTalkD
     SAY @707
     = @708
     = @709
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaRangerTalkB
     SAY @710
     = @711
     IF ~~ THEN REPLY @712 GOTO LE#TashiaRangerTalkC
     IF ~~ THEN REPLY @713 GOTO LE#TashiaRangerTalkB1Chain
     IF ~~ THEN REPLY @714 GOTO LE#TashiaRangerTalkB2
  END


  IF ~~ THEN BEGIN LE#TashiaRangerTalkB1
     SAY @715
     IF ~~ THEN REPLY @716 GOTO LE#TashiaRangerTalkB2
     IF ~~ THEN REPLY @717 GOTO LE#TashiaRangerTalkB1B
     IF ~~ THEN REPLY @718 GOTO LE#TashiaRangerTalkB1C
  END
  
  IF ~~ THEN BEGIN LE#TashiaRangerTalkB1B
     SAY @719
     = @720
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaRangerTalkB1C
     SAY @721
     = @722
     = @723
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaRangerTalkB2
     SAY @724
     = @725
     = @726
     = @727
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaRangerTalkC
     SAY @728
     = @729
     IF ~~ THEN REPLY @730 GOTO LE#TashiaRangerTalkC1
     IF ~~ THEN REPLY @731 GOTO LE#TashiaRangerTalkC2
     IF ~~ THEN REPLY @732 GOTO LE#TashiaRangerTalkD
  END
  
  IF ~~ THEN BEGIN LE#TashiaRangerTalkC1
     SAY @733
     = @734
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaRangerTalkC2
     SAY @735
     = @736
     IF ~~ THEN EXIT
  END
  
  // Hurt Talk

  IF ~Global("LE#TashiaHurtTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaHurtTalk
     SAY @737
     = @738
     = @739
     = @740
     IF ~~ THEN REPLY @741 DO ~SetGlobal("LE#TashiaHurtTalk","GLOBAL",2)~ GOTO LE#TashiaHurtTalkA
     IF ~~ THEN REPLY @742 DO ~SetGlobal("LE#TashiaHurtTalk","GLOBAL",2)~ GOTO LE#TashiaHurtTalkB
     IF ~~ THEN REPLY @743 DO ~SetGlobal("LE#TashiaHurtTalk","GLOBAL",2)~ GOTO LE#TashiaHurtTalkC
  END
  
  IF ~~ THEN BEGIN LE#TashiaHurtTalkA
     SAY @744
     = @745
     = @746
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaHurtTalkB
     SAY @747
     = @748
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaHurtTalkC
     SAY @749
     = @750
     IF ~~ THEN EXIT
  END
  
  // Gift LoveTalk

  IF ~Global("LE#TashiaGiftLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaGiftLoveTalk
     SAY @751
     = @752
     = @753
     = @754
     = @755
     IF ~~ THEN REPLY @756 DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",2)~ GOTO LE#TashiaGiftLoveTalkA
     IF ~~ THEN REPLY @757 DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",2)~ GOTO LE#TashiaGiftLoveTalkB
     IF ~~ THEN REPLY @758 DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",2)~ GOTO LE#TashiaGiftLoveTalkC
     IF ~~ THEN REPLY @759 DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",2)~ GOTO LE#TashiaGiftLoveTalkD
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalkA
     SAY @760
     = @761
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalkB
     SAY @762
     = @763
     = @764
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalkC
     SAY @765
     IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalkD
     SAY @766
     = @767
     IF ~~ THEN DO ~ActionOverride("Tashia",LeaveAreaLUA("AR0713","",[561.425],6)) ActionOverride(Player1,LeaveAreaLUA("AR0713","",[597.404],6))~ EXIT
  END

  IF ~Global("LE#TashiaGiftLoveTalk","GLOBAL",5) PartyHasItem("LE#wwclk")~ THEN BEGIN LE#TashiaGiftLoveTalk2
     SAY @768
     IF ~~ THEN REPLY @769 GOTO LE#TashiaGiftLoveTalk2A
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalk2A
     SAY @770
     IF ~~ THEN REPLY @771 GOTO LE#TashiaGiftLoveTalkEnd1
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalk2A2
     SAY @772
     IF ~~ THEN REPLY @771 GOTO LE#TashiaGiftLoveTalkEnd1
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalkEnd1
     SAY @773
     = @774
     = @775
     IF ~~ THEN DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",6) ActionOverride(Player1,GiveItem("LE#wwclk","Tashia")) EquipItem("LE#wwclk")~ EXIT
  END

  IF ~Global("LE#TashiaGiftLoveTalk","GLOBAL",5) !PartyHasItem("LE#wwclk")~ THEN BEGIN LE#TashiaGiftLoveTalk3
     SAY @776
     IF ~~ THEN EXTERN LE#SHOP LE#End
  END


  IF ~~ THEN BEGIN LE#ClkUpEnd
     SAY @777
     = @778
     = @779
     IF ~~ THEN EXIT
  END




END

APPEND PLAYER1

IF ~Global("LE#TashiaGiftLoveTalk","GLOBAL",3)~ THEN BEGIN LE#TashiaGiftLoveTalk2
   SAY @780
   IF ~~ THEN DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("LE#Gicut")~ EXIT
END

IF ~Global("LE#StrongholdSelfTalk","GLOBAL",1)~ THEN BEGIN LE#StrongholdSelfTalk
   SAY @781
   IF ~~ THEN DO ~SetGlobal("LE#StrongholdSelfTalk","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN LE#MONKTALKA
   SAY @782
   IF ~~ THEN EXTERN BTASHIA LE#MONKTALKA
END

IF ~~ THEN BEGIN LE#MONKTALKB
   SAY @783
   IF ~~ THEN EXTERN BTASHIA LE#MONKTALKB
END

IF ~~ THEN BEGIN LE#LT54B1A
   SAY @784
   IF ~~ THEN REPLY @785 EXTERN BTASHIA LE#LT54B1A1
   IF ~~ THEN REPLY @786 EXTERN BTASHIA LE#LT54B1A2
END

IF ~~ THEN BEGIN LE#TashiaPalTalkC2
   SAY @787
   = @788
   = @789
   IF ~~ THEN EXTERN BTASHIA LE#TashiaPalTalkC2End
END

IF ~Global("LE#TashiaClassLoveTalk","GLOBAL",1) Class(Player1,MONK)~ THEN BEGIN LE#MONKTALK
   SAY @790
   = @791
   = @792
   IF ~~ THEN EXTERN BTASHIA LE#MONKTALK
END

IF ~~ THEN BEGIN LE#MONKBREATH1
   SAY @793
   = @794
   IF ~~ THEN EXTERN BTASHIA LE#MONKTALKA
END

IF ~~ THEN BEGIN LE#MONKBREATH2
   SAY @795
   = @796
   = @797
   = @798
   IF ~~ THEN EXTERN BTASHIA LE#MONKTALKBREATHEND
END

IF ~Global("LE#TashiaClericTalk","GLOBAL",1) Global("LE#TashiaClassLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaClericTalk
   SAY @799
   IF ~~ THEN DO ~SetGlobal("LE#TashiaClericTalk","GLOBAL",2) SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ EXTERN BTASHIA LE#TashiaClericTalk
END

END

APPEND IMOEN2J

  IF ~~ THEN BEGIN LE#IT4A
     SAY @800
     IF ~~ THEN REPLY @801 GOTO LE#IT4A1
  END

  IF ~~ THEN BEGIN LE#IT4A1
     SAY @802
     IF ~~ THEN REPLY @803 EXTERN BTASHIA LE#IT4A2
  END
END

// Second Part of the Imoen Talk
CHAIN
  IF ~~ THEN IMOEN2J LE#IT4B
  @804
  == BTASHIA @805
  == IMOEN2J @806
  = @807
  == BTASHIA @808
  == IMOEN2J @809
  == BTASHIA @810
  = @811
EXIT

CHAIN
  IF ~~ THEN BTASHIA LE#TashiaRangerTalkB1Chain
  @812
  == PLAYER1 @813
END BTASHIA LE#TashiaRangerTalkB1

// Banters

CHAIN
IF ~InParty("Jaheira") AreaType(FOREST) CombatCounter(0) !See([ENEMY])
Global("LE#TashiaJaheiraBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BTASHIA LE#TashiaJaheiraBanter
@814 DO ~SetGlobal("LE#TashiaJaheiraBanter","GLOBAL",1)~
== BJAHEIR @815
== BTASHIA @816
== BJAHEIR @817
== BTASHIA @818
== BJAHEIR @819
== BTASHIA @820
== BJAHEIR @821
== BTASHIA @822
== BJAHEIR @823
== BTASHIA @824
== BJAHEIR @825
EXIT

CHAIN
IF WEIGHT #0 ~Global("LE#TashiaKorganBanter","GLOBAL",1) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN BKORGAN LE#TashiaKorganBanter
@826 DO ~SetGlobal("LE#TashiaKorganBanter","GLOBAL",2)~
== BTASHIA @827
== BKORGAN @828
== BTASHIA @829
== BKORGAN @830
= @831
== BTASHIA @832
== BKORGAN @833
== BTASHIA @834
== BKORGAN @835
= @836
= @837
== BTASHIA @838
== BKORGAN @839
== BTASHIA @840
== BKORGAN @841
== BTASHIA @842
== BKORGAN @843
== BTASHIA @844
= @845
= @846
= @847 DO ~RestParty()~
EXIT

CHAIN
IF ~Global("LE#TashiaKorganBanter","GLOBAL",3) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaKorganBanterMorningAfter
@848 DO ~SetGlobal("LE#TashiaKorganBanter","GLOBAL",4)~
= @849
== BKORGAN @850
EXIT

CHAIN IF ~InParty("Minsc") Global("LE#TashiaMinscBanter","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Misc",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaMinscBanter
@851 DO ~SetGlobal("LE#TashiaMinscBanter","GLOBAL",1)~
== BMINSC @852
== BTASHIA @853
== BMINSC @854
== BTASHIA @855
== BMINSC @856
== BTASHIA @857
== BMINSC @858
== BTASHIA @859
== BMINSC @860
EXIT

CHAIN IF ~InParty("Tashia") Global("LE#TashiaViconiaBanter","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BVICONI LE#TashiaViconiaBanter
@861 DO ~SetGlobal("LE#TashiaViconiaBanter","GLOBAL",1)~
== BTASHIA @862
== BVICONI @863
== BTASHIA @864
== BVICONI @865
== BTASHIA @866
== BVICONI @867
== BTASHIA @868
== BVICONI @869
== BTASHIA @870
== BVICONI @871
== BTASHIA @872
EXIT

CHAIN IF ~InParty("Tashia") Global("LE#TashiaEdwinBanter","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~
THEN BEDWIN LE#TashiaEdwinBanter
@873 DO ~SetGlobal("LE#TashiaEdwinBanter","GLOBAL",1)~
== BTASHIA @874
== BEDWIN @875
== BTASHIA @876
== BEDWIN @877
== BTASHIA @878
== BEDWIN @879
== BTASHIA @880
== BEDWIN @881
== BTASHIA @882
== BEDWIN @883
EXIT

CHAIN IF ~TimeOfDay(NIGHT) AreaType(OUTDOOR) CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaHaerBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
THEN BHAERDA LE#TashiaHaerBanter
@884 DO ~SetGlobal("LE#TashiaHaerBanter","GLOBAL",1)~
= @885
== BTASHIA @886
== BHAERDA @887
== BTASHIA @888
== BHAERDA @889
== BTASHIA @890
== BHAERDA @891
== BTASHIA @892
== BHAERDA @893
== BTASHIA @894
== BHAERDA @895
== BTASHIA @896
EXIT

CHAIN IF ~!AreaType(CITY) InParty("Tashia") CombatCounter(0) !See([ENEMY]) Global("LE#TashiaAerieBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN BAERIE LE#TashiaAerieBanter
@897 DO ~SetGlobal("LE#TashiaAerieBanter","GLOBAL",1)~
= @898
== BTASHIA @899
== BAERIE @900
== BTASHIA @901
== BAERIE @902
== BTASHIA @903
== BAERIE @904
== BTASHIA @905
== BAERIE @906
== BTASHIA @907
== BAERIE @908
== BTASHIA @909
= @910
== BAERIE @911
== BTASHIA @912
== BAERIE @913
EXIT

CHAIN IF ~InParty("Tashia") Global("LE#TashiaAnomenBanter","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN BANOMEN LE#TashiaAnomenBanter
@914 DO ~SetGlobal("LE#TashiaAnomenBanter","GLOBAL",1)~
== BTASHIA @915
== BANOMEN @916
== BTASHIA @917
== BANOMEN @918
== BTASHIA @919
== BANOMEN @920
== BTASHIA @921
== BANOMEN @922
== BTASHIA @923
== BANOMEN @924
== BTASHIA @925
== BANOMEN @926
== BTASHIA @927
== BANOMEN @928
== BTASHIA @929
== BANOMEN @930
== BTASHIA @931
== BANOMEN @932
== BTASHIA @933
EXIT

CHAIN IF ~Global("LE#TashiaImoenBanter","GLOBAL",1) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Imoen2",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaImoenBanter
@934
== IMOEN2J @935
== BTASHIA @936
== IMOEN2J @937
== BTASHIA @938
== IMOEN2J @939
== BTASHIA @940
== IMOEN2J @941
== BTASHIA @942
== IMOEN2J @943
== BTASHIA @944 DO ~SetGlobal("LE#TashiaImoenBanter","GLOBAL",2) RealSetGlobalTimer("LE#TashiaImoenTalkTimer","GLOBAL",400)~
EXIT

CHAIN IF ~InParty("Mazzy") Global("LE#TashiaMazzyBanter","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaMazzyBanter
@945 DO ~SetGlobal("LE#TashiaMazzyBanter","GLOBAL",1)~
== BMAZZY @946
== BTASHIA @947
== BMAZZY @948
== BTASHIA @949
== BMAZZY @950
== BTASHIA @951
== BMAZZY @952
== BTASHIA @953
== BMAZZY @954
== BTASHIA @955
EXIT

CHAIN IF ~InParty("Valygar") AreaType(FOREST) AreaType(OUTDOOR) CombatCounter(0) !See([ENEMY]) Global("LE#TashiaValygarBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Valygar",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaValygarBanter
@956 DO ~SetGlobal("LE#TashiaValygarBanter","GLOBAL",1)~
== BVALYGA @957
== BTASHIA @958
== BVALYGA @959
== BTASHIA @960
== BVALYGA @961
== BTASHIA @962
= @963
= @964
= @965
== BVALYGA @966
== BTASHIA @967
== BVALYGA @968
== BTASHIA @969
== BVALYGA @970
== BTASHIA @971
== BVALYGA @972
= @973
== BTASHIA @974
== BVALYGA @975
== BTASHIA @976
== BVALYGA @977
== BTASHIA @978
== BVALYGA @979
== BTASHIA @980
== BVALYGA @981
== BTASHIA @982
EXIT

CHAIN IF ~InParty("Yoshimo") Global("LE#TashiaYoshimoBanter","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaYoshimoBanter
@983
== BYOSHIM @984 DO ~SetGlobal("LE#TashiaYoshimoBanter","GLOBAL",1)~
== BTASHIA @985
== BYOSHIM @986
== BTASHIA @987
== BYOSHIM @988
== BTASHIA @989
== BYOSHIM @990
== BTASHIA @991
== BYOSHIM @992
== BTASHIA @993
== BYOSHIM @994
EXIT

CHAIN IF ~InParty("Tashia") Global("LE#TashiaJanBanter","GLOBAL",0)  CombatCounter(0) !See([ENEMY])!StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Jan",CD_STATE_NOTVALID)~
THEN BJAN LE#TashiaJanBanter
@995
== BTASHIA @996 DO ~SetGlobal("LE#TashiaJanBanter","GLOBAL",1)~
== BJAN @997
== BTASHIA @998
== BJAN @999
== BTASHIA @1000
== BJAN @1001
== BTASHIA @1002
== BJAN @1003
== BTASHIA @1004
== BJAN @1005
== BTASHIA @1006
== BJAN @1007
== BTASHIA @1008
== BJAN @1009
== BTASHIA @1010
== BJAN @1011
== BTASHIA @1012
EXIT

CHAIN IF ~InParty("Nalia") Global("NaliaIsaeaPlotDone","GLOBAL",1) CombatCounter(0) !See([ENEMY]) Global("LE#TashiaNaliaBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaNaliaBanter
@1013
== BTASHIA @1014 DO ~SetGlobal("LE#TashiaNaliaBanter","GLOBAL",1)~
== BNALIA @1015
== BTASHIA @1016
== BNALIA @1017
== BTASHIA @1018
== BNALIA @1019
== BTASHIA @1020
== BNALIA @1021
== BTASHIA @1022
== BNALIA @1023
== BTASHIA @1024
== BNALIA @1025
== BTASHIA @1026
== BNALIA @1027
== BTASHIA @1028
== BNALIA @1029
== BTASHIA @1030
== BNALIA @1031
== BTASHIA @1032
== BNALIA @1033
= @1034
= @1035
== BTASHIA @1036
EXIT

CHAIN IF ~InParty("Viconia") Global("LE#TashiaViconiaBanter2","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaViconiaBanter2
@1037 DO ~SetGlobal("LE#TashiaViconiaBanter2","GLOBAL",1)~
== BVICONI @1038
== BTASHIA @1039
== BVICONI @1040
== BTASHIA @1041
== BVICONI @1042
== BTASHIA @1043
== BVICONI @1044
== BTASHIA @1045
== BVICONI @1046
== BTASHIA @1047
== BVICONI @1048
EXIT

CHAIN IF ~InParty("Yoshimo") Global("LE#TashiaYoshimoBanter2","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaYoshimoBanter2
@1049 DO ~SetGlobal("LE#TashiaYoshimoBanter2","GLOBAL",1)~
== BYOSHIM @1050
== BTASHIA @1051
== BYOSHIM @1052
== BTASHIA @1053
== BYOSHIM @1054
== BTASHIA @1055
== BYOSHIM @1056
== BTASHIA @1057
== BYOSHIM @1058
== BTASHIA @1059
== BYOSHIM @1060
== BTASHIA @1061
== BYOSHIM @1062
== BTASHIA @1063
== BYOSHIM @1064
EXIT

CHAIN IF ~InParty("Imoen2") Global("LE#TashiaImoenBanter2","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Imoen2",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaImoenBanter2
@1065 DO ~SetGlobal("LE#TashiaImoenBanter2","GLOBAL",1)~
== IMOEN2J @1066
== BTASHIA @1067
== IMOEN2J @1068
== BTASHIA @1069
== IMOEN2J @1070
== BTASHIA @1071
== IMOEN2J @1072
== BTASHIA @1073
== IMOEN2J @1074
== BTASHIA @1075
== IMOEN2J @1076
== BTASHIA @1077
== IMOEN2J @1078
== BTASHIA @1079
== IMOEN2J @1080
EXIT

CHAIN IF ~InParty("Tashia") Global("LE#TashiaKorganBanter2","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN BKORGAN LE#TashiaKorganBanter2
@1081 DO ~SetGlobal("LE#TashiaKorganBanter2","GLOBAL",1)~
== BTASHIA @1082
== BKORGAN @1083
== BTASHIA @1084
== BKORGAN @1085
== BTASHIA @1086
== BKORGAN @1087
== BTASHIA @1088
== BKORGAN @1089
== BTASHIA @1090
== BKORGAN @1091
== BTASHIA @1092
== BKORGAN @1093
== BTASHIA @1094
== BKORGAN @1095
== BTASHIA @1096
== BKORGAN @1097
== BTASHIA @1098
EXIT

CHAIN IF ~InParty("Cernd") Global("LE#TashiaCerndBanter2","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID)!StateCheck("Cernd",CD_STATE_NOTVALID) ~
THEN BTASHIA LE#TashiaCerndBanter2
@1099 DO ~SetGlobal("LE#TashiaCerndBanter2","GLOBAL",1)~
== BCERND @1100
== BTASHIA @1101
== BCERND @1102
== BTASHIA @1103
== BCERND @1104
== BTASHIA @1105
== BCERND @1106
== BTASHIA @1107
== BCERND @1108
== BTASHIA @1109
== BCERND @1110
== BTASHIA @1111
== BCERND @1112
EXIT

CHAIN IF ~InParty("HaerDalis") Global("LE#TashiaHaerBanter2","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaHaerBanter2
@1113 DO ~SetGlobal("LE#TashiaHaerBanter2","GLOBAL",1)~
== BHAERDA @1114
== BTASHIA @1115
== BHAERDA @1116
== BTASHIA @1117
== BHAERDA @1118
== BTASHIA @1119
== BHAERDA @1120
== BTASHIA @1121
== BHAERDA @1122
== BTASHIA @1123
== BHAERDA @1124
= @1125
== BTASHIA @1126
== BHAERDA @1127
EXIT

CHAIN IF ~InParty("Jan") Global("LE#TashiaJanBanter2","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Jan",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaJanBanter2
@1128
== BJAN @1129 DO ~SetGlobal("LE#TashiaJanBanter2","GLOBAL",1)~
== BTASHIA @1130
== BJAN @1131
== BTASHIA @1132
== BJAN @1133
== BTASHIA @1134
== BJAN @1135
== BTASHIA @1136
== BJAN @1137
== BTASHIA @1138
== BJAN @1139
== BTASHIA @1140
== BJAN @1141
== BTASHIA @1142
== BJAN @1143
== BTASHIA @1144
== BJAN @1145
EXIT

CHAIN IF ~InParty("Tashia") Global("LE#TashiaAerieBanter","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN BAERIE LE#TashiaAerieBanter2
@1146 DO ~SetGlobal("LE#TashiaAerieBanter2","GLOBAL",1)~
== BTASHIA @1147
== BAERIE @1148
== BTASHIA @1149
== BAERIE @1150
== BTASHIA @1151
== BAERIE @1152
== BTASHIA @1153
== BAERIE @1154
== BTASHIA @1155
== BAERIE @1156
== BTASHIA @1157
EXIT

CHAIN IF ~InParty("Keldorn") Global("LE#TashiaKeldornBanter","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Keldorn",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaKeldornBanter
@1158 DO ~SetGlobal("LE#TashiaKeldornBanter","GLOBAL",1)~
== BKELDOR @1159
== BTASHIA @1160
== BKELDOR @1161
== BTASHIA @1162
== BKELDOR @1163
== BTASHIA @1164
== BKELDOR @1165
== BTASHIA @1166
== BKELDOR @1167
== BTASHIA @1168
== BKELDOR @1169
EXIT

CHAIN
IF ~InParty("Anomen") Global("LE#TashiaAnomenBanter2","GLOBAL",0) CombatCounter(0) !See([ENEMY]) !StateCheck("Tashia",CD_STATE_NOTVALID)!StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaAnomenBanter
@1170 DO ~SetGlobal("LE#TashiaAnomenBanter2","GLOBAL",1)~
== BANOMEN @1171
== BTASHIA @1172 
== BANOMEN @1173
== BTASHIA @1174
== BANOMEN @1175
== BTASHIA @1176 
== BANOMEN @1177 
== BTASHIA @1178 
== BANOMEN @1179
== BTASHIA @1180 
== BANOMEN @1181 
EXIT



// Shopkeeper dialogues

BEGIN ~LE#AIMIL~

IF ~Global("LE#TashiaGiftLoveTalk","GLOBAL",4)~ THEN BEGIN LE#Intro
   SAY @1182
   = @1183
   = @1184
   = @1185
   = @1186
   IF ~PartyGoldGT(9999) CheckStatGT(Player1,14,CHR)~ THEN REPLY @1187 DO ~TakePartyGold(10000)~ GOTO LE#DealDone
   IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY @1187 GOTO LE#Reconsider
   IF ~PartyGoldGT(11999)~ THEN REPLY @1188 DO ~TakePartyGold(12000)~ GOTO LE#DealDone
   IF ~~ THEN REPLY @1189 GOTO LE#DealNotDone
END

IF ~~ THEN BEGIN LE#Reconsider
   SAY @1190
   IF ~PartyGoldGT(11999)~ THEN REPLY @1191 DO ~TakePartyGold(12000)~ GOTO LE#DealDone
   IF ~~ THEN REPLY @1192 GOTO LE#DealNotDone
END

IF ~~ THEN BEGIN LE#DealDone
   SAY @1193
   = @1194
   IF ~~ THEN DO ~SetGlobal("LE#BoughtCloak","GLOBAL",1) SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",5) GiveItemCreate("LE#wwclk",Player1,1,1,0) StartCutSceneMode() StartCutScene("LE#gics2")~ EXIT
END

IF ~~ THEN BEGIN LE#DealNotDone
   SAY @1195
   IF ~~ THEN EXIT
END

IF ~GlobalGT("LE#TashiaGiftLoveTalk","GLOBAL",4) Global("LE#BoughtCloak","GLOBAL",0)~ THEN BEGIN LE#ReCloak
   SAY @1196
   IF ~~ THEN REPLY @1197 EXIT
   IF ~PartyGoldGT(11999)~ THEN REPLY @1198 DO ~TakePartyGold(12000)~ GOTO LE#DealDone2
   IF ~PartyGoldGT(9999) CheckStatGT(Player1,14,CHR)~ THEN REPLY @1199 DO ~TakePartyGold(10000)~ GOTO LE#DealDone2
   IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY @1199 GOTO LE#Reconsider2
END

IF ~~ THEN BEGIN LE#Reconsider2
   SAY @1200
   IF ~PartyGoldGT(11999)~ THEN REPLY @1191 DO ~TakePartyGold(12000)~ GOTO LE#DealDone2
   IF ~~ THEN REPLY @1192 GOTO LE#DealNotDone2
END

IF ~~ THEN BEGIN LE#DealDone2
   SAY @1201
   IF ~~ THEN DO ~SetGlobal("LE#BoughtCloak","GLOBAL",1) GiveItemCreate("LE#wwclk",Player1,1,1,0)~ EXTERN BTASHIA LE#TashiaGiftLoveTalk2A2
END

IF ~~ THEN BEGIN LE#DealNotDone2
   SAY @1202
   IF ~~ EXIT
END

IF ~GlobalGT("LE#TashiaGiftLoveTalk","GLOBAL",4) Global("LE#CloakUpgradeQuest","GLOBAL",0) Global("LE#UpgradedCloak","GLOBAL",0) Global("LE#BoughtCloak","GLOBAL",1)~ THEN BEGIN LE#UpCloak
   SAY @1203
   IF ~~ THEN REPLY @1204 GOTO LE#UpCloakEnd
   IF ~~ THEN REPLY @1205 GOTO LE#UpCloak2
END

IF ~~ THEN BEGIN LE#UpCloakEnd
   SAY @1206
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#UpCloak2
   SAY @1207
   = @1208
   IF ~PartyGoldGT(29999) PartyHasItem("LE#wwclk")~ THEN REPLY @1209 GOTO LE#UpCloakPay
   IF ~~ THEN REPLY @1210 GOTO LE#UpCloakNotPay
   IF ~~ THEN REPLY @1211 GOTO LE#Proposal
END

IF ~~ THEN BEGIN LE#UpCloakPay
   SAY @1212
   IF ~~ THEN DO ~SetGlobal("LE#UpgradedCloak","GLOBAL",1) TakePartyGold(30000) TakePartyItem("LE#wwclk") DestroyItem("LE#wwclk") FadeToColor([10.0],0) Wait(3) FadeFromColor([10.0],0) GiveItemCreate("LE#twclk","Tashia",1,1,0)~ EXTERN BTASHIA LE#ClkUpEnd
END

IF ~~ THEN BEGIN LE#UpCloakNotPay
   SAY @1213
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#Proposal
   SAY @1214
   = @1215
   = @1216
   IF ~~ THEN REPLY @1217 GOTO LE#PropNoItems
   IF ~PartyGoldGT(7499) PartyHasItem("LE#wwclk") PartyHasItem("WAND06") PartyHasItem("Misc42") PartyHasItem("Amul14")~ THEN REPLY @1218 GOTO LE#PropHasItems
END

IF ~~ THEN BEGIN LE#PropNoItems
   SAY @1219
   IF ~~ THEN DO ~SetGlobal("LE#CloakUpgradeQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#PropHasItems
   SAY @1220
   IF ~~ THEN DO ~TakePartyGold(7500) TakePartyItem("WAND06") TakePartyItem("Misc42") TakePartyItem("Amul14") DestroyItem("WAND06") DestroyItem("Misc42") DestroyItem("Amul14") TakePartyItem("LE#wwclk") DestroyItem("LE#wwclk") SetGlobal("LE#UpgradedCloak","GLOBAL",1) FadeToColor([10.0],0) Wait(3) FadeFromColor([10.0],0) GiveItemCreate("LE#twclk","Tashia",1,1,0)~ EXIT
END

IF ~GlobalGT("LE#TashiaGiftLoveTalk","GLOBAL",4) Global("LE#CloakUpgradeQuest","GLOBAL",1) Global("LE#UpgradedCloak","GLOBAL",0) Global("LE#BoughtCloak","GLOBAL",1)~ THEN BEGIN LE#ReUpCloak
   SAY @1221
   IF ~~ THEN REPLY @1222 GOTO LE#UpCloakEnd
   IF ~PartyGoldGT(29999) PartyHasItem("LE#wwclk")~ THEN REPLY @1223 GOTO LE#UpCloakPay
   IF ~PartyGoldGT(7499) PartyHasItem("LE#wwclk") PartyHasItem("WAND06") PartyHasItem("Misc42") PartyHasItem("Amul14")~ THEN REPLY @1224 GOTO LE#PropHasItems
END

IF ~GlobalGT("LE#TashiaGiftLoveTalk","GLOBAL",4) Global("LE#CloakUpgradeQuest","GLOBAL",1) Global("LE#UpgradedCloak","GLOBAL",1) Global("LE#BoughtCloak","GLOBAL",1)~ THEN BEGIN LE#Final
   SAY @1225
   IF ~~ THEN EXIT
END



BEGIN ~LE#SHOP~

IF ~~ THEN BEGIN LE#End
   SAY @1226
   IF ~~ THEN EXIT
END


// Bodhi Kidnap


ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2)
!InParty("Tashia")
!Global("TashiaRomanceActive","GLOBAL",2)~

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("Tashia")
Global("TashiaRomanceActive","GLOBAL",2)~ THEN EXTERN BODHIAMB LE#TashiaVampKidnap
END

ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("LE#TashiaVampire","GLOBAL",2)~

EXTEND_BOTTOM C6BODHI 21
 IF ~Global("LE#TashiaVampire","GLOBAL",2)~ THEN EXTERN C6BODHI 23
END

EXTEND_BOTTOM C6BODHI 23
  IF ~Global("LE#TashiaVampire","GLOBAL",2)~ THEN REPLY @1227 EXTERN C6BODHI LE#VampireA
  IF ~Global("LE#TashiaVampire","GLOBAL",2)~ THEN REPLY @1228 EXTERN C6BODHI LE#VampireA
  IF ~Global("LE#TashiaVampire","GLOBAL",2)~ THEN REPLY @1229 EXTERN C6BODHI LE#VampireA
  IF ~Global("LE#TashiaVampire","GLOBAL",2)~ THEN REPLY @1230 EXTERN C6BODHI LE#VampireB
END

APPEND C6BODHI

IF ~~ THEN BEGIN LE#VampireB
   SAY @1231
   IF ~~ THEN GOTO LE#VampireA
END

IF ~~ THEN BEGIN LE#VampireA
   SAY @1232
   IF ~~ THEN UNSOLVED_JOURNAL @1 EXTERN LE#VTash LE#Response
END

IF ~~ THEN BEGIN LE#VampireC
   SAY @1233
   IF ~~ THEN GOTO 28
END

END

BEGIN ~LE#VTASH~

IF ~~ THEN BEGIN LE#Response
   SAY @1234
   IF ~~ THEN EXTERN C6BODHI LE#VampireC
END


APPEND BODHIAMB

IF ~~ THEN BEGIN LE#TashiaVampKidnap
SAY @1235
IF ~~ THEN EXTERN TASHIAJ LE#TashiaVampKidnapResponse
END

IF ~~ THEN BEGIN LE#TashiaVampKidnap2
SAY @1236
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("LE#BodhA")~ UNSOLVED_JOURNAL @2 EXIT
END

END

APPEND TASHIAJ

IF ~~ THEN BEGIN LE#TashiaVampKidnapResponse
SAY @1237
IF ~~ THEN EXTERN BODHIAMB LE#TashiaVampKidnap2
END

END

ADD_TRANS_TRIGGER IMNBOOK1 0 ~OR(2)
			       !Global("RevealUmar","GLOBAL",1)
			       !PartyHasItem("le#tbody")~

EXTEND_BOTTOM IMNBOOK1 0
 IF ~PartyHasItem("le#tbody")
     Global("RevealUmar","GLOBAL",1)~ THEN REPLY #59383 EXTERN IMNBOOK1 4
END

ADD_STATE_TRIGGER TASHIAP 0
~!Global("LE#TashiaVampire","GLOBAL",3)~


APPEND TASHIAP

IF WEIGHT #0 ~Global("LE#TashiaVampire","GLOBAL",3)~ THEN BEGIN LE#TashiaAfterVampirism
  SAY @1238
  = @1239
  = @1240
  IF ~~ THEN REPLY @1241 DO ~SetGlobal("LE#TashiaVampire","GLOBAL",4)~ GOTO LE#TashiaAfterVampirismA
  IF ~~ THEN REPLY @1242 DO ~SetGlobal("LE#TashiaVampire","GLOBAL",4)~ GOTO LE#TashiaAfterVampirismB
  IF ~~ THEN REPLY @1243 DO ~SetGlobal("LE#TashiaVampire","GLOBAL",4)~ GOTO LE#TashiaAfterVampirismC
  IF ~~ THEN REPLY @1244 DO ~SetGlobal("LE#TashiaVampire","GLOBAL",4)~ GOTO LE#TashiaAfterVampirismD
END

IF ~~ THEN BEGIN LE#TashiaAfterVampirismA
   SAY @1245
   IF ~~ THEN DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(@2) EraseJournalEntry(@1) EraseJournalEntry(15710) EraseJournalEntry(6589) JoinParty()~ SOLVED_JOURNAL @0 EXIT
END

IF ~~ THEN BEGIN LE#TashiaAfterVampirismB
   SAY @1246
   IF ~~ THEN DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(@2) EraseJournalEntry(@1) EraseJournalEntry(15710) EraseJournalEntry(6589) JoinParty()~ SOLVED_JOURNAL @0 EXIT
END

IF ~~ THEN BEGIN LE#TashiaAfterVampirismC
   SAY @1247
   = @1248
   IF ~~ THEN DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(@2) EraseJournalEntry(@1) EraseJournalEntry(15710) EraseJournalEntry(6589) SetGlobal("TashiaRomance","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL @0 EXIT
END

IF ~~ THEN BEGIN LE#TashiaAfterVampirismD
   SAY @1249
   IF ~~ THEN REPLY @1250 GOTO LE#TashiaAfterVampirismD1
   IF ~~ THEN REPLY @1251 GOTO LE#TashiaAfterVampirismD2
END

IF ~~ THEN BEGIN LE#TashiaAfterVampirismD1
   SAY @1252
   = @1253
   IF ~~ THEN DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(@2) EraseJournalEntry(@1) EraseJournalEntry(15710) EraseJournalEntry(6589) JoinParty()~ SOLVED_JOURNAL @0 EXIT
END

IF ~~ THEN BEGIN LE#TashiaAfterVampirismD2
   SAY @1254
   = @1255
   IF ~~ THEN DO ~EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(@2) EraseJournalEntry(@1) EraseJournalEntry(15710) EraseJournalEntry(6589) SetGlobal("TashiaRomanceActive","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL @0 EXIT
END

END

EXTEND_BOTTOM C6ELHAN2 70
IF ~PartyHasItem("LE#tbody")~ THEN REPLY @1256 GOTO 76
END

EXTEND_BOTTOM DOGHMA 0 3 7 9
IF ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("le#tbody")~ THEN REPLY @1257 GOTO 10
END

ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("le#tbody")~ 1 2 3

APPEND OGHMONK1

IF WEIGHT #-1 ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("le#tbody")~ THEN BEGIN OghmaMonk#1.1
SAY @1258
IF ~~ THEN REPLY @1259 GOTO 5
IF ~~ THEN REPLY @1257 GOTO 6
END

END

EXTEND_BOTTOM SUDEMIN 2
IF ~PartyHasItem("le#tbody")~ THEN REPLY @1260 GOTO 3
END

EXTEND_BOTTOM WARSAGE 0
IF ~!Dead("c6bodhi")
Global("LE#TashiaVampire","GLOBAL",1)~ THEN REPLY @1261 GOTO 6
IF ~PartyHasItem("G#JNABDY")~ THEN REPLY @1262 GOTO 5
END