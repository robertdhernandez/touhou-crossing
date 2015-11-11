/// item_get_actions(item_id)

var actions;
var count = 0;

actions[count++] = "Grab";

switch (argument0[?"type"])
{
    case item_type.furniture:
        actions[count++] = "Drop";
    break;
    
    case item_type.flower:
    case item_type.flower_seed:
        actions[count++] = "Plant";
    break;
}

actions[count++] = "Nevermind";

return actions;
