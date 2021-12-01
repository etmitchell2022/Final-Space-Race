class_name Start
extends Control

onready var settingsMenu = $SettingsMenu
onready var transition = $TransitonColor
onready var vehicleMenu: PopupMenu = $VehicleMenu
onready var coinLabel = $CoinLabel
onready var coin_score = Globals.coin_score

var yellow_car_price = 60
var is_yellow_car_unlocked = false
var truck_price = 100
var is_truck_unlocked = false
var vehicle_id_array = [0, 1, 2]


func _ready() -> void:
	MusicController.play_music()
		
func _process(_delta) -> void:
	print(Globals.coin_score)
	coinLabel.text = str(Globals.coin_score)
	
	if Globals.coin_score >= 60 or is_yellow_car_unlocked:
		vehicleMenu.set_item_disabled(1, false)
	else:
		vehicleMenu.set_item_disabled(1, true)
	
	if Globals.coin_score >= 100 or is_truck_unlocked:
		vehicleMenu.set_item_disabled(2, false)
	else:
		vehicleMenu.set_item_disabled(2, true)

func _on_StartButton_pressed() -> void:
	transition.transition_to("res://Project/UI/LevelMenu/LevelMenu.tscn")

func _on_MusicVolume_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)

func _on_SoundEffects_value_changed(value) -> void:
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SoundEffects"), value)


func _on_SettingsButton_toggled(button_pressed: bool) -> void:
	if button_pressed:
		settingsMenu.show()
	else:
		settingsMenu.hide()

func _on_VehicleMenuOpen_pressed() -> void:
	vehicleMenu.show()

func _on_VehicleMenu_id_pressed(id) -> void:
	if id == 1 and coin_score >= yellow_car_price:
		Globals.coin_score = coin_score - yellow_car_price
		vehicleMenu.set_item_checked(id, true)
		is_yellow_car_unlocked = true
	elif id == 2 and coin_score >= truck_price:
		Globals.coin_score = coin_score - truck_price
		vehicleMenu.set_item_checked(id, true)
		is_truck_unlocked = true
	else:
		print("Not enough coins")
		
	for item in vehicle_id_array:
		if id != item:
			vehicleMenu.set_item_checked(item, false)
	Globals.load_vehicle(id)

