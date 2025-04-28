extends Button

@onready var icon_texture_rect = $TextureRect

func _process(_delta):
	await get_tree().create_timer(0).timeout

	if get_tree().current_scene.name == "MainMenu" or get_tree().current_scene.name == "Finalcharacter":
		hide()
	else:
		show()

func _pressed():
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")

func _on_mouse_entered():
	icon_texture_rect.material.set_shader_parameter("invert", true)

func _on_mouse_exited():
	icon_texture_rect.material.set_shader_parameter("invert", false)
