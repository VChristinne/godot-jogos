extends Node2D

class_name Weapon

var weapon_name: String
var damage: float
var attack_speed: float
var bullet_range: float
var knockback_force: float
var ammo_count: int
var reload_time: float
var is_melee: bool
var attack_position: Vector2

func melee_damage():
	pass

func apply_knockback():
	pass

func ranged_attack():
	pass

func reload():
	pass
