// Heavy projectile ammunition (cannonballs and ballista spears).
// Each datum is the single source of truth for the corresponding projectile, previously
// hardcoded in code/modules/projectiles/projectile/bullets/cannonball.dm.

/datum/ammo/bullet/heavy/cannonball
	name = "cannonball"
	icon_state = "cannonball"
	damage = 110

/datum/ammo/bullet/heavy/cannonball/explosive
	name = "explosive shell"
	damage = 40

/datum/ammo/bullet/heavy/cannonball/emp
	name = "malfunction shot"
	icon_state = "emp_cannonball"
	damage = 15

/datum/ammo/bullet/heavy/cannonball/biggest_one
	name = "\"The Biggest One\""
	icon_state = "biggest_one"
	damage = 70

/datum/ammo/bullet/heavy/cannonball/trashball
	name = "trashball"
	icon_state = "trashball"
	damage = 90

/datum/ammo/bullet/heavy/cannonball/meteorslug
	name = "meteorslug"
	icon_state = "small"
	damage = 40
	range = 7

/datum/ammo/bullet/heavy/ballista_spear
	name = "ballista spear"
	icon_state = "ballista_spear"
	damage = 60
	speed = 3

/datum/ammo/bullet/heavy/ballista_spear/dragonator
	name = "dragon-slaying ballista spear"
	icon_state = "ballista_spear_dragon"
	damage = 120
	speed = 4
	armour_penetration = 25

/datum/ammo/bullet/heavy/ballista_spear/prod
	name = "ballistic prod"
	icon_state = "ballista_prod"
	damage = 40
