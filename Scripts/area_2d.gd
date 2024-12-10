extends Area2D

# This function will be triggered when something enters the part's area
func _on_body_entered(body):
    if body.is_in_group("MainCharacter"):  # Check if it's the player that collided with the part
        queue_free()  # Remove the part from the scene
        print("Part collected!")  # Optional: print a message for debugging
