BEGIN tafamil

IF ~Global("SawTAFamil","GLOBAL",1)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("SawTAFamil","GLOBAL",2)~ EXTERN tashiaj tashiaj235
END

APPEND tashiaj
  IF ~~ THEN BEGIN tashiaj235
    SAY @1
    IF ~~ THEN REPLY @2 EXTERN tashiaj tashiaj236
    IF ~~ THEN REPLY @3 EXTERN tashiaj tashiaj236
  END
END

APPEND tashiaj
  IF ~~ THEN BEGIN tashiaj236
    SAY @4 = @5
    IF ~~ THEN EXIT
  END
END
