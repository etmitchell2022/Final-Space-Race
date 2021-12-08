extends Node
const SUN = "res://Levels/SunLevel/Sun.tscn"
const EARTH = "res://Levels/EarthLevel/Earth.tscn"
const MOON = "res://Levels/MoonLevel/Moon.tscn"
const MARS = "res://Levels/MarsLevel/Mars.tscn"

var hills := 30
var vehicle: Node2D
var levelZeroComplete := 0
var levelOneComplete := 0
var levelTwoComplete := 0
var previous_scene
var next_scene
var car_id
var coin_score:= 160
var is_yellow_car_unlocked = false
var is_truck_unlocked = false
	
func load_vehicle(id = 0) -> void:
	car_id = id
	if id == 0:
		vehicle = load("res://Vehicles/RedCar/RedCar.tscn").instance()
	elif id == 1:
		vehicle = load("res://Vehicles/YellowCar/YellowCar.tscn").instance()
	elif id == 2:
		vehicle = load("res://Vehicles/Truck/Truck.tscn").instance()
	else:
		return
		
func get_vehicle() -> Node2D:
	return vehicle
	
"""
This code is used for determining the previous level the player was on to
dynamically link them back to that scene when restarting the game on the End.tscn,
as well as finding the next level to dynamically link them forwards on the Congrats.tscn
"""
func determine_current_level(scene) -> void:
	if scene == EARTH:
		previous_scene = EARTH
		next_scene = MOON
	elif scene == MOON:
		previous_scene = MOON
		next_scene = MARS
	elif scene == MARS:
		previous_scene = MARS
	elif scene == SUN:
		previous_scene = SUN
		next_scene = EARTH
		
func return_previous_scene() -> String:
	return previous_scene
	
func return_next_scene() -> String:
	return next_scene

