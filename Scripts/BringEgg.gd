extends Node2D

export var delay1 = 2.5
export var delay2 = 2.1
export (PackedScene) var egg
export (PackedScene) var insect

var timer1 = 0
var timer2 = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
# Replace with function body.

func _process(delta):
	timer1 += delta
	timer2 += delta
	var temp = get_node("/root/World").score
	if temp % 10 == 0 and temp > 0 :
		delay1 -= 0.001
		delay2 -= 0.003
	if timer1 >= delay1:
		timer1 = 0
		create_egg()
	if timer2 >= 2*delay2:
		timer2 = 0
		create_insect()
		
func create_insect():
	var a = insect.instance()
	a.add_to_group("insects")
	add_child(a)
	randomize()
	a.set_position(Vector2(rand_range(0,get_viewport().get_visible_rect().size.x),0))
	
func create_egg():
	var a = egg.instance()
	a.add_to_group("eggs")
	add_child(a)
	randomize()
	a.set_position(Vector2(rand_range(0,get_viewport().get_visible_rect().size.x),0))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Replace with function body.
