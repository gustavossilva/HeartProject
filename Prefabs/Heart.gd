extends Node2D

func _on_Area2D_body_entered(body):
	#HP -- and queue_free the arrow
	body.queue_free()
