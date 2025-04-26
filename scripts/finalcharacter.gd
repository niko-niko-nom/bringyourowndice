extends Node2D

@onready var confetti = preload("res://scenes/particlesandbox.tscn")

func _ready():
	var confettiInstance = confetti.instantiate()
	add_child(confettiInstance)
