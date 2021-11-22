extends Node2D


onready var transition := $CanvasLayer/TransitonColor


func _on_FinishZone_body_entered(body):
	if body == $Car:
		transition.transition_to("res://UI/End/End.tscn")
