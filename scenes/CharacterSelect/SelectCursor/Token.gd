extends Control

@export var snap_speed: float

var state: STATE = STATE.HELD
var pos_src = Vector2(0, 0)
var pos_dst = Vector2(0, 0)
var pos = 0.0  # From 0 to 1, weighted average of pos_src and pos_dst when PICKING_UP

signal clicked

enum STATE {DROPPED, PICKING_UP, HELD}

func _ready():
	pass

func _process(delta):
	mouse_filter = Control.MOUSE_FILTER_STOP if state == STATE.DROPPED else MOUSE_FILTER_IGNORE
	$TokenTexture.mouse_filter = mouse_filter
	pos_dst = get_global_mouse_position()
	if state == STATE.PICKING_UP:
		pos += delta / snap_speed
		if pos >= 1.0:
			pos = 1.0
			state = STATE.HELD
		position = pos_dst * pos + pos_src * (1 - pos)
	if state == STATE.HELD:
		position = pos_dst
		
func drop():
	state = STATE.DROPPED

func pick_up():
	pos = 0.0
	pos_src = position
	pos_dst = get_global_mouse_position()
	state = STATE.PICKING_UP


func _on_token_texture_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print('b')
			clicked.emit()
