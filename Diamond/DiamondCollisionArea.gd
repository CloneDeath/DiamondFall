extends Area2D

func collect():
	var diamond = get_parent().get_parent();	
	get_node("../../AnimationPlayer").play("collect");
	remove_from_group("diamond")
