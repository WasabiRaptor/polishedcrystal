; Time constants
ENCOUNTER_TIME_MASK EQU %11110000
DEFAULT_TIMES   EQU %00000000
MORN_ONLY       EQU %10000000
DAY_ONLY        EQU %01000000
DUSK_ONLY       EQU %00100000
NIGHT_ONLY      EQU %00010000
ALL_TIMES       EQU %11110000

; Percent constants
WILD_PERCENT_MASK EQU %00001111
    const_def
    const WILD_1P   ;0
    const WILD_4P   ;1
    const WILD_5P   ;2
    const WILD_9P   ;3
    const WILD_10P  ;4
    const WILD_15P  ;5
    const WILD_20P  ;6
    const WILD_25P  ;7
    const WILD_30P  ;8
    const WILD_35P  ;9
    const WILD_40P  ;10
    const WILD_45P  ;11
    const WILD_50P  ;12
    const WILD_60P  ;13
    const WILD_75P  ;14
    const WILD_100P ;15

WILD_LVL_OVER_MASK  EQU %10000000
WILD_LVL_OVER       EQU %10000000
WILD_LVL_OFF        EQU %00000000

WILD_LVL_MASK       EQU %01111111

    const_def
    shift_const WILD_NO_NVE         ;0
    shift_const WILD_DO_SE          ;1
WILD_TYPESMART  EQU WILD_NO_NVE | WILD_DO_SE
    shift_const WILD_OVERBUFF       ;2
    shift_const WILD_EQUAL_BUFFS    ;3
WILD_BUFFSMART  EQU WILD_OVERBUFF | WILD_EQUAL_BUFFS
    shift_const WILD_STATUS         ;4
    shift_const WILD_HEAL           ;5
WILD_MOVESMART  EQU WILD_STATUS | WILD_HEAL
    shift_const WILD_6              ;6
    shift_const WILD_7              ;7
