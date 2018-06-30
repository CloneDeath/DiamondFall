extends Node2D

const NumberOfTiles = 17;

func _ready():
	randomize()
	var startIndex = 1 + (randi() % (NumberOfTiles-5));
	for i in range(startIndex, startIndex+3):
		get_node("Ground%s" % i).queue_free();