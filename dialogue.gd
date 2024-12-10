extends Control

# Declare member variables
var dialogues : Array = []  # Initialize the dialogues array properly
var current_dialogue_index = 0
var isreaddy = true

# Nodes
@onready var dialogue_label : Label = $Label  # Ensure the type is correct
@onready var next_button : Button = $Button  # Ensure the type is correct

# Start the dialogue system
func _ready():
	# Hide the button initially and connect the button's signal
	next_button.connect("pressed", self, "_on_next_button_pressed")
	next_button.hide()  # Hide the next button initially

	# Add some example dialogue lines
	dialogues = [
		"Hello there! Welcome to the game.",
		"This is the first step of the dialogue system.",
		"Press the button to continue the conversation!",
		"Goodbye, and good luck!"
	]

	# Check if there are any dialogues to show
	if dialogues.size() > 0:
		start_dialogue()
	else:
		print("No dialogues to show!")

# Start displaying the dialogue
func start_dialogue():
	current_dialogue_index = 0  # Reset the dialogue index
   # is_dialogue_active = true
	show_dialogue()  # Show the first dialogue
	next_button.show()  # Show the next button when the dialogue starts

# Display the current dialogue
func show_dialogue():
	dialogue_label.text = dialogues[current_dialogue_index]
	next_button.show()  # Ensure the button is visible when the dialogue is shown

# Function to move to the next dialogue
func _on_next_button_pressed():
	current_dialogue_index += 1
	
	# Check if there are more dialogues
	if current_dialogue_index >= dialogues.size():
		end_dialogue()  # End the dialogue if there are no more dialogues
	else:
		show_dialogue()  # Show the next dialogue

# End the dialogue system
func end_dialogue():
	#is_dialogue_active = false
	dialogue_label.text = ""  # Clear the dialogue text
	next_button.hide()  # Hide the button
	print("Dialogue ended.")
