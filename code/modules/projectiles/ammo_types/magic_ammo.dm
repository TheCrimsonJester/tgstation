// Magic spell projectile ammunition.
// Each datum is the single source of truth for the corresponding projectile, previously
// hardcoded in code/modules/projectiles/projectile/magic.dm.

/datum/ammo/magic/death
	name = "bolt of death"
	icon_state = "pulse1_bl"

/datum/ammo/magic/resurrection
	name = "bolt of resurrection"
	icon_state = "ion"

/datum/ammo/magic/teleport
	name = "bolt of teleportation"
	icon_state = "bluespace"

/datum/ammo/magic/safety
	name = "bolt of safety"
	icon_state = "bluespace"

/datum/ammo/magic/door
	name = "bolt of door creation"
	icon_state = "energy"

/datum/ammo/magic/change
	name = "bolt of change"
	icon_state = "ice_1"
	damage_type = BURN

/datum/ammo/magic/animate
	name = "bolt of animation"
	icon_state = "red_1"
	damage_type = BURN

/datum/ammo/magic/spellblade
	name = "blade energy"
	icon_state = "lavastaff"
	damage = 15
	damage_type = BURN

/datum/ammo/magic/arcane_barrage
	name = "arcane bolt"
	icon_state = "arcane_barrage"
	damage = 20
	damage_type = BURN

/datum/ammo/magic/locker
	name = "locker bolt"
	icon_state = "locker"

/datum/ammo/magic/flying
	name = "bolt of flying"
	icon_state = "flight"

/datum/ammo/magic/bounty
	name = "bolt of bounty"
	icon_state = "bounty"

/datum/ammo/magic/antimagic
	name = "bolt of antimagic"
	icon_state = "antimagic"

/datum/ammo/magic/fetch
	name = "bolt of fetching"
	icon_state = "fetch"

/datum/ammo/magic/babel
	name = "bolt of babel"
	icon_state = "babel"

/datum/ammo/magic/necropotence
	name = "bolt of necropotence"
	icon_state = "necropotence"

/datum/ammo/magic/wipe
	name = "bolt of possession"
	icon_state = "wipe"

/datum/ammo/magic/aoe
	damage = 0

/datum/ammo/magic/aoe/lightning
	name = "lightning bolt"
	icon_state = "tesla_projectile"
	damage = 15
	damage_type = BURN
	speed = 3.5

/datum/ammo/magic/aoe/magic_missile
	name = "magic missile"
	icon_state = "magicm"
	range = 100
	speed = 0.2

/datum/ammo/magic/aoe/magic_missile/lesser
	range = 10

/datum/ammo/magic/aoe/juggernaut
	name = "Gauntlet Echo"
	icon_state = "cultfist"
	damage = 30
	damage_type = BRUTE
	range = 105
	speed = 0.15

/datum/ammo/magic/fireball
	name = "bolt of fireball"
	icon_state = "fireball"
	damage = 10
	damage_type = BURN

/datum/ammo/magic/nothing
	name = "bolt of nothing"

/datum/ammo/magic/spellcard
	name = "enchanted card"
	icon_state = "spellcard"
	damage_type = BURN
	damage = 2

/datum/ammo/magic/shrink
	name = "shrink ray"
	icon_state = "blue_laser"
	damage = 0
	damage_type = STAMINA
	armor_flag = ENERGY

// Extends /obj/projectile/temp rather than /obj/projectile/magic

/datum/ammo/special/temp/chill
	name = "bolt of chills"
	armour_penetration = 100
