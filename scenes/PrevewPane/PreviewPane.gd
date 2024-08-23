extends Control

@export var selected_character: String

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_selected_character(character_name: String):
	selected_character = character_name
	$PlayerSplash.texture = CharacterInfo.CHARACTER_SPLASHES[character_name]
	$PlayerSplash.color = Color(255, 255, 255, 1.0)
	print(character_name)
