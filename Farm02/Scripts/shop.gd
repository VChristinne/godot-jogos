extends StaticBody2D

var player_items = Global.owned_itens
var player_money = Global.coin
var item_name = Global.item_names
var current_item = 1  
var max_item = 7
var item_quantity = {}

func _ready():
	$Shop_Menu.visible = false
	$Shop_Menu/Pack_Icon.play(get_item_animation(current_item))

func _on_Area2D_body_entered(body):
	if body.has_method("player_shop_method"):
		$Shop_Menu.visible = true

func _on_Area2D_body_exited(_body):
	$Shop_Menu.visible = false

func _physics_process(_delta):
	if self.visible:
		$Shop_Menu/Pack_Icon.play(get_item_animation(current_item))
		$Shop_Menu/Price_Text.text = str(get_item_price(current_item))

func _on_Btn_Buy_pressed():
	buy_item(current_item)

func _on_Btn_Left_pressed():
	swap_item_back()

func _on_Btn_Right_pressed():
	swap_item_forward()

func swap_item_back():
	current_item -= 1
	if current_item < 1:
		current_item = max_item

func swap_item_forward():
	current_item += 1
	if current_item > max_item:
		current_item = 1

func get_item_animation(item):
	match item:
		1:
			return "pack_carrot"
		2:
			return "pack_onion"
		3:
			return "pack_corn"
		4:
			return "pack_strawberry"
		5:
			return "pack_apple"
		6:
			return "pack_orange"
		7:
			return "pack_cabbage"

func get_item_price(item):
	return Global.item_prices[item]

func get_item_name(item):
	return Global.item_names[item]
	
func has_item(item):
	if item in player_items:
		return true
	else:
		return false

func buy_item(item):
	var item_price = get_item_price(item)
	
	if player_money >= item_price:
		var item_limit = 30

		if !item_quantity.has(item):
			item_quantity[item] = 0

		var current_quantity = item_quantity[item]
		
		if current_quantity < item_limit:
			player_money -= item_price
			player_items.append(item)
			item_quantity[item] += 1
			print(get_item_name(item), " comprado com sucesso!")
			Global.coin = player_money
			
			match item:
				1:
					Global.num_carrot_pack += 1
				2:
					Global.num_onion_pack += 1
				3:
					Global.num_corn_pack += 1
				4:
					Global.num_strawberry_pack += 1
				5:
					Global.num_apple_pack += 1
				6:
					Global.num_orange_pack += 1
				7:
					Global.num_cabbage_pack += 1
			
		else:
			print("Limite de compra atingido para ", get_item_name(item))
	else:
		print("Dinheiro insuficiente para comprar ", get_item_name(item))
	
