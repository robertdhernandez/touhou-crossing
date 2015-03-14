/// inventory_get_letter_slot_x(index)

return 200 + 24 * (argument0 mod 2) + obj_ui_inventory.x - sprite_get_xoffset(obj_ui_inventory.sprite_index);
