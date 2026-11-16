extends Label

var messages = [
	"You gotta BOUNCE BACK!",
	"BOUNCE BACK knuckle head",
	"Cmon man we gotta BOUNCE BACK",
	"Whats wrong? We need to BOUNCE BACK",
	"Its fine, you just have to BOUNCE BACK",
]

func _ready() -> void:
	randomize()
	text = messages.pick_random()
