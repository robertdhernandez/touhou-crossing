extends KinematicBody2D

export(bool) var enable_input = true
export(float) var move_speed = 32
export(int, "Renko", "Maribel") var sprite = 0 #setget _set_sprite

const SPRITE_RENKO = "res://character/sprites/renko.png"
const SPRITE_MARIBEL = "res://character/sprites/maribel.png"

var _character
var _length


func _ready():
	set_process_input(true)
	set_fixed_process(true)

	_character = get_node("character")
	_length = get_node("interact").get_cast_to().length()

	print(_character)

	_set_sprite(sprite)

#	get_tree().connect("show_dialogue", self, "_on_show_dialogue")


func _fixed_process(delta):
	set_process_input(enable_input)

	if not enable_input:
		return

	var char = get_node("character")
	var dir = char.dir

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

	get_node("interact").set_cast_to(char.dir * _length)


func _input(event):
	# TODO move input into this function
	

#	var up = event.is_action("move_up")
#	var down = event.is_action("move_down")
#	var left = event.is_action("move_left")
#	var right = event.is_action("move_right")
#	var pressed = event.is_pressed()
#
#	var is_dir = up or down or left or right
#	if is_dir:
#		var char = get_node("character")
#		var dir = char.dir
#
#		if up or down:
#			dir.y = (down and pressed) - (up and pressed)
#
#		char.dir = dir

#	if event.is_action("move_up"):
#		if event.pressed:
#			dir.y = -1
#		elif Input.is_action_pressed("move_down"):
#			dir.y = 1
#		else:
#			dir.y = 0
#
#	if event.is_action("move_down"):
#		if event.pressed:
#			dir.y = 1
#		elif Input.is_action_pressed("move_up"):
#			dir.y = -1
#		else:
#			dir.y = 0
#
#	if event.is_action("move_left"):
#		if event.pressed:
#			dir.x = -1
#		elif Input.is_action_pressed("move_right"):
#			dir.x = 1
#		else:
#			dir.x = 0
#
#	if event.is_action("move_right"):
#		if event.pressed:
#			dir.x = 1
#		elif Input.is_action_pressed("move_left"):
#			dir.x = -1
#		else:
#			dir.x = 0

	if event.is_action_pressed("input_a"):
		_interact()


func _interact():
	var raycast = get_node("interact")
	if raycast.is_colliding():
		var obj = raycast.get_collider()
		if obj.has_method("interact"):
			obj.interact()
		print(obj.get_name())


func _set_sprite(value):
	var texture
	if sprite == 1:
		texture = load(SPRITE_MARIBEL)
	elif sprite == 0:
		texture = load(SPRITE_RENKO)
	_character.set_texture(texture)

#func _on_show_dialogue(dialogue):
#	enable_input = false