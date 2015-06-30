#define inventory_get_item_slot_y
/// inventory_get_item_slot_y(index)

return inventory_get_item_slot_y_raw(argument0) + obj_ui_inventory.y - sprite_get_yoffset(obj_ui_inventory.sprite_index);
#define inventory_get_item_slot_y_raw
/// inventory_get_item_slot_y_raw(index)

return 94 + 24 * floor(argument0 / 5);
