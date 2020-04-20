extends Node2D

onready var player_vars = get_node("/root/GameManager")
onready var audio = $AudioStreamPlayer2D

signal change_life

func _on_Area2D_body_entered(body):
	player_vars.playerLife -= 10
	emit_signal("change_life")
	audio.play()
	body.queue_free()

func playAudio():
	audio.play()
