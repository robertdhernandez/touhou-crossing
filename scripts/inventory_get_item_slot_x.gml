#define inventory_get_item_slot_x
/// inventory_get_item_slot_x(index)

return inventory_get_item_slot_x_raw(argument0) + obj_ui_inventory.x - sprite_get_xoffset(obj_ui_inventory.sprite_index);
#define inventory_get_item_slot_x_raw
/// inventory_get_item_slot_x_raw(index)

return 7 + 32 * (argument0 mod 5) + 16 * floor(argument0 / 5);
