/// inventory_add_item(item_id)

globalvar ui_inventory;

for (var i = 0; i < inventory_size; i++)
{
    if (ui_inventory.inv[i] == -1)
    {
        ui_inventory.inv[i] = argument0;
        return true;
    }
}
    
return false;
