extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_character_select_character_selected(character_name):
	if $Token.state == $Token.STATE.DROPPED:
		return
	print("Character selected: %s" % character_name)
	$Token.drop()
	$Cursor.open_hand()


func _on_token_clicked():
	print("Token picked up")
	$Token.pick_up()
	$Cursor.close_hand()
