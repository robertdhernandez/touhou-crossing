/// inventory_add_item(item_id)

for (var i = 0; i < inventory_size; i++)
{
    if (obj_ui_inventory.inventory[i] == noone)
    {
        var xx = inventory_get_item_slot_x_raw(i);
        var yy = inventory_get_item_slot_y_raw(i);
    
        with (instance_create(xx, yy, obj_ui_inventory_item))
        {
            item = argument0;
            
            // TODO get appropriate icon
        
            obj_ui_inventory.inventory[i] = id;
            return true;
        }
    }
}
    
return false;