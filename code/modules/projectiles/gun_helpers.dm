/// Shared firing helper procs for guns.

/// Extra spread penalty applied when dual-wielding.
/// (Re-declared here because gun.dm #undef's it at the end of the file.)
#define DUALWIELD_PENALTY_EXTRA_MULTIPLIER 1.4

/// Returns the per-shot spread offset for a shot within a burst.
/// Smart spread distributes inaccuracy evenly across the burst; random spread rolls per shot.
/obj/item/gun/proc/get_burst_spread(random_spread, burst_spread_mult, iteration)
	var/attachment_accuracy = gun_system.get_attachment_accuracy()
	if(randomspread)
		return round((rand(0, 1) - 0.5) * DUALWIELD_PENALTY_EXTRA_MULTIPLIER * random_spread) - attachment_accuracy
	return round((((burst_spread_mult / burst_size) * iteration) - (0.5 + (burst_spread_mult * 0.25))) * random_spread) - attachment_accuracy

#undef DUALWIELD_PENALTY_EXTRA_MULTIPLIER
