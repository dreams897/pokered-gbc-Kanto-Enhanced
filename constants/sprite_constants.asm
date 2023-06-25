; overworld sprites
; SpriteSheetPointerTable indexes (see data/sprites/sprites.asm)
	const_def
	const SPRITE_NONE                    ; $00
	const SPRITE_RED                     ; $01
	const SPRITE_BLUE                    ; $02
	const SPRITE_OAK                     ; $03
	const SPRITE_YOUNGSTER               ; $04
	const SPRITE_COOLTRAINER_F           ; $06
	const SPRITE_COOLTRAINER_M           ; $07
	const SPRITE_LITTLE_GIRL             ; $08
	const SPRITE_BIRD                    ; $09
	const SPRITE_MIDDLE_AGED_MAN         ; $0a
	const SPRITE_GAMBLER                 ; $0b
	const SPRITE_SUPER_NERD              ; $0c
	const SPRITE_GIRL                    ; $0d
	const SPRITE_HIKER                   ; $0e
	const SPRITE_BEAUTY                  ; $0f
	const SPRITE_GENTLEMAN               ; $10
	const SPRITE_DAISY                   ; $11
	const SPRITE_BIKER                   ; $12
	const SPRITE_SAILOR                  ; $13
	const SPRITE_COOK                    ; $14
	const SPRITE_BIKE_SHOP_CLERK         ; $15
	const SPRITE_MR_FUJI                 ; $16
	const SPRITE_GIOVANNI                ; $17
	const SPRITE_ROCKET                  ; $18
	const SPRITE_CHANNELER               ; $19
	const SPRITE_WAITER                  ; $1a
	const SPRITE_ERIKA                   ; $1b
	const SPRITE_MIDDLE_AGED_WOMAN       ; $1c
	const SPRITE_BRUNETTE_GIRL           ; $1d
	const SPRITE_LANCE                   ; $1e
	const SPRITE_UNUSED_SCIENTIST        ; $1f
	const SPRITE_SCIENTIST               ; $20
	const SPRITE_ROCKER                  ; $21
	const SPRITE_SWIMMER                 ; $22
	const SPRITE_SAFARI_ZONE_WORKER      ; $23
	const SPRITE_GYM_GUIDE               ; $24
	const SPRITE_GRAMPS                  ; $25
	const SPRITE_CLERK                   ; $26
	const SPRITE_FISHING_GURU            ; $27
	const SPRITE_GRANNY                  ; $28
	const SPRITE_NURSE                   ; $29
	const SPRITE_LINK_RECEPTIONIST       ; $2a
	const SPRITE_SILPH_PRESIDENT         ; $2b
	const SPRITE_SILPH_WORKER            ; $2c
	const SPRITE_WARDEN                  ; $2d
	const SPRITE_CAPTAIN                 ; $2e
	const SPRITE_FISHER                  ; $2f
	const SPRITE_KOGA                    ; $30
	const SPRITE_GUARD                   ; $31
	const SPRITE_BLACKBELT               ; $32
	const SPRITE_MOM                     ; $33
	const SPRITE_BALDING_GUY             ; $34
	const SPRITE_LITTLE_BOY              ; $35
	const SPRITE_UNUSED_GAMEBOY_KID      ; $36
	const SPRITE_GAMEBOY_KID             ; $37
	const SPRITE_AGATHA                  ; $39
	const SPRITE_BRUNO                   ; $3a
	const SPRITE_LORELEI                 ; $3b
	const SPRITE_GREEN		     ; $43
	const SPRITE_GREEN_BIKE
	const SPRITE_PURPLE		     ; $49
	const SPRITE_PURPLE_BIKE
	
; ; New walking sprites added here
	const SPRITE_BILL		     ; $3d
	const SPRITE_BLAINE		     ; $3e
	const SPRITE_BROCK		     ; $3f
	const SPRITE_BULBASAUR               ; $40
	const SPRITE_CHANSEY		     ; $41
	const SPRITE_DITTO		     ; $42
	const SPRITE_FAIRY                   ; $38
	const SPRITE_JAMES	             ; $44
	const SPRITE_JESSIE		     ; $45
	const SPRITE_JIGGLYPUFF		     ; $46
	const SPRITE_LAPRAS		     ; $47
	const SPRITE_MONSTER                 ; $05
	const SPRITE_MISTY		     ; $48
	const SPRITE_SABRINA		     ; $4a
	const SPRITE_SEEL                    ; $3c
	const SPRITE_SURGE		     ; $4b
	const SPRITE_SWIMMER_F
	
DEF FIRST_STILL_SPRITE EQU const_value
	const SPRITE_POKE_BALL               ; $4c
	const SPRITE_POKE_BALL2	             ; $4d
	const SPRITE_TRUCK	             ; $4e
	const SPRITE_BERRY_TREE	             ; $4f
	const SPRITE_FOSSIL                  ; $50
	const SPRITE_BOULDER                 ; $51
	const SPRITE_PAPER                   ; $52
	const SPRITE_POKEDEX                 ; $53
	const SPRITE_TOWNMAP	             ; $54
	const SPRITE_CLIPBOARD               ; $55
	const SPRITE_SNORLAX                 ; $56
	const SPRITE_OLD_AMBER               ; $57
	const SPRITE_GAMBLER_ASLEEP          ; $60
DEF NUM_SPRITES EQU const_value - 1
