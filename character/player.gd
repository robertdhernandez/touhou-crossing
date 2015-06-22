extends KinematicBody2D

export(bool) var enable_input = true
export(float) var move_speed = 32
export(int, "Renko", "Maribel") var sprite = 0 setget _set_sprite

const SPRITE_RENKO = "res://character/sprites/renko.png"
const SPRITE_MARIBEL = "res://character/sprites/maribel.png"

var _length


func _ready():
	set_process_input(true)
	set_fixed_process(true)

	_set_sprite(sprite)

	_length = get_node("interact").get_cast_to().length()

#	get_tree().connect("show_dialogue", self, "_on_show_dialogue")


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

	get_node("interact").set_cast_to(char.dir * _length)


func _input(event):
	# TODO move input into this function

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
	get_node("character").set_texture(texture)

#func _on_show_dialogue(dialogue):
#	enable_input = false