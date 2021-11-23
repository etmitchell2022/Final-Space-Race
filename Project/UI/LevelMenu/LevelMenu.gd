extends Control

onready var transition = $TransitonColor


func _ready():
	if Globals.levelOneComplete == 1:
		$LevelTwoButton.disabled = false
	if Globals.levelTwoComplete == 1:
		$LevelThreeButton.disabled = false


func _on_LevelOneButton_pressed():
	transition.transition_to("res://Project/Levels/EarthLevel/Earth.tscn")


func _on_LevelTwoButton_pressed():
	transition.transition_to("res://Project/Levels/MoonLevel/Moon.tscn")


func _on_LevelThreeButton_pressed():
	transition.transition_to("res://Project/Levels/MarsLevel/Mars.tscn")
