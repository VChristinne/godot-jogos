extends Control

var icons_visible = true

func _ready():
	updateIconsVisibility()

func updateIconsVisibility():
	var plants_icons = get_node("Color_Inventory").get_children()
	var pack_icons = get_node("Color_Inventory_Pack").get_children()
	
	for icon in plants_icons:
		icon.visible = icons_visible

	for icon in pack_icons:
		icon.visible = !icons_visible

func _input(_event):
	if Input.is_action_just_pressed("inventory_next"):
		icons_visible = !icons_visible

	updateIconsVisibility()
