extends Control

func _input(event):
	if event.is_action_pressed("pause"):
		var new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		visible = new_pause_state


func _on_ResumeButton_pressed():
	get_tree().paused = false
	visible = false

func _on_ReturnHomeButton_pressed():
	Globals.score = 0
	var _ignored := get_tree().change_scene("res://src/Start/Start.tscn")
	
