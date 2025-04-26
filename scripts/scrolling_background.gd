extends TextureRect

@export var scroll_speed := Vector2(10.0, 10.0)
var custom_time := 0.0

func _process(delta):
	custom_time += delta
	material.set_shader_parameter("custom_time", custom_time)
