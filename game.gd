extends Node2D

func _enter_tree():
	get_tree().get_root().add_user_signal("show_dialogue", [{ "dialogue" : TYPE_DICTIONARY }])
	pass


func _ready():
#	get_tree().add_user_signal("dialogue", [{ "dialogue" : TYPE_DICTIONARY }])
#	OS.set_window_position(OS.get_screen_size(0) / 2 - OS.get_window_size() / 2)
#	get_tree().connect("screen_resized", self, "_on_screen_resized")
	pass


func _on_screen_resized():
	var mode = SceneTree.STRETCH_MODE_2D
	var aspect = SceneTree.STRETCH_ASPECT_KEEP_HEIGHT
	var minsize = Vector2(320, 180)
	
	var winsize = OS.get_window_size()
	if winsize.x < winsize.y:
		aspect = SceneTree.STRETCH_ASPECT_KEEP_WIDTH
	
	get_tree().set_screen_stretch(mode, aspect, minsize)
	print(winsize, " ", aspect)