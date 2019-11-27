importsound_def: MACRO
\1_id:: dba \1
endm

dimportsound: MACRO
    db (\1_id - ImportedSoundsPointerTable) / 3
    endm

ldimportsound: MACRO
    ld \1, (\2_id - ImportedSoundsPointerTable) / 3
    ENDM

importsound: MACRO
    ldimportsound a, \1
    endm
    