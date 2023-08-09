extends StaticBody2D

var selected = false
var seed_type = 1  # carrot

func _ready():
	$Animation.play("default")

func _on_Area2D_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_just_pressed("mouse_click"):
		Global.plant_selected = seed_type
		selected = true

func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25 * delta)

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and not event.pressed:
			selected = false 
