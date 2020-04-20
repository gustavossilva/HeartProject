extends KinematicBody2D

onready var player_vars = get_node("/root/GameManager")

var selfVelocity = Vector2.ZERO

func _ready():
	randomize()
	var randomValue = randi()%4+0
	match(randomValue):
		0:
			position.x = -6
			position.y = 46
			self.selfVelocity = Vector2.RIGHT * 1.5
		1:
			position.x = 169
			position.y = 46
			self.selfVelocity = Vector2.LEFT* 1.5
		2: 
			position.x = 79
			position.y = -8
			self.selfVelocity = Vector2.DOWN
		3: 
			position.x = 79
			position.y = 97
			self.selfVelocity = Vector2.UP
		_:
			pass
func _physics_process(delta):
	move_and_collide(selfVelocity * delta * player_vars.velocity)

func _exit_tree():
	print("play particles")
