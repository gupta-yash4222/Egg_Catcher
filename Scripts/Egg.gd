extends RigidBody2D

export var delay = 2
export (PackedScene) var splash

var egg = preload("res://Textures/egg.png")
var spl = preload("res://Textures/splash_new.png")
var timer = 0 
#onready var createEgg = get_node("Egg")


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
# Replace with function body.

func _process(delta):
	timer += delta
	if get_position().y == 0:
		$Sprite.texture = egg
	if timer >= delay:
		queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Egg_body_entered(body):
	#print(body.get_name())
	if body.get_name() == "Ground":
		#var a = splash.instance()
		#add_child(a)
		#a.set_position(Vector2(get_position().x, get_position().y))
		$Sprite.texture = spl
		
		#print(get_position())
		#queue_free()
# Replace with function body.
