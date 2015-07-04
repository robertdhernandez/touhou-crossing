extends Control

var DIALOGUE_SAMPLE = {
	"speaker" : "Debug",
	"lines" : [
		"The quick brown fox jumped over the lazy dog",
		"The dsfdsfsdf"
	],
	"choices" : [
		"Choice 1",
		"Choice 2",
		"Choice 3"
	]
}

const SIGNAL_DISPLAY = "display"
const SIGNAL_ON_HIDDEN = "on_hidden"
const SIGNAL_ON_DISPLAYED = "on_display"
const SIGNAL_ON_MESSAGE_DONE = "on_message_done"
const SIGNAL_POST_MESSAGE = "post_message"
const SIGNAL_PROGRESS = "progress"


export(float) var display_rate = 1.0

var dialogue = {} setget _dialogue_set, _dialogue_get
var visible = false setget _visible_set, _visible_get

signal display


func _init():
	#add_user_signal(SIGNAL_DISPLAY, [{ "visible" : TYPE_BOOL }])
	add_user_signal(SIGNAL_ON_HIDDEN)
	add_user_signal(SIGNAL_ON_DISPLAYED)
	add_user_signal(SIGNAL_ON_MESSAGE_DONE)
	add_user_signal(SIGNAL_POST_MESSAGE, [{ "message" : TYPE_STRING, "speaker" : TYPE_STRING }])
	add_user_signal(SIGNAL_PROGRESS)
	
	connect(SIGNAL_DISPLAY, self, "_display")
	connect(SIGNAL_ON_DISPLAYED, self, "_on_displayed")
	connect(SIGNAL_PROGRESS, self, "_progress")
	
	set_margin(MARGIN_TOP, 0.0)


func _ready():
	get_tree().get_root().connect("show_dialogue", self, "_dialogue_set")


func _input(event):
	if event.type == InputEvent.KEY and event.scancode == KEY_F1 and event.is_pressed() and not event.is_echo():
		self.dialogue = DIALOGUE_SAMPLE


func _display(visible):
	if not visible:
		set_process_input(false)


func _on_displayed():
	_progress()


func _progress():
	if dialogue["lines"].size():
		emit_signal(SIGNAL_POST_MESSAGE, dialogue["lines"][0], dialogue["speaker"]);
		dialogue["lines"].remove(0)
	else:
		self.visible = false


func _dialogue_set(value):
	if not visible:
		dialogue = value
		self.visible = true
	else:
		print("Dialogue already displayed, ignoring")


func _dialogue_get():
	return dialogue


func _visible_set(value):
	if visible != value:
		visible = value
		emit_signal(SIGNAL_DISPLAY, visible)


func _visible_get():
	return visible


func _on_animator_finished():
	var sig = SIGNAL_ON_DISPLAYED
	if not visible:
		sig = SIGNAL_ON_HIDDEN
	emit_signal(sig)