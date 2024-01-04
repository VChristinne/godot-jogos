extends Weapon

var weapon: Weapon = Weapon.new()

func _ready():
	weapon.name = "Axe"

func _input(event):
	if event.is_action_released("ui_attack"):
		$Animation_Axe.play("anim_axe_right")

func set_damage(damage: float):
	self.damage = damage

func hitting():
	pass

func set_knockback_force(knockback_force: float):
	self.knockback_force = knockback_force
