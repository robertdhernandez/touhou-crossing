/// struct_create_entrance(x, y, width, height)

var entrance = instance_create(argument0, argument1, obj_struct_entrance);

with (entrance)
{
    mask_index = sprite_duplicate(mask_entrance);
    sprite_collision_mask(mask_index, false, 2, 0, 0,  argument2, argument3, 1, 0);
}

return entrance;