/obj/projectile/beam
	ammo_type = /datum/ammo/laser
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE
	hitsound = 'sound/items/weapons/sear.ogg'
	hitsound_wall = 'sound/items/weapons/effects/searwall.ogg'
	eyeblur = 4 SECONDS
	impact_effect_type = /obj/effect/temp_visual/impact_effect/red_laser
	light_system = OVERLAY_LIGHT
	light_range = 1
	light_power = 1.4
	light_color = COLOR_SOFT_RED
	ricochets_max = 50 //Honk!
	ricochet_chance = 80
	reflectable = TRUE
	wound_bonus = -20
	exposed_wound_bonus = 10


/obj/projectile/beam/laser
	ammo_type = /datum/ammo/laser/standard
	tracer_type = /obj/effect/projectile/tracer/laser
	muzzle_type = /obj/effect/projectile/muzzle/laser
	impact_type = /obj/effect/projectile/impact/laser
	wound_bonus = -20
	exposed_wound_bonus = 40

/obj/projectile/beam/laser/rapid
	ammo_type = /datum/ammo/laser/standard/rapid
	impact_effect_type = /obj/effect/temp_visual/impact_effect/yellow_laser

/obj/projectile/beam/laser/rapid/practice
	ammo_type = /datum/ammo/laser/standard/rapid/practice
	impact_effect_type = /obj/effect/temp_visual/impact_effect/yellow_laser

/obj/projectile/beam/laser/cybersun
	ammo_type = /datum/ammo/laser/standard/cybersun
	light_color = COLOR_DARK_RED
	impact_effect_type = /obj/effect/temp_visual/impact_effect/red_laser
	wound_bonus = -40

/obj/projectile/beam/laser/accelerator
	ammo_type = /datum/ammo/laser/standard/accelerator
	var/size_per_tile = 0.1
	var/max_scale = 4

/obj/projectile/beam/laser/accelerator/reduce_range()
	..()
	damage += 7
	transform = matrix()
	transform *= min(1 + (maximum_range - range) * size_per_tile, max_scale)

//overclocked laser, does a bit more damage but has much higher wound power (-0 vs -20)
/obj/projectile/beam/laser/hellfire
	ammo_type = /datum/ammo/laser/standard/hellfire
	wound_bonus = 0
	light_color = "#FF969D"

/obj/projectile/beam/laser/flare
	ammo_type = /datum/ammo/laser/standard/flare
	light_range = 2
	light_power = 3
	wound_bonus = -15
	exposed_wound_bonus = 15

/obj/projectile/beam/laser/flare/on_hit(atom/target, blocked, pierce_hit)
	. = ..()
	if(!isliving(target))
		return
	var/mob/living/designated_target = target
	designated_target.apply_status_effect(/datum/status_effect/designated_target)

/obj/projectile/beam/laser/heavylaser
	ammo_type = /datum/ammo/laser/standard/heavy
	tracer_type = /obj/effect/projectile/tracer/heavy_laser
	muzzle_type = /obj/effect/projectile/muzzle/heavy_laser
	impact_type = /obj/effect/projectile/impact/heavy_laser

/obj/projectile/beam/laser/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.ignite_mob()
	else if(isturf(target))
		impact_effect_type = /obj/effect/temp_visual/impact_effect/red_laser/wall

/obj/projectile/beam/laser/musket
	ammo_type = /datum/ammo/laser/standard/musket
	impact_effect_type = /obj/effect/temp_visual/impact_effect/purple_laser
	light_color = COLOR_STRONG_VIOLET

/obj/projectile/beam/laser/musket/prime
	ammo_type = /datum/ammo/laser/standard/musket/prime

/obj/projectile/beam/laser/repeater
	ammo_type = /datum/ammo/laser/standard/repeater
	impact_effect_type = /obj/effect/temp_visual/impact_effect/yellow_laser
	light_color = COLOR_DARK_ORANGE

/obj/projectile/beam/weak
	ammo_type = /datum/ammo/laser/weak

/obj/projectile/beam/weak/penetrator
	ammo_type = /datum/ammo/laser/weak/penetrator

/obj/projectile/beam/practice
	ammo_type = /datum/ammo/laser/practice

/obj/projectile/beam/scatter
	ammo_type = /datum/ammo/laser/scatter
	wound_bonus = 5
	exposed_wound_bonus = 5
	damage_falloff_tile = -0.45
	wound_falloff_tile = -2.5

/obj/projectile/beam/scatter/weak
	ammo_type = /datum/ammo/laser/scatter/weak
	impact_effect_type = /obj/effect/temp_visual/impact_effect/purple_laser
	light_color = COLOR_STRONG_VIOLET

/obj/projectile/beam/scatter/pathetic
	ammo_type = /datum/ammo/laser/scatter/pathetic
	wound_bonus = 0
	damage_falloff_tile = -0.1
	color = "#dbc11d"
	hitsound = 'sound/items/bikehorn.ogg' //honk
	hitsound_wall = 'sound/items/bikehorn.ogg'

/obj/projectile/beam/laser/xray
	ammo_type = /datum/ammo/laser/standard/xray
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE | PASSCLOSEDTURF | PASSMACHINE | PASSSTRUCTURE | PASSDOORS

	impact_effect_type = /obj/effect/temp_visual/impact_effect/green_laser
	light_color = LIGHT_COLOR_GREEN
	tracer_type = /obj/effect/projectile/tracer/xray
	muzzle_type = /obj/effect/projectile/muzzle/xray
	impact_type = /obj/effect/projectile/impact/xray

/obj/projectile/beam/disabler
	ammo_type = /datum/ammo/laser/disabler
	hitsound = 'sound/items/weapons/sear_disabler.ogg'
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE
	tracer_type = /obj/effect/projectile/tracer/disabler
	muzzle_type = /obj/effect/projectile/muzzle/disabler
	impact_type = /obj/effect/projectile/impact/disabler

/obj/projectile/beam/disabler/weak
	ammo_type = /datum/ammo/laser/disabler/weak

/obj/projectile/beam/disabler/scatter
	ammo_type = /datum/ammo/laser/disabler/scatter
	damage_falloff_tile = -0.5
	impact_effect_type = /obj/effect/temp_visual/impact_effect/green_laser
	tracer_type = /obj/effect/projectile/tracer/xray
	muzzle_type = /obj/effect/projectile/muzzle/xray
	impact_type = /obj/effect/projectile/impact/xray

/obj/projectile/beam/disabler/smoothbore
	ammo_type = /datum/ammo/laser/disabler/smoothbore

/obj/projectile/beam/disabler/smoothbore/prime
	ammo_type = /datum/ammo/laser/disabler/smoothbore/prime

/obj/projectile/beam/laser/pulse
	ammo_type = /datum/ammo/laser/standard/pulse
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE
	tracer_type = /obj/effect/projectile/tracer/pulse
	muzzle_type = /obj/effect/projectile/muzzle/pulse
	impact_type = /obj/effect/projectile/impact/pulse
	wound_bonus = 10

/obj/projectile/beam/laser/pulse/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	if (!QDELETED(target) && (isturf(target) || isstructure(target)))
		if(isobj(target))
			SSexplosions.med_mov_atom += target
		else
			SSexplosions.medturf += target

/obj/projectile/beam/laser/pulse/shotgun
	ammo_type = /datum/ammo/laser/standard/pulse/shotgun

/obj/projectile/beam/laser/pulse/heavy
	ammo_type = /datum/ammo/laser/standard/pulse/heavy
	projectile_piercing = ALL
	var/pierce_hits = 2

/obj/projectile/beam/laser/pulse/heavy/on_hit(atom/target, blocked = 0, pierce_hit)
	if(pierce_hits <= 0)
		projectile_piercing = NONE
	pierce_hits -= 1
	return ..()

/obj/projectile/beam/emitter
	ammo_type = /datum/ammo/laser/emitter
	impact_effect_type = /obj/effect/temp_visual/impact_effect/green_laser
	light_color = LIGHT_COLOR_GREEN
	wound_bonus = -40
	exposed_wound_bonus = 70

/obj/projectile/beam/emitter/singularity_pull(atom/singularity, current_size)
	return //don't want the emitters to miss

/obj/projectile/beam/emitter/hitscan
	ammo_type = /datum/ammo/laser/emitter/hitscan
	hitscan = TRUE
	muzzle_type = /obj/effect/projectile/muzzle/laser/emitter
	tracer_type = /obj/effect/projectile/tracer/laser/emitter
	impact_type = /obj/effect/projectile/impact/laser/emitter
	impact_effect_type = null
	hitscan_light_intensity = 3
	hitscan_light_range = 0.75
	hitscan_light_color_override = COLOR_LIME
	muzzle_flash_intensity = 6
	muzzle_flash_range = 2
	muzzle_flash_color_override = COLOR_LIME
	impact_light_intensity = 7
	impact_light_range = 2.5
	impact_light_color_override = COLOR_LIME
	// Subtract this from SM damage on hit for lasers
	var/integrity_heal
	// Subtract this from SM energy on hit for lasers
	var/energy_reduction
	// Add this to SM psi coefficient on hit for lasers
	var/psi_change

/obj/projectile/beam/emitter/hitscan/bluelens
	ammo_type = /datum/ammo/laser/emitter/hitscan/bluelens
	light_color = LIGHT_COLOR_BLUE
	muzzle_type = /obj/effect/projectile/muzzle/pulse
	tracer_type = /obj/effect/projectile/tracer/laser/emitter/bluelens
	impact_type = /obj/effect/projectile/impact/pulse
	hitscan_light_color_override = COLOR_BLUE_LIGHT
	muzzle_flash_color_override = COLOR_BLUE_LIGHT
	impact_light_color_override = COLOR_BLUE_LIGHT
	integrity_heal = 0.25
	energy_reduction = 60

/obj/projectile/beam/emitter/hitscan/bioregen
	ammo_type = /datum/ammo/laser/emitter/hitscan/bioregen
	light_color = LIGHT_COLOR_BRIGHT_YELLOW
	muzzle_type = /obj/effect/projectile/muzzle/solar
	tracer_type = /obj/effect/projectile/tracer/laser/emitter/bioregen
	impact_type = /obj/effect/projectile/impact/solar
	hitscan_light_color_override = COLOR_LIGHT_YELLOW
	muzzle_flash_color_override = COLOR_LIGHT_YELLOW
	impact_light_color_override = COLOR_LIGHT_YELLOW
	var/healing_done = 5

/obj/projectile/beam/emitter/hitscan/bioregen/on_hit(atom/target, blocked, pierce_hit)
	. = ..()
	if(!iscarbon(target))
		return
	var/mob/living/carbon/healed_guy = target
	healed_guy.heal_bodypart_damage(brute = healing_done, burn = healing_done, updating_health = FALSE)

/obj/projectile/beam/emitter/hitscan/incend
	ammo_type = /datum/ammo/laser/emitter/hitscan/incend
	light_color = LIGHT_COLOR_ORANGE
	muzzle_type = /obj/effect/projectile/muzzle/heavy_laser
	tracer_type = /obj/effect/projectile/tracer/laser/emitter/redlens
	impact_type = /obj/effect/projectile/impact/heavy_laser
	hitscan_light_color_override = COLOR_ORANGE
	muzzle_flash_color_override = COLOR_ORANGE
	impact_light_color_override = COLOR_ORANGE
	integrity_heal = -0.15
	energy_reduction = -150
	psi_change = -0.1

/obj/projectile/beam/emitter/hitscan/incend/on_hit(atom/target, blocked, pierce_hit)
	. = ..()
	if(!isliving(target))
		return
	var/mob/living/burnt_guy = target
	burnt_guy.adjust_fire_stacks(5)
	burnt_guy.ignite_mob()

/obj/projectile/beam/emitter/hitscan/psy
	ammo_type = /datum/ammo/laser/emitter/hitscan/psy
	light_color = LIGHT_COLOR_PINK
	muzzle_type = /obj/effect/projectile/muzzle/laser/emitter/psy
	tracer_type = /obj/effect/projectile/tracer/laser/emitter/psy
	impact_type = /obj/effect/projectile/impact/laser/emitter/psy
	hitscan_light_color_override = COLOR_BLUSH_PINK
	muzzle_flash_color_override = COLOR_BLUSH_PINK
	impact_light_color_override = COLOR_BLUSH_PINK
	energy_reduction = -25
	psi_change = 0.25

/obj/projectile/beam/emitter/hitscan/psy/on_hit(atom/target, blocked, pierce_hit)
	. = ..()
	if(!isliving(target))
		return
	var/mob/living/siphoned = target
	siphoned.mob_mood.adjust_sanity(-25)
	to_chat(siphoned, span_warning("Suddenly, everything feels just a little bit worse!"))

/obj/projectile/beam/emitter/hitscan/magnetic
	ammo_type = /datum/ammo/laser/emitter/hitscan/magnetic
	light_color = COLOR_SILVER
	muzzle_type = /obj/effect/projectile/muzzle/laser/emitter/magnetic
	tracer_type = /obj/effect/projectile/tracer/laser/emitter/magnetic
	impact_type = /obj/effect/projectile/impact/laser/emitter/magnetic
	hitscan_light_color_override = COLOR_SILVER
	muzzle_flash_color_override = COLOR_SILVER
	impact_light_color_override = COLOR_SILVER

/obj/projectile/beam/emitter/hitscan/magnetic/on_hit(atom/target, blocked, pierce_hit)
	. = ..()
	var/turf/turf_to_magnet = get_turf(target)
	goonchem_vortex(turf_to_magnet, FALSE, 4)

/obj/projectile/beam/emitter/hitscan/blast
	ammo_type = /datum/ammo/laser/emitter/hitscan/blast
	light_color = LIGHT_COLOR_ORANGE
	muzzle_type = /obj/effect/projectile/muzzle/laser/emitter/magnetic
	tracer_type = /obj/effect/projectile/tracer/laser/emitter/magnetic
	impact_type = /obj/effect/projectile/impact/laser/emitter/magnetic
	hitscan_light_color_override = COLOR_ORANGE
	muzzle_flash_color_override = COLOR_ORANGE
	impact_light_color_override = COLOR_ORANGE
	integrity_heal = -2
	energy_reduction = -500


/obj/projectile/beam/emitter/hitscan/blast/on_hit(atom/target, blocked, pierce_hit)
	. = ..()
	var/turf/turf_to_explode = get_turf(target)
	explosion(turf_to_explode, 0, 1, 2)


/obj/projectile/beam/lasertag
	ammo_type = /datum/ammo/laser/lasertag
	hitsound = null
	impact_effect_type = /obj/effect/temp_visual/impact_effect/blue_laser
	light_color = LIGHT_COLOR_BLUE
	var/lasertag_team = LASERTAG_TEAM_NEUTRAL
	var/lasertag_damage = 34

/obj/projectile/beam/lasertag/redtag
	ammo_type = /datum/ammo/laser/lasertag/red
	lasertag_team = LASERTAG_TEAM_RED
	impact_effect_type = /obj/effect/temp_visual/impact_effect/red_laser
	light_color = COLOR_SOFT_RED
	tracer_type = /obj/effect/projectile/tracer/laser
	muzzle_type = /obj/effect/projectile/muzzle/laser
	impact_type = /obj/effect/projectile/impact/laser

/obj/projectile/beam/lasertag/redtag/hitscan
	ammo_type = /datum/ammo/laser/lasertag/red/hitscan
	hitscan = TRUE

/obj/projectile/beam/lasertag/bluetag
	ammo_type = /datum/ammo/laser/lasertag/blue
	lasertag_team = LASERTAG_TEAM_BLUE
	tracer_type = /obj/effect/projectile/tracer/laser/blue
	muzzle_type = /obj/effect/projectile/muzzle/laser/blue
	impact_type = /obj/effect/projectile/impact/laser/blue

/obj/projectile/beam/lasertag/bluetag/hitscan
	ammo_type = /datum/ammo/laser/lasertag/blue/hitscan
	hitscan = TRUE

/obj/projectile/magic/shrink/alien
	antimagic_flags = NONE
	shrink_time = 9 SECONDS
