extends Node

var max_speed := 0
var hills := 30
var vehicle: Node2D
var levelOneComplete := 0
var levelTwoComplete := 0


func getScore():
	return max_speed
	
func load_vehicle(id = 0):
	if id == 0:
		vehicle = load("res://Vehicles/RedCar/Redcar.tscn").instance()
	elif id == 1:
		vehicle = load("res://Vehicles/YellowCar/Yellowcar.tscn").instance()
	elif id == 2:
		vehicle = load("res://Vehicles/Truck/Truck.tscn").instance()
	else:
		print("Vehicle index does not exist")
		
func get_vehicle():
	return vehicle

