extends Node

onready var animation = $TutorialAnimation/AnimationPlayer
onready var clickAudioSource = $ClickAudio
onready var hover = $Hover


func _on_AnimationPlayer_animation_finished(anim_name):
	animation.play("Tutorial")


func _on_StartButton_pressed():
	clickAudioSource.play()
	yield(clickAudioSource, "finished")
	get_tree().change_scene("res://Scenes/Game.tscn")


func _on_BackButton_pressed():
	clickAudioSource.play()
	yield(clickAudioSource, "finished")
	get_tree().change_scene("res://Scenes/MainMenu.tscn")


func _on_mouse_entered():
	hover.play()
