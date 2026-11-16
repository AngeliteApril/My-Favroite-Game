extends VBoxContainer

@onready var indicator: Label = $Indicator
@onready var score_label: Label = $Score
@onready var main: Node2D = $"../../.."
var score: int = 0
var combo: int = 0
var misses: int = 0
@onready var timer: Timer = $Indicator/Timer
@onready var combo_label: Label = $Combo
@onready var misses_label: Label = $Misses

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	main.hit.connect(sucessfull_hit)
	main.miss.connect(missed)
	
func sucessfull_hit():
	indicator.text = "Great!"
	timer.start()
	score += 300 * 0.1 * (combo + 1)
	combo += 1
	score_label.text = "Score: " + str(score)
	combo_label.text = "Combo: " + str(combo)
	await timer.timeout
	indicator.text = ""
	
func missed() -> void:
	combo = 0
	combo_label.text = "Combo: " + str(combo)
	misses += 1
	misses_label.text = "Misses: " + str(misses)
	indicator.text = "Miss"
	timer.start()

func _returnscores():
	return score

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
