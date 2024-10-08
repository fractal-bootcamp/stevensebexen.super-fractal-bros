extends Sprite2D

@export var is_open: bool

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	position = get_global_mouse_position()
	frame = 0 if is_open else 1

func close_hand():
	is_open = false
	
func open_hand():
	is_open = true
	
