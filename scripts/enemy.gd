extends Node2D

var direction = 1
var SPEED = 60

@onready var ray_cast_right_2d = $AnimatableBody2D/RayCastRight2D
@onready var ray_cast_left_2d_2 = $AnimatableBody2D/RayCastLeft2D
@onready var animated_sprite_2d = $AnimatableBody2D/AnimatedSprite2D


func _process(delta):
	if ray_cast_right_2d.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
		
	if ray_cast_left_2d_2.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
		
	position.x += delta * SPEED * direction
	



