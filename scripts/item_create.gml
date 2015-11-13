/// item_create(x, y, item_id)

with (instance_create(argument0, argument1, obj_item))
{
    item_id = argument2;
    sprite_index = item_id[?"icon"];
    
    // if inside, add to interior
    with (obj_interior)
    {
        var info;
        info[0] = other.x;
        info[1] = other.y;
        info[2] = obj_item;
        info[3] = other.item_id;
        
        ds_list_add(interior, info);
    }
}
