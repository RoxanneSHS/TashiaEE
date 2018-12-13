BEGIN ~BTASHIA~

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",2)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 0 // from:
  SAY @0  /* #74251 */
  IF ~~ THEN REPLY @1 /* #74252 */ GOTO 2
  IF ~~ THEN REPLY @2 /* #74253 */ GOTO 2
  IF ~~ THEN REPLY @3 /* #74254 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 54.3 40.0 34.2 6.1 4.2 3.1 2.1 0.2
  SAY @4 /* #74255 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.0
  SAY @5 /* #74256 */
  IF ~~ THEN REPLY @6 /* #75295 */ GOTO 3
  IF ~~ THEN REPLY @7 /* #74258 */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8 /* #75296 */
  IF ~~ THEN REPLY @9 /* #75297 */ GOTO 4
  IF ~~ THEN REPLY @10 /* #75298 */ GOTO 1
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN REPLY @12 /* #74263 */ GOTO 5
  IF ~~ THEN REPLY @13 /* #74264 */ GOTO 7
  IF ~~ THEN REPLY @14 /* #74265 */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @15 /* #74266 */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @16
  IF ~~ THEN REPLY @17 /* #75301 */ GOTO 7
  IF ~~ THEN REPLY @18 /* #74269 */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 6.0 4.1
  SAY @19 /* #74270 */
  IF ~~ THEN EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",4)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 8 // from:
  SAY @20  /* #74271 */
  IF ~~ THEN REPLY @21 /* #37921 */ GOTO 9
  IF ~~ THEN REPLY @22 /* #74272 */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @23
  IF ~~ THEN REPLY @24 /* #74274 */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 11.1 8.1
  SAY @25 /* #74275 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY @26 /* #74276 */
  IF ~~ THEN REPLY @27 /* #74277 */ GOTO 12
  IF ~~ THEN REPLY @28 /* #74278 */ GOTO 10
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @29 /* #74279 */
  IF ~~ THEN REPLY @30 /* #74280 */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @31 /* #74281 */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @32 /* #74282 */
  IF ~~ THEN REPLY @33 /* #74283 */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @34 /* #74284 */
  IF ~~ THEN EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",6)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 16 // from:
  SAY @35  /* #74285 */
  IF ~~ THEN REPLY @36 /* #74286 */ GOTO 18
  IF ~~ THEN REPLY @37 /* #74287 */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 18.1 16.1
  SAY @38 /* #74288 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY @39 /* #74289 */
  IF ~~ THEN REPLY @40 /* #74290 */ GOTO 19
  IF ~~ THEN REPLY @41 /* #74291 */ GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY @42 /* #74292 */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @43 /* #74293 */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @44 /* #74294 */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @45 /* #74295 */
  IF ~~ THEN EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",8)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 23 // from:
  SAY @46  /* #74296 */
  IF ~~ THEN REPLY @47 /* #74297 */ GOTO 25
  IF ~~ THEN REPLY @48 /* #74298 */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY @49 /* #74299 */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 23.0
  SAY @50 /* #74300 */
  IF ~~ THEN REPLY @51 /* #74301 */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @52 /* #74302 */
  IF ~~ THEN REPLY @53 /* #74303 */ GOTO 27
  IF ~~ THEN REPLY @54 /* #74304 */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1 26.0
  SAY @55 /* #74305 */
  IF ~ReputationGT(Player1,10)
        GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @56 /* #74306 */ DO ~SetGlobal("TashiaKnows","GLOBAL",2)~ GOTO 30
  IF ~ReputationGT(Player1,10)
        GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ THEN REPLY @57 /* #74307 */ DO ~SetGlobal("TashiaKnows","GLOBAL",2)~ GOTO 30
  IF ~ReputationGT(Player1,10)
        GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @58 /* #74306 */ DO ~SetGlobal("TashiaKnows","GLOBAL",2)~ GOTO 30
  IF ~ReputationGT(Player1,10)
        GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ THEN REPLY @59 /* #74307 */ DO ~SetGlobal("TashiaKnows","GLOBAL",2)~ GOTO 30
  IF ~ReputationLT(Player1,11)~ THEN REPLY @60 /* #74308 */ DO ~SetGlobal("TashiaKnows","GLOBAL",2)~ GOTO 28
  IF ~~ THEN REPLY @61 /* #74309 */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.3 27.2
  SAY @62 /* #74310 */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 30.1 28.0
  SAY @63 /* #74311 */
  IF ~~ THEN DO ~LeaveParty()
                 GivePartyAllEquipment()
                 EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 27.0
  SAY @64 /* #74312 */
  IF ~~ THEN REPLY @65 /* #74313 */ DO ~SetGlobal("TashiaKnows","GLOBAL",2)~ GOTO 31
  IF ~~ THEN REPLY @66 /* #74314 */ DO ~SetGlobal("TashiaKnows","GLOBAL",2)~ GOTO 29
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @67 /* #74315 */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY @68 /* #74316 */
  IF ~~ THEN EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",10)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 33 // from:
  SAY @69  /* #74317 */
  IF ~ReputationGT(Player1,9)~ THEN REPLY @70 /* #74318 */ GOTO 35
  IF ~ReputationGT(Player1,11)~ THEN REPLY @71 /* #74319 */ GOTO 37
  IF ~ReputationGT(Player1,10)~ THEN REPLY @72 /* #74320 */ GOTO 35
  IF ~ReputationLT(Player1,11)~ THEN REPLY @73 /* #74321 */ GOTO 39
  IF ~~ THEN REPLY @74 /* #74322 */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.4
  SAY @75 /* #74323 */
  IF ~ReputationGT(Player1,10)~ THEN REPLY @76 /* #74324 */ GOTO 35
  IF ~ReputationLT(Player1,11)~ THEN REPLY @77 /* #74325 */ GOTO 39
  IF ~~ THEN REPLY @78 /* #74326 */ GOTO 1
END

IF ~~ THEN BEGIN 35 // from: 34.0 33.2 33.0
  SAY @79 /* #74327 */
  IF ~~ THEN REPLY @80 /* #74328 */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 38.1 38.0 37.0 35.0
  SAY @81 /* #74329 */
  IF ~~ THEN DO ~SetGlobal("TashiaKnows","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.1
  SAY @82 /* #74330 */
  IF ~CheckStatGT(Player1,11,WIS)~ THEN REPLY @83 /* #74331 */ GOTO 36
  IF ~~ THEN REPLY @84 /* #74332 */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY @85 /* #74333 */
  IF ~CheckStatGT(Player1,11,WIS)~ THEN REPLY @86 /* #74334 */ GOTO 36
  IF ~~ THEN REPLY @87 /* #74335 */ GOTO 36
END

IF ~~ THEN BEGIN 39 // from: 66.1 64.4 60.1 56.4 55.4 34.1 33.3
  SAY @88 /* #74336 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",12)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 40 // from:
  SAY @89  /* #74337 */
  IF ~~ THEN REPLY @90 /* #74338 */ GOTO 1
  IF ~CheckStatGT(Player1,11,INT)~ THEN REPLY @91 /* #74339 */ GOTO 44
  IF ~~ THEN REPLY @92 /* #74340 */ GOTO 41
  IF ~~ THEN REPLY @93 /* #74341 */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.3 40.2
  SAY @94 /* #74342 */
  IF ~~ THEN REPLY @95 /* #74343 */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY @96 /* #74344 */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 44.0 42.0
  SAY @97 /* #74345 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 44 // from: 40.1
  SAY @98 /* #74346 */
  IF ~~ THEN GOTO 43
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",14)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 45 // from:
  SAY @99  /* #74347 */
  IF ~~ THEN REPLY @100 /* #45498 */ GOTO 46
  IF ~~ THEN REPLY @101 /* #46222 */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.1 45.0
  SAY @102
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY @103
  IF ~~ THEN REPLY @104 /* #74350 */ GOTO 48
  IF ~CheckStatGT(Player1,11,WIS)~ THEN REPLY @105 /* #74351 */ GOTO 48
  IF ~~ THEN REPLY @106 /* #74352 */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.2 47.1 47.0
  SAY @107 /* #74353 */
  IF ~~ THEN EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",16)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 49 // from:
  SAY @108  /* #74354 */
  IF ~~ THEN REPLY @109 /* #74355 */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY @110 /* #74356 */
  IF ~~ THEN REPLY @111 /* #74357 */ GOTO 53
  IF ~~ THEN REPLY @112 /* #74358 */ GOTO 52
  IF ~~ THEN REPLY @113 /* #74359 */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.2
  SAY @114 /* #74360 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY @115 /* #74361 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from: 50.0
  SAY @116 /* #74362 */
  IF ~~ THEN EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",18)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 54 // from:
  SAY @117  /* #74363 */
  IF ~CheckStatGT(Player1,11,INT)~ THEN REPLY @118 /* #74364 */ GOTO 64
  IF ~~ THEN REPLY @119 /* #74365 */ GOTO 55
  IF ~~ THEN REPLY @120 /* #74366 */ GOTO 56
  IF ~~ THEN REPLY @121 /* #74367 */ GOTO 1
END

IF ~~ THEN BEGIN 55 // from: 54.1
  SAY @122 /* #74368 */
  IF ~~ THEN REPLY @123 /* #75305 */ GOTO 59
  IF ~~ THEN REPLY @124 /* #74370 */ GOTO 65
  IF ~~ THEN REPLY @125 /* #74371 */ GOTO 58
  IF ~~ THEN REPLY @126 /* #74372 */ GOTO 57
  IF ~~ THEN REPLY @127 /* #74373 */ GOTO 39
END

IF ~~ THEN BEGIN 56 // from: 54.2
  SAY @128 /* #74374 */
  IF ~~ THEN REPLY @129 /* #74369 */ GOTO 59
  IF ~~ THEN REPLY @124 /* #74370 */ GOTO 65
  IF ~~ THEN REPLY @125 /* #74371 */ GOTO 58
  IF ~~ THEN REPLY @126 /* #74372 */ GOTO 57
  IF ~~ THEN REPLY @127 /* #74373 */ GOTO 39
END

IF ~~ THEN BEGIN 57 // from: 64.3 56.3 55.3
  SAY @130 /* #74375 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from: 64.2 56.2 55.2
  SAY @131 /* #74376 */
  IF ~~ THEN REPLY @132 /* #74377 */ GOTO 61
  IF ~~ THEN REPLY @133 /* #74378 */ GOTO 61
  IF ~~ THEN REPLY @134 /* #74379 */ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 64.0 56.0 55.0
  SAY @135 /* #74380 */
  IF ~~ THEN REPLY @132 /* #74377 */ GOTO 61
  IF ~~ THEN REPLY @136 /* #74381 */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.1
  SAY @137 /* #74382 */
  IF ~~ THEN REPLY @138 /* #74383 */ GOTO 61
  IF ~~ THEN REPLY @139 /* #74384 */ GOTO 39
END

IF ~~ THEN BEGIN 61 // from: 67.1 65.1 60.0 59.0 58.1 58.0
  SAY @140 /* #74385 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from: 58.2
  SAY @141 /* #74085 */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY @142 /* #74386 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from: 54.0
  SAY @143 /* #74387 */
  IF ~~ THEN REPLY @129 /* #74369 */ GOTO 59
  IF ~~ THEN REPLY @124 /* #74370 */ GOTO 65
  IF ~~ THEN REPLY @125 /* #74371 */ GOTO 58
  IF ~~ THEN REPLY @126 /* #74372 */ GOTO 57
  IF ~~ THEN REPLY @127 /* #74373 */ GOTO 39
END

IF ~~ THEN BEGIN 65 // from: 64.1 56.1 55.1
  SAY @144 /* #74388 */
  IF ~~ THEN REPLY @145 /* #74389 */ GOTO 66
  IF ~~ THEN REPLY @146 /* #74390 */ GOTO 61
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY @147 /* #31403 */
  IF ~~ THEN REPLY @148 /* #74391 */ GOTO 67
  IF ~~ THEN REPLY @149 /* #74392 */ GOTO 39
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY @150 /* #74393 */
  IF ~CheckStatGT(Player1,11,WIS)~ THEN REPLY @151 /* #74394 */ GOTO 68
  IF ~~ THEN REPLY @152 /* #74395 */ GOTO 61
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY @153 /* #74396 */
  IF ~~ THEN EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",20)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 69 // from:
  SAY @154  /* #74397 */
  IF ~~ THEN REPLY @155 /* #74398 */ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY @156 /* #74399 */
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",1)~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
 Global("LoveTalk","LOCALS",22)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 71 // from:
  SAY @157  /* #74400 */
  IF ~~ THEN REPLY @158 /* #448 */ GOTO 73
  IF ~~ THEN REPLY @159 /* #74401 */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY @160 /* #74402 */
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",5)~ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0
  SAY @161 /* #74403 */
  IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY @162 /* #74404 */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY @163 /* #74405 */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY @164 /* #74406 */
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",5)~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",24)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 77 // from:
  SAY @165  /* #74407 */
  IF ~~ THEN REPLY @166 /* #74408 */ DO ~SetGlobal("TashiaInterestMatch","GLOBAL",0)~ GOTO 78
  IF ~~ THEN REPLY @167 /* #74409 */ DO ~SetGlobal("TashiaInterestMatch","GLOBAL",0)~ GOTO 79
  IF ~~ THEN REPLY @168 /* #74410 */ DO ~SetGlobal("TashiaInterestMatch","GLOBAL",0)~ GOTO 80
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY @169 /* #74411 */
  IF ~~ THEN REPLY @170 /* #66873 */ GOTO 83
  IF ~~ THEN REPLY @171 /* #74412 */ GOTO 81
END

IF ~~ THEN BEGIN 79 // from: 77.1
  SAY @172 /* #74413 */
  IF ~~ THEN REPLY @170 /* #66873 */ GOTO 83
  IF ~~ THEN REPLY @173 /* #74414 */ GOTO 82
END

IF ~~ THEN BEGIN 80 // from: 77.2
  SAY @174 /* #74415 */
  IF ~~ THEN REPLY @21 /* #37921 */ GOTO 83
  IF ~~ THEN REPLY @175 /* #74416 */ GOTO 82
END

IF ~~ THEN BEGIN 81 // from: 87.2 78.1
  SAY @176 /* #74417 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.1 79.1
  SAY @177 /* #74418 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.0 79.0 78.0
  SAY @178 /* #74419 */
  IF ~InParty("Minsc")
!Dead("Minsc")~ THEN REPLY @179 /* #74420 */ DO ~SetGlobal("JokeMinsc","GLOBAL",1)~ GOTO 84
  IF ~InParty("Edwin")
!Dead("Edwin")~ THEN REPLY @180 /* #74421 */ DO ~SetGlobal("JokeEdwin","GLOBAL",1)~ GOTO 84
  IF ~InParty("Cernd")
!Dead("Cernd")~ THEN REPLY @181 /* #74422 */ DO ~SetGlobal("JokeCernd","GLOBAL",1)~ GOTO 84
  IF ~~ THEN REPLY @182 /* #74423 */ GOTO 86
  IF ~InParty("Korgan")
!Dead("Korgan")~ THEN REPLY @183 /* #74424 */ DO ~SetGlobal("JokeKorgan","GLOBAL",1)~ GOTO 84
  IF ~InParty("Jan")
!Dead("Jan")~ THEN REPLY @184 /* #74425 */ DO ~SetGlobal("JokeJan","GLOBAL",1)~ GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.5 83.4 83.2 83.1 83.0
  SAY @185 /* #74426 */
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY @186 /* #74427 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 83.3
  SAY @187 /* #74428 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",26)
 !StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 87 // from:
  SAY @188  /* #74429 */
  IF ~GlobalGT("TashiaInterestMatch","GLOBAL",0)~ THEN REPLY @189 /* #74430 */ GOTO 89
  IF ~GlobalGT("TashiaInterestMatch","GLOBAL",0)~ THEN REPLY @190 /* #74431 */ GOTO 88
  IF ~GlobalLT("TashiaInterestMatch","GLOBAL",1)~ THEN REPLY @191 /* #74432 */ GOTO 81
  IF ~GlobalLT("TashiaInterestMatch","GLOBAL",1)~ THEN REPLY @192 /* #74433 */ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 87.1
  SAY @193 /* #74434 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaIgnored","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 87.3 87.0
  SAY @194 /* #74435 */
  IF ~~ THEN REPLY @195 /* #74436 */ GOTO 90
  IF ~~ THEN REPLY @196 /* #74437 */ GOTO 97
  IF ~~ THEN REPLY @197 /* #74438 */ GOTO 97
  IF ~~ THEN REPLY @198 /* #74439 */ GOTO 97
  IF ~~ THEN REPLY @199 /* #74440 */ GOTO 97
  IF ~~ THEN REPLY @200 /* #74441 */ GOTO 97
  IF ~~ THEN REPLY @201 /* #74442 */ GOTO 97
  IF ~~ THEN REPLY @202 /* #74443 */ GOTO 95
  IF ~~ THEN REPLY @203 /* #74444 */ GOTO 97
  IF ~~ THEN REPLY @204 /* #74445 */ GOTO 97
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY @205 /* #74446 */
  IF ~~ THEN REPLY @206 /* #74447 */ GOTO 91
  IF ~~ THEN REPLY @207 /* #74448 */ GOTO 93
END

IF ~~ THEN BEGIN 91 // from: 97.0 90.0
  SAY @208 /* #74449 */
  IF ~~ THEN GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY @209 /* #74450 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 97.1 90.1
  SAY @210 /* #74451 */
  IF ~~ THEN GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY @211 /* #74452 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from: 89.7
  SAY @212 /* #74453 */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY @213 /* #74454 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 89.9 89.8 89.6 89.5 89.4 89.3 89.2 89.1
  SAY @214 /* #74455 */
  IF ~CheckStatGT(Player1,11,CHR)~ THEN REPLY @206 /* #74447 */ GOTO 91
  IF ~~ THEN REPLY @207 /* #74448 */ GOTO 93
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",28)
!StateCheck(Player1,STATE_SLEEPING)
Global("TashiaPlot","GLOBAL",8)~ THEN BEGIN 98 // from:
  SAY @215  /* #74456 */
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",10)
                 IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",28)
!StateCheck(Player1,STATE_SLEEPING)
Global("TashiaPlot","GLOBAL",9)~ THEN BEGIN 99 // from:
  SAY @216  /* #74457 */
  IF ~~ THEN DO ~SetGlobal("TashiaPlot","GLOBAL",10)~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",30)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 100 // from:
  SAY @217  /* #74458 */
  IF ~~ THEN REPLY @158 /* #448 */ GOTO 102
  IF ~~ THEN REPLY @218 /* #74459 */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 119.1 100.1
  SAY @219 /* #74460 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaIgnored","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 102 // from: 100.0
  SAY @220 /* #74461 */
  IF ~~ THEN REPLY @221 /* #74462 */ GOTO 103
  IF ~~ THEN REPLY @222 /* #74463 */ GOTO 103
  IF ~~ THEN REPLY @223 /* #75306 */ GOTO LE#LichD1
  IF ~~ THEN REPLY @224 /* #74465 */ GOTO LE#LichD2
  IF ~~ THEN REPLY @225 /* #74466 */ GOTO LE#LichD3
  IF ~~ THEN REPLY @226 /* #74467 */ GOTO LE#LichD4
  IF ~~ THEN REPLY @227 /* #74468 */ GOTO 117
  IF ~~ THEN REPLY @228 /* #74469 */ GOTO 104
  IF ~CheckStatGT(Player1,7,CHR)~ THEN REPLY @229 /* #74470 */ GOTO 105
  IF ~~ THEN REPLY @230 /* #74471 */ GOTO 112
  IF ~~ THEN REPLY @231 /* #74472 */ GOTO 116
END

IF ~~ THEN BEGIN 103 // from: 102.1 102.0
  SAY @232 /* #74473 */
  IF ~~ THEN REPLY @223 /* #75306 */ GOTO LE#LichD1
  IF ~~ THEN REPLY @224 /* #74465 */ GOTO LE#LichD2
  IF ~~ THEN REPLY @225 /* #74466 */ GOTO LE#LichD3
  IF ~~ THEN REPLY @226 /* #74467 */ GOTO LE#LichD4
  IF ~~ THEN REPLY @227 /* #74468 */ GOTO 117
  IF ~~ THEN REPLY @233 /* #74474 */ GOTO 104
  IF ~CheckStatGT(Player1,7,CHR)~ THEN REPLY @229 /* #74470 */ GOTO 105
  IF ~~ THEN REPLY @230 /* #74471 */ GOTO 112
  IF ~~ THEN REPLY @231 /* #74472 */ GOTO 116
END

IF ~~ THEN BEGIN 104 // from: 103.5 102.7
  SAY @234 /* #74475 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ GOTO 113
END

IF ~~ THEN BEGIN 105 // from: 103.6 102.8
  SAY @235 /* #74476 */
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY @236 /* #74477 */
  IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY @237 /* #74478 */
  IF ~~ THEN REPLY @238 /* #75307 */ GOTO 108
  IF ~~ THEN REPLY @239 /* #74480 */ GOTO 108
  IF ~~ THEN REPLY @240 /* #74481 */ GOTO 111
END

IF ~~ THEN BEGIN 108 // from: 107.1 107.0
  SAY @241 /* #75308 */
  IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY @242 /* #74483 */
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY @243 /* #74484 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",-1)~ EXIT
END

IF ~~ THEN BEGIN 111 // from: 107.2
  SAY @244 /* #74485 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ GOTO 113
END

IF ~~ THEN BEGIN 112 // from: 103.7 102.9
  SAY @245 /* #74486 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ GOTO 113
END

IF ~~ THEN BEGIN 113 // from: 116.0 112.0 111.0 104.0
  SAY @246 /* #74487 */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY @247 /* #74488 */
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY @248 /* #74489 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 116 // from: 103.8 102.10
  SAY @249 /* #74490 */
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 117 // from: 121.2 120.0 103.4 102.6
  SAY @250 /* #74491 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LE#LichD1
  SAY @251
  = @252
  IF ~~ THEN REPLY @253 GOTO LE#LichM
  IF ~~ THEN REPLY @254 GOTO LE#LichN
  IF ~~ THEN REPLY @255 GOTO LE#LichO
  IF ~~ THEN REPLY @256 GOTO 113
END

IF ~~ THEN BEGIN LE#LichD2
  SAY @257
  = @258
  IF ~~ THEN REPLY @259 GOTO 113
  IF ~~ THEN REPLY @260 GOTO LE#LichP
  IF ~~ THEN REPLY @261 GOTO 101
END

IF ~~ THEN BEGIN LE#LichD3
  SAY @262
  = @263
  IF ~~ THEN REPLY @264 GOTO LE#LichM
  IF ~~ THEN REPLY @265 GOTO 101
END

IF ~~ THEN BEGIN LE#LichD4
  SAY @266
  IF ~~ THEN REPLY @267 GOTO LE#LichO
  IF ~~ THEN REPLY @268 GOTO LE#LichQ
  IF ~~ THEN REPLY @269 GOTO LE#LichM
END

IF ~~ THEN BEGIN LE#LichM
  SAY @270
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#LichN
  SAY @271
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#LichO
  SAY @272
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN LE#LichP
  SAY @273
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LE#LichQ
  SAY @274
  IF ~~ THEN EXIT
END


IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",32)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 119 // from:
  SAY @275  /* #74493 */
  IF ~~ THEN REPLY @276 /* #74494 */ GOTO 120
  IF ~~ THEN REPLY @277 /* #74495 */ GOTO 101
END

IF ~~ THEN BEGIN 120 // from: 121.0 119.0
  SAY @278 /* #74496 */
  IF ~~ THEN REPLY @279 /* #74497 */ GOTO 117
  IF ~~ THEN REPLY @280 /* #74498 */ GOTO 123
  IF ~~ THEN REPLY @281 /* #74499 */ GOTO 131
  IF ~~ THEN REPLY @282 /* #74500 */ GOTO 135
  IF ~~ THEN REPLY @283 /* #74501 */ GOTO 139
  IF ~ReputationGT(Player1,11)~ THEN REPLY @284 /* #74502 */ GOTO 142
  IF ~ReputationLT(Player1,12)
     ReputationGT(Player1,8)~ THEN REPLY @284 /* #74502 */ GOTO 141
  IF ~~ THEN REPLY @285 /* #74503 */ GOTO 124
  //IF ~GlobalGT("TashiaRevelation","GLOBAL",0)
    //  Global("MentionedLich","GLOBAL",0)~ THEN REPLY ~You are not going to turn into a lich this time, are you?~ /* #74504 */ DO ~SetGlobal("MentionedLich","GLOBAL",1)~ GOTO 121
END

IF ~~ THEN BEGIN 121 // from: 120.8
  SAY @286 /* #75309 */
  IF ~~ THEN REPLY @287 /* #74506 */ GOTO 120
  IF ~~ THEN REPLY @288 /* #74507 */ GOTO 122
  IF ~~ THEN REPLY @289 /* #74508 */ GOTO 117
END

IF ~~ THEN BEGIN 122 // from: 121.1
  SAY @290 /* #74509 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 123 // from: 120.1
  SAY @291 /* #74510 */
  IF ~~ THEN REPLY @292 /* #74511 */ GOTO 128
  IF ~~ THEN REPLY @293 /* #74512 */ GOTO 129
  IF ~~ THEN REPLY @294 /* #74513 */ GOTO 130
END

IF ~~ THEN BEGIN 124 // from: 120.7
  SAY @295 /* #74514 */
  IF ~~ THEN REPLY @296 /* #74515 */ GOTO 125
  IF ~~ THEN REPLY @297 /* #74516 */ GOTO 126
  IF ~~ THEN REPLY @298 /* #74517 */ GOTO 127
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY @299 /* #74518 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",-2)~ GOTO 143
END

IF ~~ THEN BEGIN 126 // from: 124.1
  SAY @300 /* #75310 */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 127 // from: 124.2
  SAY @301 /* #74520 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ GOTO 143
END

IF ~~ THEN BEGIN 128 // from: 123.0
  SAY @302 /* #75311 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",-1)~ GOTO 143
END

IF ~~ THEN BEGIN 129 // from: 123.1
  SAY @303 /* #74522 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",-1)~ GOTO 143
END

IF ~~ THEN BEGIN 130 // from: 123.2
  SAY @304 /* #74523 */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 131 // from: 120.2
  SAY @305 /* #74524 */
  IF ~OR(2)
     CheckStatGT(Player1,11,WIS)
     CheckStatGT(Player1,11,INT)~ THEN REPLY @306 /* #74525 */ GOTO 132
  IF ~~ THEN REPLY @307 /* #74526 */ GOTO 134
  IF ~~ THEN REPLY @308 /* #74527 */ GOTO 133
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY @309 /* #74528 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ GOTO 143
END

IF ~~ THEN BEGIN 133 // from: 139.1 131.2
  SAY @310 /* #74529 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 134 // from: 131.1
  SAY @311 /* #74530 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ GOTO 143
END

IF ~~ THEN BEGIN 135 // from: 120.3
  SAY @312 /* #74531 */
  IF ~~ THEN REPLY @313 /* #74532 */ GOTO 136
  IF ~~ THEN REPLY @314 /* #74533 */ GOTO 137
  IF ~~ THEN REPLY @315 /* #74534 */ GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY @316 /* #74535 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",-2)~ GOTO 143
END

IF ~~ THEN BEGIN 137 // from: 135.1
  SAY @317 /* #74536 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",-1)~ GOTO 143
END

IF ~~ THEN BEGIN 138 // from: 135.2
  SAY @318 /* #74537 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",-2)~ GOTO 143
END

IF ~~ THEN BEGIN 139 // from: 120.4
  SAY @319 /* #75312 */
  IF ~~ THEN REPLY @320 /* #74539 */ GOTO 140
  IF ~~ THEN REPLY @321 /* #74540 */ GOTO 133
  IF ~ReputationLT(Player1,12)
      ReputationGT(Player1,8)~ THEN REPLY @322 /* #74541 */ GOTO 141
  IF ~ReputationGT(Player1,11)~ THEN REPLY @322 /* #74541 */ GOTO 142
  IF ~~ THEN REPLY @323 /* #74542 */ GOTO 140
END

IF ~~ THEN BEGIN 140 // from: 139.4 139.0
  SAY @324 /* #75313 */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 141 // from: 139.2 120.6
  SAY @325 /* #74544 */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 142 // from: 139.3 120.5
  SAY @326 /* #74545 */
  IF ~~ THEN DO ~IncrementGlobal("TashiaInterestMatch","GLOBAL",1)~ GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.0 141.0 140.0 138.0 137.0 136.0 134.0 132.0 130.0 129.0 128.0 127.0 126.0 125.0
  SAY @327
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY @328
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY @329 /* #74548 */
  IF ~~ THEN EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",34)
!StateCheck(Player1,STATE_SLEEPING)
GlobalLT("TashiaInterestMatch","GLOBAL",3)~ THEN BEGIN 146 // from:
  SAY @330  /* #74549 */
  IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.0
  SAY @331 /* #74550 */
  IF ~~ THEN REPLY @332 /* #40500 */ GOTO 148
  IF ~~ THEN REPLY @333 /* #74551 */ GOTO 151
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY @334 /* #74552 */
  IF ~~ THEN GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY @335 /* #74553 */
  IF ~~ THEN GOTO 150
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY @336 /* #74554 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 151 // from: 147.1
  SAY @337 /* #74555 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",34)
!StateCheck(Player1,STATE_SLEEPING)
GlobalGT("TashiaInterestMatch","GLOBAL",2)~ THEN BEGIN 152 // from:
  SAY @338  /* #74556 */
  IF ~~ THEN REPLY @339 /* #42810 */ GOTO 154
  IF ~~ THEN REPLY @277 /* #74495 */ GOTO 153
END

IF ~~ THEN BEGIN 153 // from: 152.1
  SAY @340 /* #74557 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 154 // from: 152.0
  SAY @341 /* #74558 */
  IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155 // from: 154.0
  SAY @342
  IF ~~ THEN REPLY @343 /* #74560 */ GOTO 156
END

IF ~~ THEN BEGIN 156 // from: 155.0
  SAY @344 /* #74561 */
  IF ~~ THEN REPLY @345 /* #74562 */ GOTO 157
  IF ~~ THEN REPLY @346 /* #75317 */ GOTO 158
END

IF ~~ THEN BEGIN 157 // from: 159.1 158.2 156.0
  SAY @347 /* #74564 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 158 // from: 156.1
  SAY @348 /* #74565 */
  IF ~~ THEN REPLY @349 /* #75318 */ GOTO 160
  IF ~~ THEN REPLY @350 /* #74566 */ GOTO 159
  IF ~~ THEN REPLY @351 /* #74567 */ GOTO 157
END

IF ~~ THEN BEGIN 159 // from: 158.1
  SAY @352 /* #74568 */
  IF ~~ THEN REPLY @353 /* #74569 */ GOTO 160
  IF ~~ THEN REPLY @354 /* #75319 */ GOTO 157
END

IF ~~ THEN BEGIN 160 // from: 159.0 158.0
  SAY @355 /* #75320 */
  IF ~~ THEN DO ~StartCutScene("Cuttas03")~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",36)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 161 // from:
  SAY @356  /* #75321 */
  IF ~~ THEN REPLY @357 /* #74573 */ GOTO 162
  IF ~~ THEN REPLY @358 /* #74574 */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.1 161.0
  SAY @359 /* #74575 */
  IF ~~ THEN REPLY @360 /* #75322 */ GOTO 163
  IF ~~ THEN REPLY @361 /* #74577 */ GOTO 164
  IF ~~ THEN REPLY @362 /* #74578 */ GOTO 165
END

IF ~~ THEN BEGIN 163 // from: 162.0
  SAY @363 /* #74579 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 164 // from: 162.1
  SAY @364 /* #74580 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 165 // from: 162.2
  SAY @365 /* #74581 */
  IF ~~ THEN EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",38)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 166 // from:
  SAY @366  /* #74582 */
  IF ~~ THEN REPLY @367 /* #74583 */ GOTO 167
  IF ~~ THEN REPLY @368 /* #74584 */ GOTO 168
  IF ~~ THEN REPLY @369 /* #74585 */ GOTO 169
  IF ~~ THEN REPLY @370 /* #74586 */ GOTO 171
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY @371 /* #74587 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 168 // from: 166.1
  SAY @372 /* #74588 */
  IF ~~ THEN REPLY @373 /* #74589 */ GOTO 172
END

IF ~~ THEN BEGIN 169 // from: 166.2
  SAY @374 /* #74590 */
  IF ~~ THEN REPLY @375 /* #74591 */ GOTO 170
END

IF ~~ THEN BEGIN 170 // from: 169.0
  SAY @376 /* #74592 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 171 // from: 166.3
  SAY @377 /* #74593 */
  IF ~~ THEN REPLY @373 /* #74589 */ GOTO 172
END

IF ~~ THEN BEGIN 172 // from: 171.0 168.0
  SAY @378 /* #74594 */
  IF ~~ THEN EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",40)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 173 // from:
  SAY @379  /* #74595 */
  IF ~~ THEN REPLY @380 /* #74596 */ GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY @381 /* #74597 */
  IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY @382 /* #74598 */
  IF ~~ THEN REPLY @383 /* #75323 */ GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY @384 /* #74600 */
  IF ~~ THEN REPLY @385 /* #8796 */ GOTO 177
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY @386 /* #74601 */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY @387 /* #74602 */
  IF ~~ THEN REPLY @388 /* #74603 */ GOTO 179
  IF ~~ THEN REPLY @389 /* #74604 */ GOTO 180
  IF ~~ THEN REPLY @390 /* #75324 */ GOTO 179
  IF ~~ THEN REPLY @391 /* #74606 */ GOTO 181
END

IF ~~ THEN BEGIN 179 // from: 178.2 178.0
  SAY @392 /* #74607 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 180 // from: 178.1
  SAY @393 /* #74608 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 181 // from: 178.3
  SAY @394 /* #74609 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",42)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 182 // from:
  SAY @395  /* #75325 */
  IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 183 // from: 182.0
  SAY @396 /* #74611 */
  IF ~~ THEN REPLY @397 /* #75326 */ GOTO 184
  IF ~~ THEN REPLY @398 /* #75327 */ GOTO 188
  IF ~~ THEN REPLY @399 /* #74614 */ GOTO 192
  IF ~~ THEN REPLY @400 /* #75328 */ GOTO 195
  IF ~~ THEN REPLY @401 /* #75329 */ GOTO 195
END

IF ~~ THEN BEGIN 184 // from: 183.0
  SAY @402 /* #74617 */
  IF ~~ THEN GOTO 185
END

IF ~~ THEN BEGIN 185 // from: 184.0
  SAY @403 /* #74618 */
  IF ~~ THEN GOTO 186
END

IF ~~ THEN BEGIN 186 // from: 185.0
  SAY @404 /* #74619 */
  IF ~~ THEN GOTO 187
END

IF ~~ THEN BEGIN 187 // from: 186.0
  SAY @405 /* #74620 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 188 // from: 183.1
  SAY @406 /* #74621 */
  IF ~~ THEN GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY @407 /* #74622 */
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY @408 /* #74623 */
  IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY @409 /* #74624 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 192 // from: 183.2
  SAY @410 /* #74625 */
  IF ~~ THEN GOTO 193
END

IF ~~ THEN BEGIN 193 // from: 192.0
  SAY @411 /* #74626 */
  IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY @412 /* #74627 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 195 // from: 183.4 183.3
  SAY @413 /* #74628 */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY @414 /* #75330 */
  IF ~~ THEN GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY @415 /* #74630 */
  IF ~~ THEN REPLY @416 /* #74631 */ GOTO 198
  IF ~~ THEN REPLY @417 /* #74632 */ GOTO 199
  IF ~~ THEN REPLY @418 /* #74633 */ GOTO 200
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY @419 /* #74634 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 199 // from: 197.1
  SAY @420 /* #74635 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 200 // from: 197.2
  SAY @421 /* #74636 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",44)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 201 // from:
  SAY @422  /* #74637 */
  IF ~~ THEN REPLY @423 /* #73528 */ GOTO 204
  IF ~~ THEN REPLY @424 /* #74638 */ GOTO 204
  IF ~~ THEN REPLY @425 /* #20287 */ GOTO 202
END

IF ~~ THEN BEGIN 202 // from: 201.2
  SAY @426 /* #74639 */
  IF ~~ THEN REPLY @427 /* #74640 */ GOTO 203
  IF ~~ THEN REPLY @428 /* #74641 */ GOTO 204
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY @429 /* #74642 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN 204 // from: 202.1 201.1 201.0
  SAY @430 /* #74643 */
  IF ~~ THEN REPLY @431 /* #74644 */ GOTO 205
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY @432 /* #74645 */
  IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 206 // from: 205.0
  SAY @433 /* #74646 */
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY @434 /* #74647 */
  IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY @435 /* #74648 */
  IF ~~ THEN GOTO 209
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY @436 /* #74649 */
  IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 209.0
  SAY @437 /* #75331 */
  IF ~~ THEN GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY @438 /* #74651 */
  IF ~~ THEN GOTO 212
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY @439 /* #74652 */
  IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 213 // from: 212.0
  SAY @440 /* #74653 */
  IF ~~ THEN REPLY @441 /* #26991 */ DO ~SetGlobal("TashiaChange","GLOBAL",0)~ GOTO 214
  IF ~~ THEN REPLY @442 /* #74654 */ DO ~SetGlobal("TashiaChange","GLOBAL",0)~ GOTO 215
  IF ~~ THEN REPLY @443 /* #74655 */ DO ~SetGlobal("TashiaChange","GLOBAL",0)~ GOTO 217
  IF ~~ THEN REPLY @444 /* #74656 */ DO ~SetGlobal("TashiaChange","GLOBAL",0)~ GOTO 222
  IF ~~ THEN REPLY @445 /* #74657 */ DO ~SetGlobal("TashiaChange","GLOBAL",0)~ GOTO 217
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY @446 /* #74658 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 215 // from: 213.1
  SAY @447 /* #74659 */
  IF ~~ THEN REPLY @448 /* #74660 */ GOTO 216
  IF ~~ THEN REPLY @449 /* #74661 */ GOTO 217
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY @450 /* #74662 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 217 // from: 222.1 215.1 213.4 213.2
  SAY @451 /* #74663 */
  IF ~~ THEN REPLY @452 /* #74664 */ GOTO 218
  //IF ~GlobalLT("TashiaInterestMatch","GLOBAL",5)~ THEN REPLY @453 /* #74665 */ GOTO 219
  IF ~~ THEN REPLY @453 /* #74665 */ GOTO 220
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY @454 /* #74666 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 219 // from: 217.1
  SAY @455 /* #74667 */
  IF ~~ THEN DO ~ChangeAlignment("Tashia",NEUTRAL)~ EXIT
END

IF ~~ THEN BEGIN 220 // from: 217.2
  SAY @456 /* #74668 */
  IF ~~ THEN GOTO 221
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY @457 /* #74669 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 222 // from: 213.3
  SAY @458 /* #74670 */
  IF ~~ THEN REPLY @459 /* #74671 */ GOTO 223
  IF ~~ THEN REPLY @460 /* #74672 */ GOTO 217
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY @461 /* #74673 */
  IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~!Global("TashiaRomanceActive","GLOBAL",3)
Global("TashiaMatch","GLOBAL",1)
Global("LoveTalk","LOCALS",46)
!StateCheck(Player1,STATE_SLEEPING)~ THEN BEGIN 224 // from:
  SAY @462  /* #74674 */
  IF ~~ THEN REPLY @463 /* #21655 */ GOTO 225
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY @464 /* #74675 */
  IF ~~ THEN REPLY @465 /* #74676 */ GOTO 226
  IF ~~ THEN REPLY @466 /* #74677 */ GOTO 232
  IF ~~ THEN REPLY @467 /* #74678 */ GOTO 229
  IF ~~ THEN REPLY @468 /* #74679 */ GOTO 233
END

IF ~~ THEN BEGIN 226 // from: 232.0 225.1 225.0
  SAY @469 /* #74680 */
  IF ~~ THEN REPLY @470 /* #74681 */ GOTO 227
  IF ~~ THEN REPLY @471 /* #74682 */ GOTO 232
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY @472 /* #74683 */
  IF ~~ THEN REPLY @473 /* #74684 */ GOTO 228
  IF ~~ THEN REPLY @474 /* #74685 */ GOTO 228
  IF ~~ THEN REPLY @475 /* #74686 */ GOTO 228
END

IF ~~ THEN BEGIN 228 // from: 227.2 227.1 227.0
  SAY @476 /* #74687 */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 233.0 232.1 228.0 225.2
  SAY @477 /* #74688 */
  IF ~~ THEN REPLY @478 /* #74689 */ GOTO 230
  IF ~~ THEN REPLY @479 /* #74690 */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.1 229.0
  SAY @480 /* #75332 */
  IF ~~ THEN REPLY @481 /* #75333 */ GOTO 231
  IF ~~ THEN REPLY @482 /* #75334 */ GOTO 231
END

IF ~~ THEN BEGIN 231 // from: 230.1 230.0
  SAY @483 /* #74694 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 232 // from: 226.1
  SAY @484 /* #74695 */
  IF ~~ THEN REPLY @465 /* #74676 */ GOTO 226
  IF ~~ THEN REPLY @467 /* #74678 */ GOTO 229
  IF ~~ THEN REPLY @485 /* #74696 */ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 232.2 225.3
  SAY @486 /* #74697 */
  IF ~~ THEN GOTO 229
END

IF ~Global("YoshimoComment","LOCALS",1)~ THEN BEGIN 234 // from:
  SAY @487 /* #74698 */
  IF ~!InParty("Yoshimo")~ THEN DO ~SetGlobal("YoshimoComment","LOCALS",2)~ EXIT
  IF ~InParty("Yoshimo")~ THEN DO ~SetGlobal("YoshimoComment","LOCALS",2)~ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.1
  SAY @488 /* #74699 */
  IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY @489 /* #74700 */
  IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY @490 /* #74701 */
  IF ~~ THEN EXIT
END

IF ~Global("ImoenComment","LOCALS",1)~ THEN BEGIN 238 // from:
  SAY @491 /* #74702 */
  IF ~~ THEN REPLY @492 /* #74703 */ GOTO 241
END

IF ~Global("SuldanesselarComment","LOCALS",1)~ THEN BEGIN 239 // from:
  SAY @493 /* #74704 */
  IF ~~ THEN GOTO 240
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY @494 /* #74705 */
  IF ~~ THEN DO ~SetGlobal("SuldanesselarComment","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 241 // from: 238.0
  SAY @495 /* #74706 */
  IF ~~ THEN DO ~SetGlobal("ImoenComment","LOCALS",2)~ EXIT
END

IF ~Global("FishComment","LOCALS",1)~ THEN BEGIN 242 // from:
  SAY @496 /* #74707 */
  IF ~~ THEN GOTO 243
END

IF ~~ THEN BEGIN 243 // from: 242.0
  SAY @497 /* #74708 */
  IF ~~ THEN DO ~SetGlobal("FishComment","LOCALS",2)~ EXTERN ~JANJ~ 185a
END

IF ~~ THEN BEGIN 244 // from:
  SAY @498 /* #74709 */
  IF ~~ THEN EXIT
END

IF ~Global("NatureComment","LOCALS",1)~ THEN BEGIN 245 // from:
  SAY @499 /* #74710 */
  IF ~~ THEN DO ~SetGlobal("NatureComment","LOCALS",2)~ EXTERN ~JAHEIRAJ~ 461a
END

IF ~~ THEN BEGIN 246 // from:
  SAY @500 /* #74711 */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 462a
END

IF ~IsValidForPartyDialog("Edwin")
    Global("EdwinComment","LOCALS",0)~ THEN BEGIN 247 // from:
  SAY @501 /* #74712 */
  IF ~~ THEN DO ~SetGlobal("EdwinComment","LOCALS",1)~ EXTERN ~EDWINJ~ 106a
END

IF ~~ THEN BEGIN 248 // from:
  SAY @502 /* #74713 */
  IF ~~ THEN EXTERN ~EDWINJ~ 107a
END

IF ~~ THEN BEGIN 249 // from:
  SAY @503 /* #74714 */
  IF ~~ THEN EXTERN ~EDWINJ~ 108a
END

IF ~~ THEN BEGIN 250 // from:
  SAY @504 /* #74715 */
  IF ~~ THEN EXIT
END

IF ~IsValidForPartyDialog("Edwin")
    Global("EdwinComment","LOCALS",1)~ THEN BEGIN 251 // from:
  SAY @505 /* #74716 */
  IF ~~ THEN DO ~SetGlobal("EdwinComment","LOCALS",2)~ EXTERN ~EDWINJ~ 109a
END

IF ~~ THEN BEGIN 252 // from:
  SAY @506 /* #74717 */
  IF ~~ THEN EXTERN ~EDWINJ~ 110a
END

IF ~~ THEN BEGIN 253 // from:
  SAY @507 /* #74718 */
  IF ~~ THEN EXTERN ~EDWINJ~ 111a
END

IF ~~ THEN BEGIN 254 // from:
  SAY @508 /* #74719 */
  IF ~~ THEN EXTERN ~EDWINJ~ 112a
END

IF ~~ THEN BEGIN 255 // from:
  SAY @509 /* #74720 */
  IF ~~ THEN EXTERN ~EDWINJ~ 113a
END

IF ~~ THEN BEGIN 256 // from:
  SAY @510 /* #74721 */
  IF ~~ THEN EXTERN ~EDWINJ~ 114a
END

IF ~~ THEN BEGIN 257 // from:
  SAY @511 /* #74722 */
  IF ~~ THEN EXIT
END

IF ~IsValidForPartyDialog("Mazzy")
    Global("MazzyComment","LOCALS",0)~ THEN BEGIN 258 // from:
  SAY @512 /* #74723 */
  IF ~~ THEN DO ~SetGlobal("MazzyComment","LOCALS",1)~ EXTERN ~MAZZYJ~ 127a
END

IF ~~ THEN BEGIN 259 // from:
  SAY @513 /* #74724 */
  IF ~~ THEN EXTERN ~MAZZYJ~ 128a
END

IF ~IsValidForPartyDialog("Mazzy")
    Global("MazzyComment","LOCALS",1)~ THEN BEGIN 260 // from:
  SAY @514 /* #74725 */
  IF ~~ THEN DO ~SetGlobal("MazzyComment","LOCALS",2)~ EXTERN ~MAZZYJ~ 129a
END

IF ~~ THEN BEGIN 261 // from:
  SAY @515 /* #74726 */
  IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY @516 /* #74727 */
  IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 263 // from: 262.0
  SAY @517 /* #74728 */
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264 // from: 263.0
  SAY @518 /* #74729 */
  IF ~~ THEN GOTO 265
END

IF ~~ THEN BEGIN 265 // from: 264.0
  SAY @519 /* #74730 */
  IF ~~ THEN EXTERN ~MAZZYJ~ 130a
END

IF ~~ THEN BEGIN 266 // from:
  SAY @520 /* #74731 */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.0
  SAY @521 /* #74732 */
  IF ~~ THEN EXIT
END

IF ~IsValidForPartyDialog("Minsc")
    Global("MinscComment","LOCALS",0)~ THEN BEGIN 268 // from:
  SAY @522 /* #74733 */
  IF ~~ THEN DO ~SetGlobal("MinscComment","LOCALS",1)~ EXTERN ~MINSCJ~ 99a
END

IF ~~ THEN BEGIN 269 // from:
  SAY @523 /* #74734 */
  IF ~~ THEN EXTERN ~MINSCJ~ 100a
END

IF ~~ THEN BEGIN 270 // from:
  SAY @524 /* #74735 */
  IF ~~ THEN EXTERN ~MINSCJ~ 102a
END

IF ~~ THEN BEGIN 271 // from:
  SAY @525 /* #74736 */
  IF ~~ THEN EXIT
END

IF ~IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Cernd")
Global("kelcer","LOCALS",0)~ THEN BEGIN kelcer
  SAY @526
  IF ~~ THEN DO ~SetGlobal("kelcer","LOCALS",1)~ EXTERN ~KELDORJ~ kelcer1
END

IF ~~ THEN BEGIN ~kelcer2~
  SAY @527
  IF ~~ THEN EXIT
END

IF ~IsValidForPartyDialog("Cernd")
Global("CerndComment","LOCALS",0)~ THEN BEGIN cerndtalk
  SAY @528
  IF ~~ THEN DO ~SetGlobal("CerndComment","LOCALS",1)~ EXTERN ~CERNDJ~ cernd1
END

IF ~~ THEN BEGIN ~cernd2~
  SAY @527
  IF ~~ THEN EXIT
END

IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraBComment","LOCALS",0)~ THEN BEGIN jaheiraB
  SAY @529
  IF ~~ THEN DO ~SetGlobal("JaheiraBComment","LOCALS",1)~ EXTERN ~JAHEIRAJ~ jaheiraB1
END

IF ~IsValidForPartyDialog("Valygar")
Global("ValygarComment","LOCALS",0)~ THEN BEGIN valygartalk
  SAY @530
  IF ~~ THEN DO ~SetGlobal("ValygarComment","LOCALS",1)~ EXTERN ~VALYGARJ~ valygar1
END

IF ~~ THEN BEGIN 272 // from:
  SAY @531 /* #74737 */
  IF ~~ THEN EXTERN ~C6REGIS1~ 2
END

IF ~~ THEN BEGIN 273 // from:
  SAY @532 /* #74738 */
  IF ~~ THEN GOTO 274
END

IF ~~ THEN BEGIN 274 // from: 273.0
  SAY @533 /* #74739 */
  IF ~~ THEN REPLY @534 /* #74740 */ GOTO 275
  IF ~~ THEN REPLY @535 /* #74741 */ GOTO 275
  IF ~~ THEN REPLY @536 /* #74742 */ GOTO 275
END

IF ~~ THEN BEGIN 275 // from: 274.2 274.1 274.0
  SAY @537 /* #74743 */
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN 276 // from:
  SAY @538 /* #74744 */
  IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY @539 /* #74745 */
  IF ~~ THEN GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY @540 /* #74746 */
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 279 // from: 278.0
  SAY @541 /* #74747 */
  IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 280 // from: 279.0
  SAY @542 /* #74748 */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.0
  SAY @543 /* #74749 */
COPY_TRANS player1 33
END

IF ~~ THEN BEGIN salv3
  SAY @544
  IF ~~ THEN DO ~ActionOverride("Salvanas",EscapeArea())~ EXIT
END

IF ~~ THEN BEGIN fortune2
  SAY @545
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 282 // from:
  SAY @546 /* #74750 */
  COPY_TRANS HELLJON 7
END

IF ~~ THEN BEGIN add201
  SAY @547
  COPY_TRANS player1 17
END

IF ~~ THEN BEGIN add202
  SAY @548
  IF ~~ THEN REPLY @549 GOTO dizzy1
  IF ~~ THEN REPLY @550 GOTO dizzy2
  IF ~~ THEN REPLY @551 GOTO dizzy3
END

IF ~~ THEN BEGIN dizzy1
  SAY @552
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~~ THEN BEGIN dizzy2
  SAY @553
  IF ~~ THEN DO ~MoveToObject(Player1)~ EXIT
END

IF ~~ THEN BEGIN dizzy3
  SAY @554
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN add203
  SAY @555
    = @556
    = @557
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN add204
  SAY @558
  IF ~~ THEN REPLY @559 DO ~SetGlobal("EndangerLovedOne","GLOBAL",16)~ GOTO change1
  IF ~~ THEN REPLY @560 DO ~SetGlobal("EndangerLovedOne","GLOBAL",16)~ GOTO change1
  IF ~~ THEN REPLY @561 DO ~SetGlobal("EndangerLovedOne","GLOBAL",16)~ GOTO change1
END

IF ~~ THEN BEGIN change1
  SAY @562
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~ EXIT
END

IF ~~ THEN BEGIN endanger1
  SAY @563
    = @564
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN add205
  SAY @565
COPY_TRANS player1 25
END

//======================================

ADD_TRANS_TRIGGER player1 25 ~!IsValidForPartyDialog("Tashia")~
EXTEND_TOP player1 25 #1
  IF ~IsValidForPartyDialog("Tashia") Global("M#TashiTalkPlayer1_2","LOCALS",0)~ THEN DO ~SetGlobal("M#TashiTalkPlayer1_2","LOCALS",1)~ EXTERN ~btashia~ add205
END

EXTEND_TOP player1 10
  IF ~Global("EndangerLovedOne","GLOBAL",16)
IsValidForPartyDialog("Tashia")~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXTERN ~btashia~ endanger1
END

EXTEND_TOP player1 10
  IF ~Global("EndangerLovedOne","GLOBAL",16)
!IsValidForPartyDialog("Tashia")~ THEN DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXTERN ~player1~ 12
END

EXTEND_TOP player1 7
  IF ~OR(2)
Global("TashiaRomanceActive","GLOBAL",1)
Global("TashiaRomanceActive","GLOBAL",2)
IsValidForPartyDialog("Tashia")~ THEN EXTERN ~btashia~ add204
END

ADD_TRANS_TRIGGER c6bruen1 7 ~!IsValidForPartyDialog("Tashia")~
EXTEND_BOTTOM c6bruen1 7
  IF ~IsValidForPartyDialog("Tashia")~ THEN EXTERN ~BTASHIA~ 272
END

ADD_TRANS_TRIGGER player1 5 ~!IsValidForPartyDialog("Tashia")~
EXTEND_TOP player1 5 #1
  IF ~IsValidForPartyDialog("Tashia")~ THEN EXTERN ~btashia~ add203
END

ADD_TRANS_TRIGGER player1 3 ~!IsValidForPartyDialog("Tashia")~
EXTEND_TOP player1 3 #1
  IF ~IsValidForPartyDialog("Tashia")~ THEN DO ~SetGlobal("SelfTalk","GLOBAL",2)~ EXTERN ~btashia~ add202
END

ADD_TRANS_TRIGGER player1 16 ~!IsValidForPartyDialog("Tashia")~
EXTEND_TOP player1 16 #1
  IF ~IsValidForPartyDialog("Tashia") Global("M#TashiTalkPlayer1_3","LOCALS",0)~ THEN DO ~SetGlobal("M#TashiTalkPlayer1_3","LOCALS",1) SetGlobal("IrenicusBeat","AR2806",2)
SetGlobal("HadPeopleBeforeHell","LOCALS",1)~ EXTERN ~btashia~ add201
END

EXTEND_BOTTOM player1 33
  IF ~IsValidForPartyDialog("Tashia") !Global("TashiaRomanceActive","GLOBAL",2) Global("M#TashiTalkPlayer1_1","LOCALS",0)~ THEN DO ~SetGlobal("M#TashiTalkPlayer1_1","LOCALS",1)~ EXTERN ~player1~ add1
END

EXTEND_BOTTOM player1 33
  IF ~IsValidForPartyDialog("Tashia") Global("TashiaRomanceActive","GLOBAL",2) Global("M#TashiTalkPlayer1_5","LOCALS",0)~ THEN DO ~SetGlobal("M#TashiTalkPlayer1_5","LOCALS",1)~ EXTERN ~player1~ add3
END

ADD_TRANS_TRIGGER helljon 7 ~!IsValidForPartyDialog("Tashia")~
EXTEND_TOP helljon 7 #1
  IF ~IsValidForPartyDialog("Tashia") Global("M#TashiTalkPlayer1_4","LOCALS",0)~ THEN DO ~SetGlobal("M#TashiTalkPlayer1_4","LOCALS",1)~ EXTERN ~BTASHIA~ 282
END

CHAIN ~KELDORJ~ kelcer1
  @158
  == ~BTASHIA~  @567
  == ~CERNDJ~   @568
  == ~BTASHIA~  @569
  == ~KELDORJ~  @570
  == ~BTASHIA~  @571
              = @572
  == ~CERNDJ~   @573
  == ~BTASHIA~  @574
              = @575
              = @576
              = @577
  == ~KELDORJ~ @578
  == ~BTASHIA~  @579
  == ~CERNDJ~   @580
  == ~BTASHIA~  @581
END ~BTASHIA~ kelcer2

CHAIN
IF ~IsValidForPartyDialog("Nalia") Global("NaliaTalk","LOCALS",0) TimeGT(DUSK_START) TimeLT(DAWN_END) AreaType(OUTDOOR)~
THEN BTASHIA NaliaTashiaBanter
@582 DO ~SetGlobal("NaliaTalk","LOCALS",1)~
== BNALIA @583
== BTASHIA @584
== BNALIA  @585
== BTASHIA @586
== BNALIA  @587
== BTASHIA @588
= @589
= @590
== BNALIA  @591
== BTASHIA @592
== BNALIA  @593
== BTASHIA @594
= @595
= @596
= @597
= @598
== BNALIA  @599
== BTASHIA @600
== BNALIA  @601
== BTASHIA @602
== BNALIA @603
EXIT

CHAIN ~CERNDJ~ cernd1
  @568
  == ~BTASHIA~ @604
             = @605
  == ~CERNDJ~  @606
  == ~BTASHIA~ @607
             = @608
  == ~CERNDJ~  @609
  == ~BTASHIA~ @610
END ~BTASHIA~ cernd2

CHAIN ~JAHEIRAJ~ jaheiraB1
  @1
  == ~BTASHIA~  @611
  == ~JAHEIRAJ~ @612
  == ~BTASHIA~  @613
  == ~JAHEIRAJ~ @614
              = @615
              = @616
              = @617
              = @618
              = @619
              = @620
  == ~BTASHIA~  @621
              = @622
              = @623
  == ~JAHEIRAJ~ @624
  == ~BTASHIA~  @625
  == ~JAHEIRAJ~ @626
  == ~BTASHIA~  @627
  == ~JAHEIRAJ~ @628
  == ~BTASHIA~  @629
END ~JAHEIRAJ~ jaheiraB2

APPEND ~JAHEIRAJ~
  IF ~~ THEN BEGIN ~jaheiraB2~
    SAY @630
    IF ~~ THEN EXIT
  END
END

CHAIN ~VALYGARJ~ valygar1
  @631
  == ~BTASHIA~  @632
              = @633
              = @634
  == ~VALYGARJ~ @635
  == ~BTASHIA~  @636
END ~VALYGARJ~ valygar2

APPEND ~VALYGARJ~
  IF ~~ THEN BEGIN ~valygar2~
    SAY @637
    IF ~~ THEN EXIT
  END
END

APPEND ~SALVANAS~
  IF ~!InPartySlot(LastTalkedToBy,0)
Name("Tashia",LastTalkedToBy)~ THEN BEGIN salv1
    SAY @638
    IF ~~ THEN EXTERN ~TASHIAJ~ salv2
  END
END

CHAIN ~TASHIAJ~ salv2
  @639
  == ~SALVANAS~ @640
  == ~TASHIAJ~  @641
  == ~SALVANAS~ @642
END ~BTASHIA~ salv3

EXTEND_BOTTOM TRGYP02 2
  IF ~!InPartySlot(LastTalkedToBy,0)
Name("Tashia",LastTalkedToBy)~ THEN EXTERN ~TRGYP02~ fortune1
END

APPEND ~TRGYP02~
  IF ~~ THEN BEGIN fortune1
    SAY @643
    IF ~~ THEN EXTERN ~BTASHIA~ fortune2
  END
END

APPEND ~JANJ~
  IF ~~ THEN BEGIN 185a
     SAY @644 =
         @645 =
         @646 =
         @647 =
         @648 =
         @649 =
         @650
     IF ~~ THEN EXTERN BTASHIA 244
  END
END

APPEND ~JAHEIRAJ~
  IF ~~ THEN BEGIN 461a
    SAY @651
    IF ~~ THEN EXTERN BTASHIA 246
  END

  IF ~~ THEN BEGIN 462a
    SAY @652
    IF ~~ THEN EXIT
  END
END

APPEND ~EDWINJ~
  IF ~~ THEN BEGIN 106a
    SAY @653
    IF ~~ THEN EXTERN BTASHIA 248
  END

  IF ~~ THEN BEGIN 107a
    SAY @654
    IF ~~ THEN EXTERN BTASHIA 249
  END

  IF ~~ THEN BEGIN 108a
    SAY @655
    IF ~~ THEN EXTERN BTASHIA 250
  END

  IF ~~ THEN BEGIN 109a
    SAY @656
    IF ~~ THEN EXTERN BTASHIA 252
  END

  IF ~~ THEN BEGIN 110a
    SAY @657
    IF ~~ THEN EXTERN BTASHIA 253
  END

  IF ~~ THEN BEGIN 111a
    SAY @658
    IF ~~ THEN EXTERN BTASHIA 254
  END

  IF ~~ THEN BEGIN 112a
    SAY @659
    IF ~~ THEN EXTERN BTASHIA 255
  END

  IF ~~ THEN BEGIN 113a
    SAY @660
    IF ~~ THEN EXTERN BTASHIA 256
  END

  IF ~~ THEN BEGIN 114a
    SAY @661
    IF ~~ THEN EXTERN BTASHIA 257
  END
END

APPEND ~MAZZYJ~
  IF ~~ THEN BEGIN 127a
    SAY @662
    IF ~~ THEN EXTERN BTASHIA 259
  END

  IF ~~ THEN BEGIN 128a
    SAY @663
    IF ~~ THEN EXIT
  END

  IF ~~ THEN BEGIN 129a
    SAY @664
    IF ~~ THEN EXTERN BTASHIA 261
  END

  IF ~~ THEN BEGIN 130a
    SAY @665
    IF ~~ THEN EXTERN BTASHIA 266
  END
END

APPEND ~MINSCJ~
  IF ~~ THEN BEGIN 99a
    SAY @666
    IF ~~ THEN EXTERN BTASHIA 269
  END

  IF ~~ THEN BEGIN 100a
    SAY @667
    IF ~~ THEN EXTERN MINSCJ 101a
  END

  IF ~~ THEN BEGIN 101a
    SAY @668
    IF ~~ THEN EXTERN BTASHIA 270
  END

  IF ~~ THEN BEGIN 102a
    SAY @669
    IF ~~ THEN EXTERN MINSCJ 103a
  END

  IF ~~ THEN BEGIN 103a
    SAY @670
    IF ~~ THEN EXTERN BTASHIA 271
  END
END

APPEND player1
  IF ~~ THEN BEGIN add1
    SAY @671
    IF ~~ THEN REPLY @672 EXTERN BTASHIA 273
    IF ~~ THEN REPLY @673 EXTERN BTASHIA 273
    IF ~~ THEN REPLY @674 EXTERN BTASHIA 273
  END

  IF ~~ THEN BEGIN add3
    SAY @676
    IF ~~ THEN EXTERN ~BTASHIA~ 276
  END
END

EXTEND_TOP UDPHAE01 106
  IF ~OR(2)
Global("TashiaRomanceActive","GLOBAL",1)
Global("TashiaRomanceActive","GLOBAL",2)~ THEN REPLY @677 EXTERN UDPHAE01 110
END
