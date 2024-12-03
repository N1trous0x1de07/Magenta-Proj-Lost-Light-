extends Node2D
var is_paused = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("escape"):
		is_paused = not is_paused
	if is_paused == true:
		get_node("").paused = true
	elif is_paused == false:
		get_tree().paused = false
