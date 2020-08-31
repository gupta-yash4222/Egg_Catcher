extends Node2D

export var delay = 2

var timer = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_position())
	set_process(true)
# Replace with function body.

func _process(delta):
	timer += delta
	if timer >= delay:
		print("FREE")
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
