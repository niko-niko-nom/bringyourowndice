extends Control

func _on_generate_pressed():
	get_tree().change_scene_to_file("res://scenes/generator.tscn")

func _on_view_pressed():
	get_tree().change_scene_to_file("res://scenes/saved.tscn")

func _on_quit_pressed():
	get_tree().quit()

func _on_homebutton_pressed():
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")
