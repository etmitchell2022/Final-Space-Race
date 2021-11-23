extends Node2D

const SPAWN_POINT = Vector2(-3672.35, 84.1)

onready var transition := $CanvasLayer/TransitionColor

var vehicle

func _init():
	Globals.load_vehicle(Globals.car_id)

func _ready():
	"""
	This code gets the vehicle based on the ID of the selected vehicle on the start screen
	If no vehicle is selected, by default the red car will be chosen
	"""
	vehicle = Globals.get_vehicle()
	if vehicle:
		vehicle.position = SPAWN_POINT
	else: 
		vehicle = load("res://Vehicles/RedCar/Redcar.tscn").instance()
		vehicle.position = SPAWN_POINT
	call_deferred("add_child", vehicle)
	
func _on_RespawnZone_body_entered(_body: Area2D) -> void:
	transition.transition_to("res://Levels/MoonLevel/Moon.tscn")


func _on_KillZone_body_entered(_body: Area2D) -> void:
	print(get_tree().current_scene.filename)
	Globals.determine_current_level(get_tree().current_scene.filename)
	transition.transition_to("res://UI/End/End.tscn")


func _on_EndZone_body_entered(_body: Area2D) -> void:
	Globals.levelTwoComplete = 1
	Globals.determine_current_level(get_tree().current_scene.filename)
	transition.transition_to("res://UI/End/End.tscn")
