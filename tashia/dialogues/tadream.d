BEGIN tadream

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0 =
  @1 =
  @2 =
  @3 =
  @4 =
  @5
  IF ~~ THEN EXIT
END

IF ~!NumTimesTalkedTo(0)
    !PartyHasItem("scrl63")
    Global("TADreamResurrected","GLOBAL",0)~ THEN BEGIN 1
  SAY @0
  IF ~~ THEN EXIT
END

IF ~!NumTimesTalkedTo(0)
    PartyHasItem("scrl63")
    Global("TADreamResurrected","GLOBAL",0)~ THEN BEGIN 2
  SAY @0
  IF ~~ THEN REPLY @6 DO ~TakePartyItem("scrl63")
    SetGlobal("TADreamResurrected","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @7 EXIT
END

