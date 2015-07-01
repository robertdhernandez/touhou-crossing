/// inventory_show()

// Activate ui_inventory and its subcomponents
globalvar ui_inventory;
ui_inventory.show = true;

instance_activate_object(ui_inventory);
instance_activate_object(ui_inventory.cursor);
instance_activate_object(ui_inventory.character);

for (var i = 0; i < inventory_size; i++)
    if (ui_inventory.inventory[i] != noone)
        instance_activate_object(ui_inventory.inventory[i]);

// Disable player input
global.allow_input = false;
