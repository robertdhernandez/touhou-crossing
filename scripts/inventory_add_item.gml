/// inventory_add_item(item_id)

globalvar ui_inventory;

for (var i = 0; i < inventory_size; i++)
{
    if (ui_inventory.inv[i] == -1)
    {
        ui_inventory.inv[i] = argument0;
        return true;
    
        /*var xx = inventory_get_item_slot_x_raw(i);
        var yy = inventory_get_item_slot_y_raw(i);
    
        with (instance_create(xx, yy, obj_ui_inventory_item))
        {
            item = argument0;
            icon = item_get_icon(item);
            
            // TODO get appropriate icon
        
            ui_inventory.inventory[i] = id;
            
            if (not ui_inventory.show)
                instance_deactivate_object(id);
            
            return true;
        }*/
    }
}
    
return false;
