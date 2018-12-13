// created  : Fri Mar 08 02:10:31 2002
// argument : tajarmis
// source   : override/tajarmis.dlg
// game     : .
// using    : ./dialog.tlk
// tajarmis : 5 states, 5 trans, 1 state-trigs, 0 trans-trigs, 2 actions

BEGIN tajarmis

IF ~Global("TashiaPlot","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0 /* #74534 */
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",2)~ /* #0 */EXTERN tashiaj tajarmis18
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @1 /* #74538 */
  IF ~~ THEN DO ~CreateCreatureObjectOffScreen("TASOLD01",Myself,0,0,0)
CreateCreatureObjectOffScreen("TASOLD02",Myself,0,0,0)
Enemy()~ /* #1 */EXIT
END

APPEND tashiaj
IF ~~ THEN BEGIN tajarmis18 // from:
  SAY @2 /* #74498 */
  IF ~~ THEN EXTERN tajarmis 1
END
END

APPEND tajarmis
IF ~~ THEN BEGIN 1 // from:
  SAY @3 /* #74535 */
  IF ~~ THEN EXTERN tashiaj tajarmis19
END
END

APPEND tashiaj
IF ~~ THEN BEGIN tajarmis19 // from:
  SAY @4 /* #74499 */
  IF ~~ THEN EXTERN tajarmis 2
END
END

APPEND tajarmis
IF ~~ THEN BEGIN 2 // from:
  SAY @5 /* #74536 */
  IF ~~ THEN EXTERN tashiaj tajarmis20
END
END

APPEND tashiaj
IF ~~ THEN BEGIN tajarmis20 // from:
  SAY @6 /* #74500 */
  IF ~~ THEN EXTERN tajarmis 3
END
END

APPEND tajarmis
IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* #74537 */
  IF ~~ THEN GOTO 4
END
END
