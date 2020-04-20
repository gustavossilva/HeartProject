extends Node2D

onready var particles = $Particles2D

func playParticle():
	particles.emitting = true
