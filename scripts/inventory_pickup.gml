/// inventory_pickup(item_obj)

if (inventory_add_item(argument0.item_id))
{
    with (argument0)
        instance_destroy();
}
else
{
    dialogue_reset();
    dialogue_set_message(0, "Oh, I'm carrying too much!");
    dialogue_show(4);
}
