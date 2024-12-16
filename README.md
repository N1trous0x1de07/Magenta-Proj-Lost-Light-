# Description
Lost Light is a horror/exploration RPG game based in a magical snowy forest. Your character, Leon, is driving past the forest when his truck suddenly breaks down. He parks his truck and starts to explore when he meets an old man who tells him to find specific parts for his car scattered across the forest. As you explore you need to be careful because you might not be alone and most importantly escape the forest.


### Gameplay Features to Be Graded (Max 8)
* Movement and Collision
* Traps
* Tilemaps and Worldbuilding
* Dialogue
* GUI
* Magic
* Level Up/ Stats

### Examples/Locations of Implemented Features for Grading
* Inheritance - it is featured for the vechile in which has parts that are connected with it. Such as battery, gas can, and etc
* Encapsulation - it is featured for the players speed changes, when the player function enters traps and changes the speed
* Polymorphism - it is featured in the NPC's because the entire NPC's perform a single action off one function
* Abstraction - it is featured in many places when things are entred within each other and on the collision makes by just saying the Player is in.body
* Godot Features
	* Node Types - We have nodes of all sort such as character, NPC, and etc. Area2D, Animatedbody2D, Staticbody2D, VBox, Label, CollisionShape2D, CanvasModulation, tilemaplayer, etc.
	* Signals - On_body_entered, on_key_pressed(or some variant of it), On_body_exited, and possibly a couple others were used for the features in the game.
	* Scenes - There are at least 6 different map/area scenes that you can travel to using the campfires.
* Movement and Collisions - You move with your arrowkeys and collide with features within the game
* Traps - Traps are in the game and both do the same thing by slowoing down the player's speed / 1. Thorn bush - When the player comes into contact with the bush their speed is slowed / 2. Trashcan - The player's speed is slower in a large area around the trash can
* Tilemaps and Worldbuilding - The game features three different tilemaps for different things scattered around the maps, and there are also magical campfires at the exit and entrance to each area where you can press "Z" to teleport to the next or previous area.
* Dialogue - There are 5 NPC's in the game that each have their own unique dialogue. Some of them will give the player tooltips, and others talk about background information.
* GUI - The start menu gives you the option to start the game, open the settings menu and look at the controls tooltips, and exit the game. The endscreen gives the player the option to reset the game to play again or quit.
* Magic - There are speed orbs in the game that you can collect to move at 1.5x the speed, and there are magical teleportation campfires that transfer you from area to area (Not all campfires do this).
* Level Up/ Stats - The speed orb increases the player's speed stat, and it can be found in multiple locations around the game including the starter area.

* ### Team member roles
Mason - Mapping/Creative input, debugging and polishing. Made all of the maps for the game, polished the features and fixed everything needed.
Graceson - Technicalities/Coding, also extra cosmetics. Made the GUI, made the lighting system, created the lighting objects, helped with the mapping process slightly. Also remade the marketing materials.
Sol - Artist/Coding. Created the inventory system, drew all of the custom sprites for the game, and was helping to design the enemies before it was thrown on the backburner.
Aamir - Interactable characters/Objects. Coded all of the NPCs into the game, created the interactable hazards, gathered lots of game art, helped with anything possible.
Nick - Marketing materials/Emotional Support. Spent the entire length of the project lightening the mood occassionally and sitting on his phone. Made the first marketing cover for the game, but wasn't applicable.

### Links to external files
There are no links, its all in the repo.
