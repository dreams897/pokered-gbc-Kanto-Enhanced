BerryTreeScript::
; Display the "It's a fruit-bearing tree." text
	call EnableAutoTextBoxDrawing
	ld hl, FruitTreeText
	call PrintText
	
; Check to see if the player can get a berry from this tree right now
	ld a, [wWhichTrade] ; Which tree is this?
	dec a
	ld c, a ; We need this in register c
	ld b, FLAG_TEST
	ld hl, wBerryTreeFlags
	predef FlagActionPredef
	ld a, c ; Let's get the result of that check
	and a ; Make sure the flag isn't set
	jp nz, .NothingHereScript ; If it is, you got the berry, so the tree is empty
	
; Time to give the berry
	ld a, [wWhichTrade]
	dec a
	ld c, a
	ld b, 0
	ld hl, BerryTable
	add hl, bc
	ld a, [hl]
	ld b, a
	ld c, 1
	call GiveItem
	jr nc, .BagFull
	
; Mark the berry as taken
	ld a, [wWhichTrade] ; Which tree is this?
	dec a
	ld c, a ; We need this in c
	ld b, FLAG_SET
	ld hl, wBerryTreeFlags
	predef FlagActionPredef
	
; Show "Found (Berry Name)!" text
	ld hl, FoundBerryText
	jr .print
	
; Runs if the berry has already been taken from this tree
.NothingHereScript
	ld hl, NoBerryText
	jr .print
	
; Runs when the bag is full
.BagFull
	ld hl, PackFullText
.print
	call PrintText
	ret
	
FruitTreeText:
	text "It's a fruit-"
	line "bearing tree."
	prompt
	text_end
	
NoBerryText:
	text "Looks like there's"
	line "nothing here."
	done
	text_end
	
FoundBerryText:
	text_far _FoundItemText
	db $0B
	text_end
	
PackFullText:
	text_far _NoMoreRoomForItemText
	text_end
	
; The table is not terminated, so don't use invalid tree numbers
BerryTable:
	db ORAN_BERRY   ; Route 1
	db PECHA_BERRY  ; Route 2, Tree 1
	db RAWST_BERRY  ; Pewter City, Tree 1
	db CHESTO_BERRY ; Pewter City, Tree 2
	db CHERI_BERRY  ; Route 8
	db SITRUS_BERRY ; Route 11
	db ASPEAR_BERRY ; Mt Moon Square
	db LEPPA_BERRY  ; Route 4, Tree 1
	db LUM_BERRY    ; Route 4, Tree 2
	db PECHA_BERRY  ; Unused
	db LEPPA_BERRY  ; Unused
	db PECHA_BERRY  ; Route 2, Tree 2
	db ORAN_BERRY   ; Viridian Forest
	db SITRUS_BERRY ; Route 7
	db ACAI_BERRY   ; Faraway Island
	db ACAI_BERRY   ; South Isle	
	
BerryReset::
; Called to reset berry trees
; Happens when the berry step counter hits 1024
	ld a, [wBerryStepCounter + 1]
	cp a, $4
	ret nz
	xor a
	ld hl, wBerryTreeFlags
	; assumption: only 2 bytes used for flags
	ld [hli],a
	ld [hli],a
	; assumption: Step Counter immediately follows Berry Tree Flags
	ld [hli],a
	ld [hl],a
	; Added part to mark there being a baby at the Day Care
	ld a, [wDayCareInUse]
	and a ; does the Day Care Lady have someone?
	ret z
	ld hl, wExtraFlags
	set 1, [hl] ; Mark there being a babymon at Day Care
	ret
