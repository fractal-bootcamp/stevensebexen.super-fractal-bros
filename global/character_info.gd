extends Node

@export var CHARACTER_NAMES: Array[String] = [
	"Brian", "Bruno", "Dorothy", "Iyana", "Jacob",
	"Josh", "Lui", "Mehul", "Norman", "Parth",
	"Pranav", "Sam", "Sarah", "Steven"
]

var CHARACTER_PORTRAITS: Dictionary
var CHARACTER_SPLASHES: Dictionary

# Called when the node enters the scene tree for the first time.
func _ready():
	for character_name in CHARACTER_NAMES:
		CHARACTER_PORTRAITS[character_name] = load('res://assets/portraits/%s.png' % character_name)
		CHARACTER_SPLASHES[character_name] = load('res://assets/splashes/%s.png' % character_name)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
