const_value set 2
	const GOLDENRODNAMERATER_NAME_RATER

GoldenrodNameRater_MapScripts:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

GoldenrodNameRater:
	faceplayer
	opentext
	special NameRater
	waitbutton
	closetext
	end

GoldenrodNameRaterBookshelf:
	jumpstd difficultbookshelf

GoldenrodNameRaterRadio:
	jumpstd radio2

INCLUDE "data/text/unused_sweet_honey.asm"

GoldenrodNameRater_MapEvents:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_event 2, 7, 8, GOLDENROD_CITY
	warp_event 3, 7, 8, GOLDENROD_CITY

.CoordEvents:
	db 0

.BGEvents:
	db 3
	bg_event 0, 1, BGEVENT_READ, GoldenrodNameRaterBookshelf
	bg_event 1, 1, BGEVENT_READ, GoldenrodNameRaterBookshelf
	bg_event 7, 1, BGEVENT_READ, GoldenrodNameRaterRadio

.ObjectEvents:
	db 1
	object_event 2, 4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodNameRater, -1
