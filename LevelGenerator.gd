extends Node2D

export var Levels = 10;
var LevelScene = ResourceLoader.load("res://Tile/RandomFloor.tscn");

func _ready():
	for i in range(Levels - 1):
		var level = LevelScene.instance();
		level.position = Vector2(0, (i + 1) * (64 * 4) + (3*64))
		add_child(level);
