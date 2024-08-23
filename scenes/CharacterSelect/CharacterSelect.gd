extends Control

signal character_selected(character_name: String)

var CharacterCard = load("res://scenes/CharacterSelect/CharacterCard.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	create_character_card_box()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func create_character_card_box():
	for i in range(0, CharacterInfo.CHARACTER_NAMES.size()):
		var character_card = CharacterCard.instantiate()
		character_card.portrait = CharacterInfo.CHARACTER_PORTRAITS[CharacterInfo.CHARACTER_NAMES[i]]
		character_card.character_name = CharacterInfo.CHARACTER_NAMES[i]
		character_card.clicked.connect(_on_character_card_clicked)
		$CharacterCards.add_child(character_card)

func _on_character_card_clicked(character_name):
	character_selected.emit(character_name)
