// LMG, mech, turret and SAW ammunition.
// Each datum is the single source of truth for the corresponding round, previously
// hardcoded in code/modules/projectiles/projectile/bullets/lmg.dm.

// C3D (Borgs)

/datum/ammo/bullet/lmg/c3d
	damage = 20

// Mech LMG

/datum/ammo/bullet/lmg/lmg
	damage = 20

// Mech FNX-99

/datum/ammo/bullet/lmg/fnx99
	icon_state = "infernoshot"
	damage = 20

// Turrets

/datum/ammo/bullet/lmg/manned_turret
	damage = 20

/datum/ammo/bullet/lmg/manned_turret/hmg
	icon_state = "redtrac"

/datum/ammo/bullet/lmg/syndicate_turret
	damage = 20

// 7mm (SAW)

/datum/ammo/bullet/lmg/a7mm
	name = "7mm bullet"
	damage = 30
	armour_penetration = 5

/datum/ammo/bullet/lmg/a7mm/ap
	name = "7mm armor-piercing bullet"
	damage = 25
	armour_penetration = 75

/datum/ammo/bullet/lmg/a7mm/hp
	name = "7mm hollow-point bullet"
	damage = 50
	weak_against_armour = TRUE

/datum/ammo/bullet/lmg/a7mm/incendiary
	name = "7mm incendiary bullet"
	icon_state = "infernoshot"
	damage = 25

/datum/ammo/bullet/lmg/a7mm/match
	name = "7mm match bullet"

/datum/ammo/bullet/lmg/a7mm/bouncy
	name = "7mm rubber bullet"
	damage = 20
