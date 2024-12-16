extends Area2D

# This function will be triggered when something enters the part's area
func _on_body_entered(body):
	if body.is_in_group("Player"):  # Check if it's the player that collided with the part
		queue_free()  # Remove the part from the scene
		PartTracker.parts_collected += 1
		PartTracker.tire_collected += 1
func _ready():
	if PartTracker.tire_collected == 1:
		queue_free()
