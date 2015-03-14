/// inventory_is_full()

for (var i = 0; i < inventory_size; i++)
    if (obj_ui_inventory.inventory[i] != noone)
        return false;
        
return true;
