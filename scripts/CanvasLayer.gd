extends CanvasLayer

func _process(delta):
	# For a 2D camera
	var camera = get_viewport().get_camera_2d()
	# For a 3D camera
	# var camera = get_viewport().get_camera_3d()
	
	# Now you can use the camera variable as needed
