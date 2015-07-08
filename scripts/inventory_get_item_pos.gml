#define inventory_get_item_pos
/// inventory_get_item_pos(index)

return vec2(inventory_get_item_slot_x(argument0), inventory_get_item_slot_y(argument0));

#define inventory_get_item_slot_x
/// inventory_get_item_slot_x(index)

return inventory_get_item_slot_x_raw(argument0) + obj_ui_inventory.x - sprite_get_xoffset(obj_ui_inventory.sprite_index);

#define inventory_get_item_slot_y
/// inventory_get_item_slot_y(index)

return inventory_get_item_slot_y_raw(argument0) + obj_ui_inventory.y - sprite_get_yoffset(obj_ui_inventory.sprite_index);

#define inventory_get_item_slot_x_raw
/// inventory_get_item_slot_x_raw(index)

return 7 + 32 * (argument0 mod 5) + 16 * floor(argument0 / 5);

#define inventory_get_item_slot_y_raw
/// inventory_get_item_slot_y_raw(index)

return 94 + 24 * floor(argument0 / 5);
