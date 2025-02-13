; INPUTS - Mon DVs in de, species in wGenderTemp
; OUTPUT - Mon's gender in wGenderTemp
GetMonGender::
	ld hl, MonGenderRatios
	ld a, [wGenderTemp]
	dec a
	ld c, a
	ld b, 0
	add hl, bc ; hl now points to the species gender ratio
	
; Attack DV
	ld a, [de]
	and $f0
	ld b, a
; Speed DV
	inc de
	ld a, [de]
	and $f0
	swap a
; Put them together
	or b
	ld b, a ; b now has the combined DVs
	
; Get the gender ratio
	ld a, [hl]
	
; Check for always one or another
	cp NO_GENDER
	jr z, .genderless
	
	cp FEMALE_ONLY
	jr z, .female
	
	and a ; MALE_ONLY
	jr z, .male
	
; Compare the ratio to the value we found earlier
	cp b
	jr c, .male
	
.female
	ld a, FEMALE
	jr .done
.male
	ld a, MALE
	jr .done
.genderless
	ld a, GENDERLESS
.done
	ld [wGenderTemp], a
	ret
	
MonGenderRatios:
	db SAME_BOTH_GENDERS ; Rhydon
	db FEMALE_ONLY       ; Kangaskhan
	db MALE_ONLY         ; Nidoran M
	db FEMALE_75_PERCENT ; Clefairy
	db SAME_BOTH_GENDERS ; Spearow
	db NO_GENDER         ; Voltorb
	db MALE_ONLY         ; Nidoking
	db SAME_BOTH_GENDERS ; Slowbro
	db MALE_88_PERCENT   ; Ivysaur
	db SAME_BOTH_GENDERS ; Exeggutor
	db SAME_BOTH_GENDERS ; Lickitung
	db SAME_BOTH_GENDERS ; Exeggcute
	db SAME_BOTH_GENDERS ; Grimer
	db SAME_BOTH_GENDERS ; Gengar
	db FEMALE_ONLY       ; Nidoran F
	db FEMALE_ONLY       ; Nidoqueen
	db SAME_BOTH_GENDERS ; Cubone
	db SAME_BOTH_GENDERS ; Rhyhorn
	db SAME_BOTH_GENDERS ; Lapras
	db MALE_75_PERCENT   ; Arcanine
	db NO_GENDER         ; Mew
	db SAME_BOTH_GENDERS ; Gyarados
	db SAME_BOTH_GENDERS ; Shellder
	db SAME_BOTH_GENDERS ; Tentacool
	db SAME_BOTH_GENDERS ; Gastly
	db SAME_BOTH_GENDERS ; Scyther
	db NO_GENDER         ; Staryu
	db MALE_88_PERCENT   ; Blastoise
	db SAME_BOTH_GENDERS ; Pinsir
	db SAME_BOTH_GENDERS ; Tangela
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db MALE_75_PERCENT   ; Growlithe
	db SAME_BOTH_GENDERS ; Onix
	db SAME_BOTH_GENDERS ; Fearow
	db SAME_BOTH_GENDERS ; Pidgey
	db SAME_BOTH_GENDERS ; Slowpoke
	db MALE_75_PERCENT   ; Kadabra
	db SAME_BOTH_GENDERS ; Graveler
	db FEMALE_ONLY       ; Chansey
	db MALE_75_PERCENT   ; Machoke
	db SAME_BOTH_GENDERS ; Mr. Mime
	db MALE_ONLY         ; Hitmonlee
	db MALE_ONLY         ; Hitmonchan
	db SAME_BOTH_GENDERS ; Arbok
	db SAME_BOTH_GENDERS ; Parasect
	db SAME_BOTH_GENDERS ; Psyduck
	db SAME_BOTH_GENDERS ; Drowzee
	db SAME_BOTH_GENDERS ; Golem
	db NO_GENDER         ; MISSINGNO
	db MALE_75_PERCENT   ; Magmar
	db NO_GENDER         ; MISSINGNO
	db MALE_75_PERCENT   ; Electabuzz
	db NO_GENDER         ; Magneton
	db SAME_BOTH_GENDERS ; Koffing
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Mankey
	db SAME_BOTH_GENDERS ; Seel
	db SAME_BOTH_GENDERS ; Diglett
	db MALE_ONLY         ; Tauros
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Farfetch'd
	db SAME_BOTH_GENDERS ; Venonat
	db SAME_BOTH_GENDERS ; Dragonite
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Doduo
	db SAME_BOTH_GENDERS ; Poliwag
	db FEMALE_ONLY       ; Jynx
	db NO_GENDER         ; Moltres
	db NO_GENDER         ; Articuno
	db NO_GENDER         ; Zapdos
	db NO_GENDER         ; Ditto
	db SAME_BOTH_GENDERS ; Meowth
	db SAME_BOTH_GENDERS ; Krabby
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db FEMALE_75_PERCENT ; Vulpix
	db FEMALE_75_PERCENT ; Ninetales
	db SAME_BOTH_GENDERS ; Pikachu
	db SAME_BOTH_GENDERS ; Raichu
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Dratini
	db SAME_BOTH_GENDERS ; Dragonair
	db MALE_88_PERCENT   ; Kabuto
	db MALE_88_PERCENT   ; Kabutops
	db SAME_BOTH_GENDERS ; Horsea
	db SAME_BOTH_GENDERS ; Seadra
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Sandshrew
	db SAME_BOTH_GENDERS ; Sandslash
	db MALE_88_PERCENT   ; Omanyte
	db MALE_88_PERCENT   ; Omastar
	db FEMALE_75_PERCENT ; Jigglypuff
	db FEMALE_75_PERCENT ; WIgglytuff
	db MALE_88_PERCENT   ; Eevee
	db MALE_88_PERCENT   ; Vaporeon
	db MALE_88_PERCENT   ; Jolteon
	db MALE_88_PERCENT   ; Flareon
	db MALE_75_PERCENT   ; Machop
	db SAME_BOTH_GENDERS ; Zubat
	db SAME_BOTH_GENDERS ; Ekans
	db SAME_BOTH_GENDERS ; Paras
	db SAME_BOTH_GENDERS ; Poliwhirl
	db SAME_BOTH_GENDERS ; Poliwrath
	db SAME_BOTH_GENDERS ; Weedle
	db SAME_BOTH_GENDERS ; Kakuna
	db SAME_BOTH_GENDERS ; Beedrill
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Dodrio
	db SAME_BOTH_GENDERS ; Primeape
	db SAME_BOTH_GENDERS ; Dugtrio
	db SAME_BOTH_GENDERS ; Venomoth
	db SAME_BOTH_GENDERS ; Dewgong
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Caterpie
	db SAME_BOTH_GENDERS ; Metapod
	db SAME_BOTH_GENDERS ; Butterfree
	db MALE_75_PERCENT   ; Machamp
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Golduck
	db SAME_BOTH_GENDERS ; Hypno
	db SAME_BOTH_GENDERS ; Golbat
	db NO_GENDER         ; Mewtwo
	db MALE_88_PERCENT   ; Snorlax
	db SAME_BOTH_GENDERS ; Magikarp
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Muk
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Kingler
	db SAME_BOTH_GENDERS ; Cloyster
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; Electrode
	db FEMALE_75_PERCENT ; Clefable
	db SAME_BOTH_GENDERS ; Weezing
	db SAME_BOTH_GENDERS ; Persian
	db SAME_BOTH_GENDERS ; Marowak
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Haunter
	db MALE_75_PERCENT   ; Abra
	db MALE_75_PERCENT   ; Alakazam
	db SAME_BOTH_GENDERS ; Pidgeotto
	db SAME_BOTH_GENDERS ; Pidgeot
	db NO_GENDER         ; Starmie
	db MALE_88_PERCENT   ; Bulbasaur
	db MALE_88_PERCENT   ; Venusaur
	db SAME_BOTH_GENDERS ; Tentacruel
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Goldeen
	db SAME_BOTH_GENDERS ; Seaking
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Ponyta
	db SAME_BOTH_GENDERS ; Rapidash
	db SAME_BOTH_GENDERS ; Rattata
	db SAME_BOTH_GENDERS ; Raticate
	db MALE_ONLY         ; Nidorino
	db FEMALE_ONLY       ; Nidorina
	db SAME_BOTH_GENDERS ; Geodude
	db NO_GENDER         ; Porygon
	db MALE_88_PERCENT   ; Aerodactyl
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; Magnemite
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db MALE_88_PERCENT   ; Charmander
	db MALE_88_PERCENT   ; Squirtle
	db MALE_88_PERCENT   ; Charmeleon
	db MALE_88_PERCENT   ; Wartortle
	db MALE_88_PERCENT   ; Charizard
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db NO_GENDER         ; MISSINGNO
	db SAME_BOTH_GENDERS ; Oddish
	db SAME_BOTH_GENDERS ; Gloom
	db SAME_BOTH_GENDERS ; Vileplume
	db SAME_BOTH_GENDERS ; Bellsprout
	db SAME_BOTH_GENDERS ; Weepinbell
	db SAME_BOTH_GENDERS ; Victreebel
	db -1 ; end
