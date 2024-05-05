extends Area2D

var timesEn = 0

func _on_body_entered(body):
	timesEn += 1
	if timesEn == 1:
		print("What the hell That wasnt supposed to happen!")
	elif timesEn == 2:
		print("Get The Fuck out Yuve already seen theres nothing here")
	elif timesEn == 10:
		print("sirously?! Ten TIMES?! are you stupid or somthing?")
	elif timesEn == 11:
		print("yeah it seems you are ...")
	elif timesEn == 12:
		print("nope you are not gonna iritate me anymore! even if you do it 100 times more!")
	elif timesEn == 111:
		print("Jesus!!!! 100 Fucking Times?!!!! you deserve a torphy mate!")
