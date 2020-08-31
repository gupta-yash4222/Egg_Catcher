extends Node2D

var score = 0 setget set_score
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func set_score(value):
	score = value
	get_node("Score").set_text("EGGS CAUGHT : " + str(score))
# Replace with function body.

func _ready():
	$Panel.hide()
	set_process(true)

func _process(delta):
	if Input.is_key_pressed(KEY_ENTER):
		get_tree().reload_current_scene()
	
func _on_Area2D_body_entered(body):
	if body.is_in_group("insects"):
		$Panel.show()
		$BringEgg.queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

		
 # Replace with function body.
