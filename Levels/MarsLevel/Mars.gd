extends Node2D

onready var transition := $CanvasLayer/TransitionColor

func _on_Finish_body_entered(body):
	if body == $Car:
		transition.transition_to("res://UI/End/End.tscn")
