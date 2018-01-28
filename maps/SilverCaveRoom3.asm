const_value set 2
	const SILVERCAVEROOM3_RED

SilverCaveRoom3_MapScripts:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

Red:
	special FadeOutMusic
	faceplayer
	opentext
	writetext .Text1
	waitbutton
	closetext
	winlosstext .Text2, .Text2
	loadtrainer RED, RED1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special FadeOutMusic
	opentext
	writetext .Text3
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SILVERCAVEROOM3_RED
	pause 15
	special FadeInQuickly
	pause 30
	special HealParty
	refreshscreen
	credits
	end

.Text1:
	text "<……>"
	line "<……>"
	done

.Text2:
	text "…"
	done

.Text3:
	text "<……>"
	line "<……>"
	done

SilverCaveRoom3_MapEvents:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_event 9, 33, 2, SILVER_CAVE_ROOM_2

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 1
	object_event 9, 10, SPRITE_RED, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Red, EVENT_RED_IN_MT_SILVER
