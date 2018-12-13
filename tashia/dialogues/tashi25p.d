BEGIN ~tashi25p~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY @2 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveToPointNoInterrupt([2212.1349])
Face(14)~ GOTO 1
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[2212.1349],14)
~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @4 DO ~SetGlobal("KickedOut","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN REPLY @7 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @8 EXIT
END
