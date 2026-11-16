extends Node

const DATA_FILE = "user://gamedatamain.json"


var playerdata = {
	"scores": [],
	"gamesplayed": 0,
	"high_score": {
		"value": 0
	},
	"firstsession": false
}



var songdata = {
	"song1": {
		"songtitle": "Basics",
		"artist": "Intense Piano Solo 'Everlasting' ",
		"songdescription": "Pracy",
		"songpath": "content",
		"difficulty": "Easy"
	},
	"song2": {
		"songtitle": "Journey",
		"artist": "Convexity 'Complexity'",
		"songdescription": "Pracy",
		"songpath": "content",
		"difficulty": "Advanced"
	},
	"song3": {
		"songtitle": "Finale",
		"artist": "Die Die Die 'Rant'",
		"songdescription": "Pracy",
		"songpath": "",
		"difficulty": "Expert"
	},

	
}


func save():
	var file = FileAccess.open(DATA_FILE, FileAccess.WRITE)

	if file == null:
		printerr("Could not save data!")
		return

	var json_string = JSON.stringify(playerdata)
	file.store_string(json_string)
	file.close()


func load():
	if not FileAccess.file_exists(DATA_FILE):
		printerr("No saved data!")
		return

	var file = FileAccess.open(DATA_FILE, FileAccess.READ)
	var json_string = file.get_as_text()
	file.close()

	var data = JSON.parse_string(json_string)

	if data is Dictionary:
		playerdata = data
	else:
		printerr("Corrupted data!")


func get_data(key: String):
	return playerdata.get(key)

func get_songdata(): return songdata

func get_songdatatable(key: String): return songdata.get(key)

func set_data(key: String, value: Variant):
	playerdata[key] = value
