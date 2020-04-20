extends Node

onready var clickAudioSource = $ClickSfx
onready var hoverAudioSource = $ClickSfx

func _input(event):
	if (event.is_action_pressed("ui_cancel")):
		get_tree().change_scene("res://Scenes/MainMenu.tscn")
	if (event.is_action_pressed("ui_accept")):
		clickAudioSource.play()
		yield(clickAudioSource, "finished")
		get_tree().change_scene("res://Scenes/MainMenu.tscn")


func _on_backButton_mouse_entered():
	hoverAudioSource.play()


func _on_backButton_pressed():
	clickAudioSource.play()
	yield(clickAudioSource, "finished")
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
