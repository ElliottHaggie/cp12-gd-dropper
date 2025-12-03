extends Node

var score = 0

func Score_Gained():
	score += 1
	get_node("/root/Node2D/Panel/Score").text = "Score: " + str(score)
