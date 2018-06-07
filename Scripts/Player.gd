extends Area2D

var vel = 80
var nova_anim = ""
var animacao = ""

func _ready():
	set_process(true)
	set_process_input(true)
	
	pass

func _process(delta):
	var d = 0 
	var e = 0
	var c = 0
	var b = 0
	var direita = Input.is_action_pressed("ui_right")
	var esquerda = Input.is_action_pressed("ui_left")
	var andando = false
	
	if direita:
		d = 1
		andando = true
		
	if esquerda:
		e = -1
		andando = true
		

	set_pos(get_pos() + Vector2 (vel, 0) * delta * (d + e))
	
	
	if Input.is_action_pressed("ui_up"):
		c = -1
		andando = true
		
	if Input.is_action_pressed("ui_down"):
		b = 1
		andando = true
		
	set_pos(get_pos() + Vector2 (0, vel) * delta * (c + b))
	
	if animacao != nova_anim:
		get_node("Sprite/anim").play(nova_anim)
		animacao = nova_anim
		
	if andando == true:
		nova_anim  = "walk"
	else :
		nova_anim = "idle"
		
		
func _input(event):
	if event.is_action_pressed("bater"):
		bate()
		get_node("Sprite/anim").play("bate")

func bate():
	
	pass
func _on_mouse_pos_area_enter( area ):
	if area.get_name() == "mouse_colide1":
		get_node("Sprite").set_flip_h(true)
	if area.get_name() == "mouse_colide2":
		get_node("Sprite").set_flip_h(false)
	pass # replace with function body
