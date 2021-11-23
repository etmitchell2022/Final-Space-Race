extends Node2D

const SPAWN_POINT = Vector2(-3672.35, 84.1)

onready var transition := $CanvasLayer/TransitionColor
onready var hud := $CanvasLayer/HUD

var vehicle

func _init():
	Globals.load_vehicle(Globals.car_id)

func _ready():
	vehicle = Globals.get_vehicle()
	var _error = Globals.connect("new_max_speed", hud, "update_speed")
	if vehicle:
		vehicle.position = SPAWN_POINT
	else: 
		vehicle = load("res://Vehicles/RedCar/RedCar.tscn").instance()
		vehicle.position = SPAWN_POINT
	call_deferred("add_child", vehicle)
	
func _process(_delta):
	var car_velocity = (vehicle.linear_velocity.x + vehicle.linear_velocity.y) /2
	Globals.set_max_speed(car_velocity)
	
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
