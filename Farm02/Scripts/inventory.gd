extends Control

var PACK_ICON_OFFSET = 15
var PACK_ICON_START_X = 105
var PACK_ICON_START_Y = 169.5
var seeds_visible : bool = false
var selected_pack : int = 1

func _ready() -> void:
	update_icons_visibility()

func update_icons_visibility() -> void:
	update_pack_icons_visibility()
	update_seed_icons_visibility()

func update_pack_icons_visibility() -> void:
	var pack_icons : Array = get_node("HUD_Pack").get_children()
	
	for icon in pack_icons:
		icon.visible = !seeds_visible

func update_seed_icons_visibility() -> void:
	var seed_icons : Array = get_node("HUD_Seed").get_children()

	for icon in seed_icons:
		icon.visible = seeds_visible

func _input(event : InputEvent) -> void:
	if event is InputEventKey:
		handle_key_input(event)

func handle_key_input(event : InputEventKey) -> void:
	if event.scancode >= KEY_1 and event.scancode <= KEY_7 and not seeds_visible and event.pressed:
		selected_pack = event.scancode - KEY_1 + 1
		Global.plant_selected = selected_pack

		var mark_icon = $HUD_Pack/Mark_Icon
		var x_offset = selected_pack * PACK_ICON_OFFSET
		mark_icon.global_position.x = PACK_ICON_START_X + x_offset
		mark_icon.global_position.y = PACK_ICON_START_Y
		
		print_debug("\nX: ", mark_icon.global_position.x)
		print_debug("Y: ", mark_icon.global_position.y)
		
		print_debug("Pacote selecionado: ", selected_pack)

	elif Input.is_action_just_pressed("inventory_next"):
		seeds_visible = !seeds_visible
		update_icons_visibility()
