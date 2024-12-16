extends Control


func _on_exit_button_pressed():
	get_tree().quit()


func _on_restart_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Maps/Level_0.tscn")
	PartTracker.parts_collected = 0
	PartTracker.gas_collected = 0
	PartTracker.fuse_collected = 0
	PartTracker.tire_collected = 0
	PartTracker.battery_collected = 0
	PartTracker.truck_works = 0
