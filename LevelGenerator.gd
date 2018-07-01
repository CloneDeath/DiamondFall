extends Node2D

export var Levels = 10;
var LevelScene = ResourceLoader.load("res://Tile/RandomFloor.tscn");
var SpikeFloorScene = ResourceLoader.load("res://Tile/SpikeFloor.tscn");

func _ready():
	for i in range(Levels - 1):
		var level = LevelScene.instance();
		level.position = Vector2(0, (i + 1) * (64 * 4) + (3*64))
		add_child(level);
	
	var spikes = SpikeFloorScene.instance();
	spikes.position = Vector2(0, (Levels) * (64 * 4))
	add_child(spikes);
