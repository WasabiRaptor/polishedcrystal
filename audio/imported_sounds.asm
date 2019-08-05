pcm: MACRO
    dw .End - .Start
.Start
\1
.End:
ENDM

SECTION "HMS Laugh", ROMX ; Bank $??

HMSLaugh::
    pcm INCBIN "audio/imported_sounds/hms_laugh.pcm"
    db $77


SECTION "Wind 1", ROMX

Wind1::
    pcm INCBIN "audio/imported_sounds/wind1.pcm"
    db $77


SECTION "Wind 2", ROMX

Wind2::
    pcm INCBIN "audio/imported_sounds/wind2.pcm"
    db $77
