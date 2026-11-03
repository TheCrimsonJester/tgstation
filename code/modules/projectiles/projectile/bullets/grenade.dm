// 40mm (Grenade Launcher

/obj/projectile/bullet/a40mm
	ammo_type = /datum/ammo/bullet/a40mm
	desc = "USE A WEEL GUN"
	embed_type = null
	shrapnel_type = null
	/// The devastation range on our grenade. Positive values determine the range in which the explosive will gib mobs and destroy plating.
	var/ex_dev_range = -1
	/// The light explosion radius of our grenade. Determines the standard explosion range of the grenade.
	var/ex_light_range = 2
	/// The flame range, determining the range of the fireball created by the explosion of the grenade.
	var/ex_flame_range = 3

/obj/projectile/bullet/a40mm/on_hit(atom/target, blocked = 0, pierce_hit)
	..()
	if(ex_light_range || ex_flame_range)
		explosion(target, devastation_range = ex_dev_range, light_impact_range = ex_light_range, flame_range = ex_flame_range, flash_range = 1, adminlog = FALSE, explosion_cause = src)
	grenade_extra_effect(target)
	return BULLET_ACT_HIT

/obj/projectile/bullet/a40mm/proc/grenade_extra_effect(atom/target)
	if(!prob(1))
		return

	if(isliving(target))
		var/mob/living/living_target = target
		playsound(living_target, 'sound/effects/coin2.ogg', 40, TRUE)
		new /obj/effect/temp_visual/crit(get_turf(living_target))

/obj/projectile/bullet/a40mm/incendiary
	ammo_type = /datum/ammo/bullet/a40mm/incendiary
	desc = "Hell is approaching."
	ex_light_range = 1
	ex_flame_range = 4

/obj/projectile/bullet/a40mm/incendiary/grenade_extra_effect(atom/target, blocked = 0, pierce_hit)
	if(iscarbon(target))
		var/mob/living/carbon/i_want_them_to_burn = target
		i_want_them_to_burn.adjust_fire_stacks(damage*2)
		i_want_them_to_burn.ignite_mob()
	for(var/turf/nearby_turf as anything in RANGE_TURFS(ex_flame_range, target))
		new /obj/effect/hotspot(nearby_turf)

/obj/projectile/bullet/a40mm/tear_gas
	ammo_type = /datum/ammo/bullet/a40mm/tear_gas
	desc = "MY EYES!!"
	ex_light_range = 0
	ex_flame_range = 0

/obj/projectile/bullet/a40mm/tear_gas/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/projectile_drop, /obj/item/grenade/chem_grenade/teargas/instant)

