extends Node

func _process(delta):
	$GUI.position.y = $Hero.position.y - 250;
	$GUI/ScoreValue.text = str($Hero.score);
