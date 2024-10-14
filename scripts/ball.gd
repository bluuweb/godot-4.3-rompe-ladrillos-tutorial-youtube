extends CharacterBody2D

const SPEED = 300.0
	
func start():
	# Establece la velocidad inicial, Vector2.DOWN es (0, 1)
	velocity = Vector2.DOWN * SPEED

func _physics_process(delta: float) -> void:
	# https://docs.godotengine.org/en/stable/tutorials/physics/using_character_body_2d.html
	# el método move_and_collide() se utiliza para mover un CharacterBody2D 
	# en una dirección específica (en tu caso, velocity * delta), 
	# y devuelve información sobre cualquier colisión que ocurra durante ese movimiento. 
	# Si ocurre una colisión, devuelve un objeto de tipo KinematicCollision2D; 
	# si no ocurre ninguna colisión, devuelve null
	var collision = move_and_collide(velocity * delta)
	if collision:
		# En Godot 4, el método get_collider() se utiliza para obtener una referencia  
		# al objeto (nodo) con el cual tu objeto ha colisionado. 
		var ref = collision.get_collider() as StaticBody2D
		if ref and ref.is_in_group("brick_group"):
			ref.destroy_brick()
			Global.increment_score()
		
		# ajusta la dirección de la velocidad del objeto para simular un rebote 
		# cuando este colisiona con una superficie
		velocity = velocity.bounce(collision.get_normal())
