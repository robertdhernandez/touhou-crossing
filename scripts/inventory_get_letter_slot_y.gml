/// inventory_get_letter_slot_y(index)

return 39 + 24 * floor(argument0 / 2) + obj_ui_inventory.y - sprite_get_yoffset(obj_ui_inventory.sprite_index);