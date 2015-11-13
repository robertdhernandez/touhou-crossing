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
    
    with (instance_create(xx, yy, obj_item))
    {
        item_id = item;
        sprite_index = item[?"icon"];
    }
    
    // if inside, add to interior
    with (obj_interior)
    {
        var info;
        info[0] = xx;
        info[1] = yy;
        info[2] = obj_item;
        info[3] = obj_item.item_id;
        
        ds_list_add(interior, info);
    }
        
    inv[argument0] = -1;
    return true;
}
