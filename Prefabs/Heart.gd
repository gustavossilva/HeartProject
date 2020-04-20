extends Node2D

onready var player_vars = get_node("/root/GameManager")

signal change_life

func _on_Area2D_body_entered(body):
	player_vars.playerLife -= 10
	emit_signal("change_life")
	body.queue_free()
