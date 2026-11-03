/obj/projectile/bullet/shotgun_slug
	ammo_type = /datum/ammo/bullet/shotgun/slug
	sharpness = SHARP_POINTY
	wound_bonus = 0
	exposed_wound_bonus = 15

/obj/projectile/bullet/shotgun_slug/milspec
	ammo_type = /datum/ammo/bullet/shotgun/slug/milspec

/obj/projectile/bullet/shotgun_slug/executioner
	ammo_type = /datum/ammo/bullet/shotgun/slug/executioner
	sharpness = SHARP_EDGED
	wound_bonus = 80

/obj/projectile/bullet/shotgun_slug/pulverizer
	ammo_type = /datum/ammo/bullet/shotgun/slug/pulverizer
	sharpness = NONE
	wound_bonus = 80

/obj/projectile/bullet/shotgun_beanbag
	ammo_type = /datum/ammo/bullet/shotgun/beanbag
	wound_bonus = 20
	sharpness = NONE
	embed_type = null

/obj/projectile/bullet/shotgun_beanbag/a40mm
	ammo_type = /datum/ammo/bullet/shotgun/beanbag/a40mm
	knockdown = 10
	wound_bonus = 30
	ricochets_max = 4
	ricochet_chance = 100
	ricochet_decay_chance = 1
	ricochet_decay_damage = 0.8
	ricochet_auto_aim_range = 2
	ricochet_auto_aim_angle = 30
	ricochet_incidence_leeway = 75

/obj/projectile/bullet/incendiary/shotgun
	ammo_type = /datum/ammo/bullet/shotgun/incendiary

/obj/projectile/bullet/incendiary/shotgun/milspec
	ammo_type = /datum/ammo/bullet/shotgun/incendiary/milspec

/obj/projectile/bullet/incendiary/shotgun/dragonsbreath
	ammo_type = /datum/ammo/bullet/shotgun/incendiary/dragonsbreath
	wound_bonus = 5
	damage_falloff_tile = -0.5
	wound_falloff_tile = -1
	ricochets_max = 2
	ricochet_chance = 120
	ricochet_decay_chance = 1
	ricochet_decay_damage = 2.5
	ricochet_auto_aim_range = 2
	ricochet_auto_aim_angle = 30
	ricochet_incidence_leeway = 75

/obj/projectile/bullet/shotgun_stunslug
	ammo_type = /datum/ammo/bullet/shotgun/stunslug
	paralyze = 100
	stutter = 10 SECONDS
	jitter = 40 SECONDS
	color = COLOR_YELLOW
	embed_type = null

/obj/projectile/bullet/shotgun_frag12
	ammo_type = /datum/ammo/bullet/shotgun/frag12
	paralyze = 10

/obj/projectile/bullet/shotgun_frag12/on_hit(atom/target, blocked = 0, pierce_hit)
	..()
	explosion(target, devastation_range = -1, light_impact_range = 1, explosion_cause = src)
	return BULLET_ACT_HIT

/obj/projectile/bullet/pellet
	ammo_type = /datum/ammo/bullet/shotgun/pellet
	damage_falloff_tile = -0.25

/obj/projectile/bullet/pellet/shotgun_buckshot
	ammo_type = /datum/ammo/bullet/shotgun/pellet/buckshot
	wound_bonus = 5
	exposed_wound_bonus = 5
	wound_falloff_tile = -0.5 //We would very much like this to cause wounds despite the low damage, so the drop off is relatively slow
	sharpness = SHARP_EDGED

/**
 * A slightly weaker version of the buckshot, available from the blackmarket.
 * The casings they're in have a very small chance to misfire and will gradually damage the firearm, making it weaker.
 */
/obj/projectile/bullet/pellet/shotgun_buckshot/old
	ammo_type = /datum/ammo/bullet/shotgun/pellet/buckshot/old
	damage_falloff_tile = -1
	wound_bonus = -100
	exposed_wound_bonus = -100

/obj/projectile/bullet/pellet/shotgun_buckshot/milspec
	ammo_type = /datum/ammo/bullet/shotgun/pellet/buckshot/milspec

/obj/projectile/bullet/pellet/shotgun_buckshot/milspec/flak
	ammo_type = /datum/ammo/bullet/shotgun/pellet/buckshot/milspec/flak
	damage_falloff_tile = -0.5 //much harsher falloff
	wound_bonus = 0

/obj/projectile/bullet/pellet/shotgun_rubbershot
	ammo_type = /datum/ammo/bullet/shotgun/pellet/rubbershot
	sharpness = NONE
	embed_type = null
	stamina_falloff_tile = -0.25
	ricochets_max = 4
	ricochet_chance = 120
	ricochet_decay_chance = 0.9
	ricochet_decay_damage = 0.8
	ricochet_auto_aim_range = 2
	ricochet_auto_aim_angle = 30
	ricochet_incidence_leeway = 75
	/// Subtracted from the ricochet chance for each tile traveled
	var/tile_dropoff_ricochet = 4

/obj/projectile/bullet/pellet/shotgun_rubbershot/reduce_range()
	if(ricochet_chance > 0)
		ricochet_chance -= tile_dropoff_ricochet
	. = ..()

/obj/projectile/bullet/pellet/shotgun_incapacitate
	ammo_type = /datum/ammo/bullet/shotgun/pellet/incapacitate
	embed_type = null

/obj/projectile/bullet/pellet/flechette
	ammo_type = /datum/ammo/bullet/shotgun/pellet/flechette
	wound_bonus = 5
	exposed_wound_bonus = 5
	damage_falloff_tile = -0.2
	wound_falloff_tile = -0.5
	sharpness = SHARP_POINTY
	embed_type = /datum/embedding/bullet/flechette

/datum/embedding/bullet/flechette
	embed_chance = 25
	fall_chance = 10
	jostle_chance = 20
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.1
	pain_mult = 0.5
	jostle_pain_mult = 1.5
	rip_time = 0.5 SECONDS
	stealthy_embed = FALSE

/obj/projectile/bullet/pellet/flechette/donk
	ammo_type = /datum/ammo/bullet/shotgun/pellet/flechette/donk
	desc = "Your internal evisceration! As sponsored by the Donk Corporation!"
	wound_bonus = 20 // but it WILL mulch you if you don't have armor.
	exposed_wound_bonus = 20
	damage_falloff_tile = -0.1
	wound_falloff_tile = -2
	embed_type = /datum/embedding/bullet/flechette_donk // the true power of the donk spike.

/datum/embedding/bullet/flechette_donk
	embed_chance = 100
	fall_chance = 0
	jostle_chance = 50
	ignore_throwspeed_threshold = TRUE
	pain_mult = 1
	jostle_pain_mult = 1
	rip_time = 1 SECONDS

// Mech Scattershot

/obj/projectile/bullet/scattershot
	ammo_type = /datum/ammo/bullet/shotgun/scattershot

//Breaching Ammo

/obj/projectile/bullet/shotgun_breaching
	ammo_type = /datum/ammo/bullet/shotgun/breaching
	desc = "A breaching round designed to destroy airlocks and windows with only a few shots. Ineffective against other targets."
	hitsound = 'sound/items/weapons/sonic_jackhammer.ogg'
	demolition_mod = 200 //one shot to break a window or grille, or two shots to breach an airlock door
