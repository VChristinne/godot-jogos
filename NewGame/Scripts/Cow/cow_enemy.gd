extends CharacterBody2D

var attributes: Attributes = Attributes.new()
@onready var weapon = get_node("Weapon/Axe")

func _ready():
	$Animation.play("anim_idle")
	attributes.health = 20.0
	var damage = weapon.set_damage(10.0)
	var force = weapon.set_knockback_force(30.0)
	print_debug("", weapon.name, " damage: ", weapon.damage)

func _on_area_2d_body_entered(body):
	print_debug("", body)
	
	if body.has_method("hitting") and body.is_visible_in_tree():
		body.hitting()
		attributes.health -= weapon.damage
		print_debug("Cow Health: ", attributes.health)
		print_debug("Testing GIT")

		if attributes.health <= 0:
			queue_free()
