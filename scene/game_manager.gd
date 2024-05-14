extends Node

@onready var label = $CanvasLayer/Label

var score = 0

func _ready():
	pass
	

func add_point():
	score += 1

	print(score)

