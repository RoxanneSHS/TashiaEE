//TASHI25J.D

BEGIN tashi25j

IF ~~ THEN BEGIN tash2
  SAY @0
  IF ~~ THEN EXTERN HGWRA01 24
END

IF ~~ THEN BEGIN rom1
  SAY @1
    = @2
    = @3
    = @4
  IF ~~ THEN REPLY @5 GOTO 0
  IF ~~ THEN REPLY @6 GOTO 1
  IF ~~ THEN REPLY @7 GOTO 2
END

IF ~~ THEN BEGIN 0
  SAY @8
  IF ~~ THEN EXTERN FINSOL01 TashiaAdd1
END

IF ~~ THEN BEGIN 1
  SAY @9
    = @10
  IF ~~ THEN EXTERN FINSOL01 TashiaAdd1
END

IF ~~ THEN BEGIN 2
  SAY @11
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN rom2
  SAY @12
    = @13
    = @14
  IF ~~ THEN EXTERN FINSOL01 33
END

IF ~~ THEN BEGIN noromance2
  SAY @15
    = @16
    = @17
    = @18
  IF ~~ THEN EXTERN FINSOL01 33
END

IF ~~ THEN BEGIN noromance1
  SAY @19
    = @20
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN drow1
  SAY @21
    = @22
    = @23
  IF ~~ THEN EXTERN SENGUA01 drow2
END

IF ~~ THEN BEGIN voloR2
  SAY @24
  IF ~~ THEN EXTERN SARVOLO 9
END

IF ~True()~ THEN BEGIN 31
  SAY @25
  IF ~!HPLT(Myself,50)~ THEN REPLY @26 GOTO 32a
  IF ~HPLT(Myself,50)
      !HPLT(Myself,30)~ THEN REPLY @26 GOTO 32b
  IF ~HPLT(Myself,30)
      !HPLT(Myself,10)~ THEN REPLY @26 GOTO 32c
  IF ~HPLT(Myself,10)~ THEN REPLY @26 GOTO 32d
  IF ~~ THEN REPLY @27 GOTO odd
  IF ~~ THEN REPLY @28 EXIT
END

IF ~~ THEN BEGIN odd
  SAY @29
  IF ~~ THEN DO ~StartCutScene("tfix")~ EXIT
END

IF ~~ THEN BEGIN 32a
  SAY @30
  IF ~~ THEN REPLY @31 EXIT
END

IF ~~ THEN BEGIN 32b
  SAY @32
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32c
  SAY @33
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32d
  SAY @34
  IF ~~ THEN EXIT
END

APPEND SENGUA01
  IF ~~ THEN BEGIN drow2
    SAY @35
    IF ~~ THEN DO ~Enemy()
SetGlobal("DrowRevealed","AR6100",1)
EraseJournalEntry(67464)~ EXIT
  END
END

EXTEND_BOTTOM HGWRA01 24
  IF ~Global("LovedOne","GLOBAL",16)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cuttas06")~ EXIT
END

EXTEND_BOTTOM HGWRA01 18
  IF ~IsValidForPartyDialogue("Tashia")
Global("TashiaRomanceActive","GLOBAL",2)~ THEN EXTERN HGWRA01 tash1
END

APPEND HGWRA01
  IF ~~ THEN BEGIN tash1
    SAY @36
    IF ~~ THEN DO ~SetGlobal("LovedOne","GLOBAL",16)~ EXTERN TASHI25J tash2
  END
END

EXTEND_TOP FATESP 6
  IF ~!InParty("Tashia")
!Dead("Tashia")
Global("TashiaSummoned","GLOBAL",0)~ THEN REPLY @37 DO ~SetGlobal("TashiaSummoned","GLOBAL",1)~ EXTERN FATESP 8
END

EXTEND_BOTTOM FINSOL01 27
  IF ~IsValidForPartyDialog("Tashia")
!Global("TashiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~tashi25j~ noromance1
END

EXTEND_BOTTOM FINSOL01 31
  IF ~IsValidForPartyDialog("Tashia")
Global("TashiaRomanceActive","GLOBAL",2)~ THEN EXTERN tashi25j noromance2
END

EXTEND_BOTTOM FINSOL01 32
  IF ~IsValidForPartyDialog("Tashia")
Global("TashiaRomanceActive","GLOBAL",2)~ THEN EXTERN tashi25j rom2
END

ADD_TRANS_TRIGGER SENGUA01 4 ~!IsValidForPartyDialog("Tashia")~

EXTEND_BOTTOM SENGUA01 4
  IF ~IsValidForPartyDialog("Tashia")~ THEN EXTERN tashi25j drow1
END

APPEND FINSOL01
  IF ~~ THEN BEGIN TashiaAdd1
    SAY @38  /* #67885 */
COPY_TRANS FINSOL01 28
  END
END

REPLACE FINSOL01
  IF ~~ THEN BEGIN 28
    SAY @39
    IF ~IsValidForPartyDialogue("Tashia")
Global("TashiaRomanceActive","GLOBAL",2)~ THEN EXTERN tashi25j rom1
    IF ~!Global("TashiaRomanceActive","GLOBAL",2)~ THEN EXTERN FINSOL01 TashiaAdd1
  END
END

EXTEND_TOP SARVOLO 9 #1
  IF ~InParty("Tashia")
Global("TashiaRomanceActive","GLOBAL",2)~ THEN REPLY @40 EXTERN SARVOLO voloR1
END

EXTEND_TOP SARVOLO 9 #1
  IF ~InParty("Tashia")
!Global("TashiaRomanceActive","GLOBAL",2)~ THEN REPLY @40 EXTERN SARVOLO voloN1
END

APPEND SARVOLO
  IF ~~ THEN BEGIN voloR1
    SAY @41
    IF ~IsValidForPartyDialog("Tashia")~ THEN EXTERN tashi25j voloR2
    IF ~!IsValidForPartyDialog("Tashia")~ THEN EXTERN SARVOLO 9
  END
END

APPEND SARVOLO
  IF ~~ THEN BEGIN voloN1
    SAY @42
    IF ~IsValidForPartyDialog("Tashia")~ THEN EXTERN tashi25j voloR2
    IF ~!IsValidForPartyDialog("Tashia")~ THEN EXTERN SARVOLO 9
  END
END
