extends Node2D

const SPAWN_POINT = Vector2(-3672.35, 84.1)

onready var transition := $CanvasLayer/TransitionColor
onready var hud := $CanvasLayer/HUD
onready var finish := $EndZone

var vehicle

func _init() -> void:
	Globals.load_vehicle(Globals.car_id)

func _ready() -> void:
	vehicle = Globals.get_vehicle()
	hud.init_progress_bar(SPAWN_POINT.distance_to(finish.position))
	if vehicle:
		vehicle.position = SPAWN_POINT
	else: 
		vehicle = load("res://Project/Vehicles/RedCar/RedCar.tscn").instance()
		vehicle.position = SPAWN_POINT
	call_deferred("add_child", vehicle)
	
func _process(_delta) -> void:
	hud.update_progress_bar(vehicle.position.distance_to(finish.position))
	
func _on_RespawnZone_body_entered(_body: Area2D) -> void:
	transition.transition_to("res://Project/Levels/MoonLevel/Moon.tscn")


func _on_KillZone_body_entered(_body: Area2D) -> void:
	Globals.determine_current_level(get_tree().current_scene.filename)
	transition.transition_to("res://Project/UI/End/End.tscn")


func _on_EndZone_body_entered(_body: Area2D) -> void:
	Globals.levelTwoComplete = 1
	Globals.determine_current_level(get_tree().current_scene.filename)
	transition.transition_to("res://Project/UI/Congrats/Congrats.tscn")
