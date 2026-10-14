extends Area2D

var acceleration = 1.0
var velocity = 0.0
var rotation_velocity = randf_range(1.0,3.0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity += acceleration * delta
	position.y += velocity
	rotation += rotation_velocity * delta
	



func _on_area_entered(area):
	if area.name == 'player_hitbox':
		Eventbus.Duck_collected.emit()
		queue_free()
