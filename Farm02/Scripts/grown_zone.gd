extends StaticBody2D

var plant = Global.plant_selected
var plant_growing = false
var plant_grown = false

func _physics_process(_delta):
	if plant_growing == false:
		plant = Global.plant_selected

func _on_Area2D_area_entered(_area):
	if not plant_growing:
		match plant:
			1:
				plant_growing = true
				$Plant.show()
				$Timer_Grown.start()
				$Plant.play("grow_carrot")

			2:
				plant_growing = true
				$Plant.show()
				$Timer_Grown.start()
				$Plant.play("grow_onion")

			3:
				plant_growing = true
				$Plant.show()
				$Timer_Grown.start()
				$Plant.play("grow_corn")

			4:
				plant_growing = true
				$Plant.show()
				$Timer_Grown.start()
				$Plant.play("grow_strawberry")

			5:
				plant_growing = true
				$Plant.show()
				$Timer_Grown.start()
				$Plant.play("grow_apple")

			6:
				plant_growing = true
				$Plant.show()
				$Timer_Grown.start()
				$Plant.play("grow_orange")

			7:
				plant_growing = true
				$Plant.show()
				$Timer_Grown.start()
				$Plant.play("grow_cabbage")
	else:
		print("Plant is already growing here!")

func _on_Timer_Grown_timeout():
	if $Plant.frame == 0:
		$Plant.frame = 1
		$Timer_Grown.start()

	elif $Plant.frame == 1:
		$Plant.frame = 2
		plant_grown = true

func _on_Area2D_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_just_pressed("mouse_click"):
		if plant_grown:
			match plant:
				1:
					Global.num_carrot += 1
					plant_growing = false
					plant_grown = false
					$Plant.play("none")

				2:
					Global.num_onion += 1
					plant_growing = false
					plant_grown = false
					$Plant.play("none")

				3:
					Global.num_corn += 1
					plant_growing = false
					plant_grown = false
					$Plant.play("none")

				4:
					Global.num_strawberry += 1
					plant_growing = false
					plant_grown = false
					$Plant.play("none")

				5:
					Global.num_apple += 1
					plant_growing = false
					plant_grown = false
					$Plant.play("none")

				6:
					Global.num_orange += 1
					plant_growing = false
					plant_grown = false
					$Plant.play("none")

				7:
					Global.num_cabbage += 1
					plant_growing = false
					plant_grown = false
					$Plant.play("none")
