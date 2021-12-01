extends Node

const EARTH = "res://Project/Levels/EarthLevel/Earth.tscn"
const MOON = "res://Project/Levels/MoonLevel/Moon.tscn"
const MARS = "res://Project/Levels/MarsLevel/Mars.tscn"

var hills := 30
var vehicle: Node2D
var levelOneComplete := 0
var levelTwoComplete := 0
var previous_scene
var car_id
var coin_score:= 0
	
func load_vehicle(id = 0) -> void:
	car_id = id
	if id == 0:
		vehicle = load("res://Project/Vehicles/RedCar/RedCar.tscn").instance()
	elif id == 1:
		vehicle = load("res://Project/Vehicles/YellowCar/YellowCar.tscn").instance()
	elif id == 2:
		vehicle = load("res://Project/Vehicles/Truck/Truck.tscn").instance()
	else:
		return
		
func get_vehicle() -> Node2D:
	return vehicle
	
"""
This code is used for determining the previous level the player was on to
dynamically link them back to that scene when restarting the game on the End.tscn
"""
func determine_current_level(scene) -> void:
	if scene == EARTH:
		previous_scene = EARTH
	elif scene == MOON:
		previous_scene = MOON
	elif scene == MARS:
		previous_scene = MARS
		
func return_previous_scene() -> String:
	return previous_scene

