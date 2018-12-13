CHAIN
IF ~InParty("Tashia") Global("LE#TashiaOrionaInterject","GLOBAL",0)~ THEN ORIONA LE#TashiaOrianaInterject
@0 DO ~SetGlobal("LE#TashiaOrionaInterject","GLOBAL",1)~
== BTASHIA @1
== BTASHIA @2
EXIT

CHAIN
IF ~InParty("Tashia") Global("LE#TashiaPehllusInterject","GLOBAL",0)~ THEN PEHLLUS LE#TashiaPhellusInterject
@3 DO ~SetGlobal("LE#TashiaPehllusInterject","GLOBAL",1)~
== BTASHIA @4
== PEHLLUS @5
== BTASHIA @6
EXIT

// Belmin Gergas dialogue 1

APPEND BELMIN
IF ~InParty("Tashia") InMyArea("Tashia") !Dead("Tashia") Global("LE#TashiaBelmin","GLOBAL",0)~
THEN BEGIN LE#BelminTashia
SAY @27
IF ~~ THEN EXTERN BTASHIA LE#BelminTashia
END

IF ~Global("LE#TashiaBelmin","GLOBAL",2)~ THEN BEGIN LE#BelminTashia2
SAY @69
IF ~~ THEN DO ~EscapeArea()~ EXTERN BTASHIA LE#BTP3
END

END

CHAIN
IF ~~ THEN BTASHIA LE#BelminTashia
@28 DO ~SetGlobal("LE#TashiaBelmin","GLOBAL",1)~
== BELMIN @29
== BTASHIA @30
== BELMIN @31
EXTERN BTASHIA LE#BelminTashiaPlayer

APPEND BTASHIA

IF ~~ THEN BEGIN LE#BelminTashiaPlayer
   SAY @32
   IF ~~ THEN REPLY @33 GOTO LE#BTP1
   IF ~~ THEN REPLY @34 GOTO LE#BTP2
   IF ~~ THEN REPLY @35 DO ~SetGlobal("LE#TashiaBelmin","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("LE#cstb1")~ EXIT
//   IF ~ActionOverride(Player1,HaveSpell(WIZARD_POLYMORPH_OTHER))~ THEN DO ~SetGlobal("LE#TashiaBelmin","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("LE#cstb2")~ EXIT
END

IF ~~ THEN BEGIN LE#BTP1
   SAY @37
   IF ~~ THEN REPLY @34 GOTO LE#BTP2
   IF ~~ THEN REPLY @35 DO ~SetGlobal("LE#TashiaBelmin","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("LE#cstb1")~ EXIT
//   IF ~ActionOverride(Player1,HaveSpell(WIZARD_POLYMORPH_OTHER))~ THEN DO ~SetGlobal("LE#TashiaBelmin","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("LE#cstb2")~ EXIT
END

IF ~~ THEN BEGIN LE#BTP2
   SAY @38
   IF ~~ THEN EXIT
END

IF ~Global("LE#TashiaBelmin","GLOBAL",2)~ THEN BEGIN LE#BTP3
   SAY @39
   IF ~~ THEN DO ~SetGlobalTimer("LE#TashiaBelminCowledTimer","GLOBAL",ONE_DAY) SetGlobal("LE#TashiaBelmin","Global",4)~ EXIT
END

IF ~Global("LE#TashiaBelmin","GLOBAL",3)~ THEN BEGIN LE#BTP4
   SAY @40
   IF ~~ THEN DO ~SetGlobalTimer("LE#TashiaBelminCowledTimer","GLOBAL",ONE_DAY) SetGlobal("LE#TashiaBelmin","Global",4)~ EXIT
END

END

// Belmin Gergas - Cowled situation
BEGIN ~LE#BEL~

CHAIN
IF ~Global("LE#TashiaBelmin","GLOBAL",5)~ THEN LE#BEL LE#BelminCowled
@41
== LE#COWD @42
== LE#BEL @43
EXTERN LE#COWD LE#CowledStart

BEGIN ~LE#COWD~

IF ~~ THEN BEGIN LE#CowledStart
   SAY @44
   IF ~Global("BribedCowled","GLOBAL",1)~ THEN REPLY @45 GOTO LE#CowledMember
   IF ~Global("BribedCowled","GLOBAL",0) GlobalGT("PCSphere","GLOBAL",0)~ THEN REPLY @45 GOTO LE#CowledMember
   IF ~Global("BribedCowled","GLOBAL",0) Global("PCSphere","GLOBAL",0)~ THEN REPLY @45 GOTO LE#CowledNotMember
   IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY @52 GOTO LE#CowledBribeSuccess
   IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY @52 GOTO LE#CowledBribeFailure
   IF ~~ THEN REPLY @56 GOTO LE#CowledTashia
   IF ~~ THEN REPLY @63 GOTO LE#CowledReason
END

IF ~~ THEN BEGIN LE#CowledMember
   SAY @46
   IF ~~ THEN DO ~SetGlobal("LE#TashiaBelmin","GLOBAL",6) ActionOverride("LE#BELMIN",EscapeArea()) ForceSpell(Myself,WIZARD_DIMENSION_DOOR) Wait(1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN LE#CowledNotMember
   SAY @47
   IF ~PartyGoldGT(4999)~ THEN REPLY @48 DO ~TakePartyGold(5000)~ GOTO LE#CNMPaid
   IF ~~ THEN REPLY @49 GOTO LE#CowledIntervention
END

IF ~~ THEN BEGIN LE#CNMPaid
   SAY @50
   IF ~~ THEN DO ~SetGlobal("LE#TashiaBelmin","GLOBAL",6)  ActionOverride("LE#BELMIN",EscapeArea()) ForceSpell(Myself,WIZARD_DIMENSION_DOOR) Wait(1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN LE#CowledIntervention
   SAY @51
   IF ~~ THEN DO ~SetGlobal("LE#TashiaBelmin","GLOBAL",7) ActionOverride("LE#BELMIN",EscapeArea()) CreateCreatureObject("COWENF1",Myself,0,0,0) CreateCreatureObject("COWENF4",Myself,0,0,0) CreateCreatureObject("COWENF3",Myself,0,0,0) Enemy()~ EXIT
END

IF ~~ THEN BEGIN LE#CowledBribeFailure
   SAY @53
   IF ~PartyGoldGT(7499)~ THEN REPLY @48 DO ~TakePartyGold(7500)~ GOTO LE#CNMPaid
   IF ~~ THEN REPLY @49 GOTO LE#CowledIntervention
END

IF ~~ THEN BEGIN LE#CowledBribeSuccess
   SAY @54
   IF ~PartyGoldGT(999)~ THEN REPLY @48 DO ~TakePartyGold(1000)~ GOTO LE#CNMPaid
   IF ~~ THEN REPLY @49 GOTO LE#CowledNotBribed
END

IF ~~ THEN BEGIN LE#CowledNotBribed
   SAY @55
   IF ~~ THEN DO ~ActionOverride("LE#Belmin",EscapeArea()) SetGlobal("LE#TashiaBelmin","GLOBAL",7) CreateCreatureObject("COWENF1",Myself,0,0,0) CreateCreatureObject("COWENF4",Myself,0,0,0) CreateCreatureObject("COWENF3",Myself,0,0,0) Enemy()~ EXIT
END

IF ~~ THEN BEGIN LE#CowledTashia
   SAY @57
   IF ~PartyGoldGT(3999)~ THEN REPLY @58 DO ~TakePartyGold(4000)~ GOTO LE#CNMPaid
   IF ~~ THEN REPLY @59 GOTO LE#CowledTakeTashia
   IF ~~ THEN REPLY @60 GOTO LE#CowledIntervention
END

IF ~~ THEN BEGIN LE#CowledTakeTashia
   SAY @61
   IF ~~ THEN EXTERN BTASHIA LE#CowledTakeTashia
END

IF ~~ THEN BEGIN LE#CowledReason
   SAY @64
   IF ~~ THEN REPLY @65 GOTO LE#CowledReasonSuccess
   IF ~~ THEN REPLY @66 GOTO LE#CowledReasonFailure
END

IF ~~ THEN BEGIN LE#CowledReasonSuccess
   SAY @67
   IF ~~ THEN DO ~SetGlobal("LE#TashiaBelmin","GLOBAL",6) ActionOverride("LE#BELMIN",EscapeArea()) ForceSpell(Myself,WIZARD_DIMENSION_DOOR) Wait(1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN LE#CowledReasonFailure
   SAY @68
   IF ~PartyGoldGT(9999)~ THEN REPLY @48 DO ~TakePartyGold(10000)~ GOTO LE#CNMPaid
   IF ~~ THEN REPLY @49 GOTO LE#CowledIntervention
END


APPEND BTASHIA

IF ~~ THEN BEGIN LE#CowledTakeTashia
   SAY @62
   IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) LeaveParty() ActionOverride("LE#Belmin",EscapeArea()) ActionOverride("LE#Cowled",MoveToObjectNoInterrupt("Tashia")) ActionOverride("LE#Cowled",ForceSpell("Tashia",WIZARD_DIMENSION_DOOR) Wait(3) ActionOverride("LE#Cowled",Wait(1)) ActionOverride("LE#Cowled",DestroySelf()) DestroySelf()~  EXIT
END
END

// Prostitute in ToB: Dialogue Reference = SARPRO01

ADD_TRANS_TRIGGER ~SARPRO01~ 11
 ~!Global("TashiaRomanceActive","GLOBAL",2)~ DO 0
 
EXTEND_BOTTOM ~SARPRO01~ 11
IF ~Global("TashiaRomanceActive","GLOBAL",2)~ THEN REPLY @7 EXTERN BTASHI25 LE#ProstituteInterject
END

APPEND BTASHI25

  IF ~~ THEN BEGIN LE#ProstituteInterject
     SAY @8
     IF ~~ THEN REPLY @9 DO ~SetGlobal("LE#TashiaProstituteLeave","GLOBAL",1)~ EXTERN SARPRO01 12
     IF ~~ THEN REPLY @10 GOTO LE#ProstituteInterject2
  END

  IF ~~ THEN BEGIN LE#ProstituteInterject2
     SAY @11 
	  IF ~~ THEN EXTERN SARPRO01 3
  END


  IF WEIGHT #0 ~Global("LE#TashiaProstituteLeave","GLOBAL",2)~ THEN BEGIN LE#ProstituteLeave
     SAY @12
     = @13
     IF ~~ THEN DO ~SetGlobal("TashiaRomanceActive","GLOBAL",3) GivePartyAllEquipment() LeaveParty() ForceSpell(Player1,ONE_CON) EscapeArea()~ EXIT
  END
END


INTERJECT_COPY_TRANS AERIE 30 LE#AerieInterject
== BTASHIA IF ~InParty("Tashia")~ THEN @14
END

// Skinner Interject
APPEND BTASHIA
  IF ~Global("LE#TashiaSkinnerInterject","GLOBAL",1)~ THEN BEGIN LE#SkinnerInterject
     SAY @15
     = @16
     IF ~~ THEN DO ~SetGlobal("LE#TashiaSkinnerInterject","GLOBAL",2)~ EXIT
  END
END

// The Hidden stuff
INTERJECT_COPY_TRANS2 HIDDEN 13 LE#HiddenInterject
== BTASHIA IF ~InParty("Tashia")~ THEN @17
== BNALIA IF ~InParty("Tashia") InParty("Nalia")~ THEN @18
= IF ~InParty("Nalia") InParty("Tashia")~ @19
== BVALYGA IF ~InParty("Valygar") InParty("Tashia")~ THEN @20
END

// Carston Interjection
INTERJECT_COPY_TRANS GORCAR 7 LE#TashiaCarstonInterject
== BTASHIA IF ~ Global("IllaseraSpawn","GLOBAL",0) InParty("Tashia")~ THEN @21
= IF ~Global("IllaseraSpawn","GLOBAL",0) InParty("Tashia")~ THEN @22
END

INTERJECT_COPY_TRANS GORCAR 7 LE#TashiaCarstonInterject
== BTASHI25 IF ~Global("IllaseraSpawn","GLOBAL",1) InParty("Tashia")~ THEN @21
= IF ~Global("IllaseraSpawn","GLOBAL",1) InParty("Tashia")~ THEN @22
END

// Korgan
INTERJECT_COPY_TRANS KORGANJ 16 LE#KorganInterject
== BTASHIA IF ~InParty("Tashia")~ THEN @23
== KORGANJ IF ~InParty("Tashia")~ THEN @24
END

// Solamnian Knights
INTERJECT_COPY_TRANS OBSSOL01 11 LE#SolamnianInterject
== BTASHIA IF ~InParty("Tashia")~ THEN @25
== BMINSC IF ~InParty("Minsc") InParty("Tashia")~ THEN @26
END

// Yoshimo Betrayal interject

INTERJECT_COPY_TRANS YOSHJ 113 LE#TashiaYoshimoInterject
== BTASHIA IF ~InParty("Tashia")~ THEN @70
END
