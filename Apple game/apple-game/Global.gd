extends Node

var score = 0
var wingate = randi_range(10, 35)
var endless_mode = false

func _wingate_Gen():
	wingate = randi_range(10, 35)

func Score_Gained():
	score += 1
	
	if endless_mode == true:
		get_node("/root/Node2D/Panel/Score").text = "Score: " + str(score)
	else:
		get_node("/root/Node2D/Panel/Score").text = "Score: " + str(score) + "/" + str(wingate)
		if (score >= wingate):
			get_node("/root/Node2D/win screen").show()
			get_tree().paused = true

func _endless_score_update():
	get_node("/root/Node2D/Panel/Score").text = "Score: " + str(score)

func _regular_score_update():
	get_node("/root/Node2D/Panel/Score").text = "Score: " + str(score) + "/" + str(wingate)
