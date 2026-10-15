extends Label


# Called when the node enters the scene tree for the first time.
var zero = 0
var score = zero
var score_text = ""

func _ready():
	Eventbus.Duck_collected.connect(_on_duck_collected)
	
func _on_duck_collected():
	score = score + 1
	score_text = str(score)
	text = r'Score: ' + score_text
