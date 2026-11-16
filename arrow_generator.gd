extends Node2D

@export var scene_to_instance : PackedScene

# Called when the node enters the scene tree for the first time.
func make_arrow() -> void:
	add_child(scene_to_instance.instantiate())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
