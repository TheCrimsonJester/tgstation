// 9mm (Makarov and Stechkin APS)
// Bullet stats are centralised in the ammo datums under ammo_types/pistol_ammo.dm.

/obj/projectile/bullet/c9mm
	ammo_type = /datum/ammo/bullet/pistol/c9mm
	embed_type = /datum/embedding/bullet/c9mm

/datum/embedding/bullet/c9mm
	embed_chance = 15
	fall_chance = 3
	jostle_chance = 4
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.4
	pain_mult = 5
	jostle_pain_mult = 6
	rip_time = 1 SECONDS

/obj/projectile/bullet/c9mm/ap
	ammo_type = /datum/ammo/bullet/pistol/c9mm/ap
	embed_type = null
	shrapnel_type = null

/obj/projectile/bullet/c9mm/hp
	ammo_type = /datum/ammo/bullet/pistol/c9mm/hp

/obj/projectile/bullet/incendiary/c9mm
	ammo_type = /datum/ammo/bullet/pistol/c9mm/incendiary
	fire_stacks = 2

// 10mm

/obj/projectile/bullet/c10mm
	ammo_type = /datum/ammo/bullet/pistol/c10mm

/obj/projectile/bullet/c10mm/ap
	ammo_type = /datum/ammo/bullet/pistol/c10mm/ap

/obj/projectile/bullet/c10mm/hp
	ammo_type = /datum/ammo/bullet/pistol/c10mm/hp

/obj/projectile/bullet/incendiary/c10mm
	ammo_type = /datum/ammo/bullet/pistol/c10mm/incendiary
	fire_stacks = 3

// .160 Smart

/obj/projectile/bullet/c160smart
	ammo_type = /datum/ammo/bullet/pistol/c160smart
	embed_type = /datum/embedding/bullet/c160smart
	homing_turn_speed = 5
	homing_inaccuracy_min = 4
	homing_inaccuracy_max = 10

/datum/embedding/bullet/c160smart
	embed_chance = 10
	fall_chance = 5
	jostle_chance = 3
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.25
	pain_mult = 3
	jostle_pain_mult = 6
	rip_time = 0.5 SECONDS
