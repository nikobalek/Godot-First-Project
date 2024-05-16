extends Area2D
@onready var timer = $Timer
@onready var sfx = $sfx
@onready var character_body_2d = $"/root/Game/CharacterBody2D"


func _on_body_entered(body):
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	character_body_2d.set_speed(0)
	print("you died")
	sfx.play()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
