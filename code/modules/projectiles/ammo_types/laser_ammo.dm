// Laser beam ammunition.
// Each datum is the single source of truth for the corresponding beam, previously
// hardcoded in code/modules/projectiles/projectile/beams.dm.

// Standard laser family

/datum/ammo/laser/standard
	damage = 25

/datum/ammo/laser/standard/rapid
	name = "rapid fire laser"
	icon_state = "carbine_laser"
	damage = 20

/datum/ammo/laser/standard/rapid/practice
	name = "practice rapid fire laser"
	damage = 0

/datum/ammo/laser/standard/cybersun
	name = "red plasma beam"
	icon_state = "lava"
	damage = 9
	speed = 0.9

/datum/ammo/laser/standard/accelerator
	name = "accelerator laser"
	icon_state = "scatterlaser"
	range = 255
	damage = 6

/datum/ammo/laser/standard/hellfire
	name = "hellfire laser"
	icon_state = "hellfire"
	damage = 30
	speed = 1.6

/datum/ammo/laser/standard/flare
	name = "flare particle"
	icon_state = "flare"
	damage = 20

/datum/ammo/laser/standard/heavy
	name = "heavy laser"
	icon_state = "heavylaser"
	damage = 40

/datum/ammo/laser/standard/musket
	name = "low-power laser"
	icon_state = "laser_musket"
	damage = 28
	stamina = 35
	weak_against_armour = TRUE

/datum/ammo/laser/standard/musket/prime
	name = "mid-power laser"
	damage = 25
	stamina = 20
	weak_against_armour = FALSE

/datum/ammo/laser/standard/repeater
	name = "clockwork laser"
	icon_state = "laser_repeater"
	damage = 15
	weak_against_armour = TRUE

/datum/ammo/laser/standard/xray
	name = "\improper X-ray beam"
	icon_state = "xray"
	damage = 20
	range = 15
	armour_penetration = 100

/datum/ammo/laser/standard/pulse
	name = "pulse"
	icon_state = "u_laser"
	damage = 50
	armour_penetration = 50
	speed = 2.5

/datum/ammo/laser/standard/pulse/shotgun
	damage = 40
	armour_penetration = 30

/datum/ammo/laser/standard/pulse/heavy
	name = "heavy pulse laser"
	icon_state = "pulse1_bl"

// Weak / practice / scatter beams

/datum/ammo/laser/weak
	damage = 15

/datum/ammo/laser/weak/penetrator
	armour_penetration = 50

/datum/ammo/laser/practice
	name = "practice laser"
	damage = 0

/datum/ammo/laser/scatter
	name = "laser pellet"
	icon_state = "scatterlaser"
	damage = 7.5

/datum/ammo/laser/scatter/weak
	icon_state = "purple_laser"
	damage = 6

/datum/ammo/laser/scatter/pathetic
	name = "extremely weak laser pellet"
	damage = 1

// Disabler beams

/datum/ammo/laser/disabler
	name = "disabler beam"
	icon_state = "omnilaser"
	damage = 30
	speed = 1.6
	damage_type = STAMINA
	armor_flag = ENERGY

/datum/ammo/laser/disabler/weak
	damage = 15

/datum/ammo/laser/disabler/scatter
	name = "scatter disabler"
	icon_state = "scatterdisabler"
	damage = 5.5
	speed = 1.2

/datum/ammo/laser/disabler/smoothbore
	name = "unfocused disabler beam"
	weak_against_armour = TRUE

/datum/ammo/laser/disabler/smoothbore/prime
	name = "focused disabler beam"
	weak_against_armour = FALSE
	damage = 35

// Emitter beams

/datum/ammo/laser/emitter
	name = "emitter beam"
	icon_state = "emitter"
	damage = 30

/datum/ammo/laser/emitter/hitscan
	icon_state = null

/datum/ammo/laser/emitter/hitscan/bluelens
	name = "electrodisruptive beam"
	damage_type = STAMINA

/datum/ammo/laser/emitter/hitscan/bioregen
	name = "bioregenerative beam"
	damage_type = STAMINA
	damage = 0

/datum/ammo/laser/emitter/hitscan/incend
	name = "conflagratory beam"
	damage = 20

/datum/ammo/laser/emitter/hitscan/psy
	name = "psychosiphoning beam"
	damage = 0

/datum/ammo/laser/emitter/hitscan/magnetic
	name = "magnetogenerative beam"
	damage = 0

/datum/ammo/laser/emitter/hitscan/blast
	name = "hyperconcussive beam"
	damage = 0

// Lasertag beams

/datum/ammo/laser/lasertag
	name = "laser tag beam"
	icon_state = "omnilaser"
	damage = 0
	damage_type = STAMINA

/datum/ammo/laser/lasertag/red
	icon_state = "laser"

/datum/ammo/laser/lasertag/red/hitscan
	icon_state = null

/datum/ammo/laser/lasertag/blue
	icon_state = "bluelaser"

/datum/ammo/laser/lasertag/blue/hitscan
	icon_state = null
