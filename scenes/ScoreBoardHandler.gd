extends ScrollContainer

@onready var scores_container: VBoxContainer = get_node("VBoxContainer")
@onready var score_template: Panel = get_parent().get_parent().get_parent().get_parent().get_node("ScoreTemplate")

func _ready() -> void:
	create_scoreboard()


func create_scoreboard() -> void:
	var scores: Array = [DataHandler.get_data("scores")]
	
	
	
	
	scores.sort()
	scores.reverse()

	
	for child in scores_container.get_children():
		scores_container.remove_child(child)
		child.queue_free()

  
	for table in scores:
		for i in range(table.size()):
			var score_clone = score_template.duplicate()
			scores_container.add_child(score_clone)
			score_clone.visible = true
			score_clone.get_node("Number").text = "#" + str(i + 1)
			score_clone.get_node("Score").text = str(int(table[i]))
			
		
#
		
		

		
