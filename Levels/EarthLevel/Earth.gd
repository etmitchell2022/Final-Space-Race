extends Node2D

onready var SPAWN_POINT = $SpawnPoint.position

var vehicle

onready var transition := $CanvasLayer/TransitonColor

func _ready():
	vehicle = Globals.get_vehicle()
	if vehicle:
		vehicle.position = SPAWN_POINT
		print(vehicle.position)
	else: 
		vehicle = load("res://Vehicles/RedCar/Redcar.tscn").instance()
	call_deferred("add_child", vehicle)
	
func _on_FinishZone_body_entered(body):
	if body == $Car:
		transition.transition_to("res://UI/End/End.tscn")
