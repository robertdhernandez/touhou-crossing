/// inventory_is_full()

for (var i = 0; i < inventory_size; i++)
    if (global.ui_inventory.inventory[i] != noone)
        return false;
        
return true;