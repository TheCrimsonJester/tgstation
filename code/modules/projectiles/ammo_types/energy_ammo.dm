// Energy weapon ammunition.
// Each datum is the single source of truth for the corresponding projectile, previously
// hardcoded across code/modules/projectiles/projectile/energy/*.dm.

/datum/ammo/energy/electrode
	name = "electrode"
	icon_state = "spark"
	range = 5

/datum/ammo/energy/tesla
	name = "tesla bolt"
	icon_state = "tesla_projectile"
	damage = 10

/datum/ammo/energy/tesla/revolver
	name = "energy orb"

/datum/ammo/energy/tesla/cannon
	name = "tesla orb"
	damage = 15

/datum/ammo/energy/tesla_cannon
	name = "tesla bolt"
	icon_state = null
	damage = 5

/datum/ammo/energy/inferno
	name = "molten nanite bullet"
	icon_state = "infernoshot"
	damage = 20
	armour_penetration = 10

/datum/ammo/energy/cryo
	name = "frozen nanite bullet"
	icon_state = "cryoshot"
	damage = 20
	damage_type = BRUTE
	armour_penetration = 10

/datum/ammo/energy/photon
	name = "photon bolt"
	icon_state = "solarflare"
	damage_type = STAMINA
	damage = 5
	range = 20
	speed = 1

/datum/ammo/energy/nuclear_particle
	name = "nuclear particle"
	icon_state = "nuclear_particle"
	damage_type = TOX
	damage = 10
	speed = 2.5

/datum/ammo/energy/radiation
	name = "radiation beam"
	icon_state = "declone"
	damage = 20
	damage_type = TOX

/datum/ammo/energy/radiation/weak
	damage = 9

/datum/ammo/energy/bolt
	name = "bolt"
	icon_state = "cbbolt"
	damage = 15
	damage_type = TOX
	stamina = 60

/datum/ammo/energy/bolt/halloween
	name = "candy corn"
	icon_state = "candy_corn"

/datum/ammo/energy/bolt/large
	damage = 20

/datum/ammo/energy/snare
	name = "energy snare"
	icon_state = "e_netting"
	damage = 30
	damage_type = STAMINA
	range = 10

/datum/ammo/energy/dart
	name = "dart"
	icon_state = "toxin"
	damage = 5
	damage_type = TOX
	range = 7
