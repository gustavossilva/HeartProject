extends Node2D

signal timeout

const NUMBER_OF_LEVELS = 5

const MAX_GAME_TIME = 180 #in seconds

const LEVEL_PERIOD = MAX_GAME_TIME/ NUMBER_OF_LEVELS

var time = 0
var currentLevel = 1

onready var player_vars = get_node("/root/GameManager")
onready var timeSlider = $TimeSlider
onready var timeLabel = $TimeLabel
func _process(delta):
	time += delta
	timeSlider.value = time
	timeLabel.text = "Time: %.1f"%time
	if time >= (LEVEL_PERIOD * currentLevel):
		currentLevel += 1
		player_vars.level += 1
		print("fim")
		emit_signal("timeout")
		
