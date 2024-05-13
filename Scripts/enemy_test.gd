extends CharacterBody3D

@onready var player = $"../Player"
@export var speed = 3
var player_position
var target_position
var stopper = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	player_position = player.position
	target_position = (player_position - position).normalized()

	
	
	if position.distance_to(player_position) > 1:
		velocity = Vector3(target_position * speed)
		move_and_slide()
		look_at(player_position)
