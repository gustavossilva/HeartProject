extends Node

var level = 1 setget set_level

var level_time = 30
var spawn_time = 3
var velocity = 10
var max_life = 100
var playerLife = max_life setget set_player_life

signal life_changed

func set_level(value):
	level = clamp(self.level + value, 1, 6)
	self.velocity = clamp(self.velocity + 5, 10, 40)
	self.spawn_time = clamp(self.spawn_time - 0.5, 0.5, 3)

func set_player_life(value):
	playerLife = clamp(value, 0, max_life)
	if playerLife <= 0:
		game_over()
		#Colocar função de gameOver
	if level > 5 && playerLife > 0:
		victory()
		
func game_over():
	print("game over")
	
func victory():
	print("victory")

