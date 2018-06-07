extends Node2D

onready var mpos = get_global_mouse_pos()

func _ready():
	set_process(true)
	
	pass
func _process(delta):
	set_pos(mpos)
	pass