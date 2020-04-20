extends Node

onready var music = $MenuMusic

func pauseMusic():
	music.stop()

func playMusic():
	music.play()
