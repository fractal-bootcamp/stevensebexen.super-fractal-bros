extends Control

var selected_char = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_character_select_character_selected(character_name):
	if $Token.state == $Token.STATE.DROPPED:
		return
	selected_char = character_name
	$PreviewPane.set_selected_character(character_name)
	$Token.drop()
	$Cursor.open_hand()


func _on_token_clicked():
	selected_char = null
	$Token.pick_up()
	$Cursor.close_hand()
