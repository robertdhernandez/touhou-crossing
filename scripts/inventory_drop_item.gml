/// inventory_drop_item(index)

globalvar ui_inventory;
var item = ui_inventory.inventory[argument0];

if (item == noone)
    return false;

// remove item from inventory
with (ui_inventory)
{
    current = noone;
    inventory[argument0] = noone;
}
 
// TODO place item into world 
with (item)
{
    instance_destroy();
}

return true;
