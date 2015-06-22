extends Navigation2D

export(float) var move_speed = 32
export(int, "Fairy A", "Fairy B", "Fairy C", "Fairy D", "Fairy E") var sprite = 0 setget _set_sprite

const SPRITE_FAIRYA = "res://character/sprites/fairy_a.png"
const SPRITE_FAIRYB = "res://character/sprites/fairy_b.png"
const SPRITE_FAIRYC = "res://character/sprites/fairy_c.png"
const SPRITE_FAIRYD = "res://character/sprites/fairy_d.png"
const SPRITE_FAIRYE = "res://character/sprites/fairy_e.png"


func _ready():
	pass


func _set_sprite(value):
	var char = get_node("character")
	if char == null:
		return

	if value == 0:
		char.set_texture(load(SPRITE_FAIRYA))
	elif value == 1:
		char.set_texture(load(SPRITE_FAIRYB))
	elif value == 2:
		char.set_texture(load(SPRITE_FAIRYC))
	elif value == 3:
		char.set_texture(load(SPRITE_FAIRYD))
	elif value == 4:
		char.set_texture(load(SPRITE_FAIRYE))