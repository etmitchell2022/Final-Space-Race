extends Node2D

onready var coin = $Sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_CoinZone_body_entered(_body) -> void:
	print("hit")
	Globals.coin_score += 10
	coin.queue_free()
	print(Globals.coin_score)
