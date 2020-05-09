


_FollowerInteractScript::
    copybytetovar wPlayerStairsType
    iftrue EndFollowerInteract

UwUFakePetCommandMenuScript::
    faceplayer
    opentext
	portrait LOKI_UWU
    writetext FakePetCommandMenuText
    waitbutton
    closeportrait
    closetext
EndFollowerInteract::
    end

FakePetCommandMenuText:
	text "▶Pet    Pet    Pet    Pet    Pet"
	line "   Pet    Pet    Pet    Pet    Pet"
	done
