// SMG calibre ammunition.
// Each datum is the single source of truth for the corresponding round, previously
// hardcoded in code/modules/projectiles/projectile/bullets/smg.dm.

// .45 (M1911 & C20r)

/datum/ammo/bullet/smg/c45
	name = ".45 bullet"
	damage = 30

/datum/ammo/bullet/smg/c45/ap
	name = ".45 armor-piercing bullet"
	armour_penetration = 50

/datum/ammo/bullet/smg/c45/hp
	name = ".45 hollow point bullet"
	damage = 50
	weak_against_armour = TRUE

/datum/ammo/bullet/smg/c45/incendiary
	name = ".45 incendiary bullet"
	icon_state = "infernoshot"
	damage = 25

/datum/ammo/bullet/smg/c45/reaper
	name = ".45 reaper pellet"
	icon_state = null
	damage = 50
	armour_penetration = 40

// 4.6x30mm (Autorifles)

/datum/ammo/bullet/smg/c46x30mm
	name = "4.6x30mm bullet"
	damage = 20

/datum/ammo/bullet/smg/c46x30mm/ap
	name = "4.6x30mm armor-piercing bullet"
	damage = 15
	armour_penetration = 40

/datum/ammo/bullet/smg/c46x30mm/incendiary
	name = "4.6x30mm incendiary bullet"
	icon_state = "infernoshot"
	damage = 15
