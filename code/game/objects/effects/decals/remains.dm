/obj/effect/decal/remains/cultify()
	return

/obj/effect/decal/remains
	layer = MACHINERY_LAYER
	plane = OBJ_PLANE

/obj/effect/decal/remains/human
	name = "remains"
	desc = "They look like human remains. They have a strange aura about them."
	gender = PLURAL
	icon = 'icons/effects/blood.dmi'
	icon_state = "remains"

/obj/effect/decal/remains/human/attack_hand(mob/user)
	if(icon_state == "remains")
		user.put_in_hands(new /obj/item/weapon/skull(loc))
		icon_state = "remains_noskull"

/obj/effect/decal/remains/human/noskull
	icon_state = "remains_noskull"

/obj/item/weapon/skull
	name = "skull"
	desc = "To be or not to be..."
	icon = 'icons/effects/blood.dmi'
	icon_state = "remains_skull"
	item_state = "skull"
	inhand_states = list("left_hand" = 'icons/mob/in-hand/left/remains.dmi', "right_hand" = 'icons/mob/in-hand/right/remains.dmi')
	w_class = W_CLASS_TINY
	force = 5
	throwforce = 10

/obj/item/weapon/skull/attackby(obj/item/weapon/W, mob/user)
	..()
	if(istype(W))
		var/obj/item/weapon/bikehorn/HONKER = W
		if(HONKER.can_honk_baton)
			user.create_in_hands(src, /obj/item/weapon/bikehorn/skullhorn, W, msg = "You somehow manage to jam \the [W] inside \the [src].")

/obj/effect/decal/remains/xeno
	name = "remains"
	desc = "They look like the remains of something... alien. They have a strange aura about them."
	gender = PLURAL
	icon = 'icons/effects/blood.dmi'
	icon_state = "remainsxeno"

/obj/effect/decal/remains/robot
	name = "remains"
	desc = "They look like the remains of something mechanical. They have a strange aura about them."
	gender = PLURAL
	icon = 'icons/mob/robots.dmi'
	icon_state = "remainsrobot"

/obj/effect/decal/remains/skelesurgeon //remains for research vault miniboss
	name = "remains"
	desc = "All that remains of a mad scientist and his crazy schemes."
	gender = PLURAL
	icon = 'icons/mob/surgeon.dmi'
	icon_state = "skelesurgeon_corpse"
