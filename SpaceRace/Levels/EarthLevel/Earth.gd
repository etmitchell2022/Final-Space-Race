extends Node2D

onready var SPAWN_POINT = $SpawnPoint.position
onready var transition := $CanvasLayer/TransitonColor
onready var finish := $FinishZone
onready var hud := $CanvasLayer/HUD

var vehicle

func _init() -> void:
	Globals.load_vehicle(Globals.car_id)

func _ready() -> void:
	vehicle = Globals.get_vehicle()
	hud.init_progress_bar(SPAWN_POINT.distance_to(finish.position))
	if vehicle:
		vehicle.position = SPAWN_POINT
	else: 
		vehicle = load("res:///Vehicles/RedCar/RedCar.tscn").instance()
		vehicle.position = SPAWN_POINT
	call_deferred("add_child", vehicle)
	
func _process(_delta):
	hud.update_progress_bar(vehicle.position.distance_to(finish.position))
	
func _on_FinishZone_body_entered(body) -> void:
	if body == $Car:
		_finishLevel()

func _finishLevel() -> void:
	Globals.levelOneComplete = 1
	Globals.determine_current_level(get_tree().current_scene.filename)
	transition.transition_to("res:///UI/Congrats/Congrats.tscn")
