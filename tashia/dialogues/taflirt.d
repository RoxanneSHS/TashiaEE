EXTEND_BOTTOM ~TASHIAJ~ 74
  IF ~IsGabber(Player1) Gender(Player1, MALE) Global("TashiaRomanceActive","GLOBAL",1)~ THEN REPLY @0 GOTO flirt1
  IF ~IsGabber(Player1) Gender(Player1, MALE) Global("TashiaRomanceActive","GLOBAL",2)~ THEN REPLY @0 GOTO flirt2
  IF ~IsGabber(Player1) Global("TashiaIsMad","LOCALS",1) Global("TashiaRomanceActive","GLOBAL",3)~ THEN REPLY @1 GOTO flirtapol
END

APPEND ~TASHIAJ~
IF ~~ THEN BEGIN flirtapol
  SAY @2
  IF ~~ THEN DO ~SetGlobal("TashiaIsMad","LOCALS",2) SetGlobal("TashiaRomanceActive","GLOBAL",1)~ EXIT
END

// ********************
// Non-romancing flirts
// ********************


IF ~~ THEN BEGIN flirt1
	SAY @3
  IF ~~ THEN REPLY @4 EXIT
  IF ~RandomNum(5,1)~ THEN REPLY @5 GOTO flirt1smile1
  IF ~RandomNum(5,2)~ THEN REPLY @5 GOTO flirt1smile2
  IF ~RandomNum(5,3)~ THEN REPLY @5 GOTO flirt1smile3
  IF ~RandomNum(5,4)~ THEN REPLY @5 GOTO flirt1smile4
  IF ~RandomNum(5,5)~ THEN REPLY @5 GOTO flirt1smile5
  IF ~RandomNum(5,1)~ THEN REPLY @6 GOTO flirt1wink1
  IF ~RandomNum(5,2)~ THEN REPLY @6 GOTO flirt1wink2
  IF ~RandomNum(5,3)~ THEN REPLY @6 GOTO flirt1wink3
  IF ~RandomNum(5,4)~ THEN REPLY @6 GOTO flirt1wink4
  IF ~RandomNum(5,5)~ THEN REPLY @6 GOTO flirt1wink5
  IF ~RandomNum(5,1)~ THEN REPLY @7 GOTO flirt1hand1
  IF ~RandomNum(5,2)~ THEN REPLY @7 GOTO flirt1hand2
  IF ~RandomNum(5,3)~ THEN REPLY @7 GOTO flirt1hand3
  IF ~RandomNum(5,4)~ THEN REPLY @7 GOTO flirt1hand4
  IF ~RandomNum(5,5)~ THEN REPLY @7 GOTO flirt1hand5
  IF ~RandomNum(5,1)~ THEN REPLY @8 GOTO flirt1cheek1
  IF ~RandomNum(5,2)~ THEN REPLY @8 GOTO flirt1cheek2
  IF ~RandomNum(5,3)~ THEN REPLY @8 GOTO flirt1cheek3
  IF ~RandomNum(5,4)~ THEN REPLY @8 GOTO flirt1cheek4
  IF ~RandomNum(5,5)~ THEN REPLY @8 GOTO flirt1cheek5
  IF ~RandomNum(5,1)~ THEN REPLY @9 GOTO flirt1hug1
  IF ~RandomNum(5,2)~ THEN REPLY @9 GOTO flirt1hug2
  IF ~RandomNum(5,3)~ THEN REPLY @9 GOTO flirt1hug3
  IF ~RandomNum(5,4)~ THEN REPLY @9 GOTO flirt1hug4
  IF ~RandomNum(5,5)~ THEN REPLY @9 GOTO flirt1hug5
  IF ~RandomNum(5,1)~ THEN REPLY @10 GOTO flirt1kiss1
  IF ~RandomNum(5,2)~ THEN REPLY @10 GOTO flirt1kiss2
  IF ~RandomNum(5,3)~ THEN REPLY @10 GOTO flirt1kiss3
  IF ~RandomNum(5,4)~ THEN REPLY @10 GOTO flirt1kiss4
  IF ~RandomNum(5,5)~ THEN REPLY @10 GOTO flirt1kiss5

END
// Smile flirts
IF ~~ THEN BEGIN flirt1smile1
	SAY @11 
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1smile2
	SAY @12 
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1smile3
	SAY @13 
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1smile4
	SAY @14 
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1smile5
	SAY @15 
	IF ~~ THEN EXIT
END

// Wink flirts
IF ~~ THEN BEGIN flirt1wink1
	SAY @16
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1wink2
	SAY @17
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1wink3
	SAY @18
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1wink4
	SAY @19
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1wink5
	SAY @20
	IF ~~ THEN EXIT
END

// Hold Hands flirts
IF ~~ THEN BEGIN flirt1hand1
	SAY @21
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hand2
	SAY @22
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hand3
	SAY @23
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hand4
	SAY @24
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hand5
	SAY @25
	IF ~~ THEN EXIT
END

// Cheek kissing flirts
IF ~~ THEN BEGIN flirt1cheek1
	SAY @26
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1cheek2
	SAY @27
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1cheek3
	SAY @28
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1cheek4
	SAY @29
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1cheek5
	SAY @30
	IF ~~ THEN EXIT
END

// Hug flirts
IF ~~ THEN BEGIN flirt1hug1
	SAY @31
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hug2
	SAY @32
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hug3
	SAY @33
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hug4
	SAY @34
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hug5
	SAY @35
	IF ~~ THEN EXIT
END

// Kiss flirts
IF ~~ THEN BEGIN flirt1kiss1
	SAY @36
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1kiss2
	SAY @37
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1kiss3
	SAY @38
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1kiss4
	SAY @39
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1kiss5
	SAY @40
	IF ~~ THEN EXIT
END


// ****************
// Romancing Flirts
// ****************
IF ~~ THEN BEGIN flirt2
	SAY @3
  IF ~~ THEN REPLY @4 EXIT
  IF ~RandomNum(5,1)~ THEN REPLY @5 GOTO flirt2smile1
  IF ~RandomNum(5,2)~ THEN REPLY @5 GOTO flirt2smile2
  IF ~RandomNum(5,3)~ THEN REPLY @5 GOTO flirt2smile3
  IF ~RandomNum(5,4)~ THEN REPLY @5 GOTO flirt2smile4
  IF ~RandomNum(5,5)~ THEN REPLY @5 GOTO flirt2smile5
  IF ~RandomNum(5,1)~ THEN REPLY @6 GOTO flirt2wink1
  IF ~RandomNum(5,2)~ THEN REPLY @6 GOTO flirt2wink2
  IF ~RandomNum(5,3)~ THEN REPLY @6 GOTO flirt2wink3
  IF ~RandomNum(5,4)~ THEN REPLY @6 GOTO flirt2wink4
  IF ~RandomNum(5,5)~ THEN REPLY @6 GOTO flirt2wink5
  IF ~RandomNum(5,1)~ THEN REPLY @7 GOTO flirt2hand1
  IF ~RandomNum(5,2)~ THEN REPLY @7 GOTO flirt2hand2
  IF ~RandomNum(5,3)~ THEN REPLY @7 GOTO flirt2hand3
  IF ~RandomNum(5,4)~ THEN REPLY @7 GOTO flirt2hand4
  IF ~RandomNum(5,5)~ THEN REPLY @7 GOTO flirt2hand5
  IF ~RandomNum(5,1)~ THEN REPLY @8 GOTO flirt2cheek1
  IF ~RandomNum(5,2)~ THEN REPLY @8 GOTO flirt2cheek2
  IF ~RandomNum(5,3)~ THEN REPLY @8 GOTO flirt2cheek3
  IF ~RandomNum(5,4)~ THEN REPLY @8 GOTO flirt2cheek4
  IF ~RandomNum(5,5)~ THEN REPLY @8 GOTO flirt2cheek5
  IF ~RandomNum(5,1)~ THEN REPLY @9 GOTO flirt2hug1
  IF ~RandomNum(5,2)~ THEN REPLY @9 GOTO flirt2hug2
  IF ~RandomNum(5,3)~ THEN REPLY @9 GOTO flirt2hug3
  IF ~RandomNum(5,4)~ THEN REPLY @9 GOTO flirt2hug4
  IF ~RandomNum(5,5)~ THEN REPLY @9 GOTO flirt2hug5
  IF ~RandomNum(5,1)~ THEN REPLY @10 GOTO flirt2kiss1
  IF ~RandomNum(5,2)~ THEN REPLY @10 GOTO flirt2kiss2
  IF ~RandomNum(5,3)~ THEN REPLY @10 GOTO flirt2kiss3
  IF ~RandomNum(5,4)~ THEN REPLY @10 GOTO flirt2kiss4
  IF ~RandomNum(5,5)~ THEN REPLY @10 GOTO flirt2kiss5

END

// Smile Flirts
IF ~~ THEN BEGIN flirt2smile1
	SAY @41
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2smile2
	SAY @42
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2smile3
	SAY @43
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2smile4
	SAY @44
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2smile5
	SAY @45
	IF ~~ THEN EXIT
END

//Wink Flirts
IF ~~ THEN BEGIN flirt2wink1
	SAY @46
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2wink2
	SAY @47
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2wink3
	SAY @48
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2wink4
	SAY @49
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2wink5
	SAY @50
	IF ~~ THEN EXIT
END

//Hold Hands flirts
IF ~~ THEN BEGIN flirt2hand1
	SAY @51
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hand2
	SAY @52
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hand3
	SAY @53
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hand4
	SAY @54
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hand5
	SAY @55
	IF ~~ THEN EXIT
END

// Cheek Kiss flirts
IF ~~ THEN BEGIN flirt2cheek1
	SAY @56
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2cheek2
	SAY @57
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2cheek3
	SAY @58
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2cheek4
	SAY @59
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2cheek5
	SAY @60
	IF ~~ THEN EXIT
END

// Hug flirts
IF ~~ THEN BEGIN flirt2hug1
	SAY @61
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hug2
	SAY @62
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hug3
	SAY @63
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hug4
	SAY @64
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hug5
	SAY @65
	IF ~~ THEN EXIT
END

// Kiss flirts
IF ~~ THEN BEGIN flirt2kiss1
	SAY @66
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2kiss2
	SAY @67
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2kiss3
	SAY @68
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2kiss4
	SAY @69
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2kiss5
	SAY @70
	IF ~~ THEN EXIT
END


END
