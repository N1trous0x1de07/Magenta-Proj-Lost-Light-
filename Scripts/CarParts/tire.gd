extends Area2D

# This function will be triggered when something enters the part's area
func _on_body_entered(body):
    if body.is_in_group("MainCharacter"):  # Check if it's the player that collided with the part
        queue_free()  # Remove the part from the scene
        print("Part collected!")  # Debug message
        # Notify the GameController
        var game_controller = get_tree().get_root().get_node("GameController")
        game_controller.on_part_collected()



