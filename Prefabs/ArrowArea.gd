extends Node2D

onready var animation = $AnimationPlayer

signal body_enter(body)
signal body_exit()

func _on_Area2D_body_entered(body):
	emit_signal('body_enter', body)


func _on_Area2D_body_exited(body):
	emit_signal('body_exit')

func playAnimation():
	animation.play("ArrowAreaSucess")
