extends KinematicBody2D

const GRAVITY = 1000.0
const WALK_SPEED = 200

var velocity = Vector2()

func _ready():
	$Area2D.connect("area_entered", self, "onCollect");

func onCollect(body):
	if (!body.is_in_group("diamond")): return;
	body.collect();

func _physics_process(delta):
	velocity.y += delta * GRAVITY
	if Input.is_action_pressed("ui_left"):
		velocity.x = -WALK_SPEED;
		$Sprite.scale = Vector2(-1, 1);
		$Sprite.play("walk");
	elif Input.is_action_pressed("ui_right"):
		velocity.x =  WALK_SPEED
		$Sprite.scale = Vector2(1, 1);
		$Sprite.play("walk");
	else:
		velocity.x = 0
		$Sprite.play("idle");
	move_and_slide(velocity, Vector2(0, -1))
	if (is_on_floor()):
		velocity.y = 0;
	else:
		$Sprite.play("jump");