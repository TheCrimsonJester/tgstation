// Sniper calibre ammunition.
// Each datum is the single source of truth for the corresponding round, previously
// hardcoded in code/modules/projectiles/projectile/bullets/sniper.dm.

// .50 BMG (Sniper)

/datum/ammo/bullet/sniper/p50
	name = ".50 BMG bullet"
	speed = 2.5
	range = 400
	damage = 70
	armour_penetration = 50

/datum/ammo/bullet/sniper/p50/surplus
	name = ".50 BMG surplus bullet"
	armour_penetration = 0

/datum/ammo/bullet/sniper/p50/disruptor
	name = ".50 BMG disruptor bullet"
	damage_type = STAMINA

/datum/ammo/bullet/sniper/p50/incendiary
	name = ".50 BMG incendiary bullet"
	icon_state = "infernoshot"
	damage_type = BURN

/datum/ammo/bullet/sniper/p50/penetrator
	name = ".50 BMG penetrator round"
	icon_state = "gauss"
	damage = 60
	range = 50

/datum/ammo/bullet/sniper/p50/penetrator/shuttle
	name = ".50 BMG aggression dissuasion round"
	icon_state = "gaussstrong"
	damage = 25
	speed = 3
	range = 16

/datum/ammo/bullet/sniper/p50/marksman
	name = ".50 BMG marksman round"
	icon_state = null
	damage = 50
	range = 50

// 20x138mm bullet (lahti-l39)

/datum/ammo/bullet/sniper/mm20x138
	name = "20x138mm bullet"
	speed = 3.5
	range = 400
	damage = 400
	armour_penetration = 50
