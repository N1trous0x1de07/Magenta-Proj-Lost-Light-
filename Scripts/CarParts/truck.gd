extends Area2D

func _on_body_entered(body):
	if body.is_in_group("Player"):
		if PartTracker.parts_collected == 4:
			PartTracker.truck_works = 1
			if PartTracker.truck_works == 1:
				print("You can fix me now")
				get_tree().change_scene_to_file("res://Scenes/GUI/endscreen.tscn")
				
				
				
