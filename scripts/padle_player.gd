extends CharacterBody2D

const SPEED = 600
@onready var initial_position_y = position.y

func _physics_process(delta: float) -> void:
	position.y = initial_position_y
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
