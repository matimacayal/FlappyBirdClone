extends Node2D

const SPEED = 300.0

func _physics_process(delta):
	position -= Vector2(1,0) * SPEED * delta

## Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
