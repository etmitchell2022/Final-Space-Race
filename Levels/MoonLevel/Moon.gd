extends Node2D

const SPAWN_POINT = Vector2(-3672.35, 84.1)

onready var transition := $CanvasLayer/TransitionColor

var vehicle

func _ready():
	vehicle = Globals.get_vehicle()
	print(vehicle)
	vehicle.position = SPAWN_POINT
	call_deferred("add_child", vehicle)
	
func _on_RespawnZone_body_entered(_body: Area2D) -> void:
	transition.transition_to("res://Levels/MoonLevel/Moon.tscn")


func _on_KillZone_body_entered(_body: Area2D) -> void:
	transition.transition_to("res://UI/End/End.tscn")


func _on_EndZone_body_entered(_body: Area2D) -> void:
	transition.transition_to("res://UI/End/End.tscn")
