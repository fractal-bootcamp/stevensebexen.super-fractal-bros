extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_selected_character(character_name):
	$Twitter.text = CharacterInfo.LINKS[character_name].twitter
	$GitHub.text = CharacterInfo.LINKS[character_name].github
	$PersonalSite.text = CharacterInfo.LINKS[character_name].personal_site
