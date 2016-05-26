
extends Control

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# ADD List Items for controls
	var actions_list = get_node("TabContainer/Controls/actions_list")
	actions_list.add_item("Move UP")
	actions_list.add_item("Move Down")
	actions_list.add_item("Move Left")
	actions_list.add_item("Move Right")
	actions_list.add_item("Attack")
	
	#change names displayed on charachter picker
	var top = get_node("TabContainer/tab_player_settings/cont_players_top")
	var bottom = get_node("TabContainer/tab_player_settings/cont_players_bottom")
	var label = null
	#Set Top row
	label =top.get_node("cont_player1/lbl_player")
	label.set_text(get_node("/root/global").get_name(0))
	label =top.get_node("cont_player2/lbl_player")
	label.set_text(get_node("/root/global").get_name(1))
	label =top.get_node("cont_player3/lbl_player")
	label.set_text(get_node("/root/global").get_name(2))
	label =top.get_node("cont_player4/lbl_player")
	label.set_text(get_node("/root/global").get_name(3))
	#set Bottom Row
	label =bottom.get_node("cont_player5/lbl_player")
	label.set_text(get_node("/root/global").get_name(4))
	label =bottom.get_node("cont_player6/lbl_player")
	label.set_text(get_node("/root/global").get_name(5))
	label =bottom.get_node("cont_player7/lbl_player")
	label.set_text(get_node("/root/global").get_name(6))
	label =bottom.get_node("cont_player8/lbl_player")
	label.set_text(get_node("/root/global").get_name(7))
	
	set_process_input(true)
#Change to once everybofy has accepted
func _input(event):
	if (event.type==InputEvent.KEY and event.scancode == KEY_ESCAPE):
		#Switch back to other display
		get_tree().change_scene("res://Scenes/Menu/Start.scn")