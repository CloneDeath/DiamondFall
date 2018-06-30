extends Node2D

const NumberOfTiles = 17;
var DiamondScene = ResourceLoader.load("res://Diamond/Diamond.tscn");

func _ready():
	randomize()
	var startIndex = 1 + (randi() % (NumberOfTiles-5));
	for i in range(startIndex, startIndex+3):
		get_node("Ground%s" % i).queue_free();
	
	for i in range(0, NumberOfTiles - 2):
		if (randi() % 5 != 0): continue;
		var diamond = DiamondScene.instance();
		diamond.position = Vector2(i + 1, -1) * 64;
		add_child(diamond);