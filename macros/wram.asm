flag_array: MACRO
	ds ((\1) + 7) / 8
ENDM

box_struct: MACRO
\1Group::          ds 1 ; one next to the other so we can just inc hl to the next
\1Species::        ds 1
\1Item::           ds 1
\1Mood::           ds 1
\1Moves::          ds NUM_MOVES
\1PPUp::
\1MovesHigh::      ds NUM_MOVES
\1ID::             ds 2
\1Exp::            ds 3
\1EVs::
\1HPEV::           ds 1
\1AtkEV::          ds 1
\1DefEV::          ds 1
\1SpdEV::          ds 1
\1SatEV::          ds 1
\1SdfEV::          ds 1
\1DVs::
\1HPAtkDV::        ds 1
\1DefSpdDV::       ds 1
\1SatSdfDV::       ds 1
\1Personality::
\1Shiny::
\1Ability::
\1Nature::         ds 1
\1Gender::
\1IsEgg::
\1IsDead::
\1Form::           ds 1
\1Happiness::      ds 1
\1PokerusStatus::  ds 1
\1CaughtData::
\1CaughtGender::
\1CaughtTime::
\1CaughtBall::     ds 1
\1CaughtLevel::    ds 1
\1CaughtLocation:: ds 1
\1Level::          ds 1
\1Status::         ds 1
\1CurPP::          ds NUM_MOVES ; once curPP is moved to the party struct, the box struct can use these bytes for a move's group, they're already using two bits for PP up so even with curpp they would still be needed
\1HP::             ds 2
\1End::
ENDM

party_struct: MACRO
	box_struct \1
\1MaxHP::          ds 2
\1Stats:: ; big endian
\1Attack::         ds 2
\1Defense::        ds 2
\1Speed::          ds 2
\1SpclAtk::        ds 2
\1SpclDef::        ds 2
\1StatsEnd::
ENDM

battle_struct: MACRO
\1Group::          ds 1
\1Species::        ds 1
\1Item::           ds 2
\1Moves::          ds NUM_MOVES
\1PPUp::
\1MovesHigh::      ds NUM_MOVES
; Mon capture assumes personality comes after DVs
\1DVs::
\1HPAtkDV::        ds 1
\1DefSpdDV::       ds 1
\1SatSdfDV::       ds 1
\1Personality::
\1Shiny::
\1Ability::
\1Nature::         ds 1
\1Gender::
\1IsEgg::
\1IsDead::
\1Form::           ds 1
\1Happiness::      ds 1
\1Level::          ds 1
\1Status::         ds 1
\1CurPP::          ds NUM_MOVES ; once curPP is moved to the party struct, the box struct can use these bytes for a move's group, they're already using two bits for PP up so even with curpp they would still be needed
\1HP::             ds 2
\1MaxHP::          ds 2
\1Stats:: ; big endian
\1Attack::         ds 2
\1Defense::        ds 2
\1Speed::          ds 2
\1SpclAtk::        ds 2
\1SpclDef::        ds 2
\1StatsEnd::
\1Type::
\1Type1::          ds 1
\1Type2::          ds 1
\1StructEnd::
ENDM

box: MACRO
\1::
\1Count::           ds 1
\1Species::         ds MONS_PER_BOX + 1
\1Mons::
\1Mon1::            box_struct \1Mon1
\1Mon2::            ds BOXMON_STRUCT_LENGTH * (MONS_PER_BOX +- 1)
\1MonOT::           ds PLAYER_NAME_LENGTH * MONS_PER_BOX
\1MonNicknames::    ds PKMN_NAME_LENGTH * MONS_PER_BOX
\1MonNicknamesEnd::
\1End::             ds 2 ; padding
ENDM


channel_struct: MACRO
; Addreses are wChannel1 (c101).
\1MusicID::           ds 2
\1MusicBank::         ds 1
\1Flags::             ds 1 ; 0:on/off 1:subroutine 3:sfx 4:noise 5:rest
\1Flags2::            ds 1 ; 0:vibrato on/off 2:duty 4:cry pitch
\1Flags3::            ds 1 ; 0:vibrato up/down
\1MusicAddress::      ds 2
\1LastMusicAddress::  ds 2
                      ds 2
\1NoteFlags::         ds 1 ; 5:rest
\1Condition::         ds 1 ; conditional jumps
\1DutyCycle::         ds 1 ; bits 6-7 (0:12.5% 1:25% 2:50% 3:75%)
\1Intensity::         ds 1 ; hi:pressure lo:velocity
\1Frequency:: ; 11 bits
\1FrequencyLo::       ds 1
\1FrequencyHi::       ds 1
\1Pitch::             ds 1 ; 0:rest 1-c:note
\1Octave::            ds 1 ; 7-0 (0 is highest)
\1PitchOffset::       ds 1 ; raises existing octaves (to repeat phrases)
\1NoteDuration::      ds 1 ; frames remaining for the current note
\1Field0x16::         ds 1 ; c117
                      ds 1 ; c118
\1LoopCount::         ds 1
\1Tempo::             ds 2
\1Tracks::            ds 1 ; hi:left lo:right
\1SFXDutyLoop::       ds 1 ; c11d
\1VibratoDelayCount:: ds 1 ; initialized by \1VibratoDelay
\1VibratoDelay::      ds 1 ; number of frames a note plays until vibrato starts
\1VibratoExtent::     ds 1
\1VibratoRate::       ds 1 ; hi:frames for each alt lo:frames to the next alt
\1PitchWheelTarget::  ds 2 ; frequency endpoint for pitch wheel
\1PitchWheelAmount::  ds 1 ; c124
\1PitchWheelAmountFraction:: ds 1 ; c125
\1Field0x25::         ds 1 ; c126
                      ds 1 ; c127
\1CryPitch::          ds 2
\1Field0x29::         ds 1
\1Field0x2a::         ds 2
\1Field0x2c::         ds 1
\1NoteLength::        ds 1 ; frames per 16th note
\1Field0x2e::         ds 1 ; c12f
\1Field0x2f::         ds 1 ; c130
\1Field0x30::         ds 1 ; c131
                      ds 1 ; c132
ENDM

battle_tower_struct: MACRO
\1Name:: ;ds PLAYER_NAME_LENGTH +- 1
\1TrainerClass:: ;ds 1
\1Pkmn1:: ;party_struct \1Pkmn1
\1Pkmn1Name:: ;ds PKMN_NAME_LENGTH
\1Pkmn1NameEnd::
\1Pkmn2:: ;party_struct \1Pkmn2
\1Pkmn2Name:: ;ds PKMN_NAME_LENGTH
\1Pkmn2NameEnd::
\1Pkmn3:: ;party_struct \1Pkmn3
\1Pkmn3Name:: ;ds PKMN_NAME_LENGTH
\1Pkmn3NameEnd::
\1Padding: ;ds BATTLETOWER_PADDING_SIZE
\1TrainerEnd::
endm

mailmsg: MACRO
\1Message:: ds MAIL_MSG_LENGTH
\1MessageEnd:: ds 1
\1Author:: ds PLAYER_NAME_LENGTH
\1AuthorNationality:: ds 2
\1AuthorID:: ds 2
\1Species:: ds 1
\1Type:: ds 1
\1End::
endm

hof_mon: MACRO
\1Species:: ds 1
\1ID:: ds 2
\1Personality:: ds 2
\1Level:: ds 1
\1Nickname:: ds PKMN_NAME_LENGTH +- 1
\1End::
endm

roam_struct: MACRO
\1Species::     ds 1
\1Level::       ds 1
\1MapGroup::    ds 1
\1MapNumber::   ds 1
\1HP::          ds 1
\1DVs::         ds 3
\1Personality:: ds 2
\1End::
ENDM

bugcontestwinner: macro
\1PersonID:: ds 1
\1Mon:: ds 1
\1Score:: ds 2
endm

hall_of_fame: MACRO
\1::
\1WinCount:: ds 1
\1Mon1:: hof_mon \1Mon1
\1Mon2:: hof_mon \1Mon2
\1Mon3:: hof_mon \1Mon3
\1Mon4:: hof_mon \1Mon4
\1Mon5:: hof_mon \1Mon5
\1Mon6:: hof_mon \1Mon6
\1End:: ds 1
ENDM

trademon: MACRO
\1Group:: ds 1
\1Species:: ds 1 ; wc6d0 | wc702
;\1SpeciesName:: ds PKMN_NAME_LENGTH ; wc6d1 | wc703
\1Nickname:: ds PKMN_NAME_LENGTH ; wc6dc | wc70e
\1SenderName:: ds PLAYER_NAME_LENGTH ; wc6e7 | wc719
\1OTName:: ds PLAYER_NAME_LENGTH ; wc6f2 | wc724
\1DVs:: ; wc6fd | wc72f
\1HPAtkDV:: ds 1
\1DefSpdDV:: ds 1
\1SatSdfDV:: ds 1
\1Personality::
\1Shiny::
\1Ability::
\1Nature:: ds 1
\1Gender::
\1IsEgg::
\1IsDead::
\1Form:: ds 1
\1ID:: ds 2 ; wc6ff | wc731
\1CaughtData:: ds 1 ; wc701 | wc733
\1End::
ENDM

move_struct: MACRO
\1Animation:: ds 2
\1Effect:: ds 1
\1Power:: ds 1
\1Type:: ds 1
\1Accuracy:: ds 1
\1PP:: ds 1
\1EffectChance:: ds 1
\1Category:: ds 1
endm

slot_reel: MACRO
\1ReelAction::   ds 1
\1TilemapAddr::  ds 2
\1Position::     ds 1
\1SpinDistance:: ds 1
\1SpinRate::     ds 1
\1OAMAddr::      ds 2
\1XCoord::       ds 1
\1Slot09::       ds 1
\1Slot0a::       ds 1
\1Slot0b::       ds 1
\1Slot0c::       ds 1
\1Slot0d::       ds 1
\1Slot0e::       ds 1
\1Slot0f::       ds 1
endm

object_struct: MACRO
\1Struct::
\1Sprite:: ds 1
\1MapObjectIndex:: ds 1
\1SpriteTile:: ds 1
\1MovementType:: ds 1
\1Flags:: ds 2
\1Palette:: ds 1
\1Walking:: ds 1
\1Direction:: ds 1
\1StepType:: ds 1
\1StepDuration:: ds 1
\1Action:: ds 1
\1ObjectStepFrame:: ds 1
\1Facing:: ds 1
\1StandingTile:: ds 1 ; collision
\1LastTile:: ds 1     ; collision
\1StandingMapX:: ds 1
\1StandingMapY:: ds 1
\1LastMapX:: ds 1
\1LastMapY:: ds 1
\1ObjectInitX:: ds 1
\1ObjectInitY:: ds 1
\1Radius:: ds 1
\1SpriteX:: ds 1
\1SpriteY:: ds 1
\1SpriteXOffset:: ds 1
\1SpriteYOffset:: ds 1
\1MovementByteIndex:: ds 1
\1Object28:: ds 1
\1Object29:: ds 1
\1Object30:: ds 1
\1Object31:: ds 1
\1Range:: ds 1
\1StructEnd::
ENDM

map_object: MACRO
\1Object::
\1ObjectStructID::  ds 1
\1ObjectSprite::    ds 1
\1ObjectYCoord::    ds 1
\1ObjectXCoord::    ds 1
\1ObjectMovement::  ds 1
\1ObjectRadius::    ds 1
\1ObjectHour::      ds 1
\1ObjectTimeOfDay:: ds 1
\1ObjectColor::     ds 1
\1ObjectRange::     ds 1
\1ObjectScript::    ds 2
\1ObjectEventFlag:: ds 2
endm

sprite_anim_struct: MACRO
\1Index:: ds 1          ; 0
\1FramesetID:: ds 1     ; 1
\1AnimSeqID:: ds 1      ; 2
\1TileID:: ds 1         ; 3
\1XCoord:: ds 1         ; 4
\1YCoord:: ds 1         ; 5
\1XOffset:: ds 1        ; 6
\1YOffset:: ds 1        ; 7
\1Duration:: ds 1       ; 8
\1DurationOffset:: ds 1 ; 9
\1FrameIndex:: ds 1     ; a
\1Sprite0b:: ds 1
\1Sprite0c:: ds 1
\1Sprite0d:: ds 1
\1Sprite0e:: ds 1
\1Sprite0f:: ds 1
ENDM

battle_anim_struct: MACRO
; Placeholder until we can figure out what it all means
\1_Index::  ds 1
\1_Anim01:: ds 1
\1_Anim02:: ds 1
\1_FramesetIndex:: ds 1
\1_FunctionIndex:: ds 1
\1_Anim05:: ds 1
\1_TileID:: ds 1
\1_XCoord:: ds 1
\1_YCoord:: ds 1
\1_XOffset:: ds 1
\1_YOffset:: ds 1
\1_Anim0b:: ds 1
\1_Anim0c:: ds 1
\1_Anim0d:: ds 1
\1_AnonJumptableIndex:: ds 1
\1_Anim0f:: ds 1
\1_Anim10:: ds 1
\1_Anim11:: ds 1
\1_Anim12:: ds 1
\1_Anim13:: ds 1
\1_Anim14:: ds 1
\1_Anim15:: ds 1
\1_Anim16:: ds 1
\1_Anim17:: ds 1
endm

battle_bg_effect: MACRO
\1_Function:: ds 1
\1_01:: ds 1
\1_02:: ds 1
\1_03:: ds 1
endm
