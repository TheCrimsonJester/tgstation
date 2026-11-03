/**
 * Gun system — a centralized firing controller for guns.
 *
 * Holds the firing tuning values and provides the spread, recoil and timing
 * math, so weapon behaviour can be tuned and extended from one place instead
 * of requiring snowflaked gun overrides. The runtime firing state
 * (firing_burst / fire_cd) and the actual fire/chamber flow remain on the gun.
 */
/datum/gun_system
	/// The gun this system drives.
	var/obj/item/gun/gun

	// Firing tuning
	/// How large a burst is.
	var/burst_size = 1
	/// Delay between shots in a burst.
	var/burst_delay = 2
	/// Delay between bursts (or individual shots).
	var/fire_delay = 0 SECONDS
	/// Base spread induced by the gun.
	var/spread = 0
	/// If TRUE, spread is rolled randomly per shot; otherwise it's applied smartly across a burst.
	var/randomspread = 1
	/// Base recoil.
	var/recoil = 0
	/// Multiplier for how long recoil takes to settle.
	var/recoil_backtime_multiplier = 1.5
	/// Maximum deviation of the recoil camera kick.
	var/recoil_deviation = 20
	/// Minimum recoil, before the player's min-recoil preference is applied.
	var/min_recoil = 0

/datum/gun_system/New(obj/item/gun/owner)
	gun = owner
	sync_from_gun()

/// Pull tuning values from the gun's own vars so existing per-gun overrides keep working.
/datum/gun_system/proc/sync_from_gun()
	burst_size = gun.burst_size
	burst_delay = gun.burst_delay
	fire_delay = gun.fire_delay
	spread = gun.spread
	randomspread = gun.randomspread
	recoil = gun.recoil
	recoil_backtime_multiplier = gun.recoil_backtime_multiplier
	recoil_deviation = gun.recoil_deviation
	min_recoil = gun.min_recoil

/// Total accuracy bonus provided by the gun's attachments.
/datum/gun_system/proc/get_attachment_accuracy()
	var/total = 0
	for(var/obj/item/attachable/attachment as anything in gun.attachments)
		total += attachment.accuracy_mod
	return total

/// Total recoil reduction provided by the gun's attachments.
/datum/gun_system/proc/get_attachment_recoil()
	var/total = 0
	for(var/obj/item/attachable/attachment as anything in gun.attachments)
		total += attachment.recoil_mod
	return total

/// Returns the burst delay, halved for users with the double-tap trait.
/datum/gun_system/proc/get_burst_delay(mob/living/user)
	var/delay = burst_delay
	for(var/obj/item/attachable/attachment as anything in gun.attachments)
		delay *= attachment.burst_delay_mult
	if(user && HAS_TRAIT(user, TRAIT_DOUBLE_TAP))
		return ROUND_UP(delay * 0.5)
	return delay

/// Returns the fire delay, halved for users with the double-tap trait.
/datum/gun_system/proc/get_fire_delay(mob/living/user)
	var/delay = fire_delay
	for(var/obj/item/attachable/attachment as anything in gun.attachments)
		delay *= attachment.fire_delay_mult
	if(user && HAS_TRAIT(user, TRAIT_DOUBLE_TAP))
		return ROUND_UP(delay * 0.5)
	return delay

/// Calculates the final recoil value applied when firing.
/datum/gun_system/proc/calculate_recoil(mob/living/user, recoil_amount = 0)
	var/used_min_recoil = min_recoil
	if(user.client)
		used_min_recoil *= (user.client.prefs.read_preference(/datum/preference/numeric/min_recoil_multiplier) / 100)
	return clamp(recoil_amount - get_attachment_recoil(), used_min_recoil, INFINITY)

/// Simulates recoil camera feedback for the firing mob.
/datum/gun_system/proc/simulate_recoil(mob/living/user, recoil_amount = 0, firing_angle)
	var/total_recoil = calculate_recoil(user, recoil_amount)
	var/actual_angle = firing_angle + rand(-recoil_deviation, recoil_deviation) + 180
	if(actual_angle > 360)
		actual_angle -= 360
	if(total_recoil > 0)
		recoil_camera(user, total_recoil + 1, (total_recoil * recoil_backtime_multiplier) + 1, total_recoil, actual_angle)
