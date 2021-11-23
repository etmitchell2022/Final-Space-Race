extends Node

const EARTH = "res://Levels/EarthLevel/Earth.tscn"
const MOON = "res://Levels/MoonLevel/Moon.tscn"
const MARS = "res://Levels/MarsLevel/Mars.tscn"

var max_speed := 0
var hills := 30
var vehicle: Node2D
var levelOneComplete := 0
var levelTwoComplete := 0
var previous_scene
var car_id


func getScore() -> int:
	return max_speed
	
func load_vehicle(id) -> void:
	car_id = id
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
	
"""
This code is used for determining the previous level the player was on to
dynamically link them back to that scene when restarting the game on the End.tscn
"""
func determine_current_level(scene):
	if scene == EARTH:
		previous_scene = EARTH
	elif scene == MOON:
		previous_scene = MOON
	elif scene == MARS:
		previous_scene = MARS
		
func return_previous_scene():
	return previous_scene

