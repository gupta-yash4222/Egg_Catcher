extends Node2D

export (PackedScene) var splash



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Egg_body_entered(body):
	if body.get_name() == "Ground":
		var a = splash.instance()
		add_child(a)
		#a.set_position(get_node("Egg").get_position())
		
 # Replace with function body.
