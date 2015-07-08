#define inventory_get_cursor_pos
/// inventory_get_cursor_pos(index)

switch (argument0)
{
    // Items
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
        return vec2_add(inventory_get_item_pos(argument0), vec2(26, -15));
        
    // Letters
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
        return vec2_add(inventory_get_letter_pos(argument0 - 15), vec2(26, -15));
}

return undefined;

#define inventory_get_cursor_x
/// inventory_get_cursor_x(index)

switch (argument0)
{
    // Items
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
        return inventory_get_item_slot_x(argument0) + 26;
        
    // Letters
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
        return inventory_get_letter_slot_x(argument0 - 15) + 26;
}

return 0;

#define inventory_get_cursor_y
/// inventory_get_cursor_y(index)

switch (argument0)
{
    // Items
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
        return inventory_get_item_slot_y(argument0) - 15;
        
    // Letters
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
        return inventory_get_letter_slot_y(argument0 - 15) - 15;
}

return 0;