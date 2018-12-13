APPEND BTASHIA

  // Pet name LoveTalk
  IF ~Global("LoveTalk","LOCALS",60) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#PetNameLT
     SAY @3
     IF ~~ THEN REPLY @4 DO ~IncrementGlobal("LoveTalk","LOCALS",1)~ GOTO LE#PetNameLTA
     IF ~~ THEN REPLY @5 DO ~IncrementGlobal("LoveTalk","LOCALS",1)~ GOTO LE#PetNameLTB
  END

  IF ~~ THEN BEGIN LE#PetNameLTA
     SAY @6
     IF ~~ THEN DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#PetNameLTB
     SAY @7
     IF ~~ THEN REPLY @8 GOTO LE#PetNameLTB1
     IF ~~ THEN REPLY @9 GOTO LE#PetNameLTB2
     IF ~~ THEN REPLY @10 GOTO LE#PetNameLTB3
  END

  IF ~~ THEN BEGIN LE#PetNameLTB1
     SAY @11
     IF ~~ THEN DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#PetNameLTB2
     SAY @12
     = @13
     IF ~~ THEN DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#PetNameLTB3
     SAY @14
     IF ~~ THEN DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  // Arilistan LT
  IF ~Global("Lovetalk","LOCALS",54) Global("TashiaMatch","GLOBAL",1) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#LT52
     SAY @15
     = @16
     IF ~~ THEN REPLY @17 GOTO LE#LT52A
     IF ~~ THEN REPLY @18 GOTO LE#LT52B
     IF ~~ THEN REPLY @19 GOTO LE#LT52C
	END

	IF ~~ THEN BEGIN LE#LT52A
     SAY @20
     = @21
     IF ~~ THEN REPLY @22 GOTO LE#LT52A1
     IF ~~ THEN REPLY @23 GOTO LE#LT52A2
  END

  IF ~~ THEN BEGIN LE#LT52A1
     SAY @24
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT52A2
     SAY @25
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT52B
     SAY @26
     = @27
     IF ~~ THEN REPLY @28 GOTO LE#LT52B1
     IF ~~ THEN REPLY @29 GOTO LE#LT52B2
  END

  IF ~~ THEN BEGIN LE#LT52B2
     SAY @30
     = @31
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT52B1
     SAY @32
     = @33
     IF ~~ THEN REPLY @34 GOTO LE#LT52B2
     IF ~~ THEN REPLY @35 GOTO LE#LT52B1A
  END

  IF ~~ THEN BEGIN LE#LT52B1A
     SAY @36
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

	IF ~~ THEN BEGIN LE#LT52C
		 SAY @37
		 IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

	// Cooking / Massage LoveTalk

  IF ~  Global("LE#TashiaCookingTalk","GLOBAL",1) Global("TashiaMatch","GLOBAL",1) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#LT54
    SAY @38
    IF ~~ THEN REPLY @39 GOTO LE#LT54A
    IF ~~ THEN REPLY @40 GOTO LE#LT54B
    IF ~~ THEN REPLY @41 GOTO LE#LT54C
  END

  IF ~~ THEN BEGIN LE#LT54A // Brush her off
     SAY @42
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54B // Cooking Part
     SAY @43
     IF ~~ THEN REPLY @44 GOTO LE#LT54B1
     IF ~~ THEN REPLY @45 GOTO LE#LT54B2
     IF ~~ THEN REPLY @46 GOTO LE#LT54B3
  END

  IF ~~ THEN BEGIN LE#LT54B1 // Player Cooks
     SAY @47
     = @48
     IF ~~ THEN REPLY @49 GOTO LE#LT54B1A
     IF ~~ THEN REPLY @50 DO ~FadeToColor([10.0],0) FadeFromColor([10.0],0)~ GOTO LE#LT54B1B
  END

  IF ~~ THEN BEGIN LE#LT54B1A
     SAY @51
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54B1B
     SAY @52
     = @53
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54B2 // Tashia Cooks
     SAY @54
     IF ~~ THEN GOTO LE#LT54BFood
  END

  IF ~~ THEN BEGIN LE#LT54B3
     SAY @55
     IF ~~ THEN GOTO LE#LT54BFood
  END

  IF ~~ THEN BEGIN LE#LT54BFood
     SAY @56
		 = @57
     IF ~~ THEN REPLY @58 GOTO LE#LT54BFoodGood
     IF ~~ THEN REPLY @59 GOTO LE#LT54BFoodBad
  END

  IF ~~ THEN BEGIN LE#LT54BFoodGood
     SAY @60
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54BFoodBad
     SAY @61
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54C // Up the bet
     SAY @62
     IF ~~ THEN REPLY @63 GOTO LE#LT54B
     IF ~~ THEN REPLY @64 GOTO LE#LT54C2
     IF ~~ THEN REPLY @65 GOTO LE#LT54C3
  END

  IF ~~ THEN BEGIN LE#LT54C3
     SAY @66
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54C2
     SAY @67
     = @68
     IF ~~ THEN REPLY @69 GOTO LE#LT54C2A
     IF ~~ THEN REPLY @70 GOTO LE#LT54C2B
     IF ~~ THEN REPLY @71 GOTO LE#LT54C2C
  END

  IF ~~ THEN BEGIN LE#LT54C2A
     SAY @72
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54C2B
     SAY @73
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT54C2C
     SAY @74
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

	  // Past Lovetalk

  IF ~Global("LoveTalk","LOCALS",58) Global("TashiaRomanceActive","GLOBAL",2)~ THEN BEGIN LE#LT56
     SAY @75
     = @76
     IF ~~ THEN REPLY @77 GOTO LE#LT56A
     IF ~~ THEN REPLY @78 GOTO LE#LT56B
     IF ~~ THEN REPLY @79 GOTO LE#LT56C
  END

  IF ~~ THEN BEGIN LE#LT56A
     SAY @80
     = @81
		 IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56B
     SAY @82
     = @83     
     IF ~~ THEN REPLY @84 GOTO LE#LT56B1
     IF ~~ THEN REPLY @85 GOTO LE#LT56B2
     IF ~~ THEN REPLY @86 GOTO LE#LT56B3
  END

  IF ~~ THEN BEGIN LE#LT56B1
     SAY @87
     = @88
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56B2
     SAY @89
     = @90
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56B3
     SAY @91
     = @92
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56C
     SAY @93
     = @94
     = @95
     IF ~~ THEN REPLY @96 GOTO LE#LT56C1
     IF ~~ THEN REPLY @97 GOTO LE#LT56C2
     IF ~~ THEN REPLY @98 GOTO LE#LT56C3
  END
  
  IF ~~ THEN BEGIN LE#LT56C1
     SAY @99
     = @100
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56C2
     SAY @101
     = @102
     = @103
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~~ THEN BEGIN LE#LT56C3
     SAY @104
     IF ~~ THEN DO ~IncrementGlobal("Lovetalk","LOCALS",1) RealSetGlobalTimer("TashiaRomance","GLOBAL",900)~ EXIT
  END

  IF ~Global("LE#TashiaBeltLT","GLOBAL",1)~ THEN BEGIN LE#BeltLT
     SAY @105
     = @106
     = @107
     = @108
     IF ~~ THEN REPLY @109 DO ~SetGlobal("LE#TashiaBeltLT","GLOBAL",2)~ GOTO LE#BeltLTA
     IF ~~ THEN REPLY @110 DO ~SetGlobal("LE#TashiaBeltLT","GLOBAL",2)~ GOTO LE#BeltLTB
     IF ~~ THEN REPLY @111 DO ~SetGlobal("LE#TashiaBeltLT","GLOBAL",2)~ GOTO LE#BeltLTC
  END

  IF ~~ THEN BEGIN LE#BeltLTA
     SAY @112
     = @113
     = @114
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#BeltLTB
     SAY @115
     = @116
     = @117
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#BeltLTC
     SAY @118
     = @119
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

	// Brynnlaw Lovetalk
  IF ~Global("LE#TashiaBrynnlawTalk","GLOBAL",1)~ THEN BEGIN LE#1
     SAY @120
     = @121
     IF ~~ THEN REPLY @122 DO ~SetGlobal("LE#TashiaBrynnlawTalk","GLOBAL",2)~ GOTO LE#2
     IF ~~ THEN REPLY @123 DO ~SetGlobal("LE#TashiaBrynnlawTalk","GLOBAL",2)~ GOTO LE#3
     IF ~~ THEN REPLY @124 DO ~SetGlobal("LE#TashiaBrynnlawTalk","GLOBAL",2)~ GOTO LE#4
     IF ~~ THEN REPLY @125 DO ~SetGlobal("LE#TashiaBrynnlawTalk","GLOBAL",2)~ GOTO LE#5
     IF ~~ THEN REPLY @126 DO ~SetGlobal("LE#TashiaBrynnlawTalk","GLOBAL",2)~ GOTO LE#6
  END

  IF ~~ THEN BEGIN LE#2
     SAY @127
     = @128
		 = @129
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#3
     SAY @130
     = @131
     = @132
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#4
     SAY @133
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#5
     SAY @134
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#6
     SAY @135
     = @136
     IF ~~ THEN EXIT
  END

	// Underdark Lovetalk

  IF ~Global("LE#TashiaUnderdarkTalk","GLOBAL",1)~ THEN BEGIN LE#UD1
     SAY @137
     = @138
		 = @139
     IF ~~ THEN REPLY @140 DO ~SetGlobal("LE#TashiaUnderdarkTalk","GLOBAL",2)~ GOTO LE#UD2
     IF ~~ THEN REPLY @141 DO ~SetGlobal("LE#TashiaUnderdarkTalk","GLOBAL",2)~ GOTO LE#UD3
     IF ~~ THEN REPLY @142 DO ~SetGlobal("LE#TashiaUnderdarkTalk","GLOBAL",2)~ GOTO LE#UD4
     IF ~~ THEN REPLY @143 DO ~SetGlobal("LE#TashiaUnderdarkTalk","GLOBAL",2)~ GOTO LE#UD5
  END

  IF ~~ THEN BEGIN LE#UD2
     SAY @144
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#UD3
     SAY @145
     = @146
     = @147
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#UD4
     SAY @148
     = @149
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#UD5
     SAY @150
     IF ~~ THEN EXIT
  END

  IF ~Global("LE#TashiaImoenTalk","GLOBAL",1)~ THEN BEGIN LE#IT1
     SAY @151
     IF ~~ THEN REPLY @152 EXIT
     IF ~~ THEN REPLY @153 GOTO LE#IT2
  END

  IF ~~ THEN BEGIN LE#IT2
     SAY @154
     IF ~~ THEN REPLY @155 GOTO LE#IT3
     IF ~~ THEN REPLY @156 GOTO LE#IT4
  END

  IF ~~ THEN BEGIN LE#IT3
     SAY @157
     IF ~~ THEN REPLY @158 GOTO LE#IT3A
     IF ~~ THEN REPLY @159 GOTO LE#IT3B
  END

  IF ~~ THEN BEGIN LE#IT3A
     SAY @160
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END

  IF ~~ THEN BEGIN LE#IT3B
     SAY @161
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#IT4
     SAY @162
     = @163
     IF ~~ THEN REPLY @164 EXTERN IMOEN2J LE#IT4A
     IF ~~ THEN REPLY @165 GOTO LE#IT4B
  END

  IF ~~ THEN BEGIN LE#IT4A1
	  SAY @166
	  IF ~~ THEN EXIT
  END

	IF ~~ THEN BEGIN LE#IT4B
     SAY @167
     IF ~~ THEN EXTERN IMOEN2J LE#IT4B
	END

	// Spellhold LT
	IF ~Global("LE#TashiaSpellholdLT","GLOBAL",1)~ THEN BEGIN LE#TashiaSHLT
			SAY @168
			IF ~~ THEN REPLY @169 DO ~SetGlobal("LE#TashiaSpellholdLT", "GLOBAL",2)~ GOTO LE#TashiaSHLTA
			IF ~~ THEN REPLY @170 DO ~SetGlobal("LE#TashiaSpellholdLT", "GLOBAL",2)~ GOTO LE#TashiaSHLTB
			IF ~~ THEN REPLY @171 DO ~SetGlobal("LE#TashiaSpellholdLT", "GLOBAL",2)~ GOTO LE#TashiaSHLTC
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTB
			SAY @172
			= @173
			IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTC
			SAY @174
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTA
			SAY @175
			= @176
			IF ~~ THEN REPLY @177 GOTO LE#TashiaSHLTA1
			IF ~~ THEN REPLY @178 GOTO LE#TashiaSHLTA2
			IF ~~ THEN REPLY @179 GOTO LE#TashiaSHLTA3
			IF ~~ THEN REPLY @180 GOTO LE#TashiaSHLTA4
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTA1
			SAY @181
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTA2
			SAY @182
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTA3
			SAY @183
			= @184
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSHLTA4
			SAY @185
			= @186
			IF ~~ THEN EXIT
	END

	// Simulacrum Lovetalk
	IF ~Global("LE#TashiaSimulacrumLT","GLOBAL",1)~ THEN BEGIN LE#TashiaSimulacrumLT
			SAY @187
			IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("LE#tsics")~ EXIT
	END

	IF ~Global("LE#TashiaSimulacrumLT","GLOBAL",3)~ THEN BEGIN LE#TashiaSimulacrumLT2
			SAY @188
			IF ~~ THEN REPLY @189 DO ~SetGlobal("LE#TashiaSimulacrumLT","GLOBAL",4)~ GOTO LE#TSLTA
			IF ~~ THEN REPLY @190 DO ~SetGlobal("LE#TashiaSimulacrumLT","GLOBAL",4)~ GOTO LE#TSLTB
			IF ~~ THEN REPLY @191 DO ~SetGlobal("LE#TashiaSimulacrumLT","GLOBAL",4)~ GOTO LE#TSLTC
			IF ~~ THEN REPLY @192 DO ~SetGlobal("LE#TashiaSimulacrumLT","GLOBAL",4)~ GOTO LE#TSLTD
	END

	IF ~~ THEN BEGIN LE#TSLTD
			SAY @193
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TSLTB
			SAY @194
			IF ~~ THEN DO ~RestParty()~ EXIT
	END

	IF ~~ THEN BEGIN LE#TSLTA
			SAY @195
			= @196
			IF ~~ THEN REPLY @197 GOTO LE#TSLTA1
			IF ~~ THEN REPLY @198 GOTO LE#TSLTA2
	END

	IF ~~ THEN BEGIN LE#TSLTA1
			SAY @199
			= @200
			IF ~~ THEN DO ~RestParty()~ EXIT
	END

	IF ~~ THEN BEGIN LE#TSLTA2
			SAY @201
			= @202
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TSLTC
			SAY @203
			= @204
			IF ~~ THEN REPLY @205 GOTO LE#TSLTA1
			IF ~~ THEN REPLY @206 GOTO LE#TSLTA2
	END

	// SoA Capper LoveTalk

	IF ~Global("LoveTalk","LOCALS",62)~ THEN BEGIN LE#TashiaSoACapperLT
			SAY @207
			= @208
			IF ~~ THEN REPLY @209 DO ~IncrementGlobal("LoveTalk","LOCALS",1)~ GOTO LE#TashiaSOACLTA
			IF ~~ THEN REPLY @210 GOTO LE#TashiaSOACLTB
			IF ~~ THEN REPLY @211  GOTO LE#TashiaSOACLTC
			IF ~~ THEN REPLY @212  GOTO LE#TashiaSOACLTD
			IF ~~ THEN REPLY @213  GOTO LE#TashiaSOACLTE
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTE
			SAY @214
			= @215
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTA
			SAY @216
			= @217
			IF ~~ THEN REPLY @218 GOTO LE#TashiaSOACLTC
			IF ~~ THEN REPLY @219 GOTO LE#TashiaSOACLTB
			IF ~~ THEN REPLY @220 GOTO LE#TashiaSOACLTF
			IF ~~ THEN REPLY @221 GOTO LE#TashiaSOACLTG
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTF
			SAY @222
			= @223
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTG
			SAY @224
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTB
			SAY @225
			IF ~~ THEN REPLY @226 GOTO LE#TashiaSOACLTM
			IF ~~ THEN REPLY @227 GOTO LE#TashiaSOACLTN
			IF ~~ THEN REPLY @228 GOTO LE#TashiaSOACLTO
			IF ~~ THEN REPLY @229  GOTO LE#TashiaSOACLTG
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTM
			SAY @230
			= @231
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTN
			SAY @232
			= @233
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTO
			SAY @234
			= @235
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTC
			SAY @236
			IF ~~ THEN REPLY @237 GOTO LE#TashiaSOACLTJ
			IF ~~ THEN REPLY @238 GOTO LE#TashiaSOACLTK
			IF ~~ THEN REPLY @239 GOTO LE#TashiaSOACLTL
			IF ~~ THEN REPLY @240 GOTO LE#TashiaSOACLTB
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTJ
			SAY @241
			= @242
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTK
			SAY @243
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTL
			SAY @244
			IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTD
			SAY @244
			IF ~~ THEN REPLY @245 GOTO LE#TashiaSOACLTB
			IF ~~ THEN REPLY @246 GOTO LE#TashiaSOACLTH
			IF ~~ THEN REPLY @247 GOTO LE#TashiaSOACLTI
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTH
			SAY @248
			= @249
			IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN LE#TashiaSOACLTI
			SAY @250
			= @251
			IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END


END


  APPEND IMOEN2J
    IF ~~ THEN BEGIN LE#IT4A
    	SAY @252
			= @253
			IF ~~ THEN EXTERN BTASHIA LE#IT4A1
    END

    IF ~~ THEN BEGIN LE#IT4B
       SAY @254
			 = @255
       IF ~~ THEN EXIT
    END
  END

// Class Lovetalks
APPEND BTASHIA

  // Fighter
  IF ~AreaCheck("AR1306") Global("LE#TashiaClassLoveTalk","GLOBAL",1) GlobalGT("PCKeepOwner","GLOBAL",0) !Class(Player1,MONK) !Kit(Player1,BARBARIAN)~ THEN BEGIN LE#TashiaFighterTalk
     SAY @256
     = @257
     IF ~~ THEN REPLY @258 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaFighterTalkA
     IF ~~ THEN REPLY @259 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaFighterTalkB
     IF ~~ THEN REPLY @260 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaFighterTalkC
  END

  IF ~~ THEN BEGIN LE#TashiaFighterTalkA
     SAY @261
     = @262
     IF ~~ THEN REPLY @263 GOTO LE#TashiaFighterTalkA1
     IF ~~ THEN REPLY @264 GOTO LE#TashiaFighterTalkA2
  END

  IF ~~ THEN BEGIN LE#TashiaFighterTalkA1
     SAY @265
     = @266
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaFighterTalkA2
     SAY @267
     = @268
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaFighterTalkB
     SAY @269
     IF ~~ THEN REPLY @270 GOTO LE#TashiaFighterTalkB1
     IF ~~ THEN REPLY @271 GOTO LE#TashiaFighterTalkB2
     IF ~~ THEN REPLY @272 GOTO LE#TashiaFighterTalkB3
  END

  IF ~~ THEN BEGIN LE#TashiaFighterTalkB1
     SAY @273
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaFighterTalkB2
     SAY @274
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaFighterTalkB3
     SAY @275
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaFighterTalkC
     SAY @276
     IF ~~ THEN REPLY @277 GOTO LE#TashiaFighterTalkB
     IF ~~ THEN REPLY @278 GOTO LE#TashiaFighterTalkC1
  END

  IF ~~ THEN BEGIN LE#TashiaFighterTalkC1
     SAY @279
     IF ~~ THEN EXIT
  END

  // Cleric Talk
  IF ~~ THEN BEGIN LE#TashiaClericTalk
     SAY @280
     = @281
     IF ~~ THEN REPLY @282 GOTO LE#TashiaClericTalkA
     IF ~~ THEN REPLY @283 GOTO LE#TashiaClericTalkB
     IF ~~ THEN REPLY @284 GOTO LE#TashiaClericTalkC
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkB
     SAY @285
     = @286
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkC
     SAY @287
     = @288
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA
     SAY @289
     = @290
     = @291
     = @292
     = @293
     IF ~~ THEN REPLY @294 GOTO LE#TashiaClericTalkC
     IF ~~ THEN REPLY @295 GOTO LE#TashiaClericTalkA1
     IF ~~ THEN REPLY @296 GOTO LE#TashiaClericTalkA2
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA2
     SAY @297
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA1
     SAY @298
     IF ~~ THEN REPLY @299 GOTO LE#TashiaClericTalkA1A
     IF ~~ THEN REPLY @300 GOTO LE#TashiaClericTalkA1B
     IF ~~ THEN REPLY @301 GOTO LE#TashiaClericTalkA1C
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA1A
     SAY @302
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA1B
     SAY @303
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaClericTalkA1C
     SAY @304
     IF ~~ THEN EXIT
  END

	// Thief
  IF ~AreaCheck("AR0322") Global("LE#TashiaClassLoveTalk","GLOBAL",1) GlobalGT("PlayerThiefGuild","GLOBAL",0)~ THEN BEGIN LE#TashiaThiefTalk
     SAY @305
     = @306
     IF ~~ THEN REPLY @307 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaThiefTalkA
     IF ~~ THEN REPLY @308 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaThiefTalkB
     IF ~~ THEN REPLY @309 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaThiefTalkC
  END

  IF ~~ THEN BEGIN LE#TashiaThiefTalkA
     SAY @310
     = @311
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaThiefTalkB
     SAY @312
     = @313
     = @314
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaThiefTalkC
    SAY @315
    = @316
    IF ~~ THEN EXIT
  END

	//Sorcerer
  IF ~Class(Player1,SORCERER) Global("LE#TashiaClassLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaSorcTalk
    SAY @317
    = @318
    = @319
    IF ~~ THEN REPLY @320 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaSorcTalkA
    IF ~~ THEN REPLY @321 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaSorcTalkB
    IF ~~ THEN REPLY @322 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaSorcTalkC
    IF ~~ THEN REPLY @323 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaSorcTalkD
  END

  IF ~~ THEN BEGIN LE#TashiaSorcTalkA
     SAY @324
     = @325
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaSorcTalkB
     SAY @326
     = @327
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaSorcTalkD
     SAY @328
     = @329
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaSorcTalkC
     SAY @330
     IF ~~ THEN REPLY @331  GOTO LE#TashiaSorcTalkC1
     IF ~~ THEN REPLY @332 GOTO LE#TashiaSorcTalkC2
  END

  IF ~~ THEN BEGIN LE#TashiaSorcTalkC1
     SAY @333
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaSorcTalkC2
     SAY @334
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

	// Paladin
  IF ~AreaCheck("AR0903") GlobalGT("PaladinOrder","GLOBAL",0) Global("LE#TashiaClassLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaPalTalk
     SAY @335
     IF ~~ THEN REPLY @336 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaPalTalkA
     IF ~~ THEN REPLY @337 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaPalTalkB
     IF ~~ THEN REPLY @338 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaPalTalkC
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkA
     SAY @339
     IF ~~ THEN REPLY @340 GOTO LE#TashiaPalTalkA1
     IF ~~ THEN REPLY @341 GOTO LE#TashiaPalTalkA2
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkA1
     SAY @342
     = @343
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkA2
     SAY @344
     = @345
     IF ~~ THEN DO ~SetGlobal("LE#TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkB
     SAY @346
     = @347
     IF ~~ THEN REPLY @348 GOTO LE#TashiaPalTalkB1
     IF ~~ THEN REPLY @349 GOTO LE#TashiaPalTalkB2
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkB1
     SAY @350
     = @351
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkB2
     SAY @352
     = @353
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkC
     SAY @354
     IF ~~ THEN REPLY @355 GOTO LE#TashiaPalTalkC1
     IF ~~ THEN REPLY @356 EXTERN PLAYER1 LE#TashiaPalTalkJoke
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkC1
     SAY @357
     = @358
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaPalTalkC2
     SAY @359
     = @360
     IF ~~ THEN EXIT
  END

  // Ranger Talk
  IF ~Global("LE#TashiaClassLoveTalk","GLOBAL",1) AreaCheck("AR1100") GlobalGT("RangerProtector","GLOBAL",0)~ THEN BEGIN LE#TashiaRangerTalk
     SAY @361
     = @362
		 IF ~~ THEN REPLY @363 GOTO LE#TashiaRangerTalkA
     IF ~~ THEN REPLY @364 GOTO LE#TashiaRangerTalkB
     IF ~~ THEN REPLY @365 GOTO LE#TashiaRangerTalkC
     IF ~~ THEN REPLY @366 GOTO LE#TashiaRangerTalkD
  END

	IF ~~ THEN BEGIN LE#TashiaRangerTalkA
		 SAY @367
		 = @368
		 = @369
		 = @370
		 = @371
		 IF ~~ THEN EXIT
	END

  IF ~~ THEN BEGIN LE#TashiaRangerTalkB
     SAY @372
     IF ~~ THEN REPLY @373 GOTO LE#TashiaRangerTalkC
     IF ~~ THEN REPLY @374 GOTO LE#TashiaRangerTalkB1
     IF ~~ THEN REPLY @375 GOTO LE#TashiaRangerTalkB2
  END


  IF ~~ THEN BEGIN LE#TashiaRangerTalkB1
     SAY @376
     IF ~~ THEN REPLY @377 GOTO LE#TashiaRangerTalkB2
     IF ~~ THEN REPLY @378 GOTO LE#TashiaRangerTalkB1B
     IF ~~ THEN REPLY @379 GOTO LE#TashiaRangerTalkB1C
  END

  IF ~~ THEN BEGIN LE#TashiaRangerTalkB1B
     SAY @380
     = @381
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaRangerTalkB1C
     SAY @382
     = @383
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaRangerTalkB2
     SAY @384
     IF ~~ THEN DO ~RestParty()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaRangerTalkC
     SAY @385
     IF ~~ THEN REPLY @386 GOTO LE#TashiaRangerTalkC1
     IF ~~ THEN REPLY @387 GOTO LE#TashiaRangerTalkC2
     IF ~~ THEN REPLY @388 GOTO LE#TashiaRangerTalkD
  END

  IF ~~ THEN BEGIN LE#TashiaRangerTalkC1
     SAY @389
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaRangerTalkC2
     SAY @390
     = @391
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaRangerTalkD
     SAY @392
     = @393
     IF ~~ THEN EXIT
  END

  // Bard
  IF ~AreaCheck("AR0523") Global("LE#TashiaClassLoveTalk","GLOBAL",1) GlobalGT("Playhouse","GLOBAL",0)~ THEN BEGIN LE#TashiaBardTalk
    SAY @394
    IF ~~ THEN REPLY @395 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaBardTalkA
    IF ~~ THEN REPLY @396 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaBardTalkB
    IF ~~ THEN REPLY @397 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaBardTalkC
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkA
     SAY @398
     = @399
     IF ~~ THEN REPLY @400 GOTO LE#TashiaBardTalkA1
     IF ~~ THEN REPLY @401 GOTO LE#TashiaBardTalkA2
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkA1
     SAY @402
     = @403
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkA2
     SAY @404
     = @405
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkB
     SAY @406
     = @407
     IF ~~ THEN REPLY @408 GOTO LE#TashiaBardTalkB1
     IF ~~ THEN REPLY @409 GOTO LE#TashiaBardTalkB2
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkB1
     SAY @410
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkB2
     SAY @411
     = @412
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaBardTalkC
     SAY @413
     = @414
     IF ~~ THEN EXIT
  END

  // Druid
  IF ~Global("LE#TashiaClassLoveTalk","GLOBAL",1) GlobalGT("DruidStrongHold","GLOBAL",0) AreaCheck("AR1900")~ THEN BEGIN LE#TashiaDruidTalk
     SAY @415
     = @416
     IF ~~ THEN REPLY @417 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaDruidTalkA
     IF ~~ THEN REPLY @418 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaDruidTalkB
     IF ~~ THEN REPLY @419 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaDruidTalkC
     IF ~~ THEN REPLY @420  DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaDruidTalkD
  END
  
  IF ~~ THEN BEGIN LE#TashiaDruidTalkA
     SAY @421
     IF ~~ THEN REPLY @422 GOTO LE#TashiaDruidTalkA1
     IF ~~ THEN REPLY @423 GOTO LE#TashiaDruidTalkA2
     IF ~~ THEN REPLY @424 GOTO LE#TashiaDruidTalkD
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkA1
     SAY @425
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkA2
     SAY @426
     IF ~~ THEN REPLY @427 GOTO LE#TashiaDruidTalkC
     IF ~~ THEN REPLY @428 GOTO LE#TashiaDruidTalkB
     IF ~~ THEN REPLY @429 GOTO LE#TashiaDruidTalkD
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkB
     SAY @430
     IF ~~ THEN REPLY @431 GOTO LE#TashiaDruidTalkB1
     IF ~~ THEN REPLY @432 GOTO LE#TashiaDruidTalkB2
     IF ~~ THEN REPLY @433 GOTO LE#TashiaDruidTalkD
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkB1
     SAY @434
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkB2
     SAY @435
		 IF ~~ THEN DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",3) RestParty()~ EXIT
  END

	IF ~Global("LE#TashiaClassLoveTalk","GLOBAL",4)~ THEN BEGIN LE#TashiaDruidTalkB2END
     SAY @436
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkC
     SAY @437
     IF ~~ THEN REPLY @438 GOTO LE#TashiaDruidTalkC1
     IF ~~ THEN REPLY @439 GOTO LE#TashiaDruidTalkC2
     IF ~~ THEN REPLY @440 GOTO LE#TashiaDruidTalkC3
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkC1
     SAY @441
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkC2
     SAY @442
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkC3
     SAY @443
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaDruidTalkD
     SAY @444
     IF ~~ THEN EXIT
  END


  IF ~Global("LE#TashiaClassLoveTalk","GLOBAL",1) Class(Player1,MONK)~ THEN BEGIN LE#MONKTALK
     SAY @445
     = @446
     IF ~~ THEN REPLY @447 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#MONKTALKA
     IF ~~ THEN REPLY @448 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#MONKTALKB
     IF ~~ THEN REPLY @449 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#MONKTALKC
     IF ~~ THEN REPLY @450 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#MONKTALKD
  END


  IF ~~ THEN BEGIN LE#MONKTALKA
     SAY @451
     = @452
     IF ~~ THEN REPLY @453 GOTO LE#MONKTALKA1
     IF ~~ THEN REPLY @454 GOTO LE#MONKTALKA2
     IF ~~ THEN REPLY @455 GOTO LE#MONKTALKD
  END

  IF ~~ THEN BEGIN LE#MONKTALKA1
     SAY @456
     = @457
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#MONKTALKA2
     SAY @458
     = @459
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#MONKTALKB
     SAY @460
     = @461
     IF ~~ THEN REPLY @462 GOTO LE#MONKTALKA
     IF ~~ THEN REPLY @463 GOTO LE#MONKTALKC
     IF ~~ THEN REPLY @464 GOTO LE#MONKTALKB1
  END

  IF ~~ THEN BEGIN LE#MONKTALKB1
     SAY @465
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#MONKTALKD
     SAY @466
     = @467
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
  END

  IF ~~ THEN BEGIN LE#MONKTALKC
     SAY @468
     IF ~~ THEN REPLY @469 GOTO LE#MONKTALKC1
     IF ~~ THEN REPLY @470 GOTO LE#MONKTALKC2
     IF ~~ THEN REPLY @471 GOTO LE#MONKTALKC3
  END

  IF ~~ THEN BEGIN LE#MONKTALKC1
     SAY @472
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#MONKTALKC2
     SAY @473
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#MONKTALKC3
     SAY @474
     IF ~~ THEN EXIT
  END

	//Barbarian
  IF ~Class(Player1,FIGHTER) Kit(Player1,BARBARIAN) Global("LE#TashiaClassLoveTalk","GLOBAL",1)~ THEN BEGIN LE#BARBARIANTALK
     SAY @475
     = @476
     IF ~~ THEN REPLY @477 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#BARBARIANTALKA
     IF ~~ THEN REPLY @478 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#BARBARIANTALKB
     IF ~~ THEN REPLY @479 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#BARBARIANTALKC
     IF ~~ THEN REPLY @480 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#BARBARIANTALKD
  END

  IF ~~ THEN BEGIN LE#BARBARIANTALKA
     SAY @481
     = @482
     IF ~~ THEN REPLY @483 GOTO LE#BARBTALKA1
     IF ~~ THEN REPLY @484 GOTO LE#BARBTALKA2
     IF ~~ THEN REPLY @485 GOTO LE#BARBTALKA3
  END

  IF ~~ THEN BEGIN LE#BARBTALKA1
     SAY @486
     = @487
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#BARBTALKA2
     SAY @488
     = @489
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#BARBTALKA3
     SAY @490
     = @491
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#BARBARIANTALKB
     SAY @492
     = @493
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#BARBARIANTALKC
     SAY @494
     = @495
     = @496
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#BARBARIANTALKD
     SAY @497
     = @498
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END

	// Mage
  IF ~AreaCheck("AR0411") Global("LE#TashiaClassLoveTalk","GLOBAL",1) GlobalGT("PCSphere","GLOBAL",0)~ THEN BEGIN LE#TashiaMageTalk
     SAY @499
     = @500
     = @501
     IF ~~ THEN REPLY @502 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaMageTalkA
     IF ~~ THEN REPLY @503 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaMageTalkB
     IF ~~ THEN REPLY @504 DO ~SetGlobal("LE#TashiaClassLoveTalk","GLOBAL",2)~ GOTO LE#TashiaMageTalkC
  END

  IF ~~ THEN BEGIN LE#TashiaMageTalkA
     SAY @505
     IF ~~ THEN REPLY @506 GOTO LE#TashiaMageTalkA1
     IF ~~ THEN REPLY @507 GOTO LE#TashiaMageTalkA2
     IF ~~ THEN REPLY @508 GOTO LE#TashiaMageTalkA3
  END

  IF ~~ THEN BEGIN LE#TashiaMageTalkA1
     SAY @509
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaMageTalkA2
     SAY @510
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaMageTalkA3
     SAY @511
     = @512
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaMageTalkB
     SAY @513
     = @514
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() EscapeArea()~ EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaMageTalkC
     SAY @515
     = @516
     IF ~~ THEN EXIT
  END

  // Gift LoveTalk
	  IF ~Global("LE#TashiaGiftLoveTalk","GLOBAL",1)~ THEN BEGIN LE#TashiaGiftLoveTalk
     SAY @517
     = @518
     = @519
     IF ~~ THEN REPLY @520 DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",2)~ GOTO LE#TashiaGiftLoveTalkA
     IF ~~ THEN REPLY @521 DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",2)~ GOTO LE#TashiaGiftLoveTalkB
     IF ~~ THEN REPLY @522 DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",2)~ GOTO LE#TashiaGiftLoveTalkC
     IF ~~ THEN REPLY @523 DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",2)~ GOTO LE#TashiaGiftLoveTalkD
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalkA
     SAY @524
     = @525
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalkB
     SAY @526
     = @527
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalkC
     SAY @528
     IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalkD
     SAY @529
     IF ~~ THEN DO ~ActionOverride("Tashia",LeaveAreaLUA("AR0713","",[561.425],6)) ActionOverride(Player1,LeaveAreaLUA("AR0713","",[597.404],6))~ EXIT
  END

  IF ~Global("LE#TashiaGiftLoveTalk","GLOBAL",5) PartyHasItem("LE#wwclk")~ THEN BEGIN LE#TashiaGiftLoveTalk2
     SAY @530
     IF ~~ THEN REPLY @531 GOTO LE#TashiaGiftLoveTalk2A
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalk2A
     SAY @532
     IF ~~ THEN REPLY @533 GOTO LE#TashiaGiftLoveTalkEnd1
  END

  IF ~~ THEN BEGIN LE#TashiaGiftLoveTalkEnd1
     SAY @376
     = @534
     IF ~~ THEN DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",6) ActionOverride(Player1,GiveItem("LE#wwclk","Tashia")) EquipItem("LE#wwclk")~ EXIT
  END

  IF ~Global("LE#TashiaGiftLoveTalk","GLOBAL",5) !PartyHasItem("LE#wwclk")~ THEN BEGIN LE#TashiaGiftLoveTalk3
     SAY @535
     IF ~~ THEN EXTERN LE#SHOP LE#End
  END
  
  
  IF ~~ THEN BEGIN LE#ClkUpEnd
     SAY @536
     = @537
     IF ~~ THEN EXIT
  END

END

APPEND PLAYER1

  IF ~Global("LE#TashiaGiftLoveTalk","GLOBAL",3)~ THEN BEGIN LE#TashiaGiftLoveTalk2
     	SAY @538
     	IF ~~ THEN DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",4) ClearAllActions() StartCutSceneMode() StartCutScene("LE#Gicut")~ EXIT
  END


  IF ~~ THEN BEGIN LE#TashiaPalTalkJoke
  		SAY @539
  		= @540
  		= @541
  		IF ~~ THEN EXTERN BTASHIA LE#TashiaPalTalkC2
  END

END

// Shopkeeper dialogues

BEGIN ~LE#AIMIL~

IF ~Global("LE#TashiaGiftLoveTalk","GLOBAL",4)~ THEN BEGIN LE#Intro
   SAY @542
   = @543
   = @544
   = @545
   IF ~PartyGoldGT(9999) CheckStatGT(Player1,14,CHR)~ THEN REPLY @546 DO ~TakePartyGold(10000)~ GOTO LE#DealDone
   IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY @546 GOTO LE#Reconsider
   IF ~PartyGoldGT(11999)~ THEN REPLY @547 DO ~TakePartyGold(12000)~ GOTO LE#DealDone
   IF ~~ THEN REPLY @548 GOTO LE#DealNotDone
END

IF ~~ THEN BEGIN LE#Reconsider
   SAY @549
   IF ~PartyGoldGT(11999)~ THEN REPLY @550 DO ~TakePartyGold(12000)~ GOTO LE#DealDone
   IF ~~ THEN REPLY @551 GOTO LE#DealNotDone
END

IF ~~ THEN BEGIN LE#DealDone
   SAY @552
   = @553
   IF ~~ THEN DO ~SetGlobal("LE#BoughtCloak","GLOBAL",1) SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",5) GiveItemCreate("LE#wwclk",Player1,1,1,0) StartCutSceneMode() StartCutScene("LE#gics2")~ EXIT
END

IF ~~ THEN BEGIN LE#DealNotDone
   SAY @554
   IF ~~ THEN DO ~SetGlobal("LE#TashiaGiftLoveTalk","GLOBAL",5) StartCutSceneMode() StartCutScene("LE#gics2")~ EXIT
END


IF ~GlobalGT("LE#TashiaGiftLoveTalk","GLOBAL",4) Global("LE#BoughtCloak","GLOBAL",0)~ THEN BEGIN LE#ReCloak
   SAY @555
   IF ~~ THEN REPLY @556 EXIT
   IF ~PartyGoldGT(11999)~ THEN REPLY @557 DO ~TakePartyGold(12000)~ GOTO LE#DealDone2
   IF ~PartyGoldGT(9999) CheckStatGT(Player1,14,CHR)~ THEN REPLY @558 DO ~TakePartyGold(10000)~ GOTO LE#DealDone2
   IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY @558 GOTO LE#Reconsider2
END

IF ~~ THEN BEGIN LE#Reconsider2
   SAY @559
   IF ~PartyGoldGT(11999)~ THEN REPLY @550 DO ~TakePartyGold(12000)~ GOTO LE#DealDone2
   IF ~~ THEN REPLY @551 GOTO LE#DealNotDone2
END

IF ~~ THEN BEGIN LE#DealDone2
   SAY @560
   IF ~~ THEN DO ~SetGlobal("LE#BoughtCloak","GLOBAL",1) GiveItemCreate("LE#wwclk",Player1,1,1,0)~ EXTERN BTASHIA LE#TashiaGiftLoveTalk2A
END

IF ~~ THEN BEGIN LE#DealNotDone2
   SAY @561
   IF ~~ EXIT
END

IF ~GlobalGT("LE#TashiaGiftLoveTalk","GLOBAL",4) Global("LE#CloakUpgradeQuest","GLOBAL",0) Global("LE#UpgradedCloak","GLOBAL",0) Global("LE#BoughtCloak","GLOBAL",1)~ THEN BEGIN LE#UpCloak
   SAY @562
   IF ~~ THEN REPLY @563 GOTO LE#UpCloakEnd
   IF ~~ THEN REPLY @564 GOTO LE#UpCloak2
END

IF ~~ THEN BEGIN LE#UpCloakEnd
   SAY @565
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#UpCloak2
   SAY @566
   = @567
   IF ~PartyGoldGT(29999) PartyHasItem("LE#wwclk")~ THEN REPLY @568 GOTO LE#UpCloakPay
   IF ~~ THEN REPLY @569 GOTO LE#UpCloakNotPay
   IF ~~ THEN REPLY @570 GOTO LE#Proposal
END

IF ~~ THEN BEGIN LE#UpCloakPay
   SAY @571
   IF ~~ THEN DO ~SetGlobal("LE#UpgradedCloak","GLOBAL",1) TakePartyGold(30000) TakePartyItem("LE#wwclk") DestroyItem("LE#wwclk") FadeToColor([10.0],0) Wait(3) FadeFromColor([10.0],0) GiveItemCreate("LE#twclk","Tashia",1,1,0)~ EXTERN BTASHIA LE#ClkUpEnd
END

IF ~~ THEN BEGIN LE#UpCloakNotPay
   SAY @572
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#Proposal
   SAY @573
   = @574
   = @575
   IF ~~ THEN REPLY @576 GOTO LE#PropNoItems
   IF ~PartyGoldGT(7499) PartyHasItem("LE#wwclk") PartyHasItem("WAND06") PartyHasItem("Misc42") PartyHasItem("Amul14")~ THEN REPLY @577 GOTO LE#PropHasItems
END

IF ~~ THEN BEGIN LE#PropNoItems
   SAY @578
   IF ~~ THEN DO ~SetGlobal("LE#CloakUpgradeQuest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#PropHasItems
   SAY @579
   IF ~~ THEN DO ~TakePartyGold(7500) TakePartyItem("WAND06") TakePartyItem("Misc42") TakePartyItem("Amul14") DestroyItem("WAND06") DestroyItem("Misc42") DestroyItem("Amul14") TakePartyItem("LE#wwclk") DestroyItem("LE#wwclk") SetGlobal("LE#UpgradedCloak","GLOBAL",1) FadeToColor([10.0],0) Wait(3) FadeFromColor([10.0],0) GiveItemCreate("LE#twclk","Tashia",1,1,0)~ EXIT
END

IF ~GlobalGT("LE#TashiaGiftLoveTalk","GLOBAL",4) Global("LE#CloakUpgradeQuest","GLOBAL",1) Global("LE#UpgradedCloak","GLOBAL",0) Global("LE#BoughtCloak","GLOBAL",1)~ THEN BEGIN LE#ReUpCloak
   SAY @580
   IF ~~ THEN REPLY @581 GOTO LE#UpCloakEnd
   IF ~PartyGoldGT(29999) PartyHasItem("LE#wwclk")~ THEN REPLY @582 GOTO LE#UpCloakPay
   IF ~PartyGoldGT(7499) PartyHasItem("LE#wwclk") PartyHasItem("WAND06") PartyHasItem("Misc42") PartyHasItem("Amul14")~ THEN REPLY @583 GOTO LE#PropHasItems
END

IF ~GlobalGT("LE#TashiaGiftLoveTalk","GLOBAL",4) Global("LE#CloakUpgradeQuest","GLOBAL",1) Global("LE#UpgradedCloak","GLOBAL",1) Global("LE#BoughtCloak","GLOBAL",1)~ THEN BEGIN LE#Final
   SAY @584
   IF ~~ THEN EXIT
END



BEGIN ~LE#SHOP~

IF ~~ THEN BEGIN LE#End
   SAY @585
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
  IF ~Global("LE#TashiaVampire","GLOBAL",2)~ THEN REPLY @586 EXTERN C6BODHI LE#VampireA
  IF ~Global("LE#TashiaVampire","GLOBAL",2)~ THEN REPLY @587 EXTERN C6BODHI LE#VampireA
  IF ~Global("LE#TashiaVampire","GLOBAL",2)~ THEN REPLY @588 EXTERN C6BODHI LE#VampireA
  IF ~Global("LE#TashiaVampire","GLOBAL",2)~ THEN REPLY @589 EXTERN C6BODHI LE#VampireB
END

APPEND C6BODHI

IF ~~ THEN BEGIN LE#VampireB
   SAY @590
   IF ~~ THEN GOTO LE#VampireA
END

IF ~~ THEN BEGIN LE#VampireA
   SAY @591
   IF ~~ THEN UNSOLVED_JOURNAL @1 EXTERN LE#VTash LE#Response
END

IF ~~ THEN BEGIN LE#VampireC
   SAY @592
   IF ~~ THEN GOTO 28
END

END

BEGIN ~LE#VTASH~

IF ~~ THEN BEGIN LE#Response
   SAY @593
   IF ~~ THEN EXTERN C6BODHI LE#VampireC
END


APPEND BODHIAMB

IF ~~ THEN BEGIN LE#TashiaVampKidnap
SAY @594
IF ~~ THEN EXTERN TASHIAJ LE#TashiaVampKidnapResponse
END

IF ~~ THEN BEGIN LE#TashiaVampKidnap2
SAY @595
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("LE#BodhA")~ UNSOLVED_JOURNAL @2 EXIT
END

END

APPEND TASHIAJ

IF ~~ THEN BEGIN LE#TashiaVampKidnapResponse
SAY @596
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
  SAY @597
  = @598
  IF ~~ THEN REPLY @599 DO ~SetGlobal("LE#TashiaVampire","GLOBAL",4)~ GOTO LE#TashiaAfterVampirismA
  IF ~~ THEN REPLY @600 DO ~SetGlobal("LE#TashiaVampire","GLOBAL",4)~ GOTO LE#TashiaAfterVampirismB
  IF ~~ THEN REPLY @601 DO ~SetGlobal("LE#TashiaVampire","GLOBAL",4)~ GOTO LE#TashiaAfterVampirismC
END

IF ~~ THEN BEGIN LE#TashiaAfterVampirismA
   SAY @602
   IF ~~ THEN DO ~EraseJournalEntry(@2) EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(@1) EraseJournalEntry(15710) EraseJournalEntry(6589) JoinParty()~ SOLVED_JOURNAL @0 EXIT
END

IF ~~ THEN BEGIN LE#TashiaAfterVampirismB
   SAY @603
   IF ~~ THEN DO ~EraseJournalEntry(@2) EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(@1) EraseJournalEntry(15710) EraseJournalEntry(6589) JoinParty()~ SOLVED_JOURNAL @0 EXIT
END

IF ~~ THEN BEGIN LE#TashiaAfterVampirismC
   SAY @604
   IF ~~ THEN DO ~EraseJournalEntry(@2) EraseJournalEntry(32084) EraseJournalEntry(32085) EraseJournalEntry(16351) EraseJournalEntry(@1) EraseJournalEntry(15710) EraseJournalEntry(6589) JoinParty()~ SOLVED_JOURNAL @0 EXIT
END

END

EXTEND_BOTTOM C6ELHAN2 70
IF ~PartyHasItem("LE#tbody")~ THEN REPLY @605 GOTO 76
END

EXTEND_BOTTOM DOGHMA 0 3 7 9
IF ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("le#tbody")~ THEN REPLY @606 GOTO 10
END

ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("le#tbody")~ 1 2 3

APPEND OGHMONK1

IF WEIGHT #-1 ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("le#tbody")~ THEN BEGIN OghmaMonk#1.1
SAY @607
IF ~~ THEN REPLY @608 GOTO 5
IF ~~ THEN REPLY @606 GOTO 6
END

END

EXTEND_BOTTOM SUDEMIN 2
IF ~PartyHasItem("le#tbody")~ THEN REPLY @609 GOTO 3
END

EXTEND_BOTTOM WARSAGE 0
IF ~!Dead("c6bodhi")
Global("LE#TashiaVampire","GLOBAL",1)~ THEN REPLY @610 GOTO 6
IF ~PartyHasItem("G#JNABDY")~ THEN REPLY @611 GOTO 5
END



// Banters

CHAIN
IF WEIGHT #0 ~ CombatCounter(0) !See([ENEMY]) Global("LE#TashiaKorganBanter","GLOBAL",1) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN BKORGAN LE#TashiaKorganBanter
@612 DO ~SetGlobal("LE#TashiaKorganBanter","GLOBAL",2)~
== BTASHIA @613
== BKORGAN @614
== BTASHIA @615
== BKORGAN @616
= @617
== BTASHIA @618
== BKORGAN @619
== BTASHIA @620
== BKORGAN @621
= @622
= @623
== BTASHIA @624
== BKORGAN @625
== BTASHIA @626
== BKORGAN @627
== BTASHIA @628
== BKORGAN @629
== BTASHIA @630
= @631
= @632
= @633 DO ~RestParty()~
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) Global("LE#TashiaKorganBanter","GLOBAL",3) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaKorganBanterMorningAfter
@634 DO ~SetGlobal("LE#TashiaKorganBanter","GLOBAL",4)~
= @635
== BKORGAN @636
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaKorganBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Korgan",CD_STATE_NOTVALID)~
THEN BKORGAN LE#TashiaKorganBanter2
@637 DO ~SetGlobal("LE#TashiaKorganBanter2","GLOBAL",1)~
== BTASHIA @638
== BKORGAN @639
== BTASHIA @640
== BKORGAN @641
== BTASHIA @642
== BKORGAN @643
== BTASHIA @644
== BKORGAN @645
== BTASHIA @646
== BKORGAN @647
== BTASHIA @648
== BKORGAN @649
== BTASHIA @650
== BKORGAN @651
== BTASHIA @652
== BKORGAN @653
== BTASHIA @654
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) TimeOfDay(NIGHT) AreaType(OUTDOOR) InParty("Tashia") Global("LE#TashiaHaerBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
THEN BHAERDA LE#TashiaHaerBanter
@655 DO ~SetGlobal("LE#TashiaHaerBanter","GLOBAL",1)~
== BTASHIA @656
== BHAERDA @657
== BTASHIA @658
== BHAERDA @659
== BTASHIA @660
== BHAERDA @661
== BTASHIA @662
== BHAERDA @663
== BTASHIA @664
= @665
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaViconiaBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BVICONI LE#TashiaViconiaBanter
@666 DO ~SetGlobal("LE#TashiaViconiaBanter","GLOBAL",1)~
== BTASHIA @667
== BVICONI @668
== BTASHIA @669
== BVICONI @670
== BTASHIA @671
== BVICONI @672
== BTASHIA @673
== BVICONI @674
== BTASHIA @675
== BVICONI @676
== BTASHIA @677
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) !AreaType(CITY) InParty("Tashia") Global("LE#TashiaAerieBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN BAERIE LE#TashiaAerieBanter
@678
== BTASHIA @679
== BAERIE @680
== BTASHIA @681
== BAERIE @682
== BTASHIA @683
== BAERIE @684
== BTASHIA @685
== BAERIE @686
== BTASHIA @687
== BAERIE @688
== BTASHIA @689
== BAERIE @690
== BTASHIA @691
== BAERIE @692
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("HaerDalis") Global("LE#TashiaHaerBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("HaerDalis",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaHaerBanter2
@693 DO ~SetGlobal("LE#TashiaHaerBanter2","GLOBAL",1)~
== BHAERDA @694
== BTASHIA @695
== BHAERDA @696
== BTASHIA @697
== BHAERDA @698
== BTASHIA @699
== BHAERDA @700
== BTASHIA @701
== BHAERDA @702
== BTASHIA @703
== BHAERDA @704
= @705
== BTASHIA @706
== BHAERDA @707
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaAerieBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Aerie",CD_STATE_NOTVALID)~
THEN BAERIE LE#TashiaAerieBanter2
@708 DO ~SetGlobal("LE#TashiaAerieBanter2","GLOBAL",1)~
== BTASHIA @709
== BAERIE @710
== BTASHIA @711
== BAERIE @712
== BTASHIA @713
== BAERIE @714
== BTASHIA @715
== BAERIE @716
== BTASHIA @717
== BAERIE @718
== BTASHIA @719
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Mazzy") Global("LE#TashiaMazzyBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Mazzy",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaMazzyBanter
@720 DO ~SetGlobal("LE#TashiaMazzyBanter","GLOBAL",1)~
== BMAZZY @721
== BTASHIA @722
== BMAZZY @723
== BTASHIA @724
== BMAZZY @725
== BTASHIA @726
== BMAZZY @727
== BTASHIA @728
== BMAZZY @729
== BTASHIA @730
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaAnomenBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN BANOMEN LE#TashiaAnomenBanter
@731 DO ~SetGlobal("LE#TashiaAnomenBanter","GLOBAL",1)~
== BTASHIA @732
== BANOMEN @733
== BTASHIA @734
== BANOMEN @735
== BTASHIA @736
== BANOMEN @737
== BTASHIA @738
== BANOMEN @739
== BTASHIA @740
== BANOMEN @741
== BTASHIA @742
== BANOMEN @743
== BTASHIA @744
== BANOMEN @745
== BTASHIA @746
== BANOMEN @747
== BTASHIA @748
== BANOMEN @749
== BTASHIA @750
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("Anomen") Global("LE#TashiaAnomenBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID)!StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaAnomenBanter
@751 DO ~SetGlobal("LE#TashiaAnomenBanter2","GLOBAL",1)~
== BANOMEN @752
== BTASHIA @753 
== BANOMEN @754
== BTASHIA @755
== BANOMEN @756
== BTASHIA @757 
== BANOMEN @758
== BTASHIA @759 
== BANOMEN @760
== BTASHIA @761 
== BANOMEN @762
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaEdwinBanter","GLOBAL",0)!StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~
THEN BEDWIN LE#TashiaEdwinBanter
@763 DO ~SetGlobal("LE#TashiaEdwinBanter","GLOBAL",1)~
== BTASHIA @764
== BEDWIN @765
== BTASHIA @766
== BEDWIN @767
== BTASHIA @768
== BEDWIN @769
== BTASHIA @770
== BEDWIN @771
== BTASHIA @772
== BEDWIN @773
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) AreaType(FOREST) InParty("Jaheira") Global("LE#TashiaJaheiraBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Jaheira",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaJaheiraBanter
@774 DO ~SetGlobal("LE#TashiaJaheiraBanter","GLOBAL",1)~
== BJAHEIR @775
== BTASHIA @776
== BJAHEIR @777
== BTASHIA @778
== BJAHEIR @779
== BTASHIA @780
== BJAHEIR @781
== BTASHIA @782
== BJAHEIR @783
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Nalia") Global("NaliaIsaeaPlotDone","GLOBAL",1) Global("LE#TashiaNaliaBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Nalia",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaNaliaBanter
@784 DO ~SetGlobal("LE#TashiaNaliaBanter","GLOBAL",1)~
== BNALIA @785
== BTASHIA @786
== BNALIA @787
== BTASHIA @788
== BNALIA @789
== BTASHIA @790
== BNALIA @791
== BTASHIA @792
== BNALIA @793
== BTASHIA @794
== BNALIA @795
== BTASHIA @796
== BNALIA @797
== BTASHIA @798
== BNALIA @799
== BTASHIA @800
== BNALIA @801
== BTASHIA @802
== BNALIA @803
= @804
= @805
== BTASHIA @806
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) Global("LE#TashiaImoenBanter","GLOBAL",1) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Imoen2",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaImoenBanter
@807
== IMOEN2J @808
== BTASHIA @809
== IMOEN2J @810
== BTASHIA @811
== IMOEN2J @812
== BTASHIA @813
== IMOEN2J @814
== BTASHIA @815
== IMOEN2J @816
== BTASHIA @817 DO ~SetGlobal("LE#TashiaImoenBanter","GLOBAL",2) RealSetGlobalTimer("LE#TashiaImoenTalkTimer","GLOBAL",400)~
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Imoen2") Global("LE#TashiaImoenBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Imoen2",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaImoenBanter2
@818 DO ~SetGlobal("LE#TashiaImoenBanter2","GLOBAL",1)~
== IMOEN2J @819
== BTASHIA @820
== IMOEN2J @821
== BTASHIA @822
== IMOEN2J @823
== BTASHIA @824
== IMOEN2J @825
== BTASHIA @826
== IMOEN2J @827
== BTASHIA @828
== IMOEN2J @829
== BTASHIA @830
== IMOEN2J @831
== BTASHIA @832
== IMOEN2J @833
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Yoshimo") Global("LE#TashiaYoshimoBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaYoshimoBanter
@834
== BYOSHIM @835 DO ~SetGlobal("LE#TashiaYoshimoBanter","GLOBAL",1)~
== BTASHIA @836
== BYOSHIM @837
== BTASHIA @838
== BYOSHIM @839
== BTASHIA @840
== BYOSHIM @841
== BTASHIA @842
== BYOSHIM @843
== BTASHIA @844
== BYOSHIM @845
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Yoshimo") Global("LE#TashiaYoshimoBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaYoshimoBanter2
@846 DO ~SetGlobal("LE#TashiaYoshimoBanter2","GLOBAL",1)~
== BYOSHIM @847
== BTASHIA @848
== BYOSHIM @849
== BTASHIA @850
== BYOSHIM @851
== BTASHIA @852
== BYOSHIM @853
== BTASHIA @854
== BYOSHIM @855
== BTASHIA @856
== BYOSHIM @857
== BTASHIA @858
== BYOSHIM @859
== BTASHIA @860
== BYOSHIM @861
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Minsc") Global("LE#TashiaMinscBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Misc",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaMinscBanter
@862 DO ~SetGlobal("LE#TashiaMinscBanter","GLOBAL",1)~
== BMINSC @863
== BTASHIA @864
== BMINSC @865
== BTASHIA @866
== BMINSC @867
== BTASHIA @868
== BMINSC @869
== BTASHIA @870
== BMINSC @871
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Tashia") Global("LE#TashiaJanBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Jan",CD_STATE_NOTVALID)~
THEN BJAN LE#TashiaJanBanter
@872
== BTASHIA @873 DO ~SetGlobal("LE#TashiaJanBanter","GLOBAL",1)~
== BJAN @874
== BTASHIA @875
== BJAN @876
== BTASHIA @877
== BJAN @878
== BTASHIA @879
== BJAN @880
== BTASHIA @881
== BJAN @882
== BTASHIA @883
== BJAN @884
== BTASHIA @885
== BJAN @886
== BTASHIA @887
== BJAN @888
== BTASHIA @889
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Viconia") Global("LE#TashiaViconiaBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaViconiaBanter2
@890 DO ~SetGlobal("LE#TashiaViconiaBanter2","GLOBAL",1)~
== BVICONI @891
== BTASHIA @892
== BVICONI @893
== BTASHIA @894
== BVICONI @895
== BTASHIA @896
== BVICONI @897
== BTASHIA @898
== BVICONI @899
== BTASHIA @900
== BVICONI @901
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Yoshimo") Global("LE#TashiaYoshimoBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Yoshimo",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaYoshimoBanter2
@846 DO ~SetGlobal("LE#TashiaYoshimoBanter2","GLOBAL",1)~
== BYOSHIM @847
== BTASHIA @848
== BYOSHIM @849
== BTASHIA @850
== BYOSHIM @851
== BTASHIA @852
== BYOSHIM @853
== BTASHIA @854
== BYOSHIM @855
== BTASHIA @856
== BYOSHIM @857
== BTASHIA @858
== BYOSHIM @859
== BTASHIA @860
== BYOSHIM @861
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Imoen2") Global("LE#TashiaImoenBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Imoen2",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaImoenBanter2
@818 DO ~SetGlobal("LE#TashiaImoenBanter2","GLOBAL",1)~
== IMOEN2J @819
== BTASHIA @820
== IMOEN2J @821
== BTASHIA @822
== IMOEN2J @823
== BTASHIA @824
== IMOEN2J @825
== BTASHIA @826
== IMOEN2J @827
== BTASHIA @828
== IMOEN2J @829
== BTASHIA @830
== IMOEN2J @831
== BTASHIA @832
== IMOEN2J @833
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Cernd") Global("LE#TashiaCerndBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID)!StateCheck("Cernd",CD_STATE_NOTVALID) ~
THEN BTASHIA LE#TashiaCerndBanter2
@902 DO ~SetGlobal("LE#TashiaCerndBanter2","GLOBAL",1)~
== BCERND @903
== BTASHIA @904
== BCERND @905
== BTASHIA @906
== BCERND @907
== BTASHIA @908
== BCERND @909
== BTASHIA @910
== BCERND @911
== BTASHIA @912
== BCERND @913
== BTASHIA @914
== BCERND @915
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Jan") Global("LE#TashiaJanBanter2","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Jan",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaJanBanter2
@916
== BJAN @917 DO ~SetGlobal("LE#TashiaJanBanter2","GLOBAL",1)~
== BTASHIA @918
== BJAN @919
== BTASHIA @920
== BJAN @921
== BTASHIA @922
== BJAN @923
== BTASHIA @924
== BJAN @925
== BTASHIA @926
== BJAN @927
== BTASHIA @928
== BJAN @929
== BTASHIA @930
== BJAN @931
== BTASHIA @932
== BJAN @933
EXIT

CHAIN IF ~CombatCounter(0) !See([ENEMY]) InParty("Keldorn") Global("LE#TashiaKeldornBanter","GLOBAL",0) !StateCheck("Tashia",CD_STATE_NOTVALID) !StateCheck("Keldorn",CD_STATE_NOTVALID)~
THEN BTASHIA LE#TashiaKeldornBanter
@934 DO ~SetGlobal("LE#TashiaKeldornBanter","GLOBAL",1)~
== BKELDOR @935
== BTASHIA @936
== BKELDOR @937
== BTASHIA @938
== BKELDOR @939
== BTASHIA @940
== BKELDOR @941
== BTASHIA @942
== BKELDOR @943
== BTASHIA @944
== BKELDOR @945
EXIT