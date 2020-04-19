extends Node2D

func _on_Area2D_body_entered(body):
	print('can click')


func _on_Area2D_body_exited(body):
	print('cant click')
