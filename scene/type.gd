extends Label

var didJump = false
var typing = false
# Called when the node enters the scene tree for the first time.
func _ready():
	type("press space for jump")
		
func _process(delta):
	if Input.is_action_just_pressed("jump") and not didJump:
		didJump = true
		while typing == true:
			await get_tree().create_timer(0.001).timeout
			pass
		type("Nice thats jumping!")
		await get_tree().create_timer(5).timeout
		delete(text)
		await get_tree().create_timer(10).timeout
		queue_free()

func type(texty):
	
	var textC = texty.length()
	var i = 0
	text=""
	typing = true
	
	while i < textC:
		text = text + texty[i]
		await get_tree().create_timer(0.09).timeout
		i += 1
		
	typing = false

func delete(texty):
	var textC = texty.length()
	var i = 0
	
	while i <= textC:
		text = text.substr(0, textC - i)
		i += 1
		await get_tree().create_timer(0.09).timeout
		
