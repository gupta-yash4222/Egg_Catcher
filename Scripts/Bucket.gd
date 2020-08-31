extends KinematicBody2D

var spl = preload("res://Textures/splash_new.png")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
# Replace with function body.

func _process(delta):
	var y = get_position().y
	var x = get_position().x
	if Input.is_action_pressed("ui_right"):
		x = x+4
	if Input.is_action_pressed("ui_left"):
		x = x-4
	set_position(Vector2(x,y))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group("eggs"):
		#print("Caught")
		if body.get_node("Sprite").get_texture() != spl:
			get_node("/root/World").score += 1
		body.queue_free()
# Replace with function body.
