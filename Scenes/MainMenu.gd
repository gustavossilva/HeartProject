extends Node

onready var hoverAudioSource = $HoverSfx
onready var clickAudioSource = $ClickSfx
func _input(event):
	if (event.is_action_pressed("ui_cancel")):
		get_tree().quit()
	if (event.is_action_pressed("ui_accept")):
		clickAudioSource.play()
		yield(clickAudioSource, "finished")
		get_tree().change_scene("res://Scenes/Game.tscn")


func _on_ExitButton_pressed():
	clickAudioSource.play()
	yield(clickAudioSource, "finished")
	get_tree().quit()


func _on_StarGameButton_pressed():
	clickAudioSource.play()
	yield(clickAudioSource, "finished")
	get_tree().change_scene("res://Scenes/Game.tscn")


func _on_HowToPlayButton_pressed():
	clickAudioSource.play()
	yield(clickAudioSource, "finished")
	get_tree().change_scene("res://Scenes/HowToPlay.tscn")


func _on_CreditsButton_pressed():
	clickAudioSource.play()
	yield(clickAudioSource, "finished")
	get_tree().change_scene("res://Scenes/Credits.tscn")


func _on_OptionsButton_pressed():
	clickAudioSource.play()
	yield(clickAudioSource, "finished")
	#get_tree().change_scene("res://Scenes/Options.tscn")


func _on_mouse_entered():
	hoverAudioSource.play()
