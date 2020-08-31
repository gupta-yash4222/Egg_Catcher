extends RigidBody2D

var delay = 3.5
var timer = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
 # Replace with function body.

func _process(delta):
	timer += delta
	if timer >= delay:
		timer = 0
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func _on_Insect_body_entered(body):
#	print(body.get_name())
#	if body.get_name() == "Ground":
#		queue_free()
 # Replace with function body.
