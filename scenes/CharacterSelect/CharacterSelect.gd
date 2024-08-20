extends Control

signal character_selected(character_name: String)

var CHARACTER_NAMES: Array[String] = [
	"Brian", "Bruno", "Dorothy", "Iyana", "Jacob",
	"Josh", "Lui", "Mehul", "Norman", "Parth",
	"Pranav", "Sam", "Sarah", "Steven"
]

var CharacterCard = load("res://scenes/CharacterSelect/CharacterCard.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	create_character_card_box()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func create_character_card_box():
	for i in range(0, CHARACTER_NAMES.size()):
		var character_card = CharacterCard.instantiate()
		character_card.portrait = load("res://assets/portraits/%s.png" % CHARACTER_NAMES[i].to_lower())
		character_card.character_name = CHARACTER_NAMES[i]
		character_card.clicked.connect(_on_character_card_clicked)
		$CharacterCards.add_child(character_card)

func _on_character_card_clicked(character_name):
	character_selected.emit(character_name)
