extends Node

const Arrow = preload("../Prefabs/Arrow.tscn")
onready var player_vars = get_node("/root/GameManager")
onready var lifeLabel = $UI/LifeLabel
onready var gameCamera = $GameCamera
onready var particles = $BloodParticle
onready var heart = $Heart
onready var doctorPanel = $DoctorPanel
onready var correctAudio = $BloodParticle/AudioStreamPlayer2D

onready var ArrowArea1 = $ArrowArea
onready var ArrowArea2 = $ArrowArea2
onready var ArrowArea3 = $ArrowArea3
onready var ArrowArea4 = $ArrowArea4

onready var MenuMusic = get_node("/root/MainMenuMusic")

var actualLeft = null
var actualRight = null
var actualUp = null
var actualDown = null

func _input(event):
	if (event.is_action_pressed("ui_left")):
		if actualLeft:
			actualLeft.queue_free()
			player_vars.playerLife += 1
			correctAudio.play()
			doctorPanel.change_animated_speed(-0.05)
			ArrowArea1.playAnimation()
		else:
			player_vars.playerLife -= 10
			cameraShake()
			particles.playParticle()
			heart.playAudio()
			doctorPanel.change_animated_speed(0.5)
	if (event.is_action_pressed("ui_right")):
		if actualRight:
			actualRight.queue_free()
			player_vars.playerLife += 1
			correctAudio.play()
			doctorPanel.change_animated_speed(-0.05)
			ArrowArea2.playAnimation()
		else:
			player_vars.playerLife -= 10
			cameraShake()
			particles.playParticle()
			heart.playAudio()
			doctorPanel.change_animated_speed(0.5)
	if (event.is_action_pressed("ui_up")):
		if actualUp:
			actualUp.queue_free()
			player_vars.playerLife += 1
			correctAudio.play()
			doctorPanel.change_animated_speed(-0.05)
			ArrowArea3.playAnimation()
		else:
			player_vars.playerLife -= 10
			cameraShake()
			particles.playParticle()
			heart.playAudio()
			doctorPanel.change_animated_speed(0.5)
	if (event.is_action_pressed("ui_down")):
		if actualDown:
			actualDown.queue_free()
			player_vars.playerLife += 1
			correctAudio.play()
			doctorPanel.change_animated_speed(-0.05)
			ArrowArea4.playAnimation()
		else:
			player_vars.playerLife -= 10
			cameraShake()
			particles.playParticle()
			heart.playAudio()
			doctorPanel.change_animated_speed(0.5)
	lifeLabel.text = str(player_vars.playerLife)
	
func _ready():
	MenuMusic.pauseMusic()
	gameLoop()
	spawn()
	
func spawn():
	var arrow = Arrow.instance()
	var main = get_tree().current_scene
	main.add_child(arrow)
	if self && player_vars && player_vars.level < 9:
		yield(get_tree().create_timer(player_vars.spawn_time), "timeout")
		spawn()

func gameLoop():
	if self && player_vars && player_vars.level < 9:
		yield(get_tree().create_timer(player_vars.level_time), "timeout")
		player_vars.level += 1
		gameLoop()
		pass
	
func cameraShake():
	if gameCamera:
		gameCamera.elapsedtime = 0
		gameCamera.isShake = true

func _on_ArrowArea_body_enter(body):
	self.actualLeft = body

func _on_ArrowArea2_body_enter(body):
	self.actualRight = body

func _on_ArrowArea3_body_enter(body):
	self.actualUp = body

func _on_ArrowArea4_body_enter(body):
	self.actualDown = body


func _on_ArrowArea_body_exit():
	self.actualLeft = null

func _on_ArrowArea2_body_exit():
	self.actualRight = null

func _on_ArrowArea3_body_exit():
	self.actualUp = null

func _on_ArrowArea4_body_exit():
	self.actualDown = null


func _on_Heart_change_life():
	lifeLabel.text = str(player_vars.playerLife)
	cameraShake()
	particles.playParticle()
