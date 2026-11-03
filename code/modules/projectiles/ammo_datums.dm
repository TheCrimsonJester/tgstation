/**
 * Ammo datum — the single source of truth for what a fired projectile does.
 *
 * Centralises the per-round stats (damage, damage class, armour interactions,
 * flight characteristics) that were previously scattered across individual
 * /obj/projectile subtypes, so a weapon can be described as:
 * gun -> magazine -> ammo datum -> (thin) projectile.
 */
/datum/ammo
	/// Display name applied to the fired projectile.
	var/name = "generic bullet"
	/// Icon state applied to the fired projectile.
	var/icon_state = "bullet"

	// Damage & defence
	/// Raw damage dealt on a successful hit.
	var/damage = 10
	/// Extra stamina damage dealt on hit.
	var/stamina = 0
	/// Damage class applied on hit (BRUTE, BURN, TOX, OXY).
	var/damage_type = BRUTE
	/// Which armour class is checked on hit (MELEE, BULLET, LASER, ENERGY, BOMB).
	var/armor_flag = BULLET
	/// How much armour this round ignores.
	var/armour_penetration = 0
	/// If TRUE, armour counts double against this round.
	var/weak_against_armour = FALSE

	// Flight
	/// Speed of the projectile (tiles per SSprojectiles tick).
	var/speed = 1.25
	/// How many tiles the projectile travels before expiring.
	var/range = 50

/// Hook invoked by /obj/projectile/on_hit after the projectile applies its effects.
/// Override in subtypes to add special ammo behaviour.
/datum/ammo/proc/on_hit(atom/target, blocked = 0, pierce_hit)
	return

/// Standard ballistic (gunpowder) rounds. Mirrors /obj/projectile/bullet defaults.
/datum/ammo/bullet
	name = "bullet"
	icon_state = "bullet_tracer"

/// Energy projectiles. Mirrors /obj/projectile/energy defaults.
/datum/ammo/energy
	name = "energy"
	icon_state = "spark"
	damage = 0
	damage_type = BURN
	armor_flag = ENERGY

/// Laser beam projectiles. Mirrors /obj/projectile/beam defaults.
/datum/ammo/laser
	name = "laser"
	icon_state = "laser"
	damage = 20
	damage_type = BURN
	armor_flag = LASER

/// Magic spell projectiles. Mirrors /obj/projectile/magic defaults.
/datum/ammo/magic
	name = "bolt"
	icon_state = "energy"
	damage = 0
	damage_type = OXY
	armour_penetration = 100
	armor_flag = NONE
