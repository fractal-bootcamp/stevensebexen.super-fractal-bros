extends Control

enum STATE {DROPPED, PICKING_UP, HELD}


func _ready():
	pass



func _process(_delta):	
	pass


func _on_character_select_character_selected(character_name):
	if $Token.state == STATE.HELD or $Token.state == STATE.PICKING_UP:
		$Token.drop()
		$Cursor.open_hand()
		print("Character selected: %s" % character_name)


func _on_token_clicked():
	print('YO')
	if $Token.state == STATE.DROPPED:
		$Token.pick_up()
		$Cursor.close_hand()
