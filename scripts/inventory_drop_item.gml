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
    
    var can_drop = not position_meeting(xx, yy, obj_item);
    if (not can_drop)
        return false;
    
    with (instance_create(xx, yy, obj_item))
    {
        item_id = item;
        
        switch (item[?"type"])
        {
            case item_type.flower:
                sprite_index = spr_flora_flower;
                image_index = item[?"image_index"];
            break;
            
            case item_type.flower_seed:
                item_id = item[?"flower_item"];
                sprite_index = spr_flora_flower;
                image_index = item_id[?"image_index"];
            break;
        
            default: 
                sprite_index = item[?"icon"]; 
            break;    
        }
    }
        
    inv[argument0] = -1;
    return true;
}
