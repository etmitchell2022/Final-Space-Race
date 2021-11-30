extends Node2D



func _on_FinishZone_body_entered(body):
	queue_free()
