extends Panel

func get_overlapping_songs(songs: Array) -> Array:
	var overlapping: Array = []

	for song in songs:
		if get_global_rect().intersects(song.get_global_rect()):
			overlapping.append(song)

	return overlapping
