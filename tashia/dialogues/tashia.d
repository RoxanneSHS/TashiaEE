// created  : Fri Mar 08 02:10:30 2002
// argument : tashia
// source   : override/tashia.dlg
// game     : .
// using    : ./dialog.tlk
// tashia   : 23 states, 35 trans, 2 state-trigs, 6 trans-trigs, 7 actions

BEGIN tashia

IF ~Global("TashiaSummoned","GLOBAL",1)~ THEN BEGIN tob0 // from:
  SAY @0
  IF ~~ THEN REPLY @1 /* #65346 */ DO ~SetGlobal("TashiaSummoned","GLOBAL",2)~ GOTO tob1
END

IF ~~ THEN BEGIN tob1 // from: 0.1 0.0
  SAY @2
  IF ~~ THEN REPLY @3 /* #65350 */ GOTO tob3
  IF ~~ THEN REPLY @4 /* #65351 */ GOTO tob2
END

IF ~~ THEN BEGIN tob2
  SAY @5
  IF ~~ THEN REPLY @6 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @7 GOTO tob4
END

IF ~~ THEN BEGIN tob3 // from: 1.1 1.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO tob2
  IF ~~ THEN REPLY @10 /* #65359 */ GOTO tob5
END

IF ~~ THEN BEGIN tob4 // from: 6.1 3.2 2.1
  SAY @11
  IF ~~ THEN DO ~MoveToPointNoInterrupt([2212.1349])
Face(14)~ EXIT
END

IF ~~ THEN BEGIN tob5 // from: 3.0
  SAY @12 /* #65361 */
  IF ~~ THEN REPLY @13 GOTO tob6
END

IF ~~ THEN BEGIN tob6 // from: 5.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO tob7
  IF ~~ THEN REPLY @16 /* #65365 */ GOTO tob4
END

IF ~~ THEN BEGIN tob7
  SAY @17
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("TashiaSummoned","GLOBAL",2)~ THEN BEGIN tob8 // from:
  SAY @18
  IF ~~ THEN REPLY @19 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @20 /* #65368 */ GOTO tob9
END

IF ~~ THEN BEGIN tob9 // from: 7.1
  SAY @21 /* #65369 */
  IF ~~ THEN EXIT
END

IF ~Global("MetTashia","GLOBAL",0)
!Global("TashiaWontTalk","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @22 /* #74173 */
  IF ~~ THEN REPLY @23 /* #74196 */ DO ~SetGlobal("MetTashia","GLOBAL",1)~ /* #0 */GOTO 2
  IF ~~ THEN REPLY @24 /* #9749 */ DO ~SetGlobal("MetTashia","GLOBAL",1)~ /* #1 */EXIT
END

IF ~Global("MetTashia","GLOBAL",1)
!Global("TashiaWontTalk","GLOBAL",1)~ THEN BEGIN 1 // from:
  SAY @25 /* #74174 */
  IF ~Global("TashiaStory1","GLOBAL",0)~ THEN REPLY @23 /* #74197 */ GOTO 2
  IF ~Global("TashiaStory1","GLOBAL",1)~ THEN REPLY @26 /* #74198 */ GOTO 14
  IF ~~ THEN REPLY @27 /* #74199 */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY @28 /* #74175 */
  IF ~~ THEN REPLY @29 /* #74200 */ GOTO 3
  IF ~~ THEN REPLY @30 /* #74201 */ GOTO 10
  IF ~~ THEN REPLY @31 /* #74202 */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @32 /* #74176 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @33 /* #74177 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @34 /* #74178 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @35 /* #74179 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @36 /* #74180 */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @37 /* #74181 */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @38 /* #74182 */
  IF ~~ THEN REPLY @39 /* #74203 */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY @40 /* #74183 */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @41 /* #74184 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY @42 /* #74185 */
  IF ~~ THEN REPLY @43 /* #74204 */ DO ~SetGlobal("TashiaStory1","GLOBAL",1)~ /* #2 */GOTO 14
  IF ~~ THEN REPLY @44 /* #74205 */ DO ~SetGlobal("TashiaStory1","GLOBAL",1)~ /* #3 */GOTO 14
  IF ~~ THEN REPLY @45 /* #74206 */ DO ~SetGlobal("TashiaStory1","GLOBAL",1)~ /* #4 */GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 15.3
  SAY @46 /* #74186 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 12.0 12.1
  SAY @47 /* #74187 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @48 /* #74188 */
  IF ~ReputationGT(Player1,9)~ THEN REPLY @49 /* #74207 */ GOTO 19
  IF ~!ReputationGT(Player1,9)~ THEN REPLY @49 /* #74208 */ GOTO 18
  IF ~~ THEN REPLY @50 /* #74209 */ GOTO 16
  IF ~~ THEN REPLY @51 /* #74210 */ GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 15.2
  SAY @52 /* #74189 */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @53 /* #74190 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.1
  SAY @54 /* #74191 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0
  SAY @55 /* #74192 */
  IF ~~ THEN REPLY @56 GOTO 19a
  IF ~~ THEN REPLY @57 GOTO 19b
  IF ~~ THEN REPLY @58 GOTO 19c
END

IF ~~ THEN BEGIN 19a // from: 15.0
  SAY @59 /* #74192 */
  IF ~~ THEN DO ~SetGlobal("TashiaWontTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 19b // from: 15.0
  SAY @60
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19c // from: 15.0
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 19b
  IF ~~ THEN REPLY @63 GOTO 19d
END

IF ~~ THEN BEGIN 19d // from: 15.0
  SAY @64
  IF ~~ THEN REPLY @62 GOTO 19e1
  IF ~~ THEN REPLY @65 GOTO 19f
END

IF ~~ THEN BEGIN 19e1 // from: 15.0
  SAY @66
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19f // from: 15.0
  SAY @67
  IF ~~ THEN REPLY @68 GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @69 /* #74193 */
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @70 /* #74211 */ GOTO 21
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_7%)~ THEN REPLY @71 /* #58674 */ GOTO 21
  IF ~~ THEN REPLY @72 GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 21.0
  SAY @73 /* #74195 */
  IF ~~ THEN DO ~SetGlobal("TashiaJoined","GLOBAL",1)
JoinParty()~ /* #6 */EXIT
END

IF ~~ THEN BEGIN 22
  SAY @74
  IF ~~ THEN DO ~SetGlobal("TashiaJoined","GLOBAL",1)
JoinParty()~ /* #6 */EXIT
END
