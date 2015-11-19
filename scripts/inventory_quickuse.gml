/// inventory_quickuse(index)

with (global.ui_inventory)
{
    var item = inv[argument0];
    var is_item = item != -1;
    
    if (not is_item)
        exit;
        
    // retrieve list of actions determined from current conditions
    var actions = item_get_actions(item);
        
    // save old index so it can be reverted afterwards
    var old_index = inv_index;
    inv_index = argument0;
        
    switch (item[?"type"])
    {
        case item_type.flower:
            if (array_contains(actions, item_action.plant))
            {
                action = item_action.plant;
                event_user(0);
            }
        break;
        
        case item_type.flower_seed:
        case item_type.sapling:
            if (array_contains(actions, item_action.plant))
                action = item_action.plant;
            else
                action = item_action.drop;

            event_user(0);
        break;
        
        case item_type.furniture:
            if (array_contains(actions, item_action.place))
                action = item_action.place;
            else
                action = item_action.drop;
                
            event_user(0);
        break;
    }
    
    inv_index = old_index;
}
