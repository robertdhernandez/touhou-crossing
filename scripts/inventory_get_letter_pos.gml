#define inventory_get_letter_pos
/// inventory_get_letter_pos(index)

return vec2(inventory_get_letter_slot_x(argument0), inventory_get_letter_slot_y(argument0));

#define inventory_get_letter_slot_x
/// inventory_get_letter_slot_x(index)

return 200 + 24 * (argument0 mod 2) + obj_ui_inventory.x - sprite_get_xoffset(obj_ui_inventory.sprite_index);

#define inventory_get_letter_slot_y
/// inventory_get_letter_slot_y(index)

return 39 + 24 * (argument0 div 2) + obj_ui_inventory.y - sprite_get_yoffset(obj_ui_inventory.sprite_index);
