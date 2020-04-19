extends Node

const Arrow = preload("../Prefabs/Arrow.tscn")
onready var player_vars = get_node("/root/GameManager")

func _input(event):
	if (event.is_action_pressed("ui_left")):
		print(event.as_text())
	if (event.is_action_pressed("ui_right")):
		print(event.as_text())
	if (event.is_action_pressed("ui_up")):
		print(event.as_text())
	if (event.is_action_pressed("ui_down")):
		print(event.as_text())	

func _ready():
	gameLoop()
	spawn()
	
func spawn():
	var arrow = Arrow.instance()
	var main = get_tree().current_scene
	main.add_child(arrow)
	yield(get_tree().create_timer(player_vars.spawn_time), "timeout")
	spawn()

func gameLoop():
	yield(get_tree().create_timer(player_vars.level_time), "timeout")
	player_vars.set_level(player_vars.level+1)
	gameLoop()
