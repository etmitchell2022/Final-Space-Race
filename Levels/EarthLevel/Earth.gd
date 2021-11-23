extends Node2D

onready var SPAWN_POINT = $SpawnPoint.position

var vehicle

onready var transition := $CanvasLayer/TransitonColor
onready var hud := $CanvasLayer/HUD

func _ready():
	vehicle = Globals.get_vehicle()
	var _error = Globals.connect("new_max_speed", hud, "update_speed")
	if vehicle:
		vehicle.position = SPAWN_POINT
	else: 
		vehicle = load("res://Vehicles/RedCar/RedCar.tscn").instance()
	call_deferred("add_child", vehicle)

func _process(_delta):
	var car_velocity = (vehicle.linear_velocity.x + vehicle.linear_velocity.y) /2
	Globals.set_max_speed(car_velocity)

func _on_FinishZone_body_entered(body):
	if body == $Car:
		Globals.disconnect("new_max_speed", hud, "update_speed")
		transition.transition_to("res://UI/End/End.tscn")
