extends Node2D

onready var SPAWN_POINT = $SpawnPoint.position
onready var finish = $FinishZone/FinishArea

var vehicle

func _init() -> void:
	Globals.load_vehicle(Globals.car_id)

func _ready() -> void:
	_spawnVehicle()

func _spawnVehicle() -> void:
	vehicle = Globals.get_vehicle()
	if vehicle:
		vehicle.position = SPAWN_POINT
	else: 
		vehicle = load("res:///Vehicles/RedCar/RedCar.tscn").instance()
		vehicle.position = SPAWN_POINT
	call_deferred("add_child", vehicle)


func _on_FinishZone_body_entered(body):
	if body == vehicle:
		Globals.levelZeroComplete = 1
		Globals.determine_current_level(get_tree().current_scene.filename)
		transition.transition_to("res:///UI/Congrats/Congrats.tscn")