// .223 (M-90gl Carbine)

/obj/projectile/bullet/a223
	ammo_type = /datum/ammo/bullet/rifle/a223
	wound_bonus = -40

/obj/projectile/bullet/a223/weak //centcom
	ammo_type = /datum/ammo/bullet/rifle/a223/weak

/obj/projectile/bullet/a223/phasic
	ammo_type = /datum/ammo/bullet/rifle/a223/phasic
	projectile_phasing =  PASSTABLE | PASSGLASS | PASSGRILLE | PASSCLOSEDTURF | PASSMACHINE | PASSSTRUCTURE | PASSDOORS

// .310 Strilka (Sakhno Rifle)

/obj/projectile/bullet/strilka310
	ammo_type = /datum/ammo/bullet/rifle/strilka310
	wound_bonus = -45
	wound_falloff_tile = 0

/obj/projectile/bullet/strilka310/surplus
	ammo_type = /datum/ammo/bullet/rifle/strilka310/surplus

/obj/projectile/bullet/strilka310/enchanted
	ammo_type = /datum/ammo/bullet/rifle/strilka310/enchanted

/obj/projectile/bullet/strilka310/phasic
	ammo_type = /datum/ammo/bullet/rifle/strilka310/phasic
	projectile_phasing =  PASSTABLE | PASSGLASS | PASSGRILLE | PASSCLOSEDTURF | PASSMACHINE | PASSSTRUCTURE | PASSDOORS

// Harpoons (Harpoon Gun)

/obj/projectile/bullet/harpoon
	ammo_type = /datum/ammo/bullet/rifle/harpoon
	wound_bonus = -20
	exposed_wound_bonus = 80
	embed_type = /datum/embedding/harpoon
	wound_falloff_tile = -5
	shrapnel_type = null

/datum/embedding/harpoon
	embed_chance = 100
	fall_chance = 3
	jostle_chance = 4
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.4
	pain_mult = 5
	jostle_pain_mult = 6
	rip_time = 1 SECONDS

// Rebar (Rebar Crossbow)
/obj/projectile/bullet/rebar
	ammo_type = /datum/ammo/bullet/rifle/rebar
	dismemberment = 1 //because a 1 in 100 chance to just blow someones arm off is enough to be cool but also not enough to be reliable
	wound_bonus = -20
	exposed_wound_bonus = 20
	embed_type = /datum/embedding/rebar
	embed_falloff_tile = -5
	wound_falloff_tile = -2
	shrapnel_type = /obj/item/ammo_casing/rebar

/datum/embedding/rebar
	embed_chance = 60
	fall_chance = 2
	jostle_chance = 2
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.4
	pain_mult = 4
	jostle_pain_mult = 2
	rip_time = 1 SECONDS

/obj/projectile/bullet/rebar/proc/handle_drop(datum/source, obj/item/ammo_casing/rebar/newcasing)

/obj/projectile/bullet/rebar/syndie
	ammo_type = /datum/ammo/bullet/rifle/rebar/syndie
	dismemberment = 2 //It's a budget sniper rifle.
	wound_bonus = 10
	exposed_wound_bonus = 20
	embed_falloff_tile = -3
	embed_type = /datum/embedding/rebar_syndie
	shrapnel_type = /obj/item/ammo_casing/rebar/syndie

/datum/embedding/rebar_syndie
	embed_chance = 80
	fall_chance = 1
	jostle_chance = 3
	ignore_throwspeed_threshold
	pain_stam_pct = 0.4
	pain_mult = 3
	jostle_pain_mult = 2
	rip_time = 2 SECONDS

/obj/projectile/bullet/rebar/zaukerite
	ammo_type = /datum/ammo/bullet/rifle/rebar/zaukerite
	dismemberment = 10
	eyeblur = 5
	wound_bonus = 10
	exposed_wound_bonus = 40
	embed_type = /datum/embedding/rebar_zaukerite
	embed_falloff_tile = 0 // very spiky.
	shrapnel_type = /obj/item/ammo_casing/rebar/zaukerite

/datum/embedding/rebar_zaukerite
	embed_chance = 100
	fall_chance = 0
	jostle_chance = 5
	ignore_throwspeed_threshold = TRUE
	pain_stam_pct = 0.8
	pain_mult = 6
	jostle_pain_mult = 2
	rip_time = 3 SECONDS

/obj/projectile/bullet/rebar/hydrogen
	ammo_type = /datum/ammo/bullet/rifle/rebar/hydrogen
	projectile_piercing = PASSMOB|PASSVEHICLE
	projectile_phasing = ~(PASSMOB|PASSVEHICLE)
	max_pierces = 10
	phasing_ignore_direct_target = TRUE
	dismemberment = 0 //goes through clean.
	wound_bonus = -100
	exposed_wound_bonus = 0
	shrapnel_type = /obj/item/ammo_casing/rebar/hydrogen
	embed_type = /datum/embedding/rebar_hydrogen
	embed_falloff_tile = -3
	accurate_range = 205 //15 tiles before falloff starts to kick in

/obj/projectile/bullet/rebar/hydrogen/impact(atom/A)
	. = ..()
	def_zone = ran_zone(def_zone, clamp(205-(7*get_dist(get_turf(A), starting)), 5, 100))

/datum/embedding/rebar_hydrogen
	embed_chance = 0

/obj/projectile/bullet/rebar/hydrogen/on_hit(atom/target, blocked, pierce_hit)
	if(isAI(target))
		return BULLET_ACT_FORCE_PIERCE
	return ..()

/obj/projectile/bullet/rebar/healium
	ammo_type = /datum/ammo/bullet/rifle/rebar/healium
	dismemberment = 0
	wound_bonus = -100
	exposed_wound_bonus = -100
	embed_falloff_tile = -3
	shrapnel_type = /obj/item/ammo_casing/rebar/healium
	embed_type = /datum/embedding/rebar_healium
	/// Amount of heals left in our bolt, so we can track it between embeds/misses
	var/heals_left = 6 SECONDS

/obj/projectile/bullet/rebar/healium/Initialize(mapload)
	. = ..()
	RegisterSignals(src, list(COMSIG_PROJECTILE_ON_SPAWN_DROP, COMSIG_PROJECTILE_ON_SPAWN_EMBEDDED), PROC_REF(on_spawn_embedded))

/obj/projectile/bullet/rebar/healium/proc/on_spawn_embedded(datum/source, obj/item/ammo_casing/rebar/healium/rebar)
	SIGNAL_HANDLER
	rebar.heals_left = heals_left

/obj/projectile/bullet/rebar/supermatter
	ammo_type = /datum/ammo/bullet/rifle/rebar/supermatter
	dismemberment = 0
	embed_type = null
	shrapnel_type = /obj/item/ammo_casing/rebar/supermatter

/obj/projectile/bullet/rebar/supermatter/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	if(isliving(target))
		var/mob/living/victim = target
		victim.investigate_log("has been dusted by [src].", INVESTIGATE_DEATHS)
		dust_feedback(target)
		victim.dust()

	else if(!isturf(target)&& !isliving(target))
		dust_feedback(target)
		qdel(target)

	return BULLET_ACT_HIT

/obj/projectile/bullet/rebar/supermatter/proc/dust_feedback(atom/target)
	playsound(get_turf(src), 'sound/effects/supermatter.ogg', 10, TRUE)
	visible_message(span_danger("[target] is hit by [src], turning [target.p_them()] to dust in a brilliant flash of light!"))

/obj/projectile/bullet/paperball
	desc = "Doink!"
	ammo_type = /datum/ammo/bullet/rifle/paperball
	shrapnel_type = null
	embed_type = null
	desc = "doink!"
