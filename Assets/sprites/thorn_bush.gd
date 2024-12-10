extends CharacterBody2D


const SPEED = 0


func _on_thorn_detection_body_entered(body):
	if body is Player:
		body.slow_down()
		



func _on_thorn_detection_body_exited(body):
	if body is Player:
		body.speed_up()
	
