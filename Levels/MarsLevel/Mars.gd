extends Node2D

onready var SPAWN_POINT = $SpawnPoint.position
onready var transition := $CanvasLayer/TransitionColor

var vehicle

func _ready():
	vehicle = Globals.get_vehicle()
	if vehicle:
		vehicle.position = SPAWN_POINT
	else: 
		vehicle = load("res://Vehicles/RedCar/Redcar.tscn").instance()
		vehicle.position = SPAWN_POINT
	call_deferred("add_child", vehicle)

func _on_Finish_body_entered(body):
	if body == vehicle:
		transition.transition_to("res://UI/End/End.tscn")
