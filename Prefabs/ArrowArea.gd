extends Node2D

signal body_enter(body)
signal body_exit()

var pos = "left"

func _on_Area2D_body_entered(body):
	emit_signal('body_enter', body)
	print('can click')


func _on_Area2D_body_exited(body):
	print('cant click')
	emit_signal('body_exit')
