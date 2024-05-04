extends Area2D


func _process(delta):
	pass

func _on_body_entered(body):
	print("1 coin+")
	queue_free()
