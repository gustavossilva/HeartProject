extends Control

onready var playAudioSource = $PlaySfx

func _input(event):
	if (event.is_action_pressed("ui_accept")):
		playAudioSource.play()
		yield(playAudioSource, "finished")
		var changeScene = get_tree().change_scene("res://Scenes/MainMenu.tscn")
		print(changeScene)


func _on_PressEnterButton_pressed():
	playAudioSource.play()
	yield(playAudioSource, "finished")
	var changeScene = get_tree().change_scene("res://Scenes/MainMenu.tscn")
	print(changeScene)
