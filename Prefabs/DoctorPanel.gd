extends Node2D

onready var animatedSprite = $AnimatedSprite
var speed = 1

func change_animated_speed(speed):
	self.speed = clamp(self.speed + speed, 1, 6)
	animatedSprite.speed_scale = self.speed
