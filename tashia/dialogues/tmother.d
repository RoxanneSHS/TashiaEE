BEGIN tmother

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN EXTERN tashi25j mother1
END

IF ~~ THEN BEGIN mother2
  SAY @1
    = @2
  IF ~~ THEN EXTERN tashi25j mother3
END

IF ~~ THEN BEGIN mother4
  SAY @3
  IF ~~ THEN EXTERN tashi25j mother5
END

IF ~~ THEN BEGIN mother10
  SAY @3
  IF ~~ THEN EXTERN tashi25j mother11
END

APPEND tashi25j
  IF ~~ THEN BEGIN mother1
    SAY @4
    IF ~~ THEN EXTERN tmother mother2
  END
END

APPEND tashi25j
  IF ~~ THEN BEGIN mother3
    SAY @5
      = @6
    IF ~~ THEN EXTERN tmother mother4
  END
END

APPEND tashi25j
  IF ~~ THEN BEGIN mother5
    SAY @7
    IF ~~ THEN REPLY @8 EXTERN tashi25j mother6
    IF ~~ THEN REPLY @9 EXTERN tashi25j mother6
    IF ~~ THEN REPLY @10 EXTERN tashi25j mother7
  END
END

APPEND tashi25j
  IF ~~ THEN BEGIN mother6
    SAY @11
    IF ~~ THEN EXTERN tashi25j mother8
  END
END

APPEND tashi25j
  IF ~~ THEN BEGIN mother7
    SAY @12
    IF ~~ THEN EXTERN tashi25j mother8
  END
END

APPEND tashi25j
  IF ~~ THEN BEGIN mother8
    SAY @13
    IF ~~ THEN EXTERN tmother mother10
  END
END

APPEND tashi25j
  IF ~~ THEN BEGIN mother11
    SAY @14
    IF ~~ THEN EXTERN HGWRA01 25
  END
END
