extends Node2D

onready var coin = $Sprite

func _on_CoinZone_body_entered(_body) -> void:
	Globals.coin_score += 10
	coin.queue_free()
