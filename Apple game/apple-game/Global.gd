extends Node

var score = 0
var killpoints = 0


func _Process():
	if score >= (2 + killpoints) * killpoints:
		killpoints += 1
		print(killpoints)

func Score_Lost():
	score -= (1 + killpoints)

func Score_Gained():
	score += 1
