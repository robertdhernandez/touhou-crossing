/// interior_pickup(obj)

var obj = argument0;

with (obj_interior)
{
    var size = ds_list_size(interior);
    for (var i = 0; i < size; i++)
    {
        var info = interior[|i];
        if (obj.x == info[0] and obj.y == info[1] and obj.object_index == info[2])
        {
            ds_list_delete(interior, i);
            exit;
        }
    }
    
    //show_error("Object does not exist in interior", false);
}
