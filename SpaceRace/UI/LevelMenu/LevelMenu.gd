extends Control

onready var transition = $TransitonColor

func _ready() -> void:
	if Globals.levelZeroComplete == 1:
		$LevelOneButton.disabled = false
	if Globals.levelOneComplete == 1:
		$LevelTwoButton.disabled = false
	if Globals.levelTwoComplete == 1:
		$LevelThreeButton.disabled = false
	if Globals.secretUnlock == 1:
		$SecretLevelButton.visible = true

func _on_LevelOneButton_pressed() -> void:
	transition.transition_to("res:///Levels/EarthLevel/Earth.tscn")


func _on_LevelTwoButton_pressed() -> void:
	transition.transition_to("res:///Levels/MoonLevel/Moon.tscn")


func _on_LevelThreeButton_pressed() -> void:
	transition.transition_to("res:///Levels/MarsLevel/Mars.tscn")


func _on_LevelZeroButton_pressed():
	Globals.continuous = 1
	transition.transition_to("res:///Levels/SunLevel/Sun.tscn")
