/// item_get_actions(item_id)

var actions;
var count = 0;

actions[count++] = item_action.grab;

var type = argument0[?"type"];
switch (type)
{
    case item_type.furniture:
        // interior
        if (instance_exists(obj_interior))
        {
            // TODO check player is in their house
            actions[count++] = item_action.place;
        }
        
        // exterior
        else
            actions[count++] = item_action.drop;
        
    break;
    
    case item_type.flower:
    case item_type.flower_seed:
    case item_type.sapling:
    
        // can only plant when outside
        if (not instance_exists(obj_interior))
            actions[count++] = item_action.plant;
        
        // can drop saplings and seeds as well
        if (type != item_type.flower)
            actions[count++] = item_action.drop;
    break;
}

actions[count++] = item_action.nevermind;

return actions;
