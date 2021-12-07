extends Node

var game_music := preload("res://Common/backgroundMusic.ogg")
	
func play_music() -> void:
	$Music.stream = game_music
	$Music.play(0)
