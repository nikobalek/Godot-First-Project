extends Node


@onready var label = $"../CanvasLayer/Label"
@onready var character_body_2d = $"../CharacterBody2D"

var score = 0
var ltext = "0"
var pause = false

func _process(delta):
	if Input.is_action_just_pressed("escape") and pause == false:
		Engine.time_scale = 0
		character_body_2d.canJump = false
		character_body_2d.canMove = false
		pause = true
	elif Input.is_action_just_pressed("escape") and pause == true:
		Engine.time_scale = 1
		character_body_2d.canJump = true
		character_body_2d.canMove = true
		pause = false

func add_point():
	score += 1
	if score > 9:
		ltext = "   " + str(score)
	else:
		ltext = str(score)
	label.text = ltext

