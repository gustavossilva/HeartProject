extends Control

func _input(event):
	if (event.is_action_pressed("ui_accept")):
		get_tree().change_scene("res://Scenes/MainMenu.tscn")


func _on_PressEnterButton_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
