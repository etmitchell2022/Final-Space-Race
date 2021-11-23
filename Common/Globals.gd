extends Node

signal new_max_speed(max_speed)

var _max_speed := 0
var vehicle: Node2D
var levelOneComplete := 0
var levelTwoComplete := 0

func set_max_speed(newMax: int) -> void:
	if newMax > _max_speed:
		_max_speed = newMax
		emit_signal("new_max_speed", _max_speed)

func get_max_speed() -> int:
	return _max_speed
	
func load_vehicle(id) -> void:
	if id == 0:
		vehicle = load("res://Vehicles/RedCar/RedCar.tscn").instance()
	elif id == 1:
		vehicle = load("res://Vehicles/YellowCar/YellowCar.tscn").instance()
	elif id == 2:
		vehicle = load("res://Vehicles/Truck/Truck.tscn").instance()
	else:
		print("Vehicle index does not exist")
		
func get_vehicle() -> Node2D:
	return vehicle

