// Special / exotic projectiles.
// Each datum is the single source of truth for the corresponding projectile.

// Ion

/datum/ammo/special/ion
	name = "ion bolt"
	icon_state = "ion"
	damage = 0
	damage_type = BURN
	armor_flag = ENERGY

/datum/ammo/special/ion/weak

// Meteor

/datum/ammo/special/meteor
	name = "meteor"
	icon_state = "small1"
	damage = 90
	armour_penetration = 100
	damage_type = BRUTE
	armor_flag = BULLET

// Plasma cutter

/datum/ammo/special/plasma
	name = "plasma blast"
	icon_state = "plasmacutter"
	damage_type = BURN
	armor_flag = ENERGY
	damage = 5
	range = 3

/datum/ammo/special/plasma/adv
	damage = 7
	range = 4

/datum/ammo/special/plasma/adv/mech
	damage = 10
	range = 7

/datum/ammo/special/plasma/turret
	name = "plasma beam"
	damage = 24
	range = 7

// Alien spit

/datum/ammo/special/neurotoxin
	name = "neurotoxin spit"
	icon_state = "neurotoxin"
	damage = 65
	damage_type = STAMINA
	armor_flag = BIO
	armour_penetration = 50

/datum/ammo/special/neurotoxin/damaging
	damage = 30

/datum/ammo/special/ink_spit
	name = "ink spit"
	icon_state = "ink_spit"
	damage = 5
	damage_type = STAMINA
	armor_flag = BIO
	armour_penetration = 50

// Temperature beams

/datum/ammo/special/temp
	name = "freeze beam"
	icon_state = "ice_2"
	damage = 0
	damage_type = BURN
	armor_flag = ENERGY

/datum/ammo/special/temp/hot
	name = "heat beam"
	icon_state = "lava"

/datum/ammo/special/temp/cryo
	name = "cryo beam"
	range = 9

/datum/ammo/special/temp/pyro
	name = "hot beam"
	icon_state = "firebeam"
	range = 9

// Gravity

/datum/ammo/special/gravityrepulse
	name = "repulsion bolt"
	icon_state = "chronofield"
	damage = 0
	damage_type = BRUTE

/datum/ammo/special/gravityattract
	name = "attraction bolt"
	icon_state = "chronofield"
	damage = 0
	damage_type = BRUTE

/datum/ammo/special/gravitychaos
	name = "gravitational blast"
	icon_state = "chronofield"
	damage = 0
	damage_type = BRUTE

// Curse hand

/datum/ammo/special/curse_hand
	name = "curse hand"
	icon_state = "cursehand0"
	damage_type = BURN
	damage = 10
	speed = 0.5
	range = 16

/datum/ammo/special/curse_hand/hel
	name = "Hel's grasp"
	damage = 5
	speed = 1
	range = 20

// Flora somatorays (extend /obj/projectile/energy)

/datum/ammo/energy/flora
	damage = 0
	damage_type = TOX

/datum/ammo/energy/flora/mut
	name = "alpha somatoray"
	icon_state = "energy"

/datum/ammo/energy/flora/yield
	name = "beta somatoray"
	icon_state = "energy2"

/datum/ammo/energy/flora/evolution
	name = "gamma somatoray"
	icon_state = "energy3"

// Fisher

/datum/ammo/energy/fisher
	name = "attenuated kinetic force"
	icon_state = null
	damage = 0
	damage_type = BRUTE
	armor_flag = BOMB
	range = 21

/datum/ammo/energy/fisher/melee
	range = 1

// Mindflayer beam (extends /obj/projectile/beam)

/datum/ammo/laser/mindflayer
	name = "flayer ray"

// Wormhole beams (extend /obj/projectile/beam)

/datum/ammo/laser/wormhole
	name = "bluespace beam"
	icon_state = null
	damage = 0

/datum/ammo/laser/wormhole/orange
	name = "orange bluespace beam"
