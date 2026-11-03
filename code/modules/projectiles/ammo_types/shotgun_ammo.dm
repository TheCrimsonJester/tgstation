// Shotgun ammunition.
// Each datum is the single source of truth for the corresponding round, previously
// hardcoded in code/modules/projectiles/projectile/bullets/shotgun.dm.

/datum/ammo/bullet/shotgun/slug
	name = "12g shotgun slug"
	damage = 25
	armour_penetration = 30

/datum/ammo/bullet/shotgun/slug/milspec
	name = "12g shotgun milspec slug"
	damage = 50

/datum/ammo/bullet/shotgun/slug/executioner
	name = "executioner slug"

/datum/ammo/bullet/shotgun/slug/pulverizer
	name = "pulverizer slug"

/datum/ammo/bullet/shotgun/beanbag
	name = "beanbag slug"
	icon_state = "pellet"
	damage = 10
	stamina = 55

/datum/ammo/bullet/shotgun/beanbag/a40mm
	name = "rubber puck"
	icon_state = "cannonball"
	damage = 10
	stamina = 80

/datum/ammo/bullet/shotgun/incendiary
	name = "incendiary slug"
	icon_state = "infernoshot"
	damage = 25

/datum/ammo/bullet/shotgun/incendiary/milspec
	name = "milspec incendiary slug"
	damage = 45

/datum/ammo/bullet/shotgun/incendiary/dragonsbreath
	name = "dragonsbreath pellet"
	icon_state = "pellet_tracer"
	damage = 5
	speed = 1.1

/datum/ammo/bullet/shotgun/stunslug
	name = "stunslug"
	icon_state = "spark"
	damage = 5
	range = 7

/datum/ammo/bullet/shotgun/frag12
	name = "frag12 slug"
	damage = 15

/datum/ammo/bullet/shotgun/pellet
	icon_state = "pellet_tracer"

/datum/ammo/bullet/shotgun/pellet/buckshot
	name = "buckshot pellet"
	damage = 5
	speed = 1.1

/datum/ammo/bullet/shotgun/pellet/buckshot/old
	icon_state = "pellet"

/datum/ammo/bullet/shotgun/pellet/buckshot/milspec
	name = "milspec buckshot pellet"
	damage = 7.5

/datum/ammo/bullet/shotgun/pellet/buckshot/milspec/flak
	name = "titanium ball bearing"
	damage = 10
	armour_penetration = 20

/datum/ammo/bullet/shotgun/pellet/rubbershot
	name = "rubber shot pellet"
	icon_state = "pellet"
	damage = 3
	stamina = 10
	speed = 0.8

/datum/ammo/bullet/shotgun/pellet/incapacitate
	name = "incapacitating pellet"
	icon_state = "pellet"
	damage = 1
	stamina = 6

/datum/ammo/bullet/shotgun/pellet/flechette
	name = "flechette"
	icon_state = "flechette"
	damage = 2
	armour_penetration = 30
	speed = 1.2

/datum/ammo/bullet/shotgun/pellet/flechette/donk
	name = "\improper Donk Co. 'Donk Spike' flechette"
	icon_state = "flechette_plastic"
	damage = 1
	armour_penetration = 0

/datum/ammo/bullet/shotgun/scattershot
	icon_state = "pellet_tracer"
	damage = 24

/datum/ammo/bullet/shotgun/breaching
	name = "12g breaching round"
	damage = 5
