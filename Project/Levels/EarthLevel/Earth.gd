extends Node2D

onready var SPAWN_POINT = $SpawnPoint.position
onready var transition := $CanvasLayer/TransitonColor

var vehicle

func _init():
	Globals.load_vehicle(Globals.car_id)

func _ready():
	vehicle = Globals.get_vehicle()
	if vehicle:
		vehicle.position = SPAWN_POINT
	else: 
		vehicle = load("res://Project/Vehicles/RedCar/Redcar.tscn").instance()
		vehicle.position = SPAWN_POINT
	call_deferred("add_child", vehicle)
	
func _on_FinishZone_body_entered(body):
	if body == $Car:
		Globals.determine_current_level(get_tree().current_scene.filename)
		transition.transition_to("res://Project/UI/End/End.tscn")
