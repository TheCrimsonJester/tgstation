// Pistol calibre ammunition.
// Each datum is the single source of truth for the corresponding round, previously
// hardcoded in code/modules/projectiles/projectile/bullets/pistol.dm.

// 9mm (Makarov, Stechkin APS)

/datum/ammo/bullet/pistol/c9mm
	name = "9mm bullet"
	damage = 30

/datum/ammo/bullet/pistol/c9mm/ap
	name = "9mm armor-piercing bullet"
	damage = 25
	armour_penetration = 40

/datum/ammo/bullet/pistol/c9mm/hp
	name = "9mm hollow-point bullet"
	damage = 40
	weak_against_armour = TRUE

/datum/ammo/bullet/pistol/c9mm/incendiary
	name = "9mm incendiary bullet"
	icon_state = "infernoshot"
	damage = 25

// 10mm (Ansem)

/datum/ammo/bullet/pistol/c10mm
	name = "10mm bullet"
	damage = 40

/datum/ammo/bullet/pistol/c10mm/ap
	name = "10mm armor-piercing bullet"
	damage = 35
	armour_penetration = 40

/datum/ammo/bullet/pistol/c10mm/hp
	name = "10mm hollow-point bullet"
	damage = 50
	weak_against_armour = TRUE

/datum/ammo/bullet/pistol/c10mm/incendiary
	name = "10mm incendiary bullet"
	icon_state = "infernoshot"
	damage = 35

// .50AE (Desert Eagle)

/datum/ammo/bullet/pistol/a50ae
	name = ".50AE bullet"
	damage = 60

// .160 smart (Abielle smartgun)

/datum/ammo/bullet/pistol/c160smart
	name = ".160 smart bullet"
	icon_state = "smartgun"
	damage = 10
	speed = 0.5
