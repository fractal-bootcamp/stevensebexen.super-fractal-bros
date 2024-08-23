extends Control

@export var bg_scroll_speed: Vector2
@export var portrait: Texture2D
@export var character_name: String

signal clicked(character_name: String)

var bg_offset: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	custom_minimum_size = size
	$Portrait.texture = portrait
	$NameLabel.text = character_name
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	bg_offset += bg_scroll_speed * delta
	$Background.region_rect.size = size
	$Background.region_rect.position = position + bg_offset
	pass


func _on_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			clicked.emit(character_name)
