extends KinematicBody2D

export (int) var speed = 200
var velocity = Vector2.ZERO
var control_instance

func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	match input_direction:
		Vector2.RIGHT:
			$Animation.play("anim_side")
			$Animation.flip_h = true
			velocity = Vector2(speed, 0)

		Vector2.LEFT:
			$Animation.play("anim_side")
			$Animation.flip_h = false
			velocity = Vector2(-speed, 0)

		Vector2.DOWN:
			$Animation.play("anim_down")
			velocity = Vector2(0, speed)

		Vector2.UP:
			$Animation.play("anim_up")
			velocity = Vector2(0, -speed)

		Vector2.ZERO:
			$Animation.play("anim_idle")
			velocity = Vector2.ZERO
	
func _physics_process(_delta):
	get_input()
	move_and_slide(velocity)  # warning-ignore:return_value_discarded
	
	if not control_instance:
		var canvas_layer = $CanvasLayer
		var control_scene = preload("res://Scenes/Inventory.tscn")
		control_instance = control_scene.instance()
		canvas_layer.add_child(control_instance)

func player_sell_method():
	pass

func player_shop_method():
	pass
