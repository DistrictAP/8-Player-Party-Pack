
extends Control

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	get_node("quit").connect("pressed",self,"_on_quit_pressed")


func _on_quit_pressed():
	get_tree().quit()

func _on_options_pressed():
	get_tree().change_scene("res://Scenes/Menu/options.scn")