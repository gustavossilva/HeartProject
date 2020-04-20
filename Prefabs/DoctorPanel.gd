extends Node2D

onready var animatedSprite = $AnimatedSprite
var speed = 1

func change_animated_speed(speedProp):
	self.speed = clamp(self.speed + speedProp, 1, 6)
	animatedSprite.speed_scale = self.speed
