extends KinematicBody2D

export (int) var speed = 200
var velocity = Vector2.ZERO

func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	match input_direction:
		Vector2.RIGHT:
			$Animation.play("anim_side")
			$Animation.flip_h = true

		Vector2.LEFT:
			$Animation.play("anim_side")
			$Animation.flip_h = false

		Vector2.DOWN:
			$Animation.play("anim_down")

		Vector2.UP:
			$Animation.play("anim_up")

		Vector2.ZERO:
			$Animation.play("anim_idle")

	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide(velocity)  # warning-ignore:return_value_discarded

func player_sell_method():
	pass

func player_shop_method():
	pass
