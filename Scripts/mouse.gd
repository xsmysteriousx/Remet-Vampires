extends Node2D


func _ready():
	set_process(true)
	
	pass
func _process(delta):
	var mpos = get_global_mouse_pos()
	set_pos(mpos)
	
	pass