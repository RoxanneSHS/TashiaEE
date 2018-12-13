BEGIN tashiaj

IF ~Global("TrollComment","LOCALS",1)~ THEN BEGIN troll
  SAY @0
    = @1
  IF ~~ THEN REPLY @2 DO ~SetGlobal("TrollComment","LOCALS",2)~ GOTO trolla
  IF ~~ THEN REPLY @3 DO ~SetGlobal("TrollComment","LOCALS",2)~ GOTO trollc
END

IF ~~ THEN BEGIN trolla
  SAY @4
  IF ~~ THEN GOTO trollb
END

IF ~~ THEN BEGIN trollb
  SAY @5
  IF ~~ THEN GOTO trollc1
END

IF ~~ THEN BEGIN trollc
  SAY @5
  IF ~~ THEN GOTO trollc2
END

IF ~~ THEN BEGIN trollc1
  SAY @6
  IF ~~ THEN REPLY @7 GOTO trollca
  IF ~~ THEN REPLY @8 GOTO trollcb
  IF ~~ THEN REPLY @9 GOTO trollcc
END

IF ~~ THEN BEGIN trollc2
  SAY @10
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN trollca
  SAY @11
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN trollcb
  SAY @12
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN trollcc
  SAY @13
  IF ~~ THEN EXIT
END

IF ~Global("PastPhaere","LOCALS",1)
Global("PhaereInnuendo","GLOBAL",3)~ THEN BEGIN ph1
  SAY @14
  IF ~~ THEN DO ~SetGlobal("PastPhaere","LOCALS",2)~ EXIT
END

IF ~Global("PastPhaere","LOCALS",1)
Global("PhaereInnuendo","GLOBAL",2)~ THEN BEGIN ph2
  SAY @15
  IF ~~ THEN DO ~SetGlobal("PastPhaere","LOCALS",2)~ EXIT
END

IF ~Dead("TAJarmis")
Global("TashiaPlot","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @16 /* #74480 */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @17 /* #74481 */
  IF ~~ THEN REPLY @18 /* #74511 */ GOTO 2
  IF ~~ THEN REPLY @19 /* #74512 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @20 /* #74482 */
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",4)~ /* #0 */EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @21 /* #74483 */
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",4)
SetGlobal("TashiaRomanceActive","GLOBAL",3)
LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("AR2010","Tashia",[702.542])~ /* #1 */EXIT
END

IF ~AreaCheck("AR2100")
    Global("GnomeTalk","LOCALS",1)~ THEN BEGIN 4 // from:
  SAY @22 /* #74484 */
  IF ~~ THEN REPLY @23 /* #21655 */ DO ~SetGlobal("GnomeTalk","LOCALS",2)~ /* #2 */GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @24 /* #74485 */
  IF ~~ THEN REPLY @25 /* #74513 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @26 /* #74486 */
  IF ~~ THEN REPLY @27 /* #74514 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @28 /* #74487 */
  IF ~~ THEN REPLY @29 /* #74515 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @30 /* #74488 */
  IF ~~ THEN REPLY @31 /* #74516 */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @32 /* #74489 */
  IF ~~ THEN REPLY @33 /* #74517 */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @34 /* #74490 */
  IF ~~ THEN REPLY @35 /* #74518 */ GOTO 11
  IF ~~ THEN REPLY @36 /* #74519 */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @37 /* #74491 */
  IF ~InParty("Jan")
IsValidForPartyDialog("Jan")~ THEN REPLY @38 /* #74520 */ GOTO 14
  IF ~OR(2)
!InParty("Jan")
!IsValidForPartyDialog("Jan")~ THEN REPLY @38 /* #74521 */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @39 /* #74492 */
  IF ~InParty("Jan")
IsValidForPartyDialog("Jan")~ THEN REPLY @40 /* #74522 */ GOTO 14
  IF ~OR(2)
!InParty("Jan")
!IsValidForPartyDialog("Jan")~ THEN REPLY @40 /* #74523 */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 11.1 12.1
  SAY @41 /* #74493 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 12.0
  SAY @42 /* #74494 */
  IF ~~ THEN EXTERN JANJ 185j
END

IF ~Global("TashiaRevelation","GLOBAL",1)~ THEN BEGIN 21 // from:
  SAY @43 =
  @44 =
  @45 =
  @46 =
  @47 = @48 =
  @49 =
  @50 /* #74501 */
  IF ~~ THEN DO ~SetGlobal("TashiaRevelation","GLOBAL",5)
  StartCutSceneMode()~ /* #3 */EXIT
END

IF ~Global("TashiaRevelation","GLOBAL",2)~ THEN BEGIN 22 // from:
  SAY @51 =
  @52 =
  @53 =
  @54 =
  @55 =
  @56 =
  @57 =
  @58 /* #74502 */
  IF ~~ THEN DO ~SetGlobal("TashiaRevelation","GLOBAL",5)
  StartCutSceneMode()~ /* #4 */EXIT
END

IF ~Global("TashiaRevelation","GLOBAL",3)~ THEN BEGIN 23 // from:
  SAY @59 =
  @60 =
  @61 =
  @62 =
  @63 =
  @64 =
  @65 =
  @66 =
  @67 =
  @68 /* #74503 */
  IF ~~ THEN DO ~SetGlobal("TashiaRevelation","GLOBAL",5)
  StartCutSceneMode()~ /* #5 */EXIT
END

IF ~Global("TashiaRevelation","GLOBAL",4)~ THEN BEGIN 24 // from:
  SAY @69 =
  @70 =
  @71 =
  @72 =
  @73 =
  @74 =
  @75 =
  @76 =
  @77 =
  @78 =
  @79 =
  @80 =
  @81 /* #74504 */
  IF ~~ THEN DO ~SetGlobal("TashiaRevelation","GLOBAL",5)
  StartCutSceneMode()~ /* #6 */EXIT
END

IF ~Global("TashiaRevelation","GLOBAL",5)~ THEN BEGIN 25 // from:
  SAY @82 =
  @83 =
  @84 /* #74505 */
  IF ~~ THEN REPLY @85 /* #74524 */ DO ~SetGlobal("TashiaRevelation","GLOBAL",6)~ /* #7 */GOTO 29
  IF ~~ THEN REPLY @86 /* #74525 */ DO ~SetGlobal("TashiaRevelation","GLOBAL",6)~ /* #8 */GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY @87 /* #74506 */
  IF ~~ THEN REPLY @88 /* #74526 */ GOTO 29
  IF ~~ THEN REPLY @89 /* #74526 */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 29.0
  SAY @90 /* #74507 */
  IF ~~ THEN REPLY @91 /* #74527 */ GOTO 30
  IF ~~ THEN REPLY @92 /* #74528 */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 30.0
  SAY @93 /* #74508 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.0 26.0
  SAY @94 /* #74509 */
  IF ~~ THEN REPLY @95 /* #74529 */ GOTO 27
END

IF ~~ THEN BEGIN 30 // from: 27.0
  SAY @96 /* #74510 */
  IF ~~ THEN REPLY @97 /* #74530 */ GOTO 28
END

IF ~True()~ THEN BEGIN 31
  SAY @98
  IF ~!HPLT(Myself,50)~ THEN REPLY @99 GOTO 32a
  IF ~HPLT(Myself,50)
      !HPLT(Myself,30)~ THEN REPLY @99 GOTO 32b
  IF ~HPLT(Myself,30)
      !HPLT(Myself,10)~ THEN REPLY @99 GOTO 32c
  IF ~HPLT(Myself,10)~ THEN REPLY @99 GOTO 32d
  IF ~~ THEN REPLY @100 GOTO odd
  IF ~!HPLT(Myself,50)
      Global("Riddle","LOCALS",0)~ THEN REPLY @101 DO ~SetGlobal("Riddle","LOCALS",1)~ GOTO 33
  IF ~!HPLT(Myself,50)
      !Global("Riddle","LOCALS",0)
      GlobalLT("Riddle","LOCALS",42)~ THEN REPLY @102 DO ~IncrementGlobal("Riddle","LOCALS",1)~ GOTO riddle
  IF ~!Global("LoveTalk","LOCALS",1)~ THEN REPLY @103 EXIT
  IF ~Global("LoveTalk","LOCALS",1)~ THEN REPLY @104 DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",10)~ EXIT
END

IF ~~ THEN BEGIN odd
  SAY @105
  IF ~~ THEN DO ~StartCutScene("tfix")~ EXIT
END

IF ~~ THEN BEGIN 32a
  SAY @106
  IF ~~ THEN REPLY @107 EXIT
END

IF ~~ THEN BEGIN 32b
  SAY @108
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32c
  SAY @109
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32d
  SAY @110
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33
  SAY @111
  IF ~~ THEN REPLY @112 EXIT
  IF ~~ THEN REPLY @113 GOTO riddle
END

IF ~~ THEN BEGIN riddle
  SAY @114
  IF ~Global("Riddle","LOCALS",1)~ THEN DO ~SetGlobal("Riddle","LOCALS",2)~ GOTO r1
  IF ~Global("Riddle","LOCALS",2)~ THEN GOTO r2
  IF ~Global("Riddle","LOCALS",3)~ THEN GOTO r3
  IF ~Global("Riddle","LOCALS",4)~ THEN GOTO r4
  IF ~Global("Riddle","LOCALS",5)~ THEN GOTO r5
  IF ~Global("Riddle","LOCALS",6)~ THEN GOTO r6
  IF ~Global("Riddle","LOCALS",7)~ THEN GOTO r7
  IF ~Global("Riddle","LOCALS",8)~ THEN GOTO r8
  IF ~Global("Riddle","LOCALS",9)~ THEN GOTO r9
  IF ~Global("Riddle","LOCALS",10)~ THEN GOTO r10
  IF ~Global("Riddle","LOCALS",11)~ THEN GOTO r11
  IF ~Global("Riddle","LOCALS",12)~ THEN GOTO r12
  IF ~Global("Riddle","LOCALS",13)~ THEN GOTO r13
  IF ~Global("Riddle","LOCALS",14)~ THEN GOTO r14
  IF ~Global("Riddle","LOCALS",15)~ THEN GOTO r15
  IF ~Global("Riddle","LOCALS",16)~ THEN GOTO r16
  IF ~Global("Riddle","LOCALS",17)~ THEN GOTO r17
  IF ~Global("Riddle","LOCALS",18)~ THEN GOTO r18
  IF ~Global("Riddle","LOCALS",19)~ THEN GOTO r19
  IF ~Global("Riddle","LOCALS",20)~ THEN GOTO r20
  IF ~Global("Riddle","LOCALS",21)~ THEN GOTO r21
  IF ~Global("Riddle","LOCALS",22)~ THEN GOTO r22
  IF ~Global("Riddle","LOCALS",23)~ THEN GOTO r23
  IF ~Global("Riddle","LOCALS",24)~ THEN GOTO r24
  IF ~Global("Riddle","LOCALS",25)~ THEN GOTO r25
  IF ~Global("Riddle","LOCALS",26)~ THEN GOTO r26
  IF ~Global("Riddle","LOCALS",27)~ THEN GOTO r27
  IF ~Global("Riddle","LOCALS",28)~ THEN GOTO r28
  IF ~Global("Riddle","LOCALS",29)~ THEN GOTO r29
  IF ~Global("Riddle","LOCALS",30)~ THEN GOTO r30
  IF ~Global("Riddle","LOCALS",31)~ THEN GOTO r31
  IF ~Global("Riddle","LOCALS",32)~ THEN GOTO r32
  IF ~Global("Riddle","LOCALS",33)~ THEN GOTO r33
  IF ~Global("Riddle","LOCALS",34)~ THEN GOTO r34
  IF ~Global("Riddle","LOCALS",35)~ THEN GOTO r35
  IF ~Global("Riddle","LOCALS",36)~ THEN GOTO r36
  IF ~Global("Riddle","LOCALS",37)~ THEN GOTO r37
  IF ~Global("Riddle","LOCALS",38)~ THEN GOTO r38
  IF ~Global("Riddle","LOCALS",39)~ THEN GOTO r39
  IF ~Global("Riddle","LOCALS",40)~ THEN GOTO r40
  IF ~Global("Riddle","LOCALS",41)~ THEN GOTO rend
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r1
  SAY @115 = @116
  IF ~~ THEN REPLY @117 GOTO r1b
  IF ~~ THEN REPLY @118 GOTO r1b
  IF ~~ THEN REPLY @119 GOTO r1b
  IF ~~ THEN REPLY @120 GOTO r1b
  IF ~~ THEN REPLY @121 GOTO r1a
END

IF ~~ THEN BEGIN r1a
  SAY @122
  IF ~~ THEN DO ~SetGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r1b
  SAY @123
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r2
  SAY @125 = @126
  IF ~~ THEN REPLY @127 GOTO r2b
  IF ~~ THEN REPLY @128 GOTO r2a
  IF ~~ THEN REPLY @129 GOTO r2b
  IF ~~ THEN REPLY @130 GOTO r2b
  IF ~~ THEN REPLY @131 GOTO r2b
END

IF ~~ THEN BEGIN r2a
  SAY @132
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r2b
  SAY @133
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r3
  SAY @134
  IF ~~ THEN REPLY @135 GOTO r3b
  IF ~~ THEN REPLY @136 GOTO r3b
  IF ~~ THEN REPLY @137 GOTO r3c
  IF ~~ THEN REPLY @138 GOTO r3b
  IF ~~ THEN REPLY @139 GOTO r3a
END

IF ~~ THEN BEGIN r3a
  SAY @140
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r3b
  SAY @141
  IF ~~ THEN REPLY @142 EXIT
END

IF ~~ THEN BEGIN r3c
  SAY @143
  IF ~~ THEN REPLY @144 GOTO r3c1
END

IF ~~ THEN BEGIN r3c1
  SAY @145
  IF ~~ THEN REPLY @146 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r4
  SAY @147 = @148
  IF ~~ THEN REPLY @149 GOTO r4b
  IF ~~ THEN REPLY @129 GOTO r4c
  IF ~~ THEN REPLY @150 GOTO r4a
  IF ~~ THEN REPLY @151 GOTO r4b
  IF ~~ THEN REPLY @152 GOTO r4b
END

IF ~~ THEN BEGIN r4a
  SAY @153
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r4b
  SAY @154
  IF ~~ THEN REPLY @155 EXIT
END

IF ~~ THEN BEGIN r4c
  SAY @156
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r5
  SAY @157
  IF ~~ THEN REPLY @121 GOTO r5b
  IF ~~ THEN REPLY @149 GOTO r5c
  IF ~~ THEN REPLY @158 GOTO r5b
  IF ~~ THEN REPLY @159 GOTO r5b
  IF ~~ THEN REPLY @160 GOTO r5a
END

IF ~~ THEN BEGIN r5a
  SAY @161
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r5b
  SAY @162
  IF ~~ THEN REPLY @163 EXIT
END

IF ~~ THEN BEGIN r5c
  SAY @164
  IF ~~ THEN REPLY @163 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r6
  SAY @165
  IF ~~ THEN REPLY @166 GOTO r6a
  IF ~~ THEN REPLY @167 GOTO r6c
  IF ~~ THEN REPLY @168 GOTO r6e
  IF ~~ THEN REPLY @169 GOTO r6b
  IF ~~ THEN REPLY @170 GOTO r6d
END

IF ~~ THEN BEGIN r6a
  SAY @171
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r6b
  SAY @172
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN r6c
  SAY @173 = @174
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN r6d
  SAY @175 = @176
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN r6e
  SAY @177
  IF ~~ THEN EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r7
  SAY @178
  IF ~~ THEN REPLY @179 GOTO r7b
  IF ~~ THEN REPLY @180 GOTO r7a
  IF ~~ THEN REPLY @181 GOTO r7b
  IF ~~ THEN REPLY @137 GOTO r7b
  IF ~~ THEN REPLY @182 GOTO r7b
END

IF ~~ THEN BEGIN r7a
  SAY @183
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r7b
  SAY @184
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r8
  SAY @185
  IF ~~ THEN REPLY @186 GOTO r8b
  IF ~~ THEN REPLY @187 GOTO r8b
  IF ~~ THEN REPLY @188 GOTO r8b
  IF ~~ THEN REPLY @189 GOTO r8a
  IF ~~ THEN REPLY @190 GOTO r8b
END

IF ~~ THEN BEGIN r8a
  SAY @191
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r8b
  SAY @192
  IF ~~ THEN EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r9
  SAY @193
  IF ~~ THEN REPLY @121 GOTO r9b
  IF ~~ THEN REPLY @194 GOTO r9b
  IF ~~ THEN REPLY @195 GOTO r9a
  IF ~~ THEN REPLY @196 GOTO r9b
  IF ~~ THEN REPLY @197 GOTO r9b
END

IF ~~ THEN BEGIN r9a
  SAY @198
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r9b
  SAY @199
  IF ~~ THEN REPLY @200 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r10
  SAY @201
  IF ~~ THEN REPLY @202 GOTO r10b
  IF ~~ THEN REPLY @203 GOTO r10b
  IF ~~ THEN REPLY @204 GOTO r10b
  IF ~~ THEN REPLY @205 GOTO r10b
  IF ~~ THEN REPLY @206 GOTO r10a
END

IF ~~ THEN BEGIN r10a
  SAY @140
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r10b
  SAY @207
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r11
  SAY @208
  IF ~~ THEN REPLY @209 GOTO r11b
  IF ~~ THEN REPLY @210 GOTO r11a
  IF ~~ THEN REPLY @211 GOTO r11b
  IF ~~ THEN REPLY @212 GOTO r11b
  IF ~~ THEN REPLY @213 GOTO r11b
END

IF ~~ THEN BEGIN r11a
  SAY @214
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r11b
  SAY @215
  IF ~~ THEN REPLY @216 GOTO r11b1
  IF ~~ THEN REPLY @217 EXIT
END

IF ~~ THEN BEGIN r11b1
  SAY @218
  IF ~~ THEN EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r12
  SAY @219
  IF ~~ THEN REPLY @220 GOTO r12b
  IF ~~ THEN REPLY @221 GOTO r12b
  IF ~~ THEN REPLY @119 GOTO r12b
  IF ~~ THEN REPLY @117 GOTO r12b
  IF ~~ THEN REPLY @222 GOTO r12a
END

IF ~~ THEN BEGIN r12a
  SAY @223
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r12b
  SAY @224
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r13
  SAY @225
  IF ~~ THEN REPLY @226 GOTO r13a
  IF ~~ THEN REPLY @227 GOTO r13b
  IF ~~ THEN REPLY @228 GOTO r13b
  IF ~~ THEN REPLY @229 GOTO r13b
  IF ~~ THEN REPLY @230 GOTO r13b
END

IF ~~ THEN BEGIN r13a
  SAY @140
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r13b
  SAY @231
  IF ~~ THEN REPLY @200 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r14
  SAY @232
  IF ~~ THEN REPLY @233 GOTO r14c
  IF ~~ THEN REPLY @234 GOTO r14c
  IF ~~ THEN REPLY @235 GOTO r14a
  IF ~~ THEN REPLY @236 GOTO r14b
  IF ~~ THEN REPLY @237 GOTO r14b
END

IF ~~ THEN BEGIN r14a
  SAY @238
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r14b
  SAY @239
  IF ~~ THEN REPLY @240 EXIT
END

IF ~~ THEN BEGIN r14c
  SAY @241
  IF ~~ THEN REPLY @242 GOTO r14c1
END

IF ~~ THEN BEGIN r14c1
  SAY @243
  IF ~~ THEN EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r15
  SAY @244
  IF ~~ THEN REPLY @117 GOTO r15b
  IF ~~ THEN REPLY @237 GOTO r15b
  IF ~~ THEN REPLY @245 GOTO r15a
  IF ~~ THEN REPLY @246 GOTO r15b
  IF ~~ THEN REPLY @182 GOTO r15b
END

IF ~~ THEN BEGIN r15a
  SAY @247
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r15b
  SAY @248
  IF ~~ THEN REPLY @249 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r16
  SAY @250
  IF ~~ THEN REPLY @251 GOTO r16b
  IF ~~ THEN REPLY @252 GOTO r16b
  IF ~~ THEN REPLY @246 GOTO r16b
  IF ~~ THEN REPLY @149 GOTO r16b
  IF ~~ THEN REPLY @253 GOTO r16a
END

IF ~~ THEN BEGIN r16a
  SAY @254
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r16b
  SAY @255
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r17
  SAY @256
  IF ~~ THEN REPLY @227 GOTO r17b
  IF ~~ THEN REPLY @257 GOTO r17a
  IF ~~ THEN REPLY @258 GOTO r17b
  IF ~~ THEN REPLY @259 GOTO r17b
  IF ~~ THEN REPLY @260 GOTO r17b
END

IF ~~ THEN BEGIN r17a
  SAY @261
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r17b
  SAY @262
  IF ~~ THEN REPLY @263 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r18
  SAY @264
  IF ~~ THEN REPLY @265 GOTO r18b
  IF ~~ THEN REPLY @266 GOTO r18b
  IF ~~ THEN REPLY @267 GOTO r18b
  IF ~~ THEN REPLY @268 GOTO r18a
  IF ~~ THEN REPLY @269 GOTO r18b
END

IF ~~ THEN BEGIN r18a
  SAY @140
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r18b
  SAY @270
  IF ~~ THEN REPLY @271 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r19
  SAY @272
  IF ~~ THEN REPLY @273 GOTO r19a
  IF ~~ THEN REPLY @274 GOTO r19a
  IF ~~ THEN REPLY @275 GOTO r19c
  IF ~~ THEN REPLY @253 GOTO r19b
  IF ~~ THEN REPLY @276 GOTO r19b
END

IF ~~ THEN BEGIN r19a
  SAY @277
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r19b
  SAY @278
  IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN r19c
  SAY @279
  IF ~~ THEN REPLY @13 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r20
  SAY @280
  IF ~~ THEN REPLY @281 GOTO r20b
  IF ~~ THEN REPLY @282 GOTO r20b
  IF ~~ THEN REPLY @283 GOTO r20b
  IF ~~ THEN REPLY @121 GOTO r20b
  IF ~~ THEN REPLY @284 GOTO r20a
END

IF ~~ THEN BEGIN r20a
  SAY @285
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r20b
  SAY @286
  IF ~~ THEN REPLY @287 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r21
  SAY @288
  IF ~~ THEN REPLY @289 GOTO r21a
  IF ~~ THEN REPLY @290 GOTO r21b
  IF ~~ THEN REPLY @237 GOTO r21b
  IF ~~ THEN REPLY @291 GOTO r21b
  IF ~~ THEN REPLY @292 GOTO r21b
END

IF ~~ THEN BEGIN r21a
  SAY @140
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r21b
  SAY @293
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r22
  SAY @294
  IF ~~ THEN REPLY @295 GOTO r22b
  IF ~~ THEN REPLY @296 GOTO r22b
  IF ~~ THEN REPLY @179 GOTO r22b
  IF ~~ THEN REPLY @297 GOTO r22a
  IF ~~ THEN REPLY @298 GOTO r22b
END

IF ~~ THEN BEGIN r22a
  SAY @183
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r22b
  SAY @299
  IF ~~ THEN REPLY @300 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r23
  SAY @301
  IF ~~ THEN REPLY @253 GOTO r23b
  IF ~~ THEN REPLY @246 GOTO r23b
  IF ~~ THEN REPLY @302 GOTO r23b
  IF ~~ THEN REPLY @303 GOTO r23b
  IF ~~ THEN REPLY @304 GOTO r23a
END

IF ~~ THEN BEGIN r23a
  SAY @305
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r23b
  SAY @306
  IF ~~ THEN REPLY @307 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r24
  SAY @308
  IF ~~ THEN REPLY @266 GOTO r24b
  IF ~~ THEN REPLY @245 GOTO r24c
  IF ~~ THEN REPLY @246 GOTO r24a
  IF ~~ THEN REPLY @117 GOTO r24b
  IF ~~ THEN REPLY @309 GOTO r24b
END

IF ~~ THEN BEGIN r24a
  SAY @310
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r24b
  SAY @311
  IF ~~ THEN REPLY @312 EXIT
END

IF ~~ THEN BEGIN r24c
  SAY @313
  IF ~~ THEN REPLY @314 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r25
  SAY @315
  IF ~~ THEN REPLY @266 GOTO r25b
  IF ~~ THEN REPLY @316 GOTO r25b
  IF ~~ THEN REPLY @317 GOTO r25a
  IF ~~ THEN REPLY @121 GOTO r25b
  IF ~~ THEN REPLY @180 GOTO r25b
END

IF ~~ THEN BEGIN r25a
  SAY @318
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r25b
  SAY @319
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r26
  SAY @320
  IF ~~ THEN REPLY @321 GOTO r26b
  IF ~~ THEN REPLY @322 GOTO r26a
  IF ~~ THEN REPLY @323 GOTO r26c
  IF ~~ THEN REPLY @324 GOTO r26b
  IF ~~ THEN REPLY @121 GOTO r26b
END

IF ~~ THEN BEGIN r26a
  SAY @325
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r26b
  SAY @326
  IF ~~ THEN REPLY @327 EXIT
END

IF ~~ THEN BEGIN r26c
  SAY @328
  IF ~~ THEN EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r27
  SAY @329
  IF ~~ THEN REPLY @330 GOTO r27b
  IF ~~ THEN REPLY @203 GOTO r27b
  IF ~~ THEN REPLY @331 GOTO r27b
  IF ~~ THEN REPLY @227 GOTO r27b
  IF ~~ THEN REPLY @332 GOTO r27a
END

IF ~~ THEN BEGIN r27a
  SAY @333
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r27b
  SAY @334
  IF ~~ THEN REPLY @335 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r28
  SAY @336
  IF ~~ THEN REPLY @337 GOTO r28b
  IF ~~ THEN REPLY @338 GOTO r28b
  IF ~~ THEN REPLY @339 GOTO r28b
  IF ~~ THEN REPLY @253 GOTO r28a
  IF ~~ THEN REPLY @117 GOTO r28b
END

IF ~~ THEN BEGIN r28a
  SAY @140
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r28b
  SAY @340
  IF ~~ THEN REPLY @341 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r29
  SAY @342
  IF ~~ THEN REPLY @343 GOTO r29b
  IF ~~ THEN REPLY @344 GOTO r29b
  IF ~~ THEN REPLY @120 GOTO r29a
  IF ~~ THEN REPLY @345 GOTO r29b
  IF ~~ THEN REPLY @346 GOTO r29b
END

IF ~~ THEN BEGIN r29a
  SAY @347
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r29b
  SAY @348
  IF ~~ THEN REPLY @349 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r30
  SAY @350
  IF ~~ THEN REPLY @351 GOTO r30b
  IF ~~ THEN REPLY @296 GOTO r30a
  IF ~~ THEN REPLY @352 GOTO r30b
  IF ~~ THEN REPLY @353 GOTO r30b
  IF ~~ THEN REPLY @354 GOTO r30b
END

IF ~~ THEN BEGIN r30a
  SAY @355
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r30b
  SAY @356
  IF ~~ THEN REPLY @357 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r31
  SAY @358
  IF ~~ THEN REPLY @246 GOTO r31b
  IF ~~ THEN REPLY @359 GOTO r31a
  IF ~~ THEN REPLY @360 GOTO r31b
  IF ~~ THEN REPLY @361 GOTO r31b
  IF ~~ THEN REPLY @362 GOTO r31b
END

IF ~~ THEN BEGIN r31a
  SAY @238
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r31b
  SAY @363
  IF ~~ THEN REPLY @364 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r32
  SAY @365
  IF ~~ THEN REPLY @366 GOTO r32b
  IF ~~ THEN REPLY @367 GOTO r32b
  IF ~~ THEN REPLY @368 GOTO r32a
  IF ~~ THEN REPLY @369 GOTO r32b
  IF ~~ THEN REPLY @370 GOTO r32b
END

IF ~~ THEN BEGIN r32a
  SAY @140
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r32b
  SAY @371
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r33
  SAY @372 = @373
  IF ~~ THEN REPLY @374 GOTO r33a
  IF ~~ THEN REPLY @375 GOTO r33b
  IF ~~ THEN REPLY @266 GOTO r33b
  IF ~~ THEN REPLY @321 GOTO r33b
  IF ~~ THEN REPLY @376 GOTO r33b
END

IF ~~ THEN BEGIN r33a
  SAY @238
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r33b
  SAY @377
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r34
  SAY @378
  IF ~~ THEN REPLY @379 GOTO r34b
  IF ~~ THEN REPLY @380 GOTO r34b
  IF ~~ THEN REPLY @381 GOTO r34b
  IF ~~ THEN REPLY @382 GOTO r34a
  IF ~~ THEN REPLY @120 GOTO r34b
END

IF ~~ THEN BEGIN r34a
  SAY @183
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r34b
  SAY @383
  IF ~~ THEN REPLY @384 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r35
  SAY @385
  IF ~~ THEN REPLY @386 GOTO r35b
  IF ~~ THEN REPLY @387 GOTO r35a
  IF ~~ THEN REPLY @388 GOTO r35b
  IF ~~ THEN REPLY @389 GOTO r35b
  IF ~~ THEN REPLY @362 GOTO r35b
END

IF ~~ THEN BEGIN r35a
  SAY @140
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r35b
  SAY @390
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r36
  SAY @391
  IF ~~ THEN REPLY @392 GOTO r36b
  IF ~~ THEN REPLY @393 GOTO r36b
  IF ~~ THEN REPLY @394 GOTO r36b
  IF ~~ THEN REPLY @395 GOTO r36b
  IF ~~ THEN REPLY @226 GOTO r36a
END

IF ~~ THEN BEGIN r36a
  SAY @396
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r36b
  SAY @397
  IF ~~ THEN REPLY @124 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r37
  SAY @398
  IF ~~ THEN REPLY @399 GOTO r37c
  IF ~~ THEN REPLY @400 GOTO r37b
  IF ~~ THEN REPLY @401 GOTO r37b
  IF ~~ THEN REPLY @296 GOTO r37b
  IF ~~ THEN REPLY @402 GOTO r37a
END

IF ~~ THEN BEGIN r37a
  SAY @403
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r37b
  SAY @404
  IF ~~ THEN REPLY @405 EXIT
END

IF ~~ THEN BEGIN r37c
  SAY @406
  IF ~~ THEN EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r38
  SAY @407
  IF ~~ THEN REPLY @266 GOTO r38b
  IF ~~ THEN REPLY @354 GOTO r38b
  IF ~~ THEN REPLY @331 GOTO r38a
  IF ~~ THEN REPLY @292 GOTO r38b
  IF ~~ THEN REPLY @236 GOTO r38c
END

IF ~~ THEN BEGIN r38a
  SAY @238
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r38b
  SAY @408
  IF ~~ THEN REPLY @200 EXIT
END

IF ~~ THEN BEGIN r38c
  SAY @408
  IF ~~ THEN REPLY @409 GOTO r38c1
END

IF ~~ THEN BEGIN r38c1
  SAY @410
  IF ~~ THEN REPLY @411 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r39
  SAY @412
  IF ~~ THEN REPLY @413 GOTO r39b
  IF ~~ THEN REPLY @414 GOTO r39b
  IF ~~ THEN REPLY @415 GOTO r39b
  IF ~~ THEN REPLY @416 GOTO r39a
  IF ~~ THEN REPLY @417 GOTO r39b
END

IF ~~ THEN BEGIN r39a
  SAY @418
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r39b
  SAY @419
  IF ~~ THEN REPLY @312 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN r40
  SAY @420
  IF ~~ THEN REPLY @421 GOTO r40b
  IF ~~ THEN REPLY @422 GOTO r40a
  IF ~~ THEN REPLY @253 GOTO r40b
  IF ~~ THEN REPLY @206 GOTO r40b
  IF ~~ THEN REPLY @423 GOTO r40b
END

IF ~~ THEN BEGIN r40a
  SAY @238
  IF ~~ THEN DO ~IncrementGlobal("LE#TashiaSOARiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN r40b
  SAY @424
  IF ~~ THEN REPLY @425 EXIT
END

//---------------------------------------------------------------------

IF ~~ THEN BEGIN rend
   SAY @426
   IF ~Global("LE#TashiaSOARiddlesCorrect","GLOBAL",40)~ THEN REPLY @433 GOTO rend1
   IF ~GlobalGT("LE#TashiaSOARiddlesCorrect","GLOBAL",34) GlobalLT("LE#TashiaSOARiddlesCorrect","GLOBAL",40)~ THEN REPLY @433 GOTO rend2
   IF ~GlobalGT("LE#TashiaSOARiddlesCorrect","GLOBAL",27) GlobalLT("LE#TashiaSOARiddlesCorrect","GLOBAL",35)~ THEN REPLY @433 GOTO rend3
   IF ~GlobalGT("LE#TashiaSOARiddlesCorrect","GLOBAL",13) GlobalLT("LE#TashiaSOARiddlesCorrect","GLOBAL",28)~ THEN REPLY @433 GOTO rend4
   IF ~GlobalGT("LE#TashiaSOARiddlesCorrect","GLOBAL",6) GlobalLT("LE#TashiaSOARiddlesCorrect","GLOBAL",14)~ THEN REPLY @433 GOTO rend5
   IF ~GlobalGT("LE#TashiaSOARiddlesCorrect","GLOBAL",0) GlobalLT("LE#TashiaSOARiddlesCorrect","GLOBAL",7)~ THEN REPLY @433 GOTO rend6
   IF ~Global("LE#TashiaSOARiddlesCorrect","GLOBAL",0)~ THEN REPLY @433 GOTO rend7
END

IF ~~ THEN BEGIN rend1
   SAY @434
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rend2
   SAY @435
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rend3
   SAY @436
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rend4
   SAY @437
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rend5
   SAY @438
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rend6
   SAY @439
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN rend7
   SAY @440
   IF ~~ THEN EXIT
END



/*
IF ~~ THEN BEGIN rend
  SAY @426
  IF ~~ THEN EXIT
END*/

//----------------------------------------------------------------------------

APPEND JANJ
  IF ~~ THEN BEGIN 185j
     SAY @427
     IF ~~ THEN EXTERN tashiaj 15
  END
END

APPEND tashiaj
IF ~~ THEN BEGIN 15 // from:
  SAY @428 /* #74495 */
  IF ~~ THEN EXTERN JANJ 186j
END
END

APPEND JANJ
  IF ~~ THEN BEGIN 186j
     SAY @429
     IF ~~ THEN EXTERN tashiaj 16
  END
END

APPEND tashiaj
IF ~~ THEN BEGIN 16 // from:
  SAY @430 /* #74496 */
  IF ~~ THEN EXTERN JANJ 187j
END
END

APPEND JANJ
  IF ~~ THEN BEGIN 187j
     SAY @431
     IF ~~ THEN EXTERN tashiaj 17
  END
END

APPEND tashiaj
IF ~~ THEN BEGIN 17 // from:
  SAY @432 /* #74497 */
  IF ~~ THEN EXIT
END
END
