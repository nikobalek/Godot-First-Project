extends Node



@onready var label = $"../CanvasLayer/Label"

var score = 0

func add_point():
	score += 1
	print(score)
	label.text = str(score)

