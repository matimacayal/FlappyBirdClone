extends Area2D


func _on_body_entered(body):
	print("You died")
	get_tree().reload_current_scene()
