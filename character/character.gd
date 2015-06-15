extends KinematicBody2D

export(float) var move_speed = 32.0

var dir = Vector2(0, -1) setget _dir_set, _dir_get
var is_moving = false setget _is_moving_set, _is_moving_get

const SIGNAL_ANIMATE = "animate"


static func enum_dir(vec):
	var dir = round(((atan2(-vec.x, vec.y) + PI) * 180 / PI) / 45)
	if dir == 8:
		dir = 0
	return dir


func _init():
	add_user_signal(SIGNAL_ANIMATE, [{ "dir" : TYPE_VECTOR2}, { "is_moving" : TYPE_BOOL}])
	set_fixed_process(true)


func _fixed_process(delta):
	if is_moving:
		move(dir * move_speed * delta)


func _dir_set(value):
	value = value.normalized()
	if value != Vector2(0, 0):
		if enum_dir(dir) != enum_dir(value):
			emit_signal(SIGNAL_ANIMATE, value, is_moving)
		dir = value


func _dir_get():
	return dir


func _is_moving_set(value):
	if is_moving != value:
		is_moving = value
		emit_signal(SIGNAL_ANIMATE, dir, is_moving)
	pass


func _is_moving_get():
	return is_moving