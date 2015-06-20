extends KinematicBody2D

export(bool) var enable_input = true
export(int, "Renko", "Maribel") var model = 0
export(float) var move_speed = 32

const SPRITE_RENKO = "res://character/sprites/renko.png"
const SPRITE_MARIBEL = "res://character/sprites/maribel.png"

var _interact_length


func _ready():
	set_process_input(true)
	set_fixed_process(true)

	var texture
	if model == 1:
		texture = load(SPRITE_MARIBEL)
	elif model == 0:
		texture = load(SPRITE_RENKO)

	get_node("character").set_texture(texture)
	
	_interact_length = get_node("interact").get_cast_to().length()


func _fixed_process(delta):
	set_process_input(enable_input)

	if not enable_input:
		return

	var char = get_node("character")
	var dir = char.dir;

	if Input.is_action_pressed("move_up"):
		dir.y = -1
	elif Input.is_action_pressed("move_down"):
		dir.y = 1
	else:
		dir.y = 0

	if Input.is_action_pressed("move_left"):
		dir.x = -1
	elif Input.is_action_pressed("move_right"):
		dir.x = 1
	else:
		dir.x = 0

	char.dir = dir
	char.is_moving = dir != Vector2(0,0)

	if char.is_moving:
		move(char.dir * move_speed * delta)

	get_node("interact").set_cast_to(char.dir * _interact_length)


func _input(event):
	if event.is_action("move_up"):
		pass

	if event.is_action("move_down"):
		pass

	if event.is_action("move_left"):
		pass

	if event.is_action("move_right"):
		pass

	if event.is_action("input_a"):
		if event.is_pressed() and not event.is_echo():
			_interact()


func _interact():
	var raycast = get_node("interact")
	if raycast.is_colliding():
		print(raycast.get_collider())