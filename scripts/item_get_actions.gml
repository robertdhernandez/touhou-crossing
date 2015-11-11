/// item_get_actions(item_id)

var actions;
var count = 0;

actions[count++] = "Grab";

var type = argument0[?"type"];
switch (type)
{
    case item_type.furniture:
        if (global.player_outside)
            actions[count++] = "Drop";
        else
        {
            // TODO check player is in their house
            
            actions[count++] = "Place";
        }
    break;
    
    case item_type.flower:
    case item_type.flower_seed:
    
        // can only plant when outside
        if (global.player_outside)
            actions[count++] = "Plant";
        
        // can drop seeds as well
        if (type == item_type.flower_seed)
            actions[count++] = "Drop";
    break;
}

actions[count++] = "Nevermind";

return actions;
