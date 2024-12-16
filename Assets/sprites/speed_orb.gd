extends Area2D




func _ready():
	pass




func _on_body_entered(body):
	if body is Player:
		body.boost_speed()
		emit_signal("collected")
		queue_free()
