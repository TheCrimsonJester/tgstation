// Rifle calibre ammunition.
// Each datum is the single source of truth for the corresponding round, previously
// hardcoded in code/modules/projectiles/projectile/bullets/rifle.dm.

// .223 (M-90gl Carbine)

/datum/ammo/bullet/rifle/a223
	name = ".223 bullet"
	damage = 35
	armour_penetration = 30

/datum/ammo/bullet/rifle/a223/weak
	damage = 20

/datum/ammo/bullet/rifle/a223/phasic
	name = ".223 phasic bullet"
	icon_state = "gaussphase"
	damage = 30
	armour_penetration = 100

// .310 Strilka (Sakhno Rifle)

/datum/ammo/bullet/rifle/strilka310
	name = ".310 Strilka bullet"
	damage = 60
	armour_penetration = 10

/datum/ammo/bullet/rifle/strilka310/surplus
	name = ".310 Strilka surplus bullet"
	weak_against_armour = TRUE
	armour_penetration = 0

/datum/ammo/bullet/rifle/strilka310/enchanted
	name = "enchanted .310 bullet"
	damage = 20
	stamina = 80

/datum/ammo/bullet/rifle/strilka310/phasic
	name = "phasic .310 bullet"

// Harpoons (Harpoon Gun)

/datum/ammo/bullet/rifle/harpoon
	name = "harpoon"
	icon_state = "gauss"
	damage = 60
	armour_penetration = 50

// Rebar (Rebar Crossbow)

/datum/ammo/bullet/rifle/rebar
	name = "rebar"
	icon_state = "rebar"
	damage = 40
	speed = 2.5
	armour_penetration = 10

/datum/ammo/bullet/rifle/rebar/syndie
	damage = 50
	armour_penetration = 35

/datum/ammo/bullet/rifle/rebar/zaukerite
	name = "zaukerite shard"
	icon_state = "rebar_zaukerite"
	damage = 60
	speed = 1.6
	damage_type = TOX
	armour_penetration = 20

/datum/ammo/bullet/rifle/rebar/hydrogen
	name = "metallic hydrogen bolt"
	icon_state = "rebar_hydrogen"
	damage = 40
	speed = 3
	armour_penetration = 30

/datum/ammo/bullet/rifle/rebar/healium
	name = "healium bolt"
	icon_state = "rebar_healium"
	damage = 0
	armour_penetration = 100

/datum/ammo/bullet/rifle/rebar/supermatter
	name = "supermatter bolt"
	icon_state = "rebar_supermatter"
	damage = 0
	damage_type = TOX
	armour_penetration = 100

// Paperball

/datum/ammo/bullet/rifle/paperball
	name = "paper ball"
	icon_state = "paperball"
	damage = 1
	range = 10
