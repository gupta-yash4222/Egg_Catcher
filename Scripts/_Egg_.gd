extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
# Replace with function body.

func _process(delta):
	pass
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on__Egg__body_entered(body):
	#print(body.get_name())
	if body.get_name() == "Ground":
		queue_free()
 # Replace with function body.
