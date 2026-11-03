/// Validates that projectiles apply their ammo datum's stats during Initialize.
/datum/unit_test/ammo_datum_applies_stats

/datum/unit_test/ammo_datum_applies_stats/Run()
	var/obj/projectile/bullet/c9mm/test_bullet = allocate(/obj/projectile/bullet/c9mm)
	TEST_ASSERT_NOTNULL(test_bullet.ammo, "Projectile did not instantiate its ammo datum")
	TEST_ASSERT_EQUAL(test_bullet.name, "9mm bullet", "Projectile name was not derived from its ammo datum")
	TEST_ASSERT_EQUAL(test_bullet.damage, 30, "Projectile damage was not derived from its ammo datum")

	var/obj/projectile/bullet/c9mm/ap/ap_bullet = allocate(/obj/projectile/bullet/c9mm/ap)
	TEST_ASSERT_EQUAL(ap_bullet.armour_penetration, 40, "AP projectile armour penetration was not derived from its ammo datum")

/// Validates that magazines can resolve their default ammo datum.
/datum/unit_test/magazine_default_ammo

/datum/unit_test/magazine_default_ammo/Run()
	var/obj/item/ammo_box/magazine/m9mm/test_mag = allocate(/obj/item/ammo_box/magazine/m9mm)
	TEST_ASSERT_EQUAL(test_mag.get_default_ammo(), /datum/ammo/bullet/pistol/c9mm, "Magazine did not resolve its default ammo datum correctly")
