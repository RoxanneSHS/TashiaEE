BEGIN taarilis

IF ~Global("TashiaArilistan","GLOBAL",2)
    Dead("taevil")~ THEN BEGIN 23
  SAY @0
  IF ~~ THEN DO ~SetGlobal("TashiaArilistan","GLOBAL",3)
                 ChangeAIScript("kensai",CLASS)
                 Enemy()
                 Attack(Player1)~ EXIT
END

IF ~Global("TashiaArilistan","GLOBAL",0)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("TashiaArilistan","GLOBAL",1)~ EXTERN tashiaj c1
END

APPEND tashiaj
  IF ~~ THEN BEGIN c1
    SAY @2
    IF ~~ THEN EXTERN taarilis c2
  END
END

APPEND taarilis
IF ~~ THEN BEGIN c2
  SAY @3
  IF ~~ THEN EXTERN tashiaj c3
END
END

APPEND tashiaj
  IF ~~ THEN BEGIN c3
    SAY @4
    IF ~~ THEN EXTERN taarilis c4
  END
END

APPEND taarilis
IF ~~ THEN BEGIN c4
  SAY @5 = @6
  IF ~~ THEN EXTERN tashiaj c5
END
END

APPEND tashiaj
  IF ~~ THEN BEGIN c5
    SAY @7
    IF ~~ THEN EXTERN taarilis c6
  END
END

APPEND taarilis
IF ~~ THEN BEGIN c6
  SAY @8
  IF ~~ THEN EXTERN tashiaj c7
END
END

APPEND tashiaj
  IF ~~ THEN BEGIN c7
    SAY @9
    IF ~~ THEN EXTERN taarilis c8
  END
END

APPEND taarilis
IF ~~ THEN BEGIN c8
  SAY @10 =
      @11
  IF ~~ THEN EXTERN tashiaj c9
END
END

APPEND tashiaj
  IF ~~ THEN BEGIN c9
    SAY @12
    IF ~~ THEN REPLY @13 EXTERN taarilis c10
  END
END

APPEND taarilis
IF ~~ THEN BEGIN c10
  SAY @14
  IF ~~ THEN EXTERN tashiaj c11
END
END

APPEND tashiaj
  IF ~~ THEN BEGIN c11
    SAY @15
    IF ~~ THEN EXTERN taarilis c12
  END
END

APPEND taarilis
IF ~~ THEN BEGIN c12
  SAY @16
  IF ~InParty("Mazzy")~ THEN EXTERN BMAZZY 13a
  IF ~!InParty("Mazzy")
      InParty("Valygar")~ THEN EXTERN VALYGARJ 13b
  IF ~!InParty("Mazzy")
      !InParty("Valygar")
      InParty("Jaheira")~ THEN EXTERN BJAHEIR 13c
  IF ~!InParty("Mazzy")
      !InParty("Valygar")
      !InParty("Jaheira")~ THEN GOTO 13d
END
END

APPEND BMAZZY
  IF ~~ THEN BEGIN 13a
    SAY @17
    IF ~InParty("Valygar")~ THEN EXTERN VALYGARJ 13b
    IF ~!InParty("Valygar")
        InParty("Jaheira")~ THEN EXTERN BJAHEIR 13c
    IF ~!InParty("Valygar")
        !InParty("Jaheira")~ THEN EXTERN taarilis 13d
  END
END

APPEND VALYGARJ
  IF ~~ THEN BEGIN 13b
    SAY @18
    IF ~InParty("Jaheira")~ THEN EXTERN BJAHEIR 13c
    IF ~!InParty("Jaheira")~ THEN EXTERN taarilis 13d
  END
END

APPEND BJAHEIR
  IF ~~ THEN BEGIN 13c
    SAY @19
    IF ~~ THEN EXTERN taarilis 13d
  END
END

APPEND taarilis
IF ~~ THEN BEGIN 13d
  SAY @20
  IF ~~ THEN EXTERN tashiaj c14
END
END

APPEND tashiaj
  IF ~~ THEN BEGIN c14
    SAY @21
    IF ~~ THEN REPLY @22 EXTERN tashiaj c15
    IF ~~ THEN REPLY @23 EXTERN tashiaj c16
  END
END

APPEND tashiaj
  IF ~~ THEN BEGIN c15
    SAY @24
    IF ~~ THEN EXTERN taarilis c17
  END
END

APPEND tashiaj
  IF ~~ THEN BEGIN c16
    SAY @25
    IF ~~ THEN EXTERN tashiaj 16b
  END
END

APPEND tashiaj
  IF ~~ THEN BEGIN 16b
    SAY @26
    IF ~~ THEN EXTERN tashiaj 16c
  END
END

APPEND tashiaj
  IF ~~ THEN BEGIN 16c
    SAY @27
    IF ~~ THEN REPLY @28 EXTERN taarilis c17
  END
END

APPEND taarilis
IF ~~ THEN BEGIN c17
  SAY @29
  IF ~~ THEN DO ~SetGlobal("TashiaArilistan","GLOBAL",1)
                 SetGlobal("TashiaDream","GLOBAL",1)
                 ActionOverride("tashia",GivePartyAllEquipment())
                 ActionOverride("tashia",LeaveParty())
                 ActionOverride("tashia",SetLeavePartyDialogFile())
                 ActionOverride("tashia",MoveToObjectFollow("taarilis"))
                 ActionOverride("tashia",EscapeArea())
                 EscapeArea()~ EXIT
END
END

APPEND taarilis
IF ~Global("TashiaArilistan","GLOBAL",1)~ THEN BEGIN c18
  SAY @30 = @31
  IF ~~ THEN DO ~SetGlobal("TashiaArilistan","GLOBAL",2)~ EXTERN taevil c19
END
END

APPEND taevil
  IF ~Global("TashiaArilistan","GLOBAL",2)~ THEN BEGIN c19
    SAY @32
    IF ~~ THEN EXTERN taarilis c20
  END
END

APPEND taarilis
IF ~~ THEN BEGIN c20
  SAY @33
  IF ~~ THEN REPLY @34 GOTO c21
END
END

APPEND taarilis
IF ~~ THEN BEGIN c21
  SAY @35 = @36
  IF ~~ THEN DO ~CreateVisualEffectObject("SPPLANAR",Myself)
JumpToPoint([1309.665])~ EXTERN taevil c22
END
END

APPEND taevil
  IF ~Global("TashiaArilistan","GLOBAL",2)~ THEN BEGIN c22
    SAY @37
    IF ~~ THEN DO ~ChangeAIScript("mage16c",CLASS)
Enemy()
PlaySound("VAMPP07")~ EXIT
  END
END
