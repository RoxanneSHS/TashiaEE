// creator  : C:\GAMES\BGII-S~1\WEIDU.EXE (version 19)
// argument : TASHIAP.DLG
// game     : .
// source   : .\override\TASHIAP.DLG
// dialog   : .\dialog.tlk
// dialogF  : (none)

BEGIN ~TASHIAP~

IF ~Global("KickedOut","LOCALS",0)
    !Global("TADreamResurrected","GLOBAL",3)
    HappinessGT(Myself,-290)~ THEN BEGIN 0 // from:
  SAY @0 /* #75210 */
  IF ~~ THEN REPLY @1 /* #75211 */ GOTO 6
  IF ~~ THEN REPLY @2 /* #75212 */ GOTO 7
END

IF ~HappinessGT(Myself,-290)
    !Global("TADreamResurrected","GLOBAL",3)~ THEN BEGIN 1 // from:
  SAY @3 /* #75213 */
  IF ~~ THEN REPLY @4 /* #75214 */ GOTO 2
  IF ~~ THEN REPLY @5 /* #75215 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6 /* #75216 */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
    JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @7 /* #75217 */
  IF ~~ THEN EXIT
END

IF ~HappinessLT(Myself,-289)~ THEN BEGIN 4 // from:
  SAY @8 /* #75218 */
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",0)
 HappinessLT(Myself,-289)~ THEN BEGIN 5 // from:
  SAY @9 /* #75219 */
  IF ~~ THEN DO ~LeaveParty()
    SetGlobal("KickedOut","LOCALS",1)
    MoveGlobal("AR2010","Tashia",[702.542])~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0
  SAY @10 /* #9749 */
  IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY @11 /* #75220 */
  IF ~!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516") 
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @12 /* #75221 */ DO ~SetGlobal("KickedOut","LOCALS",1)
    MoveGlobal("AR2010","Tashia",[702.542])~ EXIT
  IF ~!AreaCheck("AR0301")
 !AreaCheck("AR0302")
 !AreaCheck("AR0303")
 !AreaCheck("AR0304")
 !AreaCheck("AR0305")
 !AreaCheck("AR0306")
 !AreaCheck("AR0307")
 !AreaCheck("AR0509")
 !AreaCheck("AR0510")
 !AreaCheck("AR0511")
 !AreaCheck("AR1102")
 !AreaCheck("AR1107")
 !AreaCheck("AR0801")
 !AreaCheck("AR0803")
 !AreaCheck("AR1300")
 !AreaCheck("AR1301") 
 !AreaCheck("AR1302")
 !AreaCheck("AR1303")
 !AreaCheck("AR0604")
 !AreaCheck("AR0605")
 !AreaCheck("AR0606")
 !InWatchersKeep()~ THEN REPLY @13 /* #75222 */ DO ~SetGlobal("KickedOut","LOCALS",1) ~ EXIT
END

IF ~Global("TADreamResurrected","GLOBAL",3)~ THEN BEGIN 8 // from:
  SAY @14  /* #75223 */
  IF ~~ THEN DO ~SetGlobal("TADreamResurrected","GLOBAL",4)~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @15 /* #75224 */
  IF ~~ THEN REPLY @16 /* #75225 */ GOTO 13
  IF ~~ THEN REPLY @17 /* #75226 */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @18 /* #75227 */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @19 /* #75228 */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @20 /* #75229 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)
SetLeavePartyDialogFile()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY @21 /* #75230 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @22
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @23 /* #75296 */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @24 /* #75297 */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @25 /* #75234 */
  IF ~~ THEN REPLY @26 GOTO 10
  IF ~~ THEN REPLY @27 /* #75235 */ DO ~SetGlobal("TashiaRomanceActive","GLOBAL",2)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @10 /* #75235 */ DO ~SetGlobal("TashiaRomanceActive","GLOBAL",2)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @28 /* #75235 */ DO ~SetGlobal("TashiaRomanceActive","GLOBAL",2)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @29 /* #75235 */ DO ~SetGlobal("TashiaRomanceActive","GLOBAL",2)
JoinParty()~ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @30
  IF ~~ THEN REPLY @31 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @32
    = @33
    = @34
  IF ~Gender(Player1,MALE)~ THEN REPLY @35 GOTO 20
  IF ~!Gender(Player1,MALE)~ THEN REPLY @35 GOTO 21
END

IF ~~ THEN BEGIN 20
  SAY @36
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21
  SAY @37
  IF ~~ THEN EXIT
END
