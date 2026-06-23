extends CharacterBody2D

const SPEED = 200.0
@onready var player = get_node("/root/War Map/Player")

func _physics_process(delta: float) -> void:
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * SPEED
	move_and_slide()
