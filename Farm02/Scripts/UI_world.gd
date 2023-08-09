extends Node2D

func _physics_process(_delta):
	$Inventory/Color_Inventory/Onion_Icon/Onion_Text.text = (str(Global.num_onion))
	$Inventory/Color_Inventory/Carrot_Icon/Carrot_Text.text = (str(Global.num_carrot))
	$Inventory/Color_Inventory/Corn_Icon/Corn_Text.text = (str(Global.num_corn))
	$Inventory/Color_Inventory/Strawberry_Icon/Strawberry_Text.text = (str(Global.num_strawberry))
	$Inventory/Color_Inventory/Apple_Icon/Apple_Text.text = (str(Global.num_apple))
	$Inventory/Color_Inventory/Orange_Icon/Orange_Text.text = (str(Global.num_orange))
	$Inventory/Color_Inventory/Cabbage_Icon/Cabbage_Text.text = (str(Global.num_cabbage))
	
	$Inventory/Color_Inventory_Pack/Onion_Pack/Onion_Text.text = (str(Global.num_onion_pack))
	$Inventory/Color_Inventory_Pack/Carrot_Pack/Carrot_Text.text = (str(Global.num_carrot_pack))
	$Inventory/Color_Inventory_Pack/Corn_Pack/Corn_Text.text = (str(Global.num_corn_pack))
	$Inventory/Color_Inventory_Pack/Strawberry_Pack/Strawberry_Text.text = (str(Global.num_strawberry_pack))
	$Inventory/Color_Inventory_Pack/Apple_Pack/Apple_Text.text = (str(Global.num_apple_pack))
	$Inventory/Color_Inventory_Pack/Orange_Pack/Orange_Text.text = (str(Global.num_orange_pack))
	$Inventory/Color_Inventory_Pack/Cabbage_Pack/Cabbage_Text.text = (str(Global.num_cabbage_pack))
	
	$Inventory/Coin_Icon/Coin_Text.text = (str(Global.coin))
