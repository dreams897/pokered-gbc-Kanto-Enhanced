Daycare_Object:
	db $a ; border block

	def_warp_events
	warp_event  2,  7, LAST_MAP, 5
	warp_event  3,  7, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_GRANNY, STAY, RIGHT, 1 ; person
	object_event  5,  4, SPRITE_GENTLEMAN, STAY, LEFT, 2 ; person
	object_event  5,  1, SPRITE_DITTO, WALK, ANY_DIR, 3 ; person
	object_event  0,  4, SPRITE_BULBASAUR, STAY, RIGHT, 4 ; person

	def_warps_to DAYCARE
