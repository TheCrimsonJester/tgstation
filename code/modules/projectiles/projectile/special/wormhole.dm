/obj/projectile/beam/wormhole
	ammo_type = /datum/ammo/laser/wormhole
	hitsound = /datum/sound_effect/sparks
	pass_flags = PASSGLASS | PASSTABLE | PASSGRILLE | PASSMOB
	//Weakref to the thing that shot us
	var/datum/weakref/gun
	color = COLOR_BLUE_LIGHT
	tracer_type = /obj/effect/projectile/tracer/wormhole
	impact_type = /obj/effect/projectile/impact/wormhole
	muzzle_type = /obj/effect/projectile/muzzle/wormhole
	hitscan = TRUE

/obj/projectile/beam/wormhole/orange
	ammo_type = /datum/ammo/laser/wormhole/orange
	color = "#FF6600"

/obj/projectile/beam/wormhole/Initialize(mapload, obj/item/ammo_casing/energy/wormhole/casing)
	. = ..()
	if(casing)
		gun = casing.gun


/obj/projectile/beam/wormhole/on_hit(atom/target, blocked = 0, pierce_hit)
	var/obj/item/gun/energy/wormhole_projector/projector = gun.resolve()
	if(!projector)
		qdel(src)
		return BULLET_ACT_BLOCK

	. = ..()
	projector.create_portal(src, get_turf(src))
