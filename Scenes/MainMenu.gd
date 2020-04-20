extends Node

func _input(event):
	if (event.is_action_pressed("ui_cancel")):
		get_tree().quit()
	if (event.is_action_pressed("ui_accept")):
		get_tree().change_scene("res://Scenes/Game.tscn")


func _on_ExitButton_pressed():
	get_tree().quit()


func _on_StarGameButton_pressed():
	get_tree().change_scene("res://Scenes/Game.tscn")


func _on_HowToPlayButton_pressed():
	get_tree().change_scene("res://Scenes/HowToPlay.tscn")


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://Scenes/Credits.tscn")


func _on_OptionsButton_pressed():
	get_tree().change_scene("res://Scenes/Options.tscn")
