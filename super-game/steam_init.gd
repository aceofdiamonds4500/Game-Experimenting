extends Node


# Space War AppID lets us use Steam P2P lobbies for free
const APP_ID := 480

var is_steam_initialized := false


func _ready() -> void:
	pass
	#is_steam_initialized = Steam.steamInit(APP_ID, true)
	#print(is_steam_initialized)
