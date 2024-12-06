extends CharacterBody2D

const speed = 0

var player_in_chat_zone = false


		
func _on_chat_detection_body_entered(body):
	if body is Player:
		player_in_chat_zone = true
		$Lady_D/Label.visible = true
		
func _on_chat_detection_body_exited(body):
	if body is Player:
		player_in_chat_zone = false
		$Lady_D/Label.visible = false
