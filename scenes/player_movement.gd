extends CharacterBody2D

const SPEED = 300.0
const ROTATION_SPEED = 2.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	var direction : Vector2 = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * SPEED
	move_and_slide()
	
	var rotate_direction : float = Input.get_axis("rotate_anticlockwise", "rotate_clockwise")
	$Weapon.rotation_degrees += rotate_direction * ROTATION_SPEED
