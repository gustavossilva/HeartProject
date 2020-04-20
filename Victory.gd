extends Control

onready var MenuMusic = get_node("/root/MainMenuMusic")
onready var hoverAudioSource = $HoverSfx
onready var clickAudioSource = $ClickSfx

func _ready():
	MenuMusic.playMusic()


func _on_RestartButton_pressed():
	clickAudioSource.play()
	
	yield(clickAudioSource, "finished")
	get_tree().change_scene("res://Scenes/Game.tscn")


func _on_mouse_entered():
	hoverAudioSource.play()


func _on_MainMenuButton_pressed():
	clickAudioSource.play()
	yield(clickAudioSource, "finished")
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
