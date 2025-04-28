extends Node2D

@onready var confetti = preload("res://scenes/particlesandbox.tscn")

func _ready():
	var confettiInstance = confetti.instantiate()
	add_child(confettiInstance)

func _on_startoverbtn_pressed():
	get_tree().change_scene_to_file("res://scenes/generator.tscn")

func _on_savepromptbtn_pressed():
	print("Character prompt saved!")
