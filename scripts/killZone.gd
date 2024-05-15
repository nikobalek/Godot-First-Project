extends Area2D
@onready var timer = $Timer
@onready var sfx = $sfx


func _on_body_entered(body):
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	print("you died")
	sfx.play()
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
