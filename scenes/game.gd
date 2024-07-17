extends Node

@onready var timer := $Timer
var column_scene := preload("res://scenes/columns.tscn")
var deleted_clumns : float = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.wait_time = 1
	timer.start()


func _on_timer_timeout():
	new_column()

func new_column():
	var column := column_scene.instantiate()
	var column_y := randi_range(300, 560)
	column.position = Vector2(2050, column_y)
	add_child(column)

func _on_background_area_exited(area):
	deleted_clumns += 0.5
	print("deleted column #", str(deleted_clumns))
	area.queue_free()
