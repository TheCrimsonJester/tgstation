// Revolver calibre ammunition.
// Each datum is the single source of truth for the corresponding round, previously
// hardcoded in code/modules/projectiles/projectile/bullets/revolver.dm.

// 7.62x38mmR (Nagant Revolver)

/datum/ammo/bullet/revolver/n762
	name = "7.62x38mmR bullet"
	damage = 60

// .38 (Detective's Gun)

/datum/ammo/bullet/revolver/c38
	name = ".38 bullet"
	damage = 25

/datum/ammo/bullet/revolver/c38/match
	name = ".38 Match bullet"

/datum/ammo/bullet/revolver/c38/match/bouncy
	name = ".38 Rubber bullet"
	damage = 10
	stamina = 30

/datum/ammo/bullet/revolver/c38/match/true
	name = ".38 True Strike bullet"
	damage = 20
	armour_penetration = 35

/datum/ammo/bullet/revolver/c38/dumdum
	name = ".38 DumDum bullet"
	damage = 15
	weak_against_armour = TRUE

/datum/ammo/bullet/revolver/c38/trac
	name = ".38 TRAC bullet"
	damage = 10

/datum/ammo/bullet/revolver/c38/hotshot
	name = ".38 Hot Shot bullet"
	damage = 20

/datum/ammo/bullet/revolver/c38/iceblox
	name = ".38 Iceblox bullet"
	damage = 20

// .357 (Syndie Revolver)

/datum/ammo/bullet/revolver/c357
	name = ".357 bullet"
	icon_state = "bullet"
	damage = 40

/datum/ammo/bullet/revolver/c357/phasic
	name = ".357 phasic bullet"
	icon_state = "gaussphase"
	damage = 35
	armour_penetration = 100

/datum/ammo/bullet/revolver/c357/heartseeker
	name = ".357 heartseeker bullet"
	icon_state = "gauss"

/datum/ammo/bullet/revolver/c357/match
	name = ".357 match bullet"

//gatfruit

/datum/ammo/bullet/revolver/pea
	name = "pea bullet"
	icon_state = "pea"
	damage = 15
	weak_against_armour = TRUE
