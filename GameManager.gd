extends Node


var level = 1 setget set_level
var level_time = 30
var spawn_time = 3
var velocity = 10

func set_level(value):
	level = clamp(self.level + value, 1, 6)
	self.velocity = clamp(self.velocity + 5, 10, 40)
	self.spawn_time = clamp(self.spawn_time - 0.5, 0.5, 3)
