// Miscellaneous ballistic/utility projectiles.
// Each datum is the single source of truth for the corresponding projectile.

// Junk rounds (Pipe Pistols and Pipeguns)

/datum/ammo/bullet/junk
	name = "junk bullet"
	icon_state = "trashball"
	damage = 40

/datum/ammo/bullet/junk/phasic
	name = "junk phasic bullet"
	icon_state = "gaussphase"

/datum/ammo/bullet/junk/shock
	name = "bundle of live electrical parts"
	icon_state = "tesla_projectile"
	damage = 20

/datum/ammo/bullet/junk/hunter
	name = "junk hunter bullet"
	icon_state = "gauss"

/datum/ammo/bullet/junk/ripper
	name = "junk ripper bullet"
	icon_state = "redtrac"
	damage = 20

/datum/ammo/bullet/junk/reaper
	name = "junk reaper bullet"
	icon_state = null

/datum/ammo/bullet/junk/burning_oil
	name = "burning oil"
	icon_state = "infernoshot"
	damage = 40

// Rockets and gyro bolts

/datum/ammo/bullet/gyro
	name = "explosive bolt"
	icon_state = "bolter"
	damage = 50

/datum/ammo/bullet/rocket
	name = "\improper HE rocket"
	icon_state = "missile"
	damage = 50

/datum/ammo/bullet/rocket/heap
	name = "\improper HEAP rocket"
	icon_state = "84mm-heap"
	damage = 80
	armour_penetration = 100

/datum/ammo/bullet/rocket/weak
	name = "low-yield rocket"
	icon_state = "low_yield_rocket"
	damage = 30

/datum/ammo/bullet/rocket/srm
	name = "short range missile"

/datum/ammo/bullet/rocket/pep
	name = "precise explosive missile"
	icon_state = "low_yield_rocket"
	damage = 30

/datum/ammo/bullet/rocket/reverse
	name = "faulty rocket"

// 40mm grenades

/datum/ammo/bullet/a40mm
	name = "40mm grenade"
	icon_state = "bolter"
	damage = 60

/datum/ammo/bullet/a40mm/incendiary
	name = "40mm incendiary grenade"
	damage = 10

/datum/ammo/bullet/a40mm/tear_gas
	name = "40mm tear gas grenade"
	damage = 10

// Toy foam darts

/datum/ammo/bullet/foam_dart
	name = "foam dart"
	icon_state = "foamdart_proj"
	damage = 0
	damage_type = OXY
	range = 10

/datum/ammo/bullet/foam_dart/riot
	name = "riot foam dart"
	icon_state = "foamdart_riot_proj"
	stamina = 25

// Darts and syringes

/datum/ammo/bullet/dart
	name = "dart"
	icon_state = "cbbolt"
	damage = 6

/datum/ammo/bullet/dart/syringe
	name = "syringe"
	icon_state = "syringeproj"

/datum/ammo/bullet/dart/ants
	name = "a ball of ants"
	icon_state = "trashball"
	damage = 40

// DNA injector

/datum/ammo/bullet/dnainjector
	name = "\improper DNA injector"
	icon_state = "syringeproj"
	damage = 5

// Clown / mime / marksman

/datum/ammo/bullet/honker
	name = "banana"
	icon_state = "banana"
	damage = 0
	range = 200

/datum/ammo/bullet/mime
	damage = 40

/datum/ammo/bullet/marksman
	name = "marksman nanoshot"
	icon_state = null
	damage = 30

/datum/ammo/bullet/coin
	name = "marksman coin"
	icon_state = "coinshot"
	speed = 0.33
	damage = 5
