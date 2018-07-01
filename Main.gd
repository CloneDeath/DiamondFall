extends Node

func _process(delta):
	$GUI.position.y = $Hero.position.y - 182;
	$GUI/ScoreValue.text = str($Hero.score);
