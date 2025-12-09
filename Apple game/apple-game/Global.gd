extends Node

var score = 0
var wingate = randi_range(5, 15)

func Score_Gained():
	score += 1
	get_node("/root/Node2D/Panel/Score").text = "Score: " + str(score)
	if (score >= wingate):
		get_node("/root/Node2D/win screen").show()
		get_tree().paused = true
