extends Node2D


func _on_Finish_body_entered(body):
	if body == $Car:
		var _ignored = get_tree().change_scene("res://UI/End/End.tscn")
