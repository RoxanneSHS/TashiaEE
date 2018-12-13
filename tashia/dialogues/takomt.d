// created  : Wed Mar 06 00:50:01 2002
// argument : tajarmis
// source   : override\tajarmis.DLG
// game     : .
// using    : ./Dialog.TLK
// tajarmis : 5 states, 5 trans, 1 state-trigs, 0 trans-trigs, 2 actions

BEGIN takomt

IF ~Global("TashiaPlot","GLOBAL",6)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",7)~ REPLY @1 GOTO 1
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",7)~ REPLY @2 GOTO 8
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",7)~ REPLY @3 GOTO 5
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",7)~ REPLY @4 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @5
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",9)
                   ActionOverride("takomt",EscapeArea())
                   ActionOverride("tatump",EscapeArea())
                   ActionOverride("tagirl",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @6
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",8)
                   TakePartyGold(200)
                   ActionOverride("takomt",EscapeArea())
                   ActionOverride("tatump",EscapeArea())
                   ActionOverride("tagirl",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @7
    IF ~~ THEN REPLY @1 GOTO 1
    IF ~~ THEN REPLY @8 GOTO 5
END

APPEND takomt
IF ~~ THEN BEGIN 1
  SAY @9
  IF ~~ THEN EXTERN tashiaj c2
END
END

APPEND takomt
IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN REPLY @11 GOTO 6
  IF ~PartyGoldGT(199)~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 6
END
END

APPEND tashiaj
IF ~~ THEN BEGIN c2 // from:
  SAY @14 /* #74553 */
  IF ~InParty("Aerie")
        !Dead("Aerie")
        See("Aerie")~ THEN EXTERN aeriej c3
  IF ~OR(3)
        !InParty("Aerie")
        Dead("Aerie")
        !See("Aerie")~ THEN REPLY @15 /* #74554 */ EXTERN tashiaj c4
  IF ~OR(3)
        !InParty("Aerie")
        Dead("Aerie")
        !See("Aerie")~ THEN REPLY @16 /* #74555 */ EXTERN takomt 5
END
END


APPEND aeriej
  IF ~~ THEN BEGIN c3
    SAY @17
    IF ~~ THEN REPLY @15 EXTERN tashiaj c4
    IF ~~ THEN REPLY @16 EXTERN takomt 5
  END
END

APPEND tashiaj
  IF ~~ THEN BEGIN c4
    SAY @18
    IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)
                   ActionOverride("tashia",LeaveParty())
                   ActionOverride("tashia",EscapeArea())
                   ActionOverride("takomt",EscapeArea())
                   ActionOverride("tatump",EscapeArea())
                   SetGlobal("tagirlThanks","GLOBAL",1)
                   ActionOverride("tagirl",EscapeArea())~ EXIT
  END
END

