/// inventory_drop_item(index)

with (global.ui_inventory)
{
    var item = inv[argument0];
    var is_item = item != -1;
    
    if (not is_item)
        return false;
    
    var xx = obj_player.x div tile_size * tile_size;
    var yy = obj_player.y div tile_size * tile_size;
    
    // TODO check if surrounding 3x3 space is available around the player
    //      and place there instead
    
    if (not item_can_drop(xx, yy))
        return false;
    
    item_create(xx, yy, item);
        
    inv[argument0] = -1;
    return true;
}
