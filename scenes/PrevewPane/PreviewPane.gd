extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_selected_character(character_name: String):
	$PlayerSplash.texture = CharacterInfo.CHARACTER_SPLASHES[character_name]
	$PlayerSplash.color = Color(1, 1, 1, 1)
	$PlayerWindow.set_selected_character(character_name.to_lower())
	print(character_name)
