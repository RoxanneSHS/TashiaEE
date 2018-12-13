EXTEND_TOP tashi25j 22 #2
IF ~Global("LE#TashiaRiddles","GLOBAL",0)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",2)~ GOTO LE#TashiaRiddles1
IF ~Global("LE#TashiaRiddles","GLOBAL",2)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles2
IF ~Global("LE#TashiaRiddles","GLOBAL",3)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles3
IF ~Global("LE#TashiaRiddles","GLOBAL",4)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles4
IF ~Global("LE#TashiaRiddles","GLOBAL",5)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles5
IF ~Global("LE#TashiaRiddles","GLOBAL",6)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles6
IF ~Global("LE#TashiaRiddles","GLOBAL",7)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles7
IF ~Global("LE#TashiaRiddles","GLOBAL",8)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles8
IF ~Global("LE#TashiaRiddles","GLOBAL",9)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles9
IF ~Global("LE#TashiaRiddles","GLOBAL",10)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles10
IF ~Global("LE#TashiaRiddles","GLOBAL",11)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles11
IF ~Global("LE#TashiaRiddles","GLOBAL",12)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles12
IF ~Global("LE#TashiaRiddles","GLOBAL",13)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles13
IF ~Global("LE#TashiaRiddles","GLOBAL",14)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles14
IF ~Global("LE#TashiaRiddles","GLOBAL",15)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles15
IF ~Global("LE#TashiaRiddles","GLOBAL",16)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles16
IF ~Global("LE#TashiaRiddles","GLOBAL",17)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles17
IF ~Global("LE#TashiaRiddles","GLOBAL",18)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles18
IF ~Global("LE#TashiaRiddles","GLOBAL",19)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles19
IF ~Global("LE#TashiaRiddles","GLOBAL",20)~ THEN REPLY @0 DO ~IncrementGlobal("LE#TashiaRiddles","GLOBAL",1)~ GOTO LE#TashiaRiddles20
IF ~GlobalGT("LE#TashiaRiddles","GLOBAL",20)~ THEN REPLY @0 GOTO LE#TashiaRiddlesComment
END


APPEND Tashi25j

// Riddle 1

IF ~~ THEN BEGIN LE#TashiaRiddles1
   SAY @1 
   IF ~~ THEN REPLY @2 GOTO LE#TashiaRiddles1A
   IF ~~ THEN REPLY @3 GOTO LE#TashiaRiddles1B
   IF ~~ THEN REPLY @4 GOTO LE#TashiaRiddles1C
   IF ~~ THEN REPLY @5 GOTO LE#TashiaRiddles1D
END

IF ~~ THEN BEGIN LE#TashiaRiddles1A
   SAY @6 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles1B
   SAY @7 
   IF ~~ THEN DO ~SetGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles1C
   SAY @8 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles1D
   SAY @9 
   IF ~~ THEN EXIT
END

// Riddle 2

IF ~~ THEN BEGIN LE#TashiaRiddles2
   SAY @10 
   IF ~~ THEN REPLY @11 GOTO LE#TashiaRiddles2A
   IF ~~ THEN REPLY @12 GOTO LE#TashiaRiddles2B
   IF ~~ THEN REPLY @13 GOTO LE#TashiaRiddles2C
   IF ~~ THEN REPLY @14 GOTO LE#TashiaRiddles2D
END

IF ~~ THEN BEGIN LE#TashiaRiddles2A
   SAY @15 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles2B
   SAY @16 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles2C
   SAY @17 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles2D
   SAY @18 
   IF ~~ THEN EXIT
END

// Riddle 3

IF ~~ THEN BEGIN LE#TashiaRiddles3
   SAY @19  
   IF ~~ THEN REPLY @20 GOTO LE#TashiaRiddles3A
   IF ~~ THEN REPLY @21 GOTO LE#TashiaRiddles3B
   IF ~~ THEN REPLY @22 GOTO LE#TashiaRiddles3C
   IF ~~ THEN REPLY @23 GOTO LE#TashiaRiddles3D
END

IF ~~ THEN BEGIN LE#TashiaRiddles3A
   SAY @24 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles3B
   SAY @25 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles3C
   SAY @26 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles3D
   SAY @27 
   IF ~~ THEN EXIT
END

// Riddle 4

IF ~~ THEN BEGIN LE#TashiaRiddles4
   SAY @28 
   IF ~~ THEN REPLY @29 GOTO LE#TashiaRiddles4A
   IF ~~ THEN REPLY @30 GOTO LE#TashiaRiddles4B
   IF ~~ THEN REPLY @31 GOTO LE#TashiaRiddles4C
   IF ~~ THEN REPLY @32 GOTO LE#TashiaRiddles4D
END

IF ~~ THEN BEGIN LE#TashiaRiddles4A
   SAY @33 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles4B
   SAY @34 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles4C
   SAY @35 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles4D
   SAY @36 
   IF ~~ THEN EXIT
END

// Riddle 5

IF ~~ THEN BEGIN LE#TashiaRiddles5
   SAY @37 
   IF ~~ THEN REPLY @38 GOTO LE#TashiaRiddles5A
   IF ~~ THEN REPLY @39 GOTO LE#TashiaRiddles5B
   IF ~~ THEN REPLY @40 GOTO LE#TashiaRiddles5C
   IF ~~ THEN REPLY @41 GOTO LE#TashiaRiddles5D
END

IF ~~ THEN BEGIN LE#TashiaRiddles5A
   SAY @42 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles5B
   SAY @43 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles5C
   SAY @44 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles5D
   SAY @45 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

// Riddle 6

IF ~~ THEN BEGIN LE#TashiaRiddles6
   SAY @46 
   IF ~~ THEN REPLY @47 GOTO LE#TashiaRiddles6A
   IF ~~ THEN REPLY @48 GOTO LE#TashiaRiddles6B
   IF ~~ THEN REPLY @49 GOTO LE#TashiaRiddles6C
   IF ~~ THEN REPLY @50 GOTO LE#TashiaRiddles6D
END

IF ~~ THEN BEGIN LE#TashiaRiddles6A
   SAY @51 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles6B
   SAY @52 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles6C
   SAY @53 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles6D
   SAY @54 
   IF ~~ THEN EXIT
END

// Riddle 7

IF ~~ THEN BEGIN LE#TashiaRiddles7
   SAY @55 
   IF ~~ THEN REPLY @56 GOTO LE#TashiaRiddles7A
   IF ~~ THEN REPLY @57 GOTO LE#TashiaRiddles7B
   IF ~~ THEN REPLY @58 GOTO LE#TashiaRiddles7C
   IF ~~ THEN REPLY @59 GOTO LE#TashiaRiddles7D
END

IF ~~ THEN BEGIN LE#TashiaRiddles7A
   SAY @60 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles7B
   SAY @61 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles7C
   SAY @62 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles7D
   SAY @63 
   IF ~~ THEN EXIT
END

// Riddle 8

IF ~~ THEN BEGIN LE#TashiaRiddles8
   SAY @64 
   IF ~~ THEN REPLY @65 GOTO LE#TashiaRiddles8A
   IF ~~ THEN REPLY @66 GOTO LE#TashiaRiddles8B
   IF ~~ THEN REPLY @67 GOTO LE#TashiaRiddles8C
   IF ~~ THEN REPLY @68 GOTO LE#TashiaRiddles8D
END

IF ~~ THEN BEGIN LE#TashiaRiddles8A
   SAY @69 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles8B
   SAY @70 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles8C
   SAY @71 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles8D
   SAY @72 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

// Riddle 9

IF ~~ THEN BEGIN LE#TashiaRiddles9
   SAY @73 
   IF ~~ THEN REPLY @74 GOTO LE#TashiaRiddles9A
   IF ~~ THEN REPLY @75 GOTO LE#TashiaRiddles9B
   IF ~~ THEN REPLY @76 GOTO LE#TashiaRiddles9C
   IF ~~ THEN REPLY @77 GOTO LE#TashiaRiddles9D
END

IF ~~ THEN BEGIN LE#TashiaRiddles9A
   SAY @78 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles9B
   SAY @79 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles9C
   SAY @80 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles9D
   SAY @81 
   IF ~~ THEN EXIT
END

// Riddle 10

IF ~~ THEN BEGIN LE#TashiaRiddles10
   SAY @82 
   IF ~~ THEN REPLY @83 GOTO LE#TashiaRiddles10D
   IF ~~ THEN REPLY @84 GOTO LE#TashiaRiddles10B
   IF ~~ THEN REPLY @85 GOTO LE#TashiaRiddles10C
   IF ~~ THEN REPLY @86 GOTO LE#TashiaRiddles10A
END

IF ~~ THEN BEGIN LE#TashiaRiddles10A
   SAY @87 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles10B
   SAY @88 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles10C
   SAY @89 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles10D
   SAY @90 
   IF ~~ THEN EXIT
END

// Riddle 11

IF ~~ THEN BEGIN LE#TashiaRiddles11
   SAY @91 
   IF ~~ THEN REPLY @92 GOTO LE#TashiaRiddles11A
   IF ~~ THEN REPLY @93 GOTO LE#TashiaRiddles11B
   IF ~~ THEN REPLY @94 GOTO LE#TashiaRiddles11C
   IF ~~ THEN REPLY @95 GOTO LE#TashiaRiddles11D
END

IF ~~ THEN BEGIN LE#TashiaRiddles11A
   SAY @96 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles11B
   SAY @97 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles11C
   SAY @98 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles11D
   SAY @99 
   IF ~~ THEN EXIT
END

// Riddle 12

IF ~~ THEN BEGIN LE#TashiaRiddles12
   SAY @100 
   IF ~~ THEN REPLY @101 GOTO LE#TashiaRiddles12A
   IF ~~ THEN REPLY @102 GOTO LE#TashiaRiddles12D
   IF ~~ THEN REPLY @103 GOTO LE#TashiaRiddles12C
   IF ~~ THEN REPLY @104 GOTO LE#TashiaRiddles12B
END

IF ~~ THEN BEGIN LE#TashiaRiddles12A
   SAY @105 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles12B
   SAY @106 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles12C
   SAY @107 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles12D
   SAY @108 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

// Riddle 13

IF ~~ THEN BEGIN LE#TashiaRiddles13
   SAY @109 
   IF ~~ THEN REPLY @110 GOTO LE#TashiaRiddles13A
   IF ~~ THEN REPLY @111 GOTO LE#TashiaRiddles13B
   IF ~~ THEN REPLY @112 GOTO LE#TashiaRiddles13C
   IF ~~ THEN REPLY @113 GOTO LE#TashiaRiddles13D
END

IF ~~ THEN BEGIN LE#TashiaRiddles13A
   SAY @114 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles13B
   SAY @115 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles13C
   SAY @116 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles13D
   SAY @117 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

// Riddle 14

IF ~~ THEN BEGIN LE#TashiaRiddles14
   SAY @118 
   IF ~~ THEN REPLY @119 GOTO LE#TashiaRiddles14A
   IF ~~ THEN REPLY @120 GOTO LE#TashiaRiddles14B
   IF ~~ THEN REPLY @121 GOTO LE#TashiaRiddles14C
   IF ~~ THEN REPLY @122 GOTO LE#TashiaRiddles14D
END

IF ~~ THEN BEGIN LE#TashiaRiddles14A
   SAY @123 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles14B
   SAY @124 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END


IF ~~ THEN BEGIN LE#TashiaRiddles14C
   SAY @125 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles14D
   SAY @126 
   IF ~~ THEN EXIT
END

// Riddle 15
IF ~~ THEN BEGIN LE#TashiaRiddles15
   SAY @127 
   IF ~~ THEN REPLY @128 GOTO LE#TashiaRiddles15A
   IF ~~ THEN REPLY @129 GOTO LE#TashiaRiddles15B
   IF ~~ THEN REPLY @130 GOTO LE#TashiaRiddles15C
   IF ~~ THEN REPLY @86 GOTO LE#TashiaRiddles15D
END

IF ~~ THEN BEGIN LE#TashiaRiddles15A
   SAY @131 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles15B
   SAY @132 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles15C
   SAY @133 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles15D
   SAY @134 
   IF ~~ THEN EXIT
END

// Riddle 16

IF ~~ THEN BEGIN LE#TashiaRiddles16
   SAY @135 
   IF ~~ THEN REPLY @136 GOTO LE#TashiaRiddles16A
   IF ~~ THEN REPLY @137 GOTO LE#TashiaRiddles16B
   IF ~~ THEN REPLY @138 GOTO LE#TashiaRiddles16C
   IF ~~ THEN REPLY @139 GOTO LE#TashiaRiddles16D
END

IF ~~ THEN BEGIN LE#TashiaRiddles16A
   SAY @140 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles16B
   SAY @141 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles16C
   SAY @142 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles16D
   SAY @143 
   IF ~~ THEN EXIT
END

// Riddle 17

IF ~~ THEN BEGIN LE#TashiaRiddles17
   SAY @144 
   IF ~~ THEN REPLY @145 GOTO LE#TashiaRiddles17A
   IF ~~ THEN REPLY @146 GOTO LE#TashiaRiddles17B
   IF ~~ THEN REPLY @147 GOTO LE#TashiaRiddles17C
   IF ~~ THEN REPLY @148 GOTO LE#TashiaRiddles17D
END

IF ~~ THEN BEGIN LE#TashiaRiddles17A
   SAY @149 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles17B
   SAY @150 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles17C
   SAY @151 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles17D
   SAY @152 
   IF ~~ THEN EXIT
END

// Riddle 18

IF ~~ THEN BEGIN LE#TashiaRiddles18
   SAY @153 
   IF ~~ THEN REPLY @154 GOTO LE#TashiaRiddles18A
   IF ~~ THEN REPLY @93 GOTO LE#TashiaRiddles18B
   IF ~~ THEN REPLY @155 GOTO LE#TashiaRiddles18C
   IF ~~ THEN REPLY @156 GOTO LE#TashiaRiddles18D
END

IF ~~ THEN BEGIN LE#TashiaRiddles18A
   SAY @157 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles18B
   SAY @158 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles18C
   SAY @159 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles18D
   SAY @160 
   IF ~~ THEN EXIT
END

// Riddle 19

IF ~~ THEN BEGIN LE#TashiaRiddles19
   SAY @161 
   IF ~~ THEN REPLY @162 GOTO LE#TashiaRiddles19A
   IF ~~ THEN REPLY @163 GOTO LE#TashiaRiddles19B
   IF ~~ THEN REPLY @164 GOTO LE#TashiaRiddles19C
   IF ~~ THEN REPLY @165 GOTO LE#TashiaRiddles19D
END

IF ~~ THEN BEGIN LE#TashiaRiddles19A
   SAY @166
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles19B
   SAY @167 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles19C
   SAY @168 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles19D
   SAY @169 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

// Riddle 20

IF ~~ THEN BEGIN LE#TashiaRiddles20
   SAY @170 
   IF ~~ THEN REPLY @171 GOTO LE#TashiaRiddles20A
   IF ~~ THEN REPLY @172 GOTO LE#TashiaRiddles20B
   IF ~~ THEN REPLY @173 GOTO LE#TashiaRiddles20C
   IF ~~ THEN REPLY @47 GOTO LE#TashiaRiddles20D
END

IF ~~ THEN BEGIN LE#TashiaRiddles20A
   SAY @174 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles20B
   SAY @175 
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles20C
   SAY @176 
   IF ~~ THEN DO ~IncrementGlobal("LE#TashiaRiddlesCorrect","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddles20D
   SAY @177 
   IF ~~ THEN EXIT
END

// Riddle Comments

IF ~~ THEN BEGIN LE#TashiaRiddlesComment
    SAY @178
    IF ~Global("LE#TashiaRiddlesCorrect","GLOBAL",0)~ THEN GOTO LE#TashiaRiddlesComment0
    IF ~GlobalGT("LE#TashiaRiddlesCorrect","GLOBAL",0) GlobalLT("LE#TashiaRiddlesCorrect","GLOBAL",4)~ THEN GOTO LE#TashiaRiddlesComment3
    IF ~GlobalGT("LE#TashiaRiddlesCorrect","GLOBAL",3) GlobalLT("LE#TashiaRiddlesCorrect","GLOBAL",8)~ THEN GOTO LE#TashiaRiddlesComment4
    IF ~GlobalGT("LE#TashiaRiddlesCorrect","GLOBAL",7) GlobalLT("LE#TashiaRiddlesCorrect","GLOBAL",12)~ THEN GOTO LE#TashiaRiddlesComment8
    IF ~GlobalGT("LE#TashiaRiddlesCorrect","GLOBAL",11) GlobalLT("LE#TashiaRiddlesCorrect","GLOBAL",16)~ THEN GOTO LE#TashiaRiddlesComment12
    IF ~GlobalGT("LE#TashiaRiddlesCorrect","GLOBAL",15) GlobalLT("LE#TashiaRiddlesCorrect","GLOBAL",20)~ THEN GOTO LE#TashiaRiddlesComment15
    IF ~Global("LE#TashiaRiddlesCorrect","GLOBAL",20)~ THEN GOTO LE#TashiaRiddlesComment20
END

IF ~~ THEN BEGIN LE#TashiaRiddlesComment0
    SAY @179
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddlesComment3
    SAY @180
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddlesComment4
    SAY @181
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddlesComment8
    SAY @182
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddlesComment12
    SAY @183
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddlesComment15
    SAY @184
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#TashiaRiddlesComment20
    SAY @185
    IF ~~ THEN EXIT
END


END


// ******************************************************************************
// FLIRTS - FLIRTS - FLIRTS - FLIRTS - FLIRTS - FLIRTS - FLIRTS - FLIRTS - FLIRTS
// ******************************************************************************

EXTEND_BOTTOM tashi25j 22
	IF ~IsGabber(Player1) Gender(Player1, MALE) !Global("TashiaRomanceActive","GLOBAL",2)~ THEN REPLY @186 GOTO flirts1
	IF ~IsGabber(Player1) Gender(Player1, MALE) Global("TashiaRomanceActive","GLOBAL",2)~ THEN REPLY @187 GOTO flirts2
END

APPEND tashi25j
// ********************
// Non-romancing flirts
// ********************
IF ~~ THEN BEGIN flirts1
	SAY @188
  IF ~RandomNum(5,1)~ THEN REPLY @189 GOTO flirt1smile1
  IF ~RandomNum(5,2)~ THEN REPLY @189 GOTO flirt1smile2
  IF ~RandomNum(5,3)~ THEN REPLY @189 GOTO flirt1smile3
  IF ~RandomNum(5,4)~ THEN REPLY @189 GOTO flirt1smile4
  IF ~RandomNum(5,5)~ THEN REPLY @189 GOTO flirt1smile5
  IF ~RandomNum(5,1)~ THEN REPLY @190 GOTO flirt1wink1
  IF ~RandomNum(5,2)~ THEN REPLY @190 GOTO flirt1wink2
  IF ~RandomNum(5,3)~ THEN REPLY @190 GOTO flirt1wink3
  IF ~RandomNum(5,4)~ THEN REPLY @190 GOTO flirt1wink4
  IF ~RandomNum(5,5)~ THEN REPLY @190 GOTO flirt1wink5
  IF ~RandomNum(5,1)~ THEN REPLY @191 GOTO flirt1hand1
  IF ~RandomNum(5,2)~ THEN REPLY @191 GOTO flirt1hand2
  IF ~RandomNum(5,3)~ THEN REPLY @191 GOTO flirt1hand3
  IF ~RandomNum(5,4)~ THEN REPLY @191 GOTO flirt1hand4
  IF ~RandomNum(5,5)~ THEN REPLY @191 GOTO flirt1hand5
  IF ~RandomNum(5,1)~ THEN REPLY @192 GOTO flirt1cheek1
  IF ~RandomNum(5,2)~ THEN REPLY @192 GOTO flirt1cheek2
  IF ~RandomNum(5,3)~ THEN REPLY @192 GOTO flirt1cheek3
  IF ~RandomNum(5,4)~ THEN REPLY @192 GOTO flirt1cheek4
  IF ~RandomNum(5,5)~ THEN REPLY @192 GOTO flirt1cheek5
  IF ~RandomNum(5,1)~ THEN REPLY @193 GOTO flirt1hug1
  IF ~RandomNum(5,2)~ THEN REPLY @193 GOTO flirt1hug2
  IF ~RandomNum(5,3)~ THEN REPLY @193 GOTO flirt1hug3
  IF ~RandomNum(5,4)~ THEN REPLY @193 GOTO flirt1hug4
  IF ~RandomNum(5,5)~ THEN REPLY @193 GOTO flirt1hug5
  IF ~RandomNum(5,1)~ THEN REPLY @194 GOTO flirt1kiss1
  IF ~RandomNum(5,2)~ THEN REPLY @194 GOTO flirt1kiss2
  IF ~RandomNum(5,3)~ THEN REPLY @194 GOTO flirt1kiss3
  IF ~RandomNum(5,4)~ THEN REPLY @194 GOTO flirt1kiss4
  IF ~RandomNum(5,5)~ THEN REPLY @194 GOTO flirt1kiss5
END

// Smile Flirts
IF ~~ THEN BEGIN flirt1smile1
	SAY @195
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1smile2
	SAY @196
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1smile3
	SAY @197
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1smile4
	SAY @198
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1smile5
	SAY @199
	IF ~~ THEN EXIT
END

// Wink Flirts
IF ~~ THEN BEGIN flirt1wink1
	SAY @200
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1wink2
	SAY @201
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1wink3
	SAY @202
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1wink4
	SAY @203
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1wink5
	SAY @204
	IF ~~ THEN EXIT
END

// Hold Hands Flirts
IF ~~ THEN BEGIN flirt1hand1
	SAY @205
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hand2
	SAY @206
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hand3
	SAY @207
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hand4
	SAY @208
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hand5
	SAY @209
	IF ~~ THEN EXIT
END

// Cheek Kiss flirts
IF ~~ THEN BEGIN flirt1cheek1
	SAY @210
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1cheek2
	SAY @211
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1cheek3
	SAY @212
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1cheek4
	SAY @213
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1cheek5
	SAY @214
	IF ~~ THEN EXIT
END

// Hug flirts
IF ~~ THEN BEGIN flirt1hug1
	SAY @215
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hug2
	SAY @216
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hug3
	SAY @217
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hug4
	SAY @218
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1hug5
	SAY @219
	IF ~~ THEN EXIT
END

// Kiss flirts
IF ~~ THEN BEGIN flirt1kiss1
	SAY @220
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1kiss2
	SAY @221
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1kiss3
	SAY @222
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1kiss4
	SAY @223
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt1kiss5
	SAY @224
	IF ~~ THEN EXIT
END


//*****************
//Romancing Flirts
//*****************
IF ~~ THEN BEGIN flirts2
	SAY @188
  IF ~RandomNum(5,1)~ THEN REPLY @189 GOTO flirt2smile1
  IF ~RandomNum(5,2)~ THEN REPLY @189 GOTO flirt2smile2
  IF ~RandomNum(5,3)~ THEN REPLY @189 GOTO flirt2smile3
  IF ~RandomNum(5,4)~ THEN REPLY @189 GOTO flirt2smile4
  IF ~RandomNum(5,5)~ THEN REPLY @189 GOTO flirt2smile5
  IF ~RandomNum(5,1)~ THEN REPLY @190 GOTO flirt2wink1
  IF ~RandomNum(5,2)~ THEN REPLY @190 GOTO flirt2wink2
  IF ~RandomNum(5,3)~ THEN REPLY @190 GOTO flirt2wink3
  IF ~RandomNum(5,4)~ THEN REPLY @190 GOTO flirt2wink4
  IF ~RandomNum(5,5)~ THEN REPLY @190 GOTO flirt2wink5
  IF ~RandomNum(5,1)~ THEN REPLY @191 GOTO flirt2hand1
  IF ~RandomNum(5,2)~ THEN REPLY @191 GOTO flirt2hand2
  IF ~RandomNum(5,3)~ THEN REPLY @191 GOTO flirt2hand3
  IF ~RandomNum(5,4)~ THEN REPLY @191 GOTO flirt2hand4
  IF ~RandomNum(5,5)~ THEN REPLY @191 GOTO flirt2hand5
  IF ~RandomNum(5,1)~ THEN REPLY @192 GOTO flirt2cheek1
  IF ~RandomNum(5,2)~ THEN REPLY @192 GOTO flirt2cheek2
  IF ~RandomNum(5,3)~ THEN REPLY @192 GOTO flirt2cheek3
  IF ~RandomNum(5,4)~ THEN REPLY @192 GOTO flirt2cheek4
  IF ~RandomNum(5,5)~ THEN REPLY @192 GOTO flirt2cheek5
  IF ~RandomNum(5,1)~ THEN REPLY @193 GOTO flirt2hug1
  IF ~RandomNum(5,2)~ THEN REPLY @193 GOTO flirt2hug2
  IF ~RandomNum(5,3)~ THEN REPLY @193 GOTO flirt2hug3
  IF ~RandomNum(5,4)~ THEN REPLY @193 GOTO flirt2hug4
  IF ~RandomNum(5,5)~ THEN REPLY @193 GOTO flirt2hug5
  IF ~RandomNum(5,1)~ THEN REPLY @194 GOTO flirt2kiss1
  IF ~RandomNum(5,2)~ THEN REPLY @194 GOTO flirt2kiss2
  IF ~RandomNum(5,3)~ THEN REPLY @194 GOTO flirt2kiss3
  IF ~RandomNum(5,4)~ THEN REPLY @194 GOTO flirt2kiss4
  IF ~RandomNum(5,5)~ THEN REPLY @194 GOTO flirt2kiss5
END

// Smile Flirts
IF ~~ THEN BEGIN flirt2smile1
	SAY @225
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2smile2
	SAY @226
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2smile3
	SAY @227
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2smile4
	SAY @228
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2smile5
	SAY @229
	IF ~~ THEN EXIT
END

// Wink Flirts
IF ~~ THEN BEGIN flirt2wink1
	SAY @230
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2wink2
	SAY @231
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2wink3
	SAY @232
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2wink4
	SAY @233
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2wink5
	SAY @234
	IF ~~ THEN EXIT
END

// Hold Hands flirts
IF ~~ THEN BEGIN flirt2hand1
	SAY @235
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hand2
	SAY @236
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hand3
	SAY @237
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hand4
	SAY @238
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hand5
	SAY @239
	IF ~~ THEN EXIT
END

// Cheek Kiss flirts
IF ~~ THEN BEGIN flirt2cheek1
	SAY @240
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2cheek2
	SAY @241
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2cheek3
	SAY @242
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2cheek4
	SAY @243
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2cheek5
	SAY @244
	IF ~~ THEN EXIT
END

// Hug flirts
IF ~~ THEN BEGIN flirt2hug1
	SAY @245
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hug2
	SAY @246
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hug3
	SAY @247
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hug4
	SAY @248
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2hug5
	SAY @249
	IF ~~ THEN EXIT
END

// Kiss flirts
IF ~~ THEN BEGIN flirt2kiss1
	SAY @250
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2kiss2
	SAY @251
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2kiss3
	SAY @252
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2kiss4
	SAY @253
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN flirt2kiss5
	SAY @254
	IF ~~ THEN EXIT
END



END

