/// inventory_drop_item(index)

with (global.ui_inventory)
{
    var item = inv[argument0];
    inv[argument0] = -1;

    var is_item = item != -1;
    if (is_item)
    {
        // TODO check if space is available around the player
        
        var xx = obj_player.x div tile_size * tile_size;
        var yy = obj_player.y div tile_size * tile_size;
        
        with (instance_create(xx, yy, obj_item))
            item_id = item;
            
        // TODO only remove item if space is available
    }
    
    return is_item;
}
