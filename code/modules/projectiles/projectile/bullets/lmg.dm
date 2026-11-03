// C3D (Borgs)

/obj/projectile/bullet/c3d
	ammo_type = /datum/ammo/bullet/lmg/c3d

// Mech LMG

/obj/projectile/bullet/lmg
	ammo_type = /datum/ammo/bullet/lmg/lmg

// Mech FNX-99

/obj/projectile/bullet/incendiary/fnx99
	ammo_type = /datum/ammo/bullet/lmg/fnx99
	fireblast_radius = 3

// Turrets

/obj/projectile/bullet/manned_turret
	ammo_type = /datum/ammo/bullet/lmg/manned_turret

/obj/projectile/bullet/manned_turret/hmg
	ammo_type = /datum/ammo/bullet/lmg/manned_turret/hmg

/obj/projectile/bullet/syndicate_turret
	ammo_type = /datum/ammo/bullet/lmg/syndicate_turret

// 7mm (SAW)

/obj/projectile/bullet/a7mm
	ammo_type = /datum/ammo/bullet/lmg/a7mm
	wound_bonus = -50
	wound_falloff_tile = 0

/obj/projectile/bullet/a7mm/ap
	ammo_type = /datum/ammo/bullet/lmg/a7mm/ap

/obj/projectile/bullet/a7mm/hp
	ammo_type = /datum/ammo/bullet/lmg/a7mm/hp
	sharpness = SHARP_EDGED
	wound_bonus = -40
	exposed_wound_bonus = 30
	wound_falloff_tile = -8

/obj/projectile/bullet/incendiary/a7mm
	ammo_type = /datum/ammo/bullet/lmg/a7mm/incendiary
	fire_stacks = 3

/obj/projectile/bullet/a7mm/match
	ammo_type = /datum/ammo/bullet/lmg/a7mm/match
	ricochets_max = 2
	ricochet_chance = 60
	ricochet_auto_aim_range = 4
	ricochet_incidence_leeway = 55

/obj/projectile/bullet/a7mm/bouncy
	ammo_type = /datum/ammo/bullet/lmg/a7mm/bouncy
	ricochets_max = 40
	ricochet_chance = 500 // will bounce off anything and everything, whether they like it or not
	ricochet_auto_aim_range = 4
	ricochet_incidence_leeway = 0
	ricochet_decay_chance = 0.9
