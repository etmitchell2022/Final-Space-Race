extends Node

var game_music := load("res://src/Common/backgroundMusic.wav")
	
func play_music() -> void:
	$Music.stream = game_music
	$Music.play(0)
