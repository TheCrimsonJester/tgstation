/// Attachment slots a gun can accept.
#define ATTACHMENT_SLOT_MUZZLE "muzzle"
#define ATTACHMENT_SLOT_RAIL "rail"
#define ATTACHMENT_SLOT_SCOPE "scope"
#define ATTACHMENT_SLOT_STOCK "stock"
#define ATTACHMENT_SLOT_UNDERBARREL "underbarrel"

/**
 * A weapon attachment that modifies a gun's firing characteristics.
 *
 * Attached to an /obj/item/gun via its attachment slot. Each attachment
 * declares the slot it occupies and a set of modifiers (accuracy, recoil,
 * fire/burst delay) that the gun_system consumes while firing.
 */
/obj/item/attachable
	name = "weapon attachment"
	desc = "A generic weapon attachment."
	icon = 'icons/obj/weapons/guns/ballistic.dmi'
	icon_state = "suppressor" // placeholder sprite
	w_class = WEIGHT_CLASS_TINY

	/// Which slot this attachment occupies.
	var/slot = ATTACHMENT_SLOT_RAIL

	// Firing modifiers (applied while attached)
	/// Flat accuracy bonus (reduces spread).
	var/accuracy_mod = 0
	/// Flat recoil reduction.
	var/recoil_mod = 0
	/// Fire delay multiplier (<1 = faster).
	var/fire_delay_mult = 1
	/// Burst delay multiplier (<1 = faster).
	var/burst_delay_mult = 1
	/// Extra zoom granted while aiming (currently informational).
	var/zoom_mod = 0

	// On-gun overlay (rendered on the gun's sprite while attached)
	/// Icon file used for the on-gun overlay. Defaults to [icon] when null.
	var/overlay_icon
	/// Icon state used for the on-gun overlay. Defaults to [icon_state] when null.
	var/overlay_icon_state
	/// Horizontal pixel offset for the on-gun overlay.
	var/offset_x = 0
	/// Vertical pixel offset for the on-gun overlay.
	var/offset_y = 0

	/// The gun this attachment is currently installed on, if any.
	var/obj/item/gun/attached_to

/obj/item/attachable/Destroy()
	if(attached_to)
		attached_to.remove_attachment(src)
	return ..()

/// Called after the attachment is successfully installed on a gun.
/obj/item/attachable/proc/on_attach(obj/item/gun/gun, mob/user)
	return

/// Called after the attachment is removed from a gun.
/obj/item/attachable/proc/on_detach(obj/item/gun/gun, mob/user)
	return

/// Attaches to a gun when used on one.
/obj/item/attachable/afterattack(atom/target, mob/user, proximity_flag, click_parameters)
	. = ..()
	if(!proximity_flag || !isgun(target))
		return
	var/obj/item/gun/gun = target
	if(gun.attach_attachment(src, user))
		balloon_alert(user, "attached [src]")
