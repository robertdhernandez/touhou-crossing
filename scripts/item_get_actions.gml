/// item_get_actions(item_id)

var actions;
var count = 0;

actions[count++] = item_action.grab;

var type = argument0[?"type"];
switch (type)
{
    case item_type.furniture:
        if (global.player_outside)
            actions[count++] = item_action.drop;
        else
        {
            // TODO check player is in their house
            
            actions[count++] = item_action.place;
        }
    break;
    
    case item_type.flower:
    case item_type.flower_seed:
    
        // can only plant when outside
        if (global.player_outside)
            actions[count++] = item_action.plant;
        
        // can drop seeds as well
        if (type == item_type.flower_seed)
            actions[count++] = item_action.drop;
    break;
}

actions[count++] = item_action.nevermind;

return actions;
