extends Control


var previous_scene = Globals.return_previous_scene()
var next_scene = Globals.return_next_scene()


func _ready():
	if previous_scene == "res://SpaceRace/Levels/MarsLevel/Mars.tscn":
		$VBoxContainer/NextButton.disabled = true

func _on_ReturnButton_pressed() -> void:
	var _ignored := get_tree().change_scene("res://SpaceRace/UI/Start/Start.tscn")


func _on_RestartButton_pressed() -> void:
	var _ignored := get_tree().change_scene(previous_scene)


func _on_NextButton_pressed():
	var _ignored := get_tree().change_scene(next_scene)
