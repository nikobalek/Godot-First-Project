extends Node


@onready var label = $"../CanvasLayer/Label"

var score = 0
var ltext = "0"

func add_point():
	score += 1
	if score > 9:
		ltext = "   " + str(score)
	else:
		ltext = str(score)
	label.text = ltext

