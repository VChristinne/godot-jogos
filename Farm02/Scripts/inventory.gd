extends Control

var plants_visible = false
var selected_pack = 1

func _ready():
	updateIconsVisibility()

func updateIconsVisibility():
	var pack_icons = get_node("Color_Inventory_Pack").get_children()
	var plants_icons = get_node("Color_Inventory").get_children()

	for icon in pack_icons:
		icon.visible = !plants_visible

	for icon in plants_icons:
		icon.visible = plants_visible

func _input(event):
	if Input.is_action_just_pressed("inventory_next"):
		plants_visible = !plants_visible
		updateIconsVisibility()

	if event is InputEventKey:
		if event.scancode >= KEY_1 and event.scancode <= KEY_7 and not plants_visible and event.pressed:
			selected_pack = event.scancode - KEY_1 + 1
			Global.plant_selected = selected_pack

			var mark_icon = $Color_Inventory_Pack/Mark_Icon
			var x_offset = selected_pack * 15
			mark_icon.global_position.x = 105 + x_offset
			mark_icon.global_position.y = 171.5

			print("Pacote selecionado: ", selected_pack)
