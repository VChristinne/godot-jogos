extends Node2D

func _physics_process(_delta):
	$Inventory/HUD_Seed/Onion_Icon/Onion_Text.text = (str(Global.num_onion))
	$Inventory/HUD_Seed/Carrot_Icon/Carrot_Text.text = (str(Global.num_carrot))
	$Inventory/HUD_Seed/Corn_Icon/Corn_Text.text = (str(Global.num_corn))
	$Inventory/HUD_Seed/Strawberry_Icon/Strawberry_Text.text = (str(Global.num_strawberry))
	$Inventory/HUD_Seed/Apple_Icon/Apple_Text.text = (str(Global.num_apple))
	$Inventory/HUD_Seed/Orange_Icon/Orange_Text.text = (str(Global.num_orange))
	$Inventory/HUD_Seed/Cabbage_Icon/Cabbage_Text.text = (str(Global.num_cabbage))
	
	$Inventory/HUD_Pack/Onion_Pack/Onion_Text.text = (str(Global.num_onion_pack))
	$Inventory/HUD_Pack/Carrot_Pack/Carrot_Text.text = (str(Global.num_carrot_pack))
	$Inventory/HUD_Pack/Corn_Pack/Corn_Text.text = (str(Global.num_corn_pack))
	$Inventory/HUD_Pack/Strawberry_Pack/Strawberry_Text.text = (str(Global.num_strawberry_pack))
	$Inventory/HUD_Pack/Apple_Pack/Apple_Text.text = (str(Global.num_apple_pack))
	$Inventory/HUD_Pack/Orange_Pack/Orange_Text.text = (str(Global.num_orange_pack))
	$Inventory/HUD_Pack/Cabbage_Pack/Cabbage_Text.text = (str(Global.num_cabbage_pack))
	
	$Inventory/Coin_Icon/Coin_Text.text = (str(Global.coin))
