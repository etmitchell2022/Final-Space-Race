extends Node

var game_music := load("res://SpaceRace/Common/backgroundMusic.ogg")
	
func play_music() -> void:
	$Music.stream = game_music
	$Music.play(0)
