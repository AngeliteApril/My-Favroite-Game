extends Node


var scrollDetect: Panel


func _ready() -> void:
	scrollDetect = get_tree().current_scene.get_node("ScrollDetect")
	print(scrollDetect)

func get_scrollPos():
	return scrollDetect.position
