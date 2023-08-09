extends StaticBody2D

func _on_Area2D_body_entered(body):
	if body.has_method("player_sell_method"):
		var prices = {
			"carrot": 2,
			"onion": 5,
			"corn": 8,
			"strawberry": 10,
			"apple": 3,
			"orange": 5,
			"cabbage": 12
		}

		var coins = Global.coin
		
		var items = {
			"carrot": "num_carrot",
			"onion": "num_onion",
			"corn": "num_corn",
			"strawberry": "num_strawberry",
			"apple": "num_apple",
			"orange": "num_orange",
			"cabbage": "num_cabbage"
		}

		for item in items.keys():
			coins += Global[items[item]] * prices[item]
			Global[items[item]] = 0

		Global.coin = coins
