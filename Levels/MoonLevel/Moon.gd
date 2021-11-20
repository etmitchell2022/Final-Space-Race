extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_RespawnZone_body_entered(_body: Area2D) -> void:
	var _ignored := get_tree().change_scene("res://Levels/MoonLevel/Moon.tscn")


func _on_KillZone_body_entered(_body: Area2D) -> void:
	var _ignored := get_tree().change_scene("res://UI/End/End.tscn")


func _on_EndZone_body_entered(_body: Area2D) -> void:
	var _ignored := get_tree().change_scene("res://UI/End/End.tscn")
