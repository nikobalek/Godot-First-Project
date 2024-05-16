extends Label

func _process(delta):
	# Example: Update GUI element positions based on camera position
	var camera_pos = get_viewport().get_camera().global_position
	# Apply custom logic to update GUI elements
