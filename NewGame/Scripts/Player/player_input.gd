extends CharacterBody2D

var attributes: Attributes = Attributes.new()

@export var speed = 600
var last_animation = ""

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	match input_direction:
		Vector2.RIGHT:
			$Animation.play("anim_right")
			velocity = Vector2(speed, 0)

		Vector2.LEFT:
			$Animation.play("anim_left")
			velocity = Vector2(-speed, 0)

		Vector2.DOWN:
			$Animation.play("anim_down")
			velocity = Vector2(0, speed)

		Vector2.UP:
			$Animation.play("anim_up")
			velocity = Vector2(0, -speed)

		Vector2.ZERO:
			$Animation.stop()
			velocity = Vector2.ZERO

func _physics_process(_delta):
	get_input()
	move_and_slide()

func apply_damage():
	pass
	
