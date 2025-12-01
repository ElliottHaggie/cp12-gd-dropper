extends Label

func _on_area_2d_body_entered(body: Node2D) -> void:
	get_node("/root/Node2D/Panel/Score").text = "Score: " + str(Global.score)
	pass 
