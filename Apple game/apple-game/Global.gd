extends Node

var score = 0
var killpoints = 0


func _process(delta):
	if score >= (2 + killpoints) * killpoints:
		killpoints += 1
		print(killpoints)

func Score_Lost():
	score -= (1 + killpoints)
	get_node("/root/Node2D/Panel/Score").text = "Score: " + str(score)

func Score_Gained():
	score += 1
	get_node("/root/Node2D/Panel/Score").text = "Score: " + str(score)
