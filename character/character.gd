extends Sprite

export(bool) var animate_idle = false

var dir = Vector2(0, 1) setget _dir_set, _dir_get
var is_moving = false setget , _is_moving_get

signal animate(dir, is_moving)

static func enum_dir(vec):
	var dir = round(((atan2(-vec.x, vec.y) + PI) * 180 / PI) / 45)
	if dir == 8:
		dir = 0
	return dir

func _dir_set(value):
	value = value.normalized()
	if value != Vector2(0, 0):
		if enum_dir(dir) != enum_dir(value):
			emit_signal("animate", value, is_moving or animate_idle)
		dir = value
	_is_moving_set(dir != Vector2(0, 0))

func _dir_get():
	return dir

func _is_moving_set(value):
	if is_moving != value:
		is_moving = value
		emit_signal("animate", dir, is_moving or animate_idle)

func _is_moving_get():
	return is_moving