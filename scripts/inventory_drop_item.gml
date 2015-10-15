/// inventory_drop_item(index)

with (global.ui_inventory)
{
    var item = inv[argument0];
    inv[argument0] = -1;

    var is_item = item != -1;
    if (is_item)
    {
        // TODO drop item into the world
    }
    
    return is_item;
}
