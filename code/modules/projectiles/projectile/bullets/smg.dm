// .45 (M1911 & C20r)

/obj/projectile/bullet/c45
	ammo_type = /datum/ammo/bullet/smg/c45
	wound_bonus = -10
	wound_falloff_tile = -10

/obj/projectile/bullet/c45/ap
	ammo_type = /datum/ammo/bullet/smg/c45/ap

/obj/projectile/bullet/c45/hp
	ammo_type = /datum/ammo/bullet/smg/c45/hp

/obj/projectile/bullet/incendiary/c45
	ammo_type = /datum/ammo/bullet/smg/c45/incendiary
	fire_stacks = 2

/obj/projectile/bullet/c45/reaper
	ammo_type = /datum/ammo/bullet/smg/c45/reaper
	tracer_type = /obj/effect/projectile/tracer/sniper
	impact_type = /obj/effect/projectile/impact/sniper
	muzzle_type = /obj/effect/projectile/muzzle/sniper
	hitscan = TRUE
	impact_effect_type = null
	hitscan_light_intensity = 3
	hitscan_light_range = 0.75
	hitscan_light_color_override = LIGHT_COLOR_DIM_YELLOW
	muzzle_flash_intensity = 5
	muzzle_flash_range = 1
	muzzle_flash_color_override = LIGHT_COLOR_DIM_YELLOW
	impact_light_intensity = 5
	impact_light_range = 1
	impact_light_color_override = LIGHT_COLOR_DIM_YELLOW

// 4.6x30mm (Autorifles)

/obj/projectile/bullet/c46x30mm
	ammo_type = /datum/ammo/bullet/smg/c46x30mm
	wound_bonus = -5
	exposed_wound_bonus = 5
	embed_falloff_tile = -4

/obj/projectile/bullet/c46x30mm/ap
	ammo_type = /datum/ammo/bullet/smg/c46x30mm/ap
	embed_type = null

/obj/projectile/bullet/incendiary/c46x30mm
	ammo_type = /datum/ammo/bullet/smg/c46x30mm/incendiary
	fire_stacks = 1
