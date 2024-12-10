extends Area2D

const FILE_BEGIN = "res://Scenes/Maps/Level_"

var player_is_here = false

@export var level_to_load : int = -1

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		player_is_here = true
	pass
		
func _on_body_exited(body: Node2D):
	pass
	
func _process(_delta):
	if player_is_here and Input.is_action_pressed("teleport"):
		if level_to_load < 0:
			print("You didn't tell me a level!")
		
			var current_scene_file = get_tree().current_scene.scene_file_path
			var next_level_number = level_to_load
		
			var next_level_path = FILE_BEGIN + str(level_to_load) + ".tscn"
			get_tree().change_scene_to_file(next_level_path)
