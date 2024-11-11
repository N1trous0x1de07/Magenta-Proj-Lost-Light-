extends CharacterBody2D


const SPEED = 300.0

@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
		

	# Handle jump.
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	set_direction()

	move_and_slide()


func set_direction():
	if Input.is_action_pressed("ui_left"):
		sprite.play("left")
		
	elif Input.is_action_pressed("ui_right"):
		sprite.play("right")