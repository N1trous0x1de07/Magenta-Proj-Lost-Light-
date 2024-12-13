extends CharacterBody2D
class_name Player

var normal_speed = 100
var slowed_speed = 50
var current_speed = normal_speed

@onready var sprite : AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
		

	# Handle jump.
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	var updown := Input.get_axis("up","down")
	if direction:
		velocity.x = direction * current_speed
	else:
		velocity.x = move_toward(velocity.x, 0, current_speed)
	if updown:
		velocity.y = updown * current_speed
	else:
		velocity.y = move_toward(velocity.y,0,current_speed)

	set_direction()

	move_and_slide()

func slow_down():
	current_speed = slowed_speed
	
	
func speed_up():
	current_speed = normal_speed
	

func set_direction():
	if Input.is_action_pressed("left"):
		sprite.play("left")
		
	elif Input.is_action_pressed("right"):
		sprite.play("right")

	elif Input.is_action_pressed("up"):
		sprite.play("up")
		
	elif Input.is_action_pressed("down"):
		sprite.play("down")
	
	else:
		sprite.play("idle")  # Play "idle" animation when no buttons are pressed
