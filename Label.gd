extends Label


# Called when the node enters the scene tree for the first time.
var score = 0

func _ready():
	Eventbus.Duck_collected.connect(_on_duck_collected)
	
func _on_duck_collected():
	score = score + 1
	text = 'Score: ' + score
